library(longbowtools)
library(progress)
library(longbowRiskFactors)
#setwd("~/Desktop/sprint_7D_longbow/wasting_analyses/")
#setwd("~/Dropbox/gates/sprint_7D_longbow/wasting_analyses/")
setwd("C:/Users/andre/Documents/HBGDki/sprint_7D_longbow/wasting_analyses/")
configure_cluster("C:/Users/andre/Documents/HBGDki/sprint_7D_longbow/wasting_analyses/cluster_credentials.json")


rmd_filename <- system.file("templates/longbow_RiskFactors.Rmd", package="longbowRiskFactors")
# inputs <- "inputs_template.json"
inputs <- "single_bin_analysis.json"

#run test/provisioning job
run_on_longbow(rmd_filename, inputs, provision = TRUE)

# send the batch to longbow (with provisioning disabled)
bin_batch_inputs <- "all_bin_analyses.json"
bin_batch_id <-  run_on_longbow(rmd_filename, bin_batch_inputs, provision = FALSE)
#47068
bin_batch_id <-47425

# wait for the batch to finish and track progress
wait_for_batch(bin_batch_id)

# download the longbow outputs
get_batch_results(bin_batch_id, results_folder="results_bin_sub")
length(dir("results_bin_sub"))

# load and concatenate the rdata from the jobs
results <- load_batch_results("results.rdata", results_folder = "results_bin_sub")
obs_counts <- load_batch_results("obs_counts.rdata", results_folder = "results_bin_sub")

# save concatenated results
save(results, file="subset_stunt_results.rdata")
save(obs_counts, file="subset_stunt_obs_counts.rdata")


# get_batch_results2 <- function (batch_id, results_folder = "results"){
#   if (dir.exists(results_folder)) {
#     unlink(results_folder, recursive = TRUE)
#   }
#   dir.create(results_folder)
#   cat(sprintf("Downloading results...\n"))
#   job_statuses <- get_job_status(batch_id)
#   job_ids <- names(job_statuses)
#   finished_statuses <- c("success", "error")
#   viewable_job_ids <- job_ids[which(job_statuses %in% finished_statuses)]
#   pb <- progress_bar$new(format = "[:bar] :percent", total = length(viewable_job_ids), 
#                          clear = TRUE)
#   pb$tick(0)
#   for (job_id in viewable_job_ids) {
#     try(get_job_output(job_id, results_folder))
#     pb$tick()
#   }
# }
# 
# get_batch_results2(bin_batch_id, results_folder="results_bin")
# length(dir("results_bin"))