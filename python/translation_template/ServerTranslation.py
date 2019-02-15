import json
import csv

#Server端：php转csv
#特征： =>,单引号，逗号
#example: 'system_message' => 'Notification',
###txt_filename 源文件的文件名
###csv_filename 定义生成新csv文件的文件名
def server_php_to_csv(txt_filename,csv_filename):
    content = read_txt(txt_filename)
    new_lines = []
    for line in content:
        kv = line.split('=>')
        data = {}
        if len(kv) == 2:
            k = kv[0].replace('\'','')
            v = kv[-1].replace('\'','').replace(',','')
            if k.strip() == '' or v.strip() == '':#为空处理
                continue
            else:
                data['key'] = k
                data['value'] = v
                new_lines.append(data)
        else:
            continue
    list_to_csv(csv_filename,new_lines)

#读取文件内容，并按照一行分隔，返回list
###file 文件名
def read_txt(file):
    with open(file,'r',encoding='utf-8') as f:
        return f.read().splitlines()

#list转csv
###csv_filename 定义生成新csv文件的文件名
###data 将内容转换并存入的list
#要保证传入的data有key和value
def list_to_csv(csv_filename,data):
    with open(csv_filename,'w',newline='',encoding='utf-8') as csv_file:
        writer = csv.writer(csv_file)
        for i in data:
            writer.writerow([i['key'],i['value']])
       
#csv转list
###csv_filename 导入csv文件的文件名
def csv_to_list(csv_filename):
    with open(csv_filename, 'r',encoding='UTF-8') as f:
      lines = csv.reader(f)
      return list(lines)

#将list保存成文件
###new_filename 定义生成新文件的文件名
###list 内容list
def list_to_txt(new_filename, list):
    with open(new_filename, 'w',encoding='utf-8') as f:
        for i in list:
            f.write('{0}\n'.format(i))

#Server端：csv转php
###txt_filename 导入txt文件的文件名
###csv_filename 导入csv文件的文件名
###new_file 定义生成新文件的文件名
def server_csv_to_php(txt_filename,csv_filename,new_file):
    txt_list = read_txt(txt_filename)
    csv_list = csv_to_list(csv_filename)
    new_lines = []
    for t in txt_list:
        txt = t.split('=>')
        if len(txt) == 2:
            
            for new in csv_list:
                key = txt[0].replace('\'', '').replace(' ','')
                if key == new[0].replace(' ',''):  
                    txt[-1] = '"{0}",'.format(new[-1])       
                    new_content = ':'.join(txt)   
                    new_lines.append(new_content)
        else:
            new_lines.append(t)
    list_to_txt(new_file, new_lines)


if __name__=='__main__':
    #Server端：php转csv
    # server_php_to_csv(txt_filename,csv_filename)

    #Server端：csv转php
    # server_csv_to_php('server-Happy-English-v1.2.1-0705.php','server-Happy-thai-v1.2.1-0705.csv','test.php')