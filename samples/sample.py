#!/usr/local/bin/python3
#
# Paul Evans (paul.evans@aya.yale.edu)
# March 2021
#
import argparse
import xml.etree.ElementTree as ET

''' generate sample from edited TEI text '''
def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('-q', '--quotes', action='store_true')
    args = parser.parse_args()
    if args.quotes:
        quotes = True
        output_filename = './quoteful_sample.txt'
    else:
        quotes = False
        output_filename = './quoteless_sample.txt'
    output_file = open(output_filename, 'w')
    #
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
                # output_file.write(child.attrib.get('type') + '\n')
                pass
            elif child.tag == p_tag:
                output_file.write(child.text + '\n')
                if quotes:
                    for subchild in child:
                        if subchild.tag == quote_tag:
                            output_file.write(subchild.text + '\n')

if __name__ == '__main__':
    main()

