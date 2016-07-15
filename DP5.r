##QUESTÃO DP5 
Dois estudantes foram informados de que alcançaram as variáveis reduzidas (Z) de 0,8 e -0,4, respectivamente, em um exame de múltipla escolha de inglês. Se seus rendimentos foram 88 e 64, respectivamente:

a) Determinar a média e o desvio padrão dos rendimentos do exame.
b) Determinar a probabilidade de um estudante alcançar um rendimento maior que 96.

###Resposta letra a)

*Usando o escore z(variável reduzida) abaixo podemos calcular:*
$$
\begin{aligned} \label{eq1}
z = \frac{(x_{i}-\mu_{0})}{\sigma} 
\end{aligned}
$$

$$
\begin{aligned}
\frac{(88-\mu_{0})}{\sigma} = 0.8
\frac{(64-\mu_{0})}{\sigma} = -0.4
\end{aligned}
$$

$$
\begin{aligned}
\left\{ \begin{array}{ll}
b = x_{2} + \alpha x_{2} \\
64 = \mu_{0} - 0.4\sigma \\
88 = \mu_{0} + 0.8\sigma \end{array} \right. \
\end{aligned}
$$

```{r}
A = matrix(data = c(1, 1, -0.4, 0.8), ncol = 2)
b = c(64,88)
Ab = cbind(A,b)
qr(A)$rank==qr(Ab)$rank #TRUE - sistema consistente
qr(A)$rank==2 #TRUE - sistema determinado
A = solve(A,b)
A <- data.frame(A)
(A)
```

*Onde o desvio padrão $\sigma$ = 20 e a média é $\mu$ = 72*
\newpage
