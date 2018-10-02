---
title: "Risk Factor Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowRiskFactors','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
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
      W: ['apgar1', 'apgar5', 'gagebrth', 'mage', 'meducyrs', 'sexn']
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
  output_directory:
    value: ''
editor_options: 
  chunk_output_type: console
---







## Methods
## Outcome Variable

**Outcome Variable:** ever_wasted

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

agecat                        studyid               country                        predfeed3    ever_wasted   n_cell       n
----------------------------  --------------------  -----------------------------  ----------  ------------  -------  ------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH                     0                      0       31     248
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH                     0                      1        4     248
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH                     1                      0      162     248
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH                     1                      1       51     248
0-24 months (no birth wast)   ki0047075b-MAL-ED     BRAZIL                         0                      0       99     224
0-24 months (no birth wast)   ki0047075b-MAL-ED     BRAZIL                         0                      1        5     224
0-24 months (no birth wast)   ki0047075b-MAL-ED     BRAZIL                         1                      0      113     224
0-24 months (no birth wast)   ki0047075b-MAL-ED     BRAZIL                         1                      1        7     224
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA                          0                      0       29     235
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA                          0                      1       25     235
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA                          1                      0      118     235
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA                          1                      1       63     235
0-24 months (no birth wast)   ki0047075b-MAL-ED     NEPAL                          0                      0       84     234
0-24 months (no birth wast)   ki0047075b-MAL-ED     NEPAL                          0                      1       17     234
0-24 months (no birth wast)   ki0047075b-MAL-ED     NEPAL                          1                      0      105     234
0-24 months (no birth wast)   ki0047075b-MAL-ED     NEPAL                          1                      1       28     234
0-24 months (no birth wast)   ki0047075b-MAL-ED     PERU                           0                      0       84     286
0-24 months (no birth wast)   ki0047075b-MAL-ED     PERU                           0                      1        8     286
0-24 months (no birth wast)   ki0047075b-MAL-ED     PERU                           1                      0      183     286
0-24 months (no birth wast)   ki0047075b-MAL-ED     PERU                           1                      1       11     286
0-24 months (no birth wast)   ki0047075b-MAL-ED     SOUTH AFRICA                   0                      0      152     275
0-24 months (no birth wast)   ki0047075b-MAL-ED     SOUTH AFRICA                   0                      1       28     275
0-24 months (no birth wast)   ki0047075b-MAL-ED     SOUTH AFRICA                   1                      0       79     275
0-24 months (no birth wast)   ki0047075b-MAL-ED     SOUTH AFRICA                   1                      1       16     275
0-24 months (no birth wast)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                      0      136     249
0-24 months (no birth wast)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                      1       21     249
0-24 months (no birth wast)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                      0       83     249
0-24 months (no birth wast)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                      1        9     249
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN                       0                      0       24     752
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN                       0                      1       28     752
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN                       1                      0      398     752
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN                       1                      1      302     752
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL                          0                      0       90     932
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL                          0                      1       74     932
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL                          1                      0      318     932
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL                          1                      1      450     932
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH                     0                      0     4326   50880
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH                     0                      1     1036   50880
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH                     1                      0    37776   50880
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH                     1                      1     7742   50880
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH                     0                      0       26     328
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH                     0                      1        6     328
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH                     1                      0      220     328
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH                     1                      1       76     328
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH                     0                      0       34     247
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH                     0                      1        1     247
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH                     1                      0      196     247
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH                     1                      1       16     247
0-6 months (no birth wast)    ki0047075b-MAL-ED     BRAZIL                         0                      0      101     224
0-6 months (no birth wast)    ki0047075b-MAL-ED     BRAZIL                         0                      1        3     224
0-6 months (no birth wast)    ki0047075b-MAL-ED     BRAZIL                         1                      0      116     224
0-6 months (no birth wast)    ki0047075b-MAL-ED     BRAZIL                         1                      1        4     224
0-6 months (no birth wast)    ki0047075b-MAL-ED     INDIA                          0                      0       37     234
0-6 months (no birth wast)    ki0047075b-MAL-ED     INDIA                          0                      1       16     234
0-6 months (no birth wast)    ki0047075b-MAL-ED     INDIA                          1                      0      160     234
0-6 months (no birth wast)    ki0047075b-MAL-ED     INDIA                          1                      1       21     234
0-6 months (no birth wast)    ki0047075b-MAL-ED     NEPAL                          0                      0       94     232
0-6 months (no birth wast)    ki0047075b-MAL-ED     NEPAL                          0                      1        5     232
0-6 months (no birth wast)    ki0047075b-MAL-ED     NEPAL                          1                      0      123     232
0-6 months (no birth wast)    ki0047075b-MAL-ED     NEPAL                          1                      1       10     232
0-6 months (no birth wast)    ki0047075b-MAL-ED     PERU                           0                      0       91     286
0-6 months (no birth wast)    ki0047075b-MAL-ED     PERU                           0                      1        1     286
0-6 months (no birth wast)    ki0047075b-MAL-ED     PERU                           1                      0      190     286
0-6 months (no birth wast)    ki0047075b-MAL-ED     PERU                           1                      1        4     286
0-6 months (no birth wast)    ki0047075b-MAL-ED     SOUTH AFRICA                   0                      0      173     274
0-6 months (no birth wast)    ki0047075b-MAL-ED     SOUTH AFRICA                   0                      1        7     274
0-6 months (no birth wast)    ki0047075b-MAL-ED     SOUTH AFRICA                   1                      0       89     274
0-6 months (no birth wast)    ki0047075b-MAL-ED     SOUTH AFRICA                   1                      1        5     274
0-6 months (no birth wast)    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                      0      153     249
0-6 months (no birth wast)    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                      1        4     249
0-6 months (no birth wast)    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                      0       88     249
0-6 months (no birth wast)    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                      1        4     249
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN                       0                      0       30     744
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN                       0                      1       20     744
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN                       1                      0      570     744
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN                       1                      1      124     744
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL                          0                      0      122     896
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL                          0                      1       32     896
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL                          1                      0      630     896
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL                          1                      1      112     896
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH                     0                      0     4756   50478
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH                     0                      1      522   50478
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH                     1                      0    42022   50478
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH                     1                      1     3178   50478
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH                     0                      0       28     324
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH                     0                      1        2     324
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH                     1                      0      288     324
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH                     1                      1        6     324
6-24 months                   ki0047075b-MAL-ED     BANGLADESH                     0                      0       31     236
6-24 months                   ki0047075b-MAL-ED     BANGLADESH                     0                      1        3     236
6-24 months                   ki0047075b-MAL-ED     BANGLADESH                     1                      0      163     236
6-24 months                   ki0047075b-MAL-ED     BANGLADESH                     1                      1       39     236
6-24 months                   ki0047075b-MAL-ED     BRAZIL                         0                      0       89     207
6-24 months                   ki0047075b-MAL-ED     BRAZIL                         0                      1        2     207
6-24 months                   ki0047075b-MAL-ED     BRAZIL                         1                      0      112     207
6-24 months                   ki0047075b-MAL-ED     BRAZIL                         1                      1        4     207
6-24 months                   ki0047075b-MAL-ED     INDIA                          0                      0       40     233
6-24 months                   ki0047075b-MAL-ED     INDIA                          0                      1       15     233
6-24 months                   ki0047075b-MAL-ED     INDIA                          1                      0      129     233
6-24 months                   ki0047075b-MAL-ED     INDIA                          1                      1       49     233
6-24 months                   ki0047075b-MAL-ED     NEPAL                          0                      0       87     232
6-24 months                   ki0047075b-MAL-ED     NEPAL                          0                      1       13     232
6-24 months                   ki0047075b-MAL-ED     NEPAL                          1                      0      109     232
6-24 months                   ki0047075b-MAL-ED     NEPAL                          1                      1       23     232
6-24 months                   ki0047075b-MAL-ED     PERU                           0                      0       79     268
6-24 months                   ki0047075b-MAL-ED     PERU                           0                      1        7     268
6-24 months                   ki0047075b-MAL-ED     PERU                           1                      0      173     268
6-24 months                   ki0047075b-MAL-ED     PERU                           1                      1        9     268
6-24 months                   ki0047075b-MAL-ED     SOUTH AFRICA                   0                      0      139     253
6-24 months                   ki0047075b-MAL-ED     SOUTH AFRICA                   0                      1       25     253
6-24 months                   ki0047075b-MAL-ED     SOUTH AFRICA                   1                      0       78     253
6-24 months                   ki0047075b-MAL-ED     SOUTH AFRICA                   1                      1       11     253
6-24 months                   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                      0      133     239
6-24 months                   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                      1       19     239
6-24 months                   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                      0       80     239
6-24 months                   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                      1        7     239
6-24 months                   ki1000109-EE          PAKISTAN                       0                      0       32     748
6-24 months                   ki1000109-EE          PAKISTAN                       0                      1       20     748
6-24 months                   ki1000109-EE          PAKISTAN                       1                      0      468     748
6-24 months                   ki1000109-EE          PAKISTAN                       1                      1      228     748
6-24 months                   ki1113344-GMS-Nepal   NEPAL                          0                      0       96     936
6-24 months                   ki1113344-GMS-Nepal   NEPAL                          0                      1       66     936
6-24 months                   ki1113344-GMS-Nepal   NEPAL                          1                      0      376     936
6-24 months                   ki1113344-GMS-Nepal   NEPAL                          1                      1      398     936
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH                     0                      0     2502   33444
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH                     0                      1      564   33444
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH                     1                      0    25428   33444
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH                     1                      1     4950   33444
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH                     0                      0       28     330
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH                     0                      1        4     330
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH                     1                      0      228     330
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH                     1                      1       70     330


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/2a08a439-a5c8-4157-aa7f-7446d387b988/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/2a08a439-a5c8-4157-aa7f-7446d387b988/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/2a08a439-a5c8-4157-aa7f-7446d387b988/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/2a08a439-a5c8-4157-aa7f-7446d387b988/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid               country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BRAZIL                         0                    NA                0.0480769   0.0068698   0.0892840
0-24 months (no birth wast)   ki0047075b-MAL-ED     BRAZIL                         1                    NA                0.0583333   0.0163056   0.1003611
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA                          0                    NA                0.4629630   0.3296868   0.5962391
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA                          1                    NA                0.3480663   0.2785210   0.4176116
0-24 months (no birth wast)   ki0047075b-MAL-ED     NEPAL                          0                    NA                0.1708462   0.0987429   0.2429495
0-24 months (no birth wast)   ki0047075b-MAL-ED     NEPAL                          1                    NA                0.2080282   0.1399806   0.2760757
0-24 months (no birth wast)   ki0047075b-MAL-ED     PERU                           0                    NA                0.0869565   0.0292783   0.1446347
0-24 months (no birth wast)   ki0047075b-MAL-ED     PERU                           1                    NA                0.0567010   0.0241003   0.0893018
0-24 months (no birth wast)   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                0.1555556   0.1025122   0.2085989
0-24 months (no birth wast)   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                0.1684211   0.0930287   0.2438134
0-24 months (no birth wast)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1337580   0.0804059   0.1871101
0-24 months (no birth wast)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0978261   0.0369985   0.1586537
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN                       0                    NA                0.5723222   0.4262503   0.7183942
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN                       1                    NA                0.4326100   0.3808806   0.4843394
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL                          0                    NA                0.4513735   0.3437715   0.5589756
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL                          1                    NA                0.5859464   0.5366400   0.6352528
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                0.1934500   0.1804864   0.2064136
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                0.1694026   0.1638134   0.1749918
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                0.1875000   0.0366256   0.3383744
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                0.2567568   0.1825062   0.3310073
0-6 months (no birth wast)    ki0047075b-MAL-ED     INDIA                          0                    NA                0.2994368   0.1767094   0.4221642
0-6 months (no birth wast)    ki0047075b-MAL-ED     INDIA                          1                    NA                0.1162359   0.0695208   0.1629511
0-6 months (no birth wast)    ki0047075b-MAL-ED     NEPAL                          0                    NA                0.0505051   0.0072753   0.0937348
0-6 months (no birth wast)    ki0047075b-MAL-ED     NEPAL                          1                    NA                0.0751880   0.0302761   0.1200998
0-6 months (no birth wast)    ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                0.0388889   0.0105942   0.0671836
0-6 months (no birth wast)    ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                0.0531915   0.0077419   0.0986411
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN                       0                    NA                0.5116875   0.3901114   0.6332635
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN                       1                    NA                0.1800497   0.1398871   0.2202122
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL                          0                    NA                0.2140873   0.1249377   0.3032368
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL                          1                    NA                0.1499942   0.1135598   0.1864285
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                0.1137581   0.1036547   0.1238615
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                0.0706435   0.0667736   0.0745134
6-24 months                   ki0047075b-MAL-ED     INDIA                          0                    NA                0.2690190   0.1530621   0.3849759
6-24 months                   ki0047075b-MAL-ED     INDIA                          1                    NA                0.2759338   0.2102019   0.3416658
6-24 months                   ki0047075b-MAL-ED     NEPAL                          0                    NA                0.1313409   0.0656583   0.1970234
6-24 months                   ki0047075b-MAL-ED     NEPAL                          1                    NA                0.1741903   0.1100615   0.2383191
6-24 months                   ki0047075b-MAL-ED     PERU                           0                    NA                0.0813953   0.0234959   0.1392948
6-24 months                   ki0047075b-MAL-ED     PERU                           1                    NA                0.0494505   0.0178935   0.0810076
6-24 months                   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                0.1340807   0.0809415   0.1872200
6-24 months                   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                0.0747297   0.0166272   0.1328321
6-24 months                   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1250000   0.0723139   0.1776861
6-24 months                   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0804598   0.0231836   0.1377359
6-24 months                   ki1000109-EE          PAKISTAN                       0                    NA                0.4199153   0.2654228   0.5744079
6-24 months                   ki1000109-EE          PAKISTAN                       1                    NA                0.3274975   0.2782432   0.3767517
6-24 months                   ki1113344-GMS-Nepal   NEPAL                          0                    NA                0.4092818   0.3036073   0.5149564
6-24 months                   ki1113344-GMS-Nepal   NEPAL                          1                    NA                0.5138315   0.4640530   0.5636100
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                0.1664208   0.1513301   0.1815116
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                0.1637275   0.1573317   0.1701233


### Parameter: E(Y)


agecat                        studyid               country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BRAZIL                         NA                   NA                0.0535714   0.0240181   0.0831247
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA                          NA                   NA                0.3744681   0.3124566   0.4364796
0-24 months (no birth wast)   ki0047075b-MAL-ED     NEPAL                          NA                   NA                0.1923077   0.1417029   0.2429125
0-24 months (no birth wast)   ki0047075b-MAL-ED     PERU                           NA                   NA                0.0664336   0.0375206   0.0953465
0-24 months (no birth wast)   ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                0.1600000   0.1165917   0.2034083
0-24 months (no birth wast)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1204819   0.0799679   0.1609960
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN                       NA                   NA                0.4388298   0.3886039   0.4890557
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL                          NA                   NA                0.5622318   0.5171396   0.6073240
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                0.1725236   0.1670497   0.1779975
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH                     NA                   NA                0.2500000   0.1813067   0.3186933
0-6 months (no birth wast)    ki0047075b-MAL-ED     INDIA                          NA                   NA                0.1581197   0.1112720   0.2049674
0-6 months (no birth wast)    ki0047075b-MAL-ED     NEPAL                          NA                   NA                0.0646552   0.0329427   0.0963676
0-6 months (no birth wast)    ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                0.0437956   0.0195207   0.0680705
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN                       NA                   NA                0.1935484   0.1533466   0.2337501
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL                          NA                   NA                0.1607143   0.1266675   0.1947611
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                0.0732993   0.0695038   0.0770947
6-24 months                   ki0047075b-MAL-ED     INDIA                          NA                   NA                0.2746781   0.2172425   0.3321138
6-24 months                   ki0047075b-MAL-ED     NEPAL                          NA                   NA                0.1551724   0.1084814   0.2018634
6-24 months                   ki0047075b-MAL-ED     PERU                           NA                   NA                0.0597015   0.0312819   0.0881211
6-24 months                   ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                0.1422925   0.0991596   0.1854254
6-24 months                   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1087866   0.0692283   0.1483450
6-24 months                   ki1000109-EE          PAKISTAN                       NA                   NA                0.3315508   0.2837756   0.3793260
6-24 months                   ki1113344-GMS-Nepal   NEPAL                          NA                   NA                0.4957265   0.4503800   0.5410730
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                0.1648726   0.1585930   0.1711523


### Parameter: RR


agecat                        studyid               country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BRAZIL                         0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED     BRAZIL                         1                    0                 1.2133333   0.3960065   3.7175597
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA                          1                    0                 0.7518232   0.5295779   1.0673370
0-24 months (no birth wast)   ki0047075b-MAL-ED     NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED     NEPAL                          1                    0                 1.2176338   0.7188181   2.0625969
0-24 months (no birth wast)   ki0047075b-MAL-ED     PERU                           0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED     PERU                           1                    0                 0.6520619   0.2710581   1.5686108
0-24 months (no birth wast)   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    0                 1.0827068   0.6167687   1.9006377
0-24 months (no birth wast)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    0                 0.7313665   0.3493881   1.5309536
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN                       1                    0                 0.7558854   0.5707373   1.0010960
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL                          1                    0                 1.2981408   1.0082091   1.6714485
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH                     1                    0                 0.8756919   0.8153172   0.9405373
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH                     1                    0                 1.3693694   0.5812729   3.2259759
0-6 months (no birth wast)    ki0047075b-MAL-ED     INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki0047075b-MAL-ED     INDIA                          1                    0                 0.3881819   0.2186465   0.6891724
0-6 months (no birth wast)    ki0047075b-MAL-ED     NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki0047075b-MAL-ED     NEPAL                          1                    0                 1.4887218   0.5242177   4.2278096
0-6 months (no birth wast)    ki0047075b-MAL-ED     SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki0047075b-MAL-ED     SOUTH AFRICA                   1                    0                 1.3677812   0.4452734   4.2015208
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN                       1                    0                 0.3518743   0.2544175   0.4866627
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL                          1                    0                 0.7006216   0.4334697   1.1324221
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH                     1                    0                 0.6209976   0.5618696   0.6863478
6-24 months                   ki0047075b-MAL-ED     INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED     INDIA                          1                    0                 1.0257040   0.6271189   1.6776224
6-24 months                   ki0047075b-MAL-ED     NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED     NEPAL                          1                    0                 1.3262463   0.7132762   2.4659864
6-24 months                   ki0047075b-MAL-ED     PERU                           0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED     PERU                           1                    0                 0.6075353   0.2336382   1.5797894
6-24 months                   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    0                 0.5573482   0.2331734   1.3322148
6-24 months                   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    0                 0.6436782   0.2814389   1.4721547
6-24 months                   ki1000109-EE          PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1000109-EE          PAKISTAN                       1                    0                 0.7799132   0.5241491   1.1604800
6-24 months                   ki1113344-GMS-Nepal   NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1113344-GMS-Nepal   NEPAL                          1                    0                 1.2554466   0.9536946   1.6526738
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH                     1                    0                 0.9838161   0.8943006   1.0822917


### Parameter: PAR


agecat                        studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BRAZIL                         0                    NA                 0.0054945   -0.0260441    0.0370331
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA                          0                    NA                -0.0884949   -0.2044464    0.0274566
0-24 months (no birth wast)   ki0047075b-MAL-ED     NEPAL                          0                    NA                 0.0214615   -0.0343875    0.0773104
0-24 months (no birth wast)   ki0047075b-MAL-ED     PERU                           0                    NA                -0.0205230   -0.0654944    0.0244485
0-24 months (no birth wast)   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                 0.0044444   -0.0274086    0.0362975
0-24 months (no birth wast)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0132760   -0.0432483    0.0166963
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN                       0                    NA                -0.1334924   -0.2760806    0.0090957
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL                          0                    NA                 0.1108582    0.0132587    0.2084578
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                -0.0209264   -0.0330324   -0.0088205
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                 0.0625000   -0.0893171    0.2143171
0-6 months (no birth wast)    ki0047075b-MAL-ED     INDIA                          0                    NA                -0.1413171   -0.2431361   -0.0394981
0-6 months (no birth wast)    ki0047075b-MAL-ED     NEPAL                          0                    NA                 0.0141501   -0.0216208    0.0499210
0-6 months (no birth wast)    ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                 0.0049067   -0.0134778    0.0232912
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN                       0                    NA                -0.3181391   -0.4344595   -0.2018187
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL                          0                    NA                -0.0533730   -0.1328656    0.0261196
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                -0.0404588   -0.0498291   -0.0310886
6-24 months                   ki0047075b-MAL-ED     INDIA                          0                    NA                 0.0056591   -0.0957078    0.1070261
6-24 months                   ki0047075b-MAL-ED     NEPAL                          0                    NA                 0.0238316   -0.0285849    0.0762480
6-24 months                   ki0047075b-MAL-ED     PERU                           0                    NA                -0.0216939   -0.0665103    0.0231226
6-24 months                   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                 0.0082117   -0.0216197    0.0380432
6-24 months                   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0162134   -0.0446727    0.0122459
6-24 months                   ki1000109-EE          PAKISTAN                       0                    NA                -0.0883645   -0.2377250    0.0609960
6-24 months                   ki1113344-GMS-Nepal   NEPAL                          0                    NA                 0.0864446   -0.0098671    0.1827564
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                -0.0015482   -0.0157075    0.0126111


### Parameter: PAF


agecat                        studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BRAZIL                         0                    NA                 0.1025641   -0.7247165    0.5330298
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA                          0                    NA                -0.2363215   -0.5897146    0.0385123
0-24 months (no birth wast)   ki0047075b-MAL-ED     NEPAL                          0                    NA                 0.1115996   -0.2304982    0.3585888
0-24 months (no birth wast)   ki0047075b-MAL-ED     PERU                           0                    NA                -0.3089245   -1.1771337    0.2130556
0-24 months (no birth wast)   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                 0.0277778   -0.1930423    0.2077263
0-24 months (no birth wast)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1101911   -0.3866275    0.1111353
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN                       0                    NA                -0.3042010   -0.6802659   -0.0123041
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL                          0                    NA                 0.1971753    0.0024498    0.3538897
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                -0.1212959   -0.1940810   -0.0529475
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                 0.2500000   -0.6570476    0.6605408
0-6 months (no birth wast)    ki0047075b-MAL-ED     INDIA                          0                    NA                -0.8937354   -1.6395188   -0.3586696
0-6 months (no birth wast)    ki0047075b-MAL-ED     NEPAL                          0                    NA                 0.2188552   -0.5671759    0.6106454
0-6 months (no birth wast)    ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                 0.1120370   -0.4178523    0.4438925
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN                       0                    NA                -1.6437187   -2.4486793   -1.0266449
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL                          0                    NA                -0.3320985   -0.9294599    0.0803196
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                -0.5519680   -0.6887026   -0.4263048
6-24 months                   ki0047075b-MAL-ED     INDIA                          0                    NA                 0.0206028   -0.4275527    0.3280676
6-24 months                   ki0047075b-MAL-ED     NEPAL                          0                    NA                 0.1535812   -0.2576281    0.4303365
6-24 months                   ki0047075b-MAL-ED     PERU                           0                    NA                -0.3633721   -1.3357685    0.2042091
6-24 months                   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                 0.0577103   -0.1786226    0.2466547
6-24 months                   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1490385   -0.4377184    0.0816773
6-24 months                   ki1000109-EE          PAKISTAN                       0                    NA                -0.2665187   -0.8126353    0.1150621
6-24 months                   ki1113344-GMS-Nepal   NEPAL                          0                    NA                 0.1743797   -0.0451141    0.3477756
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                -0.0093903   -0.0990573    0.0729612
