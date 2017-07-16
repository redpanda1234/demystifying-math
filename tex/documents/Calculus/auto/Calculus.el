(TeX-add-style-hook
 "Calculus"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "10pt")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("geometry" "tmargin=1.25in" "lmargin=1in" "rmargin=1in" "bmargin=1in" "paper=letterpaper") ("footmisc" "hang" "flushmargin") ("hyperref" "hidelinks") ("ulem" "normalem")))
   (add-to-list 'LaTeX-verbatim-environments-local "lstlisting")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "lstinline")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "lstinline")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "latex2e"
    "article"
    "art10"
    "geometry"
    "amsmath"
    "amssymb"
    "amsthm"
    "multirow"
    "color"
    "fancyhdr"
    "ifthen"
    "lastpage"
    "relsize"
    "changepage"
    "enumitem"
    "empheq"
    "float"
    "caption"
    "listings"
    "tikz"
    "tikz-qtree"
    "tikz-qtree-compat"
    "footmisc"
    "hyperref"
    "framed"
    "chessboard"
    "skak"
    "ulem"
    "textcomp"
    "pifont"
    "fix-cm"
    "titling"
    "cancel")
   (TeX-add-symbols
    '("cvdots" ["argument"] 0)
    '("mylist" 1)
    '("set" 1)
    '("abs" 1)
    '("irregularcircle" 2)
    "cmark"
    "xmark"
    "isdef"
    "RR"
    "QQ"
    "CC"
    "ZZ"
    "NN"
    "CircleRadius"
    "FrameCommand"
    "multiset"
    "olddef"
    "oldref"
    "firstcirclea"
    "secondcirclea"
    "thirdcirclea"
    "firstcircle"
    "secondcircle"
    "thirdcircle")
   (LaTeX-add-labels
    "fig:sets"
    "fig:intersection"
    "fig:union"
    "eq:big cup"
    "eq:big cap"
    "fig:subset")
   (LaTeX-add-environments
    '("leftbara" LaTeX-env-args ["argument"] 0)
    "definition"
    "theorem"
    "lemma"
    "corollary"
    "axiom"
    "sketch"
    "technique")
   (LaTeX-add-amsthm-newtheorems
    "theorema"
    "corollarya"
    "lemmaa"
    "remark"
    "axioma"
    "definitiona"
    "sketcha"
    "techniquea"
    "scholium"
    "example"))
 :latex)

