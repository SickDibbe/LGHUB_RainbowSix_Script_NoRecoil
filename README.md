## 💡 Perché ho creato questo script?
Tutto è nato dalla pura curiosità tecnica e dalla voglia di mettermi in gioco con la programmazione in Lua su Logitech G HUB. Chiunque giochi a sparatutto tattici come *Rainbow Six Siege* sa quanto il controllo del rinculo sia fondamentale, ma sa anche quanto possa essere frustrante gestire armi con pattern imprevedibili o saltellamenti casuali (il famoso *first shot kick*). 

Volevo capire se fosse possibile automatizzare questa correzione, ma senza creare qualcosa di "robotico" o palesemente finto. La vera sfida è stata lo sviluppo della **Versione 4.0**, in cui ho introdotto il calcolo dinamico sull'asse orizzontale e il sistema di *Jitter* (le micro-variazioni casuali). L'obiettivo non era solo "azzerare il rinculo", ma ricreare via codice le micro-imperfezioni e il tremolio naturale che avrebbe una vera mano umana, sfidando i limiti della telemetria dei mouse.

Per me questo progetto rappresenta un traguardo di studio e ottimizzazione balistica digitale, e ho deciso di pubblicarlo gratuitamente per condividerlo con gli appassionati di scripting. Non ho pubblicato le precedenti versioni sia perché le ritenevo imperfette, sia perché nutrivo dei dubbi morali ed etici sulla diffusione di simili espedienti. Oggi lo condivido esclusivamente come dimostrazione tecnica di ciò che si può fare spingendo al limite lo scripting di G HUB.

---

## ⚠️ DISCLAIMER & ESCLUSIONE DI RESPONSABILITÀ
*(Leggere attentamente prima di utilizzare lo script)*

L'utilizzo di macro, script o software di terze parti per automatizzare i movimenti del mouse può essere considerato una violazione dei Termini di Servizio (ToS) di molti videogiochi online, inclusi i titoli sviluppati da Ubisoft.

1. **Uso a proprio rischio:** Questo script viene fornito esclusivamente a scopo illustrativo, educativo e di studio personale sull'ambiente Lua di Logitech. Qualsiasi utilizzo in partite pubbliche, classificate o competitive è a totale ed esclusiva responsabilità dell'utente finale.
2. **Nessuna garanzia contro i Ban:** Sebbene lo script utilizzi complessi sistemi di randomizzazione dei millisecondi e dei pixel per simulare un comportamento umano, nessun sistema è sicuro al 100%. L'autore non garantisce l'immunità da sistemi anti-cheat (come BattlEye, MouseTrap, o soluzioni simili).
3. **Esclusione di responsabilità:** In nessun caso l'autore (**SickDibbe**) potrà essere ritenuto responsabile per sanzioni, sospensioni, ban permanenti di account di gioco o danni derivanti dall'uso (corretto o improprio) di questo codice. 

Scaricherai, importerai ed eseguirai questo file accettando che la responsabilità delle tue azioni in gioco rimanga soltanto tua. Gioca responsabilmente.

 ---
 
# LGHUB Rainbow Six Script NoRecoil (v4.0)

Benvenuti nel mio script Lua personale per il software "Logitech G HUB", ottimizzato specificamente per "Rainbow Six Siege". 
Questo script è progettato per aiutare a gestire il rinculo delle armi mantenendo un profilo di movimento estremamente umanizzato per la massima sicurezza.

---

## 🚀 Caratteristiche Principali
* **Configurazione Avanzata su 5 Parametri:** Gestione millimetrica del rinculo direttamente dall'inizio del file.
* **Controllo First Shot Kick:** Compensa in automatico l'impennata violenta dei primissimi colpi.
* **Nuovo Rinculo Orizzontale (v4.0):** Gestione dinamica dell'asse X (Destra/Sinistra) per le armi che deviano lateralmente.
* **Sistema Anti-Cheat Umanizzato (Jitter):** Micro-variazioni casuali di pixel e delay sui millisecondi per simulare il tremolio naturale della mano umana.
* **Interruttore di Sicurezza:** Lo script si attiva solo se il **Caps Lock (Bloc Maiusc)** è attivo sulla tastiera.

---

## 🛠️ Come Configurare i Parametri

Puoi regolare lo script modificando unicamente le prime 5 variabili nella sezione superiore:

1. `base_y`: Gestisce il rinculo verticale continuo (valori più alti spingono il mouse più in basso).
2. `base_x`: Gestisce il rinculo orizzontale (`0` spento - valori positivi spingono a DESTRA - valori negativi spingono a SINISTRA).
3. `base_delay`: Ritardo base in millisecondi (più è basso, più lo script corregge rapidamente).
4. `initial_kick_boost`: Forza extra verticale applicata solo ai primissimi colpi.
5. `initial_kick_loops`: Numero di colpi / cicli su cui applicare il boost iniziale.

---

## 💻 Installazione su LGHUB
1. Apri **Logitech G HUB**.
2. Seleziona il tuo profilo di **Rainbow Six Siege**.
3. Clicca su **Script** (affianco la scritta **DETTAGLI**).
4. Clicca sulla voce **NESSUNO**.
5. Clicca su **Script**, poi **Importa** e seleziona il file scaricato.
6. Infine clicca nuovamente su **Script** e poi **Salva ed esegui**.

---
*Script by SickDibbe (19.05.2026)*
