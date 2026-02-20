librabry(igraph)

edges <- c(

  
  "A","D",
  
  "D","C",
  
  "C","B",
  
  "B","A",
  
  "A","C",
  
  

  
  "C","F",
  
  "E","F",
  
  "E","D",
  
  "D","F",
  
  
  

  
  "E","G",
  
  "F","G"
  
)

g <- graph(edges, directed = FALSE)

# Example weights (change to your exact values if needed)

E(g)$weight <- c(
  
  5,6,5,6,4,
  
  6,4,5,8,
  
  6,7
  
)

# ---- Layout to force exact geometric structure ----

layout_matrix <- matrix(c(
  
  0,1, 
  
  1,1, 
  
  1,0, 
  
  0,0, 
  
  2,0, 
  
  2,1, 
  
  3,0.5
  
), ncol = 2, byrow = TRUE)

plot(g,
     
     layout = layout_matrix,
     
     vertex.size = 30,
     
     vertex.label.cex = 1.2,
     
     edge.width = 2,
     
     edge.label = E(g)$weight)
