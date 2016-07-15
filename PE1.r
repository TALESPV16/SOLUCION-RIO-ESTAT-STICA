##QUESTÃO PE1
Um planejamento de experimentos foi realizado com o objetivo de aumentar a atividade de uma determinada enzima em função do pH e temperatura. Desta forma o experimento foi realizado de acordo com a tabela a seguir:

De acordo com os dados,
a) Calcule os efeitos principais, o efeito sinérgico, e indique as condições de maior atividade enzimática.
b) Critique a forma que os experimentos foram realizados.
c) Caso realizassemos o experimento inserindo mais uma variável (tipo de enzima), quais devem ser as premissas adotadas para alcançar o modelo de regressão?


###Resposta letra a)

```{r, warning= FALSE}
Lista_U_PE1 = read.table("Lista_U_PE1.txt", header = TRUE)
```

```{r, message=FALSE}
(Lista_U_PE1)
library(FrF2)
plan.PE1 = FrF2(nruns = 2^2, nfactors = 2,
                factor.names = list(pH = c(-1,1),
                                    Temperatura = c(-1,1)),
                randomize = FALSE,
                replications = 3,
                repeat.only = TRUE)

Atividade.Enzima = c(218,121,170,67,73,76,402,399,411,222,258,270)

plan.PE1.atualizado = add.response(design = plan.PE1, response = Atividade.Enzima)
summary(plan.PE1.atualizado)

modelo.PE1 = lm(Atividade.Enzima ~ pH*Temperatura, data = plan.PE1.atualizado)
summary(modelo.PE1)

efeitos = modelo.PE1$coefficients*2
efeitos = data.frame(efeitos)
print(efeitos)

par(mfrow = c(2,1))
MEPlot(plan.PE1.atualizado, main = "Efeitos Principais")
IAPlot(plan.PE1.atualizado, main = "Efeitos Sinérgicos")

```

*A condição de maior atividade enzimática é encontrada no sistema com nível de ph inferior e nível de temperatura superior.*

###Resposta letra b)

*Os experimentos foram realizados de forma não aleatória e com repetições na ordem estabelecida.*

###Resposta letra c)

*Deveriam ser escolhidas dois tipos de enzima pois o experimento é de dois níveis*

\newpage
