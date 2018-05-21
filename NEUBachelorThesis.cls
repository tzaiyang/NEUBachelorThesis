\ProvidesClass{NEUBachelorThesis}
\LoadClass[UTF8,oneside,a4paper]{ctexart}


\def \@school {}
\def \@classnum {}
\def \@stunum {}
\def \@instructor {}
\newcommand{\school}[1]{\def \@school {#1}}
\newcommand{\classnum}[1]{\def \@classnum {#1}}
\newcommand{\stunum}[1]{\def \@stunum {#1}}
\newcommand{\instructor}[1]{\def \@instructor {#1}}


\RequirePackage[top=3cm,bottom=2cm,left=2cm,right=2cm]{geometry} % 页边距
\RequirePackage{amsmath} %数学公式
\RequirePackage{amsthm}
\RequirePackage{longtable} %长表格
\RequirePackage{graphicx} %图片

\RequirePackage{epsfig} 
\RequirePackage{tikz} %画图
%\usepackage{cite}
\RequirePackage{listings}
\RequirePackage{amsfonts}
\RequirePackage{subfigure}
\RequirePackage{float}
\lstset{language=Mathematica}%这条命令可以让LaTeX排版时将Mathematica键字突出显示
\lstset{extendedchars=false}%这一条命令可以解决代码跨页时，章节标题，页眉等汉字不显示的问题
\usetikzlibrary{shapes,arrows} %tikz图形库

\RequirePackage{xltxtra}
\RequirePackage{bm}
\RequirePackage{pdfpages}


\newcommand{\ctitle}[1]{
\begin{center}
    \zihao{3}
    \makebox[5em][s]{\heiti{题目}}
	{\kaishu\underline{\makebox[18em][c]{#1}}}               \\
    \vspace{10bp}
\end{center}
}
\newcommand{\cauthor}[1]{
\begin{center}
    \zihao{3}
    \makebox[5em][s]{\heiti{学生姓名}}
	{\kaishu\underline{\makebox[18em][c]{#1}}}               \\
    \vspace{10bp}
\end{center}
}
\newcommand{\ccollege}[1]{
\begin{center}
    \zihao{3}
    \makebox[5em][s]{\heiti{学院}}
	{\kaishu\underline{\makebox[18em][c]{#1}}}               \\
    \vspace{10bp}
\end{center}
}
\newcommand{\csubject}[1]{
\begin{center}
    \zihao{3}
    \makebox[5em][s]{\heiti{专业}}
	{\kaishu\underline{\makebox[18em][c]{#1}}}               \\
    \vspace{10bp}
\end{center}
}
\newcommand{\csupervisor}[1]{
\begin{center}
    \zihao{3}
    \makebox[5em][s]{\heiti{指导教师}}
	{\kaishu\underline{\makebox[18em][c]{#1}}}               \\
    \vspace{10bp}
\end{center}
}
\newcommand{\cdate}[1]{
\begin{center}
    \zihao{3}
    \makebox[5em][s]{\heiti{日期}}
	{\kaishu\underline{\makebox[18em][c]{#1}}}               \\
    \vspace{10bp}
\end{center}
}


\RequirePackage{overpic} %图上标记
\RequirePackage{ccaption} %中英文题注
\RequirePackage[numbers,sort&compress]{natbib} %参数代表：数字和排序与压缩
%\bibliographystyle{GBT7714-2005NLang} %参考文献格式设为GBT7714-2005N.bst
\RequirePackage[draft=false,colorlinks=true,CJKbookmarks=true,linkcolor=black,citecolor=green,urlcolor=blue,hyperindex]{hyperref}
\RequirePackage{textcomp} %摄氏度符号
%\usepackage{ccmap} %pdf中文复制
\RequirePackage{color} %gnuplot彩色文字
\RequirePackage{indentfirst}
\setlength{\parindent}{4em}

\renewcommand{\textfraction}{0.15}%页面中必须用来排放文本的最小比例。缺省值为 0.2，即一页中浮动对象所占的比例不得超过 80%。
\renewcommand{\topfraction}{0.85}%页面顶部可以用来放置浮动对象的高度与整个页面高度的最 大比例。缺省值为 0.7，即放置在页顶部的浮动对象所占 的高度不得超过整个页面高度 70%。同样地，如果多个 使用了选项 t 的浮动对象的高度和超过了 整个页面高度的 60%，即使它们的数目没有超过  topnumber 的值，仍将一个也不会被放置 在页面顶部。
\renewcommand{\bottomfraction}{0.65}%页面底部可以用来放置浮动对象的高度与整个页面高度的最 大比例。缺省值为 0.3，这使得如果浮动对象的高度 不超过整个页面高度的 40%，可以允许放置在页面底部。
\renewcommand{\floatpagefraction}{0.60}%浮动页中必须由浮动对象占用的最小比例。因此 在一浮动页中空白所占的比例不会超过 1 - \floatpagefraction。缺省值为 0.5。
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\graphicspath{{figures/}}
\bibliographystyle{unsrt}


