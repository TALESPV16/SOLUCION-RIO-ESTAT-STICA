##QUESTÃO I9

Um sistema de tratamento de gases foi mudado com a expectativa de que a intervenção pudesse reduzir o nível de poluição em 25 unidades, sem alteração significativa da variabilidade do processo. Ou seja, deseja-se detectar se a média antes da intervenção e após a intervenção diferem em 25 unidades. As estimativas antes da intervenção são: média = 234,3 e desvio padrão = 58, baseados em uma amostra de tamanho igual a 10. 
a) O gerente de projeto deseja determinar, com 95% de confiança, se a redução de 25 unidades foi obtida.

###Resposta letra a)

```{r}
n1 = n2 = 10
s1 = s2 = 58
sp2 = ((n1-1)*s1^2 + (n2-1)*s2^2) / (n1+n2-2)
sp = sqrt(sp2)
t.alpha = abs(qt(p = 0.05/2, df = n1+n2-2))
dif.m = 25
```
*Acredito que a questÃ£o falta dados*

\newpage
