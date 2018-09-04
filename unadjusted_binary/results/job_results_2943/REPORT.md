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

**Outcome Variable:** ever_stunted

## Predictor Variables

**Intervention Variable:** predfeed3

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                       studyid               country                        predfeed3    ever_stunted   n_cell       n
---------------------------  --------------------  -----------------------------  ----------  -------------  -------  ------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH                     0                       0       13     206
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH                     0                       1       17     206
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH                     1                       0       85     206
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH                     1                       1       91     206
0-24 months (no birth st.)   ki0047075b-MAL-ED     BRAZIL                         0                       0       81     202
0-24 months (no birth st.)   ki0047075b-MAL-ED     BRAZIL                         0                       1       11     202
0-24 months (no birth st.)   ki0047075b-MAL-ED     BRAZIL                         1                       0       93     202
0-24 months (no birth st.)   ki0047075b-MAL-ED     BRAZIL                         1                       1       17     202
0-24 months (no birth st.)   ki0047075b-MAL-ED     INDIA                          0                       0       33     200
0-24 months (no birth st.)   ki0047075b-MAL-ED     INDIA                          0                       1       12     200
0-24 months (no birth st.)   ki0047075b-MAL-ED     INDIA                          1                       0       61     200
0-24 months (no birth st.)   ki0047075b-MAL-ED     INDIA                          1                       1       94     200
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL                          0                       0       63     209
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL                          0                       1       22     209
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL                          1                       0       91     209
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL                          1                       1       33     209
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU                           0                       0       29     251
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU                           0                       1       52     251
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU                           1                       0       72     251
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU                           1                       1       98     251
0-24 months (no birth st.)   ki0047075b-MAL-ED     SOUTH AFRICA                   0                       0       77     246
0-24 months (no birth st.)   ki0047075b-MAL-ED     SOUTH AFRICA                   0                       1       81     246
0-24 months (no birth st.)   ki0047075b-MAL-ED     SOUTH AFRICA                   1                       0       37     246
0-24 months (no birth st.)   ki0047075b-MAL-ED     SOUTH AFRICA                   1                       1       51     246
0-24 months (no birth st.)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                       0       19     211
0-24 months (no birth st.)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                       1      109     211
0-24 months (no birth st.)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                       0       17     211
0-24 months (no birth st.)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                       1       66     211
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN                       0                       0        4     496
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN                       0                       1       28     496
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN                       1                       0       60     496
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN                       1                       1      404     496
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL                          0                       0       48     844
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL                          0                       1       88     844
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL                          1                       0      258     844
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL                          1                       1      450     844
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH                     0                       0     2328   35372
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH                     0                       1      974   35372
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH                     1                       0    23918   35372
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH                     1                       1     8152   35372
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH                     0                       0        6     226
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH                     0                       1       12     226
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH                     1                       0      124     226
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH                     1                       1       84     226
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH                     0                       0       22     206
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH                     0                       1        8     206
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH                     1                       0      140     206
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH                     1                       1       36     206
0-6 months (no birth st.)    ki0047075b-MAL-ED     BRAZIL                         0                       0       85     202
0-6 months (no birth st.)    ki0047075b-MAL-ED     BRAZIL                         0                       1        7     202
0-6 months (no birth st.)    ki0047075b-MAL-ED     BRAZIL                         1                       0       98     202
0-6 months (no birth st.)    ki0047075b-MAL-ED     BRAZIL                         1                       1       12     202
0-6 months (no birth st.)    ki0047075b-MAL-ED     INDIA                          0                       0       40     200
0-6 months (no birth st.)    ki0047075b-MAL-ED     INDIA                          0                       1        5     200
0-6 months (no birth st.)    ki0047075b-MAL-ED     INDIA                          1                       0      117     200
0-6 months (no birth st.)    ki0047075b-MAL-ED     INDIA                          1                       1       38     200
0-6 months (no birth st.)    ki0047075b-MAL-ED     NEPAL                          0                       0       78     209
0-6 months (no birth st.)    ki0047075b-MAL-ED     NEPAL                          0                       1        7     209
0-6 months (no birth st.)    ki0047075b-MAL-ED     NEPAL                          1                       0      117     209
0-6 months (no birth st.)    ki0047075b-MAL-ED     NEPAL                          1                       1        7     209
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU                           0                       0       45     251
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU                           0                       1       36     251
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU                           1                       0      115     251
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU                           1                       1       55     251
0-6 months (no birth st.)    ki0047075b-MAL-ED     SOUTH AFRICA                   0                       0      111     246
0-6 months (no birth st.)    ki0047075b-MAL-ED     SOUTH AFRICA                   0                       1       47     246
0-6 months (no birth st.)    ki0047075b-MAL-ED     SOUTH AFRICA                   1                       0       59     246
0-6 months (no birth st.)    ki0047075b-MAL-ED     SOUTH AFRICA                   1                       1       29     246
0-6 months (no birth st.)    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                       0       86     211
0-6 months (no birth st.)    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                       1       42     211
0-6 months (no birth st.)    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                       0       61     211
0-6 months (no birth st.)    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                       1       22     211
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN                       0                       0       12     496
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN                       0                       1       20     496
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN                       1                       0      184     496
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN                       1                       1      280     496
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL                          0                       0      118     844
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL                          0                       1       18     844
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL                          1                       0      568     844
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL                          1                       1      140     844
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH                     0                       0     2676   35372
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH                     0                       1      626   35372
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH                     1                       0    27956   35372
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH                     1                       1     4114   35372
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH                     0                       0       12     226
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH                     0                       1        6     226
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH                     1                       0      192     226
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH                     1                       1       16     226
6-24 months                  ki0047075b-MAL-ED     BANGLADESH                     0                       0       12     156
6-24 months                  ki0047075b-MAL-ED     BANGLADESH                     0                       1        9     156
6-24 months                  ki0047075b-MAL-ED     BANGLADESH                     1                       0       80     156
6-24 months                  ki0047075b-MAL-ED     BANGLADESH                     1                       1       55     156
6-24 months                  ki0047075b-MAL-ED     BRAZIL                         0                       0       71     168
6-24 months                  ki0047075b-MAL-ED     BRAZIL                         0                       1        4     168
6-24 months                  ki0047075b-MAL-ED     BRAZIL                         1                       0       88     168
6-24 months                  ki0047075b-MAL-ED     BRAZIL                         1                       1        5     168
6-24 months                  ki0047075b-MAL-ED     INDIA                          0                       0       32     154
6-24 months                  ki0047075b-MAL-ED     INDIA                          0                       1        7     154
6-24 months                  ki0047075b-MAL-ED     INDIA                          1                       0       59     154
6-24 months                  ki0047075b-MAL-ED     INDIA                          1                       1       56     154
6-24 months                  ki0047075b-MAL-ED     NEPAL                          0                       0       62     193
6-24 months                  ki0047075b-MAL-ED     NEPAL                          0                       1       15     193
6-24 months                  ki0047075b-MAL-ED     NEPAL                          1                       0       90     193
6-24 months                  ki0047075b-MAL-ED     NEPAL                          1                       1       26     193
6-24 months                  ki0047075b-MAL-ED     PERU                           0                       0       25     148
6-24 months                  ki0047075b-MAL-ED     PERU                           0                       1       16     148
6-24 months                  ki0047075b-MAL-ED     PERU                           1                       0       64     148
6-24 months                  ki0047075b-MAL-ED     PERU                           1                       1       43     148
6-24 months                  ki0047075b-MAL-ED     SOUTH AFRICA                   0                       0       69     156
6-24 months                  ki0047075b-MAL-ED     SOUTH AFRICA                   0                       1       34     156
6-24 months                  ki0047075b-MAL-ED     SOUTH AFRICA                   1                       0       31     156
6-24 months                  ki0047075b-MAL-ED     SOUTH AFRICA                   1                       1       22     156
6-24 months                  ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                       0       18     143
6-24 months                  ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                       1       67     143
6-24 months                  ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                       0       14     143
6-24 months                  ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                       1       44     143
6-24 months                  ki1000109-EE          PAKISTAN                       0                       0        4     192
6-24 months                  ki1000109-EE          PAKISTAN                       0                       1        8     192
6-24 months                  ki1000109-EE          PAKISTAN                       1                       0       56     192
6-24 months                  ki1000109-EE          PAKISTAN                       1                       1      124     192
6-24 months                  ki1113344-GMS-Nepal   NEPAL                          0                       0       46     676
6-24 months                  ki1113344-GMS-Nepal   NEPAL                          0                       1       70     676
6-24 months                  ki1113344-GMS-Nepal   NEPAL                          1                       0      250     676
6-24 months                  ki1113344-GMS-Nepal   NEPAL                          1                       1      310     676
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH                     0                       0     1192   20368
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH                     0                       1      356   20368
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH                     1                       0    14778   20368
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH                     1                       1     4042   20368
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH                     0                       0        6     204
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH                     0                       1        6     204
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH                     1                       0      124     204
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH                     1                       1       68     204


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
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/5f486e0c-8e0c-4f5e-865e-bba3830d0fdb/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/5f486e0c-8e0c-4f5e-865e-bba3830d0fdb/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/5f486e0c-8e0c-4f5e-865e-bba3830d0fdb/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/5f486e0c-8e0c-4f5e-865e-bba3830d0fdb/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid               country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  --------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH                     0                    NA                0.5666667   0.3889128   0.7444205
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                0.5170455   0.4430396   0.5910513
0-24 months (no birth st.)   ki0047075b-MAL-ED     BRAZIL                         0                    NA                0.1195652   0.0531018   0.1860287
0-24 months (no birth st.)   ki0047075b-MAL-ED     BRAZIL                         1                    NA                0.1545455   0.0868277   0.2222632
0-24 months (no birth st.)   ki0047075b-MAL-ED     INDIA                          0                    NA                0.2666667   0.1371382   0.3961952
0-24 months (no birth st.)   ki0047075b-MAL-ED     INDIA                          1                    NA                0.6064516   0.5293492   0.6835540
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL                          0                    NA                0.2588235   0.1654889   0.3521582
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL                          1                    NA                0.2661290   0.1881577   0.3441003
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU                           0                    NA                0.6419753   0.5373617   0.7465889
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU                           1                    NA                0.5764706   0.5020452   0.6508959
0-24 months (no birth st.)   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                0.5126582   0.4345611   0.5907553
0-24 months (no birth st.)   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                0.5795455   0.4761992   0.6828917
0-24 months (no birth st.)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                0.8515625   0.7898242   0.9133008
0-24 months (no birth st.)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7951807   0.7081527   0.8822087
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL                          0                    NA                0.6470588   0.5333401   0.7607775
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL                          1                    NA                0.6355932   0.5854001   0.6857864
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                0.2949727   0.2719006   0.3180449
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                0.2541940   0.2457150   0.2626729
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                0.6666667   0.3586298   0.9747036
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                0.4038462   0.3057966   0.5018958
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH                     0                    NA                0.2666667   0.1080389   0.4252944
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH                     1                    NA                0.2045455   0.1448074   0.2642835
0-6 months (no birth st.)    ki0047075b-MAL-ED     BRAZIL                         0                    NA                0.0760870   0.0217741   0.1303998
0-6 months (no birth st.)    ki0047075b-MAL-ED     BRAZIL                         1                    NA                0.1090909   0.0506872   0.1674946
0-6 months (no birth st.)    ki0047075b-MAL-ED     INDIA                          0                    NA                0.1111111   0.0190592   0.2031630
0-6 months (no birth st.)    ki0047075b-MAL-ED     INDIA                          1                    NA                0.2451613   0.1772685   0.3130541
0-6 months (no birth st.)    ki0047075b-MAL-ED     NEPAL                          0                    NA                0.0823529   0.0237718   0.1409340
0-6 months (no birth st.)    ki0047075b-MAL-ED     NEPAL                          1                    NA                0.0564516   0.0157324   0.0971708
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU                           0                    NA                0.4444444   0.3360156   0.5528733
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU                           1                    NA                0.3235294   0.2530647   0.3939941
0-6 months (no birth st.)    ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                0.2974684   0.2260422   0.3688945
0-6 months (no birth st.)    ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                0.3295455   0.2311367   0.4279542
0-6 months (no birth st.)    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                0.3281250   0.2465910   0.4096590
0-6 months (no birth st.)    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2650602   0.1698818   0.3602387
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN                       0                    NA                0.6250000   0.3873044   0.8626956
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN                       1                    NA                0.6034483   0.5403741   0.6665224
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL                          0                    NA                0.1323529   0.0517136   0.2129923
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL                          1                    NA                0.1977401   0.1562001   0.2392801
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                0.1895821   0.1695271   0.2096370
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                0.1282819   0.1222082   0.1343556
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                0.3333333   0.0491841   0.6174825
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                0.0769231   0.0259323   0.1279138
6-24 months                  ki0047075b-MAL-ED     BANGLADESH                     0                    NA                0.4285714   0.2162335   0.6409093
6-24 months                  ki0047075b-MAL-ED     BANGLADESH                     1                    NA                0.4074074   0.3242559   0.4905589
6-24 months                  ki0047075b-MAL-ED     INDIA                          0                    NA                0.1794872   0.0586530   0.3003214
6-24 months                  ki0047075b-MAL-ED     INDIA                          1                    NA                0.4869565   0.3953058   0.5786073
6-24 months                  ki0047075b-MAL-ED     NEPAL                          0                    NA                0.1948052   0.1061138   0.2834966
6-24 months                  ki0047075b-MAL-ED     NEPAL                          1                    NA                0.2241379   0.1480533   0.3002226
6-24 months                  ki0047075b-MAL-ED     PERU                           0                    NA                0.3902439   0.2404223   0.5400655
6-24 months                  ki0047075b-MAL-ED     PERU                           1                    NA                0.4018692   0.3086578   0.4950805
6-24 months                  ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                0.3300971   0.2389899   0.4212043
6-24 months                  ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                0.4150943   0.2820112   0.5481774
6-24 months                  ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7882353   0.7010753   0.8753953
6-24 months                  ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7586207   0.6481059   0.8691355
6-24 months                  ki1113344-GMS-Nepal   NEPAL                          0                    NA                0.6034483   0.4773679   0.7295286
6-24 months                  ki1113344-GMS-Nepal   NEPAL                          1                    NA                0.5535714   0.4952571   0.6118858
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                0.2299742   0.1983981   0.2615502
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                0.2147715   0.2049237   0.2246193
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                0.5000000   0.1324425   0.8675575
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                0.3541667   0.2552367   0.4530966


### Parameter: E(Y)


agecat                       studyid               country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  --------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                0.5242718   0.4559076   0.5926361
0-24 months (no birth st.)   ki0047075b-MAL-ED     BRAZIL                         NA                   NA                0.1386139   0.0908442   0.1863835
0-24 months (no birth st.)   ki0047075b-MAL-ED     INDIA                          NA                   NA                0.5300000   0.4606561   0.5993439
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL                          NA                   NA                0.2631579   0.2033151   0.3230007
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU                           NA                   NA                0.5976096   0.5368226   0.6583966
0-24 months (no birth st.)   ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                0.5365854   0.4741444   0.5990263
0-24 months (no birth st.)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8293839   0.7785063   0.8802614
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL                          NA                   NA                0.6374408   0.5915192   0.6833623
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                0.2580007   0.2499160   0.2660854
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH                     NA                   NA                0.4247788   0.3313353   0.5182222
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                0.2135922   0.1574890   0.2696955
0-6 months (no birth st.)    ki0047075b-MAL-ED     BRAZIL                         NA                   NA                0.0940594   0.0537041   0.1344147
0-6 months (no birth st.)    ki0047075b-MAL-ED     INDIA                          NA                   NA                0.2150000   0.1579211   0.2720789
0-6 months (no birth st.)    ki0047075b-MAL-ED     NEPAL                          NA                   NA                0.0669856   0.0330113   0.1009600
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU                           NA                   NA                0.3625498   0.3029582   0.4221414
0-6 months (no birth st.)    ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                0.3089431   0.2510854   0.3668008
0-6 months (no birth st.)    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3033175   0.2411441   0.3654909
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN                       NA                   NA                0.6048387   0.5438701   0.6658074
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL                          NA                   NA                0.1872038   0.1499427   0.2244649
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                0.1340043   0.1282072   0.1398014
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH                     NA                   NA                0.0973451   0.0436888   0.1510015
6-24 months                  ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                0.4102564   0.3328207   0.4876922
6-24 months                  ki0047075b-MAL-ED     INDIA                          NA                   NA                0.4090909   0.3311846   0.4869972
6-24 months                  ki0047075b-MAL-ED     NEPAL                          NA                   NA                0.2124352   0.1545785   0.2702920
6-24 months                  ki0047075b-MAL-ED     PERU                           NA                   NA                0.3986486   0.3194990   0.4777982
6-24 months                  ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                0.3589744   0.2834562   0.4344926
6-24 months                  ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7762238   0.7076743   0.8447733
6-24 months                  ki1113344-GMS-Nepal   NEPAL                          NA                   NA                0.5621302   0.5091609   0.6150995
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                0.2159269   0.2063541   0.2254998
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH                     NA                   NA                0.3627451   0.2672414   0.4582488


### Parameter: RR


agecat                       studyid               country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  --------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH                     1                    0                 0.9124332   0.6463358   1.2880831
0-24 months (no birth st.)   ki0047075b-MAL-ED     BRAZIL                         0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED     BRAZIL                         1                    0                 1.2925620   0.6368740   2.6233076
0-24 months (no birth st.)   ki0047075b-MAL-ED     INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED     INDIA                          1                    0                 2.2741935   1.3764815   3.7573744
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL                          1                    0                 1.0282258   0.6461049   1.6363416
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU                           0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU                           1                    0                 0.8979638   0.7294049   1.1054752
0-24 months (no birth st.)   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    0                 1.1304714   0.8941351   1.4292757
0-24 months (no birth st.)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    0                 0.9337902   0.8189084   1.0647883
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL                          1                    0                 0.9822804   0.8101363   1.1910031
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH                     1                    0                 0.8617540   0.7930763   0.9363790
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH                     1                    0                 0.6057692   0.3599543   1.0194527
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH                     1                    0                 0.7670455   0.3953870   1.4880579
0-6 months (no birth st.)    ki0047075b-MAL-ED     BRAZIL                         0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED     BRAZIL                         1                    0                 1.4337662   0.5874428   3.4993798
0-6 months (no birth st.)    ki0047075b-MAL-ED     INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED     INDIA                          1                    0                 2.2064516   0.9211421   5.2852091
0-6 months (no birth st.)    ki0047075b-MAL-ED     NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED     NEPAL                          1                    0                 0.6854839   0.2489026   1.8878392
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU                           0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU                           1                    0                 0.7279412   0.5248851   1.0095512
0-6 months (no birth st.)    ki0047075b-MAL-ED     SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED     SOUTH AFRICA                   1                    0                 1.1078337   0.7551981   1.6251304
0-6 months (no birth st.)    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    0                 0.8078026   0.5219872   1.2501170
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN                       1                    0                 0.9655172   0.6508305   1.4323599
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL                          1                    0                 1.4940364   0.7842770   2.8461179
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH                     1                    0                 0.6766562   0.6027567   0.7596159
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH                     1                    0                 0.2307692   0.0773100   0.6888424
6-24 months                  ki0047075b-MAL-ED     BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED     BANGLADESH                     1                    0                 0.9506173   0.5562759   1.6245055
6-24 months                  ki0047075b-MAL-ED     INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED     INDIA                          1                    0                 2.7130433   1.3485606   5.4581186
6-24 months                  ki0047075b-MAL-ED     NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED     NEPAL                          1                    0                 1.1505747   0.6520464   2.0302575
6-24 months                  ki0047075b-MAL-ED     PERU                           0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED     PERU                           1                    0                 1.0297897   0.6575800   1.6126811
6-24 months                  ki0047075b-MAL-ED     SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED     SOUTH AFRICA                   1                    0                 1.2574917   0.8237189   1.9196904
6-24 months                  ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    0                 0.9624292   0.8015673   1.1555736
6-24 months                  ki1113344-GMS-Nepal   NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1113344-GMS-Nepal   NEPAL                          1                    0                 0.9173469   0.7259626   1.1591856
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH                     1                    0                 0.9338941   0.8107054   1.0758017
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH                     1                    0                 0.7083333   0.3234435   1.5512327


### Parameter: PAR


agecat                       studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH                     0                    NA                -0.0423948   -0.2069161    0.1221265
0-24 months (no birth st.)   ki0047075b-MAL-ED     BRAZIL                         0                    NA                 0.0190486   -0.0326773    0.0707746
0-24 months (no birth st.)   ki0047075b-MAL-ED     INDIA                          0                    NA                 0.2633333    0.1448585    0.3818081
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL                          0                    NA                 0.0043344   -0.0678233    0.0764920
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU                           0                    NA                -0.0443657   -0.1314037    0.0426722
0-24 months (no birth st.)   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                 0.0239271   -0.0225846    0.0704388
0-24 months (no birth st.)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0221786   -0.0643167    0.0199595
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL                          0                    NA                -0.0096181   -0.1138922    0.0946560
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                -0.0369721   -0.0588185   -0.0151257
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                -0.2418879   -0.5427892    0.0590134
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH                     0                    NA                -0.0530744   -0.1979239    0.0917751
0-6 months (no birth st.)    ki0047075b-MAL-ED     BRAZIL                         0                    NA                 0.0179724   -0.0255179    0.0614628
0-6 months (no birth st.)    ki0047075b-MAL-ED     INDIA                          0                    NA                 0.1038889    0.0149032    0.1928746
0-6 months (no birth st.)    ki0047075b-MAL-ED     NEPAL                          0                    NA                -0.0153673   -0.0577304    0.0269958
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU                           0                    NA                -0.0818946   -0.1697577    0.0059684
0-6 months (no birth st.)    ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                 0.0114747   -0.0320662    0.0550156
0-6 months (no birth st.)    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0248075   -0.0742823    0.0246674
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN                       0                    NA                -0.0201613   -0.2502181    0.2098955
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL                          0                    NA                 0.0548509   -0.0212769    0.1309786
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                -0.0555778   -0.0745701   -0.0365855
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                -0.2359882   -0.5020718    0.0300954
6-24 months                  ki0047075b-MAL-ED     BANGLADESH                     0                    NA                -0.0183150   -0.2156593    0.1790293
6-24 months                  ki0047075b-MAL-ED     INDIA                          0                    NA                 0.2296037    0.1143864    0.3448210
6-24 months                  ki0047075b-MAL-ED     NEPAL                          0                    NA                 0.0176300   -0.0526333    0.0878934
6-24 months                  ki0047075b-MAL-ED     PERU                           0                    NA                 0.0084047   -0.1191672    0.1359767
6-24 months                  ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                 0.0288773   -0.0262823    0.0840368
6-24 months                  ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0120115   -0.0691487    0.0451257
6-24 months                  ki1113344-GMS-Nepal   NEPAL                          0                    NA                -0.0413181   -0.1564115    0.0737753
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                -0.0140472   -0.0439620    0.0158675
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                -0.1372549   -0.4969132    0.2224033


### Parameter: PAF


agecat                       studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH                     0                    NA                -0.0808642   -0.4453031    0.1916800
0-24 months (no birth st.)   ki0047075b-MAL-ED     BRAZIL                         0                    NA                 0.1374224   -0.3261268    0.4389374
0-24 months (no birth st.)   ki0047075b-MAL-ED     INDIA                          0                    NA                 0.4968553    0.2134293    0.6781541
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL                          0                    NA                 0.0164706   -0.2997544    0.2557593
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU                           0                    NA                -0.0742387   -0.2307075    0.0623371
0-24 months (no birth st.)   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                 0.0445915   -0.0463492    0.1276283
0-24 months (no birth st.)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0267411   -0.0790750    0.0230547
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL                          0                    NA                -0.0150886   -0.1926001    0.1360014
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                -0.1433022   -0.2314613   -0.0614543
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                -0.5694444   -1.4971926    0.0136300
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH                     0                    NA                -0.2484848   -1.1475038    0.2741739
0-6 months (no birth st.)    ki0047075b-MAL-ED     BRAZIL                         0                    NA                 0.1910755   -0.4219281    0.5398088
0-6 months (no birth st.)    ki0047075b-MAL-ED     INDIA                          0                    NA                 0.4832041   -0.1192888    0.7613860
0-6 months (no birth st.)    ki0047075b-MAL-ED     NEPAL                          0                    NA                -0.2294118   -1.0415814    0.2596654
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU                           0                    NA                -0.2258852   -0.4952121   -0.0050712
0-6 months (no birth st.)    ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                 0.0371419   -0.1146022    0.1682273
0-6 months (no birth st.)    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0817871   -0.2577804    0.0695805
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN                       0                    NA                -0.0333333   -0.4931856    0.2848995
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL                          0                    NA                 0.2930007   -0.2516459    0.6006475
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                -0.4147462   -0.5643616   -0.2794400
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                -2.4242424   -6.5989633   -0.5430310
6-24 months                  ki0047075b-MAL-ED     BANGLADESH                     0                    NA                -0.0446429   -0.6556225    0.3408650
6-24 months                  ki0047075b-MAL-ED     INDIA                          0                    NA                 0.5612535    0.1815281    0.7648075
6-24 months                  ki0047075b-MAL-ED     NEPAL                          0                    NA                 0.0829902   -0.3147181    0.3603899
6-24 months                  ki0047075b-MAL-ED     PERU                           0                    NA                 0.0210831   -0.3574431    0.2940564
6-24 months                  ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                 0.0804438   -0.0868321    0.2219741
6-24 months                  ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0154743   -0.0918994    0.0556016
6-24 months                  ki1113344-GMS-Nepal   NEPAL                          0                    NA                -0.0735027   -0.2993246    0.1130714
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                -0.0650554   -0.2129847    0.0648332
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                -0.3783784   -1.8501504    0.3333941
