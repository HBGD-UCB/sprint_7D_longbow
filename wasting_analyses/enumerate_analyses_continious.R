
library(data.table)
library(longbowtools)
library(jsonlite)
# setwd("~/Desktop/sprint_7D_longbow/wasting_analyses/")
#setwd("~/Dropbox/gates/sprint_7D_longbow/wasting_analyses/")
setwd("C:/Users/andre/Documents/HBGDki/sprint_7D_longbow/wasting_analyses/")
inputs <- "inputs_template.json"
default_params <- fromJSON(inputs)

#Set to continious
default_params$script_params$count_Y <- FALSE

load("adjusted_continuous.rdata")
analyses <- analyses
# load("wasting_unadjusted_binary_analyses.rdata")
# analyses_2 <- analyses
# analyses <- rbindlist(list(analyses_1, analyses_2), fill=TRUE)

analyses$file <- sprintf("Manuscript analysis data/%s",analyses$file)

i=1
enumerated_analyses <- lapply(seq_len(nrow(analyses)),function(i){
  analysis <- analyses[i,]
  analysis_params <- default_params
  analysis_nodes <- as.list(analysis)[c("W","A","Y","strata","id")]
  analysis_nodes$W <- gsub("W_bmi", "W_mbmi", analysis_nodes$W[[1]])
  analysis_params$nodes <- analysis_nodes
  analysis_params$data$repository_path <- analysis$file
  return(analysis_params)
})

writeLines(toJSON(enumerated_analyses[[10]]),"single_analysis.json")
writeLines(toJSON(enumerated_analyses),"all_analyses.json")


