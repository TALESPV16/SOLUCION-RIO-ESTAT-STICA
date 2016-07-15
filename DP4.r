##QUESTÃO DP4 
Suponha que a relação entre a força aplicada x e o tempo até a falha y seja descrita por um modelo de regressão linear simples com uma reta de regressão real y = 65 - 1.2x e $\sigma$ = 8. Portanto, para qualquer valor fixo $x^*$ de força, o tempo até a falha tem uma distribuição normal com valor médio $bar{t}$ = 65 - 1,2$x^*$ e desvio padrão 8. Para x = 20, estime a probabilidade de que o tempo de falha (y) ultrapasse 50 quando a força aplicada (x) for igual a:

a) 20
b) 25
c) Compare os resultados nas letras (a) e (b) de forma gráfica com base nas funções de distribuição de probabilidade normal.

###Resposta letra a)
```{r}
xA <- 20
tmedioA <- 65 - 1.2*xA
yr <- 50
stdt <- 8
zA <- (yr - tmedioA)/stdt
pnorm(zA)*100
```
*A probabilidade é de para 20 unidades de força de 86,97%*

###Resposta letra b)
```{r}
xB <- 25
tmedioB <- 65 - 1.2*xB
yr <- 50
stdt <- 8
zB <- (yr - tmedioB)/stdt
pnorm(zB)*100
```
*A probabilidade é de para 25 unidades de força de 96,96%*

###Resposta letra c)

```{r, fig.height= 5, fig.width= 8}
set.seed(1)
par(mfrow = c(1,2))
hist(rnorm(100,tmedioA, stdt), col = "lightblue",
     xlab = "Tempo de falha", 
     main = "Tempo de Falha para Força = 20uN")
hist(rnorm(100,tmedioB, stdt), col = "lightblue",
     xlab = "Tempo de falha", 
     main = "Tempo de Falha para Força = 25uN")
```

\newpage