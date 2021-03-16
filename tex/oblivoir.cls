%% File `oblivoir.cls`
%%
%% (C) Copyright 2006-2021 Kangsoo Kim <karnes at ktug org>
%%
%% This work may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3c
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%  http://www.latex-project.org/lppl.txt
%% and version 1.3c or later is part of all distributions of LaTeX
%% version 2006/05/20 or later.
%%
\ProvidesClass{oblivoir}[2021/03/15 v3.0.1]

\RequirePackage{xkeyval}
\RequirePackage{xparse}

\newif\if@CJK\@CJKfalse
\DeclareOptionX{cjk}[]{\@CJKtrue}
\DeclareOptionX{dhucs}[]{\@CJKfalse}
%%%
%%% [fontspec] option introduced
\DeclareOptionX{fontspec}[]{\PassOptionsToPackage{{#1}}{fontspec}}
\DeclareOptionX{hyperref}[]{\PassOptionsToPackage{#1}{hyperref}}
\DeclareOptionX{xcolor}[]{\PassOptionsToPackage{#1}{xcolor}}
\DeclareOptionX{chapter}[]{}

\ProcessOptionsX

%%% ifluaorxetex.sty
\RequirePackage{iftex}

\newif\ifLuaOrXeTeX
%\ifXeTeX\global\LuaOrXeTeXtrue
%	\else\ifLuaTeX\global\LuaOrXeTeXtrue
%	\else\global\LuaOrXeTeXfalse
%\fi\fi
\ExplSyntaxOn
\bool_if:nTF { \sys_if_engine_xetex_p: || \sys_if_engine_luatex_p: }
{
	\LuaOrXeTeXtrue
}
{
	\LuaOrXeTeXfalse
}
\ExplSyntaxOff


\ifLuaOrXeTeX
\LoadClassWithOptions{oblivoir-xl}
%  \ifLuaTeX
%		\typeout{HANGUL DRIVER: luatexko}
%  \else
%		\typeout{HANGUL DRIVER: xetexko}
%  \fi
\else
  \if@CJK
    \LoadClassWithOptions{oblivoir-xl}
	\typeout{HANGUL DRIVER: cjk-ko}
  \else
    \LoadClassWithOptions{oblivoir-utf}
	\typeout{HANGUL DRIVER: kotex-utf}
  \fi
\fi

\endinput
