// arg0: ind de dialogo
// ret: str del dialogo

switch argument0 {

// para objeto txt
case 0:
return "Nome o indirizzo email registrato";
case 1:
return "Password per entrare";
case 2:
return "Nuova password (opzionale)";
case 3:
return "E-mail per creare un account";
case 4:
return "Il tuo nome utente";
case 5:
return "Nome o e-mail da cercare";
case 6:
return "Testo libero";

// para GUI
case 100:
return "Attenzione: fai attenzione a non usare la tua password per reti importanti (bassa sicurezza)";
case 101:
return "Italian";
case 102:
return "Web + Soft";
case 103:
return "Nessun errore di connessione a Internet";
case 104:
return "Reg:";
case 105:
return "Mod:";
case 106:
return "Atto:";
case 107:
return "Jan";
case 108:
return "Feb";
case 109:
return "Mare";
case 110:
return "Apr";
case 111:
return "Maggio";
case 112:
return "Jun";
case 113:
return "Lug";
case 114:
return "Ago";
case 115:
return "Sep";
case 116:
return "Ott";
case 117:
return "Nov";
case 118:
return "Dic";
case 119:
return "Ariete";
case 120:
return "Toro";
case 121:
return "Gemelli";
case 122:
return "Cancro";
case 123:
return "Leo";
case 124:
return "Vergine";
case 125:
return "Libra";
case 126:
return "Scorpione";
case 127:
return "Sagittario";
case 128:
return "Capricorno";
case 129:
return "Acquario";
case 130:
return "Pesci";
case 131:
return "Tutti";
case 132:
return "Solo con testi lunghi";
case 133:
return "Attivo solo di recente";
case 134:
return "Di tutto il mondo";
case 135:
return "Attenzione Devi essere loggato per la ricerca automatica";
case 136:
return "Famiglia";
case 137:
return "Contadino";
case 138:
return "cucinare";
case 139:
return "Artigiano";
case 140:
return "Minatore";
case 141:
return "fabbro";
case 142:
return "Medico";
case 143:
return "Capo";
case 144:
return "Difensore";
case 145:
return "Guerriero";
case 146:
return "Pialla";
case 147:
return "Mago";
case 148:
return "Sacerdote";
case 149:
return "Artista";
case 150:
return "Atleta";
case 151:
return "Clown";
case 152:
return "Compagno";
case 153:
return "Uomo d'affari";
case 154:
return "Cleaner";
case 155:
return "Hippie";
case 156:
return "Domatore";
case 157:
return "Pilota";
case 158:
return "Corriere di consegna";
case 159:
return "scrittore";
case 160:
return "Ingegnere";
case 161:
return "Architetto";
case 162:
return "Assassino";
case 163:
return "Scientifico";
case 164:
return "Ruoli";
case 165:
return "Zone";
case 166:
return "Emozioni";
case 167:
return "Zodiaco";
case 168:
return "Fem";
case 169:
return "Wat";
case 170:
return "Gro";
case 171:
return "Aria";
case 172:
return "Male";
case 173:
return "Neu";
case 174:
return "Gelatina";
case 175:
return "Pro";
case 176:
return "Media";
case 177:
return "Ufficiale";
case 178:
return "Disco";
case 179:
return "Settimanalmente:";
case 180:
return "Totale:";
case 181:
return "Attenzione Devi essere loggato per fare una simulazione ufficiale";

// para nombre de zona
case 200:
return "Nord America (Canada)";
case 201:
return "Nord America (USA)";
case 202:
return "Nord America (Messico)";
case 203:
return "Sud America (Colombia)";
case 204:
return "Sud America (Brasile)";
case 205:
return "Sud America (Argentina)";
case 206:
return "Europa (Spagna)";
case 207:
return "Europa (Inghilterra)";
case 208:
return "Europa (Germania)";
case 209:
return "Europa (Russia)";
case 210:
return "Est (Arabia)";
case 211:
return "Oriente (India)";
case 212:
return "Oriente (Cina)";
case 213:
return "Africa (Egitto)";
case 214:
return "Africa (Congo)";
case 215:
return "Africa (Sud Africa)";
case 216:
return "Oceania (Australia)";
case 217:
return "Nord America";
case 218:
return "Sud America";
case 219:
return "Europa";
case 220:
return "est";
case 221:
return "Africa";
case 222:
return "Mondo (tutto)";

// para nombres de comportamientos
case 300:
return "Difendi il tuo paese, non andartene";
case 301:
return "Attacca un paese a caso";
case 302:
return "Attacca il paese più forte";
case 303:
return "Attacca il paese più debole";
case 304:
return "Attacca il paese più vicino";
case 305:
return "Resta in gruppo, segui il gruppo";
case 306:
return "Segui un altro cittadino a caso";

// mensajes HTTP
case 400:
return "Errore sconosciuto";
case 401:
return "Errore di connessione al server";
case 402:
return "Errore del database del server";
case 403:
return "Errore La versione dell'app non è appropriata";
case 404:
return "Errore Parametri insufficienti";
case 405:
return "Errore nella richiesta del server";
case 406:
return "Attenzione Il nome utente esiste già";
case 407:
return "Attenzione Quello che stavi cercando non è stato trovato";
case 408:
return "Avviso È necessario modificare una volta ogni ora";
case 409:
return "Registrato con successo, controlla la tua posta";
case 410:
return "Attenzione Si prega di inserire un indirizzo email o un nome validi";
case 411:
return "Attenzione La password deve contenere almeno 6 caratteri";
case 412:
return "Operazione riuscita Informazioni aggiornate";
case 413:
return "Avviso Aggiorna i dati nella scheda flag";

// titulos de los temas del libro
case 500:
return "A proposito di DelRow";
case 501:
return "Accedi e registrati";
case 502:
return "Trattamento dei dati";
case 503:
return "Icone del profilo";
case 504:
return "Profile Edition";
case 505:
return "Ricerca profilo";
case 506:
return "Casa di famiglia)";
case 507:
return "Crop (contadino)";
case 508:
return "Panetteria (Cuoco)";
case 509:
return "Sartoria (Artigiano)";
case 510:
return "Mine (Miner)";
case 511:
return "Metalwork (fabbro)";
case 512:
return "Ospedale (dottore)";
case 513:
return "Forum (Leader)";
case 514:
return "Torre (difensore)";
case 515:
return "Caserma (Guerriero)";
case 516:
return "Cimitero (Cepulturero)";
case 517:
return "Rituale (Mago)";
case 518:
return "Tempio (Sacerdote)";
case 519:
return "Conservatorio (Artista)";
case 520:
return "Palestra (Atleta)";
case 521:
return "Giochi (Clown)";
case 522:
return "Motel (compagno)";
case 523:
return "Mercato (commerciante)";
case 524:
return "Cestino (Cleaner)";
case 525:
return "Park (Hippie)";
case 526:
return "Allevamento (Domatore)";
case 527:
return "Porto (pilota)";
case 528:
return "Messenger (Messenger)";
case 529:
return "Library (scrittore)";
case 530:
return "Turbine (Ingegnere)";
case 531:
return "Edificio (Architetto)";
case 532:
return "Bar (Killer)";
case 533:
return "Laboratorio scientifico)";
case 534:
return "Comportamento Parte 1";
case 535:
return "Comportamento Parte 2";
case 536:
return "Aggiornamento delle statistiche";
case 537:
return "Statistiche generali";
case 538:
return "Dati statistici";
case 539:
return "Icone di guerra";
case 540:
return "Pulsanti di guerra";
case 541:
return "Guerra personalizzata";
case 542:
return "Simulatore di comandi";
case 543:
return "Simulatore di unità";
case 544:
return "Centri di simulazione";
case 545:
return "Informazioni su questo libro";

// parrafos de los temas del libro
case 700:
return "Software interattivo creato da Omar Jordán (Omwekiatl), Colombia 2021 (v $).##Comunità virtuale che alimenta una simulazione di guerra mondiale, puoi:##- Personalizza il tuo avatar.##- Esprimi qualcosa alla lettera.##- Cerca altri profili.#- Seleziona la zona del mondo che supporta.#- Scegli il tuo ruolo nella società.#- Scegli una modalità di comportamento.#- Visualizza lo stato attuale della guerra e le statistiche.#Questa versione per PC ha il motore di simulazione, con parametri avanzati.#Lingua ufficiale: spagnolo.";
case 701:
return "Per registrarti usa una mail, che riceverà una password.##Per accedere, utilizza l'email con cui ti sei registrato o il nome utente; Durante la registrazione vedrai un nome utente e una password casuali nella tua e-mail, questi possono essere modificati.##La terza barra del login serve per inserire una nuova password, nel caso vogliate cambiare quella precedente fate attenzione, non usate password importanti.##Se non ricordi la password, accedi di nuovo per ottenerne una casuale.##Maiusc + Canc: riga di testo pulita.";
case 702:
return "Le tue informazioni non saranno vendute o condivise con terze parti, né verranno utilizzate per promuovere pubblicità, ma le statistiche globali della comunità possono essere visualizzate pubblicamente, ecco di cosa si tratta.##La tua password è crittografata, ma fai attenzione.##Puoi esprimere quello che vuoi nel tuo profilo, non c'è censura o divieto, quindi non è un sistema adatto a minori o persone sensibili; ci fidiamo ancora della tua etica (sii bravo).";
case 703:
return "Informazioni sull'immagine:#nome / zona / ruolo.##Immagine:#Building (Role) / Ávatar / Zodiac.##Sotto immagine: testo libero, comportamento.#In basso a sinistra, date di: - Registrazione nel sistema.#- Modifica del profilo.#- L'ultima volta attivo.#Pulsanti in basso a destra: - Chiudi sessione (log out).#- Modifica profilo (1 volta ogni ora).";
case 704:
return "- Modifica il tuo nome (deve essere univoco).##- Modifica la zona che supporta.##- Modifica avatar con le frecce verdi.#- Scrivi qualcosa (lo sfondo rossastro indica vasto).#- Modifica il comportamento.#Pulsanti in basso a destra:#- Verde: annulla la modifica.#- Rosso: accetta e invia le modifiche.#Maiusc + Canc: riga di testo pulita.#Puoi copiare e incollare (Ctrl + C) (Ctrl + V).";
case 705:
return "Puoi cercare un profilo utente se ha il loro nome o indirizzo email, annotalo e fai clic sulla lente di ingrandimento; oppure premi la levetta se stai cercando il tuo profilo.##La ricerca casuale ti permette di filtrare per:#- Zona.##- Profili con testo vasto.##- Attivo per meno di una settimana.#Colpisci i dadi per cercare.#Una volta in un profilo, ci sono due pulsanti per:#- Fare un'altra ricerca.#- Fai uno screenshot (png).";
case 706:
return "Tutti possono avere un lavoro e una casa con i bambini, beh non qui, si scopre che questo ruolo rappresenta coloro che vivono per la loro famiglia, la loro casa, crescono ed educano i loro figli; vivono in una casa confortevole e si associano a un partner che professa lo stesso interesse; forse è il ruolo più antico e naturale.##Sono unità di base, le loro abilità e parametri sono quelli che avrebbe un mondo senza ruoli, ma ... portano mezzo seme, e quando due di questo stesso ruolo si incontrano, cresceranno in uno spawn, che crescerà e diventerà un abitante in più.";
case 707:
return "Sono la base del sostentamento di una città o di una città, senza dubbio il cibo la popolazione è felice, o viva ... di solito si trovano in campi verdi e vasti, con pozzi per estrarre l'acqua sotterranea, e circondati da ortaggi come: avena, banana, mais, fagioli, quinoa, cacao, arachidi, frumento.##Nella battaglia hanno un'aura alimentare, quindi danno cibo agli alleati; Le unità alimentate essendo più incoraggiate attaccano più velocemente, il che dà loro un vantaggio; ma è cibo crudo, quindi il suo effetto non dura a lungo, devono rimanere nell'aura.";
case 708:
return "Chi non ama l'odore del pane caldo, o qualsiasi cibo appena fatto, perché evocare quella sensazione è il lavoro di questo ruolo, e va bene, anche nutrirsi ... è incaricato di trasformare il raccolto in una prelibatezza nutriente, la sua specialità è: avena con cannella, torta alla banana, arepa di mais, hamburger di fagioli, biscotti alla quinoa, dolce al cioccolato, torta alla frutta secca.##Nutri un alleato alla volta, cioè ogni volta che esegue la sua abilità speciale; Le unità alimentate essendo più incoraggiate attaccano più velocemente, il che dà loro un vantaggio; l'effetto di questo buon cibo dura a lungo.";
case 709:
return "Molta abilità nelle mani, pazienza e le idee necessarie per trasformare un pezzo di materiale in ... un materiale più pregiato; Che si tratti di realizzare abiti da indossare, indossare e proteggere dal freddo, scarpe da ballo, mobili da visitare o dormire sognando un mondo senza guerre, lo faranno.##Ogni volta che la sua abilità speciale viene attivata, vestirà un'unità alleata con un fantastico mantello antiurto, che conferisce all'unità un'armatura consumata dai colpi ricevuti.";
case 710:
return "Queste talpe dalle viscere della terra estraggono la materia prima per tutte le attività manifatturiere, non si curano del rumore delle macchine frantumatrici né respirano l'aria densa del sottosuolo, che se, instancabilmente cercano di trovare l'oro, il diamante, il adamantio per ottenere un anello o un dente.##Sono bravi nell'assedio, possono abbattere il centro urbano nemico come se fosse solo un'altra fragile pietra, raccolgono anche il prezioso nei loro assedi per riparare il proprio centro urbano.";
case 711:
return "Questo ruvido cittadino non si preoccupa del calore della fonderia, rimane lì trasformando i minerali grezzi in manufatti quotidiani come: pentole, bicchieri, piedistalli, sbarre e ogni tipo di torsioni di ferro; Tra questi l'occasionale machete, spada, ascia da battaglia ... Ogni tanto crea un'arma in più e la dà a un alleato, le unità con quest'arma in più hanno più attacco, ma non tutto è perfetto, quindi prima o poi e con un po 'di sfortuna l'arma si romperà.##";
case 712:
return "La salute, la cosa principale per vivere e ancora di più per vivere bene; Questo ruolo ha il compito di garantire il benessere dei propri; Prima di arrivare alla fine di un intervento chirurgico o di consumare sostanze chimiche forti, cercano di diffondere buone abitudini come: idratarsi bene, fare esercizio (flessibilità + cardio), essere felici e senza stress, mangiare equilibrato senza grassi, o zuccheri e poche carni, respirare profondamente , dormire bene e, occasionalmente, un digiuno con spezie curative.##E beh, dal punto di vista della simulazione, curano gli alleati, che si tratti di danni fisici o infezioni virali.";
case 713:
return "Ci sono sempre stati quegli abitanti che hanno voce di comando, iperattività per realizzare progetti e un forte senso dell'onore e dell'altruismo, questo ruolo offre nella società la capacità di raggruppare e dirigere idee, progetti, iniziative, proteste; Per fare questo, deve ascoltare gli altri, aprire forum di discussione, mettere ordine e, soprattutto, dare l'esempio.##Indipendentemente dal comportamento degli altri alleati, questo ruolo li convince a seguirlo, riunendo così un piccolo gruppo, in questo modo non andrai da solo, un altro vantaggio di questo è che i membri si sincronizzeranno quando rispondono ad un attacco su uno di loro .";
case 714:
return "È l'equivalente di un poliziotto, la sua specialità è la protezione quindi porta un grande scudo, invece di andare in guerra la sua missione è mettere ordine all'interno di una società, far sentire le persone al sicuro, neutralizzare ogni minaccia.##È l'unità più resistente, cioè la sua capacità; D'altra parte fornisce una torre come edificio, spara al nemico, ma è più lenta delle torri di campagna realizzate direttamente sul campo di guerra, anche se queste ultime sono facilmente demolibili rispetto a quella interna.##Resistente agli attacchi di criminali ed esplosivi.";
case 715:
return "È l'equivalente di un militare, questo è un brutale guerriero che esce sul campo di battaglia con sete di sangue, distruggendo il nemico.##Forse stai pensando che in un gioco di guerra che senso avranno gli altri ruoli, beh c'è un equilibrio, non fatevi ingannare, tutti i ruoli hanno vantaggi e svantaggi, e la comunità si esprime con tutti per una questione di gusti ... ma sì, questo si distingue per essere quello con il più alto attacco (abilità passiva).";
case 716:
return "È una rarità, come un corvo, con pensieri malinconici e profondi ha visto molte sepolture, molte lacrime, molte conclusioni; Di solito sono entità solitarie e meditative, il loro ruolo è quello di dare riposo e alloggio al defunto; la morte, il più grande mistero della vita, questo ruolo è costantemente vissuto ed è buono per dare consigli alle persone in lutto.##Quando uccide un nemico sul campo di battaglia, recupera punti vita, come se fosse un vampiro.";
case 717:
return "Essendo uno straniero dedito alle arti arcane, al mistico, alla stregoneria, per lo stesso motivo per cui solitamente tace su ciò che sa, si dice che passi più tempo a viaggiare nei suoi sogni e nella meditazione che nella vita stessa; Cerca di portare a termine la grande opera alchemica, scruta i segreti del cosmo e dialoga con le entità più diverse.##Quando muore diventa uno spettro che segue il nemico dandogli sfortuna nei suoi attacchi, questo è un effetto aura, quindi ne colpisce diversi contemporaneamente; nella vita difficilmente può essere convertito dai sacerdoti.";
case 718:
return "Ha un tempio a cui dedica la sua devozione per la vita, questo tempio a sua volta simboleggia un dio dei tanti che ci sono, alcuni più antichi di altri, alcuni più dimenticati e altri più alla moda; veglia sul morale della società, soppesandone i fardelli emotivi con la promessa di un aiuto supremo.##La sua funzione è quella di convertire ideologicamente un'unità, il che significa che può fare un alleato nemico, ma questa è una probabilità con un singolo tentativo, che può essere influenzata da effetti di fortuna, ad esempio: avrà una bassa probabilità prima della maledizione di uno spettro.";
case 719:
return "Musica, pittura, scultura, canto, recitazione ... molto varia e bella è la gamma dell'arte e la sua manifestazione infinita, questo ruolo cattura senza dubbio sogni e incubi su carta e suono, ogni società ha bisogno di esprimersi, questo è il più trascendentale .##In battaglia porterà una chitarra, che polarizzerà l'aria con ispirazione, dando più fortuna agli attacchi degli alleati; anche così, questo effetto è temporaneo, quindi richiede la presenza costante dell'aura.";
case 720:
return "Un essere molto energico, flessibile, forte, instancabile, abile, che vive solo per essere nella sua palestra o viaggiare per il mondo senza fermarsi, ama gareggiare e sente di essere sempre meglio di se stesso e degli altri; Il suo unico obiettivo è rompere gli obiettivi, gode di una salute senza pari ma è in balia di molteplici infortuni.##Corre e niente più veloce di chiunque altro, il che gli dà una grande mobilità sul campo di battaglia, ha anche la capacità di sferrare un grande colpo la prima volta che attacca, come un affondo con la sua inerzia accumulata.";
case 721:
return "Giochi d'azzardo, scacchi, dama cinese, scala, parchi, poker, uno, magia, sciarade e molto altro, che trovi qui, nella costruzione di questo personaggio amichevole, estroverso e felice; Non c'è assolutamente niente come il tempo libero e le risate, ma attenzione, diventi dipendente ahahah.##Tutta una roulette russa, questo ruolo porta con sé una bomba ad alta potenza con la quale può staccare la carne dall'osso, da se stessa, dai suoi alleati e ovviamente dal nemico; l'esplosione è casuale quando subisce danni.";
case 722:
return "Una società sana esprime la sua sessualità senza tabù o moralità estreme, qui questo ruolo offre un luogo per i giochi erotici, sia con uno spirito riproduttivo o meglio ancora per il tempo libero; E come se non bastasse, fornisce i propri servizi come azienda speciale (con libertà di scelta).##Scegli un solo alleato e accendilo, dando loro più punti ferita, punti attacco e immunità agli effetti di altri ruoli; Questo seguirà e quando uno dei due muore, il legame con i suoi benefici viene interrotto per sempre; la debolezza dell'alleato illuminato è la sua compagna di base.";
case 723:
return "I prodotti realizzati dalla manifattura hanno bisogno di essere venduti, commercializzati, questa è la funzione di questo ruolo, che sa anche fare buoni compromessi per il suo carisma perché non sempre c'è denaro nei momenti difficili; la sua costruzione è un hobby per chi cerca gadget poco necessari; è un esperto nel fare fortune, estrae monete da dove non ce ne sono.##Puoi prendere armi e mantelli nemici e tenerli o darli a un alleato; fondamentalmente trasforma la produzione nemica in beni per gli alleati.";
case 724:
return "Ha l'ossessione di vedere tutto pulito, tiene molto allo smaltimento dei rifiuti, il suo motto è Riduci, Riutilizza, Ricicla; Perché questo aiuta a ridurre l'inquinamento; gli piace vedere i bidoni della spazzatura ordinati per carta, plastica, elettronica e organico, poiché ciò riduce il lavoro nel suo edificio; falcia anche il prato.##La guerra lascia molti cadaveri decomposti, un intero casino, questo ruolo guadagna un po 'di vita con ogni cadavere che elabora.";
case 725:
return "Una città ha bisogno di parchi e riserve naturali, per il divertimento, la ricreazione e il collegamento con la fauna e la flora; Questo essere protegge questi spazi e proprio lì conduce una vita un po 'distaccata dalla città; il suo sangue ha una certa dose di funghi allucinogeni.##Può, sotto la pressione di una protesta pacifica, togliere il loro ruolo ai nemici, privandoli della loro abilità speciale, questo lo fa uno per uno ogni volta che attiva la sua abilità.";
case 726:
return "Il rapporto dell'uomo con gli altri esseri in natura è antico, come la bestia da soma, la caccia, la compagnia, il consumo; Questo ruolo alleva i cani, li addomestica e li addestra, in modo che fungano da compagnia per tutti i tipi di persone, sappiamo tutti che c'è chi li vede anche come membri della famiglia.##Quando vede un nemico, può chiamare solo un cane per aiutarlo a combattere, questa entità lo seguirà sempre, ha meno attacchi e vita di un umano e di solito muore di dolore morale se il suo proprietario muore.";
case 727:
return "Viviamo in un mondo fisico, con distanze che separano tutti i punti, trasportare qualcosa o qualcuno da A a B è sempre stata una sfida di ottimizzazione, il pallone o i dirigibili sono stati il ​​veicolo volante ottimale; in questo edificio forniscono i loro servizi per attraversare lunghe distanze.##Dai i palloncini agli alleati quando sono in acqua, in questo modo possono raggiungere la destinazione più velocemente, a terra il pallone scende; Va sottolineato che il combattimento acquatico dà un vantaggio a chi va in mongolfiera.";
case 728:
return "Vuoi esprimere qualcosa a qualcuno, un'emozione, un'idea o un affare, ma è lontano, beh questo ruolo e questo edificio ti permettono di lasciare quel messaggio in mani esperte, come se il telegrafo esistesse.##Strategico, se il suo comportamento è difendere: persuaderà gli alleati in difesa ad attaccare il nemico vicino, senza trascurare la difesa; se il loro comportamento è quello di seguire qualcuno: incoraggerà gli alleati a difendere il centro vulnerabile o meglio coloro che difendono l'attacco in gruppo; per altri comportamenti: farà sì che gli alleati si comportino come lui.##Dopo aver raggiunto un centro nemico, solo una volta, sposterà un'unità nella coda di creazione da quel centro al proprio.";
case 729:
return "Un misto di insegnante e artista, poiché gli piace insegnare e trasmettere la conoscenza, e gli piace anche scrivere cose reali o irreali; il suo edificio è pieno di libri, di tutte le materie, scienza, letteratura, spiritualità, biografie, storia, filosofia, stile di vita, ecc.##Dai la migliore fortuna agli attacchi alleati, colpendoli uno alla volta; questo buff è molto duraturo e ha alte probabilità di colpo critico, perché la conoscenza è potere.";
case 730:
return "Offre energia, la gestione degli incendi è ormai lontana, cosa c'è di nuovo nel dominio dei fulmini (almeno per questo periodo simulato), le turbine eoliche offrono energia pulita per tutti e cosa farne? Ebbene, un sogno dell'umanità è stato quello di creare un homunculus, un golem; Facciamone uno di latta con intelligenza artificiale.##Crea un robot, ha una durata limitata a causa delle sue batterie, ma qualsiasi alleato con questo ruolo può sostituirle; gigante ma non attacca, eppure è un resistente richiamo e una torre da demolizione per eccellenza; si indebolisce con l'acqua, si comporta come chi l'ha programmato o riprogrammato.";
case 731:
return "Cosa sarebbe una società senza edifici, siano essi una capanna o un grattacielo, questo essere crea la città più grande e densa, senza dimenticare che il suo obiettivo è offrire comfort, funzionalità, ottimizzazione e minor impatto ambientale; fornisce un edificio per la vita di diversi cittadini.##Sul campo di battaglia puoi mettere una torre di campagna che spara al nemico, non viene attaccata dai cittadini a causa della sua robustezza; Invece di crearne uno nuovo, puoi aumentare di livello uno esistente.";
case 732:
return "Non tutti coloro che vivono in società lavorano per migliorarla, c'è chi per motivi personali crea conflitti, ladri, assassini, gangster, sono soggetti difficili e di solito si trovano di notte, a bere birra mescolandosi con cittadini onesti.##Di tanto in tanto attaccano i loro alleati a tradimento, di solito è un duro colpo per essere sorpresi; c'è una piccola possibilità di ricevere indietro i danni, in genere questo ruolo è scelto da chi vuole sabotare l'area dall'interno.";
case 733:
return "Si dice che questi soggetti siano pazzi, scrutano tutto ciò che vedono, dalle profondità dello spazio, all'intimità delle molecole, il loro linguaggio è la matematica e il loro lessico è complesso; Nell'edificio che forniscono, vengono solitamente eseguiti molti esperimenti per verificare le ipotesi.##Nei loro fiaschi hanno coltivato un virus molto letale, capace di uccidersi e di trasmettersi, ora lo usano in guerra per infettare un nemico alla volta; questo attacco è simile al veleno, c'è la possibilità di essere curato o danneggiato.";
case 734:
return "Difensiva:#le unità cercano il proprio centro urbano o quello alleato e vi stanno vicino, quando è guerra per i continenti, possono vedere se un centro è assediato e andarci.##Attacco casuale:#sceglieranno un centro nemico a caso e si recheranno ad esso, questo può creare dispersione delle truppe, ci sono anche alcuni casi in cui la destinazione può essere ricalcolata.##Attacca il più forte / il più debole:#prendono di mira il centro nemico che ha il maggior / minor numero di unità disponibili, cioè aggiungi quelle vive con quelle di riserva.";
case 735:
return "Attacca vicino:#assicura che il centro nemico bersaglio sia il più vicino all'unità che sta attualmente cercando chi attaccare.##Move in Group:#I centri calcolano alcuni cerchi di gruppi, le unità di detto centro che hanno questo comportamento, si incontreranno in uno di quei cerchi; anche in modalità continente le unità possono scegliere un cerchio alleato.##Segui un'altra unità:#un cittadino alleato viene selezionato a caso per seguire, ma questo non deve essere in un comportamento difensivo o seguace; Inoltre, se non riesce a trovare qualcuno, tenderà a tornare nel suo centro urbano.";
case 736:
return "Questo software è di azione senza fretta, le strategie e le modifiche al profilo sono gestite con calma, quindi le statistiche globali vengono aggiornate ogni ora, così come la possibilità di modificare il profilo.##Le modifiche che farai saranno visibili nelle statistiche tra 1 ora!";
case 737:
return "In alto è possibile selezionare l'area o il paese da osservare, la selezione si rifletterà sulla mappa in rosso.##Sotto la mappa puoi vedere:#- Numero di utenti nell'area.##- Percentuale di femmine rispetto al totale.#- Numero di utenti attivi.#- Record di utenti attivi.#Un utente è attivo se era nell'applicazione nell'ultima settimana.";
case 738:
return "È possibile modificare il tipo di dati da osservare per l'area scelta:#- Ruoli: utenti in ogni ruolo.##- Zone: rispetto alla zona corrente.##- Emozioni: secondo i volti dell'avatar.#- Zodiaco: segni per la zona.#L'idea è di vedere i ruoli ma non i comportamenti, in questo modo si può realizzare una strategia collettiva oggettiva per i ruoli, intuitiva o esterna per il comportamento.#- Il pulsante Salva consente di esportare i dati.#- Il pulsante della fotocamera cattura uno screenshot.";
case 739:
return "Sopra, numero di simulazioni:#Settimanale (verrà pulito) / Accumulato.##È possibile selezionare l'area che si desidera osservare, questa verrà riflessa sulla mappa in rosso.##La prima simulazione della settimana è quella ufficiale, con il resto in media e il record è di tutti i tempi.##I dati indicano la posizione della zona, 1 è il posto migliore, possono essere ripetuti in caso di parità.##Icone: punteggio tecnico, nemici cacciati, assedio concluso, zone conquistate, tempo vivo, unità disponibili, unità totali, vita finale.";
case 740:
return "I 4 pulsanti in basso iniziano la guerra:#1 Demo con dati casuali.##2 Demo con dati personalizzati.##3 Dati ufficiali ma di scaramuccia.##4 Dati e risultati ufficiali.#- Modalità paese / modalità continente.#- Il pulsante della fotocamera cattura uno screenshot.#I dati personalizzati hanno il formato del file (txt) ottenuto nel menu delle statistiche.#La guerra ufficiale sarà su una schermata nera, i risultati verranno caricati sul server, questo per evitare di terminare le simulazioni a tuo piacimento.";
case 741:
return "Ottieni il file (txt) come indicato per il menu delle statistiche.##In esso vedrai diverse matrici, quella che ci interessa è quella di (ruolo), lì puoi cambiare i valori in base a quante unità vuoi in ciascuna, per ogni zona.##Le colonne sono i ruoli come li vedi nell'intestazione (ruolo).##Le righe sono le zone, come le vedi nell'intestazione (paesi).#I comportamenti saranno sempre casuali; quindi la (popolazione attiva) definisce gli utenti attivi, mettere un numero molto alto se lo si desidera.";
case 742:
return "- Ingrandisci con la rotellina del mouse.##- Sposta la telecamera con il tasto destro.##- Seleziona entità con clic sinistro.#- Abbandona la simulazione con Escape.#- Accelera o rallenta con Su e Giù In alto a sinistra: informazioni generali, la velocità finale dipenderà dal tuo PC, dati ufficiali o meno.#In alto a destra: informazioni generali: popolazione massima, unità viventi, entità viventi, registrazione delle entità viventi, entità totali create.#Quindi i migliori 3 in base a: unità disponibili, nemici cacciati, assedio fatto, aree conquistate.#Infine, le posizioni in base alla vitalità.#In basso a sinistra, contestuale (selezione).";
case 743:
return "Il sesso e lo zodiaco non influiscono sulla simulazione, ma se lo stato attivo, vengono assegnati bonus di vita.##Le entità possono muoversi via terra o via acqua, quest'ultima rallenta il movimento e l'attacco; possono andare verso un nemico, un alleato o un centro urbano, vengono rilevate anche le collisioni.##Ogni tanto cercheranno nemici nel loro campo visivo e attaccheranno se sono vicini, con un po 'di casualità; inoltre di volta in volta verranno eseguite le abilità speciali di ogni ruolo.##I ruoli che applicano effetti ad altre unità non possono essere autoapplicati, né influenzano alleati o nemici con lo stesso ruolo, ad esempio: un medico Non può curare o curare un altro medico.";
case 744:
return "Ogni centro urbano ha una popolazione iniziale, di cui può avere solo un limite di unità abitative alla volta, e sarà evocativa di più.##I punti vita di ogni centro sono un valore base più la popolazione iniziale, di volta in volta viene calcolato il numero di nemici e alleati vicini, l'assedio ricevuto è la differenza di questo con un limite.##I ruoli delle unità vengono scelti casualmente con priorità, i comportamenti cambiano solo casualmente.##Ogni centro calcola la posizione di pochi cerchi di raggruppamento, lo fa cercando raggruppamenti di unità, centri nemici e gruppi nemici.";
case 745:
return "Per navigare più velocemente usa i tasti Sinistra / Destra; premere Invio per passare a una pagina casuale, Spazio per ruolo casuale.##Il numero nell'immagine sulla prima pagina è il numero totale di utenti registrati.##Nota:#";

// mini nombre de zona
case 900:
return "Cane";
case 901:
return "USI";
case 902:
return "Mex";
case 903:
return "Cavolo";
case 904:
return "Reggiseno";
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
return "Con";
case 915:
return "Sud";
case 916:
return "Aus";
case 917:
return "N / A";
case 918:
return "S.A";
case 919:
return "euro";
case 920:
return "O IO";
case 921:
return "AFR";
case 922:
return "TOT";

// para nombres de comportamientos abreviados (no traducir)
case 1000:
return "Difendere";
case 1001:
return "A.aza";
case 1002:
return "A. era";
case 1003:
return "A.déb";
case 1004:
return "A.cer";
case 1005:
return "Gruppo";
case 1006:
return "Segui";

// abreviacion roles (no traducir)
case 1100:
return "Famiglia";
case 1101:
return "Agri";
case 1102:
return "Cucinato";
case 1103:
return "Arte";
case 1104:
return "Il mio";
case 1105:
return "Herr";
case 1106:
return "Medi";
case 1107:
return "Capo";
case 1108:
return "Defe";
case 1109:
return "Guer";
case 1110:
return "Cepu";
case 1111:
return "Mago";
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
return "Mangiare";
case 1118:
return "Pulito";
case 1119:
return "Hipp";
case 1120:
return "Cupola";
case 1121:
return "Pilo";
case 1122:
return "Uomo";
case 1123:
return "Scrittura";
case 1124:
return "Inge";
case 1125:
return "Arco";
case 1126:
return "Assi";
case 1127:
return "Centinaio";

default: return "";
}

