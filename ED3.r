Sejam X1 ~ N(150,30), X2 ~ N(200,20) e X3 ~ N(100,14) independentes. Seja X = X1 - X2 + X3 também com distribuição normal. 
a) Calcule P(47 $\leq X \leq$ 58).

###Resposta letra a)
```{r}
P.58 = pnorm(58, mean = (150-200+100), sd = sqrt(30^2+20^2+14^2))
P.47 = pnorm(47, mean = (150-200+100), sd = sqrt(30^2+20^2+14^2))
P.58 - P.47
```

\newpage