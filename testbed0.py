#!/usr/local/bin/python3
#
# Paul Evans (paul.evans@aya.yale.edu)
#  8 February 2021
#
import xml.etree.ElementTree as ET

def main():
    # print('Humanum genus duobus regitur')
    tree = ET.parse('./sentences.xml')
    root = tree.getroot()
    # teiHeader = root[0]
    text = root[1]
    body = text[0]
    for child in body:
        for subchild in child:
            print(subchild.text)

if __name__ == '__main__':
    main()
