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

agecat      studyid                    country                        nrooms    n_cell       n
----------  -------------------------  -----------------------------  -------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     4+            12     222
Birth       ki0047075b-MAL-ED          BANGLADESH                     1            135     222
Birth       ki0047075b-MAL-ED          BANGLADESH                     2             47     222
Birth       ki0047075b-MAL-ED          BANGLADESH                     3             28     222
Birth       ki0047075b-MAL-ED          BRAZIL                         4+            99     167
Birth       ki0047075b-MAL-ED          BRAZIL                         1              3     167
Birth       ki0047075b-MAL-ED          BRAZIL                         2             19     167
Birth       ki0047075b-MAL-ED          BRAZIL                         3             46     167
Birth       ki0047075b-MAL-ED          INDIA                          4+            22     188
Birth       ki0047075b-MAL-ED          INDIA                          1             68     188
Birth       ki0047075b-MAL-ED          INDIA                          2             66     188
Birth       ki0047075b-MAL-ED          INDIA                          3             32     188
Birth       ki0047075b-MAL-ED          NEPAL                          4+            94     166
Birth       ki0047075b-MAL-ED          NEPAL                          1             34     166
Birth       ki0047075b-MAL-ED          NEPAL                          2             21     166
Birth       ki0047075b-MAL-ED          NEPAL                          3             17     166
Birth       ki0047075b-MAL-ED          PERU                           4+           127     252
Birth       ki0047075b-MAL-ED          PERU                           1             17     252
Birth       ki0047075b-MAL-ED          PERU                           2             51     252
Birth       ki0047075b-MAL-ED          PERU                           3             57     252
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4+           159     216
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1             14     216
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2             20     216
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3             23     216
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+            54     114
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              6     114
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2             23     114
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3             31     114
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4+             5      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1             39      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2             26      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3             18      88
Birth       ki1000108-IRC              INDIA                          4+            14     341
Birth       ki1000108-IRC              INDIA                          1            156     341
Birth       ki1000108-IRC              INDIA                          2            140     341
Birth       ki1000108-IRC              INDIA                          3             31     341
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     4+             2      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1             15      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2              6      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     3              0      23
Birth       ki1114097-CONTENT          PERU                           4+             1       2
Birth       ki1114097-CONTENT          PERU                           1              0       2
Birth       ki1114097-CONTENT          PERU                           2              1       2
Birth       ki1114097-CONTENT          PERU                           3              0       2
Birth       ki1135781-COHORTS          INDIA                          4+            90    4454
Birth       ki1135781-COHORTS          INDIA                          1           2879    4454
Birth       ki1135781-COHORTS          INDIA                          2           1328    4454
Birth       ki1135781-COHORTS          INDIA                          3            157    4454
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4+           505   15686
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1           9890   15686
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2           4027   15686
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3           1264   15686
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4+            19     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1            426     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2            170     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3             68     683
6 months    ki0047075b-MAL-ED          BANGLADESH                     4+            12     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     1            150     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     2             50     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     3             28     240
6 months    ki0047075b-MAL-ED          BRAZIL                         4+           126     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1              4     209
6 months    ki0047075b-MAL-ED          BRAZIL                         2             20     209
6 months    ki0047075b-MAL-ED          BRAZIL                         3             59     209
6 months    ki0047075b-MAL-ED          INDIA                          4+            25     235
6 months    ki0047075b-MAL-ED          INDIA                          1             84     235
6 months    ki0047075b-MAL-ED          INDIA                          2             78     235
6 months    ki0047075b-MAL-ED          INDIA                          3             48     235
6 months    ki0047075b-MAL-ED          NEPAL                          4+           131     236
6 months    ki0047075b-MAL-ED          NEPAL                          1             52     236
6 months    ki0047075b-MAL-ED          NEPAL                          2             31     236
6 months    ki0047075b-MAL-ED          NEPAL                          3             22     236
6 months    ki0047075b-MAL-ED          PERU                           4+           139     270
6 months    ki0047075b-MAL-ED          PERU                           1             19     270
6 months    ki0047075b-MAL-ED          PERU                           2             50     270
6 months    ki0047075b-MAL-ED          PERU                           3             62     270
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+           191     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1             14     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2             21     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3             23     249
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+           108     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             13     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2             62     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3             64     247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+            14     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1            197     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2            106     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3             51     368
6 months    ki1000108-IRC              INDIA                          4+            17     406
6 months    ki1000108-IRC              INDIA                          1            183     406
6 months    ki1000108-IRC              INDIA                          2            170     406
6 months    ki1000108-IRC              INDIA                          3             36     406
6 months    ki1017093b-PROVIDE         BANGLADESH                     4+            21     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     1            414     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     2             91     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     3             56     582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+            91     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1            339     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2            184     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3            101     715
6 months    ki1113344-GMS-Nepal        NEPAL                          4+           267     563
6 months    ki1113344-GMS-Nepal        NEPAL                          1             40     563
6 months    ki1113344-GMS-Nepal        NEPAL                          2            115     563
6 months    ki1113344-GMS-Nepal        NEPAL                          3            141     563
6 months    ki1114097-CONTENT          PERU                           4+            78     215
6 months    ki1114097-CONTENT          PERU                           1             44     215
6 months    ki1114097-CONTENT          PERU                           2             54     215
6 months    ki1114097-CONTENT          PERU                           3             39     215
6 months    ki1135781-COHORTS          INDIA                          4+            93    4955
6 months    ki1135781-COHORTS          INDIA                          1           3206    4955
6 months    ki1135781-COHORTS          INDIA                          2           1474    4955
6 months    ki1135781-COHORTS          INDIA                          3            182    4955
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+           742   16773
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1           9611   16773
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2           4732   16773
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3           1688   16773
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+           262    4827
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1           2851    4827
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2           1226    4827
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3            488    4827
24 months   ki0047075b-MAL-ED          BANGLADESH                     4+            11     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1            134     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     2             40     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     3             27     212
24 months   ki0047075b-MAL-ED          BRAZIL                         4+           104     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1              0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         2             16     169
24 months   ki0047075b-MAL-ED          BRAZIL                         3             49     169
24 months   ki0047075b-MAL-ED          INDIA                          4+            25     227
24 months   ki0047075b-MAL-ED          INDIA                          1             82     227
24 months   ki0047075b-MAL-ED          INDIA                          2             74     227
24 months   ki0047075b-MAL-ED          INDIA                          3             46     227
24 months   ki0047075b-MAL-ED          NEPAL                          4+           127     228
24 months   ki0047075b-MAL-ED          NEPAL                          1             48     228
24 months   ki0047075b-MAL-ED          NEPAL                          2             31     228
24 months   ki0047075b-MAL-ED          NEPAL                          3             22     228
24 months   ki0047075b-MAL-ED          PERU                           4+           110     201
24 months   ki0047075b-MAL-ED          PERU                           1             16     201
24 months   ki0047075b-MAL-ED          PERU                           2             32     201
24 months   ki0047075b-MAL-ED          PERU                           3             43     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+           183     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1             13     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2             19     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3             23     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+            98     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              9     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2             50     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3             57     214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+            14     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1            201     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2            106     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3             51     372
24 months   ki1000108-IRC              INDIA                          4+            17     407
24 months   ki1000108-IRC              INDIA                          1            184     407
24 months   ki1000108-IRC              INDIA                          2            170     407
24 months   ki1000108-IRC              INDIA                          3             36     407
24 months   ki1017093b-PROVIDE         BANGLADESH                     4+            22     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1            407     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     2             92     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     3             57     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+            82     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            217     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2            137     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3             78     514
24 months   ki1113344-GMS-Nepal        NEPAL                          4+           237     498
24 months   ki1113344-GMS-Nepal        NEPAL                          1             36     498
24 months   ki1113344-GMS-Nepal        NEPAL                          2            108     498
24 months   ki1113344-GMS-Nepal        NEPAL                          3            117     498
24 months   ki1114097-CONTENT          PERU                           4+            63     164
24 months   ki1114097-CONTENT          PERU                           1             30     164
24 months   ki1114097-CONTENT          PERU                           2             39     164
24 months   ki1114097-CONTENT          PERU                           3             32     164
24 months   ki1135781-COHORTS          INDIA                          4+            75    3719
24 months   ki1135781-COHORTS          INDIA                          1           2287    3719
24 months   ki1135781-COHORTS          INDIA                          2           1207    3719
24 months   ki1135781-COHORTS          INDIA                          3            150    3719
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+           365    8591
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1           5036    8591
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2           2394    8591
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3            796    8591
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+           251    4730
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1           2781    4730
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2           1208    4730
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3            490    4730


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
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/21c83897-31c2-491b-9b6e-70f77c263908/a136352c-a675-42c7-ac9b-5f40a9bf5a7e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.9725935   -1.3753300   -0.5698570
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.0154277   -1.4514266   -0.5794287
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.9171751   -1.2702031   -0.5641470
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed           0.2153531    0.0074637    0.4232426
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.4193169   -0.1193438    0.9579776
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           1.0982177    0.7465104    1.4499249
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0763117   -0.6386801    0.4860567
Birth       ki1000108-IRC              INDIA                          optimal              observed          -1.2615095   -1.8964914   -0.6265277
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.6298744   -0.7772199   -0.4825289
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.5863726   -0.6655219   -0.5072234
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.5157683   -0.9286333   -0.1029034
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.0588422   -0.2211246    0.3388090
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.1630267   -1.4796136   -0.8464399
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.4145568   -0.0058034    0.8349169
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           1.0206250    0.7473279    1.2939221
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.8955337    0.2666338    1.5244336
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.2691668    0.0250080    0.5133256
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.5842488   -1.0313705   -0.1371271
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.7271196   -0.9159258   -0.5383133
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed           0.0056440   -0.2027297    0.2140177
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.2319215    0.0107886    0.4530543
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.6502797   -0.8468730   -0.4536865
6 months    ki1114097-CONTENT          PERU                           optimal              observed           1.1711146    0.9695654    1.3726637
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.2683271   -0.3905286   -0.1461256
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.4910991   -0.5671645   -0.4150336
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.2472860   -0.4546945   -0.0398775
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.9504426   -1.5204489   -0.3804364
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.2902825   -1.5866128   -0.9939521
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.1405540   -0.5087837    0.2276757
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.2147649    0.0503863    0.3791436
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.6635283    0.2939720    1.0330846
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0270571   -0.1391100    0.1932242
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.5352899   -0.8652853   -0.2052945
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.6664810   -1.0474453   -0.2855167
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.7347671   -1.1468703   -0.3226639
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.3801503   -0.6706424   -0.0896582
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.1728618   -1.4620935   -0.8836301
24 months   ki1114097-CONTENT          PERU                           optimal              observed           0.8057735    0.4378581    1.1736888
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.3272288   -0.4878411   -0.1666166
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.2229672   -1.2990987   -1.1468358
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.2629909   -1.4259661   -1.1000156


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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.7238563   -0.7437124   -0.7040002
Birth       kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.3683163   -0.4490504   -0.2875821
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.5930302   -0.6125738   -0.5734865
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.3901595   -0.4274150   -0.3529041
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.2967966   -1.3200807   -1.2735126
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.2231776   -1.2550332   -1.1913220


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0176317   -0.4169690    0.3817056
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.0382425   -0.4382483    0.3617632
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0002948   -0.3323291    0.3317394
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.2538452   -0.4481447   -0.0595458
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.4266317   -0.9416490    0.0883857
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.2957615   -0.6401010    0.0485780
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.5511883   -1.1111990    0.0088224
Birth       ki1000108-IRC              INDIA                          optimal              observed           0.2561723   -0.3633071    0.8756517
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.3479343   -0.4951052   -0.2007634
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1374837   -0.2155014   -0.0594659
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed           0.1474521   -0.2553875    0.5502917
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1943040   -0.4468448    0.0582369
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed           0.4573601    0.1674442    0.7472760
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.3035116   -0.6922577    0.0852346
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           0.0321158   -0.2255857    0.2898172
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.3552057   -0.9576608    0.2472494
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.2478845    0.0138302    0.4819389
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.0815721   -0.3314872    0.4946315
6 months    ki1000108-IRC              INDIA                          optimal              observed           0.1370375   -0.0375295    0.3116044
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.2140146   -0.4075234   -0.0205057
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.2021592   -0.4083763    0.0040579
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed           0.0454810   -0.1271794    0.2181414
6 months    ki1114097-CONTENT          PERU                           optimal              observed          -0.1026828   -0.2635374    0.0581718
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.4404741   -0.5634420   -0.3175062
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1019311   -0.1769455   -0.0269168
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.1428735   -0.3404644    0.0547174
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.1296172   -0.4161084    0.6753428
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed           0.3379917    0.0594183    0.6165652
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.2358934   -0.5784118    0.1066250
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0948644   -0.2043998    0.0146710
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.2368267   -0.6006225    0.1269692
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0230364   -0.1201494    0.1662222
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0218606   -0.3403098    0.2965886
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.0751979   -0.4436994    0.2933036
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1531741   -0.5577021    0.2513540
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.2301999   -0.4969505    0.0365507
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed           0.0412755   -0.2326243    0.3151752
24 months   ki1114097-CONTENT          PERU                           optimal              observed          -0.2389442   -0.5523406    0.0744522
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.3340511   -0.4933295   -0.1747727
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0738294   -0.1480688    0.0004100
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed           0.0398133   -0.1133689    0.1929955
