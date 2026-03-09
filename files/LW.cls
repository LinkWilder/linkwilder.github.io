% Required Engine: XeLaTeX, Option:
% cls = [article,report,beamer]
% bfsf = [bf,sf,bfsf]
% sc = [None,Fandol,Founder,ZhongYi] `None` wihtout CTEX
% en = [None,NCM,TGPX,TGTX,TGNCM,TGNCMS,APC,ATC,ACC]
% ma = [None,STIX,NCM,NCMS,TGP,TGT]
% other = [] for other options
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{LW}[2026/03/09 v1.0]
% 文档类选项命令定义========================================================================
\RequirePackage{kvoptions}
\RequirePackage{etoolbox}

\SetupKeyvalOptions{family=LW,prefix=LW@}

\DeclareStringOption[article]{cls}
\DeclareStringOption[sf]{bfsf}
\DeclareStringOption[Fandol]{sc}
\DeclareStringOption[TGNCM]{en}
\DeclareStringOption[NCM]{ma}
\DeclareStringOption{other}
% 处理选项================================================================================
\ProcessKeyvalOptions*
% 1.根据选项设置文档类======================================================================
% article---------------------------------------------------------------
\ifdefstring{\LW@cls}{article}{%
    \ifdefstring{\LW@sc}{None}
    {\LoadClass[\LW@other]{article}}{\LoadClass[fontset=none,\LW@other]{ctexart}}
}{}
% report----------------------------------------------------------------
\ifdefstring{\LW@cls}{report}{%
    \ifdefstring{\LW@sc}{None}
    {\LoadClass[\LW@other]{report}}{\LoadClass[fontset=none,\LW@other]{ctexrep}}
}{}
% beamer----------------------------------------------------------------
\ifdefstring{\LW@cls}{beamer}{%
    \ifdefstring{\LW@sc}{None}
    {\LoadClass[aspectratio=1610,t,\LW@other]{beamer}}{\LoadClass[fontset=none,aspectratio=1610,t,\LW@other]{ctexbeamer}}
}{}
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
% TeXGyreHeros & NewComputerModernSans & TeXGyreCursor------------------
\ifdefstring{\LW@en}{TGNCMS}{
    \setmainfont[
        Extension = .otf,
        UprightFont = *-Regular,
        BoldFont = *-Bold,
        ItalicFont = *-Oblique,
        BoldItalicFont = *-BoldOblique
    ]{NewCMSans10}
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
% LibertinusMath--------------------------------------------------------
\ifdefstring{\LW@ma}{LT}{
    \setmathfont[Extension = .otf]{LibertinusMath-Regular}
}{}
% TeXGyrePagella--------------------------------------------------------
\ifdefstring{\LW@ma}{TGP}{
    \setmathfont[Extension = .otf]{texgyrepagella-math}
}{}
% TeXGyreTermes---------------------------------------------------------
\ifdefstring{\LW@ma}{TGT}{
    \setmathfont[Extension = .otf]{texgyretermes-math}
}{}
% Test------------------------------------------------------------------
\ifdefstring{\LW@ma}{T}{
    % \setmathfont[Extension = .otf]{IBMPlexMath-Regular}
    % \setmathfont[Extension = .otf]{Asana-Math}
    \setmathfont[Extension = .otf]{Concrete-Math}
    % \setmathfont[Extension = .otf]{Erewhon-Math}
    % \setmathfont[Extension = .otf]{Euler-Math}
    % \setmathfont[Extension = .otf]{FiraMath-Regular}
    % \setmathfont[Extension = .otf]{Garamond-Math}
    % \setmathfont[Extension = .otf]{GFSNeohellenicMath}
    % \setmathfont[Extension = .otf]{KpMath-Regular}
    % \setmathfont[Extension = .otf]{LeteSansMath}
    % \setmathfont[Extension = .otf]{LibertinusMath-Regular}
    % \setmathfont[Extension = .otf]{latinmodern-math}
    % \setmathfont[Extension = .otf]{Luciole-Math}
    % \setmathfont[Extension = .otf]{OldStandard-Math}
    % \setmathfont[Extension = .otf]{STIXMath-Regular}
    % \setmathfont[Extension = .otf]{XCharter-Math}
    % \setmathfont[Extension = .otf]{XITSMath-Regular}
    % \setmathfont[Extension = .otf]{STIXTwoMath-Regular}
    % \setmathfont[Extension = .otf]{NewCMMath-Regular}
    % \setmathfont[Extension = .otf]{NewCMSansMath-Regular}
}{}
% 字号命令设置------------------------------------------------------------
\ifdefstring{\LW@sc}{None}{
    \renewcommand{\tiny}{\@setfontsize\tiny{6pt}{7.2pt}}
    \renewcommand{\scriptsize}{\@setfontsize\scriptsize{7pt}{8.4pt}}
    \renewcommand{\footnotesize}{\@setfontsize\footnotesize{8pt}{9.6pt}}
    \renewcommand{\small}{\@setfontsize\small{9pt}{10.8pt}}
    \renewcommand{\normalsize}{\@setfontsize\normalsize{10pt}{12pt}}
    \renewcommand{\large}{\@setfontsize\large{12pt}{14.4pt}}
    \renewcommand{\Large}{\@setfontsize\Large{14pt}{16.8pt}}
    \renewcommand{\LARGE}{\@setfontsize\LARGE{16pt}{19.2pt}}
    \renewcommand{\huge}{\@setfontsize\huge{18pt}{21.6pt}}
    \renewcommand{\Huge}{\@setfontsize\Huge{22pt}{26.4pt}}
}{% \@setfontsize{命令}{字体大小}{行间距}
    \renewcommand{\tiny}{\@setfontsize\tiny{5.5bp}{6.05bp}}% 七号 (5.5*1.1=6.05)
    \renewcommand{\scriptsize}{\@setfontsize\scriptsize{6.5bp}{7.15bp}}% 小六 (6.5*1.1=7.15)
    \renewcommand{\footnotesize}{\@setfontsize\footnotesize{7.5bp}{8.25bp}}% 六号 (7.5*1.1=8.25)
    \renewcommand{\small}{\@setfontsize\small{9bp}{9.9bp}}% 小五 (9*1.1=9.9)
    \renewcommand{\normalsize}{\@setfontsize\normalsize{10.5bp}{11.55bp}}% 五号 (10.5*1.1=11.55)
    \renewcommand{\large}{\@setfontsize\large{12bp}{13.2bp}}% 小四 (12*1.1=13.2)
    \renewcommand{\Large}{\@setfontsize\Large{14bp}{15.4bp}}% 四号 (14*1.1=15.4)
    \renewcommand{\LARGE}{\@setfontsize\LARGE{16bp}{17.6bp}}% 三号 (16*1.1=17.6)
    \renewcommand{\huge}{\@setfontsize\huge{18bp}{19.8bp}}% 小二 (18*1.1=19.8)
    \renewcommand{\Huge}{\@setfontsize\Huge{22bp}{24.2bp}}% 二号 (22*1.1=24.2)
}
% 标题字体定义------------------------------------------------------------
\newcommand{\bfsf}{
\ifdefstring{\LW@bfsf}{bf}{\bfseries}{}
\ifdefstring{\LW@bfsf}{sf}{\sffamily}{}
\ifdefstring{\LW@bfsf}{bfsf}{\bfseries\sffamily}{}
}
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
\defbeamertemplate*{frametitle}{LW}[1][left]{%
    \ifbeamercolorempty[bg]{frametitle}{}{\nointerlineskip}%
    \@tempdima=\textwidth%
    \advance\@tempdima by\beamer@leftmargin%
    \advance\@tempdima by\beamer@rightmargin%
    \begin{beamercolorbox}[sep=0.3cm,#1,wd=\the\@tempdima]{frametitle}
        \usebeamerfont{frametitle}%
        \vbox{}\vskip-1ex%
        \if@tempswa\else\csname beamer@fte#1\endcsname\fi%
        \strut\insertframetitle\strut\par%
        {%
          \ifx\insertframesubtitle\@empty%
          \else%
          {\usebeamerfont{framesubtitle}\usebeamercolor[fg]{framesubtitle}\strut\insertframesubtitle\strut\par}%
          \fi
        }%
        \vskip-1ex%
        \if@tempswa\else\vskip-.3cm\fi% set inside beamercolorbox... evil here...
    \end{beamercolorbox}\vskip-1ex%
}
% innner----------------------------------------------------------------
\setbeamertemplate{navigation symbols}{}
\setbeamertemplate{caption}[numbered]
\setbeamertemplate{blocks}[rounded][shadow=true]
\setbeamertemplate{title page}[default][colsep=-4bp,rounded=true,shadow=true]

\newcommand{\LWcircle}{\raisebox{0.2ex}{\tikz{\filldraw (0,0.5) circle [radius=0.075]}}}
\newcommand{\LWsquare}{\raisebox{0.0ex}{\tikz{\filldraw (0,0) rectangle (0.2,0.2)}}}
\newcommand{\LWsquarenum}[1]{\raisebox{-0.1ex}{\tikz{\node[rectangle,rounded corners=3pt,fill=link,text=white,inner sep=2pt,font=\scriptsize] at (0,0) {#1}}}}

\defbeamertemplate*{section in toc}{LW}{\leavevmode\LWsquarenum{\inserttocsectionnumber} \inserttocsection\par}

\defbeamertemplate*{subsection in toc}{LW}{\leavevmode\leftskip=1.5em
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
\setbeamerfont{structure}{family=\bfsf}

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
\captionsetup{
    % labelfont={sf,bf},
    % textfont={sf,bf},
    aboveskip=0pt,
    belowskip=0pt
}
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
            {\markboth{\CTEXthechapter##1}{}}}
        \fancyhead[C]{\leftmark}}
    \fancyfoot[C]{---\ \thepage\ ---}
    \renewcommand{\headrulewidth}{1pt}
}
\pagestyle{headfoot}
% maketitle命令设置------------------------------------------------------
% 原代码见CTAN/macros/latex/base/classes.pdf中7.1 The title部分，修改部分均已注释
\newcommand{\subtitle}[1]{\gdef\@subtitle{#1}} % LW：定义\subtitle命令
\def\@subtitle{} % LW：定义\subtitle命令
\if@titlepage
\renewcommand\maketitle{ % LW：\newcommand修改为\renewcommand
\begin{titlepage}%
    \let\footnotesize\small
    \let\footnoterule\relax
    \let \footnote \thanks
    \null\vfil
    \vskip 60\p@
    \begin{center}%
        {\LARGE\bfsf \@title \par} % LW：增加\bsfs命令
        \vskip 3em%
        % LW：插入\subtitle命令如下
        \ifx\@subtitle\@empty
        \else
            \ifdefstring{\LW@sc}{None}
            {{\Large\itshape \@subtitle \par}}
            {{\Large\textkai \@subtitle \par}}
            \vskip 2em
        \fi
        % LW：插入\subtitle命令如上
        {\large
        \lineskip .75em%
        \begin{tabular}[t]{c}%
            \@author
        \end{tabular}\par}%
        \vskip 1.5em%
        {\large \@date \par}%
    \end{center}\par
    \@thanks
    \vfil\null
\end{titlepage}%
\thispagestyle{plain}  % LW：指定封面后的一页样式
\setcounter{footnote}{0}%
\global\let\thanks\relax
\global\let\maketitle\relax
\global\let\@thanks\@empty
\global\let\@author\@empty
\global\let\@date\@empty
\global\let\@title\@empty
\global\let\@subtitle\@empty % LW：适配\subtitle命令
\global\let\subtitle\relax % LW：适配\subtitle命令
\global\let\title\relax
\global\let\author\relax
\global\let\date\relax
\global\let\and\relax
}
\else
\renewcommand\maketitle{ % LW：\newcommand修改为\renewcommand
\par
\begingroup
    \renewcommand\thefootnote{\@fnsymbol\c@footnote}%
    \def\@makefnmark{\rlap{\@textsuperscript{\normalfont\@thefnmark}}}%
    \long\def\@makefntext##1{\parindent 1em\noindent
        \hb@xt@1.8em{%
    \hss\@textsuperscript{\normalfont\@thefnmark}}##1}
    % LW：删去了\if@twocolumn的设置,只保留了\else,见下
    \newpage
    \global\@topnum\z@   % Prevents figures from going at top of page.
    \@maketitle
    % LW：删去了\if@twocolumn的设置,只保留了\else,见上
    \thispagestyle{plain}\@thanks
\endgroup
\setcounter{footnote}{0}%
\global\let\thanks\relax
\global\let\maketitle\relax
\global\let\@maketitle\relax
\global\let\@thanks\@empty
\global\let\@author\@empty
\global\let\@date\@empty
\global\let\@title\@empty
\global\let\@subtitle\@empty % LW：适配\subtitle命令
\global\let\subtitle\relax % LW：适配\subtitle命令
\global\let\title\relax
\global\let\author\relax
\global\let\date\relax
\global\let\and\relax
}
\def\@maketitle{%
\newpage
\null
\vskip 1em % LW：从2em修改为1em
\begin{center}%
    \let \footnote \thanks
    {\LARGE\bfsf \@title \par} % LW：增加\bsfs命令
    \vskip 1em % LW：从1.5em修改为1em
    % LW：插入\subtitle命令如下
    \ifx\@subtitle\@empty
    \else
        \ifdefstring{\LW@sc}{None}
        {{\Large\itshape \@subtitle \par}}
        {{\Large\textkai \@subtitle \par}}
        \vskip 1em
    \fi
    % LW：插入\subtitle命令如上
    {\large
        \lineskip .5em%
        \begin{tabular}[t]{c}%
            \@author
        \end{tabular}\par}%
    \vskip 1em%
    {\large \@date}%
\end{center}%
\par
\vskip 1.5em}
\fi
% 中英文章节标题设置-------------------------------------------------------
\RequirePackage{titlesec}
\ifdefstring{\LW@sc}{None}{
    \ifdefstring{\LW@cls}{report}{
        \titleformat{\chapter}{\LARGE\bfsf\centering}{\thechapter}{0em}{}[]
        \titlespacing*{\chapter}{0em}{2em}{2em}
        \renewcommand{\thechapter}{\Roman{chapter}. }
    }{}
    \titleformat{\section}{\Large\bfsf}{\thesection}{0em}{}[]
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
}{
    \ifdefstring{\LW@cls}{report}{
        \titleformat{\chapter}{\LARGE\bfsf\centering}{\CTEXthechapter}{0em}{}[]
        \titlespacing*{\chapter}{0em}{2em}{2em}
        \renewcommand{\CTEXthechapter}{\Roman{chapter}. }
        \titleformat{\section}{\Large\bfsf}{\CTEXthesection}{0em}{}[]
        \titlespacing{\section}{0em}{1em}{1em}
    }{
        \titleformat{\section}{\Large\bfsf\centering}{\CTEXthesection}{0em}{}[]
        \titlespacing{\section}{0em}{1em}{1em}
    }    
    \titleformat{\subsection}{\normalsize\bfsf}{\CTEXthesubsection}{0em}{}[]
    \titlespacing{\subsection}{2em}{0.5em}{0.5em}
    \titleformat{\subsubsection}{\normalsize\bfsf}{\CTEXthesubsubsection}{0em}{}[]
    \titlespacing{\subsubsection}{2em}{0.5em}{0.5em}
    \titleformat{\paragraph}[runin]{\normalsize\bfsf}{\CTEXtheparagraph}{0em}{}[]
    \titlespacing*{\paragraph}{0em}{0.5em}{1em}
    \titleformat{\subparagraph}[runin]{\normalsize\bfsf}{\CTEXthesubparagraph}{0em}{}[]
    \titlespacing*{\subparagraph}{2em}{0.5em}{1em}

    \renewcommand{\CTEXthesection}{\arabic{section}. }
    \renewcommand{\CTEXthesubsection}{\arabic{section}.\arabic{subsection}. }
    \renewcommand{\CTEXthesubsubsection}{\arabic{section}.\arabic{subsection}.\arabic{subsubsection}. }
}
}