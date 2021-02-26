#!/usr/local/bin/python3
# Paul Evans (paul.evans@aya.yale.edu)
# February 2021
import re
import string

def main():
    # open and read raw sample files
    text = open('quoteful_sample.txt', 'r').read()
    # text = open('quoteless_sample.txt', 'r').read()
    # remove punctuation and split file on whitespace (older way)
    # text = re.sub('['+string.punctuation+']', '', text)
    # words = text.split()
    # newer way to do the same thing
    words = [word for word in re.split('\W', text) if word != '']
    # split into books:
    tmp = ' '.join(words)
    print(tmp)
    # book1 = re.match('Horum igitur Deo.*?quem Deus non voluit', tmp)
    # f = open('./Lombard1.txt', 'w')
    # f.write(book1.group() + '\n')
    # f.close

if __name__ == '__main__':
    main()
