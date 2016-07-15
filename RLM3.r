##QUESTÃO RLM3
Os dados de amostra $x_{1}, x_{2}, ..., x_{n}$ algumas vezes representam uma série temporal, onde $x_{i}$ é o valor observado de uma variável resposta x no momento t. Frequentemente, a série observada mostra grande variação aleatória, o que dificulta o estudo do comportamento de longo prazo. Nessas situações, é desejável produzir uma versão suavizada da série. Uma das técnicas usadas é a suavização exponencial. O valor de uma constante de suavização $\alpha$ é escolhido (0 $\leq \alpha \leq$ 1). Então $\bar{x}_{t}$ é o valor ajustado no instante t, definimos $\bar{x}_{t} = x_{1}$ e para t = 2, 3, ..., n, $\bar{x}_{t} = \alpha x_{t} + (1-\alpha)\bar{x}_{t-1}$

a) Considere a seguinte série temporal em que $x_{t}$ = temperatura de um efluente em uma estação de tratamento de esgoto no dia t: 47, 54, 53, 50, 46, 46, 47, 50, 51, 50, 46, 52, 50, 50. Plote cada coordenada $x_{t}$ em relação a t em um sistema bidimensional (um gráfico de série temporal). Parece haver algum padrão?

b) Calcule o $\bar{x}_{t}$ usando $\alpha$ = 0,1. Repita para $\alpha$ = 0,5. Que valor de $\alpha$ fornece uma série $\bar{x}_{t}$ mais suavizada?

c) Substitua $\bar{x}_{t-1} = \alpha x_{t-1} + (1-\alpha)\bar{x}_{t-2}$ no lado direito da expressão de $\bar{x}_{t}$ e então substitua $\bar{x}_{t-2}$ em termos de $x_{t-2}$, $\bar{x}_{t-3}$ e assim por diante. De quantos valores de $x_{t}, x_{t-1}, ..., x_{1}$, $\bar{x}_{t}$ depende? O que acontece com o coeficiente de $x_{t-k}$ quando *k* aumenta?

d) Consulte o item (c). Se t for grande, qual é a sensibilidade de $\bar{x}_{t}$ em relação ao valor inicial $\bar{x}_{t}$ = $x_{1}$?
Explique.

###Resposta letra a)
**Resposta**:
```{r}
xt = c(47, 54, 53, 50, 46, 46, 47, 50, 51, 50, 46, 52, 50, 50)
plot(xt, main = "Série temporal", xlab = "Dia", 
     ylab = "Temperatura",type = "l", col = "black")
points(xt, pch = 16, col = "red", cex = .7)
```

*O gráfico de série temporal parece demonstrar algum padrão, ficando evidente que não há tendância linear, e sim não não linear, mais parecido como uma oscilação.*

###Resposta letra b)

```{r, fig.height = 5, fig.width = 11}

alpha.1 = 0.1
alpha.2 = 0.5
xt.barra.1 = xt
xt.barra.A = c(xt.barra.1)
for (i in 2:length(xt)) {
  xt.barra.A[i] = alpha.1*xt[i]+(1-alpha.1)*xt.barra.1[i-1]
  xt.barra.1[i] = xt.barra.A[i]
}

xt.barra.1 = xt[1]
xt.barra.B = c(xt.barra.1)
for (i in 2:length(xt)) {
  xt.barra.B[i] = alpha.2*xt[i]+(1-alpha.2)*xt.barra.1
  xt.barra.1 = xt.barra.B[i]
}

par(mfrow = c(1,2))
plot(xt.barra.A,
     main = c("Suavização alpha =", alpha.1), xlab = "Dia", 
     ylab = "Temperatura", type = "l", col = "black")
points(xt.barra.A, pch = 19, col = "red", cex = .7)

plot(xt.barra.B,
     main = c("Suavização alpha =", alpha.2), xlab = "Dia", 
     ylab = "Temperatura", type = "l", col = "black")
points(xt.barra.B, pch = 19, col = "red", cex = .7)
```

*O valor de alpha = 0,1 fornece a série mais suavizada.*

\newpage
###Resposta letra c)

```{r, fig.width= 17, comment=""}
n <- c(1:14)
t <- c(2:14)
diffr <- matrix(rep.int(0, 13*14), nrow = 13, ncol = 14)
for (i in 1:13)
{
        for (j in 1:14){
                diffr[i,j] = t[i] - n[j]
        }
}
diffr
```

###Resposta letra d)
*Observando a matriz acima, quando k aumenta o tamanho a sensibilidade aumenta*

\newpage
