##Erdos-Renyi random graph
####################################################################################
# Consider n-vertices V= {1,2,3,..., n}. The set of Edges of E is a subset 
#of V x V. The Graph G= (V,E) is the set of vertices and the edges between them.
#In this code we shall generate a random graph

##################################################################################


###SECTION 1###########
p <- runif(1)
prob_of_head <- p
prob_of_head
prob_of_tail <- 1-prob_of_head
prob_of_tail
coin_toss_outcome <- sample(c("HEAD","TAIL"), 1, prob = c(prob_of_head, prob_of_tail) )
coin_toss_outcome
#############################



#SECTION 2##############
number_of_vertices<- 10

#Now constructing an adjacency matrix
adj_matrix <- matrix(NA, nrow=10, ncol=10)
adj_matrix
for(i in 1:(number_of_vertices-1)){
  for(j in (i+1):number_of_vertices) {
    print(c(i,j))
    junk = sample(c("HEAD","TAIL"), 1, prob = c(prob_of_head,prob_of_tail))
    if(junk=="HEAD")
    adj_matrix[i,j] = 1
    else
      adj_matrix[i,j]= 0
    adj_matrix[j,i] = adj_matrix[i,j]
  }
}
diag(adj_matrix) <- 0 #This is because a vertex cannot have an edge with itself
#Now let's look at the adjacency matrix
adj_matrix

#SECTION 3##########
library(igraph) #R package to visualize and work with graph/network like objects
ER_graph <- graph_from_adjacency_matrix(adj_matrix,mode="undirected")
ER_graph
plot(ER_graph, edge.arrow.size=0.5, vertex.color="#fde725", vertex.size=20, 
     vertex.frame.color="#440154", vertex.label.color="#440154")

###Section 4####
gsize(ER_graph) 
degree(ER_graph)
hist(degree(ER_graph), main="Degree distribution of Erdos-Renyi graph") 

