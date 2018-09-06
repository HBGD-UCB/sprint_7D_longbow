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
![](/tmp/11b818f5-3f5a-49bb-96e7-2e7f4cda06ca/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/11b818f5-3f5a-49bb-96e7-2e7f4cda06ca/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                3.6015082   3.5351204   3.6678959
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                3.4471832   3.3593798   3.5349865
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0                    NA                4.0537395   3.9491760   4.1583030
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                4.0154113   3.5920600   4.4387625
0-3 months     ki0047075b-MAL-ED          INDIA                          0                    NA                3.5945757   3.4965133   3.6926382
0-3 months     ki0047075b-MAL-ED          INDIA                          1                    NA                3.5376534   3.4074500   3.6678569
0-3 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                3.8113283   3.7294935   3.8931632
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                3.7262617   3.6226525   3.8298709
0-3 months     ki0047075b-MAL-ED          PERU                           0                    NA                3.3014895   3.2370112   3.3659677
0-3 months     ki0047075b-MAL-ED          PERU                           1                    NA                3.6909445   3.4753950   3.9064939
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                3.4551071   3.3595653   3.5506489
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                3.3677071   3.1223559   3.6130582
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                3.5003229   3.4260153   3.5746304
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                1.9779856   1.7844552   2.1715160
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                3.2379288   2.9371648   3.5386927
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                3.6127860   3.3231260   3.9024460
0-3 months     ki1000108-IRC              INDIA                          0                    NA                3.3534068   3.1979272   3.5088863
0-3 months     ki1000108-IRC              INDIA                          1                    NA                3.0427086   2.8889504   3.1964669
0-3 months     ki1000109-EE               PAKISTAN                       0                    NA                2.7294490   2.6415541   2.8173439
0-3 months     ki1000109-EE               PAKISTAN                       1                    NA                2.4523379   2.2649420   2.6397337
0-3 months     ki1000109-ResPak           PAKISTAN                       0                    NA                2.7773382   2.4720282   3.0826483
0-3 months     ki1000109-ResPak           PAKISTAN                       1                    NA                3.5059537   2.9870666   4.0248409
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                3.5085022   3.4643756   3.5526289
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                3.4094634   3.3353686   3.4835582
0-3 months     ki1101329-Keneba           GAMBIA                         0                    NA                3.1626625   3.1139244   3.2114006
0-3 months     ki1101329-Keneba           GAMBIA                         1                    NA                3.1081779   2.9762637   3.2400921
0-3 months     ki1114097-CMIN             BANGLADESH                     0                    NA                3.4663761   3.3067241   3.6260281
0-3 months     ki1114097-CMIN             BANGLADESH                     1                    NA                3.5980574   3.2570741   3.9390406
0-3 months     ki1114097-CMIN             PERU                           0                    NA                3.3384314   3.1899088   3.4869539
0-3 months     ki1114097-CMIN             PERU                           1                    NA                3.1835918   2.9304467   3.4367368
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                1.9242069   1.8704113   1.9780024
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                1.7870486   1.6957471   1.8783501
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0                    NA                2.1472379   2.0643081   2.2301677
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                2.1556959   1.9165299   2.3948620
3-6 months     ki0047075b-MAL-ED          INDIA                          0                    NA                1.9121026   1.8429642   1.9812410
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    NA                1.8242495   1.7063027   1.9421962
3-6 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                1.9679473   1.9046816   2.0312130
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                1.9687916   1.8506478   2.0869354
3-6 months     ki0047075b-MAL-ED          PERU                           0                    NA                2.0265147   1.9589592   2.0940703
3-6 months     ki0047075b-MAL-ED          PERU                           1                    NA                1.7834415   1.6168240   1.9500589
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                1.9927242   1.9094036   2.0760449
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                1.8831580   1.6911253   2.0751908
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                1.8189350   1.7502294   1.8876406
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                2.0184896   1.8420337   2.1949455
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                1.8873708   1.7328614   2.0418802
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                1.7318568   1.6011666   1.8625469
3-6 months     ki1000108-IRC              INDIA                          0                    NA                1.9037149   1.8051514   2.0022784
3-6 months     ki1000108-IRC              INDIA                          1                    NA                1.8651378   1.7819095   1.9483661
3-6 months     ki1000109-EE               PAKISTAN                       0                    NA                2.0517286   1.9848740   2.1185832
3-6 months     ki1000109-EE               PAKISTAN                       1                    NA                1.9167078   1.7895953   2.0438204
3-6 months     ki1000109-ResPak           PAKISTAN                       0                    NA                2.0231101   1.8837328   2.1624873
3-6 months     ki1000109-ResPak           PAKISTAN                       1                    NA                2.1240968   1.8413324   2.4068612
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                1.9768518   1.9387882   2.0149154
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                1.9450520   1.8793569   2.0107472
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                1.8018578   1.7646814   1.8390341
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.7660590   1.6622398   1.8698782
3-6 months     ki1101329-Keneba           GAMBIA                         0                    NA                2.0075322   1.9659519   2.0491124
3-6 months     ki1101329-Keneba           GAMBIA                         1                    NA                1.9401070   1.8404410   2.0397731
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                1.7614057   1.7173850   1.8054265
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                1.5990256   1.5293236   1.6687275
3-6 months     ki1114097-CMIN             BANGLADESH                     0                    NA                1.9570916   1.8815287   2.0326545
3-6 months     ki1114097-CMIN             BANGLADESH                     1                    NA                1.9030863   1.7252894   2.0808833
3-6 months     ki1114097-CMIN             PERU                           0                    NA                1.8969429   1.8464954   1.9473904
3-6 months     ki1114097-CMIN             PERU                           1                    NA                1.8634965   1.7286566   1.9983365
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                1.1191901   1.0919217   1.1464584
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                1.1525574   1.1140355   1.1910793
6-12 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                1.3918093   1.3441844   1.4394341
6-12 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                1.3293777   1.1939246   1.4648308
6-12 months    ki0047075b-MAL-ED          INDIA                          0                    NA                1.0882949   1.0553195   1.1212702
6-12 months    ki0047075b-MAL-ED          INDIA                          1                    NA                1.1901989   1.1400387   1.2403592
6-12 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                1.2171733   1.1881964   1.2461502
6-12 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                1.2467458   1.1917565   1.3017351
6-12 months    ki0047075b-MAL-ED          PERU                           0                    NA                1.2117623   1.1779950   1.2455296
6-12 months    ki0047075b-MAL-ED          PERU                           1                    NA                1.1809071   1.1039624   1.2578519
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                1.1822240   1.1394213   1.2250267
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                1.2447313   1.1116782   1.3777845
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                1.0085249   0.9705043   1.0465456
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7020564   0.6307452   0.7733676
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                1.0980851   1.0246054   1.1715648
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                1.0247113   0.9645385   1.0848841
6-12 months    ki1000108-IRC              INDIA                          0                    NA                1.2604677   1.2173516   1.3035837
6-12 months    ki1000108-IRC              INDIA                          1                    NA                1.2405951   1.2039493   1.2772409
6-12 months    ki1000109-ResPak           PAKISTAN                       0                    NA                1.3918525   1.3072848   1.4764203
6-12 months    ki1000109-ResPak           PAKISTAN                       1                    NA                1.1782324   1.0208565   1.3356083
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                1.1690336   1.1489909   1.1890764
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                1.1914375   1.1636136   1.2192615
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                1.2033714   1.1804638   1.2262789
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.1514611   1.0980624   1.2048599
6-12 months    ki1101329-Keneba           GAMBIA                         0                    NA                1.1870412   1.1672920   1.2067904
6-12 months    ki1101329-Keneba           GAMBIA                         1                    NA                1.1504318   1.1052394   1.1956242
6-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                1.1781290   1.1554525   1.2008056
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                1.1473699   1.1100155   1.1847243
6-12 months    ki1114097-CMIN             BANGLADESH                     0                    NA                1.1033480   1.0655305   1.1411655
6-12 months    ki1114097-CMIN             BANGLADESH                     1                    NA                1.0879153   0.9989637   1.1768669
6-12 months    ki1114097-CMIN             PERU                           0                    NA                1.1049735   1.0788258   1.1311211
6-12 months    ki1114097-CMIN             PERU                           1                    NA                1.1770702   1.1061221   1.2480183
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.8465562   0.8282701   0.8648423
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.8902874   0.8673392   0.9132357
12-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                0.9938956   0.9622893   1.0255019
12-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                0.8321650   0.7686903   0.8956398
12-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.8802403   0.8590917   0.9013889
12-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.8806494   0.8506615   0.9106374
12-24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.8620484   0.8457052   0.8783916
12-24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.8601737   0.8186944   0.9016529
12-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.8422169   0.8217606   0.8626733
12-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.9548621   0.8027462   1.1069780
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.8637774   0.8410978   0.8864570
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.9101436   0.8471033   0.9731838
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7683209   0.7439408   0.7927011
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7840226   0.7379833   0.8300619
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.7265412   0.6887459   0.7643366
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.7549425   0.7178424   0.7920427
12-24 months   ki1000108-IRC              INDIA                          0                    NA                0.8607307   0.8300897   0.8913718
12-24 months   ki1000108-IRC              INDIA                          1                    NA                0.8080798   0.7831647   0.8329950
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.8570604   0.8436948   0.8704260
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.8447999   0.8229005   0.8666993
12-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.8467034   0.8350754   0.8583313
12-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.8358599   0.8094596   0.8622602
12-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.8363492   0.8193428   0.8533556
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.8413873   0.8100146   0.8727601
12-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.7963187   0.7693174   0.8233200
12-24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                0.7718051   0.7113533   0.8322570
12-24 months   ki1114097-CMIN             PERU                           0                    NA                0.8347539   0.8140962   0.8554115
12-24 months   ki1114097-CMIN             PERU                           1                    NA                0.7875152   0.7098287   0.8652017


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                3.5634447   3.5006347   3.6262547
0-3 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                4.0509714   3.9492443   4.1526985
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                3.5764512   3.4977133   3.6551891
0-3 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                3.8204935   3.7444190   3.8965681
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                3.3158605   3.2526447   3.3790763
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                3.4451859   3.3559092   3.5344627
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                3.4816904   3.4044928   3.5588880
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                3.5235318   3.3031217   3.7439420
0-3 months     ki1000108-IRC              INDIA                          NA                   NA                3.1729204   3.0609523   3.2848884
0-3 months     ki1000109-EE               PAKISTAN                       NA                   NA                2.6575645   2.5739973   2.7411317
0-3 months     ki1000109-ResPak           PAKISTAN                       NA                   NA                3.0738623   2.7876913   3.3600332
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                3.4826706   3.4434873   3.5218539
0-3 months     ki1101329-Keneba           GAMBIA                         NA                   NA                3.1440476   3.0964801   3.1916152
0-3 months     ki1114097-CMIN             BANGLADESH                     NA                   NA                3.4939373   3.3480209   3.6398536
0-3 months     ki1114097-CMIN             PERU                           NA                   NA                3.3155510   3.1827969   3.4483051
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                1.9280462   1.8787523   1.9773401
3-6 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                2.1478156   2.0686357   2.2269955
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                1.8837264   1.8224393   1.9450135
3-6 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.9680995   1.9120346   2.0241643
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                2.0183213   1.9525900   2.0840526
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                1.9811941   1.9001209   2.0622672
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.8300902   1.7622436   1.8979368
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
6-12 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                1.3863464   1.3400121   1.4326807
6-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                1.1210558   1.0926349   1.1494766
6-12 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.2224454   1.1966480   1.2482429
6-12 months    ki0047075b-MAL-ED          PERU                           NA                   NA                1.2102315   1.1775158   1.2429472
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                1.1895267   1.1483723   1.2306812
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.0019524   0.9648566   1.0390481
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
12-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.9816245   0.9508764   1.0123725
12-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.8803730   0.8630530   0.8976931
12-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.8617083   0.8463512   0.8770654
12-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.8463453   0.8256453   0.8670453
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.8699064   0.8475321   0.8922808
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7663111   0.7428636   0.7897586
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7419316   0.7150261   0.7688371
12-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.8294859   0.8099817   0.8489901
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.8575519   0.8455586   0.8695452
12-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.8455626   0.8347576   0.8563677
12-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.8378848   0.8224521   0.8533174
12-24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.7916227   0.7669686   0.8162769
12-24 months   ki1114097-CMIN             PERU                           NA                   NA                0.8323919   0.8123225   0.8524613


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.1543250   -0.2607951   -0.0478549
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.0383283   -0.4743960    0.3977395
0-3 months     ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          1                    0                 -0.0569223   -0.2199229    0.1060783
0-3 months     ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.0850667   -0.2145509    0.0444176
0-3 months     ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           1                    0                  0.3894550    0.1644684    0.6144417
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -0.0874000   -0.3506204    0.1758204
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -1.5223373   -1.7327070   -1.3119675
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.3748573   -0.0416188    0.7913334
0-3 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          1                    0                 -0.3106981   -0.5286459   -0.0927504
0-3 months     ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE               PAKISTAN                       1                    0                 -0.2771111   -0.4840478   -0.0701745
0-3 months     ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-ResPak           PAKISTAN                       1                    0                  0.7286155    0.1256774    1.3315536
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0990389   -0.1852620   -0.0128157
0-3 months     ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         1                    0                 -0.0544846   -0.1945540    0.0855847
0-3 months     ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CMIN             BANGLADESH                     1                    0                  0.1316813   -0.2448268    0.5081893
0-3 months     ki1114097-CMIN             PERU                           0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CMIN             PERU                           1                    0                 -0.1548396   -0.4470505    0.1373713
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.1371583   -0.2432144   -0.0311021
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                    0                  0.0084580   -0.2442617    0.2611778
3-6 months     ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    0                 -0.0878532   -0.2238365    0.0481302
3-6 months     ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    0                  0.0008443   -0.1331696    0.1348583
3-6 months     ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           1                    0                 -0.2430733   -0.4228652   -0.0632814
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -0.1095662   -0.3137958    0.0946634
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  0.1995546    0.0109933    0.3881159
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.1555141   -0.3574094    0.0463813
3-6 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          1                    0                 -0.0385771   -0.1672600    0.0901059
3-6 months     ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE               PAKISTAN                       1                    0                 -0.1350208   -0.2787192    0.0086776
3-6 months     ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-ResPak           PAKISTAN                       1                    0                  0.1009867   -0.2142588    0.4162323
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0317998   -0.1061170    0.0425174
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0357988   -0.1456468    0.0740493
3-6 months     ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         1                    0                 -0.0674251   -0.1753376    0.0404874
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.1623802   -0.2445105   -0.0802499
3-6 months     ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             BANGLADESH                     1                    0                 -0.0540053   -0.2469639    0.1389534
3-6 months     ki1114097-CMIN             PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             PERU                           1                    0                 -0.0334464   -0.1774237    0.1105309
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.0333673   -0.0135739    0.0803085
6-12 months    ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.0624316   -0.2046563    0.0797931
6-12 months    ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA                          1                    0                  0.1019041    0.0421566    0.1616515
6-12 months    ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          NEPAL                          1                    0                  0.0295725   -0.0325781    0.0917231
6-12 months    ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          PERU                           1                    0                 -0.0308551   -0.1143675    0.0526572
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.0625073   -0.0769638    0.2019785
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.3064685   -0.3878976   -0.2250394
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0733738   -0.1678800    0.0211324
6-12 months    ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA                          1                    0                 -0.0198725   -0.0754014    0.0356563
6-12 months    ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000109-ResPak           PAKISTAN                       1                    0                 -0.2136201   -0.3923055   -0.0349348
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0224039   -0.0107638    0.0555716
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0519102   -0.1097999    0.0059794
6-12 months    ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1101329-Keneba           GAMBIA                         1                    0                 -0.0366094   -0.0859256    0.0127069
6-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0307591   -0.0743613    0.0128430
6-12 months    ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN             BANGLADESH                     1                    0                 -0.0154327   -0.1116690    0.0808036
6-12 months    ki1114097-CMIN             PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN             PERU                           1                    0                  0.0720967   -0.0035124    0.1477058
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.0437312    0.0142034    0.0732591
12-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.1617305   -0.2321724   -0.0912886
12-24 months   ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          1                    0                  0.0004091   -0.0362114    0.0370297
12-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.0018748   -0.0464405    0.0426909
12-24 months   ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          PERU                           1                    0                  0.1126452   -0.0408400    0.2661303
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.0463662   -0.0196706    0.1124030
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0157017   -0.0367044    0.0681078
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.0284013   -0.0241450    0.0809476
12-24 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA                          1                    0                 -0.0526509   -0.0921377   -0.0131641
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0122605   -0.0377693    0.0132482
12-24 months   ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1101329-Keneba           GAMBIA                         1                    0                 -0.0108435   -0.0396553    0.0179683
12-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.0050381   -0.0303999    0.0404762
12-24 months   ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1114097-CMIN             BANGLADESH                     1                    0                 -0.0245136   -0.0907554    0.0417283
12-24 months   ki1114097-CMIN             PERU                           0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1114097-CMIN             PERU                           1                    0                 -0.0472386   -0.1276248    0.0331475
