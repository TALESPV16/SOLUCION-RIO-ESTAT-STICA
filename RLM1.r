##QUESTÃO RLM1
Acredita-se que a vazão de vapor (em ton/h) usada mensalmente por uma planta
química está relacionada com a temperatura ambiente (em ºF) daquele mês. Os usos e temperaturas dos últimos anos estão mostradas na tabela que segue:


a) Assuma que o modelo de regressão linear simples é apropriado e ajuste o modelo de regressão relacionando a vazão de vapor (y) e a temperatura (x).

b) Avalie a significância do modelo de regressão.

c) Analise o significado de cada p-valor (P) apresentado ao lado
fazendo-se uso do teste de hipóteses. Você faria alguma sugestão
de alteração do seu modelo de regressão?

###Resposta letra a)

*Lendo os dados do arquivo*
```{r, echo=FALSE}
Lista_U_RLM1 = read.table("Lista_U_RLM1.txt", header = TRUE)
print(Lista_U_RLM1)
```

*Utilizando a função **lm()** para realizar a regressão linear*
```{r}
modelo.RLM1.1 = lm(Vazao ~ Temp, data = Lista_U_RLM1)
summary(modelo.RLM1.1)
confint(modelo.RLM1.1)
anova(modelo.RLM1.1)
plot(modelo.RLM1.1$fitted.values, Lista_U_RLM1$Vazao, main = "Ajuste para o Modelo 1", ylab = "Vazão experimental", xlab = "Vazão Ajustada")
abline(a = 0, b = 1, lty = 2, col = "red")
```

###Resposta letra b)

*O modelo linear apresenta dois coeficientes de regressão: o coeficiente angular (Estimate/Temp); e o coeficiente linear (Estimate /Intercept). Utilizando a função lm() é possível construir o modelo linear da Vazão de Vapor (ton/h) em função da Temperatura (ºF). A função summary() é utilizada para mostrar os parâmetros do modelo, e então é possível avaliar a significância verificando o p-valor. O modelo demonstra-se estatisticamente significativo devido a rejeição da hipótese nula na qual o coeficiente angular (Estimate/Temp) seria zero. A hipótese nula é rejeitada devido à significância da análise da variância (ANOVA), que apresentou p-valor inferior a 0,05.*

###Resposta letra c)

*Ã possÃvel utilizar os p-valores obtidos para avaliar a fignificÃ¢ncia dos parÃ¢metros do modelo. Nota-se que a utilização da variável temperatura no modelo linear proposto é estatisticamente significativa, sendo o p-valor inferior ao nível de significância de 0,05. Já o coeficiente linear mostrou-se não significante (falhou em rejeitar a hipótese nula) com um p-valor superior a 0,05. Observa-se que o teste para a variância ANOVA mostrou-se coerente com o teste T. A sugestão para o novo modelo linear seria a retirada do coeficiente angular conforme código abaixo:*

```{r}
modelo.RLM1.2 = lm(Vazao ~ -1 + Temp, data = Lista_U_RLM1)
summary(modelo.RLM1.2)
confint(modelo.RLM1.2)
anova(modelo.RLM1.2)
plot(modelo.RLM1.2$fitted.values, Lista_U_RLM1$Vazao, main = "Ajuste para o Modelo 2")
abline(a = 0, b = 1, lty = 2, col = "red")
```

\newpage