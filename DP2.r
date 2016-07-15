##QUESTÃO DP2 
A função de densidade de probabilidade do peso líquido, em libras, de um pacote de herbicida químico é f(x)=2,0 para 49,75 < x < 50,25 libras. Se as especificações para este processo são 49,0 a 50,0 libras.

a) Determine a proporção de barras não se encontra dentro das especificações.

b) Quanto produto químico está contido em 90% de todos os pacotes?

c) Calcule a média e a variância.

###Resposta letra a)
```{r, fig.height= 4, fig.width = 7}
f2 <- function(x) {
 fx <- numeric(length(x))
 fx[x < 49.75] <- 0
 fx[x > 50.25] <- 0
 fx[x > 49.75 & x < 50.25] <- 2
 return(fx)
}
graph <- plot(f2,49.75,50.25)
polygon(x = c(49.75, seq(49.75, 50.25, l = 100)),
        y = c(0, f2(seq(49.75, 50.25, l = 100))), density = 20)
integrate(f2, 49.75, 50.25)
```

*Proporção de barras que estão fora as especificações*
```{r}
(popc <- 1 - integrate(f2, 49, 50)$value)
```

###Resposta letra b)

```{r}
f <- function(x) abs(0.10 - integrate(f2, 0, x)$value)
(resp <- optimise(f2, c(49.75, 50.25)))
```
*Em 90% dos pacotes contém: 49.74993*

###Resposta letra c)
```{r}
media <- mean(graph$x)
variancia <- var(graph$x)
Stddev <- sd(graph$x)
data <- rbind(media, variancia, Stddev)
data.frame(data)
```

\newpage