######################################  BASICS R - Statistical computing ################################
#LOAD PACKAGES
install.packages("pacman")   #instalo el paquete que voy a usar
require(pacman)              #cargo el paquete

##Con p_load cargo una coleccion entera de paquetes
pacman::p_load(pacman, dplyr, GGally, ggplot2, ggthemes, psych,
               ggvis, httr, lubridate, plotly, rio, rmarkdown, shiny, stringr, tidyr)

#LOAD DATA
library(datasets)

head(iris)      #muestra las primeras seis lineas de todas las columnas
class(iris)     #Me dice que clase de dataset es (en este caso es un DataFrame)


########################################PLOT DATA WITH PLOT()
plot(iris)                 #Diagrama de dispersion del data frame completo
plot(iris$Species)         #grafico de barras por especie
plot(iris$Petal.Length)    #Diagrama de dispersion de la longitud de los petalos
plot(iris$Species, iris$Petal.Width)          #Boxplot especie x ancho
plot(iris$Petal.Length, iris$Petal.Width)     #Diagrama de dispersion longitud x ancho

#Plot with options
plot(iris$Petal.Length, iris$Petal.Width,
     col="#cc0000",                          #Color rojo
     pch=19,                                 #Circulos solidos para los puntos
     main="Petal length vs. Petal width",    #titulo
     xlab= "Petal length",                   #Nombre variable x
     ylab="Petal width")                     #Nombre variable y

#PLOT FORMULAS WITH PLOT()
plot(cos, 0, 2*pi)   #Grafico un coseno
plot(exp, 1, 5)      #Grafico una exponencial
plot(dnorm, -3, +3)  #Grafico distribucion normal

head(mtcars)

plot(mtcars$wt, mtcars$mpg,
     pch = 19,          #Circulos solidos
     cex = 1.4,         #tamaño agrandado 150%
     col = "#cc0000",
     main = "MPG as a Function of Weight of Cars",
     xlab = "Weight",
     ylab = "MPG")

########################################  BAR CHARTS  ########################################
head(mtcars)
cilindros<-table(mtcars$cyl)     #Creo una tabla con la columna cyl
barplot(cilindros)               #Obtengo un grafico de barras
plot(cilindros)                  #Obtengo un grafico de lineas

########################################  HISTOGRAMS  ########################################
head(iris)
hist(iris$Sepal.Length)
hist(iris$Sepal.Width)
hist(iris$Petal.Length)
hist(iris$Petal.Width)

#HISTOGRAM BY GROUP
par(mfrow=c(3,1)) #3 filas, 1 columna (Van a entrar tres histogramas en una fila)

hist(iris$Petal.Width[iris$Species == "setosa"],
   xlim = c(0,3),
   breaks = 9,
   main = "Petal Width for Setosa",
   xlab = "",
   col = "red")

hist(iris$Petal.Width[iris$Species == "versicolor"],
     xlim = c(0,3),
     braks = 9,
     main = "Petal Width for Versicolor",
     xlab = "",
     col = "purple")

hist(iris$Petal.Width[iris$Species == "virginica"],
     xlim = c(0,3),
     braks = 9,
     main = "Petal Width for Virginica",
     xlab = "",
     col = "blue")

par(mfrow = c(1,1)) #Restauro los parametros

head(lynx)

hist(lynx,
     breaks = 14,
     freq = FALSE,       #Los ejes muestran densidad, no frecuencia
     col = "thistle1",   #Color
     main = paste("Histogram of Annual Canadian Lynx",
                  "Trappings, 1821-1934"),
     xlab = "Number of Lynx Trapped")

curve(dnorm(x, mean = mean(lynx), sd = sd(lynx)), #Agrego distribucion normal
      col= "thistle4",                            #color
      lwd = 2,                                    #tamaño de la linea de 2px
      add = TRUE)                                 #Superposicion con el grafico anterior

lines(density(lynx), col = "blue", lwd = 2)       #Estimador de Kernel
lines(density(lynx, adjust = 3), col = "pink", lwd = 2) 


