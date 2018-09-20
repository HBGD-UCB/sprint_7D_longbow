library(longbowtools)
library(jsonlite)
inputs <- "inputs_template.json"
default_params <- fromJSON(inputs)
setwd("~/Desktop/sprint_7D_longbow/wasting_analyses/")
load("wasting_adjusted_binary_analyses.rdata")
analyses$file <- sprintf("Wasting rallies/%s",analyses$file)

i=1
for(i in 1:nrow(analyses)){
  analysis <- analyses[i,]
  analysis_params <- default_params
  analysis_nodes <- as.list(analysis[c("W","A","Y","strata","id")])
  analysis_nodes$W <- gsub("W_bmi", "W_mbmi", analysis_nodes$W[[1]])
  analysis_params$nodes <- analysis_nodes
  analysis_params$data$repository_path <- analysis$file
  inputs_filename <- sprintf("inputs/wasting_adjusted_binary_analysis_%03d.json",i)
  writeLines(toJSON(analysis_params),inputs_filename)
}