library(longbowtools)
library(progress)
library(longbowRiskFactors)
setwd('~/Desktop/sprint_7D_longbow/adjusted_velocity/')
# setwd("~/Dropbox/gates/sprint_7D_longbow/adjusted_velocity/")

configure_cluster("~/cluster_credentials.json")


rmd_filename <- system.file("templates/longbow_RiskFactors.Rmd", package="longbowRiskFactors")

# inputs <- "velocity_inputs_template.json"
inputs <- "inputs/adjusted_velocity_analysis_001.json"

#run test/provisioning job
run_on_longbow(rmd_filename, inputs, provision = FALSE)

# send the batch to longbow (with provisioning disabled)
job_ids <- submit_batch(rmd_filename, inputs_folder="inputs", results_folder="results", provision = FALSE)
save(job_ids, file="adjusted_velocity_job_ids.rdata")

# wait for the job to finish and track progress
wait_for_batch(job_ids)

job_statuses <- get_job_statuses(job_ids)
job_ids[job_statuses=="running"]

# download the longbow outputs
get_batch_results(job_ids, results_folder="results")
length(dir("results"))

# load and concatenate the rdata from the jobs
results <- load_batch_results("results.rdata")
obs_counts <- load_batch_results("obs_counts.rdata")

# save concatenated results
save(results, file="adjusted_velocity_results.rdata")
