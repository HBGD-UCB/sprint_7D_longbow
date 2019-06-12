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
      Y: ['haz']
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

**Outcome Variable:** whz

## Predictor Variables

**Intervention Variable:** nrooms

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
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

agecat      studyid                    country                        nrooms    n_cell      n
----------  -------------------------  -----------------------------  -------  -------  -----
Birth       ki0047075b-MAL-ED          BANGLADESH                     4+            12    222
Birth       ki0047075b-MAL-ED          BANGLADESH                     1            135    222
Birth       ki0047075b-MAL-ED          BANGLADESH                     2             47    222
Birth       ki0047075b-MAL-ED          BANGLADESH                     3             28    222
Birth       ki0047075b-MAL-ED          BRAZIL                         4+            99    167
Birth       ki0047075b-MAL-ED          BRAZIL                         1              3    167
Birth       ki0047075b-MAL-ED          BRAZIL                         2             19    167
Birth       ki0047075b-MAL-ED          BRAZIL                         3             46    167
Birth       ki0047075b-MAL-ED          INDIA                          4+            22    188
Birth       ki0047075b-MAL-ED          INDIA                          1             68    188
Birth       ki0047075b-MAL-ED          INDIA                          2             66    188
Birth       ki0047075b-MAL-ED          INDIA                          3             32    188
Birth       ki0047075b-MAL-ED          NEPAL                          4+            94    166
Birth       ki0047075b-MAL-ED          NEPAL                          1             34    166
Birth       ki0047075b-MAL-ED          NEPAL                          2             21    166
Birth       ki0047075b-MAL-ED          NEPAL                          3             17    166
Birth       ki0047075b-MAL-ED          PERU                           4+           127    252
Birth       ki0047075b-MAL-ED          PERU                           1             17    252
Birth       ki0047075b-MAL-ED          PERU                           2             51    252
Birth       ki0047075b-MAL-ED          PERU                           3             57    252
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4+           159    216
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1             14    216
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2             20    216
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3             23    216
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+            54    114
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              6    114
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2             23    114
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3             31    114
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4+             5     88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1             39     88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2             26     88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3             18     88
Birth       ki1000108-IRC              INDIA                          4+            14    341
Birth       ki1000108-IRC              INDIA                          1            156    341
Birth       ki1000108-IRC              INDIA                          2            140    341
Birth       ki1000108-IRC              INDIA                          3             31    341
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     4+             2     23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1             15     23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2              6     23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     3              0     23
Birth       ki1114097-CONTENT          PERU                           4+             1      2
Birth       ki1114097-CONTENT          PERU                           1              0      2
Birth       ki1114097-CONTENT          PERU                           2              1      2
Birth       ki1114097-CONTENT          PERU                           3              0      2
Birth       ki1135781-COHORTS          INDIA                          4+            90   4454
Birth       ki1135781-COHORTS          INDIA                          1           2879   4454
Birth       ki1135781-COHORTS          INDIA                          2           1328   4454
Birth       ki1135781-COHORTS          INDIA                          3            157   4454
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4+           245   7673
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1           4769   7673
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2           2017   7673
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3            642   7673
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4+             4    185
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1            126    185
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2             36    185
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3             19    185
6 months    ki0047075b-MAL-ED          BANGLADESH                     4+            12    240
6 months    ki0047075b-MAL-ED          BANGLADESH                     1            150    240
6 months    ki0047075b-MAL-ED          BANGLADESH                     2             50    240
6 months    ki0047075b-MAL-ED          BANGLADESH                     3             28    240
6 months    ki0047075b-MAL-ED          BRAZIL                         4+           126    209
6 months    ki0047075b-MAL-ED          BRAZIL                         1              4    209
6 months    ki0047075b-MAL-ED          BRAZIL                         2             20    209
6 months    ki0047075b-MAL-ED          BRAZIL                         3             59    209
6 months    ki0047075b-MAL-ED          INDIA                          4+            25    235
6 months    ki0047075b-MAL-ED          INDIA                          1             84    235
6 months    ki0047075b-MAL-ED          INDIA                          2             78    235
6 months    ki0047075b-MAL-ED          INDIA                          3             48    235
6 months    ki0047075b-MAL-ED          NEPAL                          4+           131    236
6 months    ki0047075b-MAL-ED          NEPAL                          1             52    236
6 months    ki0047075b-MAL-ED          NEPAL                          2             31    236
6 months    ki0047075b-MAL-ED          NEPAL                          3             22    236
6 months    ki0047075b-MAL-ED          PERU                           4+           139    270
6 months    ki0047075b-MAL-ED          PERU                           1             19    270
6 months    ki0047075b-MAL-ED          PERU                           2             50    270
6 months    ki0047075b-MAL-ED          PERU                           3             62    270
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+           191    249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1             14    249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2             21    249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3             23    249
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+           108    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             13    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2             62    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3             64    247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+            14    368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1            197    368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2            106    368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3             51    368
6 months    ki1000108-IRC              INDIA                          4+            17    406
6 months    ki1000108-IRC              INDIA                          1            183    406
6 months    ki1000108-IRC              INDIA                          2            170    406
6 months    ki1000108-IRC              INDIA                          3             36    406
6 months    ki1017093b-PROVIDE         BANGLADESH                     4+            21    582
6 months    ki1017093b-PROVIDE         BANGLADESH                     1            414    582
6 months    ki1017093b-PROVIDE         BANGLADESH                     2             91    582
6 months    ki1017093b-PROVIDE         BANGLADESH                     3             56    582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+            91    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1            339    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2            184    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3            101    715
6 months    ki1113344-GMS-Nepal        NEPAL                          4+           267    563
6 months    ki1113344-GMS-Nepal        NEPAL                          1             40    563
6 months    ki1113344-GMS-Nepal        NEPAL                          2            115    563
6 months    ki1113344-GMS-Nepal        NEPAL                          3            141    563
6 months    ki1114097-CONTENT          PERU                           4+            78    215
6 months    ki1114097-CONTENT          PERU                           1             44    215
6 months    ki1114097-CONTENT          PERU                           2             54    215
6 months    ki1114097-CONTENT          PERU                           3             39    215
6 months    ki1135781-COHORTS          INDIA                          4+            93   4955
6 months    ki1135781-COHORTS          INDIA                          1           3206   4955
6 months    ki1135781-COHORTS          INDIA                          2           1474   4955
6 months    ki1135781-COHORTS          INDIA                          3            182   4955
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+           351   8301
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1           4675   8301
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2           2435   8301
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3            840   8301
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+            53   1254
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1            757   1254
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2            311   1254
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3            133   1254
24 months   ki0047075b-MAL-ED          BANGLADESH                     4+            11    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1            134    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     2             40    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     3             27    212
24 months   ki0047075b-MAL-ED          BRAZIL                         4+           104    169
24 months   ki0047075b-MAL-ED          BRAZIL                         1              0    169
24 months   ki0047075b-MAL-ED          BRAZIL                         2             16    169
24 months   ki0047075b-MAL-ED          BRAZIL                         3             49    169
24 months   ki0047075b-MAL-ED          INDIA                          4+            25    227
24 months   ki0047075b-MAL-ED          INDIA                          1             82    227
24 months   ki0047075b-MAL-ED          INDIA                          2             74    227
24 months   ki0047075b-MAL-ED          INDIA                          3             46    227
24 months   ki0047075b-MAL-ED          NEPAL                          4+           127    228
24 months   ki0047075b-MAL-ED          NEPAL                          1             48    228
24 months   ki0047075b-MAL-ED          NEPAL                          2             31    228
24 months   ki0047075b-MAL-ED          NEPAL                          3             22    228
24 months   ki0047075b-MAL-ED          PERU                           4+           110    201
24 months   ki0047075b-MAL-ED          PERU                           1             16    201
24 months   ki0047075b-MAL-ED          PERU                           2             32    201
24 months   ki0047075b-MAL-ED          PERU                           3             43    201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+           183    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1             13    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2             19    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3             23    238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+            98    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              9    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2             50    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3             57    214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+            14    372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1            201    372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2            106    372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3             51    372
24 months   ki1000108-IRC              INDIA                          4+            17    407
24 months   ki1000108-IRC              INDIA                          1            184    407
24 months   ki1000108-IRC              INDIA                          2            170    407
24 months   ki1000108-IRC              INDIA                          3             36    407
24 months   ki1017093b-PROVIDE         BANGLADESH                     4+            22    578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1            407    578
24 months   ki1017093b-PROVIDE         BANGLADESH                     2             92    578
24 months   ki1017093b-PROVIDE         BANGLADESH                     3             57    578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+            82    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            217    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2            137    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3             78    514
24 months   ki1113344-GMS-Nepal        NEPAL                          4+           237    498
24 months   ki1113344-GMS-Nepal        NEPAL                          1             36    498
24 months   ki1113344-GMS-Nepal        NEPAL                          2            108    498
24 months   ki1113344-GMS-Nepal        NEPAL                          3            117    498
24 months   ki1114097-CONTENT          PERU                           4+            63    164
24 months   ki1114097-CONTENT          PERU                           1             30    164
24 months   ki1114097-CONTENT          PERU                           2             39    164
24 months   ki1114097-CONTENT          PERU                           3             32    164
24 months   ki1135781-COHORTS          INDIA                          4+            75   3719
24 months   ki1135781-COHORTS          INDIA                          1           2287   3719
24 months   ki1135781-COHORTS          INDIA                          2           1207   3719
24 months   ki1135781-COHORTS          INDIA                          3            150   3719
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+           180   4275
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1           2465   4275
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2           1245   4275
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3            385   4275
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+            50   1248
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1            744   1248
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2            316   1248
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3            138   1248


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/a4a4866f-597c-46df-b5ec-8863193ec7b8/f24af118-9cd7-4848-beb2-7eb80379415d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.0507340   -1.4900692   -0.6113987
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.0135819   -1.3903704   -0.6367934
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.9071981   -1.2083363   -0.6060599
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed           0.2172903    0.0094167    0.4251639
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.3834248   -0.1863431    0.9531928
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.9052730    0.2063291    1.6042169
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0465869   -0.6113831    0.5182092
Birth       ki1000108-IRC              INDIA                          optimal              observed          -1.0744264   -1.8984310   -0.2504217
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.7327081   -0.8729303   -0.5924860
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.6008284   -0.6907768   -0.5108799
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.0349422   -0.2415603    0.3114447
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.0303189   -1.3771601   -0.6834777
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.4829929    0.0696023    0.8963836
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           1.0477216    0.7897648    1.3056785
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.9529785    0.3623454    1.5436115
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.3315343    0.1026744    0.5603943
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.2658177   -0.8828442    0.3512088
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.7039023   -0.9229076   -0.4848969
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0034181   -0.2145078    0.2076715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.2346697    0.0125639    0.4567754
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.7527267   -0.9683475   -0.5371060
6 months    ki1114097-CONTENT          PERU                           optimal              observed           1.0772536    0.7886916    1.3658155
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.2885605   -0.4130300   -0.1640910
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.4039724   -0.5044573   -0.3034876
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.2331996   -0.4854443    0.0190451
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.8762626   -1.4628617   -0.2896634
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.0894309   -1.4481360   -0.7307258
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.1549247   -0.4886099    0.1787606
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.2226093    0.0566931    0.3885254
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.6399470    0.2624107    1.0174833
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1215694   -0.0344678    0.2776066
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.4479747   -0.7775923   -0.1183571
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.7309119   -1.0712031   -0.3906206
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.9915071   -1.3710615   -0.6119527
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.2602001   -0.5235948    0.0031945
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.2575844   -1.5358318   -0.9793370
24 months   ki1114097-CONTENT          PERU                           optimal              observed           0.7779246    0.4393120    1.1165372
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.0869124   -0.2536269    0.0798021
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.2311280   -1.3393356   -1.1229203
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.2629769   -1.5020976   -1.0238561


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.9902252   -1.1311070   -0.8493435
Birth       ki0047075b-MAL-ED          INDIA                          observed             observed          -1.0536702   -1.1965043   -0.9108361
Birth       ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.9174699   -1.0573845   -0.7775553
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.0384921   -0.1542085    0.0772244
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.0073148   -0.1632037    0.1485740
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.8024561    0.5990025    1.0059098
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.6275000   -0.9746292   -0.2803708
Birth       ki1000108-IRC              INDIA                          observed             observed          -1.0053372   -1.1922119   -0.8184626
Birth       ki1135781-COHORTS          INDIA                          observed             observed          -0.9778087   -1.0126530   -0.9429644
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.7660941   -0.7930639   -0.7391243
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.1354618   -0.2647919   -0.0061317
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -0.7056667   -0.8312524   -0.5800810
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed           0.1110452   -0.0202712    0.2423616
6 months    ki0047075b-MAL-ED          PERU                           observed             observed           1.0527407    0.9299728    1.1755087
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.5403280    0.3866002    0.6940558
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5170513    0.3872178    0.6468847
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.5026766   -0.6536848   -0.3516685
6 months    ki1000108-IRC              INDIA                          observed             observed          -0.5900821   -0.7252457   -0.4549185
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.2083706   -0.2927992   -0.1239419
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed           0.0297622   -0.0491685    0.1086930
6 months    ki1113344-GMS-Nepal        NEPAL                          observed             observed          -0.6047987   -0.6909649   -0.5186325
6 months    ki1114097-CONTENT          PERU                           observed             observed           1.0684318    0.9515274    1.1853362
6 months    ki1135781-COHORTS          INDIA                          observed             observed          -0.7088012   -0.7411274   -0.6764750
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.5891495   -0.6166582   -0.5616408
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.3684250   -0.4392750   -0.2975751
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.8208255   -0.9429246   -0.6987264
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -0.9522907   -1.0676596   -0.8369219
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.3764474   -0.4898516   -0.2630431
24 months   ki0047075b-MAL-ED          PERU                           observed             observed           0.1199005   -0.0000331    0.2398341
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.4267017    0.3074751    0.5459283
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0500935   -0.0748234    0.1750103
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.5571505   -0.6585247   -0.4557763
24 months   ki1000108-IRC              INDIA                          observed             observed          -0.7416790   -0.8323562   -0.6510017
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.8879412   -0.9708680   -0.8050144
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.6103502   -0.7050157   -0.5156847
24 months   ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.1315863   -1.2192240   -1.0439487
24 months   ki1114097-CONTENT          PERU                           observed             observed           0.5668293    0.4302437    0.7034148
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -0.6612799   -0.6944511   -0.6281088
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.2909988   -1.3235693   -1.2584284
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.2302244   -1.2892920   -1.1711567


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.0605088   -0.3751822    0.4961997
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.0400883   -0.4022646    0.3220880
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0102718   -0.3002420    0.2796984
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.2557824   -0.4498816   -0.0616831
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.3907396   -0.9360990    0.1546197
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1028169   -0.7804418    0.5748081
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.5809131   -1.1432773   -0.0185488
Birth       ki1000108-IRC              INDIA                          optimal              observed           0.0690891   -0.7264784    0.8646566
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.2451006   -0.3854475   -0.1047537
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1652657   -0.2536288   -0.0769027
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1704040   -0.4204236    0.0796157
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed           0.3246522    0.0032145    0.6460900
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.3719477   -0.7528321    0.0089366
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           0.0050191   -0.2350552    0.2450934
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.4126505   -0.9776038    0.1523028
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1855170   -0.0273903    0.3984242
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.2368589   -0.8290815    0.3553636
6 months    ki1000108-IRC              INDIA                          optimal              observed           0.1138202   -0.0774142    0.3050546
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.2049524   -0.4010937   -0.0088112
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.2049074   -0.4121132    0.0022984
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed           0.1479280   -0.0508604    0.3467165
6 months    ki1114097-CONTENT          PERU                           optimal              observed          -0.0088218   -0.2421446    0.2245011
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.4202407   -0.5453506   -0.2951308
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1851771   -0.2832774   -0.0870768
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.1352254   -0.3841931    0.1137422
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.0554371   -0.5121555    0.6230297
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed           0.1371402   -0.1956672    0.4699475
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.2215227   -0.5361660    0.0931206
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.1027088   -0.2136914    0.0082739
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.2132453   -0.5855399    0.1590493
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0714759   -0.2050513    0.0620995
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.1091758   -0.4313016    0.2129499
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.0107671   -0.3395363    0.3180021
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed           0.1035659   -0.2658770    0.4730089
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.3501501   -0.5926063   -0.1076939
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed           0.1259980   -0.1388088    0.3908049
24 months   ki1114097-CONTENT          PERU                           optimal              observed          -0.2110953   -0.5000784    0.0778877
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.5743675   -0.7394947   -0.4092403
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0598709   -0.1639488    0.0442071
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed           0.0327525   -0.1941914    0.2596965
