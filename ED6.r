Discos de alumínio são produzidos e a cada 15 minutos 3 discos são retirados da linha e pesados. Os dados obtidos durante um período de quase 7 horas estão apresentados na tabela abaixo.

a) Estime e analise criticamente as estatísticas de média e variância do peso dos discos de alumínio (g).

###Resposta letra a)

```{r, echo=FALSE, results= 'asis'}
AlDisc = read.table("Lista_U_ED6.txt", header = TRUE)
knitr::kable(AlDisc,format = "markdown", align = 'c')
```

```{r, fig.height= 5, fig.width= 11}
media.peso.por.amostra = by(AlDisc$Peso, as.factor(AlDisc$Amostra), mean)
media = mean(media.peso.por.amostra)
print(media)
par(mfrow = c(1,2))
hist(media.peso.por.amostra, main = "Peso médio por amostra",
     xlab = "Massa/g", ylab = "Frequência", col = "lightblue")
plot(media.peso.por.amostra, main = "Série Temporal", 
     xlab = "Amostra", ylab = "Massa/g", pch = 20)
```

*O histograma das médias dos pesos das amostras de discos de alumínio apresenta uma provável normalidade na distribuição dos dados em torno da média. Já o gráfico de série temporal indica uma possível correlação crescente entre o peso do disco de alumínio e a amostra*

```{r, fig.height= 5, fig.width= 11}
dp.peso.por.amostra = by(AlDisc$Peso, as.factor(AlDisc$Amostra), sd.default)
variancia = var(dp.peso.por.amostra)
print(variancia)
par(mfrow = c(1,2))
hist(dp.peso.por.amostra, main = "Desvio padrão por amostra", 
     xlab = "dp/g", ylab = "Frequência", col = "lightblue")
plot(dp.peso.por.amostra, main = "Série Temporal",
     xlab = "Amostra", ylab = "dp/g", pch=20, col = "blue")
```

*O histograma dos desvios padrões dos pesos das amostras de discos de alumínio apresenta um certo desvio da normalidade com um alongamento da cauda à esquerda (concentração da dados à direita). Já o gráfico de série temporal indica uma provável aleatoriedade dos desvios das amostras de disco de alumínio*

\newpage