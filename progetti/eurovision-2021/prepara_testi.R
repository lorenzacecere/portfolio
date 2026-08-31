# Preparazione del dataset dei testi
#
# Il file originale (Eurovision2021_testi.csv) contiene due colonne di testo:
#   Lyrics_ov -> testo nella lingua originale del brano
#   Lyrics_en -> traduzione in inglese, presente solo per i brani non anglofoni
#
# La sentiment analysis con il dizionario NRC richiede un corpus interamente in
# inglese: si costruisce quindi un'unica colonna Lyrics_en prendendo la traduzione
# dove esiste e il testo originale (già in inglese) altrove.

library(dplyr)

testi <- read.csv("Eurovision2021_testi.csv", stringsAsFactors = FALSE)

testi_clean <- testi |>
  mutate(
    Lyrics_en = ifelse(is.na(Lyrics_en) | trimws(Lyrics_en) == "",
                       Lyrics_ov,
                       Lyrics_en),
    Country   = trimws(Country)
  ) |>
  select(Position, Finale, `Artist.name`, Country, `Song.Name`, Lyrics_en)

write.csv(testi_clean, "Eurovision2021_testi_clean.csv", row.names = FALSE)
