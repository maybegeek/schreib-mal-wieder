# Shapes basteln

## Umwandlung ```*.eps``` nach ```*.fig```

Wir brauchen eine Vektordatei. Entweder diese liegt vor, wir erstellen eine (bspw. mit Inkscape), oder wir vektorisieren (potrace/Inkscape). Um ordentlich nach ```*.fig``` umzuwandeln wollen wir als Ausgangsformat eine eps-Datei. Die Umwandlung von selbiger ins fig-Format geht folgendermaßen:

* ```pstoedit -f fig Irgendeine-Vektorgrafik.eps > irgendwas.fig```

## Bearbeitung der ```*.fig```-Datei mit xfig

Jetzt wird es historisch. Mit dem Programm _xfig_ bearbeiten wir unsere eps Datei. Öffnen der Datei, hernach wählen wir den Editiermodus und klicken den Bereich welcher später Container für Text sein soll an einem der Randpunkte an. Im erscheinenden Dialog fügen wir im Kommentarfeld ein ```+``` ein, für Bereiche welche sich ind er Form befinden, die aber nicht als Text-Container verwendet werden sollen geben wir ```-``` ein. Wir speichern unsere Änderungen, fertig.

## Umwandlung der ```*.fig``` nach ```*.shape```

Mithilfe der Software _transfig_ können wir nun noch unsere bearbeitete fig-Datei in eine Vorlage für LaTeX umwandeln.

* ```fig2dev -L shape -n irgendwas irgendwas.fig irgendwas.shape```
