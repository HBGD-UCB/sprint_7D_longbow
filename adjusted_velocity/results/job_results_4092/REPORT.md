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

**Outcome Variable:** y_rate_len

## Predictor Variables

**Intervention Variable:** pers_wast

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* W_nrooms
* month
* brthmon
* impfloor
* delta_W_mage
* delta_meducyrs
* delta_W_nrooms
* delta_month
* delta_brthmon
* delta_impfloor

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country                        pers_wast    n_cell      n
-------------  -------------------------  -----------------------------  ----------  -------  -----
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0               237    244
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                 7    244
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0               180    180
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                 0    180
0-3 months     ki0047075b-MAL-ED          INDIA                          0               187    201
0-3 months     ki0047075b-MAL-ED          INDIA                          1                14    201
0-3 months     ki0047075b-MAL-ED          NEPAL                          0               172    175
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                 3    175
0-3 months     ki0047075b-MAL-ED          PERU                           0               271    271
0-3 months     ki0047075b-MAL-ED          PERU                           1                 0    271
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0               227    229
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                 2    229
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               229    229
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0    229
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                78     87
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                 9     87
0-3 months     ki1000108-IRC              INDIA                          0               310    377
0-3 months     ki1000108-IRC              INDIA                          1                67    377
0-3 months     ki1000109-EE               PAKISTAN                       0               554    594
0-3 months     ki1000109-EE               PAKISTAN                       1                40    594
0-3 months     ki1000109-ResPak           PAKISTAN                       0                69     78
0-3 months     ki1000109-ResPak           PAKISTAN                       1                 9     78
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0               619    634
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                15    634
0-3 months     ki1101329-Keneba           GAMBIA                         0              1246   1276
0-3 months     ki1101329-Keneba           GAMBIA                         1                30   1276
0-3 months     ki1114097-CMIN             BANGLADESH                     0                41     43
0-3 months     ki1114097-CMIN             BANGLADESH                     1                 2     43
0-3 months     ki1114097-CMIN             PERU                           0                89     93
0-3 months     ki1114097-CMIN             PERU                           1                 4     93
0-3 months     ki1114097-CONTENT          PERU                           0                29     29
0-3 months     ki1114097-CONTENT          PERU                           1                 0     29
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0               226    231
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                 5    231
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0               207    208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                 1    208
3-6 months     ki0047075b-MAL-ED          INDIA                          0               211    229
3-6 months     ki0047075b-MAL-ED          INDIA                          1                18    229
3-6 months     ki0047075b-MAL-ED          NEPAL                          0               229    233
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                 4    233
3-6 months     ki0047075b-MAL-ED          PERU                           0               267    267
3-6 months     ki0047075b-MAL-ED          PERU                           1                 0    267
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0               239    241
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                 2    241
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               239    239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0    239
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0               263    307
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                44    307
3-6 months     ki1000108-IRC              INDIA                          0               329    397
3-6 months     ki1000108-IRC              INDIA                          1                68    397
3-6 months     ki1000109-EE               PAKISTAN                       0               618    662
3-6 months     ki1000109-EE               PAKISTAN                       1                44    662
3-6 months     ki1000109-ResPak           PAKISTAN                       0               141    156
3-6 months     ki1000109-ResPak           PAKISTAN                       1                15    156
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0               560    574
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                14    574
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              1614   1660
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                46   1660
3-6 months     ki1101329-Keneba           GAMBIA                         0              1359   1397
3-6 months     ki1101329-Keneba           GAMBIA                         1                38   1397
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0               822    942
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1               120    942
3-6 months     ki1114097-CMIN             BANGLADESH                     0               175    185
3-6 months     ki1114097-CMIN             BANGLADESH                     1                10    185
3-6 months     ki1114097-CMIN             PERU                           0               400    407
3-6 months     ki1114097-CMIN             PERU                           1                 7    407
3-6 months     ki1114097-CONTENT          PERU                           0               214    214
3-6 months     ki1114097-CONTENT          PERU                           1                 0    214
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     0               215    220
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                 5    220
6-12 months    ki0047075b-MAL-ED          BRAZIL                         0               193    194
6-12 months    ki0047075b-MAL-ED          BRAZIL                         1                 1    194
6-12 months    ki0047075b-MAL-ED          INDIA                          0               206    224
6-12 months    ki0047075b-MAL-ED          INDIA                          1                18    224
6-12 months    ki0047075b-MAL-ED          NEPAL                          0               226    230
6-12 months    ki0047075b-MAL-ED          NEPAL                          1                 4    230
6-12 months    ki0047075b-MAL-ED          PERU                           0               237    237
6-12 months    ki0047075b-MAL-ED          PERU                           1                 0    237
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               230    232
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 2    232
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               223    223
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0    223
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0               274    321
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                47    321
6-12 months    ki1000108-IRC              INDIA                          0               331    400
6-12 months    ki1000108-IRC              INDIA                          1                69    400
6-12 months    ki1000109-EE               PAKISTAN                       0                 6      8
6-12 months    ki1000109-EE               PAKISTAN                       1                 2      8
6-12 months    ki1000109-ResPak           PAKISTAN                       0               122    138
6-12 months    ki1000109-ResPak           PAKISTAN                       1                16    138
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0               533    545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                12    545
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              1054   1083
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                29   1083
6-12 months    ki1101329-Keneba           GAMBIA                         0              1270   1302
6-12 months    ki1101329-Keneba           GAMBIA                         1                32   1302
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      0               167    171
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                 4    171
6-12 months    ki1113344-GMS-Nepal        NEPAL                          0               834    950
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1               116    950
6-12 months    ki1114097-CMIN             BANGLADESH                     0               158    164
6-12 months    ki1114097-CMIN             BANGLADESH                     1                 6    164
6-12 months    ki1114097-CMIN             PERU                           0               348    357
6-12 months    ki1114097-CMIN             PERU                           1                 9    357
6-12 months    ki1114097-CONTENT          PERU                           0               213    213
6-12 months    ki1114097-CONTENT          PERU                           1                 0    213
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     0               200    206
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 6    206
12-24 months   ki0047075b-MAL-ED          BRAZIL                         0               164    165
12-24 months   ki0047075b-MAL-ED          BRAZIL                         1                 1    165
12-24 months   ki0047075b-MAL-ED          INDIA                          0               207    225
12-24 months   ki0047075b-MAL-ED          INDIA                          1                18    225
12-24 months   ki0047075b-MAL-ED          NEPAL                          0               222    226
12-24 months   ki0047075b-MAL-ED          NEPAL                          1                 4    226
12-24 months   ki0047075b-MAL-ED          PERU                           0               191    191
12-24 months   ki0047075b-MAL-ED          PERU                           1                 0    191
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               228    230
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 2    230
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               207    207
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0    207
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0               269    320
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                51    320
12-24 months   ki1000108-IRC              INDIA                          0               329    396
12-24 months   ki1000108-IRC              INDIA                          1                67    396
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0               447    458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                11    458
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 2      2
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0      2
12-24 months   ki1101329-Keneba           GAMBIA                         0              1115   1147
12-24 months   ki1101329-Keneba           GAMBIA                         1                32   1147
12-24 months   ki1113344-GMS-Nepal        NEPAL                          0               652    734
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1                82    734
12-24 months   ki1114097-CMIN             BANGLADESH                     0               134    138
12-24 months   ki1114097-CMIN             BANGLADESH                     1                 4    138
12-24 months   ki1114097-CMIN             PERU                           0               157    160
12-24 months   ki1114097-CMIN             PERU                           1                 3    160
12-24 months   ki1114097-CONTENT          PERU                           0                38     38
12-24 months   ki1114097-CONTENT          PERU                           1                 0     38


The following strata were considered:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-3 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 12-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 12-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 3-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 3-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-12 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-12 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-12 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-12 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6-12 months, studyid: ki1114097-CONTENT, country: PERU

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-12 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-12 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 12-24 months, studyid: ki1114097-CONTENT, country: PERU

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/048bdc0d-cc59-4095-81ca-903bd803be9e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/048bdc0d-cc59-4095-81ca-903bd803be9e/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                3.5743398   3.5115720   3.6371076
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                3.1945689   2.7473894   3.6417485
0-3 months     ki0047075b-MAL-ED          INDIA                          0                    NA                3.5826361   3.5006549   3.6646173
0-3 months     ki0047075b-MAL-ED          INDIA                          1                    NA                3.6154046   3.4428500   3.7879592
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                3.4602273   3.2304210   3.6900337
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                4.0721705   3.4180044   4.7263366
0-3 months     ki1000108-IRC              INDIA                          0                    NA                3.1435273   3.0277161   3.2593385
0-3 months     ki1000108-IRC              INDIA                          1                    NA                3.3089076   2.9802607   3.6375544
0-3 months     ki1000109-EE               PAKISTAN                       0                    NA                2.6815277   2.5946948   2.7683607
0-3 months     ki1000109-EE               PAKISTAN                       1                    NA                2.3298130   2.1305347   2.5290912
0-3 months     ki1000109-ResPak           PAKISTAN                       0                    NA                2.9810265   2.6836484   3.2784045
0-3 months     ki1000109-ResPak           PAKISTAN                       1                    NA                3.7856034   2.9456041   4.6256027
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                3.4864272   3.4470162   3.5258381
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                3.3760061   3.2174048   3.5346074
0-3 months     ki1101329-Keneba           GAMBIA                         0                    NA                3.1554781   3.1084079   3.2025482
0-3 months     ki1101329-Keneba           GAMBIA                         1                    NA                2.7827017   2.5167848   3.0486187
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                1.9262837   1.8761470   1.9764203
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                2.0077108   1.7934907   2.2219309
3-6 months     ki0047075b-MAL-ED          INDIA                          0                    NA                1.8986806   1.8373774   1.9599839
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    NA                1.7084361   1.4187642   1.9981080
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                1.8042856   1.6950585   1.9135128
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                1.8008134   1.5392723   2.0623545
3-6 months     ki1000108-IRC              INDIA                          0                    NA                1.8685286   1.8009333   1.9361238
3-6 months     ki1000108-IRC              INDIA                          1                    NA                1.9314822   1.7796584   2.0833061
3-6 months     ki1000109-EE               PAKISTAN                       0                    NA                2.0402160   1.9789357   2.1014963
3-6 months     ki1000109-EE               PAKISTAN                       1                    NA                1.8299038   1.5791904   2.0806172
3-6 months     ki1000109-ResPak           PAKISTAN                       0                    NA                2.0766832   1.9269094   2.2264571
3-6 months     ki1000109-ResPak           PAKISTAN                       1                    NA                1.9942509   1.5611375   2.4273643
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                1.9725868   1.9376313   2.0075423
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                2.0161414   1.8564910   2.1757917
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                1.8048339   1.7686438   1.8410239
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.4721211   1.2934711   1.6507711
3-6 months     ki1101329-Keneba           GAMBIA                         0                    NA                1.9974702   1.9582222   2.0367181
3-6 months     ki1101329-Keneba           GAMBIA                         1                    NA                1.4485232   1.2674632   1.6295832
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                1.7318949   1.6907615   1.7730283
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                1.5273113   1.4482383   1.6063842
3-6 months     ki1114097-CMIN             BANGLADESH                     0                    NA                1.9618598   1.8925255   2.0311941
3-6 months     ki1114097-CMIN             BANGLADESH                     1                    NA                1.6961255   1.2587324   2.1335186
3-6 months     ki1114097-CMIN             PERU                           0                    NA                1.8984779   1.8503539   1.9466018
3-6 months     ki1114097-CMIN             PERU                           1                    NA                1.6408582   1.3954932   1.8862232
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                1.1163287   1.0912422   1.1414153
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                1.0311465   0.8899932   1.1722998
6-12 months    ki0047075b-MAL-ED          INDIA                          0                    NA                1.1122821   1.0838247   1.1407394
6-12 months    ki0047075b-MAL-ED          INDIA                          1                    NA                1.2213359   1.0967769   1.3458948
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                1.0779934   1.0259496   1.1300372
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.9579822   0.8680941   1.0478703
6-12 months    ki1000108-IRC              INDIA                          0                    NA                1.2616304   1.2306077   1.2926531
6-12 months    ki1000108-IRC              INDIA                          1                    NA                1.1859164   1.1070115   1.2648213
6-12 months    ki1000109-ResPak           PAKISTAN                       0                    NA                1.3306945   1.2418728   1.4195162
6-12 months    ki1000109-ResPak           PAKISTAN                       1                    NA                1.0342972   0.8318000   1.2367944
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                1.1722022   1.1547257   1.1896786
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                1.2285156   1.1392643   1.3177669
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                1.1994956   1.1776355   1.2213558
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.0947614   1.0051401   1.1843828
6-12 months    ki1101329-Keneba           GAMBIA                         0                    NA                1.1814562   1.1629440   1.1999684
6-12 months    ki1101329-Keneba           GAMBIA                         1                    NA                1.0314144   0.9559901   1.1068388
6-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                1.1737946   1.1530268   1.1945624
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                1.1276309   1.0694234   1.1858383
6-12 months    ki1114097-CMIN             BANGLADESH                     0                    NA                1.1011538   1.0649424   1.1373652
6-12 months    ki1114097-CMIN             BANGLADESH                     1                    NA                1.0889721   0.9186634   1.2592808
6-12 months    ki1114097-CMIN             PERU                           0                    NA                1.1084654   1.0834501   1.1334807
6-12 months    ki1114097-CMIN             PERU                           1                    NA                1.2399106   1.0624195   1.4174017
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.8439569   0.8276909   0.8602229
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.9132934   0.8427874   0.9837994
12-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.8771587   0.8590040   0.8953135
12-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.9393776   0.8878494   0.9909057
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.7455832   0.7157069   0.7754594
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.7226713   0.6623914   0.7829512
12-24 months   ki1000108-IRC              INDIA                          0                    NA                0.8388220   0.8182172   0.8594268
12-24 months   ki1000108-IRC              INDIA                          1                    NA                0.7953807   0.7531942   0.8375671
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.8561095   0.8440035   0.8682155
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.9244384   0.8571335   0.9917433
12-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.8464399   0.8354562   0.8574237
12-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.7853687   0.7443957   0.8263418
12-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.8367239   0.8213380   0.8521098
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.8494479   0.8034543   0.8954416


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                3.5634447   3.5006347   3.6262547
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                3.5764512   3.4977133   3.6551891
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                3.5235318   3.3031217   3.7439420
0-3 months     ki1000108-IRC              INDIA                          NA                   NA                3.1729204   3.0609523   3.2848884
0-3 months     ki1000109-EE               PAKISTAN                       NA                   NA                2.6575645   2.5739973   2.7411317
0-3 months     ki1000109-ResPak           PAKISTAN                       NA                   NA                3.0738623   2.7876913   3.3600332
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                3.4826706   3.4434873   3.5218539
0-3 months     ki1101329-Keneba           GAMBIA                         NA                   NA                3.1440476   3.0964801   3.1916152
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                1.9280462   1.8787523   1.9773401
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                1.8837264   1.8224393   1.9450135
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                1.8037880   1.7029866   1.9045894
3-6 months     ki1000108-IRC              INDIA                          NA                   NA                1.8806738   1.8168757   1.9444719
3-6 months     ki1000109-EE               PAKISTAN                       NA                   NA                2.0241201   1.9636505   2.0845898
3-6 months     ki1000109-ResPak           PAKISTAN                       NA                   NA                2.0694234   1.9275918   2.2112551
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.9654454   1.9303798   2.0005110
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.7957288   1.7598510   1.8316067
3-6 months     ki1101329-Keneba           GAMBIA                         NA                   NA                1.9931660   1.9537919   2.0325400
3-6 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                1.7057418   1.6666784   1.7448052
3-6 months     ki1114097-CMIN             BANGLADESH                     NA                   NA                1.9478477   1.8775639   2.0181315
3-6 months     ki1114097-CMIN             PERU                           NA                   NA                1.8940471   1.8464513   1.9416429
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                1.1143928   1.0896103   1.1391753
6-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                1.1210558   1.0926349   1.1494766
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                1.0595162   1.0116132   1.1074192
6-12 months    ki1000108-IRC              INDIA                          NA                   NA                1.2485668   1.2193308   1.2778028
6-12 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                1.2964732   1.2129800   1.3799664
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.1731762   1.1558671   1.1904853
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.1960560   1.1745115   1.2176004
6-12 months    ki1101329-Keneba           GAMBIA                         NA                   NA                1.1800762   1.1614756   1.1986767
6-12 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                1.1681560   1.1485303   1.1877817
6-12 months    ki1114097-CMIN             BANGLADESH                     NA                   NA                1.1007081   1.0652677   1.1361485
6-12 months    ki1114097-CMIN             PERU                           NA                   NA                1.1117791   1.0868951   1.1366632
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.8459764   0.8299714   0.8619814
12-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.8803730   0.8630530   0.8976931
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7419316   0.7150261   0.7688371
12-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.8294859   0.8099817   0.8489901
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.8575519   0.8455586   0.8695452
12-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.8455626   0.8347576   0.8563677
12-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.8378848   0.8224521   0.8533174


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.3797708   -0.8313340    0.0717924
0-3 months     ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          1                    0                  0.0327685   -0.1576887    0.2232257
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.6119432   -0.0814140    1.3053004
0-3 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          1                    0                  0.1653803   -0.1829254    0.5136859
0-3 months     ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE               PAKISTAN                       1                    0                 -0.3517148   -0.5676110   -0.1358186
0-3 months     ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-ResPak           PAKISTAN                       1                    0                  0.8045770   -0.0865081    1.6956620
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.1104211   -0.2739971    0.0531550
0-3 months     ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         1                    0                 -0.3727763   -0.6435841   -0.1019686
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.0814271   -0.1385818    0.3014361
3-6 months     ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    0                 -0.1902446   -0.4862631    0.1057740
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0034723   -0.2869054    0.2799608
3-6 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          1                    0                  0.0629537   -0.1013968    0.2273041
3-6 months     ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE               PAKISTAN                       1                    0                 -0.2103123   -0.4676008    0.0469763
3-6 months     ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-ResPak           PAKISTAN                       1                    0                 -0.0824324   -0.5404898    0.3756251
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0435546   -0.1200135    0.2071226
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.3327128   -0.5147788   -0.1506467
3-6 months     ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         1                    0                 -0.5489470   -0.7340307   -0.3638633
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.2045837   -0.2926771   -0.1164902
3-6 months     ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             BANGLADESH                     1                    0                 -0.2657343   -0.7086109    0.1771423
3-6 months     ki1114097-CMIN             PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             PERU                           1                    0                 -0.2576197   -0.5076595   -0.0075799
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.0851822   -0.2285474    0.0581830
6-12 months    ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA                          1                    0                  0.1090538   -0.0186100    0.2367177
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.1200112   -0.2229515   -0.0170709
6-12 months    ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA                          1                    0                 -0.0757140   -0.1603956    0.0089676
6-12 months    ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000109-ResPak           PAKISTAN                       1                    0                 -0.2963973   -0.5175009   -0.0752937
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0563134   -0.0345776    0.1472044
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.1047342   -0.1968085   -0.0126598
6-12 months    ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1101329-Keneba           GAMBIA                         1                    0                 -0.1500418   -0.2276366   -0.0724470
6-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0461637   -0.1079501    0.0156226
6-12 months    ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN             BANGLADESH                     1                    0                 -0.0121817   -0.1862975    0.1619341
6-12 months    ki1114097-CMIN             PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN             PERU                           1                    0                  0.1314452   -0.0478001    0.3106904
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.0693365   -0.0030215    0.1416945
12-24 months   ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          1                    0                  0.0622188    0.0076411    0.1167965
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0229118   -0.0901887    0.0443650
12-24 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA                          1                    0                 -0.0434414   -0.0899747    0.0030920
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0683289   -0.0000658    0.1367236
12-24 months   ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1101329-Keneba           GAMBIA                         1                    0                 -0.0610712   -0.1034504   -0.0186920
12-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.0127240   -0.0349773    0.0604254
