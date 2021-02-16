#!/usr/local/bin/python3
# Paul Evans (paul.evans@aya.yale.edu)
# February 2021
import re

''' inspect tags or their contents '''
def main():
    file = open('./sentences.xml', 'r').read()
    # matches = re.findall('<cit>(.+?)</cit>', file, flags=re.DOTALL)
    # matches = re.findall('<lb.+?\>', file, flags=re.DOTALL)
    # matches = re.findall('<name(.+?)>.+?</name>', file, flags=re.DOTALL)
    # matches = re.findall('<pb.+?/>', file, flags=re.DOTALL)
    matches = re.findall('<ref.+?>.+?</ref>', file, flags=re.DOTALL)
    for match in matches:
        print(match)

if __name__ == '__main__':
    main()

