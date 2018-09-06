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

**Intervention Variable:** anywast06

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

agecat         studyid                    country                        anywast06    n_cell      n
-------------  -------------------------  -----------------------------  ----------  -------  -----
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0               189    244
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                55    244
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0               167    180
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                13    180
0-3 months     ki0047075b-MAL-ED          INDIA                          0               137    201
0-3 months     ki0047075b-MAL-ED          INDIA                          1                64    201
0-3 months     ki0047075b-MAL-ED          NEPAL                          0               143    175
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                32    175
0-3 months     ki0047075b-MAL-ED          PERU                           0               261    271
0-3 months     ki0047075b-MAL-ED          PERU                           1                10    271
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0               203    229
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                26    229
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               218    229
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                11    229
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                34     87
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                53     87
0-3 months     ki1000108-IRC              INDIA                          0               158    377
0-3 months     ki1000108-IRC              INDIA                          1               219    377
0-3 months     ki1000109-EE               PAKISTAN                       0               434    594
0-3 months     ki1000109-EE               PAKISTAN                       1               160    594
0-3 months     ki1000109-ResPak           PAKISTAN                       0                47     78
0-3 months     ki1000109-ResPak           PAKISTAN                       1                31     78
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0               468    634
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1               166    634
0-3 months     ki1101329-Keneba           GAMBIA                         0              1047   1276
0-3 months     ki1101329-Keneba           GAMBIA                         1               229   1276
0-3 months     ki1114097-CMIN             BANGLADESH                     0                34     43
0-3 months     ki1114097-CMIN             BANGLADESH                     1                 9     43
0-3 months     ki1114097-CMIN             PERU                           0                79     93
0-3 months     ki1114097-CMIN             PERU                           1                14     93
0-3 months     ki1114097-CONTENT          PERU                           0                29     29
0-3 months     ki1114097-CONTENT          PERU                           1                 0     29
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0               180    231
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                51    231
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0               194    208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                14    208
3-6 months     ki0047075b-MAL-ED          INDIA                          0               156    229
3-6 months     ki0047075b-MAL-ED          INDIA                          1                73    229
3-6 months     ki0047075b-MAL-ED          NEPAL                          0               191    233
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                42    233
3-6 months     ki0047075b-MAL-ED          PERU                           0               258    267
3-6 months     ki0047075b-MAL-ED          PERU                           1                 9    267
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0               214    241
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                27    241
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               228    239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                11    239
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0               142    307
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1               165    307
3-6 months     ki1000108-IRC              INDIA                          0               160    397
3-6 months     ki1000108-IRC              INDIA                          1               237    397
3-6 months     ki1000109-EE               PAKISTAN                       0               482    662
3-6 months     ki1000109-EE               PAKISTAN                       1               180    662
3-6 months     ki1000109-ResPak           PAKISTAN                       0                91    156
3-6 months     ki1000109-ResPak           PAKISTAN                       1                65    156
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0               426    574
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1               148    574
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              1401   1660
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               259   1660
3-6 months     ki1101329-Keneba           GAMBIA                         0              1116   1397
3-6 months     ki1101329-Keneba           GAMBIA                         1               281   1397
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0               622    942
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1               320    942
3-6 months     ki1114097-CMIN             BANGLADESH                     0               153    185
3-6 months     ki1114097-CMIN             BANGLADESH                     1                32    185
3-6 months     ki1114097-CMIN             PERU                           0               373    407
3-6 months     ki1114097-CMIN             PERU                           1                34    407
3-6 months     ki1114097-CONTENT          PERU                           0               210    214
3-6 months     ki1114097-CONTENT          PERU                           1                 4    214
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     0               170    220
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                50    220
6-12 months    ki0047075b-MAL-ED          BRAZIL                         0               180    194
6-12 months    ki0047075b-MAL-ED          BRAZIL                         1                14    194
6-12 months    ki0047075b-MAL-ED          INDIA                          0               152    224
6-12 months    ki0047075b-MAL-ED          INDIA                          1                72    224
6-12 months    ki0047075b-MAL-ED          NEPAL                          0               189    230
6-12 months    ki0047075b-MAL-ED          NEPAL                          1                41    230
6-12 months    ki0047075b-MAL-ED          PERU                           0               227    237
6-12 months    ki0047075b-MAL-ED          PERU                           1                10    237
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               205    232
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                27    232
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               212    223
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                11    223
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0               151    321
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1               170    321
6-12 months    ki1000108-IRC              INDIA                          0               163    400
6-12 months    ki1000108-IRC              INDIA                          1               237    400
6-12 months    ki1000109-EE               PAKISTAN                       0                 6      8
6-12 months    ki1000109-EE               PAKISTAN                       1                 2      8
6-12 months    ki1000109-ResPak           PAKISTAN                       0                78    138
6-12 months    ki1000109-ResPak           PAKISTAN                       1                60    138
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0               411    545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1               134    545
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               924   1083
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               159   1083
6-12 months    ki1101329-Keneba           GAMBIA                         0              1050   1302
6-12 months    ki1101329-Keneba           GAMBIA                         1               252   1302
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      0               167    171
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                 4    171
6-12 months    ki1113344-GMS-Nepal        NEPAL                          0               642    950
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1               308    950
6-12 months    ki1114097-CMIN             BANGLADESH                     0               137    164
6-12 months    ki1114097-CMIN             BANGLADESH                     1                27    164
6-12 months    ki1114097-CMIN             PERU                           0               327    357
6-12 months    ki1114097-CMIN             PERU                           1                30    357
6-12 months    ki1114097-CONTENT          PERU                           0               209    213
6-12 months    ki1114097-CONTENT          PERU                           1                 4    213
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     0               157    206
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                49    206
12-24 months   ki0047075b-MAL-ED          BRAZIL                         0               153    165
12-24 months   ki0047075b-MAL-ED          BRAZIL                         1                12    165
12-24 months   ki0047075b-MAL-ED          INDIA                          0               152    225
12-24 months   ki0047075b-MAL-ED          INDIA                          1                73    225
12-24 months   ki0047075b-MAL-ED          NEPAL                          0               185    226
12-24 months   ki0047075b-MAL-ED          NEPAL                          1                41    226
12-24 months   ki0047075b-MAL-ED          PERU                           0               184    191
12-24 months   ki0047075b-MAL-ED          PERU                           1                 7    191
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               206    230
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                24    230
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               196    207
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                11    207
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0               147    320
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               173    320
12-24 months   ki1000108-IRC              INDIA                          0               161    396
12-24 months   ki1000108-IRC              INDIA                          1               235    396
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0               341    458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1               117    458
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 2      2
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0      2
12-24 months   ki1101329-Keneba           GAMBIA                         0               937   1147
12-24 months   ki1101329-Keneba           GAMBIA                         1               210   1147
12-24 months   ki1113344-GMS-Nepal        NEPAL                          0               508    734
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1               226    734
12-24 months   ki1114097-CMIN             BANGLADESH                     0               116    138
12-24 months   ki1114097-CMIN             BANGLADESH                     1                22    138
12-24 months   ki1114097-CMIN             PERU                           0               152    160
12-24 months   ki1114097-CMIN             PERU                           1                 8    160
12-24 months   ki1114097-CONTENT          PERU                           0                37     38
12-24 months   ki1114097-CONTENT          PERU                           1                 1     38


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

* agecat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-12 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-12 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-24 months, studyid: ki1114097-CONTENT, country: PERU

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/5f817526-cbbb-4b27-992f-7eb663978fed/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/5f817526-cbbb-4b27-992f-7eb663978fed/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0165969   -0.0503631    0.0171693
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0924997   -0.1445117   -0.0404877
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.1977338    0.1442830    0.2511846
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.1277361   -0.0665616    0.3220337
0-3 months     ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0105206   -0.0596077    0.0385665
0-3 months     ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0411543   -0.1013392    0.0190305
0-3 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0681973    0.0306026    0.1057920
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.0405982   -0.0124240    0.0936204
0-3 months     ki0047075b-MAL-ED          PERU                           0                    NA                -0.1646184   -0.1976480   -0.1315888
0-3 months     ki0047075b-MAL-ED          PERU                           1                    NA                 0.0076853   -0.1052953    0.1206658
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0950756   -0.1420900   -0.0480612
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.1549928   -0.2765296   -0.0334560
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0343623   -0.0724728    0.0037483
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2338230   -0.5060833    0.0384373
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.1861414   -0.3409289   -0.0313538
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0009033   -0.1430551    0.1412485
0-3 months     ki1000108-IRC              INDIA                          0                    NA                -0.1537526   -0.2309217   -0.0765834
0-3 months     ki1000108-IRC              INDIA                          1                    NA                -0.3364595   -0.4125916   -0.2603274
0-3 months     ki1000109-EE               PAKISTAN                       0                    NA                -0.3544003   -0.3985278   -0.3102727
0-3 months     ki1000109-EE               PAKISTAN                       1                    NA                -0.4983669   -0.5943029   -0.4024309
0-3 months     ki1000109-ResPak           PAKISTAN                       0                    NA                -0.3361382   -0.4854161   -0.1868604
0-3 months     ki1000109-ResPak           PAKISTAN                       1                    NA                 0.0224740   -0.2445504    0.2894983
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0307799   -0.0511778   -0.0103820
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0710133   -0.1091253   -0.0329013
0-3 months     ki1101329-Keneba           GAMBIA                         0                    NA                -0.2756415   -0.3004933   -0.2507897
0-3 months     ki1101329-Keneba           GAMBIA                         1                    NA                -0.3026492   -0.3683605   -0.2369380
0-3 months     ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0336430   -0.0410730    0.1083591
0-3 months     ki1114097-CMIN             BANGLADESH                     1                    NA                 0.1207314   -0.0669332    0.3083959
0-3 months     ki1114097-CMIN             PERU                           0                    NA                -0.1128726   -0.1859270   -0.0398182
0-3 months     ki1114097-CMIN             PERU                           1                    NA                -0.1456546   -0.2785890   -0.0127203
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0239655   -0.0484474    0.0005164
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0690418   -0.1018765   -0.0362072
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0617931    0.0234337    0.1001525
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.0069085   -0.0724054    0.0862225
3-6 months     ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0239675   -0.0543855    0.0064505
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0733225   -0.1227006   -0.0239445
3-6 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0222905   -0.0522065    0.0076256
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0176510   -0.0746730    0.0393710
3-6 months     ki0047075b-MAL-ED          PERU                           0                    NA                 0.0319130    0.0000897    0.0637362
3-6 months     ki0047075b-MAL-ED          PERU                           1                    NA                -0.1025569   -0.1864345   -0.0186793
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0065130   -0.0332405    0.0462666
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.0519347   -0.1798499    0.0759804
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0761289   -0.1087944   -0.0434633
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0570055   -0.0546888    0.1686999
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0646484   -0.1366558    0.0073590
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.1266310   -0.1896422   -0.0636198
3-6 months     ki1000108-IRC              INDIA                          0                    NA                -0.0364795   -0.0801409    0.0071819
3-6 months     ki1000108-IRC              INDIA                          1                    NA                -0.0587601   -0.0967022   -0.0208180
3-6 months     ki1000109-EE               PAKISTAN                       0                    NA                 0.0819773    0.0510756    0.1128790
3-6 months     ki1000109-EE               PAKISTAN                       1                    NA                 0.0341776   -0.0225708    0.0909260
3-6 months     ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0213036   -0.0449407    0.0875479
3-6 months     ki1000109-ResPak           PAKISTAN                       1                    NA                 0.0598784   -0.0717806    0.1915374
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0222518   -0.0403544   -0.0041492
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0424017   -0.0783133   -0.0064900
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0813388   -0.0985879   -0.0640897
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1013568   -0.1496279   -0.0530857
3-6 months     ki1101329-Keneba           GAMBIA                         0                    NA                -0.0103561   -0.0297984    0.0090862
3-6 months     ki1101329-Keneba           GAMBIA                         1                    NA                -0.0413527   -0.0888987    0.0061932
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.1398694   -0.1610593   -0.1186795
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.2164584   -0.2491680   -0.1837489
3-6 months     ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0052930   -0.0403703    0.0297842
3-6 months     ki1114097-CMIN             BANGLADESH                     1                    NA                -0.0262037   -0.1069038    0.0544965
3-6 months     ki1114097-CMIN             PERU                           0                    NA                -0.0573089   -0.0809956   -0.0336221
3-6 months     ki1114097-CMIN             PERU                           1                    NA                -0.0601232   -0.1237605    0.0035141
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0794697   -0.0909502   -0.0679892
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0616369   -0.0780419   -0.0452319
6-12 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0095122   -0.0105912    0.0296157
6-12 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.0296652   -0.0994609    0.0401306
6-12 months    ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0911187   -0.1048552   -0.0773822
6-12 months    ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0509119   -0.0716273   -0.0301965
6-12 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0516455   -0.0634892   -0.0398018
6-12 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0353016   -0.0548487   -0.0157545
6-12 months    ki0047075b-MAL-ED          PERU                           0                    NA                -0.0366417   -0.0511172   -0.0221661
6-12 months    ki0047075b-MAL-ED          PERU                           1                    NA                -0.0525444   -0.1042025   -0.0008862
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0577946   -0.0759368   -0.0396524
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.0949919   -0.1317341   -0.0582498
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1212608   -0.1373456   -0.1051759
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2317327   -0.2583532   -0.2051123
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0849518   -0.1175279   -0.0523758
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.1144027   -0.1401439   -0.0886616
6-12 months    ki1000108-IRC              INDIA                          0                    NA                -0.0186118   -0.0386039    0.0013803
6-12 months    ki1000108-IRC              INDIA                          1                    NA                -0.0311067   -0.0478542   -0.0143591
6-12 months    ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0377118    0.0014305    0.0739931
6-12 months    ki1000109-ResPak           PAKISTAN                       1                    NA                -0.0636647   -0.1325711    0.0052416
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0647253   -0.0728357   -0.0566149
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0524457   -0.0641750   -0.0407165
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0575039   -0.0672784   -0.0477294
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0739626   -0.0969551   -0.0509701
6-12 months    ki1101329-Keneba           GAMBIA                         0                    NA                -0.0589840   -0.0672678   -0.0507002
6-12 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.0731298   -0.0930678   -0.0531917
6-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0570961   -0.0665786   -0.0476135
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0706674   -0.0864794   -0.0548554
6-12 months    ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0760606   -0.0920479   -0.0600733
6-12 months    ki1114097-CMIN             BANGLADESH                     1                    NA                -0.0841521   -0.1210916   -0.0472126
6-12 months    ki1114097-CMIN             PERU                           0                    NA                -0.0970386   -0.1080020   -0.0860753
6-12 months    ki1114097-CMIN             PERU                           1                    NA                -0.0640666   -0.0966236   -0.0315096
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0183436   -0.0245336   -0.0121537
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0045428   -0.0122124    0.0031268
12-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0025590   -0.0083729    0.0134910
12-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.0482210   -0.0674742   -0.0289678
12-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0084463   -0.0147970   -0.0020955
12-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0128754   -0.0215342   -0.0042167
12-24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0288244   -0.0342549   -0.0233939
12-24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0222893   -0.0349233   -0.0096553
12-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                -0.0106537   -0.0176487   -0.0036588
12-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                 0.0274853   -0.0180632    0.0730338
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0177193   -0.0255501   -0.0098885
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.0050389   -0.0209963    0.0310741
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0386689   -0.0467198   -0.0306181
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0250606   -0.0337429   -0.0163784
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0527931   -0.0664456   -0.0391406
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0389511   -0.0524658   -0.0254363
12-24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0189722   -0.0298378   -0.0081066
12-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0398012   -0.0481116   -0.0314908
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0085023   -0.0127547   -0.0042498
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0070227   -0.0141982    0.0001528
12-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0209409   -0.0250757   -0.0168060
12-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0232062   -0.0323418   -0.0140707
12-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0152317   -0.0210363   -0.0094271
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0163119   -0.0261255   -0.0064983
12-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0297804   -0.0389056   -0.0206551
12-24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                -0.0410384   -0.0609933   -0.0210835
12-24 months   ki1114097-CMIN             PERU                           0                    NA                -0.0305638   -0.0378641   -0.0232635
12-24 months   ki1114097-CMIN             PERU                           1                    NA                -0.0485173   -0.0767554   -0.0202792


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0339062   -0.0659795   -0.0018330
0-3 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.1928587    0.1409027    0.2448147
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0204797   -0.0596747    0.0187152
0-3 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.0746202    0.0395269    0.1097135
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                -0.1581085   -0.1906285   -0.1255886
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.1018785   -0.1458569   -0.0579001
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0461667   -0.0847570   -0.0075763
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0732952   -0.1806423    0.0340519
0-3 months     ki1000108-IRC              INDIA                          NA                   NA                -0.2594964   -0.3154509   -0.2035418
0-3 months     ki1000109-EE               PAKISTAN                       NA                   NA                -0.3938516   -0.4364614   -0.3512419
0-3 months     ki1000109-ResPak           PAKISTAN                       NA                   NA                -0.1934958   -0.3384003   -0.0485914
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0413143   -0.0594662   -0.0231624
0-3 months     ki1101329-Keneba           GAMBIA                         NA                   NA                -0.2850538   -0.3091443   -0.2609633
0-3 months     ki1114097-CMIN             BANGLADESH                     NA                   NA                 0.0518708   -0.0198773    0.1236190
0-3 months     ki1114097-CMIN             PERU                           NA                   NA                -0.1173363   -0.1825933   -0.0520792
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0225211   -0.0456381    0.0005960
3-6 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0604904    0.0239698    0.0970111
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0401251   -0.0685271   -0.0117231
3-6 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0214542   -0.0480456    0.0051373
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                 0.0273803   -0.0036374    0.0583980
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0000528   -0.0382594    0.0381539
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0705448   -0.1027245   -0.0383652
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
6-12 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0065644   -0.0129183    0.0260472
6-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0776724   -0.0898619   -0.0654829
6-12 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0488126   -0.0594641   -0.0381610
6-12 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0373127   -0.0513600   -0.0232653
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0537724   -0.0711138   -0.0364310
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1240143   -0.1396706   -0.1083579
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
12-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.0013016   -0.0119070    0.0093038
12-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0098833   -0.0150187   -0.0047479
12-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0295113   -0.0345712   -0.0244514
12-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0092560   -0.0162726   -0.0022393
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0153445   -0.0229210   -0.0077680
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0393265   -0.0471437   -0.0315094
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0447636   -0.0549912   -0.0345359
12-24 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0317687   -0.0388357   -0.0247017
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0081718   -0.0120131   -0.0043304
12-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0201603   -0.0240062   -0.0163144
12-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0155649   -0.0206065   -0.0105234
12-24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                -0.0315963   -0.0399345   -0.0232582
12-24 months   ki1114097-CMIN             PERU                           NA                   NA                -0.0314615   -0.0385651   -0.0243578


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.0759028   -0.1357815   -0.0160241
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.0699977   -0.2709219    0.1309264
0-3 months     ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          1                    0                 -0.0306337   -0.1073873    0.0461198
0-3 months     ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.0275991   -0.0925035    0.0373052
0-3 months     ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           1                    0                  0.1723037    0.0536594    0.2909480
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -0.0599172   -0.1902245    0.0703901
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.1994607   -0.4744726    0.0755511
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.1852380   -0.0249198    0.3953959
0-3 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          1                    0                 -0.1827069   -0.2905849   -0.0748288
0-3 months     ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE               PAKISTAN                       1                    0                 -0.1439666   -0.2494345   -0.0384988
0-3 months     ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-ResPak           PAKISTAN                       1                    0                  0.3586122    0.0531968    0.6640277
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0402334   -0.0833871    0.0029204
0-3 months     ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         1                    0                 -0.0270077   -0.0971243    0.0431088
0-3 months     ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CMIN             BANGLADESH                     1                    0                  0.0870883   -0.1149030    0.2890796
0-3 months     ki1114097-CMIN             PERU                           0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CMIN             PERU                           1                    0                 -0.0327820   -0.1844556    0.1188915
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.0450763   -0.0851378   -0.0050149
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.0548846   -0.1422496    0.0324805
3-6 months     ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    0                 -0.0493550   -0.1048140    0.0061039
3-6 months     ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    0                  0.0046395   -0.0597537    0.0690327
3-6 months     ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           1                    0                 -0.1344699   -0.2241815   -0.0447582
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -0.0584477   -0.1922891    0.0753936
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  0.1331344    0.0168014    0.2494673
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0619826   -0.1576510    0.0336857
3-6 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          1                    0                 -0.0222806   -0.0782659    0.0337047
3-6 months     ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE               PAKISTAN                       1                    0                 -0.0477997   -0.1118858    0.0162865
3-6 months     ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-ResPak           PAKISTAN                       1                    0                  0.0385748   -0.1088132    0.1859629
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0201499   -0.0602348    0.0199351
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0200180   -0.0710966    0.0310607
3-6 months     ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         1                    0                 -0.0309966   -0.0823324    0.0203391
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0765890   -0.1154863   -0.0376918
3-6 months     ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             BANGLADESH                     1                    0                 -0.0209106   -0.1088842    0.0670630
3-6 months     ki1114097-CMIN             PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             PERU                           1                    0                 -0.0028143   -0.0706056    0.0649769
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.0178328   -0.0020674    0.0377330
6-12 months    ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.0391774   -0.1116261    0.0332713
6-12 months    ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA                          1                    0                  0.0402068    0.0155998    0.0648138
6-12 months    ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          NEPAL                          1                    0                  0.0163439   -0.0061325    0.0388203
6-12 months    ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          PERU                           1                    0                 -0.0159027   -0.0695086    0.0377032
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -0.0371973   -0.0778797    0.0034851
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.1104720   -0.1417643   -0.0791797
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0294509   -0.0708893    0.0119875
6-12 months    ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA                          1                    0                 -0.0124949   -0.0384877    0.0134980
6-12 months    ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000109-ResPak           PAKISTAN                       1                    0                 -0.1013766   -0.1792581   -0.0234950
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0122795   -0.0018770    0.0264361
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0164587   -0.0413638    0.0084463
6-12 months    ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1101329-Keneba           GAMBIA                         1                    0                 -0.0141458   -0.0357420    0.0074504
6-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0135714   -0.0320085    0.0048658
6-12 months    ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN             BANGLADESH                     1                    0                 -0.0080915   -0.0482250    0.0320420
6-12 months    ki1114097-CMIN             PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN             PERU                           1                    0                  0.0329720   -0.0013818    0.0673259
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.0138008    0.0039498    0.0236518
12-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.0507800   -0.0728224   -0.0287377
12-24 months   ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          1                    0                 -0.0044292   -0.0151672    0.0063089
12-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0                  0.0065351   -0.0072264    0.0202966
12-24 months   ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          PERU                           1                    0                  0.0381391   -0.0079434    0.0842215
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.0227582   -0.0044270    0.0499434
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0136083    0.0015552    0.0256614
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.0138420   -0.0047016    0.0323857
12-24 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA                          1                    0                 -0.0208290   -0.0343524   -0.0073055
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0014796   -0.0068138    0.0097729
12-24 months   ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1101329-Keneba           GAMBIA                         1                    0                 -0.0022654   -0.0122737    0.0077430
12-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0010802   -0.0124553    0.0102948
12-24 months   ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1114097-CMIN             BANGLADESH                     1                    0                 -0.0112580   -0.0331930    0.0106769
12-24 months   ki1114097-CMIN             PERU                           0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1114097-CMIN             PERU                           1                    0                 -0.0179535   -0.0471200    0.0112130
