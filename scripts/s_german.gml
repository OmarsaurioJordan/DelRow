// arg0: ind de dialogo
// ret: str del dialogo

switch argument0 {

// para objeto txt
case 0:
return "Name oder registrierte E-Mail";
case 1:
return "Passwort zur Eingabe";
case 2:
return "Neues Passwort (optional)";
case 3:
return "E-Mail, um ein Konto zu erstellen";
case 4:
return "Dein Benutzername";
case 5:
return "Name oder E-Mail-Adresse für die Suche";
case 6:
return "Freier Text";

// para GUI
case 100:
return "Warnung: Achten Sie darauf, Ihr Passwort nicht für wichtige Netzwerke zu verwenden (geringe Sicherheit).";
case 101:
return "German";
case 102:
return "Web + Soft";
case 103:
return "Kein Internetverbindungsfehler";
case 104:
return "Reg:";
case 105:
return "Mod:";
case 106:
return "Handlung:";
case 107:
return "Jan.";
case 108:
return "Feb.";
case 109:
return "Meer";
case 110:
return "Apr.";
case 111:
return "kann";
case 112:
return "Jun";
case 113:
return "Jul";
case 114:
return "Aug.";
case 115:
return "Sep.";
case 116:
return "Okt.";
case 117:
return "Nov.";
case 118:
return "Dez.";
case 119:
return "Widder";
case 120:
return "Stier";
case 121:
return "Zwillinge";
case 122:
return "Krebs";
case 123:
return "Löwe";
case 124:
return "Jungfrau";
case 125:
return "Waage";
case 126:
return "Skorpion";
case 127:
return "Schütze";
case 128:
return "Steinbock";
case 129:
return "Aquarium";
case 130:
return "Fische";
case 131:
return "Jedermann";
case 132:
return "Nur mit langen Texten";
case 133:
return "Erst kürzlich aktiv";
case 134:
return "Von der ganzen Welt";
case 135:
return "Warnung Sie müssen für die automatische Suche angemeldet sein";
case 136:
return "Familie";
case 137:
return "Farmer";
case 138:
return "Koch";
case 139:
return "Handwerker";
case 140:
return "Bergmann";
case 141:
return "Schmied";
case 142:
return "Arzt";
case 143:
return "Führer";
case 144:
return "Verteidiger";
case 145:
return "Krieger";
case 146:
return "Hobel";
case 147:
return "Zauberer";
case 148:
return "Priester";
case 149:
return "Künstler";
case 150:
return "Athlet";
case 151:
return "Clown";
case 152:
return "Begleiter";
case 153:
return "Geschäftsmann";
case 154:
return "Reiniger";
case 155:
return "Hippie";
case 156:
return "Dompteur";
case 157:
return "Pilot";
case 158:
return "Paketzusteller";
case 159:
return "Schriftsteller";
case 160:
return "Techniker";
case 161:
return "Architekt";
case 162:
return "Attentäter";
case 163:
return "Wissenschaftlich";
case 164:
return "Rollen";
case 165:
return "Zonen";
case 166:
return "Emotionen";
case 167:
return "Tierkreis";
case 168:
return "Fem";
case 169:
return "Wat";
case 170:
return "Gro";
case 171:
return "Luft";
case 172:
return "Schlecht";
case 173:
return "Neu";
case 174:
return "Schmiere";
case 175:
return "Profi";
case 176:
return "Durchschnittlich";
case 177:
return "Offiziell";
case 178:
return "Aufzeichnung";
case 179:
return "Wöchentlich:";
case 180:
return "Gesamt:";
case 181:
return "Warnung Sie müssen angemeldet sein, um eine offizielle Simulation durchführen zu können";

// para nombre de zona
case 200:
return "Nordamerika (Kanada)";
case 201:
return "Nordamerika (USA)";
case 202:
return "Nordamerika (Mexiko)";
case 203:
return "Südamerika (Kolumbien)";
case 204:
return "Südamerika (Brasilien)";
case 205:
return "Südamerika (Argentinien)";
case 206:
return "Europa (Spanien)";
case 207:
return "Europa (England)";
case 208:
return "Europa (Deutschland)";
case 209:
return "Europa (Russland)";
case 210:
return "Osten (Arabien)";
case 211:
return "Osten (Indien)";
case 212:
return "Osten (China)";
case 213:
return "Afrika (Ägypten)";
case 214:
return "Afrika (Kongo)";
case 215:
return "Afrika (Südafrika)";
case 216:
return "Ozeanien (Australien)";
case 217:
return "Nordamerika";
case 218:
return "Südamerika";
case 219:
return "Europa";
case 220:
return "Osten";
case 221:
return "Afrika";
case 222:
return "Welt (alle)";

// para nombres de comportamientos
case 300:
return "Verteidige dein Land, geh nicht";
case 301:
return "Greife ein zufälliges Land an";
case 302:
return "Greife das stärkste Land an";
case 303:
return "Greife das schwächste Land an";
case 304:
return "Greife das nächste Land an";
case 305:
return "Bleib in der Gruppe, folge der Gruppe";
case 306:
return "Folgen Sie einem anderen zufälligen Bürger";

// mensajes HTTP
case 400:
return "Unbekannter Fehler";
case 401:
return "Serververbindungsfehler";
case 402:
return "Server-Datenbankfehler";
case 403:
return "Fehler App-Version ist unangemessen";
case 404:
return "Fehler Unzureichende Parameter";
case 405:
return "Serveranforderungsfehler";
case 406:
return "Warnung Benutzername existiert bereits";
case 407:
return "Warnung Was Sie gesucht haben, wurde nicht gefunden";
case 408:
return "Warnung Sie müssen einmal pro Stunde bearbeiten";
case 409:
return "Erfolg Registriert, überprüfen Sie Ihre E-Mails";
case 410:
return "Warnung Bitte geben Sie eine gültige E-Mail-Adresse oder einen gültigen Namen ein";
case 411:
return "Warnung Das Passwort muss mindestens 6 Zeichen lang sein";
case 412:
return "Erfolg Aktualisierte Informationen";
case 413:
return "Warnung Bitte aktualisieren Sie die Daten auf der Registerkarte Flag";

// titulos de los temas del libro
case 500:
return "Über DelRow";
case 501:
return "Anmelden und registrieren";
case 502:
return "Datenbehandlung";
case 503:
return "Profilsymbole";
case 504:
return "Profilausgabe";
case 505:
return "Profilsuche";
case 506:
return "Familienheim)";
case 507:
return "Ernte (Bauer)";
case 508:
return "Bäckerei (Koch)";
case 509:
return "Schneiderei (Handwerker)";
case 510:
return "Meins (Bergmann)";
case 511:
return "Metallarbeiten (Schmied)";
case 512:
return "Krankenhaus (Arzt)";
case 513:
return "Forum (Leiter)";
case 514:
return "Turm (Verteidiger)";
case 515:
return "Kaserne (Krieger)";
case 516:
return "Friedhof (Cepulturero)";
case 517:
return "Ritual (Zauberer)";
case 518:
return "Tempel (Priester)";
case 519:
return "Konservatorium (Künstler)";
case 520:
return "Fitnessstudio (Athlet)";
case 521:
return "Spiele (Clown)";
case 522:
return "Motel (Begleiter)";
case 523:
return "Markthändler)";
case 524:
return "Müll (Reiniger)";
case 525:
return "Park (Hippie)";
case 526:
return "Cattery (Zahmer)";
case 527:
return "Hafen (Pilot)";
case 528:
return "Messenger (Messenger)";
case 529:
return "Bibliothek (Schriftsteller)";
case 530:
return "Turbine (Ingenieur)";
case 531:
return "Gebäude (Architekt)";
case 532:
return "Bar (Killer)";
case 533:
return "Wissenschaftliches Labor)";
case 534:
return "Verhalten Teil 1";
case 535:
return "Verhalten Teil 2";
case 536:
return "Statistik-Update";
case 537:
return "Allgemeine Statistiken";
case 538:
return "Statistikdaten";
case 539:
return "Kriegsikonen";
case 540:
return "Kriegsknöpfe";
case 541:
return "Zollkrieg";
case 542:
return "Befehlssimulator";
case 543:
return "Einheiten Simulator";
case 544:
return "Simulator-Zentren";
case 545:
return "Über das Buch";

// parrafos de los temas del libro
case 700:
return "Interaktive Software von Omar Jordán (Omwekiatl), Kolumbien 2021 (v $).##In einer virtuellen Community, die eine Weltkriegssimulation unterstützt, können Sie:##- Ihren Avatar anpassen.##- Drücken Sie etwas wörtlich aus.##- Suche nach anderen Profilen.#- Wählen Sie die unterstützte Weltzone aus.#- Wählen Sie Ihre Rolle in der Gesellschaft.#- Wählen Sie eine Verhaltensweise.#- Zeigen Sie den aktuellen Kriegsstatus und die Statistiken an.#Diese Version für PC verfügt über die Simulations-Engine mit erweiterten Parametern.#Amtssprache: Spanisch.";
case 701:
return "Um sich zu registrieren, verwenden Sie eine E-Mail, die ein Passwort erhält.##Verwenden Sie zum Anmelden die E-Mail-Adresse, mit der Sie sich registriert haben, oder den Benutzernamen.##Bei der Registrierung sehen Sie einen zufälligen Benutzernamen und ein Passwort in Ihrer E-Mail.##Diese können geändert werden.##Die dritte Leiste des Logins besteht darin, ein neues Passwort einzugeben. Wenn Sie das vorherige ändern möchten, seien Sie vorsichtig. Verwenden Sie keine wichtigen Passwörter. Wenn Sie sich nicht an Ihr Passwort erinnern, melden Sie sich bitte erneut an, um ein zufälliges Passwort zu erhalten. Umschalt + Löschen: Textzeile bereinigen.";
case 702:
return "Ihre Informationen werden weder verkauft oder an Dritte weitergegeben, noch werden sie zur Werbung verwendet.##Die globalen Statistiken der Community können jedoch öffentlich eingesehen werden.##Darum geht es hier. Ihr Passwort ist verschlüsselt, aber seien Sie vorsichtig. Sie können in Ihrem Profil ausdrücken, was Sie wollen. Es gibt keine Zensur oder kein Verbot. Es handelt sich also nicht um ein System, das für Minderjährige oder sensible Personen geeignet ist. Wir vertrauen immer noch Ihrer Ethik (seien Sie gut).";
case 703:
return "Über das Bild:#Name / Zone / Rolle.##Bild:#Gebäude (Rolle) / Ávatar / Tierkreis.##Unter Bild: Freitext, Verhalten.#Unten links Daten von: - Registrierung im System.#- Änderung des Profils.#- Zuletzt aktiv.#Schaltflächen unten rechts: - Sitzung schließen (abmelden).#- Profil bearbeiten (1 Mal pro Stunde).";
case 704:
return "- Ändern Sie Ihren Namen (er muss eindeutig sein).##- Ändern Sie die unterstützte Zone.##- Ändere den Avatar mit den grünen Pfeilen.#- Schreiben Sie etwas (rötlicher Hintergrund zeigt groß an).#- Ändern Sie das Verhalten.#Schaltflächen unten rechts:#- Grün: Bearbeitung abbrechen.#- Rot: Änderungen akzeptieren und senden.#Umschalt + Löschen: Textzeile bereinigen.#Sie können kopieren und einfügen (Strg + C) (Strg + V).";
case 705:
return "Sie können nach einem Benutzerprofil suchen, wenn es seinen Namen oder seine E-Mail-Adresse hat, es aufschreiben und auf die Lupe klicken.##oder drücken Sie den Stick, wenn Sie nach Ihrem eigenen Profil suchen.##Mit der Zufallssuche können Sie filtern nach:#- Zone.##- Profile mit umfangreichem Text.#- Seit weniger als einer Woche aktiv.#Schlagen Sie die Würfel, um zu suchen.#In einem Profil gibt es zwei Schaltflächen:#- Führen Sie eine weitere Suche durch. - Machen Sie einen Screenshot (png).";
case 706:
return "Jeder kann einen Job und ein Zuhause mit Kindern haben, auch nicht hier.##Es stellt sich heraus, dass diese Rolle diejenigen repräsentiert, die für ihre Familie, ihr Zuhause leben, ihre Nachkommen großziehen und erziehen. Sie leben in einem komfortablen Haus und arbeiten mit einem Partner zusammen, der das gleiche Interesse bekundet. Vielleicht ist es die älteste und natürlichste Rolle. Sie sind Grundeinheiten, ihre Fähigkeiten und Parameter sind diejenigen, die eine Welt ohne Rollen haben würde, aber ... sie tragen einen halben Samen, und wenn sich zwei derselben Rolle treffen, werden sie zu einem Spawn, der wachsen und werden wird ein weiterer Einwohner.";
case 707:
return "Sie sind die Grundlage für den Lebensunterhalt einer Stadt, ohne Nahrung ist die Bevölkerung zweifellos glücklich oder lebendig.##Sie befinden sich normalerweise auf grünen und weiten Feldern mit Brunnen zur Gewinnung von Grundwasser und umgeben von Gemüse wie: Hafer, Banane, Mais, Bohnen, Quinoa, Kakao, Erdnüsse, Weizen. In der Schlacht haben sie eine Nahrungsaura, deshalb geben sie den Verbündeten Nahrung; Einheiten, die durch mehr Ermutigung gespeist werden, greifen schneller an, was ihnen einen Vorteil verschafft. aber es ist Rohkost, so dass seine Wirkung nicht lange anhält, sie müssen in der Aura bleiben.";
case 708:
return "Wer den Geruch von heißem Brot oder frisch zubereitetem Essen nicht liebt, weil es die Aufgabe dieser Rolle ist, dieses Gefühl hervorzurufen, und okay, auch zu füttern ... er ist dafür verantwortlich, die Ernte in eine nahrhafte Delikatesse zu verwandeln, seine Spezialität ist: Hafer mit Zimt, Bananenkuchen, Mais Arepa, Bohnenburger, Quinoa Kekse, Schokoladendessert, Trockenfruchtkuchen.##Füttere jeweils einen Verbündeten, dh jedes Mal, wenn er seine besondere Fähigkeit ausführt. Einheiten, die durch mehr Ermutigung gespeist werden, greifen schneller an, was ihnen einen Vorteil verschafft. Die Wirkung dieses guten Essens hält lange an.";
case 709:
return "Viel Geschick in den Händen, Geduld und die notwendigen Ideen, um ein Stück Material in ... ein wertvolleres Material zu verwandeln; Sei es Kleidung zum Tragen, Tragen und Schützen vor Kälte, Tanzschuhe, Möbel zum Besuchen oder Schlafen, die von einer Welt ohne Kriege träumen, sie werden es tun.##Jedes Mal, wenn seine Spezialfähigkeit ausgelöst wird, zieht er einer verbündeten Einheit einen kühlen, stoßfesten Umhang an. Dadurch erhält die Einheit eine Rüstung, die durch die erhaltenen Treffer abgenutzt ist.";
case 710:
return "Diese Maulwürfe aus den Eingeweiden der Erde extrahieren den Rohstoff für alle Herstellungsaktivitäten, sie kümmern sich nicht um den Lärm der Zerkleinerungsmaschinen oder atmen die dichte unterirdische Luft ein, wenn sie unermüdlich nach dem Gold, dem Diamanten, dem suchen Adamantium, um einen Ring oder Zahn zu bekommen.##Sie sind gut in der Belagerung, sie können das feindliche Stadtzentrum niederschlagen, als wäre es nur ein weiterer zerbrechlicher Stein, sie sammeln auch das Wertvolle in ihren Belagerungen, um ihr eigenes Stadtzentrum zu reparieren.";
case 711:
return "Dieser rauhe Bürger kümmert sich nicht um die Hitze der Gießerei, er bleibt dort und verwandelt rohe Mineralien in alltägliche Artefakte wie: Töpfe, Gläser, Sockel, Stangen und alle Arten von Eisendrehungen; Unter ihnen gelegentlich Machete, Schwert, Streitaxt ... Von Zeit zu Zeit stellt er eine zusätzliche Waffe her und gibt sie einem Verbündeten.##Die Einheiten mit dieser zusätzlichen Waffe haben mehr Angriff, aber nicht alles ist perfekt, also früher oder später und mit Mit etwas Pech wird die Waffe brechen.";
case 712:
return "Gesundheit, die Hauptsache zum Leben und noch mehr zum guten Leben; Diese Rolle ist dafür verantwortlich, das eigene Wohl zu gewährleisten.##Bevor sie das Ende einer Operation erreichen oder starke Chemikalien konsumieren, versuchen sie, gute Gewohnheiten zu verbreiten, wie: gut hydratisieren, Sport treiben (Flexibilität + Cardio), glücklich und ohne Stress sein, ausgewogen ohne Fette oder Zucker und wenig Fleisch essen, tief durchatmen , gut schlafen und gelegentlich schnell mit heilenden Gewürzen. Und nun, was die Simulation betrifft, heilen sie Verbündete, sei es physischer Schaden oder Virusinfektionen.";
case 713:
return "Es gab immer Einwohner, die eine Stimme des Kommandos, Hyperaktivität bei der Durchführung von Projekten und einen starken Sinn für Ehre und Altruismus haben.##Diese Rolle bietet in der Gesellschaft die Möglichkeit, Ideen, Projekte, Initiativen und Proteste zu gruppieren und zu lenken. Dazu muss er anderen zuhören, Diskussionsforen eröffnen, Ordnung schaffen und vor allem ein Beispiel geben. Unabhängig vom Verhalten anderer Verbündeter überzeugt diese Rolle sie, ihr zu folgen, und stellt so eine kleine Gruppe zusammen. Auf diese Weise werden Sie nicht alleine gehen. Ein weiterer Vorteil davon ist, dass sich die Mitglieder synchronisieren, wenn sie auf einen Angriff auf einen von ihnen reagieren .";
case 714:
return "Er ist das Äquivalent eines Polizisten, seine Spezialität ist der Schutz, deshalb trägt er einen großen Schild, anstatt in den Krieg zu ziehen.##Seine Mission ist es, Ordnung in eine Gesellschaft zu bringen, den Menschen das Gefühl zu geben, sicher zu sein und jede Bedrohung zu neutralisieren.##Es ist die widerstandsfähigste Einheit, das heißt ihre Fähigkeit; Auf der anderen Seite stellt es einen Turm als Gebäude zur Verfügung, es schießt auf den Feind, aber es ist langsamer als die direkt auf dem Kriegsfeld errichteten Kampagnentürme, obwohl letztere im Vergleich zu den internen leicht abgerissen werden können. Beständig gegen Angriffe von Kriminellen und Sprengstoff.";
case 715:
return "Es ist das Äquivalent eines Militärs, dies ist ein brutaler Krieger, der mit Blutdurst auf das Schlachtfeld geht und den Feind zerstört.##Vielleicht denken Sie, dass in einem Kriegsspiel, welchen Sinn die anderen Rollen haben werden, nun, es gibt ein Gleichgewicht, lassen Sie sich nicht täuschen, alle Rollen haben Vor- und Nachteile, und die Community drückt sich mit jedem aus Geschmacksgründen aus ... aber ja, dies zeichnet sich dadurch aus, dass es derjenige mit dem höchsten Angriff ist (passive Fähigkeit).";
case 716:
return "Er ist eine Seltenheit, wie ein Rabe, mit melancholischem und tiefem Gedanken, er hat viele Bestattungen, viele Tränen, viele Enden gesehen; Sie sind normalerweise einsame und meditative Einheiten.##Ihre Aufgabe ist es, dem Verstorbenen Ruhe und Unterkunft zu geben. Tod, das größte Geheimnis im Leben, diese Rolle wird ständig gelebt und ist gut, um den Trauernden Ratschläge zu geben. Wenn er einen Feind auf dem Schlachtfeld tötet, gewinnt er Lebenspunkte zurück, als wäre es ein Vampir.";
case 717:
return "Als Fremder, der sich den arkanen Künsten, dem Mystischen und der Hexerei verschrieben hat, schweigt er normalerweise über das, was er weiß, und verbringt mehr Zeit damit, in seinen Träumen und Meditationen zu reisen als im Leben selbst.##Er versucht, die große alchemistische Arbeit auszuführen, untersucht die Geheimnisse des Kosmos und führt Gespräche mit den verschiedensten Wesenheiten. Wenn es stirbt, wird es zu einem Spektrum, das dem Feind folgt und ihm bei seinen Angriffen Pech macht. Dies ist ein Aura-Effekt, der mehrere gleichzeitig betrifft. im Leben kann es kaum von Priestern bekehrt werden.";
case 718:
return "Es hat einen Tempel, dem es seine Hingabe für das Leben widmet.##Dieser Tempel symbolisiert wiederum einen Gott der vielen, die es gibt, einige älter als andere, einige vergessener und andere modischer; Er wacht über die Moral der Gesellschaft und wägt ihre emotionalen Belastungen mit dem Versprechen höchster Hilfe ab. Seine Funktion ist es, eine Einheit ideologisch zu konvertieren, was bedeutet, dass sie einen feindlichen Verbündeten machen kann. Dies ist jedoch eine Wahrscheinlichkeit mit einem einzigen Versuch, die durch Glückseffekte beeinflusst werden kann, zum Beispiel: Sie hat eine geringe Chance vor dem Fluch von ein Gespenst.";
case 719:
return "Musik, Malerei, Skulptur, Gesang, Schauspiel ... sehr vielfältig und schön ist das Spektrum der Kunst und ihre unendliche Manifestation, diese Rolle fängt zweifellos Träume und Albträume auf Papier und Ton ein, jede Gesellschaft muss sich ausdrücken, dies ist die transzendentale .##Im Kampf wird er eine Gitarre tragen, die die Luft mit Inspiration polarisiert und den Angriffen der Alliierten mehr Glück gibt. Trotzdem ist dieser Effekt vorübergehend und erfordert die ständige Präsenz der Aura.";
case 720:
return "Als sehr energisches, flexibles, starkes, unermüdliches, geschicktes Wesen, das nur lebt, um in seinem Fitnessstudio zu sein oder die Welt zu bereisen, ohne anzuhalten, liebt er es zu konkurrieren und sich besser und besser zu fühlen als er selbst und andere; Sein einziges Ziel ist es, Ziele zu brechen.##Er genießt eine unübertroffene Gesundheit, ist aber mehreren Verletzungen ausgeliefert. Er rennt und nichts schneller als jeder andere, was ihm große Beweglichkeit auf dem Schlachtfeld verleiht. Er hat auch die Fähigkeit, beim ersten Angriff einen großen Schlag zu versetzen, wie ein Ausfallschritt mit seiner angesammelten Trägheit.";
case 721:
return "Glücksspiele, Schach, chinesische Dame, Leiter, Parks, Poker, Uno, Magie, Scharaden und vieles mehr, die Sie hier im Gebäude dieses freundlichen, kontaktfreudigen und fröhlichen Charakters finden; Es gibt definitiv nichts Schöneres als Freizeit und Lachen, aber pass auf, du wirst süchtig, hahaha.##Als russisches Roulette trägt diese Rolle eine Hochleistungsbombe mit sich, mit der es das Fleisch vom Knochen, von sich selbst, von seinen Verbündeten und natürlich vom Feind lösen kann. Die Explosion ist zufällig, wenn sie Schaden nimmt.";
case 722:
return "Eine gesunde Gesellschaft drückt ihre Sexualität ohne Tabus oder extreme Moral aus.##Hier bietet diese Rolle einen Platz für erotische Spiele, entweder mit reproduktivem Geist oder besser noch für die Freizeit; Und als ob das nicht genug wäre, bietet es seine Dienstleistungen als spezielles Unternehmen an (mit Wahlfreiheit). Wählen Sie nur einen Verbündeten aus und zünden Sie sie an, um ihnen mehr Trefferpunkte, Angriffspunkte und Immunität gegen die Auswirkungen anderer Rollen zu geben. Dies wird folgen und wenn einer der beiden stirbt, wird die Verbindung mit seinen Vorteilen für immer unterbrochen; Die Schwäche des erleuchteten Verbündeten ist sein grundlegender Begleiter.";
case 723:
return "Produkte, die aus der Fertigung hergestellt werden, müssen verkauft und vermarktet werden.##Dies ist die Funktion dieser Rolle, die aufgrund ihres Charismas auch gute Kompromisse eingehen kann, da in schwierigen Zeiten nicht immer Geld vorhanden ist. Sein Gebäude ist ein Hobby für diejenigen, die nach wenig benötigten Geräten suchen. Er ist ein Experte für Vermögen und extrahiert Münzen, von denen es keine gibt. Sie können feindliche Waffen und Umhänge nehmen und behalten oder sie einem Verbündeten geben. es macht die feindliche Fertigung im Grunde zu Gütern für Verbündete.";
case 724:
return "Er ist besessen davon, alles sauber zu sehen, er kümmert sich sehr um die Entsorgung von Abfällen, sein Motto lautet Reduzieren, Wiederverwenden, Recyceln; Weil dies dazu beiträgt, die Umweltverschmutzung zu verringern; er mag es, wenn die Mülleimer nach Papier, Kunststoffen, Elektronik und Bio sortiert sind, da dies die Arbeit in seinem Gebäude verringert; Er mäht auch den Rasen.##Der Krieg hinterlässt viele zerfallene Leichen, ein ganzes Durcheinander, diese Rolle gewinnt mit jeder Leiche, die sie verarbeitet, ein wenig Leben.";
case 725:
return "Eine Stadt braucht Parks und Naturschutzgebiete, um die Fauna und Flora zu genießen, sich zu erholen und sich mit ihr zu verbinden.##Dieses Wesen schützt diese Räume und führt genau dort ein Leben, das ein wenig von der Stadt losgelöst ist. Sein Blut enthält eine bestimmte Dosis halluzinogener Pilze. Er kann unter dem Druck friedlichen Protests Feinden ihre Rolle nehmen und ihnen ihre besonderen Fähigkeiten entziehen. Dies tut er jedes Mal einzeln, wenn er seine Fähigkeiten aktiviert.";
case 726:
return "Die menschliche Beziehung zu anderen Wesen in der Natur ist uralt, wie zum Beispiel Lasttiere, Jagd, Kameradschaft, Konsum; Diese Rolle zieht Hunde und Zähmungen auf und bildet sie aus, so dass sie als Gesellschaft für alle Arten von Menschen dienen.##Wir alle wissen, dass es Menschen gibt, die sie sogar als Familienmitglieder sehen. Wenn er einen Feind sieht, kann er nur einen Hund rufen, um ihm beim Kampf zu helfen. Diese Entität wird ihm immer folgen, hat weniger Angriff und Leben als ein Mensch und stirbt normalerweise an moralischem Schmerz, wenn sein Besitzer stirbt.";
case 727:
return "Wir leben in einer physischen Welt mit Entfernungen, die alle Punkte trennen.##Der Transport von etwas oder jemandem von A nach B war schon immer eine Herausforderung für die Optimierung. Der Ballon oder die Luftschiffe waren das optimale Flugfahrzeug. In diesem Gebäude bieten sie ihre Dienste an, um große Entfernungen zu überwinden. Geben Sie den Verbündeten Luftballons, wenn sie sich im Wasser befinden. Auf diese Weise können sie das Ziel schneller erreichen. An Land steigt der Ballon ab. Es sollte betont werden, dass der Wasserkampf denjenigen einen Vorteil verschafft, die in einen Ballon steigen.";
case 728:
return "Sie möchten jemandem etwas mitteilen, eine Emotion, eine Idee oder ein Geschäft, aber es ist weit weg.##Nun, diese Rolle und dieses Gebäude ermöglichen es Ihnen, diese Nachricht in fachkundigen Händen zu hinterlassen, als ob der Telegraph existiert.##Strategisch, wenn es darum geht, sich zu verteidigen: Es wird verteidigende Verbündete davon überzeugen, den benachbarten Feind anzugreifen, ohne die Verteidigung zu vernachlässigen. wenn ihr Verhalten darin besteht, jemandem zu folgen: es wird Verbündete ermutigen, das gefährdete Zentrum zu verteidigen, oder vielmehr diejenigen, die Angriffe in Gruppen verteidigen; für anderes Verhalten: Es wird Verbündete dazu bringen, sich wie er zu verhalten. Wenn er nur einmal ein feindliches Zentrum erreicht, bewegt er eine Einheit in der Erstellungswarteschlange von diesem Zentrum zu seiner eigenen.";
case 729:
return "Eine Mischung aus Lehrer und Künstler, da er gerne lehrt und Wissen vermittelt und auch gerne echte oder unwirkliche Dinge schreibt; Das Gebäude ist voll von Büchern aller Fächer, Wissenschaft, Literatur, Spiritualität, Biografien, Geschichte, Philosophie, Lebensstil usw.##Geben Sie alliierten Angriffen das beste Glück und treffen Sie einen nach dem anderen. Dieser Buff ist sehr langlebig und hat hohe kritische Trefferchancen, weil Wissen Macht ist.";
case 730:
return "Es bietet Energie, das Brandmanagement ist längst vorbei, was ist neu im Bereich der Blitze (zumindest für diese simulierte Zeit), Windkraftanlagen bieten saubere Energie für alle und was ist damit zu tun? Nun, ein Traum der Menschheit war es, einen Homunkulus, einen Golem, zu erschaffen.##Machen wir eine Dose mit künstlicher Intelligenz. Erstellen Sie einen Roboter, der aufgrund seiner Batterien eine begrenzte Lebensdauer hat, aber jeder Verbündete mit dieser Rolle kann sie ersetzen. Riese, greift aber nicht an, dennoch ist es ein widerstandsfähiger Köder und ein Turmabbruch schlechthin; es schwächt sich mit Wasser ab, es verhält sich wie jemand, der es programmiert oder neu programmiert hat.";
case 731:
return "Was wäre eine Gesellschaft ohne Gebäude, sei es eine Hütte oder ein Wolkenkratzer? Dieses Wesen schafft die größte und dichteste Stadt, ohne zu vergessen, dass es ihr Ziel ist, Komfort, Funktionalität, Optimierung und weniger Umweltbelastung zu bieten.##bietet ein Gebäude für mehrere Bürger zum Leben. Auf dem Schlachtfeld können Sie einen Kampagnenturm platzieren, der auf den Feind schießt. Er wird aufgrund seiner Zähigkeit nicht von den Bürgern angegriffen. Anstatt ein neues zu erstellen, können Sie ein vorhandenes Level aufrüsten.";
case 732:
return "Nicht jeder, der in der Gesellschaft lebt, arbeitet daran, sie zu verbessern.##Es gibt Menschen, die aus persönlichen Gründen Konflikte verursachen, Diebe, Mörder, Gangster. Sie sind schwierige Themen und werden normalerweise nachts gefunden, wenn sie Bier trinken und sich mit ehrlichen Bürgern vermischen. Von Zeit zu Zeit greifen sie ihre Verbündeten tückisch an. Es ist normalerweise ein schwerer Schlag, überrascht zu sein. Es besteht eine geringe Wahrscheinlichkeit, dass Schaden zurückerhalten wird. Im Allgemeinen wird diese Rolle von jedem gewählt, der das Gebiet von innen sabotieren möchte.";
case 733:
return "Es wird gesagt, dass diese Themen verrückt sind, sie untersuchen alles, was sie sehen, von den Tiefen des Weltraums bis zur Intimität von Molekülen, ihre Sprache ist Mathematik und ihr Lexikon ist komplex; In dem Gebäude, das sie zur Verfügung stellen, werden normalerweise viele Experimente durchgeführt, um Hypothesen zu testen.##In ihren Flaschen haben sie ein sehr tödliches Virus kultiviert, das in der Lage ist, sich selbst zu töten und zu übertragen. Jetzt verwenden sie es im Krieg, um jeweils einen Feind zu infizieren. Dieser Angriff ähnelt Gift, es besteht die Möglichkeit, geheilt oder beschädigt zu werden.";
case 734:
return "Defensiv:#Einheiten suchen nach ihrem eigenen oder einem verbündeten städtischen Zentrum und bleiben in dessen Nähe.##Wenn es Krieg um Kontinente ist, können sie sehen, ob ein Zentrum belagert wird, und dorthin gehen.##Zufälliger Angriff:#Sie wählen zufällig ein feindliches Zentrum aus und gehen dorthin. Dies kann zu einer Zerstreuung der Truppen führen. Es gibt auch bestimmte Fälle, in denen das Ziel neu berechnet werden kann. Greife die Stärksten / Schwächsten an:#Sie zielen auf das feindliche Zentrum, das die meisten / am wenigsten verfügbaren Einheiten hat, dh addiere die lebendigen mit den Reserveeinheiten.";
case 735:
return "Angriffsnachbar:#Stellt sicher, dass das feindliche Zielzentrum der Einheit am nächsten ist, die gerade nach einem Angreifer sucht.##In Gruppe verschieben:#Die Zentren berechnen einige Gruppenkreise.##Die Einheiten des Zentrums, die dieses Verhalten aufweisen, treffen sich in einem dieser Kreise. Auch im Kontinentmodus können Einheiten einen verbündeten Kreis auswählen. Einer anderen Einheit folgen:#Ein verbündeter Bürger wird nach dem Zufallsprinzip ausgewählt, um zu folgen. Dies darf jedoch kein defensives oder Anhängerverhalten sein. Wenn er niemanden finden kann, kehrt er in sein städtisches Zentrum zurück.";
case 736:
return "Diese Software ist ohne Eile, die Strategien und Profiländerungen werden ruhig behandelt, daher werden die globalen Statistiken stündlich aktualisiert und es besteht die Möglichkeit, das Profil zu bearbeiten.##Die von Ihnen vorgenommenen Änderungen werden in 1 Stunde in der Statistik angezeigt!";
case 737:
return "Oben können Sie das zu beobachtende Gebiet oder Land auswählen.##Die Auswahl wird auf der Karte in Rot angezeigt.##Unterhalb der Karte sehen Sie:#- Anzahl der Benutzer in der Region.#- Prozentsatz der Frauen in Bezug auf die Gesamtzahl.#- Anzahl der aktiven Benutzer.#- Aufzeichnung der aktiven Benutzer. Ein Benutzer ist aktiv, wenn er in der letzten Woche in der Anwendung war.";
case 738:
return "Sie können den zu beobachtenden Datentyp für den ausgewählten Bereich ändern:#- Rollen: Benutzer in jeder Rolle.##- Zonen: in Bezug auf die aktuelle Zone.##- Emotionen: nach den Gesichtern des Avatars.#- Tierkreis: Zeichen für die Zone.#Die Idee ist, die Rollen zu sehen, aber nicht die Verhaltensweisen.#Auf diese Weise kann eine objektive kollektive Strategie für die Rollen und eine intuitive oder externe Strategie für das Verhalten erstellt werden.#- Mit der Schaltfläche Speichern können Sie Daten exportieren. - Die Kamerataste macht einen Screenshot.";
case 739:
return "Oben Anzahl der Simulationen:#Wöchentlich (wird gereinigt) / Akkumuliert.##Sie können das Gebiet auswählen, das Sie beobachten möchten.##Dies wird auf der Karte in Rot angezeigt.##Die erste Simulation der Woche ist der Offizielle, der Rest wird gemittelt, und der Rekord ist aller Zeiten.##Die Daten geben die Position der Zone an, 1 ist der beste Ort, sie können wiederholt werden, wenn sie binden. Symbole: technische Punktzahl, gejagte Feinde, Belagerung, eroberte Zonen, lebendige Zeit, verfügbare Einheiten, Gesamteinheiten, endgültiges Leben.";
case 740:
return "Die 4 Schaltflächen unten starten den Krieg:#1 Demo mit zufälligen Daten.##2 Demo mit benutzerdefinierten Daten.##3 Offizielle Daten, aber von Scharmützeln.##4 Offizielle Daten und Ergebnisse.#- Ländermodus / Kontinentmodus.#- Die Kamerataste macht einen Screenshot.#Die benutzerdefinierten Daten haben das Format der Datei (txt), die im Statistikmenü abgerufen wird.#Der offizielle Krieg wird auf einem schwarzen Bildschirm angezeigt. Die Ergebnisse werden auf den Server hochgeladen, um zu vermeiden, dass die Simulationen nach Belieben beendet werden.";
case 741:
return "Holen Sie sich die Datei (txt) wie im Statistikmenü angegeben.##Darin sehen Sie mehrere Matrizen.##Diejenige, die uns interessiert, ist die von (Rolle).##Dort können Sie die Werte je nach Anzahl der Einheiten in jeder für jede Zone ändern.#Die Spalten sind die Rollen, wie Sie sie in der Kopfzeile (Rolle) sehen. Die Zeilen sind die Zonen, wie Sie sie in der Kopfzeile (Länder) sehen. Verhaltensweisen werden immer zufällig sein; dann definiert die (aktive Bevölkerung) aktive Benutzer, geben Sie eine sehr hohe Zahl ein, wenn Sie möchten.";
case 742:
return "- Vergrößern Sie mit dem Mausrad.##- Bewegen Sie die Kamera mit der rechten Maustaste.##- Wählen Sie Objekte mit der linken Maustaste aus.#- Verlassen Sie die Simulation mit Escape.#- Beschleunigen oder verlangsamen Sie mit Auf und Ab Oben links: Allgemeine Informationen, die Endgeschwindigkeit hängt von Ihrem PC ab, von offiziellen Daten oder nicht.#Oben rechts: Allgemeine Informationen: Maximale Bevölkerungszahl, lebende Einheiten, lebende Wesen, Datensatz lebender Wesen, insgesamt geschaffene Wesen.#Dann die besten 3 nach: verfügbaren Einheiten, gejagten Feinden, Belagerung, eroberten Gebieten.#Schließlich die Positionen nach Vitalität.#Unten links, kontextbezogen (Auswahl).";
case 743:
return "Das Geschlecht und der Tierkreis haben keinen Einfluss auf die Simulation, aber wenn der aktive Zustand aktiviert ist, werden Lebensboni vergeben.##Entitäten können sich zu Land oder zu Wasser bewegen.##Letzteres verlangsamt die Bewegung und den Angriff.##Sie können auf einen Feind, einen Verbündeten oder ein städtisches Zentrum zugehen. Kollisionen werden ebenfalls erkannt. Von Zeit zu Zeit suchen sie nach Feinden in ihrer Sichtweite und greifen mit ein wenig Zufälligkeit an, wenn sie nahe beieinander sind. auch von Zeit zu Zeit werden die besonderen Fähigkeiten jeder Rolle ausgeführt. Rollen, die Effekte auf andere Einheiten anwenden, können weder selbst angewendet werden, noch betreffen sie Verbündete oder Feinde derselben Rolle, z. B.: Ein Sanitäter Kann einen anderen Sanitäter nicht heilen oder heilen.";
case 744:
return "Jedes städtische Zentrum hat eine anfängliche Bevölkerung, von der es jeweils nur eine begrenzte Anzahl von Wohneinheiten geben kann, und es wird mehr als hervorrufen.##Die Lebenspunkte jedes Zentrums sind ein Basiswert plus die anfängliche Bevölkerung.##Von Zeit zu Zeit wird die Anzahl der in der Nähe befindlichen Feinde und Verbündeten berechnet.##Die erhaltene Belagerung ist die Differenz dazu mit einem Limit. Einheitenrollen werden zufällig mit Priorität ausgewählt, Verhaltensweisen ändern sich nur zufällig. Jedes Zentrum berechnet die Position einiger Gruppierungskreise, indem es nach Gruppierungen von Einheiten, feindlichen Zentren und feindlichen Gruppen sucht.";
case 745:
return "Um schneller zu navigieren, verwenden Sie die Tasten Links / Rechts.##Drücken Sie die Eingabetaste, um zu einer zufälligen Seite zu navigieren.##Platz für zufällige Rolle. Die Zahl im Bild auf der ersten Seite gibt die Gesamtzahl der registrierten Benutzer an. Hinweis:#";

// mini nombre de zona
case 900:
return "Hund";
case 901:
return "VERWENDET";
case 902:
return "Mex";
case 903:
return "Kohl";
case 904:
return "BH";
case 905:
return "Arg";
case 906:
return "Esp";
case 907:
return "Ing";
case 908:
return "Ale";
case 909:
return "Rus";
case 910:
return "Ara";
case 911:
return "Ind";
case 912:
return "Chi";
case 913:
return "Egi";
case 914:
return "Mit";
case 915:
return "Süd";
case 916:
return "Aus";
case 917:
return "N / A";
case 918:
return "S.A.";
case 919:
return "EUR";
case 920:
return "ORI";
case 921:
return "AFR";
case 922:
return "KNIRPS";

// para nombres de comportamientos abreviados (no traducir)
case 1000:
return "Verteidigen";
case 1001:
return "A.aza";
case 1002:
return "A. war";
case 1003:
return "A.déb";
case 1004:
return "A.cer";
case 1005:
return "Gruppe";
case 1006:
return "Segui";

// abreviacion roles (no traducir)
case 1100:
return "Familie";
case 1101:
return "Agri";
case 1102:
return "Gekocht";
case 1103:
return "Kunst";
case 1104:
return "Bergwerk";
case 1105:
return "Herr";
case 1106:
return "Medi";
case 1107:
return "Führer";
case 1108:
return "Defe";
case 1109:
return "Guer";
case 1110:
return "Cepu";
case 1111:
return "Zauberer";
case 1112:
return "Sace";
case 1113:
return "Arti";
case 1114:
return "Depo";
case 1115:
return "Paya";
case 1116:
return "Acom";
case 1117:
return "Essen";
case 1118:
return "Sauber";
case 1119:
return "Hipp";
case 1120:
return "Kuppel";
case 1121:
return "Pilo";
case 1122:
return "Herren";
case 1123:
return "Schreiben";
case 1124:
return "Inge";
case 1125:
return "Bogen";
case 1126:
return "Asse";
case 1127:
return "Hundert";

default: return "";
}

