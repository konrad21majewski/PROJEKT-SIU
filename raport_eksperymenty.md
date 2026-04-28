# OPIS EKSPERYMENTÓW
Wybrane zostały po dwa parametry klas środowiska oraz uczącej oraz jeden parametr sieci neuronowej, dla których wybrano wartości do przetestowania i porównania:
* SPEED_RWRD_RATE: sprawdzono wartości 0.1 oraz 0.3
* DIST_RWRD_RATE: sprawdzono wartości 1.0 oraz 1.5
* DISCOUNT: sprawdzono wartości 0.7 oraz 0.8
* TRAIN_EVERY: sprawdzono wartości 2.0 oraz 6.0
* ??? DENSE ???: 64 [TODO: CO TU WPISAĆ? JAK TO NAZWAĆ? CO MY TU ZMIENIAMY W SUMIE?]

Eksperymenty polegały na wyuczeniu modelu sieci neuronowej przy domyślnych wartościach i dokładnie jednej zmienionej wartości parametru - oprócz zmiany parametru sieci neuronowej. Następnie wybrano wartości dla każdeo parametru, dla których tak wyuczony model sieci osiągnął ,,najlepszy" wynik. Na koniec wyuczono sieć neuronową ze zmienionym parametrem sieci i wybranymi wcześniej ,,najlepszymi" wartościami dla pozostałych parametrów.

Tak uproszczony model przeprowadzenia eksperymentów wybraliśmy ze względu na długość procesu pojedynczego uczenia z pojedynczym zestawem parametrów i problemy z OOM podczas testów.

# WYNIKI
[TODO: CO OZNACZAJĄ LICZBA OKRĄŻEŃ I LICZBA PRÓB? JAK WYBRALIŚMY NAJLEPSZE WYNIKI?]

## DOMYŚLNY ZESTAW PARAMETRÓW
Domyślnymi wartościami dla wybranych parametrów były:
* SPEED_RWRD_RATE: 0.5
* DIST_RWRD_RATE: 2.0
* DISCOUNT: 0.9
* TRAIN_EVERY: 4
* ??? DENSE ???: 32 [TODO: CO TU WPISAĆ? JAK TO NAZWAĆ? CO MY TU ZMIENIAMY W SUMIE?]

| MIEJSCE | EPOCHS | η  | LICZBA OKRĄŻEŃ | LICZBA PRÓB |
|----------|----------|----------|----------|----------|
| 1 | E2500 | 2.38 | 2.375 | 1 |
| 2 | E2750 | 0.66 | 2.625 | 4 |
| 3 | E1750 | 0.43 | 3.0 | 7 |

## SPEED_RWRD_RATE

Dla SPEED_RWRD_RATE = 0.1
| MIEJSCE | EPOCHS | η  | LICZBA OKRĄŻEŃ | LICZBA PRÓB |
|----------|----------|----------|----------|----------|
| 1 | E2750 | 2.38 | 2.375 | 1 |
| 2 | E750 | 0.67 | 2.0 | 3 |
| 3 | E3000 | 0.53 | 2.125 | 4 |

Dla SPEED_RWRD_RATE = 0.3
| MIEJSCE | EPOCHS | η  | LICZBA OKRĄŻEŃ | LICZBA PRÓB |
|----------|----------|----------|----------|----------|
| 1 | E3250 | 0.48 | 3.375 | 7 |
| 2 | E750 | 0.48 | 2.875 | 6 |
| 3 | E1750 | 0.42 | 2.125 | 5 |

## DIST_RWRD_RATE

Dla DIST_RWRD_RATE = 1.0
| MIEJSCE | EPOCHS | η  | LICZBA OKRĄŻEŃ | LICZBA PRÓB |
|----------|----------|----------|----------|----------|
| 1 | E2500 | 2.38 | 2.375 | 1 |
| 2 | E3500 | 1.25 | 2.5 | 2 |
| 3 | E750 | 0.50 | 2.0 | 4 |

Dla DIST_RWRD_RATE = 1.5
| MIEJSCE | EPOCHS | η  | LICZBA OKRĄŻEŃ | LICZBA PRÓB |
|----------|----------|----------|----------|----------|
| 1 | E2250 | 2.50 | 2.5 | 1 |
| 2 | E3500 | 0.62 | 2.5 | 4 |
| 3 | E3000 | 0.48 | 2.75 | 6 |

## DISCOUNT

Dla DISCOUNT = 0.7
| MIEJSCE | EPOCHS | η  | LICZBA OKRĄŻEŃ | LICZBA PRÓB |
|----------|----------|----------|----------|----------|
| 1 | E3000 | 1.38 | 2.25 | 2 |
| 2 | E1250 | 0.75 | 0.75 | 1 |
| 3 | E1000 | 0.47 | 1.875 | 4 |

Dla DISCOUNT = 0.7
| MIEJSCE | EPOCHS | η  | LICZBA OKRĄŻEŃ | LICZBA PRÓB |
|----------|----------|----------|----------|----------|
| 1 | E1750 | 0.83 | 2.5 | 3 |
| 2 | E2750 | 0.71 | 2.125 | 3 |
| 3 | E1500 | 0.57 | 2.875 | 5 |

## TRAIN_EVERY

Dla TRAIN_EVERY = 2 [TODO: UZUPEŁNIĆ TABELKĘ]
| MIEJSCE | EPOCHS | η  | LICZBA OKRĄŻEŃ | LICZBA PRÓB |
|----------|----------|----------|----------|----------|
| 1 | | | | |
| 2 | | | | |
| 3 | | | | |

Dla TRAIN_EVERY = 6
| MIEJSCE | EPOCHS | η  | LICZBA OKRĄŻEŃ | LICZBA PRÓB |
|----------|----------|----------|----------|----------|
| 1 | E750 | 1.00 | 2.0 | 2 |
| 2 | E1750 | 0.62 | 2.5 | 4 |
| 3 | E1250 | 0.41 | 2.875 | 7 |

## OSTATECZNY ZESTAW PARAMETRÓW
Model został wyuczony przy poniższych zmienionych wartościach parametrów. Pozostałe były ustawione na domyślne wartości.
* SPEED_RWRD_RATE: 0.1
* DIST_RWRD_RATE: 1.5
* DISCOUNT: 0.7
* TRAIN_EVERY: ??? [TODO: UZUPEŁNIĆ]
* ??? DENSE ???: 64 [TODO: CO TU WPISAĆ? JAK TO NAZWAĆ? CO MY TU ZMIENIAMY W SUMIE?]

[TODO: UZUPEŁNIĆ TABELKĘ]
| MIEJSCE | EPOCHS | η  | LICZBA OKRĄŻEŃ | LICZBA PRÓB |
|----------|----------|----------|----------|----------|
| 1 | | | | |
| 2 | | | | |
| 3 | | | | |

# NAJLEPSZY OSIĄGNIETY WYNIK
Najlepszy wynik uzyskał [TODO: UZUPEŁNIĆ], osiągając wartość η równą [TODO: UZUPEŁNIĆ]
