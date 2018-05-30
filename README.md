NEUBachelorThesis
=================

东北大学本科毕业设计论文模板

工作环境
--------
TexLive 2017  
VSCode+LaTeX Workshop(Alternative)

编译指令
------------
    xelatex main.tex  
    bibtex  main.aux  
    xelatex main.tex  
    xelatex main.tex  

如果用的是VSCode编辑器+LaTex Workshop插件,可以直接将[vscode_setting.json](vscode_setting.json)的文件花括号中的内容添加到用户设置（Ctrl+,）中,这样在每次保存tex文件后，会自动执行以上编译步骤。或通过（Ctrl+Alt+B）快捷键手动编译。

#### [点击此处预览](main.pdf)

![Preview](figures/main.jpg)

使用说明
-------
* 插入公式：\insertmath{公式}  
* 插入图片：\insertpic{图片路径}{图片标题}  
* 插入任务书：任务书是直接以pdf的形式加载到latex中编译的，我们只需要将任务书在word中填好后，转成pdf文件，命名为task.pdf后放入到data目录中即可。