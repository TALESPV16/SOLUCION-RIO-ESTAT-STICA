##QUESTÃO PE3
Deseja-se maximizar o rendimento de uma reação e para tanto, foi realizado um planejamento experimental.
a) Que conclusões se pode tomar a partir do experimento realizado cujos resultados são apresentados abaixo. 
b) Critique a forma como os fatores foram estabelecidos.

###Resposta letra a)
```{r}
plan.PE3 = FrF2(nruns = 2^2,
                nfactors = 2,
                factor.names = 
                list(Temperatura = c(40, 60),
                Tempo_de_Reac = c("Baixo", "Alto")),
                randomize =  FALSE,
                replications = 2,
                repeat.only = FALSE)
summary(plan.PE3)

Rendimento = c(57,92,55,66,61,88,53,70)

plan.PE3.atualizado = add.response(design = plan.PE3, response = Rendimento)
summary(plan.PE3.atualizado)

modelo.PE3 = lm(Rendimento ~ Tempo_de_Reac*Temperatura, data = plan.PE3.atualizado)
summary(modelo.PE3)

efeitos = modelo.PE3$coefficients*2
efeitos = data.frame(efeitos)
print(efeitos)

MEPlot(plan.PE3.atualizado, main = "Efeitos Principais")
IAPlot(plan.PE3.atualizado, main = "Efeitos Sinérgicos")
```

\newpage
