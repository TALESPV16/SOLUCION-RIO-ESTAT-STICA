#ESTATÍSTICA DESCRITIVA
##QUESTÃO ED1
Para fins de vistoria ambiental, a concentração de monóxido de carbono (CO, mg/m3)
foi medida em quatro chaminés. Os dados obtidos são apresentados a seguir,

a) Complete o quadro das estatísticas descritivas destes dados.
b) Compare as distribuições quanto à simetria com base nos gráficos acima.
c) Que chaminé apresenta maior variação relativa? Analise criticamente sua resposta.
d) As estatísticas calculadas podem ser utilizadas para descrever o comportamento dos dados?

\newpage

**RESPOSTA:** 
*Faremos a leitura dos dados com o comando read.csv(), para ler o arquivo do tipo csv*
```{r, results= 'asis'}
datacham <- read.csv("EDL.csv", header =  TRUE, sep = ";") 
knitr::kable(datacham, align = 'c')  # mostrando os dados
```

### Resposta letra a)
```{r, results= 'asis'}
tb <- fdt(datacham)
sumdf <- sapply(datacham, summary) 
sumdf <- round(sumdf,1) 
sumdf <- data.frame(sumdf) 
sddf <- sapply(datacham, sd) 
stddev <- round(sddf,1) 
sd<- data.frame(rbind(stddev)) 
resumo <- rbind(sumdf, sd)
knitr::kable(resumo, align = 'c')
```

Usaremos a função **sapply()** para realizar o cálculo dos parâmetros estatísticos para cada coluna, arredondando com a função **round()** os valores para até quatro significativos, usaremos a função **sapply()** para o cálculo do desvio padrão para cada coluna, arredondando o valor do desvio padrão para até 4 significativos com a função **round()**. Transformando o objeto sddf para do tipo dataframe com a função **data.frame()**, mostrando o dataframe com todos os dados necessários.

### Resposta letra b)
```{r, fig.height= 8, fig.width= 11}
par(mfrow = c(2,2))
plot(datacham$Cham1, type = "l", col = "blue",  
     xlab = "Tempo", ylab = "CO / mg.m-3", main = "Cham1") 
points(datacham$Cham1, pch = 16, col = "black", cex = .7)
plot(datacham$Cham2, type = "l", col = "blue",  
     xlab = "Tempo", ylab = "CO / mg.m-3", main = "Cham2")
points(datacham$Cham2, pch = 16, col = "black", cex = .7)
plot(datacham$Cham3, type = "l", col = "blue", 
     xlab = "Tempo", ylab = "CO / mg.m-3", main = "Cham3")
points(datacham$Cham3, pch = 16, col = "black", cex = .7)
plot(datacham$Cham4, type = "l", col = "blue",
     xlab = "Tempo", ylab = "CO / mg.m-3", main = "Cham4")
points(datacham$Cham4, pch = 16, col = "black", cex = .7)
```

\newpage

**Plotando os boxplots**
```{r, fig.height= 4, fig.width= 5, fig.align='center', echo=FALSE}
boxplot(datacham)
```

**Plotando os histogramas**
```{r, fig.height = 8, fig.width = 11}
par(mfrow = c(2,2))
graph <- sapply(X = c("Cham1","Cham2","Cham3","Cham4"), FUN=function(s) {
        hist(datacham[,s], xlab= c("gás CO - (mg/m3)"), main = paste("Histogram of ",s), 
             col = "light blue")
        })
```

```{r, results= 'asis'}
Cvar <- sapply(datacham, cv)
Coefvar <- round(Cvar,2)
kurt <- sapply(datacham, kurtosis) # Curtose
kurt <- round(kurt,2)
skwns <- sapply(datacham, skewness) # Assimetria
skwns <- round(skwns,2)
percentl <- sapply(datacham, quantile)
percentl <- round(percentl,2)
otprm <- rbind(Coefvar, kurt, skwns, percentl)
resumo <- rbind(resumo, otprm, make.row.names = TRUE, stringsAsFactors=
                default.stringsAsFactors())
knitr::kable(resumo, align = 'c')
```

Os gráficos e a tabela acima evidenciam que: para a Chaminé 1 e Chaminé 2 temos assimetria leve à direita como pode também ser notado pela variáveis skwns. Para a Chaminé 3 existem uma maior quantidade de leituras para valores mais baixos de concentração de monóxido de carbono, ou seja, existe uma assimetria à esquerda, com valor de skwns igual à -1,73, já a Chaminé 4 tem assimetria nula (skwns = 0), isso indica que a distribuição é normal ou simétrica.

###Resposta letra c)

Ao Olhar a tabela acima pode-se notar que a variável Coefvar que corresponde ao Coeficiente de Variação Cv, está calculado para as quatro chaminés. Observando os valores calculados podemos notar que há uma ordem crescente onde o Cv pode ser ordenado dessa forma Coefvar 5.21 > 11.07 > 11.84 > 12.71, ou seja, o coeficiente de variação que corresponde à dispersão relativa dos dados, ordena em ordem crescente as chaminés em termos de dispersão relativa dessa forma:

```{r, include= FALSE }
class <- matrix(c("Cham4",5.21,"Cham1", 11.07, "Cham3", 
                  11.84, "Cham2", 12.71), nrow = 2)
```
```{r,results= 'asis'}
knitr::kable(class, align = 'c')
```

Ou seja a Chaminé 2 tem a maior dispersão relativa ou o maior coeficiente de variação dos dados. 

###Resposta letra d)
Não é possível usar as estatísticas para descrever os dados, pois a distribuição não é normal, e ainda na Chaminé 2, temos uma distribuição bimodal, ou seja, exisem duas médias, e a média global dessas duas ditribuições não representa a população. Os gráficos abaixos comparam a distribuição dos dados de cada chaminé, com a distribuição normal, podemos observar que a única chaminé que tem proximidade com a distribuição normal é a Cham4, por isso nesse caso não é possível usar as estatisticas para todas as chaminés.

```{r "QUESTAO ED1 Solução letra d", fig.height= 8, fig.width= 10, message = FALSE}
par(mfrow = c(2,2))
sapply(X = c("Cham1","Cham2","Cham3","Cham4"), FUN=function(s) {
        qqnorm(datacham[,s], ylab= c("gás CO - (mg/m3)"), 
               main = paste("Verificando a normalidade da",s), 
             pch = 18)
        qqline(datacham[,s], col = "red")
        })
```


\newpage