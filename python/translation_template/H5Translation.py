import json
import csv

#H5端：json转csv
#特征： 双引号，冒号，逗号
#example: "app.components.Account.enterPwd": "Please enter the phone",
###json_filename 源文件的文件名
###csv_filename 定义生成新csv文件的文件名
def h5_json_to_csv(json_filename,csv_filename):
    new_lines = []
    with open(json_filename, 'r') as f:
        data = json.load(f)
        # print(data)
        for k, v in data.items():
            line = {}
            line['key'] = k
            line['value'] = v
            new_lines.append(line)
    list_to_csv(csv_filename,new_lines)

#csv转list
###csv_filename 导入csv文件的文件名
def csv_to_list(csv_filename):
    with open(csv_filename, 'r',encoding='UTF-8') as f:
      lines = csv.reader(f)
      return list(lines)


#list转csv
###csv_filename 定义生成新csv文件的文件名
###data 将内容转换并存入的list
#要保证传入的data有key和value
def list_to_csv(csv_filename,data):
    with open(csv_filename,'w',newline='',encoding='utf-8') as csv_file:
        writer = csv.writer(csv_file)
        for i in data:
            writer.writerow([i['key'],i['value']])

#将list保存成文件
###new_filename 定义生成新文件的文件名
###list 内容list
def list_to_txt(new_filename, list):
    with open(new_filename, 'w',encoding='utf-8') as f:
        for i in list:
            f.write('{0}\n'.format(i))

#读取文件内容，并按照一行分隔，返回list
###file 文件名
def read_txt(file):
    with open(file,'r',encoding='utf-8') as f:
        return f.read().splitlines()

#H5端：csv转json
###json_filename 导入json文件的文件名
###csv_filename 导入csv文件的文件名
###new_file 定义生成新文件的文件名
def h5_csv_to_json(json_filename,csv_filename,new_file):
    json_list = read_txt(json_filename)
    csv_list = csv_to_list(csv_filename)
    
    new_lines = []
    for j in json_list:
        json = j.split(':')
        if len(json) == 2:
            for csv in csv_list:
                key = json[0].replace('"','').replace(',','').replace(' ','')
                if key == csv[0].replace(' ',''):
                    json[-1] = '"{0}",'.format(csv[-1])
                    new_line = ':'.join(json)
                    new_lines.append(new_line)
        else:
            new_lines.append(j)
    list_to_txt(new_file, new_lines)


if __name__=='__main__':
    #H5端：json转csv
    # h5_json_to_csv('H5-Yothai-English-0806.json','H5-Yothai-English-0806.csv')

    #H5端：csv转json
    h5_csv_to_json('H5-Yothai-English-0806.json','H5-Yothai-thai-0806.csv','thai.json')
