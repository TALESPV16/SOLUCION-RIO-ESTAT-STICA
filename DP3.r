##QUESTÃO DP3 
O tempo gasto no vestibular de uma determinada universidade tem distribuição normal, com média 120 min e desvio padrão de 15 min.

a) Sorteando um aluno ao acaso, qual a probabilidade que ele termine o exame antes de 100 min. 
b) Qual deve ser o tempo de prova de modo a permitir que 95% dos vestibulandos terminem no prazo estipulado.

###resposta letra a)
```{r}
meanv = 120
sdv = 15
x = 100
z = (100 - 120)/15
(pnorm(z)*100)
```
A probabilidade é de 9.12 % aproximadamente.

###Resposta letra b)
```{r}
p = 0.95
meanv = 120
sdv = 15
z <- qnorm(p)
x <- sdv*z + meanv
```

*O tempo deve ser de 144,6 min.*

\newpage