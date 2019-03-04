#-*- coding:utf-8 -*-
import PIL
from PIL import Image
from PIL import ImageDraw
from PIL import ImageFont

import osp

"""
在单张图片上添加文字内容
image_filename 待处理的图片
new_filename 定义生成新文件的文件名
font_set 定义添加内容的文字属性
"""
def one_image_add_txt(image_filename,new_filename,font_set):   
    img = Image.open(image_filename)
    # 可以指定生成图片的大小
    # img.resize((375,667),Image.ANTIALIAS)
    draw = ImageDraw.Draw(img)
    # 设置字体类型和大小
    font = ImageFont.truetype(font_set['type'],font_set['size'])
    # 设置文字的位置、内容、颜色、字体
    draw.text(font_set['location'],font_set['content'],font_set['color'],font=font)
    # 保存图片，要设置图片质量，否则默认是75
    img.save(new_filename,'JPEG',quality = 95)

"""
在单张图片上添加png图片（约泰logo）
image_filename 待处理的图片
png_filename 待处理的png图片
new_filename 定义生成新文件的文件名
"""
def one_image_add_png(image_filename,png_filename,new_filename):
    img = Image.open(image_filename)
    png = Image.open(png_filename)
    # 定义png的尺寸大小
    # png会根据image的大小进行等比例缩放，初始设定png占image约0.2比例
    png_w = int(0.2 * img.width)
    png_h = int(png_w * png.height / png.width)
    png = png.resize((png_w,png_h),Image.ANTIALIAS)
    # 分离颜色通道，RGBA模式，主要是为了解决透明的问题
    r,g,b,a = png.split()   
    # 设置png图片放在右下角，边距设置为png长宽的0.1（也可以设置绝对值，如20px）
    png_x = img.width - png.width - int(png.width * 0.1)
    png_y = img.height - png.height - int(png.height * 0.1)
    # 将png粘贴在img上，设置其位置、mask值
    img.paste(png,(png_x,png_y),mask=a)
    # 保存图片，要设置图片质量，否则默认是75
    img.save(new_filename,quality = 95)

"""
批量在图片上添加png图片（约泰logo）
image_path 待处理的图片所在的文件夹路径（相对和绝对都可以）
png_filename 待处理的png图片
save_path 定义生成新图片保存的文件夹路径（相对和绝对都可以）
"""
def some_image_add_png(image_path,png_filename,save_path):
    x = 0
    for filename in os.listdir(image_path):
        if filename.endswith('jpg') or filename.endswith('png'):
            x = x + 1
            one_image_add_png(image_path+'\\'+filename,png_filename,save_path+'{}.jpg'.format(x))

"""
遍历文件夹下所有图片，批量在图片上添加png图片（约泰logo）
image_path 待处理的图片所在的文件夹路径
png_filename 待处理的png图片
save_path 定义生成新图片保存的文件夹路径
"""
def all_image_add_png(image_path,png_filename,save_path):
    x = 0
    all = os.walk(image_path)
    # 遍历出当前文件夹及其子文件夹的路径、所有子文件夹名称、所有文件的list
    for path,dir,filelist in all:
        for filename in filelist:
            if filename.endswith('jpg') or filename.endswith('png'):
                x = x + 1
                one_image_add_png(path+'\\'+filename,png_filename,save_path+'{}.jpg'.format(x))

if __name__ == '__main__':
    font_set = {}
    font_set['type'] = 'arial.ttf'
    font_set['size'] = 46
    font_set['content'] = '12345678'
    font_set['color'] = '#00BBFF'
    font_set['location'] = (82,211)
    # one_image_add_txt('old.jpg','new.jpg',font_set)
    # one_image_add_png(r'./photo/11.png','logo.png','test.png')
    some_image_add_png(r'C:\Users\zhaisiying\Desktop\thailand','logo.png','./test/')
    # all_image_add_png(r'C:\Users\zhaisiying\Desktop\thailand','logo.png','./test/')
    