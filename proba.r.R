library(igraph)

# Establecer la semilla aleatoria para reproducibilidad
set.seed(123)

# Crear el grafo aleatorio binomial
n <- 100  # Número de nodos
p <- 0.65  # Probabilidad de conexión

# Generar una matriz de adyacencia binomial
adj_matrix <- matrix(rbinom(n^2, 1, p), nrow = n, ncol = n)

# Convertir la matriz de adyacencia en un grafo
graph <- graph.adjacency(adj_matrix, mode = "undirected", weighted = TRUE)

# Establecer las etiquetas de los nodos en blanco
V(graph)$label <- ""

# Imprimir información básica del grafo
cat("Número de nodos:", vcount(graph), "\n")
cat("Número de enlaces:", ecount(graph), "\n")
cat("Densidad del grafo:", edge_density(graph), "\n")

# Plotear el grafo sin mostrar los números de los nodos
plot(graph, vertex.label = V(graph)$label)