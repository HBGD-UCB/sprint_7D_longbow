library(longbowtools)
library(progress)
library(longbowRiskFactors)
setwd("~/Dropbox/gates/sprint_7D_longbow/opttx_vim/")
setwd("~/Desktop/sprint_7D_longbow/opttx_vim/")

configure_cluster("~/cluster_credentials.json")


rmd_filename <- system.file("templates/longbow_OptTX.Rmd", package="longbowOptTX")

inputs <- "single_analysis.json"

#run test/provisioning job
run_on_longbow(rmd_filename, inputs, provision = TRUE)

# send the batch to longbow (with provisioning disabled)
batch_inputs <- "all_analyses.json"
batch_id <- run_on_longbow(rmd_filename, batch_inputs, provision = FALSE)

# wait for the batch to finish and track progress
wait_for_batch(batch_id)

# download the longbow outputs
get_batch_results(batch_id, results_folder="results_attempt_2")
length(dir("results"))

# load and concatenate the rdata from the jobs
results <- load_batch_results("results.rdata","results_attempt_2")
obs_counts <- load_batch_results("obs_counts.rdata","results_attempt_2")

# save concatenated results
save(results, file="opttx_vim_results_attempt_2.rdata")
save(results, file="opttx_vim_obs_counts_attempt_2.rdata")
