##QUESTÃO I10

Deseja-se estimar o intervalo de confiança da proporção de um experimento. Considere que há um incremento de 20% do custo de coleta de dados a cada retorno a campo. 

a) Indique como a pesquisa deveria ser realizada em campo de forma a minimizar o uso dos recursos financeiros, garantindo um nível de confiança de 90%.

###Resposta letra a

```{r}
p = 0.2
n = 10000
z.alpha = abs(qnorm(p = 0.1/2, mean = 0, sd = 1))
lim.inf = p - z.alpha*sqrt((p*(1-p))/n)
lim.sup = p + z.alpha*sqrt((p*(1-p))/n)
print(lim.inf)
print(lim.sup)
```
*Quanto maior for o tamanho da amosta, menor será o intervalo de confiançaa para o mesmo nível de significancia. Logo, quanto maior for o tamanho da amostra, mais assertiva será a consideração de 20% de incremento do custo de coleta de dados a cada retorno ao campo. O maior tamanho da amostra também garante a maior confiabilidade dos dados e dos resultados.*


\newpage
