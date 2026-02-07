% Required Engine: XeLaTeX, Option:
% cls = [article,beamer]
% sc = [None,Adobe,Fandol,Founder,ZhongYi] `None` wihtout CTEX
% en = [None,NCM,NCMS,TGPX,TGTX,TGNCM,Source,Roboto,APC,ATC,ACC]
% ma = [None,STIX,NCM,NCMS,TGP,TGT]
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{LinkWilder}[2026/02/02/20/40 v1.0]
% 文档类选项命令定义=============================================================
\RequirePackage{kvoptions}
\RequirePackage{etoolbox}

\SetupKeyvalOptions{family=LinkWilder,prefix=LinkWilder@}

\DeclareStringOption[article]{cls}
\DeclareStringOption[Founder]{sc}
\DeclareStringOption[ATC]{en}
\DeclareStringOption[NCM]{ma}
% 根据选项设置文档类=============================================================
\newcommand{\setclswithoption}{
% article---------------------------------------------------------------------
\ifdefstring{\LinkWilder@cls}{article}{%
    \ifdefstring{\LinkWilder@sc}{None}
    {\LoadClass{article}}{\LoadClass[fontset=none]{ctexart}}
}{}
% beamer----------------------------------------------------------------------
\ifdefstring{\LinkWilder@cls}{beamer}{%
    \ifdefstring{\LinkWilder@sc}{None}
    {\LoadClass{beamer}}{\LoadClass[fontset=none]{ctexbeamer}}
}{}
}
% 根据选项设置对应字体============================================================
% 中文字体命令定义===============================================================
\newcommand{\setscfontwithoption}{
    % None--------------------------------------------------------------------
    \ifdefstring{\LinkWilder@sc}{None}{}{}
    % Adobe-------------------------------------------------------------------
    \ifdefstring{\LinkWilder@sc}{Adobe}{
    \ifdefstring{\LinkWilder@cls}{beamer}{
        % Adobebeamer---------------------------------------------------------
        \setCJKmainfont[
            Extension = .otf,
            UprightFont = *,
            BoldFont = AdobeHeitiStd-Regular,
            ItalicFont = AdobeFangsongStd-Regular
        ]{AdobeKaitiStd-Regular}
        \setCJKsansfont[
            Extension = .otf,
            UprightFont = *,
            BoldFont = *,
            ItalicFont = *
        ]{AdobeHeitiStd-Regular}
        \setCJKmonofont[
            Extension = .otf,
            UprightFont = *,
            BoldFont = *,
            ItalicFont = *
        ]{AdobeFangsongStd-Regular}
    }{
        % Adobe---------------------------------------------------------------
        \setCJKmainfont[
            Extension = .otf,
            UprightFont = *,
            UprightFeatures = {FakeBold = 1.0},
            BoldFont = AdobeHeitiStd-Regular,
            ItalicFont = AdobeKaitiStd-Regular
        ]{AdobeSongStd-Light}
        \setCJKsansfont[
            Extension = .otf,
            UprightFont = *,
            BoldFont = *,
            ItalicFont = *
        ]{AdobeHeitiStd-Regular}
        \setCJKmonofont[
            Extension = .otf,
            UprightFont = *,
            BoldFont = *,
            ItalicFont = *
        ]{AdobeFangsongStd-Regular}
        \newCJKfontfamily\Kai[
            Extension = .otf,
            UprightFont = *
        ]{AdobeKaitiStd-Regular}
        \newCJKfontfamily\Fang[
            Extension = .otf,
            UprightFont = *
        ]{AdobeKaitiStd-Regular}
    }}{}
    % Fandol------------------------------------------------------------------
    \ifdefstring{\LinkWilder@sc}{Fandol}{
    \ifdefstring{\LinkWilder@cls}{beamer}{
        % Fandolbeamer--------------------------------------------------------
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
    }{
        % Fandol--------------------------------------------------------------
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
    % Founder-----------------------------------------------------------------
    \ifdefstring{\LinkWilder@sc}{Founder}{
    \ifdefstring{\LinkWilder@cls}{beamer}{
        % Founderbeamer-------------------------------------------------------
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
    }{
        % Founder-------------------------------------------------------------
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
    % ZhongYi-----------------------------------------------------------------
    \ifdefstring{\LinkWilder@sc}{ZhongYi}{
    \ifdefstring{\LinkWilder@cls}{beamer}{
        % ZhongYibeamer-------------------------------------------------------
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
    }{
        % ZhongYi-------------------------------------------------------------
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
}
% 英文字体命令定义===============================================================
\newcommand{\setenfontwithoption}{
    % None--------------------------------------------------------------------
    \ifdefstring{\LinkWilder@en}{None}{}{}
    % NewComputerModernBook---------------------------------------------------
    \ifdefstring{\LinkWilder@en}{NCM}{
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
    % NewComputerModernSansBook-----------------------------------------------
    \ifdefstring{\LinkWilder@en}{NCMS}{
        \setmainfont[
            Extension = .otf,
            UprightFont = *-Book,
            BoldFont = *-Bold,
            ItalicFont = *-BookOblique,
            BoldItalicFont = *-BoldOblique
        ]{NewCMSans10}
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
        ]{NewCMSans10}
    }{}
    % TeXGyreHeros & TeXGyrePagellaX & TeXGyreCursor--------------------------
    \ifdefstring{\LinkWilder@en}{TGPX}{
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
    % TeXGyreHeros & TeXGyreTermesX & TeXGyreCursor---------------------------
    \ifdefstring{\LinkWilder@en}{TGTX}{
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
    % TeXGyreHeros & NewComputerModernSansBook & TeXGyreCursor----------------
    \ifdefstring{\LinkWilder@en}{TGNCM}{
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
            UprightFont = *-Regular
        ]{NewCMSans10}
    }{}
    % SourceSansPro & SourceSerifPro & SourceCodePro----------------
    \ifdefstring{\LinkWilder@en}{Source}{
        \setmainfont[
            Extension = .otf,
            UprightFont = *-Regular,
            BoldFont = *-Bold,
            ItalicFont = *-RegularIt,
            BoldItalicFont = *-BoldIt
        ]{SourceSerifPro}
        \setsansfont[
            Extension = .otf,
            UprightFont = *-Regular,
            BoldFont = *-Bold,
            ItalicFont = *-RegularIt,
            BoldItalicFont = *-BoldIt
        ]{SourceSansPro}
        \setmonofont[
            Extension = .otf,
            UprightFont = *-Regular,
            BoldFont = *-Bold,
            ItalicFont = *-RegularIt,
            BoldItalicFont = *-BoldIt
        ]{SourceCodePro}
        \newfontfamily\EngMain[
            Extension = .otf,
            UprightFont = *-Regular
        ]{SourceSerifPro}
    }{}
    % Roboto & RobotoSerif & RobotoMono----------------
    \ifdefstring{\LinkWilder@en}{Roboto}{
        \setmainfont[
            Extension = .otf,
            UprightFont = *-Regular,
            BoldFont = *-Bold,
            ItalicFont = *-Italic,
            BoldItalicFont = *-BoldItalic
        ]{RobotoSerif}
        \setsansfont[
            Extension = .otf,
            UprightFont = *-Regular,
            BoldFont = *-Bold,
            ItalicFont = *-Italic,
            BoldItalicFont = *-BoldItalic
        ]{Roboto}
        \setmonofont[
            Extension = .otf,
            UprightFont = *-Regular,
            BoldFont = *-Bold,
            ItalicFont = *-Italic,
            BoldItalicFont = *-BoldItalic
        ]{RobotoMono}
        \newfontfamily\EngMain[
            Extension = .otf,
            UprightFont = *-Regular
        ]{RobotoSerif}
    }{}
    % Arial & Palatino Linotype & Courier New---------------------------------
    \ifdefstring{\LinkWilder@en}{APC}{
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
    % Arial & Times New Roman & Courier New-----------------------------------
    \ifdefstring{\LinkWilder@en}{ATC}{
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
    % Arial & Calibri & Courier New-------------------------------------------
    \ifdefstring{\LinkWilder@en}{ACC}{
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
}
% 数学字体命令定义===============================================================
\newcommand{\setmathfontwithoption}{
    % None--------------------------------------------------------------------
    \ifdefstring{\LinkWilder@ma}{None}{}{}
    % STIXTwoMath
    \ifdefstring{\LinkWilder@ma}{STIX}{
        \setmathfont[Extension = .otf]{STIXTwoMath-Regular}
    }{}
    % NewCMMath-Book----------------------------------------------------------
    \ifdefstring{\LinkWilder@ma}{NCM}{
        \setmathfont[Extension = .otf]{NewCMMath-Book}
    }{}
    % NewCMSansMath-----------------------------------------------------------
    \ifdefstring{\LinkWilder@ma}{NCMS}{
        \setmathfont[Extension = .otf]{NewCMSansMath-Regular}
    }{}
    % LibertinusMath----------------------------------------------------------
    \ifdefstring{\LinkWilder@ma}{LT}{
        \setmathfont[Extension = .otf]{LibertinusMath-Regular}
    }{}
    % TeXGyrePagella----------------------------------------------------------
    \ifdefstring{\LinkWilder@ma}{TGP}{
        \setmathfont[Extension = .otf]{texgyrepagella-math}
    }{}
    % TeXGyreTermes-----------------------------------------------------------
    \ifdefstring{\LinkWilder@ma}{TGT}{
        \setmathfont[Extension = .otf]{texgyretermes-math}
    }{}
    % Test--------------------------------------------------------------------
    \ifdefstring{\LinkWilder@ma}{T}{
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
}
% 处理选项======================================================================
\ProcessKeyvalOptions*

\setclswithoption
\RequirePackage{fontspec}
\setscfontwithoption
\setenfontwithoption
\RequirePackage{unicode-math}
\setmathfontwithoption
% 字号命令设置------------------------------------------------------------------
\ifdefstring{\LinkWilder@sc}{None}{
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
% 文档类样式设置=================================================================
\RequirePackage{tikz}
\RequirePackage{geometry}
% beamer======================================================================
\ifdefstring{\LinkWilder@cls}{beamer}{%
\geometry{paperwidth=160mm, paperheight=100mm}
% 文字两端对齐而非左对齐
\renewcommand{\raggedright}{\leftskip=0pt \rightskip=0pt plus 0cm}
% outer-----------------------------------------------------------------------
% \useoutertheme{infolines} work as follow:
\setbeamertemplate{page number in head/foot}[totalframenumber]
\defbeamertemplate*{footline}{infolines theme}{%
\leavevmode%
\hbox{%
\begin{beamercolorbox}[wd=.25\paperwidth,ht=2.25ex,dp=1ex,center]{author in head/foot}%
    \usebeamerfont{author in head/foot}\insertshortauthor\expandafter\ifblank\expandafter
    {\beamer@shortinstitute}{}{~~(\insertshortinstitute)}
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
\setbeamersize{text margin left=1em,text margin right=1em}
% \useoutertheme[subsection=false]{miniframes} work as follow:
\defbeamertemplate*{headline}{miniframes theme}{%
\begin{beamercolorbox}{section in head/foot}
    \vskip2.5ex
    \vskip-\baselineskip
    \insertnavigation{\paperwidth}%
    \vskip1.125ex
\end{beamercolorbox}%
}
% innner----------------------------------------------------------------------
\setbeamertemplate{navigation symbols}{}
\setbeamertemplate{caption}[numbered]
% \useinnertheme[shadow=true]{rounded} work as follow:
\setbeamertemplate{title page}[default][colsep=-4bp,rounded=true,shadow=true]
\setbeamertemplate{blocks}[rounded][shadow=true]
% \useinnertheme{circles} work as follow:
\setbeamertemplate{itemize item}{\raisebox{0.2ex}{\tikz{\filldraw (0,0.5) circle [radius=0.075]}}}
\setbeamertemplate{enumerate item}{\raisebox{-0.5ex}{\tikz{\filldraw (0,0.0) circle [radius=0.15] node[white, font=\scriptsize] {\insertenumlabel}}}}
\setbeamertemplate{sections/subsections in toc}{\raisebox{-0.5ex}{\tikz{\filldraw (0,0) circle [radius=0.175] node[white, font=\footnotesize] {\inserttocsectionnumber}}} \inserttocsection\\}
% font------------------------------------------------------------------------
% \usefonttheme[stillsansseriflarge]{serif} work as follow:
\def\familydefault{\rmdefault}
\def\mathfamilydefault{\rmdefault}
\setbeamerfont{tiny structure}{family=\rmfamily}
\setbeamerfont{structure}{family=\sffamily}
% color-----------------------------------------------------------------------
\definecolor{lyn}{rgb}{0.1,0.2,0.2}
\setbeamercolor{structure}{fg=lyn}
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
}{}
% article=====================================================================
\ifdefstring{\LinkWilder@cls}{article}{%
% 页边距设置--------------------------------------------------------------------
\geometry{margin=3cm,headheight=1cm,headsep=0.5cm,footskip=1.5cm}
% 页眉页脚设置------------------------------------------------------------------
\RequirePackage{fancyhdr}
\RequirePackage{authoraftertitle}
\fancypagestyle{plain}{
    \fancyhf{}
    \fancyfoot[C]{—\ \thepage\ —}
    \renewcommand{\headrulewidth}{0pt}
}
\fancypagestyle{headfoot}{
    \fancyhf{}
    \fancyfoot[C]{—\ \thepage\ —}
    \fancyhead[C]{\MyTitle}
    \renewcommand{\headrulewidth}{1pt}
}
\pagestyle{headfoot}
% 字体族命令定义-----------------------------------------------------------------
\ifdefstring{\LinkWilder@sc}{None}{}{
    \newcommand{\textkai}[1]{{\Kai\EngMain #1}}
    \newcommand{\textfang}[1]{{\Fang\EngMain #1}}
}
% maketitle命令设置-------------------------------------------------------------
\newcommand{\subtitle}[1]{\gdef\@subtitle{#1}}
\def\@subtitle{}
\def\@maketitle{
    \newpage\null\vskip 1em
    \begin{center}
    \let \footnote \thanks
    {\LARGE\sffamily \@title \par} \vskip 1em
    \ifx\@subtitle\@empty
    \else
        \ifdefstring{\LinkWilder@sc}{None}
        {{\Large\itshape \@subtitle \par}}
        {{\Large\textkai \@subtitle \par}}
        \vskip 1em
    \fi
    {\large\lineskip .5em
        \begin{tabular}[t]{c}
            \@author
        \end{tabular}\par} \vskip 1em
    {\large \@date}
    \end{center}\par\vskip 1em}
% abstract环境设置--------------------------------------------------------------
\renewenvironment{abstract}{
\begin{center}
    {\sffamily \abstractname\vspace{-0.5em}}
\end{center}
\quotation}{\endquotation}
% appendix命令设置--------------------------------------------------------------
\renewcommand{\appendix}[1]{
\setcounter{section}{0}
\begin{center}
{\huge\sffamily #1 \par} \vskip 1em
\end{center}
}
% 中英文章节标题设置-------------------------------------------------------------
\RequirePackage{titlesec}
\ifdefstring{\LinkWilder@sc}{None}{
    \titleformat{\section}{\Large\sffamily}{\thesection}{0em}{}[]
    \titlespacing*{\section}{0em}{1em}{1em}
    \titleformat{\subsection}{\normalsize\sffamily}{\thesubsection}{0em}{}[]
    \titlespacing*{\subsection}{0em}{0.5em}{0.5em}
    \titleformat{\subsubsection}{\normalsize\sffamily}{\thesubsubsection}{0em}{}[]
    \titlespacing*{\subsubsection}{0em}{0.5em}{0.5em}
    \titleformat{\paragraph}[runin]{\normalsize\sffamily}{\theparagraph}{0em}{}[]
    \titlespacing*{\paragraph}{0em}{0.5em}{1em}
    \titleformat{\subparagraph}[runin]{\normalsize\sffamily}{\theparagraph}{0em}{}[]
    \titlespacing*{\subparagraph}{2em}{0.5em}{1em}
    
    \renewcommand{\thesection}{\arabic{section}. }
    \renewcommand{\thesubsection}{\arabic{section}.\arabic{subsection}. }
    \renewcommand{\thesubsubsection}{\arabic{section}.\arabic{subsection}.\arabic{subsubsection}. }
}{
    \titleformat{\section}{\Large\sffamily\centering}{\CTEXthesection}{0em}{}[]
    \titlespacing{\section}{0em}{1em}{1em}
    \titleformat{\subsection}{\normalsize\sffamily}{\CTEXthesubsection}{0em}{}[]
    \titlespacing{\subsection}{2em}{0.5em}{0.5em}
    \titleformat{\subsubsection}{\normalsize\sffamily}{\CTEXthesubsubsection}{0em}{}[]
    \titlespacing{\subsubsection}{2em}{0.5em}{0.5em}
    \titleformat{\paragraph}[runin]{\normalsize\sffamily}{\CTEXtheparagraph}{0em}{}[]
    \titlespacing*{\paragraph}{0em}{0.5em}{1em}
    \titleformat{\subparagraph}[runin]{\normalsize\sffamily}{\CTEXthesubparagraph}{0em}{}[]
    \titlespacing*{\subparagraph}{2em}{0.5em}{1em}
    
    \renewcommand{\CTEXthesection}{\chinese{section}、}
    \renewcommand{\CTEXthesubsection}{（\chinese{subsection}）}
    \renewcommand{\CTEXthesubsubsection}{\arabic{subsubsection}. }
}
}
