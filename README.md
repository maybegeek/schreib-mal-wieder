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

```pandoc --standalone --latex-engine=xelatex --no-tex-ligatures -f markdown --template=Template/schreib-mal-wieder-template.tex -BTemplate/normal.tex InputName.pst.md -o OutputName.pdf```

```pandoc --standalone --latex-engine=xelatex --no-tex-ligatures -f markdown --template=Template/schreib-mal-wieder-template.tex -BTemplate/duplex.tex InputName.pst.md -o OutputName.pdf```

# Makefile

Das makefile erstellt in der Nutzung ```make``` eine Umsetzung zum Falten und eine im Duplex-Druck. Zusätzlich können alle Figuren auf einmal erstellt werden durch den Aufruf: ```make postkarten-alle```. Ausgegeben werden die Dateien im Ordner ```Output```.

# Adressat als Dateiname

evtl. hilft hierfür das weiter, ansonsten wird eher die pragmatische Lösung bevorzugt, wonach der gegebene Dateiname vor ```*.pst.md``` als Dateinamefragment der Zieldatei verwendet wird. Dennoch hier eine Möglichkeit:

```
VARIABLE=$(sed -e '/^PstAnName/!d;s/^PstAnName:[^:\/\/]/PstAnName="/g;s/$/"/g;s/\s/-/g' DieDatei.pst.md | cat)
echo "$VARIABLE"
```
