library(longbowtools)
library(jsonlite)
library(data.table)
inputs <- "inputs_template.json"
default_params <- fromJSON(inputs)


load("EBFxBW_analyses_specification.rdata")
analyses_1 <- analyses
analyses_1$file <- sprintf("Stunting rallies/%s",analyses$file)
load("adjusted_whzRF_analyses.rdata")
analyses_2 <- analyses
analyses_2$file <- sprintf("Stunting rallies/%s",analyses$file)
load("prior_anthro_adjusted_binary_analyses.rdata")
analyses_3 <- analyses
analyses_3$file <- sprintf("Wasting rallies/%s",analyses$file)
load("prior_anthro_unadjusted_binary_analyses.rdata")
analyses_4 <- analyses
analyses_4$file <- sprintf("Wasting rallies/%s",analyses$file)
analyses <- rbindlist(list(analyses_1,analyses_2,analyses_3,analyses_4), fill=T)


i=1
for(i in 1:nrow(analyses)){
  analysis <- analyses[i,]
  analysis_params <- default_params
  analysis_nodes <- as.list(analysis)[c("W","A","Y","strata","id")]
  analysis_nodes$W <- gsub("W_bmi", "W_mbmi", analysis_nodes$W[[1]])
  analysis_params$nodes <- analysis_nodes
  analysis_params$data$repository_path <- analysis$file
  inputs_filename <- sprintf("inputs/webinar_analysis_%03d.json",i)
  writeLines(toJSON(analysis_params),inputs_filename)
}