kotex-oblivoir
==============

Introduction
------------

This package contains the oblivoir class, a document class based on 
the memoir class for typesetting Korean documents.  kotex-oblivoir 
comes with two sub-packages memhangul-ucs and memhangul-x
that provide interfaces between the memoir class and the Korean typesetting
packages. 

kotex-oblivoir belongs to the ko.TeX, a comprehensive Korean typesetting 
system together with packages kotex-utf, cjk-ko, XeTeX-ko, LuaTeX-ko, and 
kotex-utils.

Usage
-----

Call `oblivoir.cls` with class options as follows:

    \documentclass[<options>]{oblivoir}

# Class options

Oblivoir inherits many options from the memoir and underlying 
Korean typesetting packages in addition to its own class options. 
For a detailed description of the class options, please refer 
to the included documentation (written in Korean).

# Specifying Korean fonts

Specifying Korean fonts in oblivoir class depends on the Korean
typesetting packages being used when compiling a document.

With kotex-utf package, you can use `\SetHangulFonts`, `\SetHanjaFonts`,
`\SetAdhocFonts`.

You can use fontspec package style commands when typesetting Korean
using XeTeX-ko or LuaTeX-ko as follows:

    \setmainfont[<Options>]{<Font Name>}
    \setsansfont[<Options>]{<Font Name>}
    \setmonofont[<Options>]{<Font Name>}
    \setmainhangulfont[<Options>]{FontName}
    \setsanshangulfont[<Options>]{FontName}
    \setmonohangulfont[<Options>]{FontName}
    \setmainhanjafont[<Options>]{FontName}
    \setsanshanjafont[<Options>]{FontName}
    \setmonohanjafont[<Options>]{FontName}

Oblivoir class also has its own commands for specifying Korean fonts.

    \setkormainfont(<Bold>)(<Italic>){<Regular>}
    \setkorsansfont(<Bold>)(<Italic>){<Regular>}
    \setkormonofont{<Mono>}

# Sample document

Please refer to the `oblivoir-test.tex` file provided by this package.

License and copyright
---------------------

kotex-oblivoir is licensed under the LaTeX Project Public 
License (LPPL).

(C) Copyright 2006-2013 Kangsoo Kim <karnes@ktug.org>

Contacts
--------

Please report any errors or suggestions to the package maintainer,
Kihwang Lee <leekh@ktug.org>.

