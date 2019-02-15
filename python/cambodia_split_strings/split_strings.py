#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import csv
import json

with open('wiki_input.csv', 'r', encoding='UTF-8') as f:
    f_csv = csv.reader(f)
    headers = next(f_csv)
    with open ('cambodia.json','w', encoding='utf-8') as f:
        L=[]
        for row in f_csv:
            d = {'name': 'abc', 'name_kh': 'abc', 'name_en': 'abc', 'pid': '4975', 'level':'1'}
            d['name'] = row[0]
            d['name_kh'] = row[1]
            d['name_en'] = row[2]
            L.append(d)
        L.sort(key=lambda k: (k.get('time', 0)))
        print(L)
        json_str = json.dumps(L, indent=4, ensure_ascii=False)
        f.write(json_str)
