library(data.table)
library(longbowtools)
library(jsonlite)
#setwd("~/Desktop/sprint_7D_longbow/opttx_vim/")
setwd("C:/Users/andre/Documents/HBGDki/sprint_7D_longbow/opttx_vim/")


inputs <- "inputs_template.json"
default_params <- fromJSON(inputs)

# # Binary
# load('../Manuscript analysis/adjusted_binary_analyses_sub.rdata')
# analyses$count_Y <- TRUE
# analyses_1 <- analyses

# # Continious
load('../Manuscript analysis/adjusted_continuous.rdata')
analyses$count_Y <- FALSE
analyses$maximize <- TRUE

#analyses_2 <- analyses
#analyses <- rbindlist(list(analyses_2, analyses_1), fill=TRUE)
analyses$file <- sprintf("Manuscript analysis data/%s",analyses$file)




i=1
enumerated_analyses <- lapply(seq_len(nrow(analyses)),function(i){
  analysis <- analyses[i,]
  analysis_params <- default_params
  analysis_nodes <- as.list(analysis)[c("W","A","Y","strata","id")]
  analysis_nodes$W <- gsub("W_bmi", "W_mbmi", analysis_nodes$W[[1]])
  analysis_params$nodes <- analysis_nodes
  analysis_params$data$repository_path <- analysis$file
  analysis_params$script_params$count_Y <- analysis$count_Y
  analysis_params$script_params$maximize <- analysis$maximize
  return(analysis_params)
})

writeLines(toJSON(enumerated_analyses[[10]]),"single_analysis.json")
writeLines(toJSON(enumerated_analyses),"all_analyses.json")
