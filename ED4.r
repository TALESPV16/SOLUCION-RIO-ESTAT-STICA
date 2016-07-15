## QUESTÃO ED4
Que características pretende-se realçar quando se representa um conjunto de dados sob a forma de um:

a) Histograma, e de um diagrama de séries temporais?

###Resposta letra a)
```{r, fig.width = 10}
set.seed(1)
d.norm = rnorm(n = 100, mean = 0, sd = 1)
par(mfrow = c(1,2))
hist(d.norm, main = "Histograma", xlab = "Valor", 
     ylab = "Frequência", col = "lightblue")
plot(d.norm, main = "Série Temporal", xlab = "Observação", 
     ylab = "Valor", pch = 20, col = "red")
```

*O histograma é utilizado para avaliar quanto à normalidade dos dados, ou se a distribuição é leptocúrtica, platicúrtica ou mesocútica, ou seja quanto à curtose. E ainda é possível análisar quanto à assimetra.*
*Enquanto que o gráfico de série temporal permite a avaliação da dispersão, e ainda permite ter uma idéia quanto ao coeficiente de variação dos dados, e ainda a tendência.*

\newpage