library(longbowtools)
library(jsonlite)
inputs <- "inputs_template.json"
default_params <- fromJSON(inputs)
load("adjusted_binary_analyses.rdata")
analyses$file <- sprintf("Stunting rallies/%s",analyses$file)

# reduce analyses to just ever_stunted for testing
analyses <- analyses[analyses$Y=="ever_stunted", ]

i=1
for(i in 1:nrow(analyses)){
  analysis <- analyses[i,]
  analysis_params <- default_params
  analysis_nodes <- as.list(analysis[c("W","A","Y","strata","id")])
  analysis_nodes$W <- gsub("W_bmi", "W_mbmi", analysis_nodes$W[[1]])
  analysis_params$nodes <- analysis_nodes
  analysis_params$data$repository_path <- analysis$file
  inputs_filename <- sprintf("inputs/opttx_vim_%03d.json",i)
  writeLines(toJSON(analysis_params),inputs_filename)
}