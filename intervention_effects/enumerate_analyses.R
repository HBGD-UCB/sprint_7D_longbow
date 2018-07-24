library(longbowtools)
library(jsonlite)
inputs <- "intervention_inputs_template.json"
default_params <- fromJSON(inputs)
V_strata <- c("agecat","studyid","country")
V_additional <- c("sex", "gagebrth", "birthwt", "birthlen", "enstunt", "vagbrth", 
  "hdlvry", "mage", "mhtcm", "mwtkg", "mbmi", "single", "fage", 
  "fhtcm", "nrooms", "nhh", "nchldlt5", "hhwealth_quart", "month", 
  "brthmon", "parity", "meducyrs", "feducyrs", "hfoodsec")
V_sets <- c(list(V_strata), lapply(V_additional, c, V_strata))

for(i in seq_along(V_sets)){
  V <- V_sets[[i]]
  analysis_params <- default_params
  analysis_nodes <- list(strata=V, id="id", A="tr.x",Y="ever_stunted")
  analysis_params$nodes <- analysis_nodes
  # analysis_params$data$repository_path <- outcome_files$file[match(analysis_nodes$Y,outcome_files$Y)]
  inputs_filename <- sprintf("inputs/intervention_analysis_%03d.json",i)
  writeLines(toJSON(analysis_params),inputs_filename)
}