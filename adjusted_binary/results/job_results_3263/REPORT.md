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
![](/tmp/8bcb886a-eff2-4789-8432-2dd21cb54e62/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8bcb886a-eff2-4789-8432-2dd21cb54e62/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8bcb886a-eff2-4789-8432-2dd21cb54e62/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8bcb886a-eff2-4789-8432-2dd21cb54e62/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid               country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  --------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH                     0                    NA                0.5505186   0.3906070   0.7104302
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                0.5202782   0.4475859   0.5929704
0-24 months (no birth st.)   ki0047075b-MAL-ED     BRAZIL                         0                    NA                0.1198521   0.0536619   0.1860423
0-24 months (no birth st.)   ki0047075b-MAL-ED     BRAZIL                         1                    NA                0.1589105   0.0924358   0.2253853
0-24 months (no birth st.)   ki0047075b-MAL-ED     INDIA                          0                    NA                0.2517992   0.1323038   0.3712947
0-24 months (no birth st.)   ki0047075b-MAL-ED     INDIA                          1                    NA                0.6014833   0.5263158   0.6766507
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL                          0                    NA                0.2596539   0.1669517   0.3523561
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL                          1                    NA                0.2655506   0.1879028   0.3431983
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU                           0                    NA                0.6390496   0.5405415   0.7375577
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU                           1                    NA                0.5673858   0.4938201   0.6409516
0-24 months (no birth st.)   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                0.5148959   0.4379645   0.5918273
0-24 months (no birth st.)   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                0.5759104   0.4734637   0.6783571
0-24 months (no birth st.)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                0.8546633   0.7965840   0.9127425
0-24 months (no birth st.)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7964910   0.7138891   0.8790928
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL                          0                    NA                0.7126168   0.6017026   0.8235310
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL                          1                    NA                0.6379477   0.5878124   0.6880830
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                0.2816312   0.2648491   0.2984133
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                0.2535288   0.2451887   0.2618690
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
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU                           0                    NA                0.2236429   0.1376159   0.3096698
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU                           1                    NA                0.2642927   0.1973509   0.3312345
0-6 months (no birth st.)    ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                0.2974535   0.2281911   0.3667159
0-6 months (no birth st.)    ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                0.3307703   0.2355728   0.4259678
0-6 months (no birth st.)    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                0.3267139   0.2460979   0.4073298
0-6 months (no birth st.)    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2603349   0.1698250   0.3508447
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN                       0                    NA                0.6191887   0.3856050   0.8527724
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN                       1                    NA                0.6040515   0.5413727   0.6667302
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL                          0                    NA                0.1390540   0.0619242   0.2161837
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL                          1                    NA                0.1975974   0.1561468   0.2390479
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                0.1633575   0.1499590   0.1767559
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                0.1292072   0.1232436   0.1351709
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
6-24 months                  ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                0.3418913   0.2519582   0.4318244
6-24 months                  ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                0.4654832   0.3386816   0.5922847
6-24 months                  ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7885305   0.7016642   0.8753968
6-24 months                  ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7574657   0.6474665   0.8674650
6-24 months                  ki1113344-GMS-Nepal   NEPAL                          0                    NA                0.6049694   0.4810838   0.7288550
6-24 months                  ki1113344-GMS-Nepal   NEPAL                          1                    NA                0.5533261   0.4951904   0.6114617
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                0.2081386   0.1861715   0.2301056
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                0.2149348   0.2051810   0.2246886
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
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH                     1                    0                 0.9450692   0.6927263   1.2893343
0-24 months (no birth st.)   ki0047075b-MAL-ED     BRAZIL                         0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED     BRAZIL                         1                    0                 1.3258883   0.6627426   2.6525831
0-24 months (no birth st.)   ki0047075b-MAL-ED     INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED     INDIA                          1                    0                 2.3887414   1.4679769   3.8870403
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL                          1                    0                 1.0227098   0.6462338   1.6185090
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU                           0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU                           1                    0                 0.8878588   0.7299049   1.0799945
0-24 months (no birth st.)   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    0                 1.1184987   0.8894258   1.4065696
0-24 months (no birth st.)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    0                 0.9319354   0.8259548   1.0515148
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL                          1                    0                 0.8952184   0.7522357   1.0653790
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH                     1                    0                 0.9002158   0.8447329   0.9593428
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
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU                           1                    0                 1.1817623   0.7489407   1.8647165
0-6 months (no birth st.)    ki0047075b-MAL-ED     SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED     SOUTH AFRICA                   1                    0                 1.1120067   0.7760165   1.5934699
0-6 months (no birth st.)    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    0                 0.7968283   0.5200406   1.2209343
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN                       1                    0                 0.9755531   0.6615602   1.4385747
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL                          1                    0                 1.4210121   0.7855483   2.5705300
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH                     1                    0                 0.7909479   0.7228274   0.8654881
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
6-24 months                  ki0047075b-MAL-ED     SOUTH AFRICA                   1                    0                 1.3614946   0.9318589   1.9892148
6-24 months                  ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    0                 0.9606042   0.8009152   1.1521325
6-24 months                  ki1113344-GMS-Nepal   NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1113344-GMS-Nepal   NEPAL                          1                    0                 0.9146348   0.7272183   1.1503517
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH                     1                    0                 1.0326525   0.9259768   1.1516175
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH                     1                    0                 0.7083333   0.3234435   1.5512327


### Parameter: PAR


agecat                       studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH                     0                    NA                -0.0262468   -0.1709873    0.1184938
0-24 months (no birth st.)   ki0047075b-MAL-ED     BRAZIL                         0                    NA                 0.0187617   -0.0327582    0.0702817
0-24 months (no birth st.)   ki0047075b-MAL-ED     INDIA                          0                    NA                 0.2782008    0.1696216    0.3867799
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL                          0                    NA                 0.0035040   -0.0678672    0.0748752
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU                           0                    NA                -0.0414401   -0.1225039    0.0396238
0-24 months (no birth st.)   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                 0.0216894   -0.0236865    0.0670653
0-24 months (no birth st.)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0252794   -0.0648543    0.0142955
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL                          0                    NA                -0.0751761   -0.1768353    0.0264831
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                -0.0236305   -0.0394143   -0.0078467
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                -0.2418879   -0.5427892    0.0590134
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH                     0                    NA                -0.0530744   -0.1979239    0.0917751
0-6 months (no birth st.)    ki0047075b-MAL-ED     BRAZIL                         0                    NA                 0.0179724   -0.0255179    0.0614628
0-6 months (no birth st.)    ki0047075b-MAL-ED     INDIA                          0                    NA                 0.1038889    0.0149032    0.1928746
0-6 months (no birth st.)    ki0047075b-MAL-ED     NEPAL                          0                    NA                -0.0153673   -0.0577304    0.0269958
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU                           0                    NA                 0.1389069    0.0696622    0.2081517
0-6 months (no birth st.)    ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                 0.0114896   -0.0294127    0.0523919
0-6 months (no birth st.)    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0233963   -0.0723825    0.0255898
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN                       0                    NA                -0.0143500   -0.2389586    0.2102586
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL                          0                    NA                 0.0481498   -0.0248373    0.1211369
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                -0.0293532   -0.0419416   -0.0167648
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                -0.2359882   -0.5020718    0.0300954
6-24 months                  ki0047075b-MAL-ED     BANGLADESH                     0                    NA                -0.0183150   -0.2156593    0.1790293
6-24 months                  ki0047075b-MAL-ED     INDIA                          0                    NA                 0.2296037    0.1143864    0.3448210
6-24 months                  ki0047075b-MAL-ED     NEPAL                          0                    NA                 0.0176300   -0.0526333    0.0878934
6-24 months                  ki0047075b-MAL-ED     PERU                           0                    NA                 0.0084047   -0.1191672    0.1359767
6-24 months                  ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                 0.0170830   -0.0371621    0.0713282
6-24 months                  ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0123067   -0.0690919    0.0444785
6-24 months                  ki1113344-GMS-Nepal   NEPAL                          0                    NA                -0.0428392   -0.1556784    0.0700000
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                 0.0077884   -0.0128895    0.0284662
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                -0.1372549   -0.4969132    0.2224033


### Parameter: PAF


agecat                       studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH                     0                    NA                -0.0500633   -0.3659592    0.1927776
0-24 months (no birth st.)   ki0047075b-MAL-ED     BRAZIL                         0                    NA                 0.1353525   -0.3254098    0.4359365
0-24 months (no birth st.)   ki0047075b-MAL-ED     INDIA                          0                    NA                 0.5249071    0.2673347    0.6919285
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL                          0                    NA                 0.0133152   -0.2988168    0.2504356
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU                           0                    NA                -0.0693430   -0.2146330    0.0585679
0-24 months (no birth st.)   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                 0.0404212   -0.0480881    0.1214561
0-24 months (no birth st.)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0304797   -0.0797345    0.0165282
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL                          0                    NA                -0.1179342   -0.2897597    0.0310002
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                -0.0915908   -0.1549753   -0.0316848
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                -0.5694444   -1.4971926    0.0136300
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH                     0                    NA                -0.2484848   -1.1475038    0.2741739
0-6 months (no birth st.)    ki0047075b-MAL-ED     BRAZIL                         0                    NA                 0.1910755   -0.4219281    0.5398088
0-6 months (no birth st.)    ki0047075b-MAL-ED     INDIA                          0                    NA                 0.4832041   -0.1192888    0.7613860
0-6 months (no birth st.)    ki0047075b-MAL-ED     NEPAL                          0                    NA                -0.2294118   -1.0415814    0.2596654
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU                           0                    NA                 0.3831389    0.1549799    0.5496941
0-6 months (no birth st.)    ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                 0.0371900   -0.1045721    0.1607581
0-6 months (no birth st.)    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0771348   -0.2515662    0.0729860
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN                       0                    NA                -0.0237253   -0.4713329    0.2877114
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL                          0                    NA                 0.2572053   -0.2489884    0.5582474
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                -0.2190466   -0.3180889   -0.1274464
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                -2.4242424   -6.5989633   -0.5430310
6-24 months                  ki0047075b-MAL-ED     BANGLADESH                     0                    NA                -0.0446429   -0.6556225    0.3408650
6-24 months                  ki0047075b-MAL-ED     INDIA                          0                    NA                 0.5612535    0.1815281    0.7648075
6-24 months                  ki0047075b-MAL-ED     NEPAL                          0                    NA                 0.0829902   -0.3147181    0.3603899
6-24 months                  ki0047075b-MAL-ED     PERU                           0                    NA                 0.0210831   -0.3574431    0.2940564
6-24 months                  ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                 0.0475885   -0.1157605    0.1870230
6-24 months                  ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0158546   -0.0917962    0.0548048
6-24 months                  ki1113344-GMS-Nepal   NEPAL                          0                    NA                -0.0762087   -0.2971772    0.1071188
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                 0.0360694   -0.0644631    0.1271072
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                -0.3783784   -1.8501504    0.3333941
