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
3. Clicca su **Script** (affianco la scritta "DETTAGLI").
4. Clicca sulla voce **NESSUNO**.
5. Clicca su **Script**, poi **Importa** e seleziona il file scaricato.
6. Infine clicca nuovamente su **Script** e poi **Salva ed esegui**.

---
*Script by SickDibbe (19.05.2026)*
