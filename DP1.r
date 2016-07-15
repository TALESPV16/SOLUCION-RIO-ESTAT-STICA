##QUESTÃO DP1
A função de densidade de probabilidade do comprimento de uma barra de metal é $f(x) = 2.0$ para 2,3 < x < 2,8. Se as especificações para este processo são de 2,25 a 2,75 metros, 

a) Que proporção de barras não se encontra dentro das especificações? (2,5 PONTOS)

###Resposta letra a)
```{r, fig.height = 4, fig.width= 7, fig.align= 'center'}
f1 <- function(x) {
 fx <- numeric(length(x))
 fx[x < 2.3] <- 0
 fx[x > 2.8] <- 0
 fx[x > 2.3 & x < 2.8] <- 2
 return(fx)
}
integrate(f1, 2.3, 2.8)
plot(f1,2.3,2.8)
polygon(x = c(2.3, seq(2.3, 2.8, l = 100)), 
        y = c(0, f1(seq(2.3, 2.8, l = 100))), density = 20)
```
*A proporção fora das especificações é o valor de popc abaixo*
```{r}
(popc <- 1 - integrate(f1, 2.25, 2.75)$value)
```

 
\newpage