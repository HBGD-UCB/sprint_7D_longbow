library(data.table)
library(longbowtools)
library(jsonlite)
inputs <- "intervention_inputs_template.json"
default_params <- fromJSON(inputs)
V_strata <- c("agecat","studyid","country")
V_additional <-  c("sex", "gagebrth", "birthwt", "birthlen", "enstunt", "vagbrth", 
                   "hdlvry", "mage", "mhtcm", "mwtkg", "mbmi", "single", "fage", 
                   "fhtcm", "nrooms", "nhh", "nchldlt5", "hhwealth_quart", "month", 
                   "brthmon", "parity", "meducyrs", "feducyrs", "hfoodsec","enwast", 
                   "anywast06", "pers_wast","trth2o", "cleanck", "impfloor",  "impsan", 
                   "safeh20", "perdiar6", "perdiar24", "predexfd6")

V_sets <- c(list(V_strata), lapply(V_additional, c, V_strata))
outcome_files <- fread("outcome_files.csv")

analyses <- expand.grid(V=V_sets,Y=outcome_files$Y, stringsAsFactors = FALSE, KEEP.OUT.ATTRS = FALSE)

i=1
for(i in 1:nrow(analyses)){
  analysis <- analyses[i,]
  analysis_params <- default_params
  analysis_nodes <- default_params$nodes
  
  analysis_nodes$strata=analysis$V
  analysis_nodes$Y=analysis$Y
  
  analysis_params$nodes <- analysis_nodes
  analysis_params$data$repository_path <- outcome_files$file[match(analysis_nodes$Y,outcome_files$Y)]
  inputs_filename <- sprintf("inputs/intervention_analysis_%03d.json",i)
  writeLines(toJSON(analysis_params),inputs_filename)
}