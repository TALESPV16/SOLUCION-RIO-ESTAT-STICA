##QUESTÃO I8

Você concorda com a seguinte afirmativa? **Experimentos pareados são usados, dentre outras situações, quando é difícil controlar todos os fatores que podem influenciar a variável em estudo**. 

a) Justifique sua resposta com base no exemplo a seguir. 

Sugestão: Compare os resultados obtidos entre os testes pareados e testes para amostras independentes.

**Exemplo:** Deseja-se testar dois métodos de análise (A e B), que são realizados as segundas, quartas e sextas-feiras (Seg, Qua, Sex). Dados levantados referentes aos métodos são apresentados na tabela abaixo.


```{r, echo=FALSE, warning=FALSE}
Lista_U_I8 = read.table("Lista_U_I8.txt", header = TRUE)
print(Lista_U_I8) 
```

###Resposta letra a)

Utilizou-se a função t.test para a realização do teste de hipótese para amostras independentes de igualdade entre os métodos de análise A e B, como é exposto no código abaixo: 

```{r}
t.test(Lista_U_I8$A, Lista_U_I8$B, paired = FALSE, var.equal = TRUE)
```
*A afirmativa é verdadeira, uma vez que ao realizar-se métodos diferentes, no mesmo dia, pode-se inferir os erros sistemáticos.Ao relizar os métodos em diferentes dias pode-se observar a existência de erros aleatórios, erros que não poderiam ser observador se as amostras não fossem pareadas.*
*Não é possível realizar o teste T Emparelhado, pois a variãncia entre as diferenças dos dados pareados é zero. O teste T para amostras independentes falhou em rejeitar a hipótese nula de igualdade das médias, logo conclui-se que os métodos A e B não são estatisticamente diferentes com um nível de confiança de 95%.*

\newpage