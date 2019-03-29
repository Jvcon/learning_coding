import requests


#hea是我们自己构造的一个字典，里面保存了user-agent。
#让目标网站误以为本程序是浏览器，并非爬虫。
#从网站的Requests Header中获取。【审查元素】
hea = {'User-Agent':'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.36'}
html = requests.get('http://www.ahaoto.com',headers = hea)

html.encoding = "gb2312"

print (html.text)