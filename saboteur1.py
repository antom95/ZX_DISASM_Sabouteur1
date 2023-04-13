from skoolkit.skoolhtml import HtmlWriter
from skoolkit.graphics import Frame, Udg
from skoolkit.skoolmacro import parse_ints


class SaboteurHtmlWriter(HtmlWriter):
    def __init__(self, skool_parser, ref_parser, file_info):
        self.RoomsList = []
        self.Rooms = []
        self.Memory = []
        return super().__init__(skool_parser, ref_parser, file_info)

    def ScanRoom(self, address, x, y):
        if address in self.RoomsList:
            return
        self.RoomsList.append(address)
        self.drawGameScreen(address, 0x6590)
        self.Rooms.append([x, y, [self.Memory[x] for x in range(0x6590,0x6590+510)]]);

        addressLeft = self.snapshot[address+4]+256*self.snapshot[address+5]
        addressRight= self.snapshot[address+6]+256*self.snapshot[address+7]
        addressUp   = self.snapshot[address+8]+256*self.snapshot[address+9]
        addressDown = self.snapshot[address+10]+256*self.snapshot[address+11]
        if addressLeft > 0x4000:
            self.ScanRoom(addressLeft, x-1, y)
        if addressRight > 0x4000:
            self.ScanRoom(addressRight, x+1, y)
        if addressUp > 0x4000:
            self.ScanRoom(addressUp, x, y-1)
        if addressDown > 0x4000:
            self.ScanRoom(addressDown, x, y+1)
        return


    def expand_sprites(self, text, index, cwd):
        end, address, width, len, attrindex, step = parse_ints(text, index, 5)
        lines = []
        while address < 0xf700:
            line = []
            for i in range(width):
                line.append( Udg((self.snapshot[address+attrindex] if self.snapshot[address+attrindex]!=0xff else 7) if attrindex != 10 else 7, self.snapshot[address:address+8*step+8:step]))
                #line.append( Udg(self.snapshot[address+attrindex] if attrindex != 10 else 7, self.snapshot[address+8*step:address+8*step+8:step]))

                address += len
            lines.append(line)

        frame = Frame(lines, 3)
        fname = 'tmpSprites{}_{}_{}_{}_{}'.format(address, width, len, attrindex, step)
        return end, self.handle_image(frame, fname, cwd)



    # #SCANGAMEMAPaddress
    def expand_scangamemap(self, text, index, cwd):
        end, address = parse_ints(text, index, 1)
        self.Memory = self.snapshot
        self.RoomsList =[]
        self.Rooms = []
        self.ScanRoom(address, 0, 0)
        minx = min([self.Rooms[i][0] for i in range(len(self.Rooms))])
        maxx = max([self.Rooms[i][0] for i in range(len(self.Rooms))])
        miny = min([self.Rooms[i][1] for i in range(len(self.Rooms))])
        maxy = max([self.Rooms[i][1] for i in range(len(self.Rooms))])

        MapWidth = maxx - minx + 1
        MapHeigh = maxy - miny + 1
        GameMap=[[0 for i in range(MapWidth*30)] for y in range(MapHeigh*17)]

        for r in self.Rooms:
            xs = (r[0]-minx)*30
            ys = (r[1]-miny)*17
            for y in range(17):
                for x in range(30):
                    GameMap[ys+y][xs+x]=r[2][y*30+x]

        lines = []
        for y in range (MapHeigh*17):
            line = []
            for x in range(MapWidth*30):
                c_address = 0xf700 + GameMap[y][x]*9;
                line.append(Udg(self.Memory[c_address+8], self.Memory[c_address:c_address+8]))
            lines.append(line)

        #frame = Frame([[Udg(self.snapshot[address2+8], udg_data)]], 2)
        frame = Frame(lines, 2)
        fname = 'gameBgmap_{}'.format(address)

        #return end, 'Map Scanned at {}. Rooms:{}'.format(address,len(self.RoomsList) + self.handle_image(frame, fname, cwd)
        return end, '({},{})-({},{})'.format(minx,miny,maxx,maxy) + self.handle_image(frame, fname, cwd)


    # #SMAPaddress,address2
    def expand_smap(self, text, index, cwd):
        end, address, address2 = parse_ints(text, index, 2)
        #udg_data = [b ^ 255 for b in self.snapshot[address:address + 8]]
        #udg_data =

        x = 0
        y = 0
        xmax = 32
        ymax = 24

        lines = []
        line = []
        while y<ymax and self.snapshot[address] != 255:
            c = self.snapshot[address]
            address = address+1
            c_address = c*9 + address2;
            if c < 0x17:
                line.append(Udg(self.snapshot[c_address+8], self.snapshot[c_address:c_address+8]))
                x = x + 1
                if x >= xmax:
                    lines.append(line)
                    line=[]
                    x=0
                    y=y+1
            else:
                cnt = c-0x14
                c = self.snapshot[address]
                address = address+1
                c_address = c*9 + address2;
                for i in range(cnt):
                    line.append(Udg(self.snapshot[c_address+8], self.snapshot[c_address:c_address+8]))
                    x = x + 1
                    if x >= xmax:
                        lines.append(line)
                        line=[]
                        x=0
                        y=y+1
        lines.append(line)

        #frame = Frame([[Udg(self.snapshot[address2+8], udg_data)]], 2)
        frame = Frame(lines, 2)
        fname = 'smap{}_{}'.format(address, address2)
        return end, self.handle_image(frame, fname, cwd)

    # #STILESaddress
    def expand_stiles(self, text, index, cwd):
        end, address = parse_ints(text, index, 1)
        lines = []
        for y in range (16):
            line = []
            for x in range(16):
                c_address = address + (y*16+x)*9
                line.append(Udg(self.snapshot[c_address+8], self.snapshot[c_address:c_address+8]))
            lines.append(line)
        frame = Frame(lines, 3)
        fname = 'stiles{}'.format(address)
        return end, self.handle_image(frame, fname, cwd)

    # #BWTILESaddress
    def expand_bwtiles(self, text, index, cwd):
        end, address, shift = parse_ints(text, index, 2)

        lines = []
        swidth = 8
        for y in range (32):
            line = []
            for x in range(swidth):
                c_address = address + (y*swidth+x)*16
                line.append(Udg(0x38, [self.snapshot[x+shift] for x in range(c_address,c_address+16,2)]))
            lines.append(line)

        #frame = Frame([[Udg(self.snapshot[address2+8], udg_data)]], 2)
        frame = Frame(lines, 3)
        fname = 'bwtiles{}_{}'.format(address,shift)
        return end, self.handle_image(frame, fname, cwd)

    def drawGameScreen(self, address, bufaddress):

        def a2p(addr):
            addr2 = addr-bufaddress
            mpage = addr2 // (17*30)
            if mpage>0:
                return 'P{}[{:}x{:}]=[{:04X}]'.format(mpage, addr2 % 30, ((addr2) // 30) % 17, addr2+bufaddress)
            return '{:}x{:}'.format((addr2) % 30, (addr2) // 30)

        def gaddr(ref_addr):
            addr1 = self.Memory[ref_addr] + self.Memory[ref_addr+1]*256 - bufaddress
            addr1 %= 30*17
            addr1 += bufaddress
            return addr1

        for i in range(30*17):
             self.Memory[bufaddress + i] = 0

        address += 12 ## shift to graphics cmds

        drawlog = ''

        ch = self.Memory[address]
        while ch != 255:
            drawlog += '{:04X} {:02X} '.format(address, self.Memory[address])
            ch = self.Memory[address]; address += 1

            if ch==0: ##Put 9 bytes from $7c21 to HL(1..2) 3x3 square
                addr1 = gaddr(address) ; address += 2
                for y in range (3):
                    for x in range(3):
                        self.Memory[addr1+x+y*30]=self.Memory[0x7c21 + x + y*3]
                drawlog += 'Put 3x3 to '+ a2p(addr1)

            elif ch == 1: ##HL(1) times fill (HL3..4) by (HL+2) with 0x1e step (vertical)
                cnt = self.Memory[address]; address += 1
                c   = self.Memory[address]; address += 1
                addr1 = gaddr(address) ; address += 2
                for y in range (cnt):
                    self.Memory[addr1+y*30]=c
                drawlog += 'Vertical line from '+ a2p(addr1) + ' by ${:02X} {} times'.format(c, cnt)

            elif ch == 2: ##HL(1) times fill (HL3..4) by (HL+2) with 0x1 step (horizontal)
                cnt = self.Memory[address]; address += 1
                c   = self.Memory[address]; address += 1
                addr1 = gaddr(address) ; address += 2
                for x in range (cnt):
                    self.Memory[addr1 + x]=c
                drawlog += 'Horizontal line from '+ a2p(addr1) + ' by ${:02X} {} times'.format(c, cnt)

            elif ch == 3: ## Fill Square by HL(1) HL(2)xHL(3) to HL(4..5)
                c     = self.Memory[address]; address += 1
                xmax  = self.Memory[address]; address += 1
                ymax  = self.Memory[address]; address += 1
                addr1 = gaddr(address) ; address += 2
                for y in range (ymax):
                    for x in range(xmax):
                        self.Memory[addr1+x+y*30]=c
                drawlog += 'Fill {}x{} by ${:02X} to '.format(xmax, ymax, c) + a2p(addr1)

            elif ch == 4: ## Fill [$6590..6590+0x1FE] with HL(1) and puts HL to Stack
                c     = self.Memory[address]; address += 1
                for i in range(30*17):
                     self.Memory[bufaddress + i] = c
                drawlog += 'Clear by ${:02X}'.format(c)

            elif ch == 5: ## HL(1)xHL(2) data copied from HL(3..4) to HL(5..6)
                xmax  = self.Memory[address]; address += 1
                ymax  = self.Memory[address]; address += 1
                addr2 = self.Memory[address] + self.Memory[address+1]*256 ; address += 2
                addr1 = gaddr(address) ; address += 2
                for y in range (ymax):
                    for x in range(xmax):
                        self.Memory[addr1 + x + y*30] = self.Memory[addr2 + x + y*xmax]
                drawlog += 'Array [{:04X}..{:04X}] copied to {}x{} block at '.format(addr2,addr2+xmax*ymax, xmax, ymax) + a2p(addr1)

            elif ch == 6: ## HL(2) Size of right-to-bottom triangle by (hl+1) started at (HL3..4) wide top
                c     = self.Memory[address]; address += 1
                size  = self.Memory[address]; address += 1
                addr1 = gaddr(address) ; address += 2
                for y in range (size):
                    for x in range(size-y):
                        self.Memory[addr1+x+y*30]=c
                drawlog += 'Wide top to right triangle at' + a2p(addr1) + ' with {} size by ${:02X}'.format(size, c)

            elif ch == 7: ## HL(2) Size of right-to-bottom triangle by (hl+1) started at (HL3..4) wide bottom
                c     = self.Memory[address]; address += 1
                size  = self.Memory[address]; address += 1
                addr1 = gaddr(address) ; address += 2
                for y in range (size):
                    for x in range(y+1):
                        self.Memory[addr1+x+y*30]=c
                drawlog += 'Wide bottom to right triangle at' + a2p(addr1) + ' with {} size by ${:02X}'.format(size, c)

            elif ch == 8: ## HL(2) Size of left-to-bottom triangle by (hl+1) started at (HL3..4) wide bottom
                c     = self.Memory[address]; address += 1
                size  = self.Memory[address]; address += 1
                addr1 = gaddr(address) ; address += 2
                for y in range (size):
                    for x in range(y+1):
                        self.Memory[addr1-x+y*30]=c
                drawlog += 'Wide bottom to left triangle at' + a2p(addr1) + ' with {} size by ${:02X}'.format(size, c)

            elif ch == 9: ## HL(2) Size of left-to-bottom triangle by (hl+1) started at (HL3..4) wide top
                c     = self.Memory[address]; address += 1
                size  = self.Memory[address]; address += 1
                addr1 = gaddr(address) ; address += 2
                for y in range (size):
                    for x in range(size-y):
                        self.Memory[addr1-x+y*30]=c
                drawlog += 'Wide top to left triangle at' + a2p(addr1) + ' with {} size by ${:02X}'.format(size, c)

            elif ch == 0xA: ## HL(1) times fill (HL3..4) by (HL+2) with 0x1f step (diagonal to right)
                cnt = self.Memory[address]; address += 1
                c   = self.Memory[address]; address += 1
                addr1 = gaddr(address) ; address += 2
                for x in range (cnt):
                    self.Memory[addr1 + x*0x1f]=c
                drawlog += 'Diagonal line to right from '+ a2p(addr1) + ' by ${:02X} {} times'.format(c, cnt)

            elif ch == 0xB: ## HL(1) times fill (HL3..4) by (HL+2) with 0x1d step (diagonal to left)
                cnt = self.Memory[address]; address += 1
                c   = self.Memory[address]; address += 1
                addr1 = gaddr(address) ; address += 2
                for x in range (cnt):
                    self.Memory[addr1 + x*0x1d]=c
                drawlog += 'Diagonal line to left from '+ a2p(addr1) + ' by ${:02X} {} times'.format(c, cnt)

            elif ch == 0xC: ## Fill Square HL(3)xHL(4) by same lines from HL(1..2) to HL(5..6)
                addr2 = self.Memory[address] + self.Memory[address+1]*256 ; address += 2
                xmax  = self.Memory[address]; address += 1
                ymax  = self.Memory[address]; address += 1
                addr1 = gaddr(address) ; address += 2
                for y in range (ymax):
                    for x in range(xmax):
                        self.Memory[addr1+x+y*30]=self.Memory[addr2+x]
                drawlog += 'Fill {} lines width {} at '.format(ymax, xmax) + a2p(addr1) + ' by data from Array[{:04X}..{:04X}]'.format(addr2,addr2+xmax)

            elif ch == 0xD: ## Setborder hl(1)
                c   = self.Memory[address]; address += 1
                drawlog += 'Set border color to ${:02X}'.format(c)

            elif ch == 0xE: ## (HL+1)->(HL3..4) 1 times
                c   = self.Memory[address]; address += 1
                addr1 = gaddr(address) ; address += 2
                self.Memory[addr1]=c
                drawlog += 'Put ${:02X} to '.format(c) + a2p(addr1)

            elif ch == 0xff:
                drawlog += ' The End'

            else:
                drawlog += ' Unknown CMD:Stop!'
                break
            drawlog += '<br>'

        return drawlog


    # #TRACESCRaddress,tileaddress,bufaddress
    def expand_tracescr(self, text, index, cwd):
        ##end, address, tileaddress, bufaddress = parse_ints(text, index, 3)
        #end = text[index:]
        ##end = []

        address = self.pc
        tileaddress=0xf700
        bufaddress =0x6590

        self.Memory = self.snapshot

        addressLeft = self.snapshot[address+4] +256*self.snapshot[address+5]
        addressRight= self.snapshot[address+6] +256*self.snapshot[address+7]
        addressUp   = self.snapshot[address+8] +256*self.snapshot[address+9]
        addressDown = self.snapshot[address+10]+256*self.snapshot[address+11]

        NavigatorString = ''
        if addressLeft > 0x4000:
            NavigatorString += 'Left: #R${:04X} '.format(addressLeft)
        if addressRight > 0x4000:
            NavigatorString += 'Rigth: #R${:04X} '.format(addressRight)
        if addressUp > 0x4000:
            NavigatorString += 'Up: #R${:04X} '.format(addressUp)
        if addressDown > 0x4000:
            NavigatorString += 'Down: #R${:04X} '.format(addressDown)

        drawlog = self.drawGameScreen(address, bufaddress)

        lines = []
        for y in range (17):
            line = []
            for x in range(30):
                c_address = self.Memory[bufaddress+x+y*30]*9 + tileaddress
                line.append(Udg(self.Memory[c_address+8], self.Memory[c_address:c_address+8]))
            lines.append(line)

        #frame = Frame([[Udg(self.snapshot[address2+8], udg_data)]], 2)
        frame = Frame(lines, 3)
        fname = 'TRACESCR{}'.format(address)
        return index, NavigatorString  + '<br>' + drawlog + self.handle_image(frame, fname, cwd)
        #return end, NavigatorString   + self.handle_image(frame, fname, cwd)







    # def sprite(self, cwd, addr, fname):
    #     udgs = self.build_sprite(addr)
    #     return self.handle_image(Frame(udgs), fname, cwd)
    #
    # def build_sprite(self, addr)
    #     sprite = self.snapshot[addr:addr+8]
    #     return sprite
