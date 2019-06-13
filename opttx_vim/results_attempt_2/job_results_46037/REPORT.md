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
![](/tmp/721aff22-16bb-4f28-a6c6-72d291295597/52711304-4c43-422b-beaa-da6156ab2d73/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/721aff22-16bb-4f28-a6c6-72d291295597/52711304-4c43-422b-beaa-da6156ab2d73/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat                       studyid               country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  --------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH                     optimal              NA                0.5935778   0.4827737   0.7043819
0-24 months (no birth st.)   ki0047075b-MAL-ED     BRAZIL                         optimal              NA                0.0780194   0.0208895   0.1351493
0-24 months (no birth st.)   ki0047075b-MAL-ED     INDIA                          optimal              NA                0.2700682   0.1363276   0.4038088
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL                          optimal              NA                0.3465245   0.2554622   0.4375867
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU                           optimal              NA                0.5842816   0.5072733   0.6612899
0-24 months (no birth st.)   ki0047075b-MAL-ED     SOUTH AFRICA                   optimal              NA                0.5929700   0.5189134   0.6670266
0-24 months (no birth st.)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.7924724   0.7028218   0.8821229
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL                          optimal              NA                0.7004981   0.6421622   0.7588340
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH                     optimal              NA                0.2608430   0.2479081   0.2737779
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH                     optimal              NA                0.2047577   0.1449253   0.2645902
0-6 months (no birth st.)    ki0047075b-MAL-ED     BRAZIL                         optimal              NA                0.0762932   0.0216265   0.1309598
0-6 months (no birth st.)    ki0047075b-MAL-ED     INDIA                          optimal              NA                0.1216606   0.0212165   0.2221047
0-6 months (no birth st.)    ki0047075b-MAL-ED     NEPAL                          optimal              NA                0.0563048   0.0153811   0.0972285
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU                           optimal              NA                0.3164755   0.2466811   0.3862699
0-6 months (no birth st.)    ki0047075b-MAL-ED     SOUTH AFRICA                   optimal              NA                0.2991470   0.2282983   0.3699957
0-6 months (no birth st.)    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2174673   0.1374335   0.2975011
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN                       optimal              NA                0.6718689   0.5249390   0.8187987
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL                          optimal              NA                0.1301363   0.0479575   0.2123152
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH                     optimal              NA                0.1295236   0.1231871   0.1358601
6-24 months                  ki0047075b-MAL-ED     BANGLADESH                     optimal              NA                0.4967996   0.3577610   0.6358383
6-24 months                  ki0047075b-MAL-ED     INDIA                          optimal              NA                0.1809782   0.0552363   0.3067200
6-24 months                  ki0047075b-MAL-ED     NEPAL                          optimal              NA                0.1938294   0.1038184   0.2838403
6-24 months                  ki0047075b-MAL-ED     PERU                           optimal              NA                0.4409077   0.3193732   0.5624423
6-24 months                  ki0047075b-MAL-ED     SOUTH AFRICA                   optimal              NA                0.3386375   0.2461801   0.4310948
6-24 months                  ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.8211859   0.7217449   0.9206270
6-24 months                  ki1113344-GMS-Nepal   NEPAL                          optimal              NA                0.5536342   0.4952363   0.6120322
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH                     optimal              NA                0.2189489   0.1954793   0.2424185


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
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH                     observed             optimal           0.8832403   0.7559677   1.0319402
0-24 months (no birth st.)   ki0047075b-MAL-ED     BRAZIL                         observed             optimal           1.7766596   0.9619598   3.2813424
0-24 months (no birth st.)   ki0047075b-MAL-ED     INDIA                          observed             optimal           1.9624675   1.2473491   3.0875709
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL                          observed             optimal           0.7594208   0.6277177   0.9187567
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU                           observed             optimal           1.0228108   0.9398799   1.1130592
0-24 months (no birth st.)   ki0047075b-MAL-ED     SOUTH AFRICA                   observed             optimal           0.9049115   0.8290391   0.9877277
0-24 months (no birth st.)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.0465777   0.9619961   1.1385959
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL                          observed             optimal           0.9099821   0.8540562   0.9695702
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH                     observed             optimal           0.9891035   0.9514415   1.0282563
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH                     observed             optimal           1.0431461   0.9235847   1.1781851
0-6 months (no birth st.)    ki0047075b-MAL-ED     BRAZIL                         observed             optimal           1.2328679   0.6994435   2.1731037
0-6 months (no birth st.)    ki0047075b-MAL-ED     INDIA                          observed             optimal           1.7672117   0.8173472   3.8209433
0-6 months (no birth st.)    ki0047075b-MAL-ED     NEPAL                          observed             optimal           1.1896969   0.7124018   1.9867703
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU                           observed             optimal           1.1455856   1.0099480   1.2994396
0-6 months (no birth st.)    ki0047075b-MAL-ED     SOUTH AFRICA                   observed             optimal           1.0327469   0.8923965   1.1951706
0-6 months (no birth st.)    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.3947730   1.0276248   1.8930954
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN                       observed             optimal           0.9002333   0.7375361   1.0988207
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL                          observed             optimal           1.4385206   0.7954936   2.6013303
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH                     observed             optimal           1.0345937   1.0114956   1.0582193
6-24 months                  ki0047075b-MAL-ED     BANGLADESH                     observed             optimal           0.8257985   0.6555836   1.0402078
6-24 months                  ki0047075b-MAL-ED     INDIA                          observed             optimal           2.2604433   1.1869970   4.3046476
6-24 months                  ki0047075b-MAL-ED     NEPAL                          observed             optimal           1.0959909   0.7587870   1.5830475
6-24 months                  ki0047075b-MAL-ED     PERU                           observed             optimal           0.9041543   0.7205860   1.1344865
6-24 months                  ki0047075b-MAL-ED     SOUTH AFRICA                   observed             optimal           1.0600550   0.8974121   1.2521746
6-24 months                  ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   observed             optimal           0.9452473   0.8548830   1.0451634
6-24 months                  ki1113344-GMS-Nepal   NEPAL                          observed             optimal           1.0153458   0.9722732   1.0603266
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH                     observed             optimal           0.9861979   0.8965765   1.0847777


### Parameter: PAR


agecat                       studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH                     optimal              NA                -0.0693060   -0.1606845    0.0220726
0-24 months (no birth st.)   ki0047075b-MAL-ED     BRAZIL                         optimal              NA                 0.0605945    0.0102625    0.1109264
0-24 months (no birth st.)   ki0047075b-MAL-ED     INDIA                          optimal              NA                 0.2599318    0.1393519    0.3805118
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL                          optimal              NA                -0.0833666   -0.1479313   -0.0188019
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU                           optimal              NA                 0.0133279   -0.0361061    0.0627619
0-24 months (no birth st.)   ki0047075b-MAL-ED     SOUTH AFRICA                   optimal              NA                -0.0563846   -0.1068995   -0.0058697
0-24 months (no birth st.)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0369115   -0.0294843    0.1033073
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL                          optimal              NA                -0.0630574   -0.1065792   -0.0195355
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH                     optimal              NA                -0.0028423   -0.0129677    0.0072831
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH                     optimal              NA                 0.0088345   -0.0161423    0.0338113
0-6 months (no birth st.)    ki0047075b-MAL-ED     BRAZIL                         optimal              NA                 0.0177662   -0.0260197    0.0615522
0-6 months (no birth st.)    ki0047075b-MAL-ED     INDIA                          optimal              NA                 0.0933394   -0.0027159    0.1893947
0-6 months (no birth st.)    ki0047075b-MAL-ED     NEPAL                          optimal              NA                 0.0106808   -0.0186141    0.0399758
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU                           optimal              NA                 0.0460743    0.0065245    0.0856241
0-6 months (no birth st.)    ki0047075b-MAL-ED     SOUTH AFRICA                   optimal              NA                 0.0097961   -0.0339484    0.0535407
0-6 months (no birth st.)    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0858502    0.0171416    0.1545589
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN                       optimal              NA                -0.0670301   -0.2007816    0.0667213
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL                          optimal              NA                 0.0570675   -0.0204666    0.1346015
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH                     optimal              NA                 0.0044807    0.0015510    0.0074104
6-24 months                  ki0047075b-MAL-ED     BANGLADESH                     optimal              NA                -0.0865432   -0.2003941    0.0273076
6-24 months                  ki0047075b-MAL-ED     INDIA                          optimal              NA                 0.2281127    0.1090586    0.3471669
6-24 months                  ki0047075b-MAL-ED     NEPAL                          optimal              NA                 0.0186058   -0.0526851    0.0898968
6-24 months                  ki0047075b-MAL-ED     PERU                           optimal              NA                -0.0422591   -0.1412720    0.0567538
6-24 months                  ki0047075b-MAL-ED     SOUTH AFRICA                   optimal              NA                 0.0203369   -0.0360738    0.0767475
6-24 months                  ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0449622   -0.1268466    0.0369223
6-24 months                  ki1113344-GMS-Nepal   NEPAL                          optimal              NA                 0.0084960   -0.0154801    0.0324720
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH                     optimal              NA                -0.0030220   -0.0238895    0.0178456


### Parameter: PAF


agecat                       studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH                     optimal              NA                -0.1321947   -0.3228078    0.0309516
0-24 months (no birth st.)   ki0047075b-MAL-ED     BRAZIL                         optimal              NA                 0.4371460   -0.0395445    0.6952467
0-24 months (no birth st.)   ki0047075b-MAL-ED     INDIA                          optimal              NA                 0.4904374    0.1982998    0.6761208
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL                          optimal              NA                -0.3167931   -0.5930727   -0.0884274
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU                           optimal              NA                 0.0223021   -0.0639658    0.1015752
0-24 months (no birth st.)   ki0047075b-MAL-ED     SOUTH AFRICA                   optimal              NA                -0.1050804   -0.2062157   -0.0124248
0-24 months (no birth st.)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0445047   -0.0395053    0.1217253
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL                          optimal              NA                -0.0989227   -0.1708831   -0.0313849
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH                     optimal              NA                -0.0110166   -0.0510368    0.0274798
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH                     optimal              NA                 0.0413615   -0.0827378    0.1512370
0-6 months (no birth st.)    ki0047075b-MAL-ED     BRAZIL                         optimal              NA                 0.1888831   -0.4297081    0.5398287
0-6 months (no birth st.)    ki0047075b-MAL-ED     INDIA                          optimal              NA                 0.4341368   -0.2234703    0.7382845
0-6 months (no birth st.)    ki0047075b-MAL-ED     NEPAL                          optimal              NA                 0.1594498   -0.4037023    0.4966706
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU                           optimal              NA                 0.1270840    0.0098500    0.2304375
0-6 months (no birth st.)    ki0047075b-MAL-ED     SOUTH AFRICA                   optimal              NA                 0.0317085   -0.1205781    0.1632994
0-6 months (no birth st.)    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.2830375    0.0268822    0.4717646
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN                       optimal              NA                -0.1108232   -0.3558657    0.0899334
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL                          optimal              NA                 0.3048414   -0.2570812    0.6155813
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH                     optimal              NA                 0.0334370    0.0113649    0.0550163
6-24 months                  ki0047075b-MAL-ED     BANGLADESH                     optimal              NA                -0.2109491   -0.5253584    0.0386536
6-24 months                  ki0047075b-MAL-ED     INDIA                          optimal              NA                 0.5576089    0.1575379    0.7676929
6-24 months                  ki0047075b-MAL-ED     NEPAL                          optimal              NA                 0.0875836   -0.3178928    0.3683070
6-24 months                  ki0047075b-MAL-ED     PERU                           optimal              NA                -0.1060059   -0.3877594    0.1185439
6-24 months                  ki0047075b-MAL-ED     SOUTH AFRICA                   optimal              NA                 0.0566527   -0.1143153    0.2013893
6-24 months                  ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0579242   -0.1697507    0.0432118
6-24 months                  ki1113344-GMS-Nepal   NEPAL                          optimal              NA                 0.0151139   -0.0285175    0.0568943
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH                     optimal              NA                -0.0139953   -0.1153538    0.0781522
