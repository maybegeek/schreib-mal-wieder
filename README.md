schreib-mal-wieder
==================

postcards for special occasions -- Akzidenz und so :)


# Voraussetzungen

* pandoc
* LaTeX

# wie?

Alles einfach in eine Datei namens ```Spezifischer-Titel.pst.md```. Darin gibt es die Zeile _PstFigur_ welche mit der gewünschten, vorhandenen Form versehen wird.

* Bei gewünschter Form sollte man diese angeben und das makefile ausführen ```make```
* wünscht man alle Formen auf einmal zu erstellen geht dies auch: ```make postkarten-alle```

# Befehlszeile

```pandoc Irgendwas.pst.md --latex-engine=xelatex --no-tex-ligatures --template=Template/schreib-mal-wieder-template.tex -o Irgendwas.pst.pdf```

# Makefile

Später sollte mit makefile das Ganze automatisiert werden. Ein Output-Ordner dient dann als Aufbewahrungsort für die PDF-Dateien (versehen mit Zeitstempel). Ob alle Figuren auf einmal erzeugt werden sollten ... ich denke eher nicht.

# Adressat als Dateiname

evtl. hilft hierfür das weiter, ansonsten wird eher die pragmatische Lösung bevorzugt, wonach der gegebene Dateiname vor ```*.pst.md``` als Dateinamefragment der Zieldatei verwendet wird. Dennoch hier eine Möglichkeit:

```
VARIABLE=$(sed -e '/^PstAnName/!d;s/^PstAnName:[^:\/\/]/PstAnName="/g;s/$/"/g;s/\s/-/g' DieDatei.pst.md | cat)
echo "$VARIABLE"
```
