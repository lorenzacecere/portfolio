# Eurovision 2021: rete del televoto e testi delle canzoni

Analisi multilivello dell'edizione 2021 dell'Eurovision Song Contest, tra network
science e text mining.

📄 **[Leggi il report completo](https://lorenzacecere.github.io/portfolio/eurovision-2021.html)**

> Progetto svolto in coppia. Il nome della co-autrice è omesso per riservatezza.

## Domanda di ricerca

Il televoto del pubblico segue logiche geografiche e culturali riconoscibili? E i temi
delle canzoni finaliste condividono un profilo emotivo, o ciascun artista occupa uno
spazio proprio?

## Parte I — La rete del televoto

Il grafo direzionato dei flussi di voto viene analizzato su più livelli:

- Misure globali della rete e centralità locali
- Neighbourhood dell'Italia e edge betweenness
- Community detection con quattro algoritmi a confronto: Louvain, Walktrap,
  Girvan-Newman, Label Propagation, comparati per modularità e per distanza fra
  partizioni
- Ego network dell'Italia
- Rete multilayer su più edizioni, per osservare la persistenza delle alleanze nel tempo

## Parte II — I testi delle canzoni

- Sentiment analysis con il dizionario NRC su tutti i testi, tradotti uniformemente
  in inglese
- Approfondimento sulle tre finaliste
- Analisi delle corrispondenze per mappare le associazioni fra artisti e profili emotivi

## Come riprodurre

```r
install.packages(c("igraph","dplyr","gt","ggplot2","ggraph","tidygraph",
                   "tidyr","tm","syuzhet","FactoMineR","factoextra","proxy"))
```

I file di dati vanno posti nella stessa cartella del `.Rmd`.
Il documento si compila con `rmarkdown::render()` o dal pulsante Knit di RStudio.

## Dati

| File | Contenuto |
|---|---|
| `eurovision_1957-2021.csv` | Flussi di voto di tutte le edizioni dal 1957 al 2021. L'analisi filtra il televoto dell'edizione di Rotterdam 2021 per costruire la rete, e usa le edizioni precedenti per la rete multilayer. |
| `Eurovision2021_testi.csv` | Testi, metadati e piazzamenti dei 39 brani in gara. |
| `Eurovision2021_testi_clean.csv` | Versione usata dalla sentiment analysis: un'unica colonna di testo interamente in inglese. |

Il file originale distingue `Lyrics_ov` (testo nella lingua originale) da `Lyrics_en`
(traduzione, presente solo per i brani non anglofoni). Poiché il dizionario NRC lavora
sull'inglese, `prepara_testi.R` unisce le due colonne prendendo la traduzione dove
esiste e il testo originale altrove.

## File

- `analisi_eurovision_2021.Rmd` — analisi completa in R Markdown
- `prepara_testi.R` — preparazione del corpus dei testi
- i tre file di dati descritti sopra
