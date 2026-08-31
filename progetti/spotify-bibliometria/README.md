# Una consulenza scientifica per Spotify

Analisi bibliometrica della produzione scientifica che ha per oggetto Spotify e,
più in generale, i servizi di music streaming.

📄 **[Leggi il report completo (PDF)](https://lorenzacecere.github.io/portfolio/spotify-bibliometria.pdf)**

Esame di Analisi quantitativa della scienza — Prof. A. Baccini
Università degli Studi di Siena, giugno 2025

## Impostazione

Il report è scritto come se fosse commissionato da Spotify: l'obiettivo è restituire
all'azienda una fotografia strutturata dell'impatto che la piattaforma ha generato nel
mondo accademico, utile a orientare decisioni fondate sull'evidenza.

## Dati

Estrazione da Scopus tramite la query:

```
TITLE-ABS-KEY ( "Spotify" ) OR TITLE-ABS-KEY ( music* AND streaming )
```

Periodo coperto: 1972–2025.

## Cosa contiene

**Panoramica generale** — distribuzione per area disciplinare, produttività di autori e
paesi, riviste principali lette insieme al CiteScore, trend temporale delle pubblicazioni

**Reti citazionali** — co-autorialità, accoppiamento bibliografico, co-citazione fra
autori e co-citazione per paese, con analisi di centralità e PageRank

## Risultati principali

La letteratura è nettamente sbilanciata verso Computer Science ed Engineering, ma
attraversa anche scienze sociali, arti e musicologia. Le pubblicazioni crescono
lentamente fino ai primi anni Duemila e poi accelerano: dal 2015 in avanti il volume
quadruplica.

La rete di co-autorialità risulta molto frammentata, senza leader scientifici trasversali:
il campo non si è ancora consolidato attorno a gruppi di ricerca stabili. La rete di
co-citazione, al contrario, è più densa e mostra hub teorici condivisi, segno che
ricercatori che non collaborano fra loro attingono comunque a una base teorica comune.

Interessante il caso dei paesi nordici: pochi articoli in valore assoluto, ma molti
legami collaborativi, a indicare un modello orientato alla cooperazione internazionale
più che al volume.

## Strumenti

R (bibliometrix, igraph) · VOSviewer · Gephi · Scopus
