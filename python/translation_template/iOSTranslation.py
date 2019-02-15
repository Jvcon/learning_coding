import json
import csv

#list转csv
###csv_filename 定义生成新csv文件的文件名
###new_lines 将内容转换并存入的list
#要保证传入的data有key和value
def list_to_csv(csv_filename,new_lines):
    with open(csv_filename,'w',newline='',encoding='utf-8') as csv_file:
        writer = csv.writer(csv_file)
        for i in new_lines:
            writer.writerow([i['key'],i['value']])

#csv转list
###csv_filename 导入csv文件的文件名
def csv_to_list(csv_filename):
    with open(csv_filename, 'r',encoding='UTF-8') as f:
      lines = csv.reader(f)
      return list(lines)

#iOS端：strings转csv
#特征： 等号,双引号，分号
#example: "order_editInfo_edit" = "Before modification";
###string_filename 源文件的文件名
###csv_filename 定义生成新csv文件的文件名
def ios_string_to_csv(string_filename,csv_filename):
    lines = read_txt(string_filename)
    new_lines = []
    for line in lines:
        kv = line.split('=')
        data = {}
        if len(kv) == 2:
            k = kv[0].replace('"', '').replace(' ','')
            v = kv[-1].replace('"', '').replace(';', '')
            data['key'] = k
            data['value'] = v
            new_lines.append(data)
    # print(new_lines)
    list_to_csv(csv_filename,new_lines)

#iOS端：csv转strings
###string_filename 导入txt文件的文件名
###csv_filename 导入csv文件的文件名
###new_file 定义生成新文件的文件名
def ios_csv_to_string(string_filename,csv_filename,new_file):
    origin_list = read_txt(string_filename)
    thai_list = csv_to_list(csv_filename)
    new_lines = []
    for o in origin_list:
        old = o.split('=')
        if len(old) == 2:
            n = 0
            for new in thai_list:
                key = old[0].replace('"', '').replace(' ','')
                if key == new[0].replace(' ',''):  
                    old[-1] = '"{0}";'.format(new[-1])       
                    new_content = '='.join(old)   
                    new_lines.append(new_content)
                    break
                else:
                    n = n + 1
                    l = len(thai_list)
                    if n >= l:
                        new_lines.append(o)
                        break                
        else:
            new_lines.append(o)
    list_to_txt(new_file, new_lines)


#读取文件内容，并按照一行分隔，返回list
###file 文件名
def read_txt(file):
    with open(file,'r',encoding='utf-8') as f:
        return f.read().splitlines()

#将list保存成文件
###new_filename 定义生成新文件的文件名
###list 内容list
def list_to_txt(new_filename, list):
    with open(new_filename, 'w',encoding='utf-8') as f:
        for i in list:
            f.write('{0}\n'.format(i))


if __name__ == '__main__':   
    #iOS端：strings转csv
    # ios_string_to_csv('iOS-tpgame-0807.strings','test.csv')
    
    #iOS端：csv转strings
    ios_csv_to_string('iOS-tpgame-0807.strings','test.csv','new_file.strings')
