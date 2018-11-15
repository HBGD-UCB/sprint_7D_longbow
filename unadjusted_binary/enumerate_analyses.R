library(longbowtools)
library(jsonlite)
inputs <- "inputs_template.json"
default_params <- fromJSON(inputs)
load("unadjusted_binary_analyses.rdata")

analyses$file <- sprintf("Stunting rallies/%s",analyses$file)
enumerated_analyses <- lapply(seq_len(nrow(analyses)),function(i){
  analysis <- analyses[i,]
  analysis_params <- default_params
  analysis_nodes <- as.list(analysis[c("A","Y","strata","id")])
  analysis_params$nodes <- analysis_nodes
  analysis_params$data$repository_path <- analysis$file
  return(analysis_params)
})

writeLines(toJSON(enumerated_analyses[[1]]),"single_analysis.json")
writeLines(toJSON(enumerated_analyses),"all_analyses.json")
