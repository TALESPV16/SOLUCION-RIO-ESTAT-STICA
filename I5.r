##QUESTÃO I5
Deseja-se estimar a resistência média de certo tipo de peça com precisão de 2kg e 95% de confiança. Desconhecendo-se a variabilidade dessa resistência, roperam-se cinco peças, obtendo-se paraelas os seguintes valores de sua resistência (em kg): 50,58,52,49,55. Com base no resultado obtido,determinou-se que deveriam ser rompidas mais quinze peças, a fim de se conseguir o resultado desejado.

a) Qual sua opinião a respeito dessa conclusão?

###Resposta letra a)

```{r}
resultados.1 = c(50,58,52,49,55)
t.alpha.1 = abs(qt(p = 0.05/2, df = length(resultados.1)-1))
t.alpha.2 = abs(qt(p = 0.05/2, df = length(resultados.1)-1+15))
E.1 = t.alpha.1*sd(resultados.1)/sqrt(length(resultados.1))
E.2 = t.alpha.2*sd(resultados.1)/sqrt(length(resultados.1)+15)
print(E.1)
print(E.2)
```

*A primeira amostragem com 5 peças apresentou um erro de 4,60kg com 95% de confiança. Valor superior aos 2kg requeridos. A amostragem de mais 15 peças, provocou a redução do erro para 1,73kg, mantendo constante o valor da média e desvio padrão da primeira amostragem. A amostragem adicional de 15 peças atende às especificações de precisão entretanto, uma amostragem adicional de 11 peças seria suficiente para atender Ãs especificações.*

\newpage