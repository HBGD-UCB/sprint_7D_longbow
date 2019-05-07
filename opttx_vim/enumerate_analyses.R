library(data.table)
library(longbowtools)
library(jsonlite)
setwd("~/Desktop/sprint_7D_longbow/opttx_vim/")

inputs <- "inputs_template.json"
default_params <- fromJSON(inputs)

# # Binary
# load("../Manuscript analysis/adjusted_binary_analyses.rdata")
# analyses_1 <- analyses
load('../Manuscript analysis/unadjusted_binary_analyses.rdata')
# analyses_2 <- analyses
# analyses <- rbindlist(list(analyses_1, analyses_2), fill=TRUE)
count_Y <- TRUE

# # Continuous
# load("../Manuscript analysis/adjusted_continuous.rdata")
# analyses_1 <- analyses
# load('../Manuscript analysis/unadjusted_continuous.rdata')
# analyses_2 <- analyses
# analyses <- rbindlist(list(analyses_1, analyses_2), fill=TRUE)
# # set continuous (FALSE) vs binary (TRUE)
# count_Y <- FALSE

# analyses$file <- sprintf("Stunting rallies/%s",analyses$file)
analyses$file <- sprintf("Manuscript analysis data/%s",analyses$file)


# # reduce analyses to just ever_stunted for testing
# analyses <- analyses[analyses$Y=="ever_stunted", ]



i=1
enumerated_analyses <- lapply(seq_len(nrow(analyses)),function(i){
  analysis <- analyses[i,]
  analysis_params <- default_params
  analysis_nodes <- as.list(analysis)[c("W","A","Y","strata","id")]
  analysis_nodes$W <- gsub("W_bmi", "W_mbmi", analysis_nodes$W[[1]])
  analysis_params$nodes <- analysis_nodes
  analysis_params$data$repository_path <- analysis$file
  analysis_params$script_params$count_Y <- count_Y
  return(analysis_params)
})

writeLines(toJSON(enumerated_analyses[[1]]),"single_analysis.json")
writeLines(toJSON(enumerated_analyses),"all_analyses.json")
