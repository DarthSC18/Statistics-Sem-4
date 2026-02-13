degree(g)
library(igraph)
adJ_mat=matrix(c(0,1,1,1,1,0,1,0,1,1,0,1,1,0,1,0),nrow=4, byrow=TRUE)
g=graph_from_adjacency_matrix(adJ_mat,mode='undirected')

prim=mst(g)
plot(prim)

#graph creation
edges=c('A','B','A','C','B','C','A','D','C','D','D','B','D','E','E','C','A','E','B','E')
g=graph(edges,directed=FALSE)
library(igraph)
plot(g,vertex.size=10, vertex.label.cex=1.2, edge.width=2,edge.color='red')

#finding degree
degree(g,mode='in')
degree(g,mode='out')
E(g)$weight=c(30,50,25,20,40,19,20,35,45,60)
plot(g,vertex.size=10, vertex.label.cex=1.2,edge.width=2, edge.color='red',edge.label=E(g)$weight)
adj_mat1=matrix(c(0,30,50,20,0,30,0,25,0,0,50,25,0,40,20,20,0,40,0,19,0,0,20,19,0),nrow=5,byrow=TRUE)
adj_mat1
rownames(adj_mat1)=colnames(adj_mat1)=c('A','B','C','D','E')
adj_mat1
g1=graph_from_adjacency_matrix(adj_mat1,mode='undirected')
plot(g1)
E(g)$weight=c(30,25,50,20,40,19,20,35,45,60)
plot(g1,edge.label=E(g)$weight)
g2=mst(g1)
plot(g2,directed=FALSE)
