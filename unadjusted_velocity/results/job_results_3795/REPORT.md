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

**Outcome Variable:** y_rate_haz

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
![](/tmp/6f679199-bd6b-4e7b-8512-490402976f5b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/6f679199-bd6b-4e7b-8512-490402976f5b/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0286106   -0.0605700    0.0033487
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.2132003   -0.4597993    0.0333988
0-3 months     ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0177525   -0.0589215    0.0234166
0-3 months     ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0569083   -0.1747131    0.0608965
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.1039000   -0.2146985    0.0068985
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                 0.1919466   -0.1556558    0.5395490
0-3 months     ki1000108-IRC              INDIA                          0                    NA                -0.2696984   -0.3280012   -0.2113956
0-3 months     ki1000108-IRC              INDIA                          1                    NA                -0.2122930   -0.3741696   -0.0504164
0-3 months     ki1000109-EE               PAKISTAN                       0                    NA                -0.3822390   -0.4266015   -0.3378765
0-3 months     ki1000109-EE               PAKISTAN                       1                    NA                -0.5546870   -0.6870533   -0.4223206
0-3 months     ki1000109-ResPak           PAKISTAN                       0                    NA                -0.2362023   -0.3866052   -0.0857993
0-3 months     ki1000109-ResPak           PAKISTAN                       1                    NA                 0.1339200   -0.3078040    0.5756439
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0389829   -0.0572345   -0.0207313
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.1375227   -0.2750453   -0.0000001
0-3 months     ki1101329-Keneba           GAMBIA                         0                    NA                -0.2787644   -0.3025834   -0.2549454
0-3 months     ki1101329-Keneba           GAMBIA                         1                    NA                -0.5462735   -0.7958082   -0.2967388
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0233773   -0.0468832    0.0001285
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                 0.0161823   -0.0869137    0.1192783
3-6 months     ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0337625   -0.0622693   -0.0052557
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    NA                -0.1147088   -0.2473934    0.0179758
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0969043   -0.1485086   -0.0452999
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.1042809   -0.2280103    0.0194484
3-6 months     ki1000108-IRC              INDIA                          0                    NA                -0.0552177   -0.0874681   -0.0229673
3-6 months     ki1000108-IRC              INDIA                          1                    NA                -0.0358004   -0.1164384    0.0448376
3-6 months     ki1000109-EE               PAKISTAN                       0                    NA                 0.0771192    0.0483910    0.1058474
3-6 months     ki1000109-EE               PAKISTAN                       1                    NA                -0.0282461   -0.1524225    0.0959304
3-6 months     ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0423529   -0.0277425    0.1124484
3-6 months     ki1000109-ResPak           PAKISTAN                       1                    NA                 0.0051858   -0.1993127    0.2096842
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0241357   -0.0405522   -0.0077192
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.1515279   -0.2910674   -0.0119884
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0798094   -0.0965889   -0.0630298
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2478728   -0.3579543   -0.1377913
3-6 months     ki1101329-Keneba           GAMBIA                         0                    NA                -0.0148690   -0.0332905    0.0035525
3-6 months     ki1101329-Keneba           GAMBIA                         1                    NA                -0.0858389   -0.2432772    0.0715994
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.1553132   -0.1752412   -0.1353851
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.2391789   -0.2851285   -0.1932293
3-6 months     ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0038663   -0.0360392    0.0283067
3-6 months     ki1114097-CMIN             BANGLADESH                     1                    NA                -0.0910816   -0.2991485    0.1169852
3-6 months     ki1114097-CMIN             PERU                           0                    NA                -0.0556566   -0.0782959   -0.0330172
3-6 months     ki1114097-CMIN             PERU                           1                    NA                -0.1702414   -0.2837168   -0.0567660
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0795412   -0.0900028   -0.0690796
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.1322607   -0.1919120   -0.0726094
6-12 months    ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0811548   -0.0933834   -0.0689263
6-12 months    ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0378177   -0.0930855    0.0174500
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0923780   -0.1151571   -0.0695989
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.1481780   -0.1926827   -0.1036734
6-12 months    ki1000108-IRC              INDIA                          0                    NA                -0.0188183   -0.0323425   -0.0052941
6-12 months    ki1000108-IRC              INDIA                          1                    NA                -0.0605391   -0.0966017   -0.0244765
6-12 months    ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0081836   -0.0308660    0.0472333
6-12 months    ki1000109-ResPak           PAKISTAN                       1                    NA                -0.1234509   -0.2044726   -0.0424293
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0632206   -0.0702133   -0.0562279
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0357220   -0.0877261    0.0162821
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0587567   -0.0680872   -0.0494263
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0999121   -0.1497383   -0.0500859
6-12 months    ki1101329-Keneba           GAMBIA                         0                    NA                -0.0612213   -0.0690277   -0.0534149
6-12 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.0817023   -0.1603996   -0.0030051
6-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0596556   -0.0683886   -0.0509225
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0747283   -0.0988827   -0.0505739
6-12 months    ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0773529   -0.0925567   -0.0621490
6-12 months    ki1114097-CMIN             BANGLADESH                     1                    NA                -0.0759161   -0.1463436   -0.0054885
6-12 months    ki1114097-CMIN             PERU                           0                    NA                -0.0953777   -0.1058636   -0.0848917
6-12 months    ki1114097-CMIN             PERU                           1                    NA                -0.0380500   -0.1271317    0.0510317
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0181076   -0.0236072   -0.0126079
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0092299   -0.0359091    0.0174494
12-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0104178   -0.0157371   -0.0050986
12-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0037359   -0.0229706    0.0154989
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0449365   -0.0562709   -0.0336021
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0438514   -0.0671786   -0.0205243
12-24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0280919   -0.0356333   -0.0205504
12-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0498235   -0.0685515   -0.0310955
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0089739   -0.0128053   -0.0051424
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0244229   -0.0065393    0.0553850
12-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0202316   -0.0241472   -0.0163159
12-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0176774   -0.0373747    0.0020198
12-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0159256   -0.0211009   -0.0107503
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0126969   -0.0311994    0.0058056


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0339062   -0.0659795   -0.0018330
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0204797   -0.0596747    0.0187152
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0732952   -0.1806423    0.0340519
0-3 months     ki1000108-IRC              INDIA                          NA                   NA                -0.2594964   -0.3154509   -0.2035418
0-3 months     ki1000109-EE               PAKISTAN                       NA                   NA                -0.3938516   -0.4364614   -0.3512419
0-3 months     ki1000109-ResPak           PAKISTAN                       NA                   NA                -0.1934958   -0.3384003   -0.0485914
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0413143   -0.0594662   -0.0231624
0-3 months     ki1101329-Keneba           GAMBIA                         NA                   NA                -0.2850538   -0.3091443   -0.2609633
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0225211   -0.0456381    0.0005960
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0401251   -0.0685271   -0.0117231
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0979615   -0.1455947   -0.0503283
3-6 months     ki1000108-IRC              INDIA                          NA                   NA                -0.0518918   -0.0819849   -0.0217987
3-6 months     ki1000109-EE               PAKISTAN                       NA                   NA                 0.0701161    0.0419135    0.0983187
3-6 months     ki1000109-ResPak           PAKISTAN                       NA                   NA                 0.0387792   -0.0275800    0.1051384
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0272428   -0.0436954   -0.0107902
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0844665   -0.1011169   -0.0678162
3-6 months     ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0167995   -0.0352345    0.0016355
3-6 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.1659967   -0.1845182   -0.1474752
3-6 months     ki1114097-CMIN             BANGLADESH                     NA                   NA                -0.0085806   -0.0411510    0.0239898
3-6 months     ki1114097-CMIN             PERU                           NA                   NA                -0.0576273   -0.0800097   -0.0352449
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0807393   -0.0911050   -0.0703737
6-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0776724   -0.0898619   -0.0654829
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.1005481   -0.1211684   -0.0799278
6-12 months    ki1000108-IRC              INDIA                          NA                   NA                -0.0260151   -0.0389122   -0.0131180
6-12 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                -0.0070783   -0.0435451    0.0293884
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0626151   -0.0695574   -0.0556729
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0598587   -0.0690454   -0.0506721
6-12 months    ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0617247   -0.0695829   -0.0538665
6-12 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0614960   -0.0697225   -0.0532696
6-12 months    ki1114097-CMIN             BANGLADESH                     NA                   NA                -0.0773003   -0.0921728   -0.0624278
6-12 months    ki1114097-CMIN             PERU                           NA                   NA                -0.0939324   -0.1044393   -0.0834255
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0178490   -0.0232486   -0.0124494
12-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0098833   -0.0150187   -0.0047479
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0447636   -0.0549912   -0.0345359
12-24 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0317687   -0.0388357   -0.0247017
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0081718   -0.0120131   -0.0043304
12-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0201603   -0.0240062   -0.0163144
12-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0155649   -0.0206065   -0.0105234


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.1845896   -0.4332510    0.0640718
0-3 months     ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          1                    0                 -0.0391558   -0.1639471    0.0856355
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.2958466   -0.0689872    0.6606804
0-3 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          1                    0                  0.0574054   -0.1146505    0.2294613
0-3 months     ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE               PAKISTAN                       1                    0                 -0.1724480   -0.3120506   -0.0328454
0-3 months     ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-ResPak           PAKISTAN                       1                    0                  0.3701222   -0.0965051    0.8367496
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0985398   -0.2372682    0.0401887
0-3 months     ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         1                    0                 -0.2675091   -0.5181780   -0.0168401
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.0395596   -0.0661820    0.1453013
3-6 months     ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    0                 -0.0809463   -0.2166586    0.0547660
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0073767   -0.1414362    0.1266829
3-6 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          1                    0                  0.0194173   -0.0674307    0.1062654
3-6 months     ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE               PAKISTAN                       1                    0                 -0.1053653   -0.2328215    0.0220910
3-6 months     ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-ResPak           PAKISTAN                       1                    0                 -0.0371672   -0.2533453    0.1790110
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.1273922   -0.2678940    0.0131096
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.1680634   -0.2794164   -0.0567104
3-6 months     ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         1                    0                 -0.0709699   -0.2294823    0.0875425
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0838658   -0.1339507   -0.0337808
3-6 months     ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             BANGLADESH                     1                    0                 -0.0872153   -0.2977549    0.1233242
3-6 months     ki1114097-CMIN             PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             PERU                           1                    0                 -0.1145849   -0.2302966    0.0011269
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.0527196   -0.1132813    0.0078422
6-12 months    ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA                          1                    0                  0.0433371   -0.0132673    0.0999415
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0558000   -0.1057955   -0.0058045
6-12 months    ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA                          1                    0                 -0.0417209   -0.0802360   -0.0032057
6-12 months    ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000109-ResPak           PAKISTAN                       1                    0                 -0.1316346   -0.2215756   -0.0416936
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0274986   -0.0249736    0.0799707
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0411554   -0.0918477    0.0095369
6-12 months    ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1101329-Keneba           GAMBIA                         1                    0                 -0.0204810   -0.0995645    0.0586025
6-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0150727   -0.0407573    0.0106119
6-12 months    ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN             BANGLADESH                     1                    0                  0.0014368   -0.0706132    0.0734867
6-12 months    ki1114097-CMIN             PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN             PERU                           1                    0                  0.0573276   -0.0323691    0.1470243
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.0088777   -0.0183625    0.0361179
12-24 months   ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          1                    0                  0.0066820   -0.0132747    0.0266387
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.0010850   -0.0248499    0.0270200
12-24 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA                          1                    0                 -0.0217317   -0.0419211   -0.0015422
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0333967    0.0021984    0.0645950
12-24 months   ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1101329-Keneba           GAMBIA                         1                    0                  0.0025541   -0.0175285    0.0226368
12-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.0032288   -0.0159839    0.0224414
