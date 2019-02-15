#coding: utf-8
import json
import csv
import xml.dom.minidom
import xml.etree.ElementTree as ET


#Android端：xml转csv
#特征： xml
#example: <string name="btn_modify_info">Modify info</string>
###xml_filename 源文件的文件名
###csv_filename 定义生成新csv文件的文件名
def android_xml_to_csv(xml_filename,csv_filename):
    origin_tree = ET.ElementTree(file=xml_filename)
    origin_root = origin_tree.getroot()
    new_lines = []
    for node in origin_root:
        for child in node.getchildren():
            print(child.text)
            line = {}
            line['key'] = node.attrib['name']
            line['value'] = node.text
        new_lines.append(line)
    list_to_csv(csv_filename, new_lines)

#Android端：csv转xml
###xml_filename 导入xml文件的文件名
###csv_filename 导入csv文件的文件名
###new_file 定义生成新文件的文件名
def android_csv_to_xml(xml_filename,csv_filename,new_file):
    origin_tree = ET.ElementTree(file=xml_filename)
    origin_root = origin_tree.getroot()
    thai_list = csv_to_list(csv_filename)

    for node in origin_root:
        for i in thai_list:
            if(node.text == i[0]):
                node.text = i[-1]

    tree = ET.ElementTree(origin_root)
    with open(new_file,'wb') as f:
        tree.write(f,encoding='utf-8')


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
    with open(csv_filename, 'r',encoding='utf-8') as f:
      lines = csv.reader(f)
      print(lines)
      return list(lines)


if __name__ == '__main__':
    #Android端：xml转csv
    # android_xml_to_csv('Android-English-array-0817.xml','Android-English-array-0817.csv')

    #Android端：csv转xml
    android_csv_to_xml('strings1.xml','en1.csv','en-translate.xml')

