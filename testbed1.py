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
    #
    div_tag = '{http://www.tei-c.org/ns/1.0}div'
    head_tag = '{http://www.tei-c.org/ns/1.0}head'
    p_tag = '{http://www.tei-c.org/ns/1.0}p'
    #
    # atomic childless tags
    atoms = [
        '{http://www.tei-c.org/ns/1.0}bibl',
        '{http://www.tei-c.org/ns/1.0}cb',
        '{http://www.tei-c.org/ns/1.0}lb',
        '{http://www.tei-c.org/ns/1.0}mentioned',
        '{http://www.tei-c.org/ns/1.0}name',
        '{http://www.tei-c.org/ns/1.0}pb',
        '{http://www.tei-c.org/ns/1.0}sic',
        '{http://www.tei-c.org/ns/1.0}span',
        '{http://www.tei-c.org/ns/1.0}sup',
    ]
    # non-atomic tags with children
    # '{http://www.tei-c.org/ns/1.0}cit'
    # '{http://www.tei-c.org/ns/1.0}quote'
    # '{http://www.tei-c.org/ns/1.0}ref'
    # '{http://www.tei-c.org/ns/1.0}title'
    # '{http://www.tei-c.org/ns/1.0}unclear'

    for div in body:
        # body contains 921 div tags
        for child in div:
            # div contains only head and p tags
            if child.tag == head_tag:
                pass
            elif child.tag == p_tag:
                print(child.text)
                for subchild in child:
                    for atom in atoms:
                        if subchild.tag == atom:
                            for subsubchild in subchild:
                                print(subsubchild.tag)

if __name__ == '__main__':
    main()

