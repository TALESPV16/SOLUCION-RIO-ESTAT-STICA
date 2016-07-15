##QUESTÃO I3

O desempenho de dois catalisadores está sendo testada de forma a determinar-se se eles exigem tempos diferentes de imersão para a remoção de quantidades idênticas de material fotorressistente. Doze lotes foram submetidos ao catalisador 1, resultando em uma média amostral do tempo de imersão de 24,6 minutos e em um desvio padrão de 0,85 minutos. Quinze lotes foram submetidos ao catalisador 2, resultando em um tempo médio de imersão de 22,1 minutos e um desvio padrão de 0,98 minutos. Verifique se há diferença significativa entre o desempenho dos catalisadores considerando um nível de significância de 5% considerando:

a) Intervalo de confiança. Justifique sua resposta.
b) Teste de hipóteses. Justifique sua resposta.

###Resposta letra a)

Inicialmente será realizado o teste de hipótese no qual as variâncias são iguais: 

$$
\begin{aligned}
H_{0} : \sigma_{0}^2 = 22 
\end{aligned}
$$
$$
\begin{aligned}
H_{1} : \sigma_{0}^2 \not= 22
\end{aligned}
$$

Utilizou-se a distribuição f e a estatistica de teste da razão entre as variâncias.

No R os comandos que realizam esta operação são expostos abaixo:

```{r}
n1 = 12
x1 = 24.6
s1 = 0.85
n2 = 15
x2 = 22.1
s2 = 0.98
alpha = 0.05
f.alpha = abs(qf(p = alpha/2, df1 = n1-1, df2 = n2-1))
F0 = s1^2 / s2^2
if (F0 > f.alpha) {
  print("Rejeitar Hipótese Nula")
} else {print("Falhar em Rejeitar Hipótese Nula")}
print(F0)
print(f.alpha)
```

*Como a hipóse nula foi rejeitada para as variâncias, pode-se afirmar com 95% de confiança que estas são diferentes. Desta forma, realiza-se o cálculo do intervalo de confiança para as médias considerando a desigualdade entre as variâncias.*

```{r}
v = (((s1^2/n1)+(s2^2/n2))^2) / (((s1^2/n1)^2)/(n1-1) + ((s2^2/n2)^2)/(n2-1))
t.alpha = abs(qt(p = alpha/2, df = v))
lim.inf = (x1-x2) - t.alpha*sqrt((s1^2/n1)+(s2^2/n2))
lim.sup = (x1-x2) + t.alpha*sqrt((s1^2/n1)+(s2^2/n2))
if (0 <= lim.sup & 0 >= lim.inf) {
 print("As médias são iguais")
}else {print("As médias não são iguais")}
print(lim.inf)
print(lim.sup)
```

*Conclui-se que as médias do desempenho dos catalisadores não são iguais, uma vez que o valor zero não está contido dentro do intervalo de confiança. Desta forma, há diferença significativa entre os desempenhos dos catalisadores avaliados.*

###Resposta letra b)

*Como a hipóse nula foi rejeitada para as variâncias, pode-se afirmar com 95% de confiança que estas são diferentes. Desta forma,  realiza-se-á o teste de hipóteses para as médias considerando desigualdade entre as variâncias.*

```{r}
t0 = (x1-x2) / sqrt((s1^2/n1)+(s2^2/n2))
v = (((s1^2/n1)+(s2^2/n2))^2) / (((s1^2/n1)^2)/(n1-1) + ((s2^2/n2)^2)/(n2-1))
t.alpha = abs(qt(p = alpha/2, df = v))
if (t0 > t.alpha) {
 print("Rejeitar Hipótese Nula")
}else {print("Falhar em Rejeitar Hipótese Nula")}
print(t0)
print(t.alpha)
```

*Segundo o critério de rejeição acima deve-se rejeitar a hipótese nula de igualdade entre as médias dos desempenhos dos catalisadores.*


\newpage