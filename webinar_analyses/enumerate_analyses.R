library(longbowtools)
library(jsonlite)
inputs <- "inputs_template.json"
default_params <- fromJSON(inputs)


load("EBFxBW_analyses_specification.rdata")
analyses_1 <- analyses
load("adjusted_whzRF_analyses.rdata")
analyses_2 <- analyses
analyses <- rbind(analyses_1,analyses_2)
analyses$file <- sprintf("Stunting rallies/%s",analyses$file)

i=1
for(i in 1:nrow(analyses)){
  analysis <- analyses[i,]
  analysis_params <- default_params
  analysis_nodes <- as.list(analysis[c("W","A","Y","strata","id")])
  analysis_nodes$W <- gsub("W_bmi", "W_mbmi", analysis_nodes$W[[1]])
  analysis_params$nodes <- analysis_nodes
  analysis_params$data$repository_path <- analysis$file
  inputs_filename <- sprintf("inputs/adjusted_binary_analysis_%03d.json",i)
  writeLines(toJSON(analysis_params),inputs_filename)
}