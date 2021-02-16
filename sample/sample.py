#!/usr/local/bin/python3
#
# Paul Evans (paul.evans@aya.yale.edu)
# February 2021
#
import xml.etree.ElementTree as ET

''' generate sample from edited TEI text '''
def main():
    tree = ET.parse('./edited.xml')
    root = tree.getroot()
    # teiHeader = root[0]
    text = root[1]
    body = text[0]
    head_tag = '{http://www.tei-c.org/ns/1.0}head'
    p_tag = '{http://www.tei-c.org/ns/1.0}p'
    for div in body:
        # body contains 921 div tags
        for child in div:
            # div contains only head and p tags
            if child.tag == head_tag:
                pass
            elif child.tag == p_tag:
                print(child.text)

if __name__ == '__main__':
    main()

