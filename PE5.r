##QUESTÃO PE5

Considere que se deseja realizar experimentos considerando três fatores e uma resposta e que apenas 5 experimentos possam ser realizados.

a) Proponha um planejamento de experimentos e indique que experimentos serão realizados. Justifique sua resposta.
b) Indique qual a resolução (grau de confundimento) e que fatores serão confundidos considerando sua resposta em (a). Justifique sua resposta.
c) Como você avaliaria a existência de relações não lineares entre fatores e respostas? Justifique sua resposta.

###Resposta letra a)
```{r}
plan.PE5 = FrF2(nfactors = 3,
                resolution = 3,
                randomize = FALSE,
                replications = 5,
                repeat.only = TRUE)
summary(plan.PE5)
```
###Resposta letra b)
```{r}
##Resposta da letra b
```


###Resposta letra c)
```{r}
##Resposta da letra c
```

\newpage