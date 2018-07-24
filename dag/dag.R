
library(sna)
library(igraph)
library(data.table)
library(visNetwork)
library(formatR)


setwd("~/Dropbox/gates/sprint_7D_longbow/dag/")
dag_mat <- read.dot("dag.dot")
dag_graph <- graph_from_adjacency_matrix(dag_mat)

nodes <- as_data_frame(dag_graph, "vertices")
root_node <- which(nodes$name=="Y_Stunted")
edges <- as_data_frame(dag_graph, "edges")

node_names <- nodes$name
outcome_node <- "Y_Stunted"
risk_factor_nodes <- setdiff(node_names,outcome_node)

# calculate directed distances
dist_mat <- distances(dag_graph,mode="out")
dist_df <- as.data.table(dist_mat)
dist_df[,W:=rownames(dist_mat)]

# reshape long and filter to only parent nodes
adjustment_sets <- melt(dist_df, id=c("W","Y_Stunted"),variable.name = "A",value.name="distance")
adjustment_sets <- adjustment_sets[distance!=0&Y_Stunted!=0]
adjustment_sets <- adjustment_sets[is.finite(distance)&is.finite(Y_Stunted)]

# get adjustment sets
adjustment_lists <- adjustment_sets[,list(adjustment_set=list(W)),by=list(A)]
adjustment <- adjustment_lists$adjustment_set
names(adjustment) <- adjustment_lists$A
dput(adjustment,file="adjustment_sets.R")
tidy_file("adjustment_sets.R")

# transform nodes for plotting
nodes_df <- data.frame(id = nodes$name, label = nodes$name, group = "Risk Factor", stringsAsFactors = FALSE)
nodes_df$group[nodes_df$id=="Y_Stunted"] <- "Outcome"
network <- visNetwork(nodes_df, edges, width = "100%", height="800px") %>%
  visEdges(arrows = "to") %>%
  visPhysics(enabled = TRUE)%>%
  visIgraphLayout(layout = "layout_as_tree", root=root_node, mode="in", circular = TRUE)
print(network)
visSave(network, "sprint_7d_dag.html")
