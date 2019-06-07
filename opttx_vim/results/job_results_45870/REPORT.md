---
title: "Optimal Treatment Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowOptTX','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
params:
  roles:
    value:
      - exclude
      - strata
      - id
      - W
      - A
      - Y
  data: 
    value: 
      type: 'web'
      uri: 'https://raw.githubusercontent.com/HBGD-UCB/longbowRiskFactors/master/inst/sample_data/birthwt_data.rdata'
  nodes:
    value:
      strata: ['study_id', 'mrace']
      id: ['subjid']
      W: []
      A: ['parity_cat']
      Y: ['haz01']
  script_params:
    value:
      parallelize:
        input: checkbox
        value: FALSE
      count_A:
        input: checkbox
        value: TRUE
      count_Y:
        input: checkbox
        value: TRUE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
      maximize:
        input: checkbox
        value: TRUE
  output_directory:
    value: '~/tmp/'
editor_options: 
  chunk_output_type: console
---







## Methods
## Outcome Variable

**Outcome Variable:** ever_stunted

## Predictor Variables

**Intervention Variable:** predfeed3

**Adjustment Set:**

* arm
* sex
* month
* brthmon
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* vagbrth
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nrooms
* W_nchldlt5
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_vagbrth
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_W_nchldlt5
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                       studyid               country                        predfeed3    ever_stunted   n_cell       n
---------------------------  --------------------  -----------------------------  ----------  -------------  -------  ------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH                     1                       0       85     206
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH                     1                       1       91     206
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH                     0                       0       13     206
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH                     0                       1       17     206
0-24 months (no birth st.)   ki0047075b-MAL-ED     BRAZIL                         1                       0       93     202
0-24 months (no birth st.)   ki0047075b-MAL-ED     BRAZIL                         1                       1       17     202
0-24 months (no birth st.)   ki0047075b-MAL-ED     BRAZIL                         0                       0       81     202
0-24 months (no birth st.)   ki0047075b-MAL-ED     BRAZIL                         0                       1       11     202
0-24 months (no birth st.)   ki0047075b-MAL-ED     INDIA                          1                       0       61     200
0-24 months (no birth st.)   ki0047075b-MAL-ED     INDIA                          1                       1       94     200
0-24 months (no birth st.)   ki0047075b-MAL-ED     INDIA                          0                       0       33     200
0-24 months (no birth st.)   ki0047075b-MAL-ED     INDIA                          0                       1       12     200
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL                          1                       0       91     209
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL                          1                       1       33     209
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL                          0                       0       63     209
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL                          0                       1       22     209
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU                           1                       0       72     251
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU                           1                       1       98     251
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU                           0                       0       29     251
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU                           0                       1       52     251
0-24 months (no birth st.)   ki0047075b-MAL-ED     SOUTH AFRICA                   1                       0       37     246
0-24 months (no birth st.)   ki0047075b-MAL-ED     SOUTH AFRICA                   1                       1       51     246
0-24 months (no birth st.)   ki0047075b-MAL-ED     SOUTH AFRICA                   0                       0       77     246
0-24 months (no birth st.)   ki0047075b-MAL-ED     SOUTH AFRICA                   0                       1       81     246
0-24 months (no birth st.)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                       0       17     211
0-24 months (no birth st.)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                       1       66     211
0-24 months (no birth st.)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                       0       19     211
0-24 months (no birth st.)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                       1      109     211
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN                       1                       0       30     248
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN                       1                       1      202     248
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN                       0                       0        2     248
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN                       0                       1       14     248
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL                          1                       0      129     422
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL                          1                       1      225     422
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL                          0                       0       24     422
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL                          0                       1       44     422
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH                     1                       0    11959   17686
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH                     1                       1     4076   17686
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH                     0                       0     1164   17686
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH                     0                       1      487   17686
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH                     1                       0       62     113
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH                     1                       1       42     113
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH                     0                       0        3     113
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH                     0                       1        6     113
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH                     1                       0      140     206
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH                     1                       1       36     206
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH                     0                       0       22     206
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH                     0                       1        8     206
0-6 months (no birth st.)    ki0047075b-MAL-ED     BRAZIL                         1                       0       98     202
0-6 months (no birth st.)    ki0047075b-MAL-ED     BRAZIL                         1                       1       12     202
0-6 months (no birth st.)    ki0047075b-MAL-ED     BRAZIL                         0                       0       85     202
0-6 months (no birth st.)    ki0047075b-MAL-ED     BRAZIL                         0                       1        7     202
0-6 months (no birth st.)    ki0047075b-MAL-ED     INDIA                          1                       0      117     200
0-6 months (no birth st.)    ki0047075b-MAL-ED     INDIA                          1                       1       38     200
0-6 months (no birth st.)    ki0047075b-MAL-ED     INDIA                          0                       0       40     200
0-6 months (no birth st.)    ki0047075b-MAL-ED     INDIA                          0                       1        5     200
0-6 months (no birth st.)    ki0047075b-MAL-ED     NEPAL                          1                       0      117     209
0-6 months (no birth st.)    ki0047075b-MAL-ED     NEPAL                          1                       1        7     209
0-6 months (no birth st.)    ki0047075b-MAL-ED     NEPAL                          0                       0       78     209
0-6 months (no birth st.)    ki0047075b-MAL-ED     NEPAL                          0                       1        7     209
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU                           1                       0      115     251
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU                           1                       1       55     251
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU                           0                       0       45     251
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU                           0                       1       36     251
0-6 months (no birth st.)    ki0047075b-MAL-ED     SOUTH AFRICA                   1                       0       59     246
0-6 months (no birth st.)    ki0047075b-MAL-ED     SOUTH AFRICA                   1                       1       29     246
0-6 months (no birth st.)    ki0047075b-MAL-ED     SOUTH AFRICA                   0                       0      111     246
0-6 months (no birth st.)    ki0047075b-MAL-ED     SOUTH AFRICA                   0                       1       47     246
0-6 months (no birth st.)    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                       0       61     211
0-6 months (no birth st.)    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                       1       22     211
0-6 months (no birth st.)    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                       0       86     211
0-6 months (no birth st.)    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                       1       42     211
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN                       1                       0       92     248
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN                       1                       1      140     248
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN                       0                       0        6     248
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN                       0                       1       10     248
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL                          1                       0      284     422
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL                          1                       1       70     422
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL                          0                       0       59     422
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL                          0                       1        9     422
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH                     1                       0    13978   17686
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH                     1                       1     2057   17686
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH                     0                       0     1338   17686
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH                     0                       1      313   17686
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH                     1                       0       96     113
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH                     1                       1        8     113
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH                     0                       0        6     113
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH                     0                       1        3     113
6-24 months                  ki0047075b-MAL-ED     BANGLADESH                     1                       0       80     156
6-24 months                  ki0047075b-MAL-ED     BANGLADESH                     1                       1       55     156
6-24 months                  ki0047075b-MAL-ED     BANGLADESH                     0                       0       12     156
6-24 months                  ki0047075b-MAL-ED     BANGLADESH                     0                       1        9     156
6-24 months                  ki0047075b-MAL-ED     BRAZIL                         1                       0       88     168
6-24 months                  ki0047075b-MAL-ED     BRAZIL                         1                       1        5     168
6-24 months                  ki0047075b-MAL-ED     BRAZIL                         0                       0       71     168
6-24 months                  ki0047075b-MAL-ED     BRAZIL                         0                       1        4     168
6-24 months                  ki0047075b-MAL-ED     INDIA                          1                       0       59     154
6-24 months                  ki0047075b-MAL-ED     INDIA                          1                       1       56     154
6-24 months                  ki0047075b-MAL-ED     INDIA                          0                       0       32     154
6-24 months                  ki0047075b-MAL-ED     INDIA                          0                       1        7     154
6-24 months                  ki0047075b-MAL-ED     NEPAL                          1                       0       90     193
6-24 months                  ki0047075b-MAL-ED     NEPAL                          1                       1       26     193
6-24 months                  ki0047075b-MAL-ED     NEPAL                          0                       0       62     193
6-24 months                  ki0047075b-MAL-ED     NEPAL                          0                       1       15     193
6-24 months                  ki0047075b-MAL-ED     PERU                           1                       0       64     148
6-24 months                  ki0047075b-MAL-ED     PERU                           1                       1       43     148
6-24 months                  ki0047075b-MAL-ED     PERU                           0                       0       25     148
6-24 months                  ki0047075b-MAL-ED     PERU                           0                       1       16     148
6-24 months                  ki0047075b-MAL-ED     SOUTH AFRICA                   1                       0       31     156
6-24 months                  ki0047075b-MAL-ED     SOUTH AFRICA                   1                       1       22     156
6-24 months                  ki0047075b-MAL-ED     SOUTH AFRICA                   0                       0       69     156
6-24 months                  ki0047075b-MAL-ED     SOUTH AFRICA                   0                       1       34     156
6-24 months                  ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                       0       14     143
6-24 months                  ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                       1       44     143
6-24 months                  ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                       0       18     143
6-24 months                  ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                       1       67     143
6-24 months                  ki1000109-EE          PAKISTAN                       1                       0       28      96
6-24 months                  ki1000109-EE          PAKISTAN                       1                       1       62      96
6-24 months                  ki1000109-EE          PAKISTAN                       0                       0        2      96
6-24 months                  ki1000109-EE          PAKISTAN                       0                       1        4      96
6-24 months                  ki1113344-GMS-Nepal   NEPAL                          1                       0      125     338
6-24 months                  ki1113344-GMS-Nepal   NEPAL                          1                       1      155     338
6-24 months                  ki1113344-GMS-Nepal   NEPAL                          0                       0       23     338
6-24 months                  ki1113344-GMS-Nepal   NEPAL                          0                       1       35     338
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH                     1                       0     7389   10184
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH                     1                       1     2021   10184
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH                     0                       0      596   10184
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH                     0                       1      178   10184
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH                     1                       0       62     102
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH                     1                       1       34     102
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH                     0                       0        3     102
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH                     0                       1        3     102


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/1d3c9f76-fcfc-4f9b-81b1-96cc5d0dba13/c7755f8f-091b-470c-babd-d180d3a8cf56/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/1d3c9f76-fcfc-4f9b-81b1-96cc5d0dba13/c7755f8f-091b-470c-babd-d180d3a8cf56/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat                       studyid               country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  --------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH                     optimal              NA                0.6348310   0.5642349   0.7054272
0-24 months (no birth st.)   ki0047075b-MAL-ED     BRAZIL                         optimal              NA                0.1320171   0.0641836   0.1998507
0-24 months (no birth st.)   ki0047075b-MAL-ED     INDIA                          optimal              NA                0.2673235   0.1328960   0.4017510
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL                          optimal              NA                0.3143081   0.2196287   0.4089875
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU                           optimal              NA                0.5715998   0.4879565   0.6552432
0-24 months (no birth st.)   ki0047075b-MAL-ED     SOUTH AFRICA                   optimal              NA                0.5140402   0.4362636   0.5918168
0-24 months (no birth st.)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.8013984   0.7151098   0.8876870
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL                          optimal              NA                0.6844439   0.6244284   0.7444594
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH                     optimal              NA                0.2679062   0.2562212   0.2795912
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH                     optimal              NA                0.2043011   0.1444945   0.2641078
0-6 months (no birth st.)    ki0047075b-MAL-ED     BRAZIL                         optimal              NA                0.0762702   0.0210403   0.1315002
0-6 months (no birth st.)    ki0047075b-MAL-ED     INDIA                          optimal              NA                0.1066173   0.0142609   0.1989736
0-6 months (no birth st.)    ki0047075b-MAL-ED     NEPAL                          optimal              NA                0.0561342   0.0153319   0.0969364
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU                           optimal              NA                0.3122950   0.2427074   0.3818827
0-6 months (no birth st.)    ki0047075b-MAL-ED     SOUTH AFRICA                   optimal              NA                0.2995338   0.2293624   0.3697053
0-6 months (no birth st.)    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2620154   0.1785692   0.3454615
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN                       optimal              NA                0.6863299   0.6260054   0.7466545
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL                          optimal              NA                0.1356080   0.0523927   0.2188233
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH                     optimal              NA                0.1350421   0.1262367   0.1438474
6-24 months                  ki0047075b-MAL-ED     BANGLADESH                     optimal              NA                0.5196741   0.4357148   0.6036334
6-24 months                  ki0047075b-MAL-ED     INDIA                          optimal              NA                0.1857619   0.0551295   0.3163944
6-24 months                  ki0047075b-MAL-ED     NEPAL                          optimal              NA                0.1924465   0.1030878   0.2818052
6-24 months                  ki0047075b-MAL-ED     PERU                           optimal              NA                0.4598209   0.3197840   0.5998578
6-24 months                  ki0047075b-MAL-ED     SOUTH AFRICA                   optimal              NA                0.3785611   0.2800609   0.4770614
6-24 months                  ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.7543777   0.6422378   0.8665176
6-24 months                  ki1113344-GMS-Nepal   NEPAL                          optimal              NA                0.5531308   0.4947201   0.6115416
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH                     optimal              NA                0.2448850   0.2217139   0.2680561


### Parameter: E(Y)


agecat                       studyid               country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  --------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH                     observed             NA                0.5242718   0.4559076   0.5926361
0-24 months (no birth st.)   ki0047075b-MAL-ED     BRAZIL                         observed             NA                0.1386139   0.0908442   0.1863835
0-24 months (no birth st.)   ki0047075b-MAL-ED     INDIA                          observed             NA                0.5300000   0.4606561   0.5993439
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL                          observed             NA                0.2631579   0.2033151   0.3230007
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU                           observed             NA                0.5976096   0.5368226   0.6583966
0-24 months (no birth st.)   ki0047075b-MAL-ED     SOUTH AFRICA                   observed             NA                0.5365854   0.4741444   0.5990263
0-24 months (no birth st.)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   observed             NA                0.8293839   0.7785063   0.8802614
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL                          observed             NA                0.6374408   0.5915192   0.6833623
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH                     observed             NA                0.2580007   0.2499160   0.2660854
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH                     observed             NA                0.2135922   0.1574890   0.2696955
0-6 months (no birth st.)    ki0047075b-MAL-ED     BRAZIL                         observed             NA                0.0940594   0.0537041   0.1344147
0-6 months (no birth st.)    ki0047075b-MAL-ED     INDIA                          observed             NA                0.2150000   0.1579211   0.2720789
0-6 months (no birth st.)    ki0047075b-MAL-ED     NEPAL                          observed             NA                0.0669856   0.0330113   0.1009600
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU                           observed             NA                0.3625498   0.3029582   0.4221414
0-6 months (no birth st.)    ki0047075b-MAL-ED     SOUTH AFRICA                   observed             NA                0.3089431   0.2510854   0.3668008
0-6 months (no birth st.)    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   observed             NA                0.3033175   0.2411441   0.3654909
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN                       observed             NA                0.6048387   0.5438701   0.6658074
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL                          observed             NA                0.1872038   0.1499427   0.2244649
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH                     observed             NA                0.1340043   0.1282072   0.1398014
6-24 months                  ki0047075b-MAL-ED     BANGLADESH                     observed             NA                0.4102564   0.3328207   0.4876922
6-24 months                  ki0047075b-MAL-ED     INDIA                          observed             NA                0.4090909   0.3311846   0.4869972
6-24 months                  ki0047075b-MAL-ED     NEPAL                          observed             NA                0.2124352   0.1545785   0.2702920
6-24 months                  ki0047075b-MAL-ED     PERU                           observed             NA                0.3986486   0.3194990   0.4777982
6-24 months                  ki0047075b-MAL-ED     SOUTH AFRICA                   observed             NA                0.3589744   0.2834562   0.4344926
6-24 months                  ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   observed             NA                0.7762238   0.7076743   0.8447733
6-24 months                  ki1113344-GMS-Nepal   NEPAL                          observed             NA                0.5621302   0.5091609   0.6150995
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH                     observed             NA                0.2159269   0.2063541   0.2254998


### Parameter: RR


agecat                       studyid               country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  --------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH                     observed             optimal           0.8258447   0.7617283   0.8953580
0-24 months (no birth st.)   ki0047075b-MAL-ED     BRAZIL                         observed             optimal           1.0499689   0.7204890   1.5301202
0-24 months (no birth st.)   ki0047075b-MAL-ED     INDIA                          observed             optimal           1.9826165   1.2501570   3.1442195
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL                          observed             optimal           0.8372609   0.6699185   1.0464047
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU                           observed             optimal           1.0455034   0.9507982   1.1496417
0-24 months (no birth st.)   ki0047075b-MAL-ED     SOUTH AFRICA                   observed             optimal           1.0438587   0.9536346   1.1426190
0-24 months (no birth st.)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.0349208   0.9553399   1.1211309
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL                          observed             optimal           0.9313265   0.8749686   0.9913145
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH                     observed             optimal           0.9630262   0.9329026   0.9941224
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH                     observed             optimal           1.0454775   0.9257036   1.1807485
0-6 months (no birth st.)    ki0047075b-MAL-ED     BRAZIL                         observed             optimal           1.2332385   0.6946020   2.1895664
0-6 months (no birth st.)    ki0047075b-MAL-ED     INDIA                          observed             optimal           2.0165587   0.8979970   4.5284220
0-6 months (no birth st.)    ki0047075b-MAL-ED     NEPAL                          observed             optimal           1.1933136   0.7154019   1.9904857
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU                           observed             optimal           1.1609208   1.0206217   1.3205060
0-6 months (no birth st.)    ki0047075b-MAL-ED     SOUTH AFRICA                   observed             optimal           1.0314130   0.8930089   1.1912678
0-6 months (no birth st.)    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.1576326   0.8949343   1.4974432
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN                       observed             optimal           0.8812652   0.8339533   0.9312612
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL                          observed             optimal           1.3804775   0.7765394   2.4541163
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH                     observed             optimal           0.9923153   0.9461702   1.0407109
6-24 months                  ki0047075b-MAL-ED     BANGLADESH                     observed             optimal           0.7894494   0.7015746   0.8883308
6-24 months                  ki0047075b-MAL-ED     INDIA                          observed             optimal           2.2022322   1.1464584   4.2302684
6-24 months                  ki0047075b-MAL-ED     NEPAL                          observed             optimal           1.1038666   0.7638928   1.5951472
6-24 months                  ki0047075b-MAL-ED     PERU                           observed             optimal           0.8669651   0.6694099   1.1228224
6-24 months                  ki0047075b-MAL-ED     SOUTH AFRICA                   observed             optimal           0.9482599   0.8113008   1.1083396
6-24 months                  ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.0289591   0.9192385   1.1517759
6-24 months                  ki1113344-GMS-Nepal   NEPAL                          observed             optimal           1.0162698   0.9730061   1.0614573
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH                     observed             optimal           0.8817482   0.8106739   0.9590539


### Parameter: PAR


agecat                       studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH                     optimal              NA                -0.1105592   -0.1559041   -0.0652142
0-24 months (no birth st.)   ki0047075b-MAL-ED     BRAZIL                         optimal              NA                 0.0065968   -0.0431409    0.0563344
0-24 months (no birth st.)   ki0047075b-MAL-ED     INDIA                          optimal              NA                 0.2626765    0.1412012    0.3841518
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL                          optimal              NA                -0.0511502   -0.1209730    0.0186726
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU                           optimal              NA                 0.0260097   -0.0280479    0.0800673
0-24 months (no birth st.)   ki0047075b-MAL-ED     SOUTH AFRICA                   optimal              NA                 0.0225451   -0.0238504    0.0689407
0-24 months (no birth st.)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0279855   -0.0359096    0.0918806
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL                          optimal              NA                -0.0470032   -0.0893336   -0.0046727
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH                     optimal              NA                -0.0099055   -0.0184112   -0.0013998
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH                     optimal              NA                 0.0092911   -0.0156145    0.0341967
0-6 months (no birth st.)    ki0047075b-MAL-ED     BRAZIL                         optimal              NA                 0.0177892   -0.0264904    0.0620687
0-6 months (no birth st.)    ki0047075b-MAL-ED     INDIA                          optimal              NA                 0.1083827    0.0190899    0.1976756
0-6 months (no birth st.)    ki0047075b-MAL-ED     NEPAL                          optimal              NA                 0.0108515   -0.0182946    0.0399976
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU                           optimal              NA                 0.0502548    0.0103632    0.0901463
0-6 months (no birth st.)    ki0047075b-MAL-ED     SOUTH AFRICA                   optimal              NA                 0.0094093   -0.0338171    0.0526356
0-6 months (no birth st.)    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0413022   -0.0272070    0.1098114
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN                       optimal              NA                -0.0814912   -0.1160641   -0.0469184
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL                          optimal              NA                 0.0515958   -0.0268334    0.1300250
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH                     optimal              NA                -0.0010378   -0.0074696    0.0053941
6-24 months                  ki0047075b-MAL-ED     BANGLADESH                     optimal              NA                -0.1094177   -0.1628404   -0.0559950
6-24 months                  ki0047075b-MAL-ED     INDIA                          optimal              NA                 0.2233290    0.1001163    0.3465416
6-24 months                  ki0047075b-MAL-ED     NEPAL                          optimal              NA                 0.0199888   -0.0509089    0.0908864
6-24 months                  ki0047075b-MAL-ED     PERU                           optimal              NA                -0.0611722   -0.1790969    0.0567524
6-24 months                  ki0047075b-MAL-ED     SOUTH AFRICA                   optimal              NA                -0.0195868   -0.0787264    0.0395529
6-24 months                  ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0218461   -0.0630838    0.1067760
6-24 months                  ki1113344-GMS-Nepal   NEPAL                          optimal              NA                 0.0089993   -0.0150396    0.0330383
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH                     optimal              NA                -0.0289581   -0.0495654   -0.0083507


### Parameter: PAF


agecat                       studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH                     optimal              NA                -0.2108814   -0.3128041   -0.1168717
0-24 months (no birth st.)   ki0047075b-MAL-ED     BRAZIL                         optimal              NA                 0.0475909   -0.3879463    0.3464566
0-24 months (no birth st.)   ki0047075b-MAL-ED     INDIA                          optimal              NA                 0.4956160    0.2001005    0.6819560
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL                          optimal              NA                -0.1943708   -0.4927189    0.0443468
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU                           optimal              NA                 0.0435229   -0.0517479    0.1301638
0-24 months (no birth st.)   ki0047075b-MAL-ED     SOUTH AFRICA                   optimal              NA                 0.0420159   -0.0486197    0.1248176
0-24 months (no birth st.)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0337425   -0.0467478    0.1080435
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL                          optimal              NA                -0.0737373   -0.1428982   -0.0087616
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH                     optimal              NA                -0.0383934   -0.0719232   -0.0059124
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH                     optimal              NA                 0.0434993   -0.0802593    0.1530796
0-6 months (no birth st.)    ki0047075b-MAL-ED     BRAZIL                         optimal              NA                 0.1891269   -0.4396733    0.5432886
0-6 months (no birth st.)    ki0047075b-MAL-ED     INDIA                          optimal              NA                 0.5041057   -0.1135895    0.7791725
0-6 months (no birth st.)    ki0047075b-MAL-ED     NEPAL                          optimal              NA                 0.1619973   -0.3978156    0.4976100
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU                           optimal              NA                 0.1386148    0.0202051    0.2427145
0-6 months (no birth st.)    ki0047075b-MAL-ED     SOUTH AFRICA                   optimal              NA                 0.0304563   -0.1198097    0.1605582
0-6 months (no birth st.)    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.1361681   -0.1174005    0.3321950
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN                       optimal              NA                -0.1347322   -0.1991079   -0.0738126
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL                          optimal              NA                 0.2756130   -0.2877646    0.5925213
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH                     optimal              NA                -0.0077442   -0.0568923    0.0391183
6-24 months                  ki0047075b-MAL-ED     BANGLADESH                     optimal              NA                -0.2667057   -0.4253652   -0.1257067
6-24 months                  ki0047075b-MAL-ED     INDIA                          optimal              NA                 0.5459153    0.1277485    0.7636084
6-24 months                  ki0047075b-MAL-ED     NEPAL                          optimal              NA                 0.0940934   -0.3090842    0.3730986
6-24 months                  ki0047075b-MAL-ED     PERU                           optimal              NA                -0.1534490   -0.4938530    0.1093872
6-24 months                  ki0047075b-MAL-ED     SOUTH AFRICA                   optimal              NA                -0.0545632   -0.2325884    0.0977495
6-24 months                  ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0281441   -0.0878569    0.1317755
6-24 months                  ki1113344-GMS-Nepal   NEPAL                          optimal              NA                 0.0160094   -0.0277428    0.0578990
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH                     optimal              NA                -0.1341106   -0.2335416   -0.0426942
