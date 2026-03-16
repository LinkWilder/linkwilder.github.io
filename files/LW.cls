% From `www.linkwilder.github.io`. Base on TeXPage website.
% Required Engine: XeLaTeX, Option:
% cls = [article,report,beamer]
% bfsf = [bf,sf,bfsf]
% sc = [None,Fandol,Founder,ZhongYi] `None` wihtout CTEX
% en = [None,NCM,TGNCM,TGPX,TGTX,TGLMS,APC,ATC,ACC]
% ma = [None,STIX,NCM,NCMS,XITS,TGP,TGT]
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{LW}[2026/03/16/13/05]
% 文档类选项命令定义========================================================================
\RequirePackage{kvoptions}
\RequirePackage{etoolbox}

\SetupKeyvalOptions{family=LW,prefix=LW@}

\DeclareStringOption[article]{cls}
\DeclareStringOption[sf]{bfsf}
\DeclareStringOption[Fandol]{sc}
\DeclareStringOption[TGNCM]{en}
\DeclareStringOption[NCM]{ma}
% 处理选项================================================================================
\ProcessKeyvalOptions*
% 1.根据选项设置文档类======================================================================
% article---------------------------------------------------------------
\ifdefstring{\LW@cls}{article}{\LoadClass[10pt,a4paper]{article}}{}
% report----------------------------------------------------------------
\ifdefstring{\LW@cls}{report}{\LoadClass[10pt,a4paper]{report}}{}
% beamer----------------------------------------------------------------
\ifdefstring{\LW@cls}{beamer}{\LoadClass[10pt,aspectratio=1610]{beamer}}{}
% ctex------------------------------------------------------------------
\ifdefstring{\LW@sc}{None}{}{\RequirePackage[fontset=none]{ctex}}
% 2.根据选项设置对应字体====================================================================
\RequirePackage{fontspec}
% 2.1中文字体命令定义======================================================================
% None------------------------------------------------------------------
\ifdefstring{\LW@sc}{None}{}{}
% Fandol----------------------------------------------------------------
\ifdefstring{\LW@sc}{Fandol}{
\ifdefstring{\LW@cls}{beamer}{% Fandolbeamer----------------------------
    \setCJKmainfont[
        Extension = .otf,
        UprightFont = *-Regular,
        UprightFeatures = {FakeBold = 0.5},
        BoldFont = FandolHei-Regular.otf,
        ItalicFont = *-Regular,
        ItalicFeatures = {FakeBold = 0.5}
    ]{FandolKai}
    \setCJKsansfont[
        Extension = .otf,
        UprightFont = *-Regular,
        BoldFont = *-Bold,
        ItalicFont = *-Regular
    ]{FandolHei}
    \setCJKmonofont[
        Extension = .otf,
        UprightFont = *-Regular,
        UprightFeatures = {FakeBold = 0.5},
        BoldFont = *-Regular,
        BoldFeatures = {FakeBold = 0.5},
        ItalicFont = *-Regular,
        ItalicFeatures = {FakeBold = 0.5}
    ]{FandolFang}
}{% Fandol--------------------------------------------------------------
    \setCJKmainfont[
        Extension = .otf,
        UprightFont = *-Regular,
        BoldFont = *-Bold,
        ItalicFont = FandolKai-Regular.otf,
    ]{FandolSong}
    \setCJKsansfont[
        Extension = .otf,
        UprightFont = *-Regular,
        BoldFont = *-Bold,
        ItalicFont = *-Regular
    ]{FandolHei}
    \setCJKmonofont[
        Extension = .otf,
        UprightFont = *-Regular,
        BoldFont = *-Regular,
        ItalicFont = *-Regular,
    ]{FandolFang}
    \newCJKfontfamily\Kai[
        Extension = .otf,
        UprightFont = *-Regular
    ]{FandolKai}
    \newCJKfontfamily\Fang[
        Extension = .otf,
        UprightFont = *-Regular
    ]{FandolFang}
}}{}
% Founder---------------------------------------------------------------
\ifdefstring{\LW@sc}{Founder}{
\ifdefstring{\LW@cls}{beamer}{% Founderbeamer---------------------------
    \setCJKmainfont[
        Extension = .otf,
        UprightFont = *,
        BoldFont = FZHTK.otf,
        ItalicFont = FZFSK.otf,
    ]{FZKTK}
    \setCJKsansfont[
        Extension = .otf,
        UprightFont = *,
        BoldFont = *,
        ItalicFont = *
    ]{FZHTK}
    \setCJKmonofont[
        Extension = .otf,
        UprightFont = *,
        BoldFont = *,
        ItalicFont = *,
    ]{FZFSK}
}{% Founder-------------------------------------------------------------
    \setCJKmainfont[
        Extension = .otf,
        UprightFont = *,
        BoldFont = FZHTK.otf,
        ItalicFont = FZKTK.otf,
    ]{FZSSK}
    \setCJKsansfont[
        Extension = .otf,
        UprightFont = *,
        BoldFont = *,
        ItalicFont = *
    ]{FZHTK}
    \setCJKmonofont[
        Extension = .otf,
        UprightFont = *,
        BoldFont = *,
        ItalicFont = *,
    ]{FZFSK}
    \newCJKfontfamily\Kai[
        Extension = .otf,
        UprightFont = *
    ]{FZKTK}
    \newCJKfontfamily\Fang[
        Extension = .otf,
        UprightFont = *
    ]{FZFSK}
}}{}
% ZhongYi---------------------------------------------------------------
\ifdefstring{\LW@sc}{ZhongYi}{
\ifdefstring{\LW@cls}{beamer}{% ZhongYibeamer---------------------------
    \setCJKmainfont[
        Extension = .ttf,
        UprightFont = *,
        BoldFont = simhei.ttf,
        ItalicFont = simfang.ttf,
    ]{simkai}
    \setCJKsansfont[
        Extension = .ttf,
        UprightFont = *,
        BoldFont = *,
        ItalicFont = *
    ]{simhei}
    \setCJKmonofont[
        Extension = .ttf,
        UprightFont = *,
        BoldFont = *,
        ItalicFont = *,
    ]{simfang}
}{% ZhongYi-------------------------------------------------------------
    \setCJKmainfont[
        Extension = .ttc,
        UprightFont = *,
        BoldFont = simhei.ttf,
        ItalicFont = simkai.ttf,
    ]{simsun}
    \setCJKsansfont[
        Extension = .ttf,
        UprightFont = *,
        BoldFont = *,
        ItalicFont = *
    ]{simhei}
    \setCJKmonofont[
        Extension = .ttf,
        UprightFont = *,
        BoldFont = *,
        ItalicFont = *,
    ]{simfang}
    \newCJKfontfamily\Kai[
        Extension = .ttf,
        UprightFont = *
    ]{simkai}
    \newCJKfontfamily\Fang[
        Extension = .ttf,
        UprightFont = *
    ]{simfang}
}}{}
% 2.2英文字体命令定义======================================================================
% None------------------------------------------------------------------
\ifdefstring{\LW@en}{None}{}{}
% NewComputerModernBook-------------------------------------------------
\ifdefstring{\LW@en}{NCM}{
    \setmainfont[
        Extension = .otf,
        UprightFont = *-Book,
        BoldFont = *-Bold,
        ItalicFont = *-BookItalic,
        BoldItalicFont = *-BoldItalic
    ]{NewCM10}
    \setsansfont[
        Extension = .otf,
        UprightFont = *-Book,
        BoldFont = *-Bold,
        ItalicFont = *-BookOblique,
        BoldItalicFont = *-BoldOblique
    ]{NewCMSans10}
    \setmonofont[
        Extension = .otf,
        UprightFont = *-Book,
        BoldFont = *-Bold,
        ItalicFont = *-BookItalic,
        BoldItalicFont = *-BoldOblique
    ]{NewCMMono10}
    \newfontfamily\EngMain[
        Extension = .otf,
        UprightFont = *-Book
    ]{NewCM10}
}{}
% TeXGyreHeros & TeXGyrePagellaX & TeXGyreCursor------------------------
\ifdefstring{\LW@en}{TGPX}{
    \setmainfont[
        Extension = .otf,
        UprightFont = *-Regular,
        BoldFont = *-Bold,
        ItalicFont = *-Italic,
        BoldItalicFont = *-BoldItalic,
        SlantedFont = *-Slanted,
        BoldSlantedFont = *-BoldSlanted
    ]{TeXGyrePagellaX}
    \setsansfont[
        Extension = .otf,
        UprightFont = *-regular,
        BoldFont = *-bold,
        ItalicFont = *-italic,
        BoldItalicFont = *-bolditalic
    ]{texgyreheros}
    \setmonofont[
        Extension = .otf,
        UprightFont = *-regular,
        BoldFont = *-bold,
        ItalicFont = *-italic,
        BoldItalicFont = *-bolditalic
    ]{texgyrecursor}
    \newfontfamily\EngMain[
        Extension = .otf,
        UprightFont = *-Regular
    ]{TeXGyrePagellaX}
}{}
% TeXGyreHeros & TeXGyreTermesX & TeXGyreCursor-------------------------
\ifdefstring{\LW@en}{TGTX}{
    \setmainfont[
        Extension = .otf,
        UprightFont = *-Regular,
        BoldFont = *-Bold,
        ItalicFont = *-Italic,
        BoldItalicFont = *-BoldItalic,
        SlantedFont = *-Slanted,
        BoldSlantedFont = *-BoldSlanted
    ]{TeXGyreTermesX}
    \setsansfont[
        Extension = .otf,
        UprightFont = *-regular,
        BoldFont = *-bold,
        ItalicFont = *-italic,
        BoldItalicFont = *-bolditalic
    ]{texgyreheros}
    \setmonofont[
        Extension = .otf,
        UprightFont = *-regular,
        BoldFont = *-bold,
        ItalicFont = *-italic,
        BoldItalicFont = *-bolditalic
    ]{texgyrecursor}
    \newfontfamily\EngMain[
        Extension = .otf,
        UprightFont = *-Regular
    ]{TeXGyreTermesX}
}{}
% TeXGyreHeros & NewComputerModernBook & TeXGyreCursor------------------
\ifdefstring{\LW@en}{TGNCM}{
    \setmainfont[
        Extension = .otf,
        UprightFont = *-Book,
        BoldFont = *-Bold,
        ItalicFont = *-BookItalic,
        BoldItalicFont = *-BoldItalic
    ]{NewCM10}
    \setsansfont[
        Extension = .otf,
        UprightFont = *-regular,
        BoldFont = *-bold,
        ItalicFont = *-italic,
        BoldItalicFont = *-bolditalic
    ]{texgyreheros}
    \setmonofont[
        Extension = .otf,
        UprightFont = *-regular,
        BoldFont = *-bold,
        ItalicFont = *-italic,
        BoldItalicFont = *-bolditalic
    ]{texgyrecursor}
    \newfontfamily\EngMain[
        Extension = .otf,
        UprightFont = *-Book
    ]{NewCM10}
}{}
% TeXGyreHeros & LatinModernSans & TeXGyreCursor------------------------
\ifdefstring{\LW@en}{TGLMS}{
    \setmainfont[
        Extension = .otf,
        UprightFont = *-regular,
        BoldFont = *-bold,
        BoldItalicFont = *-boldoblique
    ]{lmsans10}
    \setsansfont[
        Extension = .otf,
        UprightFont = *-regular,
        BoldFont = *-bold,
        ItalicFont = *-italic,
        BoldItalicFont = *-bolditalic
    ]{texgyreheros}
    \setmonofont[
        Extension = .otf,
        UprightFont = *-regular,
        BoldFont = *-bold,
        ItalicFont = *-italic,
        BoldItalicFont = *-bolditalic
    ]{texgyrecursor}
    \newfontfamily\EngMain[
        Extension = .otf,
        UprightFont = *-Regular
    ]{NewCMSans10}
}{}
% Arial & Palatino Linotype & Courier New-------------------------------
\ifdefstring{\LW@en}{APC}{
    \setmainfont[
        Extension = .ttf,
        UprightFont = *,
        BoldFont = *b,
        ItalicFont = *i,
        BoldItalicFont = *bi
    ]{pala}
    \setsansfont[
        Extension = .ttf,
        UprightFont = *,
        BoldFont = *bd,
        ItalicFont = *i,
        BoldItalicFont = *bi
    ]{arial}
    \setmonofont[
        Extension = .ttf,
        UprightFont = *,
        BoldFont = *bd,
        ItalicFont = *i,
        BoldItalicFont = *bi
    ]{cour}
    \newfontfamily\EngMain[
        Extension = .ttf,
        UprightFont = *
    ]{pala}
}{}
% Arial & Times New Roman & Courier New---------------------------------
\ifdefstring{\LW@en}{ATC}{
    \setmainfont[
        Extension = .ttf,
        UprightFont = *,
        BoldFont = *bd,
        ItalicFont = *i,
        BoldItalicFont = *bi
    ]{times}
    \setsansfont[
        Extension = .ttf,
        UprightFont = *,
        BoldFont = *bd,
        ItalicFont = *i,
        BoldItalicFont = *bi
    ]{arial}
    \setmonofont[
        Extension = .ttf,
        UprightFont = *,
        BoldFont = *bd,
        ItalicFont = *i,
        BoldItalicFont = *bi
    ]{cour}
    \newfontfamily\EngMain[
        Extension = .ttf,
        UprightFont = *
    ]{times}
}{}
% Arial & Calibri & Courier New-----------------------------------------
\ifdefstring{\LW@en}{ACC}{
    \setmainfont[
        Extension = .ttf,
        UprightFont = *,
        BoldFont = *b,
        ItalicFont = *i,
        BoldItalicFont = *z
    ]{calibri}
    \setsansfont[
        Extension = .ttf,
        UprightFont = *,
        BoldFont = *bd,
        ItalicFont = *i,
        BoldItalicFont = *bi
    ]{arial}
    \setmonofont[
        Extension = .ttf,
        UprightFont = *,
        BoldFont = *bd,
        ItalicFont = *i,
        BoldItalicFont = *bi
    ]{cour}
    \newfontfamily\EngMain[
        Extension = .ttf,
        UprightFont = *
    ]{calibri}
}{}
% 2.3数学字体命令定义======================================================================
\RequirePackage{unicode-math}
% None------------------------------------------------------------------
\ifdefstring{\LW@ma}{None}{}{}
% STIXTwoMath
\ifdefstring{\LW@ma}{STIX}{
    \setmathfont[Extension = .otf]{STIXTwoMath-Regular}
}{}
% NewCMMath-Book--------------------------------------------------------
\ifdefstring{\LW@ma}{NCM}{
    \setmathfont[Extension = .otf]{NewCMMath-Book}
}{}
% NewCMSansMath---------------------------------------------------------
\ifdefstring{\LW@ma}{NCMS}{
    \setmathfont[Extension = .otf]{NewCMSansMath-Regular}
}{}
% XITSMath--------------------------------------------------------------
\ifdefstring{\LW@ma}{XITS}{
    \setmathfont[Extension = .otf]{XITSMath-Regular}
}{}
% TeXGyrePagella--------------------------------------------------------
\ifdefstring{\LW@ma}{TGP}{
    \setmathfont[Extension = .otf]{texgyrepagella-math}
}{}
% TeXGyreTermes---------------------------------------------------------
\ifdefstring{\LW@ma}{TGT}{
    \setmathfont[Extension = .otf]{texgyretermes-math}
}{}
% 3.文档类样式设置=========================================================================
\RequirePackage{tikz}
\RequirePackage{geometry}
% 3.1beamer==============================================================================
\ifdefstring{\LW@cls}{beamer}{%
\setbeamersize{text margin left=1em,text margin right=1em}
% 文字两端对齐而非左对齐
\renewcommand{\raggedright}{\leftskip=0pt \rightskip=0pt plus 0cm}
% outer-----------------------------------------------------------------
\defbeamertemplate*{headline}{miniframes theme}{%
    \begin{beamercolorbox}[colsep=1.5pt]{upper separation line head}\end{beamercolorbox}
    \begin{beamercolorbox}{section in head/foot}
        \vskip2.5ex
        \vskip-\baselineskip
        \insertnavigation{\paperwidth}%
        \vskip1.125ex
    \end{beamercolorbox}%
}
\setbeamertemplate{page number in head/foot}[totalframenumber]
\defbeamertemplate*{footline}{infolines theme}{%
    \leavevmode%
    \hbox{%
    \begin{beamercolorbox}[wd=.25\paperwidth,ht=2.25ex,dp=1ex,center]{author in head/foot}%
        \usebeamerfont{author in head/foot}\insertshortauthor\expandafter\ifblank\expandafter{\beamer@shortinstitute}{}{~~(\insertshortinstitute)}
    \end{beamercolorbox}%
    \begin{beamercolorbox}[wd=.5\paperwidth,ht=2.25ex,dp=1ex,center]{title in head/foot}%
        \usebeamerfont{title in head/foot}\insertshorttitle
    \end{beamercolorbox}%
    \begin{beamercolorbox}[wd=.25\paperwidth,ht=2.25ex,dp=1ex,leftskip=2ex,rightskip=2ex,sep=0pt]{date in head/foot}%
        \hfill%
        \usebeamerfont{date in head/foot}%
        \insertshortdate{}%
        \hfill%
        \usebeamercolor[fg]{page number in head/foot}%
        \usebeamerfont{page number in head/foot}%
        \usebeamertemplate{page number in head/foot}%
    \end{beamercolorbox}}%
    \vskip0pt%
}
% innner----------------------------------------------------------------
\setbeamertemplate{navigation symbols}{}
\setbeamertemplate{caption}[numbered]
\setbeamertemplate{blocks}[rounded][shadow=true]
\setbeamertemplate{title page}[default][colsep=-4bp,rounded=true,shadow=true]

\newcommand{\LWcircle}{\raisebox{0.2ex}{\tikz{\filldraw (0,0.5) circle [radius=0.075]}}}
\newcommand{\LWsquare}{\raisebox{0.0ex}{\tikz{\filldraw (0,0) rectangle (0.2,0.2)}}}
\newcommand{\LWsquarenum}[1]{\raisebox{-0.1ex}{\tikz{\node[rectangle,rounded corners=3pt,fill=link,text=white,inner sep=2pt,font=\scriptsize] at (0,0) {#1}}}}

\defbeamertemplate*{section in toc}{LW}{\leavevmode\leftskip=1em\LWsquarenum{\inserttocsectionnumber} \inserttocsection\par}

\defbeamertemplate*{subsection in toc}{LW}{\leavevmode\leftskip=2em
\LWsquarenum{\inserttocsectionnumber.\inserttocsubsectionnumber} \inserttocsubsection\par}

\defbeamertemplate*{subsubsection in toc}{LW}{\leavevmode\normalsize\leftskip=3em
\LWsquarenum{\inserttocsectionnumber.\inserttocsubsectionnumber.\inserttocsubsubsectionnumber} \inserttocsubsubsection\par}

\defbeamertemplate*{itemize item}{LW}{\LWcircle}
\defbeamertemplate*{itemize subitem}{LW}{\LWcircle}
\defbeamertemplate*{itemize subsubitem}{LW}{\LWcircle}

\defbeamertemplate*{enumerate item}{LW}{\LWsquarenum{\insertenumlabel}}
\defbeamertemplate*{enumerate subitem}{LW}{\LWsquarenum{\insertenumlabel.\insertsubenumlabel}}
\defbeamertemplate*{enumerate subsubitem}{LW}{\LWsquarenum{\insertenumlabel.\insertsubenumlabel.\insertsubsubenumlabel}}
% font------------------------------------------------------------------
\def\familydefault{\rmdefault}
\def\mathfamilydefault{\rmdefault}
\setbeamerfont{tiny structure}{family=\rmfamily}
\setbeamerfont{structure}{family=\sffamily}

\setbeamerfont{itemize/enumerate body}{}
\setbeamerfont{itemize/enumerate subbody}{size=\normalsize}
\setbeamerfont{itemize/enumerate subsubbody}{size=\normalsize}
% color-----------------------------------------------------------------
\definecolor{link}{rgb}{0.1,0.2,0.2}
\setbeamercolor{structure}{fg=link}
\setbeamercolor{titlelike}{parent=palette primary,fg=white}

\setbeamercolor{palette primary}{use=structure,bg=structure.fg}
\setbeamercolor{palette secondary}{use=structure,bg=structure.fg!85!white}
\setbeamercolor{palette tertiary}{use=structure,bg=structure.fg!70!white}
\setbeamercolor{palette quaternary}{use=substructure,bg=structure.fg!55!white}

\setbeamercolor{author in head/foot}{parent=palette secondary,fg=white}
\setbeamercolor{title in head/foot}{parent=palette primary,fg=white}
\setbeamercolor{date in head/foot}{parent=palette secondary,fg=white}
\setbeamercolor{section in head/foot}{parent=palette secondary,fg=white}

\setbeamercolor{block title}{use=titlelike,fg=white,bg=titlelike.bg}
\setbeamercolor{block body}{parent=normal text,use=block title,bg=block title.bg!10!bg}

\setbeamercolor{subsection in toc}{parent=structure}
}{ % 3.2Notbeamer==============================================================
% 字号设置------------------------------------------------------------------
\DeclareRobustCommand\normalsize{%
   \@setfontsize\normalsize\@xpt\@xiipt
   \abovedisplayskip 5\p@ \@plus2\p@ \@minus2\p@
   \abovedisplayshortskip \z@ \@plus3\p@
   \belowdisplayshortskip 6\p@ \@plus3\p@ \@minus3\p@
   \belowdisplayskip \abovedisplayskip
   \let\@listi\@listI}
\DeclareRobustCommand\small{\@setfontsize\small\@ixpt{11}}
\DeclareRobustCommand\footnotesize{\@setfontsize\footnotesize\@viiipt{9.5}}
\DeclareRobustCommand\scriptsize{\@setfontsize\scriptsize\@viipt\@viiipt}
\DeclareRobustCommand\tiny{\@setfontsize\tiny\@vpt\@vipt}
\DeclareRobustCommand\large{\@setfontsize\large\@xiipt{14}}
\DeclareRobustCommand\Large{\@setfontsize\Large\@xivpt{18}}
\DeclareRobustCommand\LARGE{\@setfontsize\LARGE\@xviipt{22}}
\DeclareRobustCommand\huge{\@setfontsize\huge\@xxpt{25}}
\DeclareRobustCommand\Huge{\@setfontsize\Huge\@xxvpt{30}}
% 浮动体设置-------------------------------------------------------------
\setlength\floatsep    {5\p@ \@plus 2\p@ \@minus 2\p@}
\setlength\textfloatsep{5\p@ \@plus 2\p@ \@minus 2\p@}
\setlength\intextsep   {5\p@ \@plus 2\p@ \@minus 2\p@}
% 标题字体定义------------------------------------------------------------
\newcommand{\bfsf}{
\ifdefstring{\LW@bfsf}{bf}{\bfseries}{}
\ifdefstring{\LW@bfsf}{sf}{\sffamily}{}
\ifdefstring{\LW@bfsf}{bfsf}{\bfseries\sffamily}{}
}
% 页边距设置-------------------------------------------------------------
\geometry{margin=3cm,headheight=1cm,headsep=0.5cm,footskip=1.5cm}
% 字体族命令定义----------------------------------------------------------
\ifdefstring{\LW@sc}{None}{}{
    \newcommand{\textkai}[1]{{\Kai\EngMain #1}}
    \newcommand{\textfang}[1]{{\Fang\EngMain #1}}
}
% abstract环境设置-------------------------------------------------------
\renewenvironment{abstract}{
\begin{center}
    {\bfsf \abstractname\vspace{-0.5em}}
\end{center}
\quotation}{\endquotation}
% appendix命令设置-------------------------------------------------------
\renewcommand{\appendix}[1]{
\setcounter{section}{0}
\begin{center}
{\huge\bfsf #1 \par}
\vskip 1em
\end{center}
}
% 图片表格标题设置--------------------------------------------------------
\RequirePackage{caption}
\ifdefstring{\LW@bfsf}{bf}{\captionsetup{font={bf}}}{}
\ifdefstring{\LW@bfsf}{sf}{\captionsetup{font={sf}}}{}
\ifdefstring{\LW@bfsf}{bfsf}{\captionsetup{font={bf,sf}}}{}
\captionsetup{skip=5pt,labelsep=quad}
% 页眉页脚设置------------------------------------------------------------
\RequirePackage{fancyhdr}
\newcommand\Originaltitle{}
\let\Originaltitle\title
\renewcommand*{\title}[1]{%
  \Originaltitle{#1}%
  \renewcommand*{\MyTitle}{#1}%
}
\newcommand*{\MyTitle}{}
\fancypagestyle{plain}{
    \fancyhf{}
    \fancyfoot[C]{---\ \thepage\ ---}
    \renewcommand{\headrulewidth}{0pt}
}
\fancypagestyle{headfoot}{
    \fancyhf{}
    \ifdefstring{\LW@cls}{article}{\fancyhead[C]{\MyTitle}}{
        \renewcommand{\chaptermark}[1]{
            \ifdefstring{\LW@sc}{None}{\markboth{\thechapter##1}{}}
            {\markboth{\thechapter##1}{}}}
        \fancyhead[C]{\leftmark}}
    \fancyfoot[C]{---\ \thepage\ ---}
    \renewcommand{\headrulewidth}{1pt}
}
\pagestyle{headfoot}
% maketitle命令设置------------------------------------------------------
\RequirePackage{titling}
\pretitle{\begin{center}\bfsf\LARGE}
\newcommand{\subtitle}[1]{%
  \posttitle{%
    \par\end{center}
    \begin{center}\Large\textkai{#1}\end{center}}%
}
\preauthor{
    \begin{center}
    \large \lineskip 0.5em%
    \begin{tabular}[t]{c}
}
\postauthor{
    \end{tabular}\par\end{center}
}
\predate{\begin{center}\large}
\postdate{\par\end{center}}
% 中英文章节标题设置-------------------------------------------------------
\RequirePackage{titlesec}
\ifdefstring{\LW@cls}{report}{
    \titleformat{\chapter}{\LARGE\bfsf\centering}{\thechapter}{0em}{}[]
    \titlespacing*{\chapter}{0em}{2em}{2em}
    \renewcommand{\thechapter}{\Roman{chapter}. }
}{}
\titleformat{\section}{\Large\bfsf\centering}{\thesection}{0em}{}[]
\titlespacing*{\section}{0em}{1em}{1em}
\titleformat{\subsection}{\normalsize\bfsf}{\thesubsection}{0em}{}[]
\titlespacing*{\subsection}{0em}{0.5em}{0.5em}
\titleformat{\subsubsection}{\normalsize\bfsf}{\thesubsubsection}{0em}{}[]
\titlespacing*{\subsubsection}{0em}{0.5em}{0.5em}
\titleformat{\paragraph}[runin]{\normalsize\bfsf}{\theparagraph}{0em}{}[]
\titlespacing*{\paragraph}{0em}{0.5em}{1em}
\titleformat{\subparagraph}[runin]{\normalsize\bfsf}{\theparagraph}{0em}{}[]
\titlespacing*{\subparagraph}{2em}{0.5em}{1em}

\renewcommand{\thesection}{\arabic{section}. }
\renewcommand{\thesubsection}{\arabic{section}.\arabic{subsection}. }
\renewcommand{\thesubsubsection}{\arabic{section}.\arabic{subsection}.\arabic{subsubsection}. }
}