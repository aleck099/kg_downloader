#!/usr/bin/env python3

def takelink():
    symbol = 'stream.kg.qq.com/s'
    # take input data (returned by grep)
    inputstr = input()

    pos = inputstr.find(symbol)
    if pos == -1:
        print("Error: symbol not found!")
        return 1
    # fix the position of the link
    pos_begin = inputstr.rfind('\"', 0, pos)
    pos_end = inputstr.find('\"', pos)
    result = inputstr[pos_begin + 1:pos_end]
    print(result)
    return 0

if __name__ == '__main__':
    quit(takelink())
