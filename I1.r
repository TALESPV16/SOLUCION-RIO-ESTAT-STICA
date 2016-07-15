##QUESTÃO I1

Abaixo são apresentadas 20 medidas do tempo residual de inflamabilidade (em segundos) de um determinado tecido. 
a) Determine um intervalo de confiança de 95% para o tempo residual médio de inflamabilidade. 
b) Interprete o resultado.

###Resposta letra a)
```{r, results= 'asis'}
Lista_U_I1 = read.table("Lista_U_I1.txt", header = TRUE)
(Lista_U_I1)
```

*No R, utiliza-se o comando abaixo para para gerar o teste t*

```{r, echo = TRUE, results= 'asis'}
teste.t = t.test(x = Lista_U_I1$t_inflam, conf.level = 0.95)
(teste.t)
```

*A partir do teste t para a media do tempo residual de inflamabilidade é possivel concluir com 95% de confiança, que o tempo residual médio de inflamabilidade estará contido no intervalo de confiança (IC) acima. De forma resumida temos a descrição do intervalo de confiança abaixo*

***Limite superior do IC  = 9.897643***

***IC = 9.8525 +/- 0.045143***

***Limite inferior do IC  = 9.807357***

###Resposta letra b)
*Como a quantidade de medidas é menor que 30, ou seja, uma quantidade pequena de amostras, utilizaremos o teste t de Student. A distribuição t é uma curva mais achatada em relação a curva Z (curva normal padrão) e desta forma possui caudas mais largas. Assim, a simulação da t de Student pode gerar valores mais extremos que uma simulação da normal.*

\newpage
