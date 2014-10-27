schreib-mal-wieder
==================

postcards for special occasion: Akzidenz und so : )


# Voraussetzungen

* pandoc
* LaTeX

# Befehlszeile

```pandoc DiePostkarte.md --latex-engine=xelatex --template=Template/schreib-mal-wieder-template.tex -o DiePostkarte.pdf```

# Makefile

Später sollte mit makefile das Ganze automatisiert werden. Ein Output-Ordner dient dann als Aufbewahrungsort für die PDF-Dateien (versehen mit Zeitstempel). Ob alle Figuren auf einmal erzeugt werden sollten ... ich denke eher nicht.
