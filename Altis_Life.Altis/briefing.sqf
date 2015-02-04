waitUntil {!isNull player && player == player};
if(player diarySubjectExists "rules")exitwith{};

//player createDiarySubject ["changelog","Change Log"];
player createDiarySubject ["serverrules","Allgemeine Regeln"];
player createDiarySubject ["rules","Weiterführende Regeln"];
player createDiarySubject ["fightrules","Kampfregeln"];
player createDiarySubject ["gangregeln","Gang Rules"];
player createDiarySubject ["copgear","Polizeiregeln"];
player createDiarySubject ["adminrules","Adminregeln"];
//player createDiarySubject ["newlife","New Life"];
player createDiarySubject ["adac","Adac/Medics"];
player createDiarySubject ["safezones","Sichere Zonen (No Killing)"];
player createDiarySubject ["streets","Straßeverkehrsregeln"];
player createDiarySubject ["illegalitems","Illegale Aktivitaeten"];
player createDiarySubject ["shadowdragons","Tastenbelegung"];
player createDiarySubject ["controls","Controls"];



player createDiaryRecord ["adminrules",
	[
	"Adminregeln", 
"
- Missbrauch führt zum Entzug der Adminberechtigung.<br/>
- Der Bannhammer ist nur in ausnahmesituationen zu benutzen! (Abuse,Hacking und co)<br/>
- Ein Kick ist ein Mittel zur Verwarnung (Abuse,Hacking und co)<br/>
- Handel besonnen und überlegt! Lass dir Zeit mit dem Handeln!<br/>
- Sprich mit den anderen Admins, trefft Entscheidungen gemeinsam<br/>
"
	]
];

player createDiaryRecord ["adac",
	[
	"Adac", 
"
- Der ADAC stelt euch das Abschleppen in Rechnung (10.000$).<br/>
- Das Reparieren ins Kostenlos<br/>
- Ist die Reparatur nicht möglich kann der ADAC das Fahrzeug aus RP gründen bis Restart Beschlagnahmen<br/>
- Der ADAC ist die einzige Fraktion die Abschleppen und beschlagnahmen darf!<br/>
- Der ADAC ist eine nicht angreifbare Fraktion!</br>
- Bist du nicht nett zum ADAC muss der dir auch nicht Helfen!</br>
"
	]
];
player createDiaryRecord ["adac",
	[
	"Medics", 
"
- Die MEDICS ist eine nicht angreifbare Fraktion!</br>
- Hier kommen die Weiterführenden Regeln rein!</br>
- Punkt 1 : Respawn nach Request.</br></br>

REGEL: Wenn ein Zivilist den Medic REQUESTET hat und dann Aufforderunge des RD respawnt hat er mit Folgenden Strafen zu rechenen:</br>
1: Verwarnung und 100k Strafe an den ausgerückten Sanitäter.</br>
2: Leeren der Geldmittel durch einen Admin.</br>

3: kick bei wiederholten Medic Abuse.</br>
4: (24h) Ban bei permanentem Request Abuse.</br></br>

Verhaltensregel:</br>
- Der RD übernimmt unter keinen Umständen die Aufgaben der Polizei (Bewaffnete Rebellen etc. werden nur dann gemeldet, wenn eine DIREKTE Gefahr für den jemweilligen medic ausgeht</br>
- Der RP sollte wenn möglcih immer versuchen mit der zu behandlenden Person RP zu betrieben (Allerdings sollte dies sich nicht zu lange in die Länge ziehen</br>
- Der RD sollte sich erwachsen und möglichst Professionell Verhalten</br></br>

Fahrzeuge:</br>
Rettungsassitent:</br>
- Geländewagen</br>
- Hummingbird</br></br>

Notartzt:</br>
- Geländewagen / SUV</br> 
- Hummingbird / Orca </br></br>

Wer nicht Requestet gilt als TOT!</br>

"
	]
];



player createDiaryRecord ["copgear",
	[
	"Schwere Polizeieinheiten", 
"
MSE-3 Marid: Zur Kampfkontrolle wärend der bekämpfung von Terroristen mit schwerer Bewaffnung.<br/>
- REGEL: Nicht für den (dauerhaften)Einsatz gegen weiche Ziele!<br/>
- REGEL: Darf nicht als Standard für den Streifendienst benutzt werden.<br/>
- REGEL: Darf nicht für allgemeine Kontrollen benutzt werden.<br/>
- REGEL: Darf NUR gegen schwer bewaffnete Übermacht eingesetzt werden.<br/><br/>
- REGEL: Darf als Stationäre Kontrollstation an der Autobahnpolizei benutzt werden.<br/><br/>


Hunter HMG: Für allgemeine Schutzaufgaben und Kampfkontrolle.<br/>
- REGEL: Darf nicht als Standard für den Streifendienst benutzt werden.<br/>
- REGEL: Darf nicht für allgemeine Kontrollen benutzt werden.<br/><br/>
- REGEL: Darf als stationäre Kontrollstation an der Autobahnpolizei benutzt werden.<br/><br/>


Strider HMG: Für allgemeine Schutzaufgaben und Kampfkontrolle.<br/>
- REGEL: Darf nicht als Standard für den Streifendienst benutzt werden.<br/>
- REGEL: Darf nicht für allgemeine Kontrollen benutzt werden.<br/><br/>
- REGEL: Darf als stationäre Kontrollstation an der Autobahnpolizei benutzt werden.<br/><br/>


AH-99 Blackfoot: Für Kontrolle der Lufthoheit.<br/>
- REGEL: Darf nicht als Overwatch benutzt werden.<br/>
- REGEL: Darf nicht für allgemeine Kontrollen benutzt werden.<br/>
- REGEL: Darf nicht für Angriffe auf Bodenziele benutzt werden.<br/>
- REGEL: Darf erst auf Anforderung aus der Garage geholte werden.<br/>
- REGEL: Darf NUR UND AUSSCHLIEßLICH GEGEN FEINDLICHE HUBSCHRAUBER EINGESETZT WERDEN! <br/>
- REGEL: Darf Patroullieren und Hubschrauber Kontrollieren</br></br>
- AUSNAHME: Darf sich bei Beschuss verteidigen, auch gegen Bodenziele.<br/>

<br/><br/>
Unterzahlaktionen sind kein Grund für das Benutzen von Schweren Waffen<br/> 

"
	]
];

player createDiaryRecord ["copgear",
	[
	"Bewaffnung", 
"
Dienstfahrzeug: <br/>
Als Dienstfahrzeug für Kontrollen dient der Hunter, der SUV und der Pickup. <br/>
Alle anderen Fahrzeuge unterliegen der Regelung - need one, take one<br/>

Dienstwaffen:<br/>
- Als Standarddienstwaffe dient die P07 in der Taser Variante.<br/>
- Als Standard Gewehre dienen alle Waffen der Kalibergrößen: 5.56mm und 6.5mm<br/>
- Ein .50 Gewehr oder ein LMG darf nur von den Polizei Scharfschützen geführt werden. <br/>
- Welches Scope der Polizist verwendet ist ihm selbst überlassen. <br/>
"
	]
];

player createDiaryRecord ["copgear",
	[
	"Sonderregelungen", 
"
KSK/GSGA: <br/>
Polizisten der Stufe KSK oder GSGA müssen Permanent einsatzbereit sein.<br/>

Streifenpolizisten: <br/>
Jeder Polizist gilt ohne Einsatzbefehl als Streifenpolizist.<br/>

Leitstelle:</br>
Zur Leitstelle wird ein Polizist ernannt, er koordiniert die vorhandenen Polizisten<br/>
Leitstellendienst darf nur via Ingame Gruppenchannel gemacht werden.(KEIN TS)<br/>

"
	]
];

player createDiaryRecord ["copgear",
	[
"Polizeileitung", 
"
Es gibt 2 unabhängige Polizeistationen:<br/>
- Dienststelle Kavala, Leitung hat Chief Fumiku.<br/>
- Dienststelle Pyrgos, Leitung hat Chief Heinl. <br/><br/>

Jeder Polizist kann von einem Chef für eine bestimmte Dienststelle angefordert werden.<br/>
Die beiden Chiefs müssen sich demnach einigen.<br/>

Diese Beiden Dienststellen unterstehen dem Aktuelle Gouvaneur der Insel<br/>
Der Aktuelle Gouverneur ist Gunter Schraeder<br/>
"
	]
];


player createDiaryRecord ["serverrules",
	[
"Allgemeines", 
"
Roleplay<br/><br/>

1: Dies ist ein Rollenspielserver, verhalte dich so<br/>
2: Ein toter Hamster als Grund für einen Kampf, ist kein Grund<br/>
3: Arschloch sein kann Roleplay sein, ist aber Schwer - bedenke dies!<br/>
4: Fairness ist hier wichtig!
5: Die Regeln sind nicht nur für deinen Vorteil da, sie sind auch keine Auslegungssache!

"
	]
];

player createDiaryRecord ["serverrules",
	[
"Spezifisch", 
"
Regeln<br/><br/>

1. Zivilisten haben sich grundlegend an die Anweisungen der Polizei zu halten.<br/>
2. Weisen Sie den Polizisten ggf. darauf hin, dass Sie Waffen bei sich fuehren.<br/>
3. Tragen Zivilisten Waffen bei sich, haben sie diese sofort zu senken oder wegzustecken.<br/>
4. An einem Checkpoint duerfen Polizisten die Zivilisten ohne Angabe von Gruenden durchsuchen.<br/>
5. Nach der Durchsuchung koennen die Zivilisten in ihr Fahrzeug steigen und wegfahren, solange nichts gegen sie vorliegt.<br/>
6. Sollte etwas illegales gefunden werden wird die Person festgenommen und abhaengig von dem begangenen Verbrechen zu einer Geld oder Haftstrafe verurteilt.<br/><br/>
7. Die MEDICS und der ADAC dürfen kein Ziel von Überfallen sein!</br> 
8: Drohnung gegen Polizisten gelten als Straftat.</br>

"
	]
];




player createDiaryRecord ["serverrules",
	[
	"Exploids", 
"
Exploits<br/><br/>

1. Das Entkommen aus dem Knast mit anderen Methoden als die Kaution zu zahlen oder per Helikopter zu fliehen.<br/>
2. Sich selbst umzubringen um aus schwierigen Situationen, wie zum Beispiel einer Festnahme, dem Knast ect. zu entkommen.<br/>
3. Das Veruntreuen von grossen Geldsummen. Sollte dir jemand direkt am Anfang des Spiels grosse Summen Geld schicken, melde dies sofort einem Admin, andernfalls kannst du gebannt werden.<br/>
4. Die Benutzung von gehackten Items. Sollte ein Hacker den Server betreten und Items spawnen, nutze diese nicht, sondern melde es sofort einem Admin.<br/>
5. Der Missbrauch von Bugs. Sollte man dich beim Ausnutzen von Bugs erwischen, ist dies ein Banngrund.<br/>
6. Dauerhaftes RDM. Wenn du dauerhaft Random Deathmatch betreibst, ist dies ein Banngrund.<br/><br/>
"
	]
];


player createDiaryRecord ["serverrules",
	[
"Banngruende", 
"
Betrachtet dies als eure einzige Warnung fuer folgende Faelle.<br/><br/>

1. Hacking<br/>
2. Cheating<br/>
3. Exploiting<br/>
4. Drei Kicks fuehren auch zu einem Ban.<br/><br/>
5. Ein bestehender VAC Ban fuehrt zu sofortigem Ausschluss (Automatisiert)</br>
6. Das ueerfallen von Spielern waerend man sich Polizist ausgibt.</br>
7. Permanente Kopfgeldaktionen auf ein und den selben Spieler.</br>
8. Permanentes Mobbing, Sexuelle Noetigung usw.</br>
9. Falschinformation/Einseitiges Informieren der Admins</br>
10. Diebstahl von ADAC und MEDIC Fahrzeugen</br>
11. Roleplaytrolling (Hamster ist tot, Grillparties, einseitiges Roleplay</br>

"
	]
];

player createDiaryRecord ["serverrules",
	[
	"Kommunikationsregeln", 
"
Die folgenden Taten koennen zu einem Bann fuehren, abhaengig von der Sicht der Admins.<br/><br/>

1. Der Sidechat darf nur fuer schriftliche Kommunikation benutzt werden.<br/>
2. Das Spammen von einem Beliebigen Chat Kanal resultiert in einem Bann.<br/>
3. Teamspeak Kanaele sind mit einem Grund da, Cops muessen sich jederzeit in einem Cop Kanal aufhalten.<br/>
4. Zivilisten haben in Cop Kanaelen nichts zu suchen! Jeder Zivilist welcher einem Cop Kanal joint wird sofort aus dem Kanal entfernt. Wiederholungstaeter koennen gebannt werden.<br/><br/>
"
	]
];

player createDiaryRecord ["serverrules",
	[
"Random Deathmatching (RDM)", 
"
Die Folgenden Taten koennen zu einem Bann fuehren, abhaengig von der Sicht der Admins.<br/><br/>

1. Das Toeten eines Mitspielers ohne Roleplay Grund.<br/>
2. Cops und Zivilisten duerfen nur in Verbindung mit einem begangenen Verbrechen auf einander Schiessen.<br/>
3. Wenn du im Kreuzfeuer eines Gefechts erschossen wirst zaehlt dies nicht als RDM.<br/>
4. Jemanden mit dem Zweck sich selbst zu schuetzen zu toeten zaehlt nicht als RDM (Notwehr).<br/>
5. Einen Spieler zu erschiessen ohne ihm genuegend Zeit zu geben deinen Anweisungen zu folgen zaehlt als RDM.<br/><br/>

Jeder Fall wird von einem oder mehreren Admins beurteilt.<br/><br/>
"
	]
];


player createDiaryRecord ["serverrules",
	[
"Rollenspiel", 
"
1. Wir legen wert auf ausgewogenes echtes Rollenspiel<br/>
2. Die Sirene oder das Blaulicht ist ein Einstieg in ein RP - Halte an oder flüchte - Flucht gilt als Widerstand und kann mit Waffengewalt(Reifen zerschiessen, Nagelbänder usw.) unterbunden werden.<br/>
3. Der Polizist muss fragen ob er dich festnehmen/durchsuchen muss. Die direkte Festnahme bei Fahrzeugkontrollen ist verboten, gib deinem gegenüber genug Zeit mit RP zu reargieren.<br/>
4. Überfälle auf die Polizei sind kein RP/LowRP.<br/>
5. Behandel auch deine Opfer mit Respekt.<br/>
6. Der Sidechat ist kein RP Instrument und gilt als Metagaming<br/>
7. Überfälle sollten möglichst ohne Tote und im Rollenspielkontext stattfinden!<br/>
8. Rollenspiel zum Zeit schinden um seine Freunde in Position zu bringen, nach einer Festname ist lowRP<br/>
9. Ein Warnschuss ist grund für aggressives vorgehen der Polizei</br>
10. Permanentes überzahlverhalten ist KEIN Grund für Straffreiheit<br/>
11. Illegale Fahrzeuge sind Kriegsinstrumente und werden von der Polizei so behandelt.(Beschuss auf Reifen und co - mit Vorankündigung das sie Gesichtet wurden)<br/>
12. Verlieren gehört dazu.<br/>
13. Erwarte immer angemessene Reaktionen auf Provokationen<br/>
14. Illegale Fahrzeuge in Savezones dürfen von den Cops vernichtet werden, wenn es keinen echten RP Hintergrund dafür gibt!<br/>
15. Autodiebstahl ist in Savezones Verboten und wird mit Ban bestraft!<br/>
"
	]
];


player createDiaryRecord["fightrules",
	[
	"Kampfregeln",
"
1: Kämpfe die in Kavala oder Pyrgos starten sind verboten und werden mit KICK oder BAN bestraft!<br/><br/>
1.1: Grund: Dies sind die Orte an denen neue Spieler spawnen, die sollt ihr nicht direkt erschrecken<br/>
1.2: Eine Kampfverlagerung nach Kavala wird geduldet, wenn sie RP Technich einwandfrei ist (KEINE HAMSTER)<br/>
2: Angriffe auf (Polizei)HQs oder Bases zeugen nicht von taktischer Finesse sondern sind Selbstmord!<br/><br/>
2.2: Grund: Jemanden aus dem Polizei HQ zu befreien und dabei 2 Mitglieder zu verlieren ist kein gutes RP.<br/>
2.3: Grund: Angriffe auf GangHQs(RS oder DARG) sind immer zum Scheitern verurteilt. Seid Clever und wartet bis sie rauskommen.<br/>
2.4: Grund: GangHQs sind erklärte Savezones, ausser der Kampf verlagert sich wärend einer Aktion da hin. <br/>
3: Warnschüße gelten als BESCHUSS!<br/>
4: Das Absichtliche zerstören von Fahrzeugen ist verboten.</br>
5: Bei Verfolgungsjagten mit der Polizei ist das Einparken des Fahrzeuges, um illegale Dinge Verschwinden zu lassen, verboten.</br></br>

"
	]
];

player createDiaryRecord["fightrules",
	[
	"Polizei vs. Gang",
"
1: Angriffe auf Polizei HQs sind VERBOTEN! <br/><br/>
1.1: Begründung: Sind Spieler Festgenommen worden und im Polizei HQ festgesetzt ist der Kampf für diese Spieler vorbei!<br/>
1.2: Befreiungsaktionen beschränken damit sich auf den Gefangenentransport oder das Gefängnis!<br/>
2: Die Polizei versucht den Kampf immer zu vermeiden, schießt ihr jedoch Scharf auf die Polizei, MÜSST ihr mit entsprechender Reaktion rechnen.<br/>
3: Warnschüße gelten als BESCHUSS!<br/>
4: Verhandelt, benehmt euch als würdet ihr am Leben hängen!<br/>
"
	]
];

player createDiaryRecord["fightrules",
	[
	"Luftkampf",
"
1: Initiale Angriffe auf Bodenziele sind verboten! <br/><br/>
2: Die Hubschrauber dienen nur zur Luftsicherung!<br/>
3: Verteidigung gegen Beschuss ist erlaubt. Danach muss abgedreht werden!<br/>
4: Warnschüße gelten als BESCHUSS!<br/>
5: Dürfen nur in Clanverbänden eingesetzt werden zur Sicherung eines Konvois!<br/>
6: Gilt als Clanbesitz.<br/>
7: Darf nicht als Overwatch eingesetzt werden.<br/>
8: Der Pawnee darf nur bei Anwesenheit von min. 6 Cops benutzt werden.<br/><br/>

"
	]
];


player createDiaryRecord ["fightrules",
[
	"HQ Raid",
"
(Gilt auch für Cops)
Zeibegrenzung: 
Die Angreifende Truppe hat genau 45 Minuten Zeit die Gegneriche Basis einzunehmen</br>
Danach darf die Base für 4h nicht angegriffen werden</br>
</br>
Ankündigung:
Vor Raidbegin MUSS die Gegnerfraktion per SMS Informiert werden.</br>
"
	]
];

player createDiaryRecord ["fightrules",
[
	"Zentralbank",
"
1.  Die Zentralbank ist ein gesperrtes Gebiet fuer Zivilisten. Zivilisten duerfen die Zentralbank nicht ohne Genehmigung betreten. Tun sie dies doch, werden sie entfernt. Bei wiederholtem Vergehen werden Zivilisten Verhaftet. <br/>
2.  Im Bereich der Zentralbank herrscht Flugverbotszone!<br/>
3.  Der Bankraub funktioniert erst wenn mindestens 5 Polizisten online sind<br/>
4.  Die eingeteilten Polizisten sollten sich sofort zur Zentralbank begeben, kleine Verbrechen koennen in diesem Fall ignoriert werden.<br/>
5.  Waffeneinsatz ist gestattet, allerdings sollte jede Moeglichkeit sie lebend gefangen zu nehmen zuerst versucht werden.<br/>
6.  Die Polizei darf nicht blind in die Bank feuern.<br/>
7.  Die Polizei sollte Zivilisten in der Bank evakuieren.<br/>
8.  Jeder Zivilist, der sich in unmittelbarer Umgebung des Bankgelaendes aufhaellt, gilt wahrend eins Bankueberfalls als potentieller Komplize der Bankraeuber.<br/>
9.  Im Rahmen eines Bankueberfalls gilt die Respawnregel nicht fuer die Polizei.<br/>
10. Cops duerfen, sollten sie bei einem Bankueberfall sterben, EIN MAL respawnen und erneut am Bankueberfall teilnehmen.<br/>

"
	]
];

player createDiaryRecord ["fightrules",
[
	"Illegale Gebiete", 
	"
1. Das Rebellengebiet wird nicht als Illegales Gebiet angesehen, sondern als ausserhalb der Zustaendigkeit der Polizei. Diese kann dort mit mind. 3 Polizisten nach eigenem Ermessen eingreifen.<br/>
2. Cops duerfen illegale (Rot Markiert) Gebiete nicht ohne einen Raid betreten. Patrouillen in diesem Gebiet sind Untersagt!<br/>
3. Einem Polizist ist es unter keinen Umstaenden erlaubt ein illegales Gebiet zu becampen. (Ausnahme Grenzposten am Rebellengebiet)<br/>
4. Polizisten duerfen mobile Checkpoints nicht naeher als 1200 Meter an einem illegalen Ort (Drugfields, Drugprocessings) aufbauen.<br/><br/>
5. Polizisten dürfen Illegale verarbeitungsstätten oder Händler für die dauer von 30 Minuten becampem.<br/>
6. Polizisten dürfen kein Dauercamp bei den im Punkt 5 genannten Punkten einrichten.<br/>

	"
]
];


player createDiaryRecord["gangregeln",
[
"Gangregeln",
"
Gang Politik:<br/><br/>
Politik zwischen den Organisationen ist sehr wichtig für das Leben auf unserem Insel Staat.<br/>
<br/><br/>
Jede Organisation muss einen Head Commander bzw. Diplomaten und Stlv. Diplo haben.<br/>
Die Identität des Diplomaten muss nach außen bekannt sein, er ist öffentlicher Ansprechpartner für die Bevölkerung / Organisationen und Polizei von Altis.<br/>
<br/><br/>
HC = Head Commander einer Organisation<br/>
Diplo = Diplomat einer Organisation<br/>
<br/><br/>
Alle Organisationen haben die Möglichkeit Ressourcen und -geografische Kriege zu führen.<br/>
<br/><br/>
Hier findet Ihr alle bekannten Verträge der Oranisationen.<br/>
<br/><br/>
VB = Verteidigungsbündnis<br/>
AUVB; AuVB = Angriffs und Verteidigungsbündnis<br/>
NAP = Nichtangriffspakt<br/>
Meta = Bündnis aus mehreren Organisationen (Ähnlichkeit zur NATO)<br/>
<br/><br/>

Beispiel:
<br/>
[VB] Schließen zwei Gangs ein VB ab, so muss die Gang sich Gegenseitig bei einem Angriff auf einer der beiden Gangs bei der Verteidigung unterstützen.
<br/>
[AuVB] Wird einer Gang der Krieg erklärt, so wird automatisch allen Gangs im AuVB-Vertrag den Krieg erklärt. Kill-On-Sight ist in dem Rahmen berechtigt
<br/>
[NAP] Einen Nichtangriffspakt abzuschließen bedeutet, das sich beide Gangs nicht mehr angreifen/überfallen sollte es doch zu einem Angriff kommen wird der NAP automatisch hinfällig.
<br/>
[Meta] Eine Meta abzuschließen, bedeutet sich mit anderen Organisationen auf lange Zeit zusammen zu tun, um Ziele zu erreichen.	<br/>
	"

]
];

player createDiaryRecord["gangregeln",
[
"Scharmützel",
"
1: Respawn bei tot ist verboten</br>
2: Respawn bei tot ist verboten</br>
3: Respawn bei tot ist verboten</br>
4: 15 Min. warte vor Respawnerlaubs. Ausnahmen regeln die Medics!</br>
5: Widersetzen gegen die Regeln bedeutet kick!</br>
6: Wiederholtes wiedersetzen bedeutet Ban!</br>
7: Ist kein Medic online gelten Regeln 1-6 nicht!</br>
"
]
];


player createDiaryRecord["gangregeln",
[
"Kampfregeln",
"
Sobald 2 Grupperiungen miteinander im Krieg sind greift die Polizei nur ein sobald Zivilisten zu schaden kommen oder das Kriegsgebiet sich auf die Städte ausweitet.<br/>
Ein Krieg ist kein Grund wahllos andere (nicht beteiligte) Spieler zu töten.<br/>
Civilisten sollten die Kampfgebiete jedoch meiden.<br/>
Auch wärend des Krieges muss der Gegenpartei die Möglichkeit gegeben werden eine Waffenruhe oder einen Friedensvertrag zu erwirken.<br/> 
Ein Krieg ist kein Ausrede für dauerhafte Ballereigeilheit.<br/>
Die Dauer eine Krieges beträgt MAXIMAL 4 Tage!<br/>
Zwischen 2 Kriegen müssen mindestens 2 Tage Waffenruhe liegen!<br/>
Das Startdatum und der Kriegszustand zwischen den Parteien muss im Blog bekannt gegeben werden (http://hero.g3ce.net/blog)<br/>
<br/>><br/>
Wärend des Krieges sind die Parteien berechtigt mit allen zur Verfügung stehenden Mitteln zu Kämpfen.<br/>
Ist deine Fraktion unterlegen, gib einfach auf.<br/>
Auch im Kampf gelten die RP Regeln.  <br/>
Zerstörte Fahrzeuge/Hubschrauber/Schiffe werden von den Admins NICHT ersetzt. Ihr Spielt krieg, lebt mit den Konsquenzen. Krieg ist halt teuer!><br/>
Das Zerstören/Verkaufen von Fahrzeugen/Schiffen und Hubschraubern ist ein erlaubtes Kampfmittel.<br/> WENN SIE DIE PARTEIEN IM KRIEGSZUSTAND BEFINDEN - NUR DANN.
Die Spieler der Kriegsfraktionen sind nur anzugreifen wenn sie mit CLANTAG erkannt sind. <br/>

Bsp:<br/> 
Spieler Horst:<br/>
Charakter 1: [FOO] imBA-KILLER - ist Ziel<br/>
Charater 2: ImBA-KILLER - ist kein Ziel - da inkognito/andere Person - Ausnahme ist die (freiwillige) Teilnahme an den Kampfhandlungen <br/>


Die Kriegserklärung muss von beiden Seiten akzeptiert werden, so wird verhindert das große Gangs die kleinen einfach Plattmachen. <br/>
Der Krieg ist vorbei sobald eine Partei aufgibt! <br/>
Die Normalen Regeln des Kampfes (15min usw) gelten weiterhin! <br/>
	"
]
];

player createDiaryRecord["safezones",
[
"Safe Zones",
"
Das absichtliche Sprengen von Fahrzeugen, Raub oder das Toeten anderer Spieler in oder um die folgenden Gebiete wird mit einem Bann bestraft.<br/><br/>

Jeder Waffenladen Umkreis 100 Meter<br/>
Alle Polizei Hauptquartiere Umkreis 100 Meter<br/>
Rebellenstuetzpunkte Umkreis 100 Meter<br/>
Jedes ATM Umkreis 100 Meter<br/><br/>
Jede Rebellenbasis<br/><br/>
Kavala und PYRGOS!<br/>
<br/>
Befindet man sich in einer Verfolgungsjagd, gelten Safezones nicht als Safezones! (Gilt fuer Cops wie fuer Zivilisten)<br/>
D. h. das Retten in eine Safezone ist nicht erlaubt!<br/><br/>
"
]
];



player createDiaryRecord ["streets",
[
"Geschwindigkeitsbegrenzung", 
	"
Folgende Geschwindigkeitsbegrenzungen gelten in ganz Altis:<br/><br/>
Marktplatz: 30km/h<br/>
Innerorts: 50km/h<br/>
Ausserorts: 100km/h<br/>
Highway: 130km/h<br/><br/>
	"
]
];

player createDiaryRecord ["rules",
[
"Waffen", 
"
Einem Polizisten ist es niemals erlaubt Zivilisten mit Waffen zu versorgen. Dies wird mit einer Suspendierung geahndet.<br/><br/>

Legale Waffen fuer Zivilisten sind:<br/>
1. 4-five<br/>
2. Rook<br/>
3. ACP-C2<br/>
4. SDAR 9mm<br/>
6. PDW2000<br/><br/>

Jede andere Waffe ist illegal.<br/><br/>

1. Zivilisten ist es nicht erlaubt innerhalb einer Stadt eine Waffe offen zu tragen.<br/>
2. Zivilisten koennen ausserhalb von Staedten legale Waffen tragen, doch sollten sie auf Nachfrage bereit sein, dem Polizisten ihre Lizensen zu zeigen.<br/><br/>
"
]
];

player createDiaryRecord ["rules",
[
"Geiselnahmen", 
"
Wir verhandeln nicht mit Terroristen. (Wenn das RP gut ist gehen wir aber drauf ein)</br>
"
]
];


player createDiaryRecord ["rules",
[
"Nicht toedliche Gewalt",
"
Zurzeit ist der Taser die einzige Form nicht toedlicher Gewalt.<br/><br/>

1. Der Taser soll dazu genutzt werden Zivilisten welche sich den Anweisungen wiedersetzen ruhig zu stellen oder zu verhaften.<br/>
2. Das unangebrachte Feuern des Tasers fuehrt zu einer Suspendierung.<br/>
3. Benutze den Taser nur um das Gesetz zu wahren, nicht um anderen deinen Willen aufzuzwingen.<br/><br/>
"
]
];

player createDiaryRecord ["rules",
[
"Bussgeldkatalog",
"
<b>Bussgeldkatalog</b><br/>
1. Bussgelder muessen den Umstaenden angepasst werden <br/>und es duerfen beispielsweise keine 100K fuer eine Geschwindigkeitsuebertretung ausgestellt werden.<br/>
2. Verweigerung der Zahlung eines Bussgeldes, kann zur <br/>Gefaengnisstrafe fuehren.<br/>
3. Bei Unsicherheit ueber den Preis eines Tickets, wird <br/>ein ranghoeherer Polizist gefragt bzw hinzu gezogen.<br/><br/>

<b>Paragraph 1.Allgemeine Verkehrsregeln</b><br/>
Abs1. Geschwindigkeitsuebertretung = 5.000$<br/>
Abs2. Fahren ohne Licht = 5.000$<br/>
Abs3. Fahren ohne gueltigen Fuehrerschein = PKW = 10.000$ <br/>LKW = 5.000$ Luftfahrzeuge =10.000$ Wasserfahrzeuge = 10.000$<br/>
Abs4. Fahren auf der Falschen Strassenseite = 5.000$<br/>
Abs5. Fahren abseits der Wege (Ausgenommen Ressourcenfelder) = 3.000$<br/>
Abs6. Behindern des Verkehrs = 3.000$<br/>
Abs7. Mutwilliges Zerstoeren von Fremden Eigentum <br/>mit Fahrzeugen = Entzug des Fahrzeuges + 5.000$<br/><br/> 

<b>Paragraph 2.Waffenbesitz</b><br/>
Abs1. Waffenbesitz ohne Gueltigen Waffenschein = 10.000$ + Entzug der Waffe<br/>
Abs2. Illegaler Waffenbesitz = 15.000$ + Entzug der Waffe<br/>
Abs3. Illegaler Sprengstoffbesitz = 30.000$ + Gefaengnisstrafe<br/>
Abs4. oeffentlich in Kavalar mit Schusswaffe rum laufen = 20.000$ Strafe und einziehen der Waffe.<br/><br/>

<b>Paragraph 3.Drogenbesitz</b><br/>
Abs1. Drogenfund = 100.000$ + sofortige Gefaengnisstrafe ab Kleintransporter (Truck)<br/>
Abs2. Drogenkonsum = 15.000$<br/><br/>

<b>Paragraph 4. Mord und Raub</b><br/>
Abs1. Raub = 50.000$ bis zu Gefaengnisstrafe<br/>
Abs2. Koerperverletzung = 5.000$<br/>
Abs3. Unfall mit Todesfolge = 10.000$<br/>
Abs4. Versuchter Mord = 20.000$ + Gefaengnisstrafe<br/>
Abs5. Mord = 100.000$ + Gefaengnisstrafe<br/>
Abs6. Mord an einen Polizeibeamten 100.000$ Strafe und Gefaengnisstrafe<br/>
Abs7. Versuchter Mord an einen Polizeibeamten 50.000$ Strafe und Gefaengnisstrafe<br/><br/>

<b>Paragraph 5. sonstige Vergehen</b><br/>
Abs1. versuchter Auto diebstahl 10.000$<br/>
Abs2. Fahren ohne gueltige zulassung auf das jeweilige <br/>fahrzeuges = Fahrzeug wird beschlagnahmt und 15.000$ Strafe<br/>
Abs3. Illegales betreten von sperrgebieten = 1.000$ + Platzverweiss<br/>
Abs4. Erpressen von Geldern oder fahrzeugen = 15.000$ (nach Absprache mit dem Rang hoechsten Beamten)<br/>
Abs5. Beleidigungen gegenueber Beamten oder Zivilisten = 10.000$<br/>
Abs6. Geiselnahmen = 200.000$<br/>
Abs7. Bankueberfall = 500.000$ je Rebel der daran beteiligt ist<br/>
Abs8. Illegaler Fahrzeugbesitz 100.000$ Strafe. Fahrzeug wird eingezogen.<br/><br/>
Andere hier nicht aufgefuehrte Straftaten werden bitte nach <br/>eigenem Ermessen erhoben. Ggf einen Ranghoereren Beamten hinzu ziehen.<br/>

<b>Bussgeldkatalog Update: 14.09.2014</b><br/>
"
]
];




player createDiaryRecord ["rules",
[
"Gang Regeln",
"
1. Es ist nicht illegal, in einer Gang zu sein.<br/>
2. Es ist nicht illegal, sich in einem Gang Gebiet aufzuhalten, nur, wenn man an illegalen Aktivitaeten beteiligt ist.<br/><br/>"
]
];

player createDiaryRecord ["rules",
[
"Illegale Dinge",
"
Es ist fuer Zivilisten illegal diese Fahrzeuge und Gegenstände zu besitzen.<br/><br/>

1. Ifrit<br/>
2. Speedboat<br/>
3. Hunter<br/>
4. bewaffneter Offroad<br/>
5. Police Offroad<br/>
6. Strider<br/>
7. Pawnee<br/>
8. Jede Form vom Drogen<br/>
9. Ausrüstung der Polizei oder Medics<br/>
10. Alle Waffen und (bewaffneten)Fahrzeuge aus den Rebellenbase<br/>
"
]
];

player createDiaryRecord ["rules",
[
"Fahrzeugdiebstahl",
"
Es ist verboten die Fahrzeuge von ADAC und MEDICs zu klauen.<br/>
Jedem Spieler muss genug (min. 15sekunden) Zeit gegeben werden sein Fahrzeug zu Parken oder zu abzuschliessen<br/><br/> 
"
]
];

// SD Regeln
player createDiaryRecord ["shadowdragons",
[

"TastenBelegung",
"
Neu:</br>
- Earplugs für Heli oder anderes. Schraubt den Gamesound auf 10% runter. (Shift + Z)

"
]
];

player createDiaryRecord ["controls",
	[
	"Changelog", 
"
- Strider für Rebellen eingefügt
- Helicopter DLC für alle (Einsteigen mit Windowstaste)
- Animationen gefixed
- Rook nicht mehr für Zivilisten verfügbar
- Map ueberarbeitet
"
	]
];



