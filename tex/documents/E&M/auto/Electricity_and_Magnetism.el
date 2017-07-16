(TeX-add-style-hook
 "Electricity_and_Magnetism"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "10pt")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("geometry" "tmargin=1.25in" "lmargin=1in" "rmargin=1in" "bmargin=1in" "paper=letterpaper") ("footmisc" "hang" "flushmargin") ("hyperref" "hidelinks") ("ulem" "normalem") ("datetime" "yyyymmdd" "hhmmss")))
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
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
    "tikz"
    "tikz-qtree"
    "tikz-qtree-compat"
    "footmisc"
    "hyperref"
    "framed"
    "skak"
    "ulem"
    "textcomp"
    "pifont"
    "fix-cm"
    "titling"
    "datetime"
    "parskip"
    "siunitx"
    "cancel")
   (TeX-add-symbols
    '("cvdots" ["argument"] 0)
    '("abs" 1)
    '("irregularcircle" 2)
    "cmark"
    "xmark"
    "FrameCommand"
    "olddef"
    "oldref")
   (LaTeX-add-environments
    '("leftbara" LaTeX-env-args ["argument"] 0)
    "definition"
    "sketch"
    "technique"
    "law")
   (LaTeX-add-amsthm-newtheorems
    "remark"
    "definitiona"
    "sketcha"
    "techniquea"
    "example"))
 :latex)

