#!/usr/local/bin/python3
#
# Paul Evans (paul.evans@aya.yale.edu)
# February 2021
#
import xml.etree.ElementTree as ET

''' tree-writing example '''
def main():
    tree = ET.parse('./sentences.xml')
    root = tree.getroot()
    # edit tree here
    tree.write(open('./save.xml', 'w'), encoding='unicode')

if __name__ == '__main__':
    main()

