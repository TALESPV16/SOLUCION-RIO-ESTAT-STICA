##QUESTÃO I2
A tensão de ruptura dos cabos produzidos por um fabricante apresenta a média de 1800kg e o desvio padrão de 100kg. Mediante nova técnica no processo de fabricação, proclamou-se que a tensão de ruptura pode ter aumentado. Para testar essa declaração, ensaiou-se uma amostra de 50 cabos, tendo-se determinado a tensão média de ruptura de 1850kg.

a)Pode-se confirmar a declaração com nível de significância 0,01?

###Resposta letra a)
O teste Z, é utilizado, uma vez que n>30
Ao nível de significância de 0,01, a regra de decisão é:

Rejeita-se $H_{0}$ se z > $z_{0,01}$ = 2,33

Aceita-se $H_{0}$ se z < 2,33

Desta forma as Hipóteses são:

$H_{0}:\mu$ = 1800 (não houve modificação da tensão de ruptura)

$H_{1}:\mu$ > 1800 (houve modificação da tensão de ruptura)

Como supõe-se que o desvio padrão não se tenha modificado, tem-se que $\sigma$ = 100.

A estatística a ser calculada é:

$$
\begin{aligned}
z =\frac{(\bar{X}-\mu_{0})}{\sigma / \sqrt[2]{n}}
\end{aligned}
$$

$$
\begin{aligned}
z =\frac{(1850-1800)}{100 / \sqrt[2]{50}} = 3.55
\end{aligned}
$$

**No R o cáculo acima é feito através dos comandos abaixos:**

```{r}
M = 1800
dp = 100
n = 50
x = 1850
alpha = 0.01
z.alpha = abs(qnorm(alpha))
z0 = (x - M) / (dp/sqrt(n))
if (z0 > z.alpha) {
  print("Rejeitar Hipótese Nula")
} else {print("Falhar em Rejeitar Hipótese Nula")}
```

*Sim. É possivel afirmar com 99% de confiança, que a média da tensão de ruptura dos cabos aumentou, pois a hipótese nula, a qual considera que a média é igual a 1800 kg, foi rejeitada e, $z_{0}$ > $z_{\alpha}$*

\newpage
