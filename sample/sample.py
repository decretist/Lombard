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
    quote_tag = '{http://www.tei-c.org/ns/1.0}quote'
    for div in body:
        # body contains 921 div tags
        for child in div:
            # div contains only head and p tags
            if child.tag == head_tag:
                # child.attrib is a dictionary
                # <head type="questionTitle"> starts at 1.46.4.
                # print(child.attrib.get('type'))
                pass
            elif child.tag == p_tag:
                print(child.text)
                for subchild in child:
                    if subchild.tag == quote_tag:
                        # uncomment to include quotes:
                        print(subchild.text)
                        # pass

if __name__ == '__main__':
    main()

