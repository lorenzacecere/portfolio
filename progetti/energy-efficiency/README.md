# Carico di riscaldamento degli edifici

Analisi statistica dei fattori geometrici che influenzano il fabbisogno di
riscaldamento di un edificio.

📄 **[Leggi il report completo](https://lorenzacecere.github.io/portfolio/energy-efficiency.html)**

## Dati

Energy Efficiency Dataset (Tsanas & Xifara, 2012), UCI Machine Learning Repository.
768 edifici residenziali simulati con Ecotect: 12 forme base combinate con diversi
orientamenti, aree vetrate e schemi di distribuzione della vetratura.
Otto caratteristiche geometriche, due variabili risposta.

Fonte: https://archive.ics.uci.edu/dataset/242/energy+efficiency

## Domanda di ricerca

Quali caratteristiche geometriche pesano davvero sul carico di riscaldamento, e quali
sono invece artefatti del disegno sperimentale? E quanto bene il modello generalizza a
osservazioni non usate per la stima?

Data la correlazione altissima tra carico di riscaldamento e di raffreddamento,
l'analisi si concentra sul primo.

## Percorso dell'analisi

1. Preparazione dei dati e conversione esplicita in fattori delle variabili qualitative
   codificate come interi (orientamento, distribuzione della vetratura)
2. Analisi esplorativa e ANOVA preliminare sull'effetto dell'orientamento
3. Regressione lineare multipla e diagnostica del modello completo
4. Trasformazione di Box-Cox
5. Diagnosi di multicollinearità con il VIF
6. Selezione del modello e diagnostica del modello finale, test RESET
7. Regressione robusta per valutare l'influenza delle singole osservazioni
8. Correzione dell'inferenza in presenza di eteroschedasticità: standard error
   sandwich HC3, con bootstrap per case resampling come verifica indipendente
9. Test di Chow per la stabilità strutturale
10. K-fold cross-validation per la capacità predittiva

## Come riprodurre

```r
# Pacchetti richiesti
install.packages(c("car","MASS","glmnet","leaps","lmtest","robustbase",
                   "corrplot","ggplot2","gridExtra","sandwich","modelr","boot"))
```

Il file `ENB2012_data.csv` va posto nella stessa cartella del `.qmd`.
Il documento si compila con Quarto (`quarto render analisi_energy_efficiency.qmd`).

## File

- `analisi_energy_efficiency.qmd` — analisi completa in Quarto
- `ENB2012_data.csv` — dati
