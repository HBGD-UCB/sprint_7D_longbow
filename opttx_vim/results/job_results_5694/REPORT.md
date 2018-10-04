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
![](/tmp/613b9926-d324-4527-aeff-c194b65c6b1b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/613b9926-d324-4527-aeff-c194b65c6b1b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat                       studyid               country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  --------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH                     optimal              NA                0.5070843   0.4049194   0.6092492
0-24 months (no birth st.)   ki0047075b-MAL-ED     BRAZIL                         optimal              NA                0.0623677   0.0114811   0.1132543
0-24 months (no birth st.)   ki0047075b-MAL-ED     INDIA                          optimal              NA                0.2842989   0.1674131   0.4011847
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL                          optimal              NA                0.2574354   0.1656872   0.3491837
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU                           optimal              NA                0.5693006   0.4956497   0.6429514
0-24 months (no birth st.)   ki0047075b-MAL-ED     SOUTH AFRICA                   optimal              NA                0.5165613   0.4396008   0.5935219
0-24 months (no birth st.)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.7307864   0.6443711   0.8172016
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL                          optimal              NA                0.5305416   0.4411992   0.6198840
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH                     optimal              NA                0.2375691   0.2292019   0.2459362
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH                     optimal              NA                0.4038181   0.3057685   0.5018676
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH                     optimal              NA                0.2041634   0.1444254   0.2639015
0-6 months (no birth st.)    ki0047075b-MAL-ED     BRAZIL                         optimal              NA                0.0925755   0.0310778   0.1540731
0-6 months (no birth st.)    ki0047075b-MAL-ED     INDIA                          optimal              NA                0.1138626   0.0218080   0.2059173
0-6 months (no birth st.)    ki0047075b-MAL-ED     NEPAL                          optimal              NA                0.0567445   0.0160253   0.0974637
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU                           optimal              NA                0.3122595   0.2436428   0.3808761
0-6 months (no birth st.)    ki0047075b-MAL-ED     SOUTH AFRICA                   optimal              NA                0.2397043   0.1650056   0.3144029
0-6 months (no birth st.)    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1482168   0.0783729   0.2180607
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN                       optimal              NA                0.6064645   0.5370905   0.6758384
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL                          optimal              NA                0.1077936   0.0365819   0.1790053
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH                     optimal              NA                0.1193448   0.1131687   0.1255209
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH                     optimal              NA                0.0775364   0.0265447   0.1285282
6-24 months                  ki0047075b-MAL-ED     BANGLADESH                     optimal              NA                0.4081111   0.3249595   0.4912626
6-24 months                  ki0047075b-MAL-ED     INDIA                          optimal              NA                0.1823283   0.0614916   0.3031650
6-24 months                  ki0047075b-MAL-ED     NEPAL                          optimal              NA                0.2109301   0.1343660   0.2874943
6-24 months                  ki0047075b-MAL-ED     PERU                           optimal              NA                0.3950295   0.2719974   0.5180616
6-24 months                  ki0047075b-MAL-ED     SOUTH AFRICA                   optimal              NA                0.3352271   0.2449548   0.4254993
6-24 months                  ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.7141651   0.6046071   0.8237230
6-24 months                  ki1113344-GMS-Nepal   NEPAL                          optimal              NA                0.4720831   0.4052569   0.5389092
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH                     optimal              NA                0.1893446   0.1777466   0.2009427
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH                     optimal              NA                0.2966445   0.1152805   0.4780085


### Parameter: E(Y)


agecat                       studyid               country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  --------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH                     observed             NA                0.5222946   0.4539304   0.5906589
0-24 months (no birth st.)   ki0047075b-MAL-ED     BRAZIL                         observed             NA                0.1429240   0.0951543   0.1906937
0-24 months (no birth st.)   ki0047075b-MAL-ED     INDIA                          observed             NA                0.5301603   0.4608164   0.5995042
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL                          observed             NA                0.2630115   0.2031688   0.3228543
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU                           observed             NA                0.5981984   0.5374114   0.6589854
0-24 months (no birth st.)   ki0047075b-MAL-ED     SOUTH AFRICA                   observed             NA                0.5368549   0.4744140   0.5992958
0-24 months (no birth st.)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   observed             NA                0.8280050   0.7771275   0.8788826
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL                          observed             NA                0.6377048   0.5917832   0.6836263
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH                     observed             NA                0.2593523   0.2512676   0.2674370
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH                     observed             NA                0.4245122   0.3310687   0.5179557
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH                     observed             NA                0.2140310   0.1579278   0.2701343
0-6 months (no birth st.)    ki0047075b-MAL-ED     BRAZIL                         observed             NA                0.0934978   0.0531425   0.1338532
0-6 months (no birth st.)    ki0047075b-MAL-ED     INDIA                          observed             NA                0.2154305   0.1583516   0.2725094
0-6 months (no birth st.)    ki0047075b-MAL-ED     NEPAL                          observed             NA                0.0669762   0.0330018   0.1009506
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU                           observed             NA                0.3610103   0.3014187   0.4206019
0-6 months (no birth st.)    ki0047075b-MAL-ED     SOUTH AFRICA                   observed             NA                0.3103903   0.2525326   0.3682480
0-6 months (no birth st.)    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   observed             NA                0.3047700   0.2425966   0.3669434
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN                       observed             NA                0.6077580   0.5467893   0.6687266
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL                          observed             NA                0.1872221   0.1499610   0.2244832
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH                     observed             NA                0.1354104   0.1296133   0.1412075
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH                     observed             NA                0.0963749   0.0427185   0.1500313
6-24 months                  ki0047075b-MAL-ED     BANGLADESH                     observed             NA                0.4101531   0.3327173   0.4875888
6-24 months                  ki0047075b-MAL-ED     INDIA                          observed             NA                0.4097486   0.3318423   0.4876549
6-24 months                  ki0047075b-MAL-ED     NEPAL                          observed             NA                0.2129384   0.1550817   0.2707951
6-24 months                  ki0047075b-MAL-ED     PERU                           observed             NA                0.3987862   0.3196366   0.4779358
6-24 months                  ki0047075b-MAL-ED     SOUTH AFRICA                   observed             NA                0.3593316   0.2838134   0.4348498
6-24 months                  ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   observed             NA                0.7766965   0.7081470   0.8452460
6-24 months                  ki1113344-GMS-Nepal   NEPAL                          observed             NA                0.5635333   0.5105640   0.6165026
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH                     observed             NA                0.2170336   0.2074608   0.2266065
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH                     observed             NA                0.3522650   0.2567613   0.4477687


### Parameter: RR


agecat                       studyid               country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  --------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH                     optimal              observed          0.9708779   0.8490563   1.1101782
0-24 months (no birth st.)   ki0047075b-MAL-ED     BRAZIL                         optimal              observed          0.4363694   0.2161169   0.8810893
0-24 months (no birth st.)   ki0047075b-MAL-ED     INDIA                          optimal              observed          0.5362508   0.3704073   0.7763479
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL                          optimal              observed          0.9787990   0.7439672   1.2877549
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU                           optimal              observed          0.9516918   0.8881927   1.0197306
0-24 months (no birth st.)   ki0047075b-MAL-ED     SOUTH AFRICA                   optimal              observed          0.9621992   0.8812214   1.0506182
0-24 months (no birth st.)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.8825869   0.8151466   0.9556068
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL                          optimal              observed          0.8319549   0.7236576   0.9564592
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH                     optimal              observed          0.9160090   0.9025419   0.9296769
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH                     optimal              observed          0.9512519   0.8935613   1.0126672
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH                     optimal              observed          0.9538963   0.8447009   1.0772075
0-6 months (no birth st.)    ki0047075b-MAL-ED     BRAZIL                         optimal              observed          0.9901350   0.6498436   1.5086204
0-6 months (no birth st.)    ki0047075b-MAL-ED     INDIA                          optimal              observed          0.5285353   0.2487631   1.1229542
0-6 months (no birth st.)    ki0047075b-MAL-ED     NEPAL                          optimal              observed          0.8472337   0.5115564   1.4031784
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU                           optimal              observed          0.8649599   0.7648822   0.9781319
0-6 months (no birth st.)    ki0047075b-MAL-ED     SOUTH AFRICA                   optimal              observed          0.7722674   0.6175089   0.9658111
0-6 months (no birth st.)    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.4863234   0.3245990   0.7286233
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN                       optimal              observed          0.9978716   0.9500826   1.0480645
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL                          optimal              observed          0.5757525   0.3079822   1.0763315
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH                     optimal              observed          0.8813563   0.8579953   0.9053535
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH                     optimal              observed          0.8045295   0.5822621   1.1116431
6-24 months                  ki0047075b-MAL-ED     BANGLADESH                     optimal              observed          0.9950214   0.9228782   1.0728042
6-24 months                  ki0047075b-MAL-ED     INDIA                          optimal              observed          0.4449760   0.2410181   0.8215303
6-24 months                  ki0047075b-MAL-ED     NEPAL                          optimal              observed          0.9905689   0.7515061   1.3056802
6-24 months                  ki0047075b-MAL-ED     PERU                           optimal              observed          0.9905796   0.7756051   1.2651388
6-24 months                  ki0047075b-MAL-ED     SOUTH AFRICA                   optimal              observed          0.9329183   0.7930733   1.0974226
6-24 months                  ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.9194905   0.8242653   1.0257168
6-24 months                  ki1113344-GMS-Nepal   NEPAL                          optimal              observed          0.8377199   0.7605581   0.9227102
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH                     optimal              observed          0.8724206   0.8389526   0.9072238
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH                     optimal              observed          0.8421061   0.4830011   1.4682009
