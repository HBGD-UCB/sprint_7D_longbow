library(longbowtools)
library(progress)
library(longbowRiskFactors)
setwd("~/Desktop/sprint_7D_longbow/unadjusted_binary/")

configure_cluster("~/cluster_credentials.json")


rmd_filename <- system.file("templates/longbow_RiskFactors.Rmd", package="longbowRiskFactors")

# inputs <- "inputs_template.json"
inputs <- "single_analysis.json"

#run test/provisioning job
run_on_longbow(rmd_filename, inputs, provision = TRUE)

# send the batch to longbow (with provisioning disabled)
batch_inputs <- "all_analyses.json"
batch_id <- run_on_longbow(rmd_filename, batch_inputs, provision = FALSE)

# wait for the batch to finish and track progress
wait_for_batch(batch_id)

# download the longbow outputs
get_batch_results(batch_id, results_folder="results")
length(dir("results"))

# load and concatenate the rdata from the jobs
results <- load_batch_results("results.rdata")
obs_counts <- load_batch_results("obs_counts.rdata")

# save concatenated results
save(results, file="unadjusted_binary_results.rdata")
