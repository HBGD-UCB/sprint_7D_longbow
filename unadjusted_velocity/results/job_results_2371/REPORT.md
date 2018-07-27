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
        value: FALSE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
  output_directory:
    value: ''

---







## Methods
## Outcome Variable

**Outcome Variable:** y_rate_len

## Predictor Variables

**Intervention Variable:** anywast06

**Adjustment Set:**

unadjusted

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
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0               468    634
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1               166    634
0-3 months     ki1114097-CMIN             BANGLADESH                     0                34     43
0-3 months     ki1114097-CMIN             BANGLADESH                     1                 9     43
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0               167    180
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                13    180
0-3 months     ki1101329-Keneba           GAMBIA                         0              1047   1276
0-3 months     ki1101329-Keneba           GAMBIA                         1               229   1276
0-3 months     ki0047075b-MAL-ED          INDIA                          0               137    201
0-3 months     ki0047075b-MAL-ED          INDIA                          1                64    201
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                34     87
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                53     87
0-3 months     ki1000108-IRC              INDIA                          0               158    377
0-3 months     ki1000108-IRC              INDIA                          1               219    377
0-3 months     ki0047075b-MAL-ED          NEPAL                          0               143    175
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                32    175
0-3 months     ki1000109-EE               PAKISTAN                       0               217    297
0-3 months     ki1000109-EE               PAKISTAN                       1                80    297
0-3 months     ki1000109-ResPak           PAKISTAN                       0                47     78
0-3 months     ki1000109-ResPak           PAKISTAN                       1                31     78
0-3 months     ki0047075b-MAL-ED          PERU                           0               261    271
0-3 months     ki0047075b-MAL-ED          PERU                           1                10    271
0-3 months     ki1114097-CMIN             PERU                           0                79     93
0-3 months     ki1114097-CMIN             PERU                           1                14     93
0-3 months     ki1114097-CONTENT          PERU                           0                29     29
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0               203    229
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                26    229
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               218    229
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                11    229
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0               180    231
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                51    231
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0               426    574
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1               148    574
3-6 months     ki1114097-CMIN             BANGLADESH                     0               153    185
3-6 months     ki1114097-CMIN             BANGLADESH                     1                32    185
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0               194    208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                14    208
3-6 months     ki1101329-Keneba           GAMBIA                         0              1116   1397
3-6 months     ki1101329-Keneba           GAMBIA                         1               281   1397
3-6 months     ki0047075b-MAL-ED          INDIA                          0               156    229
3-6 months     ki0047075b-MAL-ED          INDIA                          1                73    229
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0               142    307
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1               165    307
3-6 months     ki1000108-IRC              INDIA                          0               160    397
3-6 months     ki1000108-IRC              INDIA                          1               237    397
3-6 months     ki0047075b-MAL-ED          NEPAL                          0               191    233
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                42    233
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0               311    471
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1               160    471
3-6 months     ki1000109-EE               PAKISTAN                       0               241    331
3-6 months     ki1000109-EE               PAKISTAN                       1                90    331
3-6 months     ki1000109-ResPak           PAKISTAN                       0                91    156
3-6 months     ki1000109-ResPak           PAKISTAN                       1                65    156
3-6 months     ki0047075b-MAL-ED          PERU                           0               258    267
3-6 months     ki0047075b-MAL-ED          PERU                           1                 9    267
3-6 months     ki1114097-CMIN             PERU                           0               373    407
3-6 months     ki1114097-CMIN             PERU                           1                34    407
3-6 months     ki1114097-CONTENT          PERU                           0               210    214
3-6 months     ki1114097-CONTENT          PERU                           1                 4    214
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0               214    241
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                27    241
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               228    239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                11    239
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              1401   1660
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               259   1660
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     0               170    220
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                50    220
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0               411    545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1               134    545
6-12 months    ki1114097-CMIN             BANGLADESH                     0               137    164
6-12 months    ki1114097-CMIN             BANGLADESH                     1                27    164
6-12 months    ki0047075b-MAL-ED          BRAZIL                         0               180    194
6-12 months    ki0047075b-MAL-ED          BRAZIL                         1                14    194
6-12 months    ki1101329-Keneba           GAMBIA                         0              1050   1302
6-12 months    ki1101329-Keneba           GAMBIA                         1               252   1302
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      0               167    171
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                 4    171
6-12 months    ki0047075b-MAL-ED          INDIA                          0               152    224
6-12 months    ki0047075b-MAL-ED          INDIA                          1                72    224
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0               151    321
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1               170    321
6-12 months    ki1000108-IRC              INDIA                          0               163    400
6-12 months    ki1000108-IRC              INDIA                          1               237    400
6-12 months    ki0047075b-MAL-ED          NEPAL                          0               189    230
6-12 months    ki0047075b-MAL-ED          NEPAL                          1                41    230
6-12 months    ki1113344-GMS-Nepal        NEPAL                          0               321    475
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1               154    475
6-12 months    ki1000109-EE               PAKISTAN                       0                 3      4
6-12 months    ki1000109-EE               PAKISTAN                       1                 1      4
6-12 months    ki1000109-ResPak           PAKISTAN                       0                78    138
6-12 months    ki1000109-ResPak           PAKISTAN                       1                60    138
6-12 months    ki0047075b-MAL-ED          PERU                           0               227    237
6-12 months    ki0047075b-MAL-ED          PERU                           1                10    237
6-12 months    ki1114097-CMIN             PERU                           0               327    357
6-12 months    ki1114097-CMIN             PERU                           1                30    357
6-12 months    ki1114097-CONTENT          PERU                           0               209    213
6-12 months    ki1114097-CONTENT          PERU                           1                 4    213
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               205    232
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                27    232
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               212    223
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                11    223
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               924   1083
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               159   1083
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     0               157    206
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                49    206
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0               341    458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1               117    458
12-24 months   ki1114097-CMIN             BANGLADESH                     0               116    138
12-24 months   ki1114097-CMIN             BANGLADESH                     1                22    138
12-24 months   ki0047075b-MAL-ED          BRAZIL                         0               153    165
12-24 months   ki0047075b-MAL-ED          BRAZIL                         1                12    165
12-24 months   ki1101329-Keneba           GAMBIA                         0               937   1147
12-24 months   ki1101329-Keneba           GAMBIA                         1               210   1147
12-24 months   ki0047075b-MAL-ED          INDIA                          0               152    225
12-24 months   ki0047075b-MAL-ED          INDIA                          1                73    225
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0               147    320
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               173    320
12-24 months   ki1000108-IRC              INDIA                          0               161    396
12-24 months   ki1000108-IRC              INDIA                          1               235    396
12-24 months   ki0047075b-MAL-ED          NEPAL                          0               185    226
12-24 months   ki0047075b-MAL-ED          NEPAL                          1                41    226
12-24 months   ki1113344-GMS-Nepal        NEPAL                          0               254    367
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1               113    367
12-24 months   ki0047075b-MAL-ED          PERU                           0               184    191
12-24 months   ki0047075b-MAL-ED          PERU                           1                 7    191
12-24 months   ki1114097-CMIN             PERU                           0               152    160
12-24 months   ki1114097-CMIN             PERU                           1                 8    160
12-24 months   ki1114097-CONTENT          PERU                           0                37     38
12-24 months   ki1114097-CONTENT          PERU                           1                 1     38
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               206    230
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                24    230
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               196    207
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                11    207
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 2      2


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

* agecat: 3-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-12 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-12 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
##          y_rate_len
## anywast06 2.65171230769231 2.68615012987013 3.00216779220779
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## anywast06 3.08066576923077 3.1633368 3.20833684931507 3.244448 3.2850036
##         0                1         1                1        1         1
##         1                0         0                0        0         0
##          y_rate_len
## anywast06 3.36184578947368 3.39263192307692 3.5551987012987
##         0                1                1               1
##         1                0                0               0
##          y_rate_len
## anywast06 3.58482535714286 3.59470090909091 3.60197763157895
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## anywast06 3.63420311688312 3.64199960526316 3.70459807692308
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## anywast06 3.79221194805195 3.82381371428571 3.84210947368421 3.916150125
##         0                1                1                1           1
##         1                0                0                0           0
##          y_rate_len
## anywast06 4.02922519480519 4.09177035714286 4.10822961038961
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## anywast06 4.27477945945946 4.30574064935065 4.32688267605634 4.4205604
##         0                1                1                1         1
##         1                0                0                0         0
##          y_rate_len
## anywast06 4.52248302631579
##         0                1
##         1                0
```




# Results Detail

## Results Plots
![](/tmp/1deb6496-1e05-4868-9de0-51af122f4b89/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/1deb6496-1e05-4868-9de0-51af122f4b89/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                3.6006493   3.5320311   3.6692676
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                3.4355961   3.2921929   3.5789993
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0                    NA                4.0536455   3.9490810   4.1582100
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                4.0166196   3.5932392   4.4399999
0-3 months     ki0047075b-MAL-ED          INDIA                          0                    NA                3.5945757   3.4965133   3.6926382
0-3 months     ki0047075b-MAL-ED          INDIA                          1                    NA                3.5376534   3.4074500   3.6678569
0-3 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                3.8187113   3.7336134   3.9038092
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                3.8284577   3.6597565   3.9971588
0-3 months     ki0047075b-MAL-ED          PERU                           0                    NA                3.3014895   3.2370112   3.3659677
0-3 months     ki0047075b-MAL-ED          PERU                           1                    NA                3.6909445   3.4753950   3.9064939
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                3.4564531   3.3608534   3.5520528
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                3.3572153   3.1125214   3.6019091
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                3.5080566   3.4336593   3.5824538
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                2.9591605   2.4039114   3.5144096
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                3.3388258   3.0241776   3.6534740
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                3.6420224   3.3461752   3.9378696
0-3 months     ki1000108-IRC              INDIA                          0                    NA                3.3519749   3.1961041   3.5078457
0-3 months     ki1000108-IRC              INDIA                          1                    NA                3.0437395   2.8894486   3.1980304
0-3 months     ki1000109-EE               PAKISTAN                       0                    NA                2.7289850   2.6408348   2.8171353
0-3 months     ki1000109-EE               PAKISTAN                       1                    NA                2.4638363   2.2725155   2.6551571
0-3 months     ki1000109-ResPak           PAKISTAN                       0                    NA                2.7824698   2.4776942   3.0872454
0-3 months     ki1000109-ResPak           PAKISTAN                       1                    NA                3.5156509   3.0015643   4.0297375
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                3.5079607   3.4633797   3.5525416
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                3.4113709   3.3311270   3.4916148
0-3 months     ki1101329-Keneba           GAMBIA                         0                    NA                3.1610911   3.1120296   3.2101527
0-3 months     ki1101329-Keneba           GAMBIA                         1                    NA                3.0661239   2.9253732   3.2068747
0-3 months     ki1114097-CMIN             BANGLADESH                     0                    NA                3.4663761   3.3067241   3.6260281
0-3 months     ki1114097-CMIN             BANGLADESH                     1                    NA                3.5980574   3.2570741   3.9390406
0-3 months     ki1114097-CMIN             PERU                           0                    NA                3.3409396   3.1920817   3.4897974
0-3 months     ki1114097-CMIN             PERU                           1                    NA                3.1722871   2.9165248   3.4280494
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                1.9338311   1.8789866   1.9886756
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                1.9076288   1.7965379   2.0187197
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0                    NA                2.1469798   2.0640066   2.2299531
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                2.1593966   1.9106599   2.4081333
3-6 months     ki0047075b-MAL-ED          INDIA                          0                    NA                1.9117009   1.8419093   1.9814925
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    NA                1.8239453   1.7037723   1.9441184
3-6 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                1.9679388   1.9046722   2.0312054
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                1.9688303   1.8506819   2.0869787
3-6 months     ki0047075b-MAL-ED          PERU                           0                    NA                2.0265147   1.9589592   2.0940703
3-6 months     ki0047075b-MAL-ED          PERU                           1                    NA                1.7834415   1.6168240   1.9500589
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                1.9949938   1.9103063   2.0796813
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                1.8718187   1.6049791   2.1386583
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                1.8182574   1.7493838   1.8871310
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                2.0753519   1.7392175   2.4114863
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                1.8855240   1.7308738   2.0401741
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                1.7334455   1.6022508   1.8646402
3-6 months     ki1000108-IRC              INDIA                          0                    NA                1.9030892   1.8044254   2.0017531
3-6 months     ki1000108-IRC              INDIA                          1                    NA                1.8655411   1.7820249   1.9490573
3-6 months     ki1000109-EE               PAKISTAN                       0                    NA                2.0557457   1.9885046   2.1229868
3-6 months     ki1000109-EE               PAKISTAN                       1                    NA                1.9394340   1.8105274   2.0683406
3-6 months     ki1000109-ResPak           PAKISTAN                       0                    NA                2.0299753   1.8894230   2.1705275
3-6 months     ki1000109-ResPak           PAKISTAN                       1                    NA                2.1246509   1.8474530   2.4018488
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                1.9789563   1.9399422   2.0179704
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                1.9265560   1.8501909   2.0029211
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                1.8014174   1.7640795   1.8387553
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.7649581   1.6551009   1.8748153
3-6 months     ki1101329-Keneba           GAMBIA                         0                    NA                2.0073293   1.9655932   2.0490653
3-6 months     ki1101329-Keneba           GAMBIA                         1                    NA                1.9369161   1.8330482   2.0407840
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                1.7610750   1.7164479   1.8057021
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                1.5981881   1.5255427   1.6708334
3-6 months     ki1114097-CMIN             BANGLADESH                     0                    NA                1.9601765   1.8844147   2.0359383
3-6 months     ki1114097-CMIN             BANGLADESH                     1                    NA                1.8889005   1.7061970   2.0716039
3-6 months     ki1114097-CMIN             PERU                           0                    NA                1.8969152   1.8465014   1.9473291
3-6 months     ki1114097-CMIN             PERU                           1                    NA                1.8625816   1.7261744   1.9989888
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                1.1170628   1.0893333   1.1447922
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                1.1053149   1.0506030   1.1600268
6-12 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                1.3923633   1.3446108   1.4401157
6-12 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                1.3089868   1.1259119   1.4920618
6-12 months    ki0047075b-MAL-ED          INDIA                          0                    NA                1.0880036   1.0549009   1.1211062
6-12 months    ki0047075b-MAL-ED          INDIA                          1                    NA                1.1908327   1.1403356   1.2413297
6-12 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                1.2171763   1.1881957   1.2461570
6-12 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                1.2467348   1.1917052   1.3017644
6-12 months    ki0047075b-MAL-ED          PERU                           0                    NA                1.2117370   1.1779337   1.2455402
6-12 months    ki0047075b-MAL-ED          PERU                           1                    NA                1.1760578   1.0669019   1.2852137
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                1.1817488   1.1388325   1.2246651
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                1.2485814   1.1132685   1.3838943
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                1.0091232   0.9709984   1.0472480
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.8637507   0.7272947   1.0002068
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                1.1003564   1.0254291   1.1752838
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                1.0232405   0.9625044   1.0839765
6-12 months    ki1000108-IRC              INDIA                          0                    NA                1.2574897   1.2118047   1.3031746
6-12 months    ki1000108-IRC              INDIA                          1                    NA                1.2424300   1.2044032   1.2804567
6-12 months    ki1000109-ResPak           PAKISTAN                       0                    NA                1.3884195   1.3031658   1.4736733
6-12 months    ki1000109-ResPak           PAKISTAN                       1                    NA                1.1769431   1.0254052   1.3284810
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                1.1682690   1.1476919   1.1888462
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                1.1882274   1.1571781   1.2192767
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                1.2031475   1.1800950   1.2262001
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.1548444   1.0953510   1.2143378
6-12 months    ki1101329-Keneba           GAMBIA                         0                    NA                1.1874448   1.1676254   1.2072642
6-12 months    ki1101329-Keneba           GAMBIA                         1                    NA                1.1493735   1.1004001   1.1983468
6-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                1.1785106   1.1557910   1.2012302
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                1.1465726   1.1090972   1.1840481
6-12 months    ki1114097-CMIN             BANGLADESH                     0                    NA                1.1053437   1.0675883   1.1430991
6-12 months    ki1114097-CMIN             BANGLADESH                     1                    NA                1.0771865   0.9794888   1.1748842
6-12 months    ki1114097-CMIN             PERU                           0                    NA                1.1049791   1.0788467   1.1311116
6-12 months    ki1114097-CMIN             PERU                           1                    NA                1.1858991   1.1098657   1.2619325
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.8430791   0.8242033   0.8619549
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.8552595   0.8259213   0.8845978
12-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                0.9939696   0.9621920   1.0257472
12-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                0.8242238   0.7468652   0.9015824
12-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.8801712   0.8589961   0.9013463
12-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.8807934   0.8506966   0.9108901
12-24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.8620455   0.8456995   0.8783916
12-24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.8601868   0.8186475   0.9017260
12-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.8422169   0.8217606   0.8626733
12-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.9548621   0.8027462   1.1069780
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.8635553   0.8405605   0.8865501
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.9244204   0.8438782   1.0049626
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7674350   0.7429621   0.7919079
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7462861   0.6800029   0.8125692
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.7276217   0.6893638   0.7658796
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.7540909   0.7165030   0.7916787
12-24 months   ki1000108-IRC              INDIA                          0                    NA                0.8607258   0.8300820   0.8913697
12-24 months   ki1000108-IRC              INDIA                          1                    NA                0.8080832   0.7831636   0.8330028
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.8581863   0.8444593   0.8719134
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.8557028   0.8311400   0.8802657
12-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.8469961   0.8353281   0.8586641
12-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.8391667   0.8113893   0.8669441
12-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.8364798   0.8193534   0.8536062
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.8410429   0.8089535   0.8731323
12-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.7961288   0.7691583   0.8230994
12-24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                0.7678633   0.7080738   0.8276529
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
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.1650532   -0.3240279   -0.0060786
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.0370259   -0.4731276    0.3990757
0-3 months     ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          1                    0                 -0.0569223   -0.2199229    0.1060783
0-3 months     ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                    0                  0.0097463   -0.1792027    0.1986954
0-3 months     ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           1                    0                  0.3894550    0.1644684    0.6144417
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -0.0992378   -0.3619437    0.1634681
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.5488961   -1.1091072    0.0113150
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.3031966   -0.1286935    0.7350867
0-3 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          1                    0                 -0.3082354   -0.5275557   -0.0889151
0-3 months     ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE               PAKISTAN                       1                    0                 -0.2651488   -0.4758004   -0.0544971
0-3 months     ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-ResPak           PAKISTAN                       1                    0                  0.7331811    0.1355414    1.3308209
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0965898   -0.1883860   -0.0047935
0-3 months     ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         1                    0                 -0.0949672   -0.2440236    0.0540892
0-3 months     ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CMIN             BANGLADESH                     1                    0                  0.1316813   -0.2448268    0.5081893
0-3 months     ki1114097-CMIN             PERU                           0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CMIN             PERU                           1                    0                 -0.1686525   -0.4645798    0.1272749
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.0262023   -0.1500938    0.0976892
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                    0                  0.0124167   -0.2497941    0.2746276
3-6 months     ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    0                 -0.0877556   -0.2267248    0.0512136
3-6 months     ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    0                  0.0008916   -0.1331297    0.1349129
3-6 months     ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           1                    0                 -0.2430733   -0.4228652   -0.0632814
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -0.1231750   -0.4031310    0.1567809
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  0.2570945   -0.0860234    0.6002124
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.1520784   -0.3548806    0.0507237
3-6 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          1                    0                 -0.0375481   -0.1668134    0.0917172
3-6 months     ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE               PAKISTAN                       1                    0                 -0.1163117   -0.2617018    0.0290784
3-6 months     ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-ResPak           PAKISTAN                       1                    0                  0.0946756   -0.2161195    0.4054708
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0524003   -0.1381542    0.0333536
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0364593   -0.1524882    0.0795697
3-6 months     ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         1                    0                 -0.0704131   -0.1823526    0.0415263
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.1628869   -0.2481449   -0.0776289
3-6 months     ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             BANGLADESH                     1                    0                 -0.0712760   -0.2690648    0.1265127
3-6 months     ki1114097-CMIN             PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             PERU                           1                    0                 -0.0343337   -0.1797588    0.1110915
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.0117479   -0.0730856    0.0495899
6-12 months    ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.0833765   -0.2725767    0.1058238
6-12 months    ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA                          1                    0                  0.1028291    0.0424492    0.1632090
6-12 months    ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          NEPAL                          1                    0                  0.0295585   -0.0326358    0.0917528
6-12 months    ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          PERU                           1                    0                 -0.0356792   -0.1499494    0.0785910
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.0668326   -0.0751230    0.2087881
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.1453725   -0.2870543   -0.0036906
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0771160   -0.1735679    0.0193360
6-12 months    ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA                          1                    0                 -0.0150597   -0.0745000    0.0443806
6-12 months    ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000109-ResPak           PAKISTAN                       1                    0                 -0.2114764   -0.3853498   -0.0376031
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0199584   -0.0172905    0.0572072
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0483031   -0.1121066    0.0155003
6-12 months    ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1101329-Keneba           GAMBIA                         1                    0                 -0.0380713   -0.0909031    0.0147604
6-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0319380   -0.0757625    0.0118866
6-12 months    ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN             BANGLADESH                     1                    0                 -0.0281572   -0.1328965    0.0765821
6-12 months    ki1114097-CMIN             PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN             PERU                           1                    0                  0.0809199    0.0005211    0.1613188
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.0121804   -0.0227055    0.0470663
12-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.1697458   -0.2533770   -0.0861147
12-24 months   ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          1                    0                  0.0006222   -0.0361773    0.0374216
12-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.0018587   -0.0464985    0.0427810
12-24 months   ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          PERU                           1                    0                  0.1126452   -0.0408400    0.2661303
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.0608651   -0.0228953    0.1446255
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0211489   -0.0918056    0.0495078
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.0264691   -0.0271640    0.0801022
12-24 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA                          1                    0                 -0.0526426   -0.0921399   -0.0131454
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0024835   -0.0306218    0.0256548
12-24 months   ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1101329-Keneba           GAMBIA                         1                    0                 -0.0078294   -0.0379578    0.0222991
12-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.0045631   -0.0318105    0.0409368
12-24 months   ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1114097-CMIN             BANGLADESH                     1                    0                 -0.0282655   -0.0938567    0.0373257
12-24 months   ki1114097-CMIN             PERU                           0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1114097-CMIN             PERU                           1                    0                 -0.0472386   -0.1276248    0.0331475
