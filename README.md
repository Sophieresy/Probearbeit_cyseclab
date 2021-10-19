# Aufgabe
[english version](README_en.md)

---

## Kurzbeschreibung

Deine Aufgabe ist es eine Challenge Seite für Schüler zu bauen, welche absichtlich eine reflected XSS Schwachstelle aufweist. Die Aufgabe der Schüler wird es sein, die Schwachstelle auszunutzen und folgenden Javascript Code auszuführen: `alert(1);`.

## Art der Schwachstelle

Die reflected XSS Schwachstelle soll folgendermaßen aussehen:

Auf der Startseite befindet sich ein Gästebuch mit Einträgen (keine Datenbank nötig, Einträge sind vorgefertigt auf der Seite). Außerdem besteht für den Nutzer die Möglichkeit selbst über ein Eingabefeld einen Eintrag hinzuzufügen. Sobald die Eingabe abgeschickt wird, prüft die Seite, ob sich in der Eingabe ein Link befindet (jedes Wort, welches mit http:// oder https:// beginnt, wird hier als Link definiert). Wenn ein Link enthalten ist, wandelt die Seite den Link automatisch in ein a-Tag um, um ihn für Besucher der Seite anklickbar zu machen. 

Der Code für die Umwandlung soll jedoch absichtlich einen Fehler enthalten und die Eingabe ungefiltert in ein neues a-Tag einsetzen, sodass hier ein XSS Angriff möglich ist.

Der fehlerhafte Code könnte folgendermaßen aussehen:

```javascript
new_link = '<a href="' + link_url + '">Link</a>'
```

Wenn dieser Code in die Webseite eingebaut wird, dann ist es hier also möglich, mit einem doppelten Hochkomma aus dem href-Tag zu entkommen und eigenen HTML-Code/Javascript-Code in die Seite einzubetten.

## Was sollst du tun?

Nutze das vorgegebene Gerüst, um die Challenge-Seite zu bauen. Dazu gehört neben der Implementierung der Funktionalität auch die ansprechende Gestaltung der Webseitenoberfläche und eine Hinleitung und abschließende Erklärung der Schwachstelle für die Teilnehmer.

## Was darfst du verwenden?

Grundsätzlich ist die Art und Weise der Umsetzung dieser Aufgabe ganz dir überlassen. Wir haben bereits ein Grundgerüst der Seite aufgesetzt und im Frontend ist bereits Bootstrap als Framework eingebunden. Wenn du möchtest kannst du also gerne Bootstrap für die UI-Gestaltung verwenden, du kannst aber auch das Frontend Framework deiner Wahl benutzen. 

## Bonuspunkte

Es soll keinen Weg geben die Challenge auf eine andere Weise zu lösen. D.h. es soll nicht einfach möglich sein die Entwicklertools des Browsers zu missbrauchen, um die "alert"-Funktion aufzurufen und so die Challenge abzuschließen.

Außerdem werden Lösungen mit ansprechendem Interface und gut formulierten Beschreibungs- und Erklärtexten bevorzugt.