# This is a sample Python script.

# Press Shift+F10 to execute it or replace it with your code.
# Press Double Shift to search everywhere for classes, files, tool windows, actions, and settings.
import sys

from skoolkit import sna2skool, skool2html


def print_hi(name):
    # Use a breakpoint in the code line below to debug your script.
    print(f'Hi, {name}')  # Press Ctrl+F8 to toggle the breakpoint.


# Press the green button in the gutter to run the script.
if __name__ == '__main__':

    skool_file_name = './saboteur1.skool'

    original_stdout = sys.stdout
    with open(skool_file_name, 'w') as file1:
        sys.stdout = file1
        sna2skool.main(('-c', 'saboteur1.ctl', '-H', './game_data/saboteur1.sna', ))
    sys.stdout = original_stdout

    skool2html.main(('-o', skool_file_name, './saboteur1.ref', ))


