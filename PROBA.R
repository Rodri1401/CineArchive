library(igraph)
library(ggplot2)

# Generar el grafo aleatorio binomial
n <- 1000
p <- 0.65
m <- round(p * n * (n - 1) / 2)  # Calcula el número de aristas
G <- sample_gnm(n, m, directed=FALSE)

#plot(G, vertex.label=NA, vertex.size=2, vertex.color="blue", edge.arrow.size=0.5)



# Obtener el vector de grados y su distribucion
grados <- degree(G)
distr_k <- c()

# Llenar el vector distr_k con las probabilidades de la distribución de los grados
for (k in grados){
  op <- choose(1000-1,k)*((0.65)^k)*(1-0.65)^(1000-k-1)
  distr_k <- c(distr_k,op)
}

#Crear Data Frame y hacer la grafica
datos_grafico2 <- data.frame(grados = grados, distr_k=distr_k)
ggplot(data = datos_grafico2)+
  geom_point(mapping = aes(x=grados,y=distr_k), col= "RED")+
  xlab("Grados") +
  ylab("P(Di=K)") +
  ggtitle("Distribucion de los Grados")

# Contar cuantas veces aparece cada grado
contador <- table(grados)

# Calcular el promedio de grados
promedio_grados <- mean(grados)

s <- sum(grados)
grados_proporcionales <- grados / s

# Crear el grafico de k contra (grado(k))/s
datos_grafico <- data.frame(k = as.numeric(names(contador)),
                            proporcion = as.numeric(contador) / sum(contador))

ggplot(datos_grafico, aes(x = k, y = proporcion), ) +
  geom_point(col= "BLUE") +
  xlab("Grado (k)") +
  ylab("Grado (k) / Suma total (s)") +
  ggtitle("Formula: Grado(k)/s")

# Imprimir el conteo de grados y el promedio de grados
print(contador)
cat("\nEl promedio de grados es:",promedio_grados,"\n")


#Crear el grafico donde sobreponemos las dos grpaficas anteriores.
ggplot() +
  geom_point(data = datos_grafico2, aes(x = grados, y = distr_k), col = "RED") +
  geom_point(data = datos_grafico, aes(x = k, y = proporcion), col = "BLUE") +
  ylab("Distribucion") +
  xlab("Grado (k)") +
  ggtitle("Grafico de k contra grado(k)/s")

