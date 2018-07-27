library(longbowtools)
library(progress)
library(longbowRiskFactors)
setwd("~/Dropbox/gates/sprint_7D_longbow/intervention_effects/")

configure_cluster("~/cluster_credentials.json")


rmd_filename <- system.file("templates/longbow_RiskFactors.Rmd", package="longbowRiskFactors")

inputs <- "intervention_inputs_template.json"

#run test/provisioning job
run_on_longbow(rmd_filename, inputs, provision = TRUE)

# send the batch to longbow (with provisioning disabled)
job_ids <- submit_batch(rmd_filename, inputs_folder="inputs", results_folder="results", provision = FALSE)

# wait for the job to finish and track progress
wait_for_batch(job_ids)

# download the longbow outputs
get_batch_results(job_ids, results_folder="results")

# load and concatenate the rdata from the jobs
results <- load_batch_results("results.rdata")
obs_counts <- load_batch_results("obs_counts.rdata")
# save concatenated results
save(results, file="intervention_results.rdata")
