##QUESTÃO I6

Foram realizados testes sobre a força de tração em duas classes diferentes de ligas de alumínio usadas na fabricação de aviões de transporte comerciais. Pela experiência passada com o processo de fabricação de ligas e pelo procedimento de teste, se supõem conhecidos os desvios padrões das forças de tração. Os dados obtidos são apresentados na tabela abaixo:

```{r, echo=FALSE}
Lista_U_I6 = read.table("Lista_U_I6.txt", header = TRUE)
print(Lista_U_I6)
```

Se $\mu_{1}$ e $\mu_{2}$ representam as verdadeiras forças médias de tração para as duas classes de ligas:
a) Encontre um intervalo de confiança de 90% para a diferença das médias. 
b) Interprete o resultado.

###Resposta letra a)

*Devido ao conhecimento do valor verdadeiro do desvio padrão do processo, utilizou-se a distribuição z como estatística de teste, para o cálculo do intervalo de confiança da diferença entre as médias da resistência à tração das ligas de alumínio. O código para a realização deste procedimento é apresentado abaixo.*

```{r}
z.alpha = abs(qnorm(p = 0.10/2, mean = 0, sd = 1))
n1 = Lista_U_I6$N[1]
n2 = Lista_U_I6$N[2]
x1 = Lista_U_I6$Tracao.media[1]
x2 = Lista_U_I6$Tracao.media[2]
dp1 = Lista_U_I6$Desvio.padrao[1]
dp2 = Lista_U_I6$Desvio.padrao[2]
lim.inf = x1 - x2 - z.alpha*sqrt((dp1^2/n1)+(dp2^2/n2))
lim.sup = x1 - x2 + z.alpha*sqrt((dp1^2/n1)+(dp2^2/n2))
if (0 <= lim.sup & 0 >= lim.inf) {
 print("As médias são iguais")
}else {print("As médias não são iguais")}
print(lim.inf)
print(lim.sup)
```

###Resposta letra b)

*O intervalo de confiança encontrado permite concluir com 90% de confiança que há uma diferença significativa entre as médias da força de tração entre as ligas 1 e 2, uma vez que o valor zero não está contido no intervalo.*

\newpage