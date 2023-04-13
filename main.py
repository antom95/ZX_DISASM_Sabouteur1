import sys
from skoolkit import sna2skool, skool2html

if __name__ == '__main__':

    skool_file_name = './saboteur1.skool'

    original_stdout = sys.stdout
    with open(skool_file_name, 'w') as file1:
        sys.stdout = file1
        sna2skool.main(('-c', 'saboteur1.ctl', '-H', './game_data/saboteur1.sna', ))
    sys.stdout = original_stdout

    skool2html.main(('-o', skool_file_name, './saboteur1.ref', ))


