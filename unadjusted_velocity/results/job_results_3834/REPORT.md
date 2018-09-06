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

unadjusted

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
![](/tmp/3310b866-1113-4d4e-a548-b9ade90dbbfb/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/3310b866-1113-4d4e-a548-b9ade90dbbfb/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                3.5743398   3.5115720   3.6371076
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                3.1945689   2.7473894   3.6417485
0-3 months     ki0047075b-MAL-ED          INDIA                          0                    NA                3.5846997   3.5025087   3.6668906
0-3 months     ki0047075b-MAL-ED          INDIA                          1                    NA                3.4662753   3.2034501   3.7291004
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                3.4602273   3.2304210   3.6900337
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                4.0721705   3.4180044   4.7263366
0-3 months     ki1000108-IRC              INDIA                          0                    NA                3.1432524   3.0274135   3.2590914
0-3 months     ki1000108-IRC              INDIA                          1                    NA                3.3101900   2.9810180   3.6393621
0-3 months     ki1000109-EE               PAKISTAN                       0                    NA                2.6815977   2.5944292   2.7687661
0-3 months     ki1000109-EE               PAKISTAN                       1                    NA                2.3247049   2.0805992   2.5688107
0-3 months     ki1000109-ResPak           PAKISTAN                       0                    NA                2.9810265   2.6836484   3.2784045
0-3 months     ki1000109-ResPak           PAKISTAN                       1                    NA                3.7856034   2.9456041   4.6256027
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                3.4866208   3.4472663   3.5259754
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                3.3196577   3.0060232   3.6332923
0-3 months     ki1101329-Keneba           GAMBIA                         0                    NA                3.1569246   3.1098184   3.2040308
0-3 months     ki1101329-Keneba           GAMBIA                         1                    NA                2.6092243   2.1317057   3.0867428
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                1.9262837   1.8761470   1.9764203
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                2.0077108   1.7934907   2.2219309
3-6 months     ki0047075b-MAL-ED          INDIA                          0                    NA                1.8986872   1.8373733   1.9600011
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    NA                1.7083532   1.4181641   1.9985423
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                1.8042856   1.6950585   1.9135128
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                1.8008134   1.5392723   2.0623545
3-6 months     ki1000108-IRC              INDIA                          0                    NA                1.8684459   1.8000473   1.9368446
3-6 months     ki1000108-IRC              INDIA                          1                    NA                1.9398355   1.7696015   2.1100694
3-6 months     ki1000109-EE               PAKISTAN                       0                    NA                2.0386065   1.9770992   2.1001139
3-6 months     ki1000109-EE               PAKISTAN                       1                    NA                1.8206521   1.5492929   2.0920114
3-6 months     ki1000109-ResPak           PAKISTAN                       0                    NA                2.0763702   1.9265908   2.2261497
3-6 months     ki1000109-ResPak           PAKISTAN                       1                    NA                2.0041236   1.5656092   2.4426380
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                1.9722820   1.9373473   2.0072166
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                1.6919819   1.3867130   1.9972507
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                1.8049737   1.7687607   1.8411867
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.4713558   1.2415098   1.7012018
3-6 months     ki1101329-Keneba           GAMBIA                         0                    NA                1.9979402   1.9586556   2.0372249
3-6 months     ki1101329-Keneba           GAMBIA                         1                    NA                1.8224234   1.4783348   2.1665120
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                1.7297510   1.6880867   1.7714153
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                1.5412792   1.4383684   1.6441901
3-6 months     ki1114097-CMIN             BANGLADESH                     0                    NA                1.9623847   1.8930298   2.0317395
3-6 months     ki1114097-CMIN             BANGLADESH                     1                    NA                1.6934503   1.2562597   2.1306410
3-6 months     ki1114097-CMIN             PERU                           0                    NA                1.8984779   1.8503539   1.9466018
3-6 months     ki1114097-CMIN             PERU                           1                    NA                1.6408582   1.3954932   1.8862232
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                1.1163287   1.0912422   1.1414153
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                1.0311465   0.8899932   1.1722998
6-12 months    ki0047075b-MAL-ED          INDIA                          0                    NA                1.1122840   1.0838196   1.1407484
6-12 months    ki0047075b-MAL-ED          INDIA                          1                    NA                1.2214441   1.0925160   1.3503722
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                1.0792562   1.0263999   1.1321124
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.9444362   0.8404375   1.0484349
6-12 months    ki1000108-IRC              INDIA                          0                    NA                1.2616221   1.2305850   1.2926592
6-12 months    ki1000108-IRC              INDIA                          1                    NA                1.1859390   1.1066127   1.2652653
6-12 months    ki1000109-ResPak           PAKISTAN                       0                    NA                1.3306603   1.2418385   1.4194820
6-12 months    ki1000109-ResPak           PAKISTAN                       1                    NA                1.0357970   0.8325546   1.2390394
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                1.1723145   1.1548313   1.1897978
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                1.2114485   1.0911175   1.3317795
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                1.1992758   1.1774025   1.2211490
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.0790323   0.9629353   1.1951293
6-12 months    ki1101329-Keneba           GAMBIA                         0                    NA                1.1818885   1.1633913   1.2003856
6-12 months    ki1101329-Keneba           GAMBIA                         1                    NA                1.1081503   0.9258943   1.2904062
6-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                1.1739215   1.1531356   1.1947074
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                1.1267041   1.0686514   1.1847568
6-12 months    ki1114097-CMIN             BANGLADESH                     0                    NA                1.1011538   1.0649424   1.1373652
6-12 months    ki1114097-CMIN             BANGLADESH                     1                    NA                1.0889721   0.9186634   1.2592808
6-12 months    ki1114097-CMIN             PERU                           0                    NA                1.1084654   1.0834501   1.1334807
6-12 months    ki1114097-CMIN             PERU                           1                    NA                1.2399106   1.0624195   1.4174017
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.8439569   0.8276909   0.8602229
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.9132934   0.8427874   0.9837994
12-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.8770025   0.8588451   0.8951598
12-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.9191346   0.8650885   0.9731807
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.7455843   0.7157079   0.7754606
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.7226655   0.6623835   0.7829476
12-24 months   ki1000108-IRC              INDIA                          0                    NA                0.8385286   0.8176902   0.8593671
12-24 months   ki1000108-IRC              INDIA                          1                    NA                0.7850819   0.7332934   0.8368705
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.8560759   0.8439673   0.8681846
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.9175298   0.8403701   0.9946894
12-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.8465130   0.8355291   0.8574968
12-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.8124489   0.7542500   0.8706478
12-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.8372784   0.8216840   0.8528727
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.8427064   0.7818303   0.9035824


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
0-3 months     ki0047075b-MAL-ED          INDIA                          1                    0                 -0.1184244   -0.3938013    0.1569524
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.6119432   -0.0814140    1.3053004
0-3 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          1                    0                  0.1669376   -0.1820221    0.5158973
0-3 months     ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE               PAKISTAN                       1                    0                 -0.3568927   -0.6160953   -0.0976902
0-3 months     ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-ResPak           PAKISTAN                       1                    0                  0.8045770   -0.0865081    1.6956620
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.1669631   -0.4830571    0.1491309
0-3 months     ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         1                    0                 -0.5477003   -1.0275367   -0.0678640
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.0814271   -0.1385818    0.3014361
3-6 months     ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    0                 -0.1903340   -0.4869299    0.1062619
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0034723   -0.2869054    0.2799608
3-6 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          1                    0                  0.0713895   -0.1120715    0.2548506
3-6 months     ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE               PAKISTAN                       1                    0                 -0.2179544   -0.4961971    0.0602883
3-6 months     ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-ResPak           PAKISTAN                       1                    0                 -0.0722466   -0.5356350    0.3911417
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.2803001   -0.5875614    0.0269612
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.3336179   -0.5662992   -0.1009367
3-6 months     ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         1                    0                 -0.1755168   -0.5218407    0.1708071
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.1884717   -0.2994967   -0.0774467
3-6 months     ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             BANGLADESH                     1                    0                 -0.2689343   -0.7115919    0.1737233
3-6 months     ki1114097-CMIN             PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             PERU                           1                    0                 -0.2576197   -0.5076595   -0.0075799
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.0851822   -0.2285474    0.0581830
6-12 months    ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA                          1                    0                  0.1091601   -0.0228727    0.2411929
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.1348200   -0.2514798   -0.0181601
6-12 months    ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA                          1                    0                 -0.0756831   -0.1608651    0.0094988
6-12 months    ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000109-ResPak           PAKISTAN                       1                    0                 -0.2948633   -0.5166668   -0.0730598
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0391340   -0.0824605    0.1607284
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.1202434   -0.2383830   -0.0021039
6-12 months    ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1101329-Keneba           GAMBIA                         1                    0                 -0.0737382   -0.2569304    0.1094540
6-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0472173   -0.1088791    0.0144444
6-12 months    ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN             BANGLADESH                     1                    0                 -0.0121817   -0.1862975    0.1619341
6-12 months    ki1114097-CMIN             PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN             PERU                           1                    0                  0.1314452   -0.0478001    0.3106904
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.0693365   -0.0030215    0.1416945
12-24 months   ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          1                    0                  0.0421322   -0.0148825    0.0991468
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0229187   -0.0901982    0.0443607
12-24 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA                          1                    0                 -0.0534467   -0.1092705    0.0023771
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0614538   -0.0166501    0.1395578
12-24 months   ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1101329-Keneba           GAMBIA                         1                    0                 -0.0340641   -0.0932904    0.0251622
12-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.0054280   -0.0574137    0.0682696
