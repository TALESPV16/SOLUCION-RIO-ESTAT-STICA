##QUESTÃO RLM2
a) Como identificar a existência de correlação não-linear entre as variáveis? 
b) Qual a influência de pontos aberrantes em um modelo de regressão?

###Resposta letra a)

*A existência de correlação não-linear entre as variáveis de um modelo pode ser avaliada usando o coeficiente de Spearman e realizando o teste de significância utilizando uma aproximação para a distribuição de t-Student.*

$$
\begin{aligned}
\rho =\frac{6 \sum d_{i}^{2}}{(n^{3}-n)}
\end{aligned}
$$

$$
\begin{aligned}
t =\frac{\rho}{\sqrt[2]{(1-\rho)/(n-2)}}
\end{aligned}
$$

*O coeficiente de correlação de Spearman é mais adequado por levar em consideração a ordem dos dados e não o seu valor intrínseco. Ainda, quando os dados obtidos das variáveis não aderem à distribuição normal devido, por exemplo, à presença de valores discrepantes (outliers), o coeficiente de correlação de Spearman é um bom substituto para a verificação do inter-relacionamento das variáveis consideradas.*
*Por outro lado a correlação obtida através do coeficiente de Pearson, que é a medida de correlação mais conhecida, é linear. Assim, nos casos em que a relação entre as variáveis seja não linear (quadrática, cúbica, exponencial, etc.), ela não será medida adequadamente. Nesses casos os dados devem ser transformados para a obtenção da medida adequada.*
*Desta forma o coeficiente de correlação a ser utilizado, é o de Spearman, por realizar uma transformação de postos, e pode ser utilizado nas situações em que a relação entre os pares de dados não é linear.*

###Resposta letra b)
*A presença de pontos aberrantes no modelo de regressão aumenta o somatório dos erro quadrados, e ainda aumenta o coeficiente de variação,  diminuindo a significância do modelo. Para uma correlação linear o $R^{2}$ terá valor próximo de zero. Caso se esteja analizando um modelo não linear com o coeficiente de Spearman, o valor de $\rho$ será muito pequeno.*

\newpage
