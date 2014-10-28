O_DIR    := Output
TEX_O    := --output-directory=$(O_DIR)
CSL      := Template/CSL/ur-magnum-opus-zotero.csl
URMD     := $(wildcard *.ur.md)
B_OPT    := --standalone --latex-engine=xelatex --no-tex-ligatures --number-sections -V header-includes='\setbeamertemplate{bibliography item}{}' --biblio Quellen/Quellen.bib -f markdown -t beamer --biblatex
B_TMPL   := Template/BEAMER/beamer-template.tex
B_TMPLUR := Template/BEAMER/ur-beamer-template.tex
QUIET    := -interaction=batchmode
#QUIET    :=
