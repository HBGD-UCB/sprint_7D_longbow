# sprint_7D_longbow
longbow workflow for KI sprint 7D

Setting up Longbow to run analyses:
1. Clone sprint 7D longbow and longbow risk factors repositories
2. in R, run the following: 
library(devtools)
install(longbowRiskFactors)


3. Ensure you have a GHAP node running. 
Obtain the IP address by logging into the GHAP portal.
Click on Create Virtual Environment 
Select M&A Linux (for Mac)
Wait until status says "running"

4. Copy IP address to SSH into this node:
ssh GHAP_username@IP_address

5. Obtain a Longbow API token by logging into longbowapp.com (select API token)

6. Create a cluster_credentials.json file according to these instructions:
https://github.com/tlverse/longbowtools#running-via-longbow-api
NOTE: If you've stopped/started a new node, you'll need to update the IP address of the node in this JSON file every time you use it. 

7. If the data has been updated on GHAP, pull the changes from Github:
cd ~/datasets/UCB-SuperLearner/
git pull

8. Run run_batch.R script 

9. Add and commit output to Github
