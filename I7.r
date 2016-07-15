##QUESTÃO I7
A empresa Água de Poço fornece água engarrafada para as casas do perímetro municipal em vasilhames de 15 litros. O gerente quer estimar o número médio de vasilhames que uma casa usa por mês. Uma amostra de 75 casas é selecionada e o número de vasilhames registrado é igual a é 3,2. O desvio padrão é conhecido e igual a 0,78. 

a) O que podemos deduzir de um intervalo de confiança de 92% para a média mensal de vasilhames registrados por casa?

b) Considerando que o gerente acha o intervalo estimado no item (a) muito grande, quantas casas ele deveria amostrar para construir um intervalo de 99% com erro menor que 0,10 vasilhames?

###Resposta letra a)

*Utilizou-se a distribuição z como estatística de teste, para o cálculo do intervalo de confiança da diferença entre as , uma vez que o desvio padrão é conhecido.* 

```{r}
z.alpha = abs(qnorm(p = 0.08/2, mean = 0, sd = 1))
lim.inf = 3.2 - z.alpha*0.78/sqrt(75)
lim.sup = 3.2 + z.alpha*0.78/sqrt(75)
print(lim.inf)
print(lim.sup)
```


*O intervalo de confiança permite deduzir que a probabilidade aa média verdadeira do número de vasilhames nas casas do perímetro municipal está contida neste intervalo é de 92%.*


###Resposta letra b)

*Utilizou-se a distribuição z como estatística de teste, para o cálculo do tamanho da mostra admitindo um erro de 0,1. A equação para a definição do tamanho da amostra com erro especificado para a média de uma distribuição normal com variância conhecida é exposta no código em R abaixo:*

```{r}
z.alpha = abs(qnorm(p = 0.01/2, mean = 0, sd = 1))
E = 0.1
n = (z.alpha*0.78)^2 / E
print(n)
```

*Para construir um intervalo de confiança de 99% com um erro inferior a 0,1 vasilhames o gerente deve amostrar um número superior a 40 casas.*

\newpage