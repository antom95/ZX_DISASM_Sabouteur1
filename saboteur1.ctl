i $4000 Ignored
D $4000 #SCR(loading)
@ $5B00 replace=/#sprite\i/#UDGARRAY#(4#FOR(\1,\1+207,9)||n|;n,#PEEK(n+8)||)
b $5B00 Data Block
B $5B00,492,8*61,4 #UDGTABLE { #SPRITES$d601,16,17,15,2 | #SPRITES$d601,16,17,10,2 } TABLE#
B $5B01,492,8*61,4 #UDGTABLE { #SPRITES$d600,16,8,10,1 } TABLE#
t $5CEC Message at 5CEC
T $5CEC,8,8
b $5CF4 Data block at 5CF4
B $5CF4,2,2
t $5CF6 Message at 5CF6
T $5CF6,9,9
b $5CFF Data block at 5CFF
B $5CFF,16,8
t $5D0F Message at 5D0F
T $5D0F,7,7
b $5D16 Data block at 5D16
B $5D16,40,8
t $5D3E Message at 5D3E
T $5D3E,5,5
b $5D43 Data block at 5D43
B $5D43,19,8*2,3
t $5D56 Message at 5D56
T $5D56,5,5
b $5D5B Data block at 5D5B
B $5D5B,15,8,7
t $5D6A Message at 5D6A
T $5D6A,33,33
b $5D8B Data block at 5D8B
B $5D8B,11,8,3
t $5D96 Message at 5D96
T $5D96,9,9
b $5D9F Data block at 5D9F
B $5D9F,17,8*2,1
t $5DB0 Message at 5DB0
T $5DB0,28,28
b $5DCC Data block at 5DCC
B $5DCC,8,8
t $5DD4 Message at 5DD4
T $5DD4,8,8
b $5DDC Data block at 5DDC
B $5DDC,6,6
t $5DE2 Pirate Message
T $5DE2,53,53
b $5E17 Data block at 5E17
B $5E17,278,8*34,6
t $5F2D Message at 5F2D
T $5F2D,7,7
b $5F34 Data block at 5F34
B $5F34,10,8,2
t $5F3E Message at 5F3E
T $5F3E,7,7
b $5F45 Data block at 5F45
B $5F45,2,2
t $5F47 Message at 5F47
T $5F47,3,3
b $5F4A Data block at 5F4A
B $5F4A,783,8*97,7
t $6259 Message at 6259
T $6259,4,4
b $625D Data block at 625D
B $625D,44,8*5,4
c $6289 Routine at 6289
D $6289 Used by the routine at #R$BC0D.
b $62DB Data block at 62DB
B $62DB,393,8*49,1
t $6464 Message at 6464
T $6464,3,3
b $6467 Data block at 6467
B $6467,297,8*37,1
b $6590 Gameplay Screen Background Buffer (used by temp messages)
B $6590,74,7,8*8,3
c $65DA Routine at 65DA
t $65E7 Reward Message
T $65E7,768,10:n1:55,66*8,46:n1:19,66,42
b $68E7 Data block at 68E7
B $68E7,2210,8*211,7,1,8*64,2
t $7189 Message at 7189
T $7189,4,4
b $718D Data block at 718D
B $718D,1,1
t $718E Message at 718E
T $718E,6,6
b $7194 Data block at 7194
B $7194,40,8
t $71BC Message at 71BC
T $71BC,3,3
b $71BF Data block at 71BF
B $71BF,1,1
t $71C0 Message at 71C0
T $71C0,3,3
b $71C3 Data block at 71C3
B $71C3,1,1 Some Very Important Byte
B $71C4,89,8*11,1
t $721D Message at 721D
T $721D,4,4
b $7221 Data block at 7221
B $7221,297,8*37,1
c $734A Routine at 734A
D $734A Used by the routines at #R$734D, #R$7381, #R$73A4, #R$73C5, #R$73F3, #R$7406, #R$742B, #R$7452 and #R$B38F.
c $734D Routine at 734D
c $7359 Routine at 7359
c $7361 Routine at 7361
c $7381 Routine at 7381
D $7381 Take HL from Stack then: HL(1) times fill (HL3..4) by (HL+2) with 0x1e step
N $7384 This entry point is used by the routine at #R$739F.
c $7395 Data block at 7395
c $739A Data block at 739A
c $739F Take HL from Stack then: HL(1) times fill (HL3..4) by (HL+2) with 0x1 step
c $73A4 Routine at 73A4
N $73A6 This entry point is used by the routine at #R$73EF.
c $73C5 Routine at 73C5
N $73C7 This entry point is used by the routine at #R$73EB.
c $73EB Routine at 73EB
c $73EF Routine at 73EF
c $73F3 Routine at 73F3
c $7406 Routine at 7406
c $742B Routine at 742B
c $7452 Routine at 7452
c $7472 Routine at 7472
D $7472 Used by the routine at #R$B5C7.
b $749C Current Energy Level
B $749C,1,1
b $749D Data block at 749D
B $749D,1,1
c $749E Routine at 749E
D $749E Used by the routine at #R$9DDA.
c $74CD Routine at 74CD
D $74CD Used by the routine at #R$B889.
b $750B Data block at 750B
B $750B,16,8
t $751B Message at 751B
T $751B,16,16
b $752B Data block at 752B
B $752B,1005,8*125,5
c $7918 Routine at 7918
c $791B Routine at 791B
b $791E GAME MAP Data
;D $791E #BUILDMAP
;M $791E,102 #TRACESCREEN
M $791E,102 This comment covers the following 3 sub-blocks  #TRACESCREEN
W $791E,12,4,2
B $792A,90,2,6,5*2,6,5*5,7*5,5,1
B $7984,65,1
;M $791E,102 #TRACESCREEN
;W $791E,12,4,2 #TRACESCREEN
;B $792A,90,2,6,5,5,6,5,5,5,5,5,7,7,7,7,7,5,1
B $7984,66
M $79C6,81 RTrestING1 #TRACESCREEN!
w $79C6,12,4,2
b $79D2,69,2,6,6,5,7,6,5,7,4,5,7,4,4,1
M $7A17,94 rest2 #TRACESCREEN !
W $7A17,12,4,2
B $7A23,82,2,5,5,6,6,5,5,5,4,5,5,7,7,7,7,1
M $7A75,41 #TRACESCREEN
W $7A75,12,4,2
B $7A81,29,2,5,6,7,4,4,1
M $7A9E,47 #TRACESCREEN
W $7A9E,12,4,2
B $7AAA,35,2,5,6,7,7,7,1
M $7ACD,43 #TRACESCREEN
W $7ACD,12,4,2
B $7AD9,31,2,6,5,5,5,7,1
M $7AF8,87 #TRACESCREEN
W $7AF8,12,4,2
B $7B04,75,2,6,5,7,5,5,5,7,5,5,4,4,7,7,1
B $7B4F,7
M $7B56,58 #TRACESCREEN
W $7B56,12,4,2
B $7B62,46,2,6,6,5,5,7,7,7,1
M $7B90,66 #TRACESCREEN
W $7B90,12,4,2
B $7B9C,54,2,6,5,4,5,6,6,5,7,7,1
M $7BD2,58 #TRACESCREEN
W $7BD2,12,4,2
B $7BDE,46,2,6,5,4,7,7,7,7,1
B $7C0C,34
M $7C2E,63 #TRACESCREEN
W $7C2E,12,4,2
B $7C3A,51,2,6,6,6,4,5,7,7,7,1
M $7C6D,45 #TRACESCREEN
W $7C6D,12,4,2
B $7C79,33,2,7,6,5,5,7,1
B $7C9A,2
M $7C9C,73 #TRACESCREEN
W $7C9C,12,4,2
B $7CA8,61,2,5,6,6,6,7,7,7,7,7,1
B $7CE5,117
M $7D5A,79 #TRACESCREEN
W $7D5A,12,4,2
B $7D66,67,2,6,7,5,5,6,5,7,7,4,5,7,1
M $7DA9,92 #TRACESCREEN
W $7DA9,12,4,2
B $7DB5,80,2,5,5,6,5,7,7,7,7,7,7,7,7,1
M $7E05,118 #TRACESCREEN
W $7E05,12,4,2
B $7E11,106,5,7,7,7,7,5,7,7,7,7,7,7,7,7,5,6,1
B $7E7B,17
M $7E8C,102 #TRACESCREEN
W $7E8C,12,4,2
B $7E98,90,2,5,5,7,7,7,7,7,7,7,7,7,7,7,1
M $7EF2,86 #TRACESCREEN
W $7EF2,12,4,2
B $7EFE,74,2,5,5,5,7,7,7,7,7,7,7,7,1
M $7F48,84 #TRACESCREEN
W $7F48,12,4,2
B $7F54,72,2,6,6,5,5,7,7,5,7,7,7,7,1
M $7F9C,40 #TRACESCREEN
W $7F9C,12,4,2
B $7FA8,28,2,6,5,7,7,1
M $7FC4,68 #TRACESCREEN
W $7FC4,12,4,2
B $7FD0,56,2,6,5,5,7,5,5,6,7,7,1
M $8008,110 #TRACESCREEN
W $8008,12,4,2
B $8014,98,2,5,5,6,6,5,7,7,7,7,7,7,7,7,7,5,1
M $8076,49 #TRACESCREEN
W $8076,12,4,2
B $8082,37,2,5,5,5,5,7,7,1
M $80A7,79 #TRACESCREEN
W $80A7,12,4,2
B $80B3,67,5,5,7,7,7,7,7,7,7,7,1
M $80F6,108 #TRACESCREEN
W $80F6,12,4,2
B $8102,96,5,6,7,7,7,7,7,7,7,7,7,7,7,7,1
M $8162,129 #TRACESCREEN
W $8162,12,4,2
B $816E,117,6,5,5,5,5,7,7,7,7,7,7,7,7,4,5,4,5,4,5,7,1
B $81E3,2
M $81E5,83 #TRACESCREEN
W $81E5,12,4,2
B $81F1,71,6,6,5,5,5,5,5,4,4,5,5,5,5,5,1
M $8238,65 #TRACESCREEN
W $8238,12,4,2
B $8244,53,2,6,5,7,7,7,4,4,5,5,1
M $8279,100 #TRACESCREEN
W $8279,12,4,2
B $8285,88,7,5,5,5,5,7,7,7,7,7,7,7,7,4,1
M $82DD,68 #TRACESCREEN
W $82DD,12,4,2
B $82E9,56,5,5,5,5,7,7,7,7,7,1
M $8321,99 #TRACESCREEN
W $8321,12,4,2
B $832D,87,5,7,6,5,7,7,7,7,7,7,7,7,7,1
M $8384,105 #TRACESCREEN
W $8384,12,4,2
B $8390,93,2,6,5,6,5,7,7,7,7,5,7,7,7,7,7,1
M $83ED,97 #TRACESCREEN
W $83ED,12,4,2
B $83F9,85,5,7,7,6,5,5,7,7,7,7,7,7,7,1
M $844E,78 #TRACESCREEN
W $844E,12,4,2
B $845A,66,5,5,6,5,7,7,7,3,3,3,7,7,1
B $849C,12
M $84A8,55 #TRACESCREEN
W $84A8,12,4,2
B $84B4,43,6,6,5,5,3,3,7,7,1
B $84DF,15
M $84EE,56 #TRACESCREEN
W $84EE,12,4,2
B $84FA,44,6,6,7,3,3,3,3,3,3,3,3,1
M $8526,81 #TRACESCREEN
W $8526,12,4,2
B $8532,69,7,7,5,7,3,3,3,7,7,7,7,5,1
B $8577,24
M $858F,46 #TRACESCREEN
W $858F,12,4,2
B $859B,34,5,7,7,7,7,1
M $85BD,75 #TRACESCREEN
W $85BD,12,4,2
B $85C9,63,5,6,5,7,3,3,3,3,3,3,3,3,3,3,3,3,3,1
M $8608,129 #TRACESCREEN
W $8608,12,4,2
B $8614,117,5,5,5,7,5,7,7,7,7,7,3,7,7,7,3,3,3,3,3,3,3,3,3,3,1
M $8689,108 #TRACESCREEN
W $8689,12,4,2
B $8695,96,5,6,7,7,7,7,7,7,7,7,7,7,7,7,1
B $86F5,8
M $86FD,60 #TRACESCREEN
W $86FD,12,4,2
B $8709,48,5,5,5,6,7,7,3,3,3,3,1
M $8739,80 #TRACESCREEN
W $8739,12,4,2
B $8745,68,5,5,5,5,5,7,7,7,7,7,7,1
B $8789,16
M $8799,105 #TRACESCREEN
W $8799,12,4,2
B $87A5,93,5,5,5,5,5,5,7,6,6,5,5,5,7,7,7,7,1
M $8802,50 #TRACESCREEN
W $8802,12,4,2
B $880E,38,5,5,6,5,3,3,3,7,1
M $8834,100 #TRACESCREEN
W $8834,12,4,2
B $8840,88,5,5,5,5,5,7,4,7,7,5,7,5,5,5,5,5,1
B $8898,7
M $889F,111 #TRACESCREEN
W $889F,12,4,2
B $88AB,99,5,5,5,5,5,5,5,5,5,4,5,5,5,5,5,5,5,7,7,1
M $890E,69 #TRACESCREEN
W $890E,12,4,2
B $891A,57,5,5,5,5,7,5,5,5,5,5,4,1
M $8953,102 #TRACESCREEN
W $8953,12,4,2
B $895F,90,5,5,5,5,5,5,5,5,7,7,5,5,5,5,5,5,5,1
M $89B9,116 #TRACESCREEN
W $89B9,12,4,2
B $89C5,104,4,4,5,5,5,5,5,5,7,7,7,5,5,5,5,7,7,5,5,1
M $8A2D,84 #TRACESCREEN
W $8A2D,12,4,2
B $8A39,72,5,5,5,5,5,5,5,7,5,5,5,7,7,1
M $8A81,115 #TRACESCREEN
W $8A81,12,4,2
B $8A8D,103,5,5,5,5,5,7,7,7,5,5,5,5,5,7,5,5,7,7,1
M $8AF4,49 #TRACESCREEN
W $8AF4,12,4,2
B $8B00,37,5,5,5,5,7,5,4,1
M $8B25,76 #TRACESCREEN
W $8B25,12,4,2
B $8B31,64,5,5,7,7,7,7,7,7,5,6,1
M $8B71,58 #TRACESCREEN
W $8B71,12,4,2
B $8B7D,46,5,5,7,7,7,7,7,1
M $8BAB,69 #TRACESCREEN
W $8BAB,12,4,2
B $8BB7,57,5,6,5,5,7,7,7,7,7,1
M $8BF0,106 #TRACESCREEN
W $8BF0,12,4,2
B $8BFC,94,5,5,5,5,5,5,5,5,6,5,7,7,5,4,5,4,5,5,1
M $8C5A,110 #TRACESCREEN
W $8C5A,12,4,2
B $8C66,98,5,5,5,5,5,5,5,5,6,5,7,5,5,4,5,5,5,5,5,1
M $8CC8,80 #TRACESCREEN
W $8CC8,12,4,2
B $8CD4,68,5,5,5,5,5,5,6,5,5,7,7,7,1
M $8D18,68 #TRACESCREEN
W $8D18,12,4,2
B $8D24,56,5,5,5,5,6,7,5,5,5,7,1
M $8D5C,110 #TRACESCREEN
W $8D5C,12,4,2
B $8D68,98,2,5,6,5,5,6,5,7,7,7,7,7,7,7,5,4,5,1
M $8DCA,125 #TRACESCREEN
W $8DCA,12,4,2
B $8DD6,113,2,5,6,5,5,5,5,4,6,4,5,7,7,7,7,7,5,7,7,6,1
B $8E47,85
M $8E9C,69 #TRACESCREEN
W $8E9C,12,4,2
B $8EA8,57,5,5,5,5,5,5,5,5,5,5,6,1
M $8EE1,63 #TRACESCREEN
W $8EE1,12,4,2
B $8EED,51,5,5,4,4,6,6,5,5,5,5,1
M $8F20,100 #TRACESCREEN
W $8F20,12,4,2
B $8F2C,88,5,5,4,4,5,5,6,6,7,6,5,7,7,5,5,5,1
M $8F84,57 #TRACESCREEN
W $8F84,12,4,2
B $8F90,45,2,6,5,6,4,7,7,7,1
M $8FBD,72 #TRACESCREEN
W $8FBD,12,4,2
B $8FC9,60,6,6,5,5,5,4,4,5,5,7,7,1
M $9005,78 #TRACESCREEN
W $9005,12,4,2
B $9011,66,5,7,7,7,4,5,6,5,5,7,7,1
M $9053,76 #TRACESCREEN
W $9053,12,4,2
B $905F,64,6,6,5,5,5,7,7,6,6,5,5,1
M $909F,60 #TRACESCREEN
W $909F,12,4,2
B $90AB,48,5,5,6,5,5,7,7,7,1
M $90DB,100 #TRACESCREEN
W $90DB,12,4,2
B $90E7,88,2,6,5,5,6,5,5,7,7,4,5,4,5,7,7,7,1
M $913F,123 #TRACESCREEN
W $913F,12,4,2
B $914B,111,5,5,5,6,5,7,7,7,7,7,7,7,7,7,7,7,7,1
M $91BA,80 #TRACESCREEN
W $91BA,12,4,2
B $91C6,68,5,4,5,6,5,7,5,7,7,7,3,3,3,1
M $920A,68 #TRACESCREEN
W $920A,12,4,2
B $9216,56,5,7,7,3,3,3,3,3,7,7,7,1
M $924E,89 #TRACESCREEN
W $924E,12,4,2
B $925A,77,5,7,5,7,7,7,7,7,3,3,3,3,3,3,3,3,1
M $92A7,72 #TRACESCREEN
W $92A7,12,4,2
B $92B3,60,5,7,5,7,7,7,7,7,7,1
M $92EF,131 #TRACESCREEN
W $92EF,12,4,2
B $92FB,119,2,6,6,6,5,4,5,7,7,7,7,7,7,7,7,7,7,7,7,1
B $9372,4
M $9376,105 #TRACESCREEN
W $9376,12,4,2
B $9382,93,2,6,6,5,5,6,5,7,7,7,5,5,5,7,7,7,1
M $93DF,82 #TRACESCREEN
W $93DF,12,4,2
B $93EB,70,2,6,5,5,5,5,5,5,7,5,5,7,7,1
M $9431,32 #TRACESCREEN
W $9431,12,4,2
B $943D,20,2,7,5,5,1
M $9451,43 #TRACESCREEN
W $9451,12,4,2
B $945D,31,2,7,5,5,6,5,1
M $947C,47 #TRACESCREEN
W $947C,12,4,2
B $9488,35,2,6,6,5,5,5,5,1
M $94AB,36 #TRACESCREEN
W $94AB,12,4,2
B $94B7,24,2,6,6,4,5,1
M $94CF,89 #TRACESCREEN
W $94CF,12,4,2
B $94DB,77,5,6,6,4,4,6,7,5,5,7,7,7,7,1
B $9528,42
M $9552,96 #TRACESCREEN
W $9552,12,4,2
B $955E,84,5,6,6,4,4,6,7,7,5,5,7,7,7,7,1
B $95B2,36
M $95D6,34 #TRACESCREEN
W $95D6,12,4,2
B $95E2,22,5,6,5,5,1
M $95F8,60 #TRACESCREEN
W $95F8,12,4,2
B $9604,48,2,6,5,5,5,5,5,7,7,1
M $9634,82 #TRACESCREEN
W $9634,12,4,2
B $9640,70,6,6,5,4,5,7,7,5,5,5,7,7,1
B $9686,4
M $968A,66 #TRACESCREEN
W $968A,12,4,2
B $9696,54,6,5,6,5,5,5,7,7,7,1
M $96CC,39 #TRACESCREEN
W $96CC,12,4,2
B $96D8,27,5,6,5,5,5,1
M $96F3,34 #TRACESCREEN
W $96F3,12,4,2
B $96FF,22,6,5,5,5,1
M $9715,36 #TRACESCREEN
W $9715,12,4,2
B $9721,24,6,7,5,5,1
M $9739,53 #TRACESCREEN
W $9739,12,4,2
B $9745,41,6,5,5,5,5,7,7,1
M $976E,56 #TRACESCREEN
W $976E,12,4,2
B $977A,44,2,6,6,5,5,5,5,5,4,1
M $97A6,82 #TRACESCREEN
W $97A6,12,4,2
B $97B2,70,6,5,5,7,6,4,4,5,7,7,7,6,1
M $97F8,51 #TRACESCREEN
W $97F8,12,4,2
B $9804,39,2,6,6,5,5,7,7,1
M $982B,75 #TRACESCREEN
W $982B,12,4,2
B $9837,63,2,6,6,5,5,5,5,7,7,7,7,1
M $9876,74 #TRACESCREEN
W $9876,12,4,2
B $9882,62,2,6,6,6,5,5,5,5,7,7,7,1
M $98C0,65 #TRACESCREEN
W $98C0,12,4,2
B $98CC,53,5,5,7,7,7,7,7,7,1
B $9901,12
M $990D,138 #TRACESCREEN
W $990D,12,4,2
B $9919,126,6,6,6,5,7,7,7,6,5,7,7,7,7,7,7,7,7,7,7,1
B $9997,15
M $99A6,120 #TRACESCREEN
W $99A6,12,4,2
B $99B2,108,5,5,5,6,6,4,7,6,7,7,7,7,7,7,7,7,7,1
M $9A1E,60 #TRACESCREEN
W $9A1E,12,4,2
B $9A2A,48,2,6,6,5,6,5,7,5,5,1
M $9A5A,64 #TRACESCREEN
W $9A5A,12,4,2
B $9A66,52,2,6,6,5,6,5,7,7,7,1
M $9A9A,66 #TRACESCREEN
W $9A9A,12,4,2
B $9AA6,54,5,5,6,4,5,7,7,7,7,1
M $9ADC,61 #TRACESCREEN
W $9ADC,12,4,2
B $9AE8,49,2,6,6,5,7,5,5,5,7,1
M $9B19,56 #TRACESCREEN
W $9B19,12,4,2
B $9B25,44,6,6,7,5,5,7,7,1
M $9B51,76 #TRACESCREEN
W $9B51,12,4,2
B $9B5D,64,2,6,5,5,7,7,7,3,7,7,7,1
M $9B9D,74 #TRACESCREEN
W $9B9D,12,4,2
B $9BA9,62,2,6,6,7,7,7,7,7,3,3,3,3,1
M $9BE7,82 #TRACESCREEN
W $9BE7,12,4,2
B $9BF3,70,6,6,5,5,5,6,5,7,7,5,7,5,1
B $9C39
B $9C43,1,1
С $9C44 Routine at 9C44
D $9C44 Used by the routines at #R$B452, #R$B458 and #R$B47A.
С $9CA8 Routine at 9CA8
D $9CA8 Used by the routine at #R$9C44.
N $9D31 This entry point is used by the routine at #R$9C44.
N $9D34 This entry point is used by the routine at #R$9D8B.
N $9D58 This entry point is used by the routine at #R$9D75.
С $9D5C Routine at 9D5C
D $9D5C Used by the routines at #R$9C44 and #R$9CA8.
С $9D75 Routine at 9D75
D $9D75 Used by the routine at #R$9CA8.
С $9D8B Routine at 9D8B
D $9D8B Used by the routine at #R$9CA8.
С $9DCD Routine at 9DCD
D $9DCD Used by the routines at #R$A154, #R$A15F, #R$A1A6, #R$A1B5, #R$A1C0, #R$A1CB, #R$A1D6, #R$A353 and #R$B42E.
С $9DD9 Routine at 9DD9
D $9DD9 Used by the routines at #R$9CA8, #R$9DF1, #R$A434, #R$B937, #R$BC55, #R$C22F, #R$C4F6, #R$C50D, #R$C5C6 and #R$FA31.
N $9DDA Routine at 9DDA
С $9DDA Routine at 9DDA
b $9DEF Data block at 9DEF
B $9DEF,2,2
С $9DF1 Routine at 9DF1
D $9DF1 Used by the routine at #R$9DDA.
M $9DF5,45 #TRACESCREEN
W $9DF5,12,4,2
B $9E01,33,5,6,5,7,4,5,1
M $9E22,81 #TRACESCREEN
W $9E22,12,4,2
B $9E2E,69,2,6,6,5,7,7,7,7,7,7,7,1
M $9E73,69 #TRACESCREEN
W $9E73,12,4,2
B $9E7F,57,5,6,6,5,5,5,5,5,7,7,1
M $9EB8,33 #TRACESCREEN
W $9EB8,12,4,2
B $9EC4,21,5,5,5,5,1
M $9ED9,33 #TRACESCREEN
W $9ED9,12,4,2
B $9EE5,21,5,5,5,5,1
M $9EFA,64 #TRACESCREEN
W $9EFA,12,4,2
B $9F06,52,5,6,6,5,5,5,5,7,7,1
M $9F3A,68 #TRACESCREEN
W $9F3A,12,4,2
B $9F46,56,6,5,6,7,7,5,5,7,7,1
M $9F7E,134 #TRACESCREEN
W $9F7E,12,4,2
B $9F8A,122,6,6,7,6,6,7,7,7,7,7,7,7,6,6,7,4,5,7,6,1
B $A004,30
M $A022,133 #TRACESCREEN
W $A022,12,4,2
B $A02E,121,6,6,6,7,7,7,7,7,7,7,6,6,7,4,5,7,6,5,7,1
С $A0DF Routine at A0DF
N $A0E2 This entry point is used by the routines at #R$A0E8, #R$A0ED, #R$A0F2, #R$A0F7, #R$A0FC, #R$A101, #R$A106, #R$A10B, #R$A110, #R$A115, #R$A11F, #R$A124 and #R$A129.
N $A0E5 This entry point is used by the routine at #R$A142.
c $A0E8 Routine at A0E8
c $A0ED Routine at A0ED
c $A0F2 Routine at A0F2
c $A0F7 Routine at A0F7
c $A0FC Routine at A0FC
c $A101 Routine at A101
c $A106 Routine at A106
c $A10B Routine at A10B
c $A110 Routine at A110
c $A115 Routine at A115
b $A11A Data block at A11A
B $A11A,5,5
c $A11F Routine at A11F
c $A124 Routine at A124
c $A129 Routine at A129
b $A12E Data block at A12E
B $A12E,20,8*2,4
c $A142 Routine at A142
N $A145 This entry point is used by the routines at #R$A14A, #R$A14F, #R$A154, #R$A15F, #R$A16A, #R$A16F, #R$A174, #R$A179, #R$A183, #R$A188, #R$A18D and #R$A1A1.
c $A14A Routine at A14A
c $A14F Routine at A14F
c $A154 Routine at A154
c $A15F Routine at A15F
c $A16A Routine at A16A
c $A16F Routine at A16F
c $A174 Routine at A174
c $A179 Routine at A179
b $A17E Data block at A17E
B $A17E,5,5
c $A183 Routine at A183
c $A188 Routine at A188
c $A18D Routine at A18D
D $A18D Used by the routine at #R$B368.
b $A192 Data block at A192
B $A192,15,8,7
c $A1A1 Routine at A1A1
c $A1A6 Routine at A1A6
N $A1AF This entry point is used by the routines at #R$A1B5, #R$A1C0, #R$A1CB and #R$A1D6.
c $A1B5 Routine at A1B5
c $A1C0 Routine at A1C0
c $A1CB Background screen related routine
c $A1D6 Routine at A1D6
b $A1E1 Data block at A1E1
B $A1E1,370,8*46,2
c $A353 Routine at A353
N $A356 This entry point is used by the routines at #R$A35C, #R$A361, #R$A366, #R$A36B, #R$A370, #R$A375, #R$A37A, #R$A37F, #R$A384, #R$A389 and #R$A38E.
c $A35C Routine at A35C
c $A361 Routine at A361
c $A366 Routine at A366
c $A36B Routine at A36B
c $A370 Routine at A370
c $A375 Routine at A375
c $A37A Routine at A37A
c $A37F Routine at A37F
c $A384 Routine at A384
c $A389 Routine at A389
c $A38E Routine at A38E
b $A393 Data block at A393
B $A393,34,8*4,2
c $A3B5 Routine at A3B5
D $A3B5 Used by the routine at #R$A434.
c $A3D1 Routine at A3D1
D $A3D1 Used by the routine at #R$A434.
c $A3EE Routine at A3EE
D $A3EE Used by the routine at #R$A434.
c $A418 Routine at A418
D $A418 Used by the routine at #R$A434.
c $A434 Routine at A434
D $A434 Used by the routines at #R$B44C and #R$B458.
C $A451,1 A *= 2
C $A452,4 selfmodifing code: changing IX+...
C $A456,7 selfmodifing code: changing IX+...
C $A45D,3 index modifing by #R$A452
C $A460,671 index modifing by #R$A456
N $A6FF This entry point is used by the routines at #R$A3B5, #R$A3D1, #R$A3EE and #R$A418.
b $A747 Data block at A747
W $A747,20,2
c $A75B Routine at A75B
D $A75B Used by the routine at #R$A434.
c $A775 Routine at A775
D $A775 Used by the routine at #R$A434.
b $A787 Data block at A787
B $A787,102,8*12,6
t $A7ED Message at A7ED
T $A7ED,10,10
b $A7F7 Data block at A7F7
B $A7F7,1,1
t $A7F8 Message at A7F8
T $A7F8,8,8
b $A800 Data block at A800
B $A800,1,1
t $A801 Message at A801
T $A801,3,3
b $A804 Data block at A804
B $A804,93,8*11,5
t $A861 Message at A861
T $A861,3,3
b $A864 Data block at A864
B $A864,1,1
t $A865 Message at A865
T $A865,3,3
b $A868 Data block at A868
B $A868,1,1
t $A869 Message at A869
T $A869,3,3
b $A86C Data block at A86C
B $A86C,5,5
t $A871 Message at A871
T $A871,3,3
b $A874 Data block at A874
B $A874,294,8*36,6
t $A99A Message at A99A
T $A99A,3,3
b $A99D Data block at A99D
B $A99D,140,8*17,4
t $AA29 Message at AA29
T $AA29,8,8
b $AA31 Data block at AA31
B $AA31,216,8
t $AB09 Message at AB09
T $AB09,4,4
b $AB0D Data block at AB0D
B $AB0D,205,8*25,5
t $ABDA Message at ABDA
T $ABDA,7,7
b $ABE1 Data block at ABE1
B $ABE1,61,8*7,5
t $AC1E Message at AC1E
T $AC1E,3,3
b $AC21 Data block at AC21
B $AC21,35,8*4,3
c $AC44 Routine at AC44
D $AC44 Used by the routine at #R$B5C7.
b $AC72 Data block at AC72
B $AC72,88,8
c $ACCA Basic Game Screen
D $ACCA Used by the routine at #R$B5C7.
C $AD26,3 Put String (HL) to (DE) Screen Position
C $AD2E,3 Put String (HL) to (DE) Screen Position
C $AD36,3 Put String (HL) to (DE) Screen Position
C $AD3E,3 Put String (HL) to (DE) Screen Position
C $AD46,3 Put String (HL) to (DE) Screen Position
t $AD4A Current game score
T $AD4A,13,13
t $AD57 Timer High Digit
T $AD57,1,1
t $AD58 Timer Low Digit
T $AD58,1,1
t $AD59 Other gameplay text
T $AD59,12,12
b $AD65 Base gamescreen Layout
B $AD65,157,9*17,4 #SMAP$AD65,$AE02
b $AE02 Base game Screen Sprites
D $AE02 #UDGTABLE { #FOR$AE02,$AEBF,9//n/#UDG(n,#PEEK(n+8),5)/ | // } TABLE#
B $AE02,198,5,4,5,4,5,4,5,4,5,4,9
b $AEC8 Data block at AEC8
B $AEC8,9,8,1
c $AED1 Put String to Screen
D $AED1 Used by the routines at #R$ACCA, #R$AEF0, #R$AF9C, #R$B040, #R$B4DE, #R$B724, #R$BEB3, #R$BFD5, #R$DEC1, #R$DF37, #R$E097 and #R$E2A7.
R $AED1 C Length
R $AED1 (HL) StringAddress
R $AED1 (DE) ScreenAddress
@ $AED1 label=PutTextToScreen
c $AEF0 Routine at AEF0
D $AEF0 Used by the routine at #R$BC0D.
C $AF41,3 Put String (HL) to (DE) Screen Position
C $AF49,3 Put String (HL) to (DE) Screen Position
C $AF51,3 Put String (HL) to (DE) Screen Position
C $AF59,3 Put String (HL) to (DE) Screen Position
C $AF61,3 Put String (HL) to (DE) Screen Position
C $AF6E,3 Put String (HL) to (DE) Screen Position
N $AF7E This entry point is used by the routine at #R$AF9C.
N $AF84 This entry point is used by the routine at #R$AF9C.
c $AF9C Routine at AF9C
D $AF9C Used by the routine at #R$F968.
N $AFAA This entry point is used by the routine at #R$AEF0.
C $AFAD,3 Put String (HL) to (DE) Screen Position
N $AFBE This entry point is used by the routine at #R$B040.
N $B005 This entry point is used by the routine at #R$AEF0.
C $B014,3 Put String (HL) to (DE) Screen Position
C $B01A,3 Put String (HL) to (DE) Screen Position
C $B023,3 Put String (HL) to (DE) Screen Position
C $B029,3 Put String (HL) to (DE) Screen Position
c $B040 Routine at B040
D $B040 Used by the routine at #R$F968.
C $B04D,3 Put String (HL) to (DE) Screen Position
t $B061 Score board
T $B061,221,66*3,23
b $B13E Data block at B13E
B $B13E,10,8,2
c $B148 Draw Screen Candidate 1
D $B148 Used by the routines at #R$B724 and #R$B937.
C $B205,3 Swap ($7239) <-> ($71CD)
C $B22D,3 Swap ($7239) <-> ($71CD)
C $B248,3 Swap ($7239) <-> ($7347)
C $B260,3 Swap ($7239) <-> ($7347)
c $B2E8 Routine at B2E8
D $B2E8 Used by the routine at #R$B148.
b $B2FD Data block at B2FD
B $B2FD,1,1
c $B2FE Swap ($7239) <-> ($71CD)
D $B2FE Used by the routine at #R$B148.
c $B30F Swap ($7239) <-> ($7347)
D $B30F Used by the routine at #R$B148.
c $B320 Routine at B320
c $B32A Routine at B32A
c $B334 Routine at B334
c $B33E Routine at B33E
c $B348 Routine at B348
N $B350 This entry point is used by the routines at #R$B320, #R$B32A, #R$B334 and #R$B33E.
c $B368 Routine at B368
c $B371 Routine at B371
D $B371 Used by the routine at #R$BC55.
c $B38F Routine at B38F
s $B3AF Unused
S $B3AF,1,$01
c $B3B0 Routine at B3B0
D $B3B0 Used by the routine at #R$F913.
s $B401 Unused
S $B401,9,$09
c $B40A Routine at B40A
D $B40A Used by the routines at #R$A0DF, #R$A1A6 and #R$B425.
c $B41F Routine at B41F
c $B422 Routine at B422
D $B422 Used by the routines at #R$A0DF, #R$A1A6, #R$A353 and #R$F973.
c $B425 Routine at B425
D $B425 Used by the routine at #R$791B.
c $B42E Routine at B42E
b $B437 Data block at B437
B $B437,15,8,7
c $B446 Routine at B446
c $B44C Routine at B44C
D $B44C Used by the routine at #R$7918.
c $B452 Routine at B452
c $B458 Background screen related Routine
c $B461 Routine at B461
D $B461 Used by the routine at #R$A142.
c $B47A Routine at B47A
c $B483 Routine at B483
c $B489 Routine at B489
D $B489 Used by the routines at #R$B47A and #R$B483.
b $B4DD Data block at B4DD
B $B4DD,1,1
c $B4DE Routine at B4DE
D $B4DE Used by the routines at #R$B724, #R$B937, #R$BC55, #R$BDB2, #R$BFD5 and #R$C4A7.
c $B4FA Routine at B4FA
D $B4FA Used by the routine at #R$B446.
b $B513 Data Block at B513
W $B513,4,2
B $B517,27,8*3,3
c $B532 Routine at B532
s $B595 Unused
S $B595,1,$01
c $B596 Routine at B596
D $B596 Used by the routines at #R$BDB2 and #R$C4A7.
N $B598 This entry point is used by the routine at #R$B59E.
b $B59B Data block at B59B
B $B59B,3,3
c $B59E Routine at B59E
D $B59E Used by the routine at #R$C5C6.
b $B5A7 Data block at B5A7
B $B5A7,1,1
t $B5A8 Message at B5A8
T $B5A8,8,8
b $B5B0 Data block at B5B0
B $B5B0,23,8*2,7
c $B5C7 Routine at B5C7
D $B5C7 Used by the routine at #R$B3B0.
N $B66A This entry point is used by the routines at #R$C2FA, #R$C319, #R$C5C6 and #R$C623.
N $B6EE This entry point is used by the routine at #R$B702.
c $B702 Routine at B702
D $B702 Used by the routine at #R$734A.
b $B706 Reference links to different element routines
W $B706,2,2 0: Take HL from Stack then: Put 9 bytes from $7c21 to HL(1..2) 3x3 square
W $B708,2,2 1: Take HL from Stack then: HL(1) times fill (HL3..4) by (HL+2) with 0x1e step (vertical)
W $B70A,2,2 2: Take HL from Stack then: HL(1) times fill (HL3..4) by (HL+2) with 0x01 step (horizontal)
W $B70C,2,2 3: Take HL from Stack then: Fill Square by HL(1) HL(2)xHL(3) to HL(4..5)
W $B70E,2,2 4: Take HL from Stack then: Fill [$6590..6590+0x1FE] with HL(1) and puts HL to Stack
W $B710,2,2 5: Take HL from Stack then: HL(1)xHL(2) data copied from HL(3..4) to HL(5..6)
W $B712,2,2 6: Take HL from Stack then: HL(2) Size of right-to-bottom triangle by (hl+1) started at (HL3..4) wide top
W $B714,2,2 7: Take HL from Stack then: HL(2) Size of right-to-bottom triangle by (hl+1) started at (HL3..4) wide bottom
W $B716,2,2 8: Take HL from Stack then: HL(2) Size of left-to-bottom triangle by (hl+1) started at (HL3..4) wide bottom
W $B718,2,2 9: Take HL from Stack then: HL(2) Size of left-to-bottom triangle by (hl+1) started at (HL3..4) wide top
W $B71A,2,2 A: Take HL from Stack then: HL(1) times fill (HL3..4) by (HL+2) with 0x1f step (diagonal to right)
W $B71C,2,2 B: Take HL from Stack then: HL(1) times fill (HL3..4) by (HL+2) with 0x1d step (diagonal to left)
W $B71E,2,2 C: Take HL from Stack then: Fill Square HL(3)xHL(4) by data from HL(1..2) to HL(5..6)
W $B720,2,2 D: Take HL from Stack then: Setborder hl(1)
W $B722,2,2 E: Take HL from Stack then: (HL+1)->(HL3..4) 1 times
c $B724 Routine at B724
D $B724 Used by the routines at #R$B422, #R$B425, #R$B42E, #R$C64C and #R$C681.
N $B77B This entry point is used by the routine at #R$B937.
C $B7AC,3 Put String (HL) to (DE) Screen Position
C $B7C7,3 Put String (HL) to (DE) Screen Position
N $B814 This entry point is used by the routine at #R$B889.
c $B83C Routine at B83C
D $B83C Used by the routine at #R$BC55.
b $B84A Data block at B84A
B $B84A,7,7
c $B851 Routine at B851
D $B851 Used by the routine at #R$B5C7.
c $B86C Routine at B86C
D $B86C Used by the routine at #R$B889.
c $B889 Routine at B889
D $B889 Used by the routine at #R$B724.
N $B891 This entry point is used by the routine at #R$B724.
c $B8D0 Routine at B8D0
D $B8D0 Used by the routines at #R$B348, #R$B532, #R$BBD4, #R$BC55, #R$BE0D, #R$BF7B, #R$C094, #R$C13D, #R$C1B6, #R$C24B, #R$C339, #R$C3D9, #R$C4A7, #R$C4DE, #R$C5C6 and #R$C6E2.
c $B937 Routine at B937
D $B937 Used by the routines at #R$B41F, #R$B446, #R$B44C, #R$B452, #R$B458, #R$B47A, #R$B483 and #R$C6A5.
N $BA20 This entry point is used by the routine at #R$BAD5.
b $BAB2 Data block at BAB2
B $BAB2,18,8*2,2
t $BAC4 Message at BAC4
T $BAC4,3,3
b $BAC7 Data block at BAC7
B $BAC7,14,8,6
c $BAD5 Routine at BAD5
D $BAD5 Used by the routine at #R$B937.
N $BBA7 This entry point is used by the routine at #R$B937.
c $BBAE Routine at BBAE
D $BBAE Used by the routine at #R$B937.
c $BBBB Routine at BBBB
D $BBBB Used by the routines at #R$B724 and #R$B8D0.
c $BBD4 Routine at BBD4
c $BBDF Routine at BBDF
D $BBDF Used by the routines at #R$BBD4, #R$BC55, #R$C1B6, #R$C22F, #R$C24B, #R$C3D9 and #R$F9B9.
c $BC0D Routine at BC0D
D $BC0D Used by the routine at #R$BEB3.
N $BC13 This entry point is used by the routine at #R$F9E7.
N $BC3B This entry point is used by the routine at #R$DF37.
c $BC55 Routine at BC55
t $BD2F Message at BD2F
T $BD2F,4,4
c $BD33 Routine at BD33
D $BD33 Used by the routine at #R$BC55.
c $BD37 Routine at BD37
D $BD37 Used by the routine at #R$BC55.
c $BDAF Routine at BDAF
c $BDB2 Routine at BDB2
D $BDB2 Used by the routines at #R$BC55 and #R$BD37.
c $BDDD Routine at BDDD
D $BDDD Used by the routine at #R$BC55.
c $BE0D Routine at BE0D
c $BE5A Routine at BE5A
D $BE5A Used by the routine at #R$BC55.
c $BE63 Routine at BE63
D $BE63 Used by the routines at #R$BE71 and #R$BEAA.
c $BE71 Timer's out...
D $BE71 Used by the routine at #R$B724.
c $BEAA Routine at BEAA
D $BEAA Used by the routine at #R$9DDA.
c $BEB3 Routine at BEB3
D $BEB3 Used by the routines at #R$B889 and #R$BFD5.
C $BEBB,3 Put String (HL) to (DE) Screen Position
C $BEC3,3 Put String (HL) to (DE) Screen Position
t $BEEF Message at BEEF
T $BEEF,140,66*2,8
c $BF7B Routine at BF7B
D $BF7B Used by the routine at #R$BDDD.
N $BFB0 This entry point is used by the routines at #R$B532, #R$BD37, #R$BDB2, #R$BDDD, #R$BE0D, #R$BE5A, #R$BE63, #R$BFBA, #R$C13D, #R$C1B6, #R$C339, #R$C3BB, #R$C4A7, #R$C4E8, #R$C4F6, #R$C50D and #R$C643.
c $BFBA Routine at BFBA
D $BFBA Used by the routine at #R$BDDD.
N $BFCC This entry point is used by the routine at #R$C5C6.
c $BFD5 Routine at BFD5
D $BFD5 Used by the routine at #R$C094.
C $C002,3 Put String (HL) to (DE) Screen Position
C $C00A,3 Put String (HL) to (DE) Screen Position
C $C012,3 Put String (HL) to (DE) Screen Position
C $C01A,3 Put String (HL) to (DE) Screen Position
C $C025,3 Put String (HL) to (DE) Screen Position
C $C030,3 Put String (HL) to (DE) Screen Position
C $C042,3 Put String (HL) to (DE) Screen Position
t $C062 Message at C062
T $C062,50,50
c $C094 Routine at C094
b $C0E6 Data block at C0E6
B $C0E6,72,8
c $C12E Routine at C12E
D $C12E Used by the routine at #R$BFBA.
c $C13D Routine at C13D
D $C13D Used by the routine at #R$BFBA.
N $C14B This entry point is used by the routine at #R$C3D9.
N $C162 This entry point is used by the routine at #R$C3D9.
N $C16E This entry point is used by the routines at #R$BF7B, #R$C22F, #R$C24B and #R$C50D.
b $C171 Data block at C171
B $C171,69,8*8,5
c $C1B6 Routine at C1B6
N $C226 This entry point is used by the routines at #R$BBD4, #R$BDAF, #R$C22F, #R$C24B, #R$C3D9, #R$C4DE, #R$C4F6, #R$C5A0 and #R$C6E2.
c $C22F Routine at C22F
c $C24B Routine at C24B
N $C2BB This entry point is used by the routine at #R$C1B6.
c $C2FA Routine at C2FA
D $C2FA Used by the routines at #R$C1B6 and #R$C50D.
c $C319 Routine at C319
D $C319 Used by the routines at #R$C24B and #R$C50D.
c $C339 Routine at C339
c $C392 Routine at C392
D $C392 Used by the routines at #R$BFBA, #R$C339 and #R$C3D9.
c $C3BB Routine at C3BB
D $C3BB Used by the routine at #R$C339.
N $C3C3 This entry point is used by the routine at #R$C3CF.
N $C3C6 This entry point is used by the routine at #R$C339.
c $C3CF Routine at C3CF
D $C3CF Used by the routine at #R$C339.
c $C3D9 Routine at C3D9
N $C498 This entry point is used by the routine at #R$C12E.
t $C4A4 Message at C4A4
T $C4A4,3,3
c $C4A7 Routine at C4A7
N $C4D0 This entry point is used by the routine at #R$C339.
c $C4DE Routine at C4DE
c $C4E8 Routine at C4E8
D $C4E8 Used by the routines at #R$BF7B and #R$C24B.
c $C4F6 Routine at C4F6
c $C50D Routine at C50D
c $C57B Routine at C57B
D $C57B Used by the routines at #R$C4E8, #R$C4F6 and #R$C50D.
c $C5A0 Routine at C5A0
c $C5A3 Routine at C5A3
D $C5A3 Used by the routines at #R$BC55, #R$C1B6 and #R$C24B.
c $C5C6 Routine at C5C6
N $C604 This entry point is used by the routines at #R$C1B6, #R$C24B and #R$C3D9.
c $C623 Routine at C623
D $C623 Used by the routine at #R$C3D9.
c $C643 Routine at C643
D $C643 Used by the routines at #R$BC55, #R$C1B6 and #R$C24B.
c $C64C Routine at C64C
b $C65A Data block at C65A
B $C65A,23,8*2,7
c $C671 Routine at C671
c $C681 Routine at C681
N $C68F This entry point is used by the routine at #R$C671.
c $C6A5 Routine at C6A5
c $C6E2 Routine at C6E2
N $C6F5 This entry point is used by the routine at #R$C70C.
c $C70C Routine at C70C
b $C721 #FONT:( !"#$%&'()*+,-./01234567890:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ)50977
B $C721,464,8
b $C8F1 Data block at C8F1
B $C8F1,12,8,4
t $C8FD Message at C8FD
T $C8FD,14,14
b $C90B Data block at C90B
B $C90B,2,2
t $C90D Message at C90D
T $C90D,14,14
b $C91B Data block at C91B
B $C91B,2,2
t $C91D Message at C91D
T $C91D,14,14
b $C92B Data block at C92B
B $C92B,2,2
t $C92D Message at C92D
T $C92D,14,14
b $C93B Data block at C93B
B $C93B,2,2
t $C93D Message at C93D
T $C93D,13,13
b $C94A Data block at C94A
B $C94A,3,3
t $C94D Message at C94D
T $C94D,14,14
b $C95B Data block at C95B
B $C95B,2,2
t $C95D Message at C95D
T $C95D,14,14
b $C96B Data block at C96B
B $C96B,2,2
t $C96D Message at C96D
T $C96D,13,13
b $C97A Data block at C97A
B $C97A,3,3
t $C97D Message at C97D
T $C97D,14,14
b $C98B Data block at C98B
B $C98B,2,2
t $C98D Message at C98D
T $C98D,13,13
b $C99A Data block at C99A
B $C99A,3,3
t $C99D Message at C99D
T $C99D,14,14
b $C9AB Data block at C9AB
B $C9AB,2,2
t $C9AD Message at C9AD
T $C9AD,14,14
b $C9BB Data block at C9BB
B $C9BB,2,2
t $C9BD Message at C9BD
T $C9BD,13,13
b $C9CA Data block at C9CA
B $C9CA,3,3
t $C9CD Message at C9CD
T $C9CD,13,13
b $C9DA Data block at C9DA
B $C9DA,3,3
t $C9DD Message at C9DD
T $C9DD,13,13
b $C9EA Data block at C9EA
B $C9EA,3,3
t $C9ED Message at C9ED
T $C9ED,13,13
b $C9FA Data block at C9FA
B $C9FA,3,3
t $C9FD Message at C9FD
T $C9FD,13,13
b $CA0A Data block at CA0A
B $CA0A,3,3
t $CA0D Message at CA0D
T $CA0D,14,14
b $CA1B Data block at CA1B
B $CA1B,2,2
t $CA1D Message at CA1D
T $CA1D,4,4
t $CA21 Message at CA21
T $CA21,9,9
b $CA2A Data block at CA2A
B $CA2A,3,3
t $CA2D Message at CA2D
T $CA2D,13,13
b $CA3A Data block at CA3A
B $CA3A,3,3
t $CA3D Message at CA3D
T $CA3D,13,13
b $CA4A Data block at CA4A
B $CA4A,3,3
t $CA4D Message at CA4D
T $CA4D,14,14
b $CA5B Data block at CA5B
B $CA5B,2,2
t $CA5D Message at CA5D
T $CA5D,13,13
b $CA6A Data block at CA6A
B $CA6A,3,3
t $CA6D Message at CA6D
T $CA6D,14,14
b $CA7B Data block at CA7B
B $CA7B,2,2
t $CA7D Message at CA7D
T $CA7D,13,13
b $CA8A Data block at CA8A
B $CA8A,3,3
t $CA8D Message at CA8D
T $CA8D,14,14
b $CA9B Data block at CA9B
B $CA9B,2,2
t $CA9D Message at CA9D
T $CA9D,13,13
b $CAAA Data block at CAAA
B $CAAA,3,3
t $CAAD Message at CAAD
T $CAAD,13,13
b $CABA Data block at CABA
B $CABA,3,3
t $CABD Message at CABD
T $CABD,13,13
b $CACA Data block at CACA
B $CACA,3,3
t $CACD Message at CACD
T $CACD,13,13
b $CADA Data block at CADA
B $CADA,3,3
t $CADD Message at CADD
T $CADD,13,13
b $CAEA Data block at CAEA
B $CAEA,3,3
t $CAED Message at CAED
T $CAED,14,14
b $CAFB Data block at CAFB
B $CAFB,2,2
t $CAFD Message at CAFD
T $CAFD,13,13
b $CB0A Data block at CB0A
B $CB0A,3,3
t $CB0D Message at CB0D
T $CB0D,14,14
b $CB1B Data block at CB1B
B $CB1B,2,2
t $CB1D Message at CB1D
T $CB1D,14,14
b $CB2B Data block at CB2B
B $CB2B,2,2
t $CB2D Message at CB2D
T $CB2D,13,13
b $CB3A Data block at CB3A
B $CB3A,3,3
t $CB3D Message at CB3D
T $CB3D,13,13
b $CB4A Data block at CB4A
B $CB4A,3,3
t $CB4D Message at CB4D
T $CB4D,13,13
b $CB5A Data block at CB5A
B $CB5A,3,3
t $CB5D Message at CB5D
T $CB5D,13,13
b $CB6A Data block at CB6A
B $CB6A,3,3
t $CB6D Message at CB6D
T $CB6D,13,13
b $CB7A Data block at CB7A
B $CB7A,3,3
t $CB7D Message at CB7D
T $CB7D,13,13
b $CB8A Data block at CB8A
B $CB8A,3,3
t $CB8D Message at CB8D
T $CB8D,13,13
b $CB9A Data block at CB9A
B $CB9A,3,3
t $CB9D Message at CB9D
T $CB9D,14,14
b $CBAB Data block at CBAB
B $CBAB,2,2
t $CBAD Message at CBAD
T $CBAD,13,13
b $CBBA Data block at CBBA
B $CBBA,3,3
t $CBBD Message at CBBD
T $CBBD,13,13
b $CBCA Data block at CBCA
B $CBCA,3,3
t $CBCD Message at CBCD
T $CBCD,14,14
b $CBDB Data block at CBDB
B $CBDB,2,2
t $CBDD Message at CBDD
T $CBDD,14,14
b $CBEB Data block at CBEB
B $CBEB,2,2
t $CBED Message at CBED
T $CBED,13,13
b $CBFA Data block at CBFA
B $CBFA,3,3
t $CBFD Message at CBFD
T $CBFD,13,13
b $CC0A Data block at CC0A
B $CC0A,3,3
t $CC0D Message at CC0D
T $CC0D,14,14
b $CC1B Data block at CC1B
B $CC1B,2,2
t $CC1D Message at CC1D
T $CC1D,13,13
b $CC2A Data block at CC2A
B $CC2A,3,3
t $CC2D Message at CC2D
T $CC2D,13,13
b $CC3A Data block at CC3A
B $CC3A,3,3
t $CC3D Message at CC3D
T $CC3D,14,14
b $CC4B Data block at CC4B
B $CC4B,2,2
t $CC4D Message at CC4D
T $CC4D,14,14
b $CC5B Data block at CC5B
B $CC5B,2,2
t $CC5D Message at CC5D
T $CC5D,13,13
b $CC6A Data block at CC6A
B $CC6A,3,3
t $CC6D Message at CC6D
T $CC6D,13,13
b $CC7A Data block at CC7A
B $CC7A,3,3
t $CC7D Message at CC7D
T $CC7D,13,13
b $CC8A Data block at CC8A
B $CC8A,3,3
t $CC8D Message at CC8D
T $CC8D,13,13
b $CC9A Data block at CC9A
B $CC9A,3,3
t $CC9D Message at CC9D
T $CC9D,13,13
b $CCAA Data block at CCAA
B $CCAA,3,3
t $CCAD Message at CCAD
T $CCAD,13,13
b $CCBA Data block at CCBA
B $CCBA,3,3
t $CCBD Message at CCBD
T $CCBD,13,13
b $CCCA Data block at CCCA
B $CCCA,3,3
t $CCCD Message at CCCD
T $CCCD,13,13
b $CCDA Data block at CCDA
B $CCDA,3,3
t $CCDD Message at CCDD
T $CCDD,13,13
b $CCEA Data block at CCEA
B $CCEA,3,3
t $CCED Message at CCED
T $CCED,14,14
b $CCFB Data block at CCFB
B $CCFB,2,2
t $CCFD Message at CCFD
T $CCFD,13,13
b $CD0A Data block at CD0A
B $CD0A,3,3
t $CD0D Message at CD0D
T $CD0D,14,14
b $CD1B Data block at CD1B
B $CD1B,2,2
t $CD1D Message at CD1D
T $CD1D,13,13
b $CD2A Data block at CD2A
B $CD2A,3,3
t $CD2D Message at CD2D
T $CD2D,14,14
b $CD3B Data block at CD3B
B $CD3B,2,2
t $CD3D Message at CD3D
T $CD3D,14,14
b $CD4B Data block at CD4B
B $CD4B,2,2
t $CD4D Message at CD4D
T $CD4D,14,14
b $CD5B Data block at CD5B
B $CD5B,2,2
t $CD5D Message at CD5D
T $CD5D,14,14
b $CD6B Data block at CD6B
B $CD6B,2,2
t $CD6D Message at CD6D
T $CD6D,13,13
b $CD7A Data block at CD7A
B $CD7A,3,3
t $CD7D Message at CD7D
T $CD7D,13,13
b $CD8A Data block at CD8A
B $CD8A,3,3
t $CD8D Message at CD8D
T $CD8D,13,13
b $CD9A Data block at CD9A
B $CD9A,3,3
t $CD9D Message at CD9D
T $CD9D,13,13
b $CDAA Data block at CDAA
B $CDAA,3,3
t $CDAD Message at CDAD
T $CDAD,14,14
b $CDBB Data block at CDBB
B $CDBB,2,2
t $CDBD Message at CDBD
T $CDBD,14,14
b $CDCB Data block at CDCB
B $CDCB,2,2
t $CDCD Message at CDCD
T $CDCD,14,14
b $CDDB Data block at CDDB
B $CDDB,2,2
t $CDDD Message at CDDD
T $CDDD,14,14
b $CDEB Data block at CDEB
B $CDEB,2,2
t $CDED Message at CDED
T $CDED,13,13
b $CDFA Data block at CDFA
B $CDFA,3,3
t $CDFD Message at CDFD
T $CDFD,13,13
b $CE0A Data block at CE0A
B $CE0A,3,3
t $CE0D Message at CE0D
T $CE0D,13,13
b $CE1A Data block at CE1A
B $CE1A,3,3
t $CE1D Message at CE1D
T $CE1D,13,13
b $CE2A Data block at CE2A
B $CE2A,3,3
t $CE2D Message at CE2D
T $CE2D,13,13
b $CE3A Data block at CE3A
B $CE3A,3,3
t $CE3D Message at CE3D
T $CE3D,13,13
b $CE4A Data block at CE4A
B $CE4A,3,3
t $CE4D Message at CE4D
T $CE4D,13,13
b $CE5A Data block at CE5A
B $CE5A,3,3
t $CE5D Message at CE5D
T $CE5D,13,13
b $CE6A Data block at CE6A
B $CE6A,3,3
t $CE6D Message at CE6D
T $CE6D,13,13
b $CE7A Data block at CE7A
B $CE7A,3,3
t $CE7D Message at CE7D
T $CE7D,13,13
b $CE8A Data block at CE8A
B $CE8A,3,3
t $CE8D Message at CE8D
T $CE8D,13,13
b $CE9A Data block at CE9A
B $CE9A,3,3
t $CE9D Message at CE9D
T $CE9D,13,13
b $CEAA Data block at CEAA
B $CEAA,3,3
t $CEAD Message at CEAD
T $CEAD,14,14
b $CEBB Data block at CEBB
B $CEBB,2,2
t $CEBD Message at CEBD
T $CEBD,14,14
b $CECB Data block at CECB
B $CECB,2,2
t $CECD Message at CECD
T $CECD,14,14
b $CEDB Data block at CEDB
B $CEDB,2,2
t $CEDD Message at CEDD
T $CEDD,14,14
b $CEEB Data block at CEEB
B $CEEB,2,2
t $CEED Message at CEED
T $CEED,14,14
b $CEFB Data block at CEFB
B $CEFB,2,2
t $CEFD Message at CEFD
T $CEFD,13,13
b $CF0A Data block at CF0A
B $CF0A,3,3
t $CF0D Message at CF0D
T $CF0D,14,14
b $CF1B Data block at CF1B
B $CF1B,2,2
t $CF1D Message at CF1D
T $CF1D,14,14
b $CF2B Data block at CF2B
B $CF2B,2,2
t $CF2D Message at CF2D
T $CF2D,14,14
b $CF3B Data block at CF3B
B $CF3B,2,2
t $CF3D Message at CF3D
T $CF3D,14,14
b $CF4B Data block at CF4B
B $CF4B,2,2
t $CF4D Message at CF4D
T $CF4D,13,13
b $CF5A Data block at CF5A
B $CF5A,3,3
t $CF5D Message at CF5D
T $CF5D,13,13
b $CF6A Data block at CF6A
B $CF6A,3,3
t $CF6D Message at CF6D
T $CF6D,13,13
b $CF7A Data block at CF7A
B $CF7A,3,3
t $CF7D Message at CF7D
T $CF7D,13,13
b $CF8A Data block at CF8A
B $CF8A,3,3
t $CF8D Message at CF8D
T $CF8D,13,13
b $CF9A Data block at CF9A
B $CF9A,3,3
t $CF9D Message at CF9D
T $CF9D,13,13
b $CFAA Data block at CFAA
B $CFAA,3,3
t $CFAD Message at CFAD
T $CFAD,14,14
b $CFBB Data block at CFBB
B $CFBB,2,2
t $CFBD Message at CFBD
T $CFBD,14,14
b $CFCB Data block at CFCB
B $CFCB,2,2
t $CFCD Message at CFCD
T $CFCD,13,13
b $CFDA Data block at CFDA
B $CFDA,3,3
t $CFDD Message at CFDD
T $CFDD,13,13
b $CFEA Data block at CFEA
B $CFEA,3,3
t $CFED Message at CFED
T $CFED,13,13
b $CFFA Data block at CFFA
B $CFFA,3,3
t $CFFD Message at CFFD
T $CFFD,13,13
b $D00A Data block at D00A
B $D00A,3,3
t $D00D Message at D00D
T $D00D,13,13
b $D01A Data block at D01A
B $D01A,3,3
t $D01D Message at D01D
T $D01D,13,13
b $D02A Data block at D02A
B $D02A,3,3
t $D02D Message at D02D
T $D02D,13,13
b $D03A Data block at D03A
B $D03A,3,3
t $D03D Message at D03D
T $D03D,13,13
b $D04A Data block at D04A
B $D04A,3,3
t $D04D Message at D04D
T $D04D,13,13
b $D05A Data block at D05A
B $D05A,3,3
t $D05D Message at D05D
T $D05D,13,13
b $D06A Data block at D06A
B $D06A,3,3
t $D06D Message at D06D
T $D06D,13,13
b $D07A Data block at D07A
B $D07A,3,3
t $D07D Message at D07D
T $D07D,13,13
b $D08A Data block at D08A
B $D08A,3,3
t $D08D Message at D08D
T $D08D,13,13
b $D09A Data block at D09A
B $D09A,3,3
t $D09D Message at D09D
T $D09D,13,13
b $D0AA Data block at D0AA
B $D0AA,3,3
t $D0AD Message at D0AD
T $D0AD,13,13
b $D0BA Data block at D0BA
B $D0BA,3,3
t $D0BD Message at D0BD
T $D0BD,13,13
b $D0CA Data block at D0CA
B $D0CA,3,3
t $D0CD Message at D0CD
T $D0CD,13,13
b $D0DA Data block at D0DA
B $D0DA,3,3
t $D0DD Message at D0DD
T $D0DD,14,14
b $D0EB Data block at D0EB
B $D0EB,2,2
t $D0ED Message at D0ED
T $D0ED,13,13
b $D0FA Data block at D0FA
B $D0FA,3,3
t $D0FD Message at D0FD
T $D0FD,14,14
b $D10B Data block at D10B
B $D10B,2,2
t $D10D Message at D10D
T $D10D,13,13
b $D11A Data block at D11A
B $D11A,3,3
t $D11D Message at D11D
T $D11D,13,13
b $D12A Data block at D12A
B $D12A,3,3
t $D12D Message at D12D
T $D12D,13,13
b $D13A Data block at D13A
B $D13A,3,3
t $D13D Message at D13D
T $D13D,13,13
b $D14A Data block at D14A
B $D14A,3,3
t $D14D Message at D14D
T $D14D,13,13
b $D15A Data block at D15A
B $D15A,3,3
t $D15D Message at D15D
T $D15D,13,13
b $D16A Data block at D16A
B $D16A,3,3
t $D16D Message at D16D
T $D16D,13,13
b $D17A Data block at D17A
B $D17A,3,3
t $D17D Message at D17D
T $D17D,13,13
b $D18A Data block at D18A
B $D18A,3,3
t $D18D Message at D18D
T $D18D,13,13
b $D19A Data block at D19A
B $D19A,3,3
t $D19D Message at D19D
T $D19D,13,13
b $D1AA Data block at D1AA
B $D1AA,3,3
t $D1AD Message at D1AD
T $D1AD,13,13
b $D1BA Data block at D1BA
B $D1BA,3,3
t $D1BD Message at D1BD
T $D1BD,18,18
b $D1CF Data block at D1CF
B $D1CF,2,2
t $D1D1 Message at D1D1
T $D1D1,13,13
b $D1DE Data block at D1DE
B $D1DE,3,3
t $D1E1 Message at D1E1
T $D1E1,13,13
b $D1EE Data block at D1EE
B $D1EE,3,3
t $D1F1 Message at D1F1
T $D1F1,13,13
b $D1FE Data block at D1FE
B $D1FE,3,3
t $D201 Message at D201
T $D201,14,14
b $D20F Data block at D20F
B $D20F,134,8*16,6
t $D295 Message at D295
T $D295,3,3
b $D298 Data block at D298
B $D298,11,8,3
t $D2A3 Message at D2A3
T $D2A3,3,3
b $D2A6 Data block at D2A6
B $D2A6,4,4
t $D2AA Message at D2AA
T $D2AA,3,3
b $D2AD Data block at D2AD
B $D2AD,4,4
t $D2B1 Message at D2B1
T $D2B1,3,3
b $D2B4 Data block at D2B4
B $D2B4,4,4
t $D2B8 Message at D2B8
T $D2B8,3,3
b $D2BB Data block at D2BB
B $D2BB,4,4
t $D2BF Message at D2BF
T $D2BF,3,3
b $D2C2 Data block at D2C2
B $D2C2,4,4
t $D2C6 Message at D2C6
T $D2C6,3,3
b $D2C9 Data block at D2C9
B $D2C9,4,4
t $D2CD Message at D2CD
T $D2CD,3,3
b $D2D0 Data block at D2D0
B $D2D0,4,4
t $D2D4 Message at D2D4
T $D2D4,3,3
b $D2D7 Data block at D2D7
B $D2D7,4,4
t $D2DB Message at D2DB
T $D2DB,3,3
b $D2DE Data block at D2DE
B $D2DE,4,4
t $D2E2 Message at D2E2
T $D2E2,3,3
b $D2E5 Data block at D2E5
B $D2E5,4,4
t $D2E9 Message at D2E9
T $D2E9,3,3
b $D2EC Data block at D2EC
B $D2EC,4,4
t $D2F0 Message at D2F0
T $D2F0,3,3
b $D2F3 Data block at D2F3
B $D2F3,4,4
t $D2F7 Message at D2F7
T $D2F7,3,3
b $D2FA Data block at D2FA
B $D2FA,4,4
t $D2FE Message at D2FE
T $D2FE,3,3
b $D301 Data block at D301
B $D301,4,4
t $D305 Message at D305
T $D305,3,3
b $D308 Data block at D308
B $D308,4,4
t $D30C Message at D30C
T $D30C,3,3
b $D30F Data block at D30F
B $D30F,4,4
t $D313 Message at D313
T $D313,3,3
b $D316 Data block at D316
B $D316,4,4
t $D31A Message at D31A
T $D31A,3,3
b $D31D Data block at D31D
B $D31D,4,4
t $D321 Message at D321
T $D321,3,3
b $D324 Data block at D324
B $D324,4,4
t $D328 Message at D328
T $D328,3,3
b $D32B Data block at D32B
B $D32B,4,4
t $D32F Message at D32F
T $D32F,3,3
b $D332 Data block at D332
B $D332,4,4
t $D336 Message at D336
T $D336,3,3
b $D339 Data block at D339
B $D339,4,4
t $D33D Message at D33D
T $D33D,3,3
b $D340 Data block at D340
B $D340,21,8*2,5
t $D355 Message at D355
T $D355,3,3
b $D358 Data block at D358
B $D358,1,1
t $D359 Message at D359
T $D359,3,3
b $D35C Data block at D35C
B $D35C,7,7
t $D363 Message at D363
T $D363,3,3
b $D366 Data block at D366
B $D366,18,8*2,2
t $D378 Message at D378
T $D378,3,3
b $D37B Data block at D37B
B $D37B,6,6
t $D381 Message at D381
T $D381,4,4
b $D385 Data block at D385
B $D385,2,2
t $D387 Message at D387
T $D387,3,3
b $D38A Data block at D38A
B $D38A,1,1
t $D38B Message at D38B
T $D38B,4,4
b $D38F Data block at D38F
B $D38F,7,7
t $D396 Message at D396
T $D396,3,3
b $D399 Data block at D399
B $D399,1,1
t $D39A Message at D39A
T $D39A,4,4
b $D39E Data block at D39E
B $D39E,1,1
t $D39F Message at D39F
T $D39F,3,3
b $D3A2 Data block at D3A2
B $D3A2,1,1
t $D3A3 Message at D3A3
T $D3A3,4,4
b $D3A7 Data block at D3A7
B $D3A7,1,1
t $D3A8 Message at D3A8
T $D3A8,4,4
b $D3AC Data block at D3AC
B $D3AC,1,1
t $D3AD Message at D3AD
T $D3AD,4,4
b $D3B1 Data block at D3B1
B $D3B1,8,8
t $D3B9 Message at D3B9
T $D3B9,3,3
b $D3BC Data block at D3BC
B $D3BC,1,1
t $D3BD Message at D3BD
T $D3BD,3,3
b $D3C0 Data block at D3C0
B $D3C0,44,8*5,4
t $D3EC Message at D3EC
T $D3EC,3,3
b $D3EF Data block at D3EF
B $D3EF,3,3
t $D3F2 Message at D3F2
T $D3F2,3,3
b $D3F5 Data block at D3F5
B $D3F5,3,3
t $D3F8 Message at D3F8
T $D3F8,3,3
b $D3FB Data block at D3FB
B $D3FB,27,8*3,3
t $D416 Message at D416
T $D416,3,3
b $D419 Data block at D419
B $D419,3,3
t $D41C Message at D41C
T $D41C,3,3
b $D41F Data block at D41F
B $D41F,33,8*4,1
t $D440 Message at D440
T $D440,3,3
b $D443 Data block at D443
B $D443,3,3
t $D446 Message at D446
T $D446,3,3
b $D449 Data block at D449
B $D449,3,3
t $D44C Message at D44C
T $D44C,3,3
b $D44F Data block at D44F
B $D44F,3,3
t $D452 Message at D452
T $D452,3,3
b $D455 Data block at D455
B $D455,2,2
t $D457 Message at D457
T $D457,3,3
b $D45A Data block at D45A
B $D45A,16,8
t $D46A Message at D46A
T $D46A,3,3
b $D46D Data block at D46D
B $D46D,3,3
t $D470 Message at D470
T $D470,3,3
b $D473 Data block at D473
B $D473,3,3
t $D476 Message at D476
T $D476,3,3
b $D479 Data block at D479
B $D479,2,2
t $D47B Message at D47B
T $D47B,4,4
b $D47F Data block at D47F
B $D47F,103,8*12,7
t $D4E6 Message at D4E6
T $D4E6,6,6
b $D4EC Data block at D4EC
B $D4EC,1,1
t $D4ED Message at D4ED
T $D4ED,4,4
b $D4F1 Data block at D4F1
B $D4F1,33,8*4,1
t $D512 Message at D512
T $D512,3,3
b $D515 Data block at D515
B $D515,3,3
t $D518 Message at D518
T $D518,3,3
b $D51B Data block at D51B
B $D51B,87,8*10,7
t $D572 Message at D572
T $D572,3,3
b $D575 Data block at D575
B $D575,3,3
t $D578 Message at D578
T $D578,3,3
b $D57B Data block at D57B
B $D57B,3,3
t $D57E Message at D57E
T $D57E,3,3
b $D581 Data block at D581
B $D581,127,8*15,7
b $D600 MAP FOREGROND TILES
B $D600,2152,17*6,2,8
c $DE68 Routine at DE68
D $DE68 Used by the routine at #R$B5C7.
C $DE6A,26 #R$DE84 Data block $DE84
b $DE84 Data block at DE84
W $DE84,40,16*2,8 Data used by #R$DE68 routine
B $DEAC,21,8*2,5
c $DEC1 Routine at DEC1
D $DEC1 Used by the routines at #R$DF37, #R$E097 and #R$E2A7.
C $DECD,3 Put String (HL) to (DE) Screen Position
t $DEE6 Message at DEE6
T $DEE6,81,66,15
c $DF37 Routine at DF37
D $DF37 Used by the routine at #R$BC0D.
N $DF60 This entry point is used by the routine at #R$E097.
C $DF6B,3 Put String (HL) to (DE) Screen Position
C $DF73,3 Put String (HL) to (DE) Screen Position
C $DF7B,3 Put String (HL) to (DE) Screen Position
C $DF83,3 Put String (HL) to (DE) Screen Position
C $DF8B,3 Put String (HL) to (DE) Screen Position
N $DFCC This entry point is used by the routines at #R$DFF1 and #R$E024.
c $DFD4 Routine at DFD4
D $DFD4 Used by the routines at #R$DF37, #R$E04D, #R$E097 and #R$E2A7.
c $DFDB Routine at DFDB
D $DFDB Used by the routines at #R$DF37, #R$DFF1, #R$E004 and #R$E015.
c $DFE6 Routine at DFE6
D $DFE6 Used by the routines at #R$DFF1, #R$E004, #R$E015, #R$E097 and #R$E2A7.
c $DFF1 Routine at DFF1
D $DFF1 Used by the routine at #R$DF37.
c $E004 Routine at E004
D $E004 Used by the routine at #R$DF37.
c $E015 Routine at E015
D $E015 Used by the routine at #R$DF37.
c $E024 Routine at E024
D $E024 Used by the routine at #R$E004.
b $E039 Data block at E039
B $E039,20,8*2,4
c $E04D Routine at E04D
D $E04D Used by the routines at #R$DF37, #R$E097 and #R$E2A7.
t $E05B Message at E05B
T $E05B,60,60
c $E097 Routine at E097
D $E097 Used by the routine at #R$DF37.
C $E0A5,3 Put String (HL) to (DE) Screen Position
C $E0AD,3 Put String (HL) to (DE) Screen Position
C $E0B5,3 Put String (HL) to (DE) Screen Position
C $E0BD,3 Put String (HL) to (DE) Screen Position
C $E0C5,3 Put String (HL) to (DE) Screen Position
C $E0CD,3 Put String (HL) to (DE) Screen Position
C $E0D5,3 Put String (HL) to (DE) Screen Position
C $E0DD,3 Put String (HL) to (DE) Screen Position
C $E145,3 Put String (HL) to (DE) Screen Position
b $E17C Data block at E17C
B $E17C,112,8
t $E1EC Message at E1EC
T $E1EC,1,1
t $E1ED ENTER SKILL LEVEL
T $E1ED,23,23
t $E204 You mission will be...
T $E204,19,19
t $E217 Extremely easy
T $E217,14,14
b $E225 Data block at E225
B $E225,2,2
t $E227 Very Easy
T $E227,14,14
b $E235 Data block at E235
B $E235,2,2
t $E237 Easy
T $E237,14,14
b $E245 Data block at E245
B $E245,2,2
t $E247 Slightly Easy
T $E247,14,14
b $E255 Data block at E255
B $E255,2,2
t $E257 Moderate
T $E257,14,14
b $E265 Data block at E265
B $E265,2,2
t $E267 Slightly hard
T $E267,14,14
b $E275 Data block at E275
B $E275,2,2
t $E277 Hard
T $E277,14,14
b $E285 Data block at E285
B $E285,2,2
t $E287 Very Hard
T $E287,14,14
b $E295 Data block at E295
B $E295,2,2
t $E297 Extremely hard
T $E297,14,14
b $E2A5 Data block at E2A5
B $E2A5,2,2
c $E2A7 Routine at E2A7
D $E2A7 Used by the routine at #R$DF37.
C $E2B5,3 Put String (HL) to (DE) Screen Position
C $E2BD,3 Put String (HL) to (DE) Screen Position
C $E2E7,3 Put String (HL) to (DE) Screen Position
C $E302,3 Put String (HL) to (DE) Screen Position
C $E30A,3 Put String (HL) to (DE) Screen Position
C $E322,3 Put String (HL) to (DE) Screen Position
t $E388 Message at E388
T $E388,3,3
b $E38B Data block at E38B
B $E38B,3,3
t $E38E Message at E38E
T $E38E,5,5
b $E393 Data block at E393
B $E393,5,5
t $E398 Message at E398
T $E398,3,3
b $E39B Data block at E39B
B $E39B,7,7
t $E3A2 Message at E3A2
T $E3A2,5,5
b $E3A7 Data block at E3A7
B $E3A7,5,5
t $E3AC Message at E3AC
T $E3AC,3,3
b $E3AF Data block at E3AF
B $E3AF,7,7
t $E3B6 Message at E3B6
T $E3B6,5,5
b $E3BB Data block at E3BB
B $E3BB,5,5
t $E3C0 Message at E3C0
T $E3C0,3,3
b $E3C3 Data block at E3C3
B $E3C3,8,8
t $E3CB Message at E3CB
T $E3CB,4,4
b $E3CF Data block at E3CF
B $E3CF,5,5
t $E3D4 Message at E3D4
T $E3D4,4,4
b $E3D8 Data block at E3D8
B $E3D8,7,7
t $E3DF Message at E3DF
T $E3DF,4,4
b $E3E3 Data block at E3E3
B $E3E3,5,5
t $E3E8 Message at E3E8
T $E3E8,4,4
b $E3EC Data block at E3EC
B $E3EC,7,7
t $E3F3 Message at E3F3
T $E3F3,4,4
b $E3F7 Data block at E3F7
B $E3F7,5,5
t $E3FC Message at E3FC
T $E3FC,4,4
b $E400 Data block at E400
B $E400,7,7
t $E407 Message at E407
T $E407,4,4
b $E40B Data block at E40B
B $E40B,5,5
t $E410 Message at E410
T $E410,3,3
b $E413 Data block at E413
B $E413,8,8
t $E41B Message at E41B
T $E41B,4,4
b $E41F Data block at E41F
B $E41F,5,5
t $E424 Message at E424
T $E424,3,3
b $E427 Data block at E427
B $E427,8,8
t $E42F Message at E42F
T $E42F,4,4
b $E433 Data block at E433
B $E433,5,5
t $E438 Message at E438
T $E438,3,3
b $E43B Data block at E43B
B $E43B,5,5
c $E440 Routine at E440
D $E440 Used by the routines at #R$DF37, #R$E04D, #R$E097 and #R$E2A7.
b $E494 Data block at E494
B $E494,620,8*77,4
b $E700 Game Sprites
D $E700 #BWTILES$D700,0 #BWTILES$D700,1
D $E700 #BWTILES$C700,0 #BWTILES$C700,1
D $E700 #BWTILES$B700,0 #BWTILES$B700,1
D $E700 #BWTILES$A700,0 #BWTILES$A700,1
D $E700 #BWTILES$9700,0 #BWTILES$9700,1
D $E700 #UDGTABLE { #FOR$D64E,$D700,17//n/#UDG(n,7,5)/ | // } TABLE#
B $E700,4096,8 #BWTILES$E700,0 #BWTILES$E700,1
b $F700 Tiles
B $F700,531,8*66,3 #STILES$f700
c $F913 Routine at F913
D $F913 Used by the routine at #R$F9E7.
c $F968 Routine at F968
D $F968 Used by the routine at #R$AEF0.
c $F973 Routine at F973
D $F973 Used by the routine at #R$B5C7.
b $F98F Data block at F98F
B $F98F,18,8*2,2
c $F9A1 Routine at F9A1
D $F9A1 Used by the routines at #R$B596, #R$FA28 and #R$FA31.
c $F9A9 Sound "Bdyeesch!"
@ $F9A9 label=SoundProc
C $F9B8,1 Return
c $F9B9 Routine at F9B9
D $F9B9 Used by the routine at #R$BEB3.
b $F9E4 Data block at F9E4
B $F9E4,3,3
c $F9E7 Set Game Font Directly to Routine
c $F9F9 Routine at F9F9
D $F9F9 Used by the routine at #R$BD37.
b $FA05 Data block at FA05
B $FA05,12,8,4
c $FA11 Routine at FA11
D $FA11 Used by the routine at #R$F9F9.
c $FA28 Routine at FA28
D $FA28 Used by the routine at #R$BAD5.
c $FA31 Routine at FA31
D $FA31 Used by the routine at #R$A434.
b $FA3A Data block at FA3A
B $FA3A,1478,8*184,6
