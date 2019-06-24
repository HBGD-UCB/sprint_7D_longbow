
#Note: if package error:
#the magic trick is to ssh in, run `export R_LIBS_USER=$HOME/rlibs` then start R and install



library(longbowtools)
library(progress)
library(longbowRiskFactors)
#setwd("~/Desktop/sprint_7D_longbow/wasting_analyses/")
#setwd("~/Dropbox/gates/sprint_7D_longbow/wasting_analyses/")
setwd("C:/Users/andre/Documents/HBGDki/sprint_7D_longbow/wasting_analyses/")
configure_cluster("C:/Users/andre/Documents/HBGDki/sprint_7D_longbow/wasting_analyses/cluster_credentials.json")


rmd_filename <- system.file("templates/longbow_RiskFactors.Rmd", package="longbowRiskFactors")
# inputs <- "inputs_template.json"
inputs <- "single_cont_analysis.json"

#run test/provisioning job
run_on_longbow(rmd_filename, inputs, provision = TRUE)

# send the batch to longbow (with provisioning disabled)
batch_inputs <- "all_cont_analyses.json"
batch_id_cont <- run_on_longbow(rmd_filename, batch_inputs, provision = FALSE)
#46570
# (new) 46861
batch_id_cont <- 47474

# wait for the batch to finish and track progress
wait_for_batch(batch_id_cont)

# download the longbow outputs
get_batch_results(batch_id_cont, results_folder="results_diarhaz")
length(dir("results_diarhaz"))

# load and concatenate the rdata from the jobs
results <- load_batch_results("results.rdata", results_folder = "results_diarhaz")
obs_counts <- load_batch_results("obs_counts.rdata", results_folder = "results_diarhaz")

# save concatenated results
save(results, file="subset_laz_diar.rdata")
save(obs_counts, file="subset_laz_diar_obs_counts.rdata")
