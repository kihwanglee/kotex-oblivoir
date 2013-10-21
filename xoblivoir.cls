%% File `xoblivoir.cls`
%%
%% (C) Copyright 2006-2013 Kangsoo Kim <karnes at ktug org>
%%
%% This work may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3c
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%  http://www.latex-project.org/lppl.txt
%% and version 1.3c or later is part of all distributions of LaTeX
%% version 2006/05/20 or later.
%%
\ProvidesClass{xoblivoir}[2013/10/26]

\RequirePackage{xkeyval}

\newif\if@CJK\@CJKfalse
\DeclareOptionX{cjk}[]{\@CJKtrue}
\DeclareOptionX{dhucs}[]{\@CJKfalse}
%%%
%%% [fontspec] option introduced
\DeclareOptionX{fontspec}[]{\PassOptionsToPackage{{#1}}{fontspec}}
\DeclareOptionX{hyperref}[]{\PassOptionsToPackage{#1}{hyperref}}
\DeclareOptionX{xcolor}[]{\PassOptionsToPackage{#1}{xcolor}}

\ProcessOptionsX

%%% ifluaorxetex.sty
\RequirePackage{iftex}

\newif\ifLuaOrXeTeX
\ifXeTeX\global\LuaOrXeTeXtrue
	\else\ifLuaTeX\global\LuaOrXeTeXtrue
	\else\global\LuaOrXeTeXfalse
\fi\fi

\ifLuaOrXeTeX
\LoadClassWithOptions{oblivoir-xlua}
\typeout{HANGUL DRIVER: xetexko/luatexko running}
\else
  \if@CJK
    \LoadClassWithOptions{oblivoir-xlua}
	\typeout{HANGUL DRIVER: cjk-ko running}
  \else
    \LoadClassWithOptions{oblivoir-base}
	\typeout{HANGUL DRIVER: dhucs running}
  \fi
\fi

\endinput
