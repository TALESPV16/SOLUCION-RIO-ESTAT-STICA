##QUESTÃO ED2
Os seguintes dados representam o número de acidentes diários em um complexo
industrial (colocados em ordem crescente), durante o período de 50 dias. (Dados fictícios)

a) Construir o histograma de frequência relativa para representar esses dados.

b) O estatístico decide separar destes dados os dias com número de acidentes inferior a dois desvios padrões abaixo da média e também separar os dias com número de acidentes superior a um e meio desvio padrão acima da média. 

c) Qual a porcentagem de dias que serão separados em cada caso?

d) Que características pretende-se realçar quando se representa um conjunto de dados sob a forma de um histograma e de um diagrama de séries temporais?

###Resposta letra a)
*Faremos a leitura dos dados com o comando read.csv(), para ler o arquivo do tipo csv*
```{r, results= 'asis'}
nacid <- read.table("ED2.csv",header =  FALSE, sep = ";")
knitr::kable(nacid, align = 'c')
```

Construção do Histograma de frequência relativa

```{r, fig.align = 'center', fig.height= 4, fig.width= 5}
plot(fdt(nacid), type = "rfph", main = "Número de Acidentes Diários",
     col="lightblue", v= TRUE, x.round = 0)
```

Construção de tabela de frequência para uma visualização completa dos das frequências relativas.
```{r}
(tf <- as.list(tf<-fdt(nacid)))
```

###Resposta letra b)
Normalizando
```{r}
z = (nacid - mean(nacid$V1)) / sd(nacid$V1)
dias.inferiores = z < -2
```
Calculando a porcentagem para dias inferiores menores que 2 desvios padrão abaixo da média e para 1.5 desvio padrão acima da média.
```{r}
sum(dias.inferiores)/length(nacid$V1)*100
dias.superiores = z > 1.5
sum(dias.superiores)/length(nacid$V1)*100
par(mfrow = c(1,1))
```

```{r, fig.width = 4, fig.height= 4, fig.align='center'}
plot(nacid$V1, xlab = "Dias",
     ylab = "Acidentes", 
     main = "Nº de acidentes/dia", 
     pch = 20, cex = 0.5)
```

Ao comparar os dois gráficos podemos observar que o histograma procura mostrar o resultado da frequência em função das classes, com isso é possível notar se a distribuição é normal, se há curtose ou assimetria. Já o gráfico de séries temporais, procura mostrar a tendência, e a dispersão relativa dos dados, ou seja, é possível ter uma idéia de como será o coeficiente de variação dos dados.
