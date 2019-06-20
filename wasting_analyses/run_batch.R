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
bin_batch_id <- run_on_longbow(rmd_filename, bin_batch_inputs, provision = FALSE)
#46614


# wait for the batch to finish and track progress
wait_for_batch(bin_batch_id)

# download the longbow outputs
get_batch_results(bin_batch_id, results_folder="results_bin")
length(dir("results_bin"))

# load and concatenate the rdata from the jobs
results <- load_batch_results("results.rdata")
obs_counts <- load_batch_results("obs_counts.rdata")

# save concatenated results
save(results, file="subset_wast_results.rdata")
