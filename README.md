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
system together with packages kotex-utf, kotex-plain, kotex-utils,
cjk-ko, xetexko, and luatexko.

Files
-----

### TeXinputs

    oblivoir-base.cls -> tex/latex/kotex-oblivoir/
    oblivoir-xlua.cls -> tex/latex/kotex-oblivoir/
    oblivoir.cls -> tex/latex/kotex-oblivoir/
    xoblivoir.cls -> tex/latex/kotex-oblivoir/
    memhangul-ucs/10_5.sty -> tex/latex/kotex-oblvoir/memhangul-ucs
    memhangul-ucs/fapapersize.sty -> tex/latex/kotex-oblvoir/memhangul-ucs
    memhangul-ucs/hfontsel.sty -> tex/latex/kotex-oblvoir/memhangul-ucs
    memhangul-ucs/hfontspec.nanum -> tex/latex/kotex-oblvoir/memhangul-ucs
    memhangul-ucs/memhangul-common.sty -> tex/latex/kotex-oblvoir/memhangul-ucs
    memhangul-ucs/memhangul-patch.sty -> tex/latex/kotex-oblvoir/memhangul-ucs
    memhangul-ucs/memhangul-ucs.sty -> tex/latex/kotex-oblvoir/memhangul-ucs
    memhangul-ucs/memucs-enumerate.sty -> tex/latex/kotex-oblvoir/memhangul-ucs
    memhangul-ucs/memucs-gremph.sty -> tex/latex/kotex-oblvoir/memhangul-ucs
    memhangul-ucs/memucs-interword.sty -> tex/latex/kotex-oblvoir/memhangul-ucs
    memhangul-ucs/memucs-setspace.sty -> tex/latex/kotex-oblvoir/memhangul-ucs
    memhangul-ucs/nanumfontsel.sty -> tex/latex/kotex-oblvoir/memhangul-ucs
    memhangul-ucs/ob-koreanappendix.sty -> tex/latex/kotex-oblvoir/memhangul-ucs
    memhangul-ucs/ob-nokoreanappendix.sty -> tex/latex/kotex-oblvoir/memhangul-ucs
    memhangul-ucs/ob-toclof.sty -> tex/latex/kotex-oblvoir/memhangul-ucs
    memhangul-x/luatexko-xobfont.sty -> tex/latex/kotex-oblivoir/memhangul-x
    memhangul-x/memhangul-x.sty -> tex/latex/kotex-oblivoir/memhangul-x
    memhangul-x/memucs-interword-x.sty -> tex/latex/kotex-oblivoir/memhangul-x
    memhangul-x/xetexko-var.sty -> tex/latex/kotex-oblivoir/memhangul-x
    memhangul-x/xetexko-xobfont.sty -> tex/latex/kotex-oblivoir/memhangul-x
    memhangul-x/xob-amssymb.sty -> tex/latex/kotex-oblivoir/memhangul-x
    memhangul-x/xob-dotemph.sty -> tex/latex/kotex-oblivoir/memhangul-x
    memhangul-x/xob-hyper.sty -> tex/latex/kotex-oblivoir/memhangul-x
    memhangul-x/xob-paralist.sty -> tex/latex/kotex-oblivoir/memhangul-x

### Documents

    README (this file) -> doc/latex/kotex-oblivoir/
    oblivoir-simpledoc.pdf -> doc/latex/kotex-oblivoir/
    oblivoir-simpledoc.tex -> doc/latex/kotex-oblivoir/
    oblivoir-text.tex -> doc/latex/kotex-oblivoir/

Usage
-----

Call `oblivoir.cls` with class options as follows:

    \documentclass[<options>]{oblivoir}

### Class options

Oblivoir inherits many options from the memoir and underlying 
Korean typesetting packages in addition to its own class options. 
For a detailed description of the class options, please refer 
to the included documentation (written in Korean).

### Specifying Korean fonts

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

### Sample document

Please refer to the `oblivoir-test.tex` file provided by this package.

License
-------

kotex-oblivoir is licensed under the LaTeX Project Public 
License (LPPL).

Contacts
--------

Please report any errors or suggestions to the package maintainer,
Kihwang Lee <leekh@ktug.org>.

