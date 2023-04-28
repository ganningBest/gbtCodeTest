"""
安装bs4
这种方法适用于结构和内容相同，但格式和空格可能不同的文件。

"""

from bs4 import BeautifulSoup

def compare_html(file1, file2):
    with open(file1, 'r', encoding='utf-8') as f1:
        content1 = f1.read()

    with open(file2, 'r', encoding='utf-8') as f2:
        content2 = f2.read()

    soup1 = BeautifulSoup(content1, 'html.parser')
    soup2 = BeautifulSoup(content2, 'html.parser')

    return soup1.prettify() == soup2.prettify()

file1 = 'path/to/html1.html'
file2 = 'path/to/html2.html'
result = compare_html(file1, file2)
print(result)