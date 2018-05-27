\ProvidesClass{NEUBachelorThesis}
\LoadClass[UTF8,oneside,a4paper]{ctexbook}

%封面格式
\makeatletter
\def\ctitle#1{\def\@ctitle{#1}}\def\@ctitle{}
\def\etitle#1{\def\@etitle{#1}}\def\@etitle{}
\def\cauthor#1{\def\@cauthor{#1}}\def\@cauthor{}
\def\eauthor#1{\def\@eauthor{#1}}\def\@eauthor{}
\def\corganization#1{\def\@corganization{#1}}\def\@corganization{}
\def\ccollege#1{\def\@ccollege{#1}}\def\@ccollege{}
\def\csubject#1{\def\@csubject{#1}}\def\@csubject{}
\def\csupervisor#1{\def\@csupervisor{#1}}\def\@csupervisor{}
\def\esupervisor#1{\def\@esupervisor{#1}}\def\@esupervisor{}
\def\cdate#1{\def\@cdate{#1}}\def\@cdate{}
\def\edate#1{\def\@edate{#1}}\def\@edate{}

\newlength{\@title@width}
\newlength{\@item@width}
\def\makecover{
    \pagestyle{empty}
    % \centerline{\kaishu\zihao{-0}{东北大学}}
    \begin{figure}[htbp]
        \begin{center}
            \includegraphics[width=2.0in]{neufont.eps}
        \end{center}
    \end{figure}
    
    \begin{figure}[htbp]
        \begin{center}
            \includegraphics[width=2.0in]{neu.eps}
        \end{center}
    \end{figure}
    
    \vskip 1.0cm
    \centerline{\heiti\zihao{1}{本\ 科\  毕\  业\  设\  计\  (论文)}}
    \vskip 3.5cm

\setlength{\@title@width}{28em}
\setlength{\@item@width}{8em}

\begin{center}
    \zihao{3}
    \makebox[\@item@width][s]{\heiti{题目}}  \kaishu\underline{\makebox[\@title@width][c]{\@ctitle}}\vspace{10bp}\\
    \makebox[\@item@width][s]{\heiti{学生姓名}}  \kaishu\underline{\makebox[\@title@width][c]{\@cauthor}}\vspace{10bp}\\
    \makebox[\@item@width][s]{\heiti{学院}}  \kaishu\underline{\makebox[\@title@width][c]{\@ccollege}}\vspace{10bp}\\
    \makebox[\@item@width][s]{\heiti{专业}}  \kaishu\underline{\makebox[\@title@width][c]{\@csubject}}\vspace{10bp}\\
    \makebox[\@item@width][s]{\heiti{指导教师}}  \kaishu\underline{\makebox[\@title@width][c]{\@csupervisor}}\vspace{10bp}\\
    \vskip 2.5cm
    % \makebox[\@item@width][s]{\heiti{日期}} \kaishu\underline{\makebox[\@title@width][c]{\@cdate}}\vspace{10bp}\\
    \makebox[\@title@width][c]{\@cdate}
\end{center}
}

%扉页
\def\maketitlepage{
%中文扉页
\zihao{3}
\vspace*{3cm}
\centerline{\heiti{\@ctitle}}\vspace{5cm}
\setlength{\@item@width}{7em}

\begin{flushleft}
    \hspace{5cm}\makebox[\@item@width][s]{\heiti{作者姓名：}}{\kaishu{\@cauthor}}\vspace{10bp}\\
    \hspace{5cm}\makebox[\@item@width][s]{\heiti{指导教师：}}{\kaishu{\@csupervisor}}\vspace{10bp}\\
    \hspace{5cm}\makebox[\@item@width][s]{\heiti{单位名称：}}{\kaishu{\@corganization}}\vspace{10bp}\\
    \hspace{5cm}\makebox[\@item@width][s]{\heiti{专业名称：}}{\kaishu{\@csubject}}\vspace{10bp}\\
\end{flushleft}

    \vskip 5cm
    \begin{center}
    \zihao{3}
    \makebox[6em][s]{\heiti{东北大学}}\\
    \makebox[5em][s]{\heiti{\@cdate}}
    \end{center}
%英文扉页
    \newpage
    \zihao{3}
    \vspace*{5cm}
    \centerline{\heiti{\@etitle}}\vspace{5cm}
    \begin{flushleft}
        \hspace{5cm}\makebox[5em][s]{\heiti{by}}{\kaishu\makebox[10em][c]{\@eauthor}}\vspace{22bp}\\
        \hspace{5cm}\makebox[5em][s]{\heiti{Supervisor:}}{\kaishu\makebox[10em][c]{\@esupervisor}}\vspace{10bp}\\
    \end{flushleft}
        
        \vskip 5cm
        \centerline{\makebox[8em][s]{\heiti{Northeastern University}}}\vspace{8bp}
        \centerline{\makebox[3em][s]{\heiti{\@edate}}}
}
\makeatother

%标题设置
\CTEXsetup[name={第,章},number={\arabic{chapter}}]{chapter}%章节编号设置为阿拉伯数字格式
\CTEXsetup[format={\Large\bfseries}]{section}%二级标题左对齐

\def\makeRomanpage{
    % \addtocontents{toc}{毕业设计任务书}
    % \thispagestyle{task}
    \pagenumbering{Roman}
}

%页面设置
\RequirePackage[top=3cm,bottom=2cm,left=2cm,right=2cm]{geometry} % 调整页面式样
\geometry{
	left=25mm,
	right=25mm,
	top=22mm,
	bottom=22mm,
	headheight=5mm,
	headsep=7mm,
	textheight=253mm,
	textwidth=155mm,
	footskip=11mm,
	hmarginratio={2:3}}

\RequirePackage{pdfpages}%插入pdf文档
% 页眉、页脚、脚注设定
\RequirePackage{fancyhdr}%页眉页脚宏包
\renewcommand{\headrulewidth}{0.4pt}%页眉线宽
\renewcommand{\footrulewidth}{0pt}%页脚线宽
\renewcommand{\chaptermark}[1]{ \markboth{#1}{} }
\renewcommand{\sectionmark}[1]{\markright{\thesection\ #1}{}}

% 默认页面页眉页脚样式
\fancypagestyle{plain}{
    \fancyhf{}
    \fancyfoot[C]{\zihao{-5}-\ \thepage\ -}% 页码位于页脚居中

    % 左右两栏页眉，左为论文题目右为当前章
    \fancyhead[L]{\zihao{-5}东北大学本科毕业设计（论文）}
    \fancyhead[R]{\zihao{-5}\leftmark}

    % 居中式页眉，可以选择为论文题目或当前章
    %\fancyhead[C]{\zihao{-5}\leftmark}
}
\pagestyle{plain}

% 采用带圈数字符号代替*号脚注
\xeCJKsetcharclass{`①}{`⑩}{1}

% 中英文摘要页面样式
% 用法：一定是在章节的标题下面(不能在标题上面）\thispagestyle{task}(也不能是\pagesyle命令)
\fancypagestyle{task}{
    % \pagenumbering{Roman}
    \fancyhead[L]{\zihao{-5}东北大学本科毕业设计（论文）}
    \fancyhead[R]{\zihao{-5}毕业设计（论文）任务书}
}
\fancypagestyle{contents}{
    % \pagenumbering{Roman}
    \fancyhead[L]{\zihao{-5}东北大学本科毕业设计（论文）}
    \fancyhead[R]{\zihao{-5}目录}
}

%数学公式
\RequirePackage{amsmath} 
\RequirePackage{amsthm}

%表格
\RequirePackage{longtable} %长表格

%插图格式设置
\RequirePackage{graphicx} 
\RequirePackage{epsfig} 
\graphicspath{{figures/}}
\RequirePackage{tikz} %画图
\usetikzlibrary{shapes,arrows} %tikz图形库
\RequirePackage{subfigure}
\RequirePackage{float}
\RequirePackage{overpic} %图上标记

\RequirePackage{listings}%代码排版
\usepackage[noend]{algpseudocode}
\RequirePackage{algorithmicx,algorithm}%算法排版
\RequirePackage{amsfonts}
\lstset{language=Mathematica}%这条命令可以让LaTeX排版时将Mathematica键字突出显示
\lstset{extendedchars=false}%这一条命令可以解决代码跨页时，章节标题，页眉等汉字不显示的问题

\newcommand{\contents}{
\tableofcontents
\thispagestyle{contents}
\newpage
\pagestyle{plain}
\pagenumbering{arabic}
\setcounter{page}{1}%目录页后第一章设置为第一页
}

\fancypagestyle{listoffiguretable}{\fancyhead[R]{\zihao{-5}插图与表格目录}}


\RequirePackage{ccaption} %中英文题注
\RequirePackage{textcomp} %摄氏度符号
% \RequirePackage{ccmap} %pdf中文复制
\RequirePackage{color} %gnuplot彩色文字
\RequirePackage{indentfirst}
\setlength{\parindent}{4em}

\renewcommand{\textfraction}{0.15}%页面中必须用来排放文本的最小比例。缺省值为 0.2，即一页中浮动对象所占的比例不得超过 80%。
\renewcommand{\topfraction}{0.85}%页面顶部可以用来放置浮动对象的高度与整个页面高度的最 大比例。缺省值为 0.7，即放置在页顶部的浮动对象所占 的高度不得超过整个页面高度 70%。同样地，如果多个 使用了选项 t 的浮动对象的高度和超过了 整个页面高度的 60%，即使它们的数目没有超过  topnumber 的值，仍将一个也不会被放置 在页面顶部。
\renewcommand{\bottomfraction}{0.65}%页面底部可以用来放置浮动对象的高度与整个页面高度的最 大比例。缺省值为 0.3，这使得如果浮动对象的高度 不超过整个页面高度的 40%，可以允许放置在页面底部。
\renewcommand{\floatpagefraction}{0.60}%浮动页中必须由浮动对象占用的最小比例。因此 在一浮动页中空白所占的比例不会超过 1 - \floatpagefraction。缺省值为 0.5。
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%参考文献
\bibliographystyle{unsrt} %参考文献序号按引用顺序排序
\RequirePackage[numbers,sort&compress]{natbib} %参数代表：数字和排序与压缩
%\bibliographystyle{GBT7714-2005NLang} %参考文献格式设为GBT7714-2005N.bst
\RequirePackage[draft=false,colorlinks=true,CJKbookmarks=true,linkcolor=black,citecolor=green,urlcolor=blue,hyperindex]{hyperref}%引用链接颜色设置

%附录
\renewcommand\appendix{\setcounter{secnumdepth}{-2}}%附录以一级标题显示并且不显示编号
