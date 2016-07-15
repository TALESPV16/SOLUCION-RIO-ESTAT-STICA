##QUESTÃO PE2
Um experimento conhecido por Teste de Jarro é realizado para encontrar-se as melhores condições operacionais para a quebra da emulsão óleo-água com uma combinação de cloreto férrico e ácido sulfúrico de forma que o óleo livre possa ser removido por flotação. Um experimento fatorial completo foi realizado, obtendo-se os resultados apresentados abaixo.


a) Estime e analise os efeitos principais e de interação do ácido sulfúrico e do cloreto férrico e indique qual a melhor condição para a separação da emulsão óleo-água.
b) Proponha meios de estimar a significância dos resultados obtidos.
c) Qual a vantagem em se realizar cada experimento em duplicata?


###Resposta letra a)
```{r, warning= FALSE}
Lista_U_PE2 = read.table("Lista_U_PE2.txt", header = TRUE)
```

```{r}
(Lista_U_PE2)
plan.PE2 = FrF2(nruns = 2^2,
                nfactors = 2,
                factor.names = list(H2SO4 = c(0, 0.2),
                                    FeCl3 = c(1.2, 1.4)),
                randomize = FALSE,
                replications = 1,
                repeat.only = FALSE)
summary(plan.PE2)

Oleo = c(2400,
         100,
         400,
         1000)

plan.PE2.atualizado = add.response(design = plan.PE2, response = Oleo)
summary(plan.PE2.atualizado)

modelo.PE2 = lm(Oleo ~ H2SO4 * FeCl3, data = plan.PE2.atualizado)
summary(modelo.PE2)

efeitos = modelo.PE2$coefficients*2
efeitos = data.frame(efeitos)
print(efeitos)

MEPlot(plan.PE2.atualizado, main = "Efeitos Principais")
IAPlot(plan.PE2.atualizado, main = "Efeitos Sinérgicos")
```
*A melhor condição para a separação da emulsão óleo-água foi verificada no nível inferior do fator concentração de H2SO4 (0 mg/L) e nível inferior do fator concentração de FeCl3 (1,2 mg/L)*

\newpage
