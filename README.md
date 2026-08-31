# Portfolio — Lorenza Cecere

Progetti di analisi statistica realizzati in R durante la laurea magistrale in
Scienze Statistiche per le Decisioni (LM-82), Università degli Studi di Napoli Federico II.

**Report consultabili online:** https://lorenzacecere.github.io/portfolio/

---

## Progetti

### [Carico di riscaldamento degli edifici](progetti/energy-efficiency)
Regressione lineare multipla su 768 edifici simulati (Energy Efficiency Dataset, UCI).
L'obiettivo è duplice: separare gli effetti realmente esplicativi dagli artefatti del
disegno sperimentale, e costruire un modello che generalizzi fuori campione.

Box-Cox · VIF · selezione del modello · regressione robusta · standard error HC3 ·
bootstrap · test di Chow · K-fold cross-validation

📄 [Report](https://lorenzacecere.github.io/portfolio/energy-efficiency.html) ·
💻 [Codice](progetti/energy-efficiency/analisi_energy_efficiency.qmd)

---

### [Eurovision 2021: rete del televoto e testi delle canzoni](progetti/eurovision-2021)
Analisi del grafo dei flussi di televoto (centralità, community detection, rete
multilayer) affiancata da sentiment analysis e analisi delle corrispondenze sui testi
delle finaliste.

igraph · Louvain, Walktrap, Girvan-Newman · ego network · dizionario NRC · FactoMineR

📄 [Report](https://lorenzacecere.github.io/portfolio/eurovision-2021.html) ·
💻 [Codice](progetti/eurovision-2021/analisi_eurovision_2021.Rmd)

> Progetto svolto in coppia. Il nome della co-autrice è omesso per riservatezza.

---

### [Una consulenza scientifica per Spotify](progetti/spotify-bibliometria)
Analisi bibliometrica della letteratura accademica sul music streaming a partire da
un'estrazione Scopus: filoni di ricerca, riviste, paesi, e reti di co-autorialità,
co-citazione e accoppiamento bibliografico.

bibliometrix · VOSviewer · Gephi · PageRank

📄 [Report](https://lorenzacecere.github.io/portfolio/spotify-bibliometria.pdf)

---

## Struttura del repository

```
docs/          report pubblicati (GitHub Pages)
progetti/      codice sorgente e dati di ciascun progetto
```

## Contatti

lorenzac.analytics@gmail.com · [LinkedIn](https://linkedin.com/in/lorenza-cecere-987579325)
