library(longbowtools)
library(jsonlite)
library(data.table)
inputs <- "inputs_template.json"
default_params <- fromJSON(inputs)
load("adjustment_sets_list.Rdata")
V <- c("agecat","studyid","country")

A <- names(adjustment_sets)
# A <- c("sex", "gagebrth", "birthwt", "birthlen", "enstunt", "vagbrth", 
#        "hdlvry", "mage", "mhtcm", "mwtkg", "mbmi", "single", "fage", 
#        "fhtcm", "nrooms", "nhh", "nchldlt5", "hhwealth_quart", "month", 
#        "brthmon", "parity", "meducyrs", "feducyrs", "hfoodsec","enwast", 
#        "anywast06", "pers_wast","trth2o", "cleanck", "impfloor",  "impsan", 
#        "safeh20", "perdiar6", "perdiar24", "predexfd6")


outcome_files <- fread("outcome_files.csv")
id <- c("id")

analyses <- expand.grid(A=A,Y=outcome_files$Y, stringsAsFactors = FALSE, KEEP.OUT.ATTRS = FALSE)
analyses$id <- list(id)
analyses$strata <- list(V)
analyses$W <- adjustment_sets[analyses$A]
names(analyses$W) <- NULL
analyses$file <- outcome_files$file[match(analyses$Y,outcome_files$Y)]
save(analyses, file="adjusted_binary_analyses.rdata")

i=1
for(i in 1:nrow(analyses)){
  analysis <- analyses[i,]
  analysis_params <- default_params
  analysis_nodes <- as.list(analysis[c("W","A","Y","strata","id")])
  analysis_nodes$W[[1]] <- gsub("W_bmi", "W_mbmi", analysis_nodes$W[[1]])
  analysis_params$nodes <- analysis_nodes
  analysis_params$data$repository_path <- analysis$file
  inputs_filename <- sprintf("inputs/adjusted_binary_analysis_%03d.json",i)
  writeLines(toJSON(analysis_params),inputs_filename)
}