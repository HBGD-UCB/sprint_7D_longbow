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

**Outcome Variable:** haz

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
Birth       ki0047075b-MAL-ED          BANGLADESH                     4+            12     234
Birth       ki0047075b-MAL-ED          BANGLADESH                     1            144     234
Birth       ki0047075b-MAL-ED          BANGLADESH                     2             50     234
Birth       ki0047075b-MAL-ED          BANGLADESH                     3             28     234
Birth       ki0047075b-MAL-ED          BRAZIL                         4+           102     174
Birth       ki0047075b-MAL-ED          BRAZIL                         1              3     174
Birth       ki0047075b-MAL-ED          BRAZIL                         2             19     174
Birth       ki0047075b-MAL-ED          BRAZIL                         3             50     174
Birth       ki0047075b-MAL-ED          INDIA                          4+            22     191
Birth       ki0047075b-MAL-ED          INDIA                          1             69     191
Birth       ki0047075b-MAL-ED          INDIA                          2             68     191
Birth       ki0047075b-MAL-ED          INDIA                          3             32     191
Birth       ki0047075b-MAL-ED          NEPAL                          4+            97     171
Birth       ki0047075b-MAL-ED          NEPAL                          1             36     171
Birth       ki0047075b-MAL-ED          NEPAL                          2             21     171
Birth       ki0047075b-MAL-ED          NEPAL                          3             17     171
Birth       ki0047075b-MAL-ED          PERU                           4+           132     259
Birth       ki0047075b-MAL-ED          PERU                           1             17     259
Birth       ki0047075b-MAL-ED          PERU                           2             51     259
Birth       ki0047075b-MAL-ED          PERU                           3             59     259
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4+           160     218
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1             14     218
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2             21     218
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3             23     218
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+            55     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              6     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2             24     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3             33     118
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4+             5      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1             38      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2             28      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3             19      90
Birth       ki1000108-IRC              INDIA                          4+            17     386
Birth       ki1000108-IRC              INDIA                          1            175     386
Birth       ki1000108-IRC              INDIA                          2            161     386
Birth       ki1000108-IRC              INDIA                          3             33     386
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     4+             3      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1             17      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2              7      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     3              0      27
Birth       ki1114097-CONTENT          PERU                           4+             1       2
Birth       ki1114097-CONTENT          PERU                           1              0       2
Birth       ki1114097-CONTENT          PERU                           2              1       2
Birth       ki1114097-CONTENT          PERU                           3              0       2
Birth       ki1135781-COHORTS          INDIA                          4+            92    4769
Birth       ki1135781-COHORTS          INDIA                          1           3125    4769
Birth       ki1135781-COHORTS          INDIA                          2           1385    4769
Birth       ki1135781-COHORTS          INDIA                          3            167    4769
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4+           584   19589
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1          12327   19589
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2           5117   19589
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3           1561   19589
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4+            26     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1            506     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2            207     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3             83     822
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
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+            14     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1            198     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2            106     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3             51     369
6 months    ki1000108-IRC              INDIA                          4+            17     405
6 months    ki1000108-IRC              INDIA                          1            183     405
6 months    ki1000108-IRC              INDIA                          2            170     405
6 months    ki1000108-IRC              INDIA                          3             35     405
6 months    ki1017093b-PROVIDE         BANGLADESH                     4+            21     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1            415     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     2             91     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     3             56     583
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
6 months    ki1135781-COHORTS          INDIA                          4+            93    4962
6 months    ki1135781-COHORTS          INDIA                          1           3213    4962
6 months    ki1135781-COHORTS          INDIA                          2           1474    4962
6 months    ki1135781-COHORTS          INDIA                          3            182    4962
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+           744   16800
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1           9625   16800
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2           4740   16800
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3           1691   16800
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+           262    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1           2850    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2           1225    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3            488    4825
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
24 months   ki1017093b-PROVIDE         BANGLADESH                     4+            22     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1            406     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     2             92     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     3             57     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+            82     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            217     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2            137     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3             78     514
24 months   ki1113344-GMS-Nepal        NEPAL                          4+           237     499
24 months   ki1113344-GMS-Nepal        NEPAL                          1             36     499
24 months   ki1113344-GMS-Nepal        NEPAL                          2            108     499
24 months   ki1113344-GMS-Nepal        NEPAL                          3            118     499
24 months   ki1114097-CONTENT          PERU                           4+            63     164
24 months   ki1114097-CONTENT          PERU                           1             30     164
24 months   ki1114097-CONTENT          PERU                           2             39     164
24 months   ki1114097-CONTENT          PERU                           3             32     164
24 months   ki1135781-COHORTS          INDIA                          4+            76    3749
24 months   ki1135781-COHORTS          INDIA                          1           2302    3749
24 months   ki1135781-COHORTS          INDIA                          2           1221    3749
24 months   ki1135781-COHORTS          INDIA                          3            150    3749
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+           367    8620
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1           5051    8620
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2           2400    8620
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3            802    8620
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+           251    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1           2789    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2           1216    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3            491    4747


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
![](/tmp/e30fb77a-0177-4478-9071-6b222f1679b4/b79ae306-0cc3-48a1-bdd1-523b658629ea/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.4673404   -1.0800870    0.1454062
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.8287695   -1.2156321   -0.4419068
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -1.1772045   -1.4846572   -0.8697519
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.9681069   -1.2738201   -0.6623937
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.3883248   -0.8191044    0.0424547
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.0621221   -1.4164369   -0.7078073
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -1.4902795   -2.0305986   -0.9499605
Birth       ki1000108-IRC              INDIA                          optimal              observed           0.4583986   -0.4648787    1.3816760
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.7277971   -0.8741098   -0.5814845
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.3547685   -1.4268435   -1.2826936
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.4540770   -1.6757339   -1.2324201
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.2228095   -1.6814920   -0.7641270
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.0532855   -1.3216270   -0.7849441
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.6849412   -0.8997538   -0.4701285
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -1.5507516   -1.7774947   -1.3240085
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -1.1587947   -1.4766381   -0.8409514
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.2040565   -1.4203687   -0.9877443
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -1.0929888   -1.5702556   -0.6157220
6 months    ki1000108-IRC              INDIA                          optimal              observed          -1.3185404   -1.9177637   -0.7193170
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.9899415   -1.4112331   -0.5686498
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.9168359   -1.1136653   -0.7200065
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.4738439   -1.6140004   -1.3336874
6 months    ki1114097-CONTENT          PERU                           optimal              observed          -0.3113132   -0.6858153    0.0631889
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.6770028   -0.8096966   -0.5443090
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.0816790   -1.1565110   -1.0068470
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.0866423   -1.2283117   -0.9449729
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.4898291   -1.9471923   -1.0324660
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.9331232   -2.1755558   -1.6906905
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -1.1181840   -1.4572628   -0.7791052
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -1.7367335   -1.9739806   -1.4994865
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -1.1841728   -1.6837097   -0.6846358
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.7429239   -3.4549540   -2.0308938
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -2.1989946   -2.6173240   -1.7806653
24 months   ki1000108-IRC              INDIA                          optimal              observed          -1.6361280   -1.7814898   -1.4907661
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.9400604   -1.4184474   -0.4616734
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.0040327   -1.1836206   -0.8244448
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.8483424   -1.9680892   -1.7285956
24 months   ki1114097-CONTENT          PERU                           optimal              observed          -0.8547409   -1.1572932   -0.5521885
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -1.3410843   -1.5139285   -1.1682401
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.6967220   -1.8091192   -1.5843249
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.3905226   -1.5154341   -1.2656111


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.0229487   -1.1509575   -0.8949400
Birth       ki0047075b-MAL-ED          INDIA                          observed             observed          -1.0069634   -1.1525107   -0.8614160
Birth       ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.6998830   -0.8579049   -0.5418612
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.9447876   -1.0604945   -0.8290808
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.6917890   -0.8248091   -0.5587689
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.8810169   -1.0869236   -0.6751103
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.9654444   -1.1742112   -0.7566777
Birth       ki1000108-IRC              INDIA                          observed             observed          -0.3079016   -0.4694769   -0.1463262
Birth       ki1135781-COHORTS          INDIA                          observed             observed          -0.6777626   -0.7107167   -0.6448086
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.5751978   -1.5949779   -1.5554177
Birth       kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.4976642   -1.5817349   -1.4135935
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.2033681   -1.3212429   -1.0854932
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -1.2159433   -1.3345235   -1.0973630
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.5610593   -0.6737915   -0.4483272
6 months    ki0047075b-MAL-ED          PERU                           observed             observed          -1.3280247   -1.4371552   -1.2188942
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.0548494   -1.1845497   -0.9251491
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.3601215   -1.4821830   -1.2380600
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -1.4234508   -1.5645974   -1.2823042
6 months    ki1000108-IRC              INDIA                          observed             observed          -1.2470123   -1.3779341   -1.1160906
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.0871041   -1.1635539   -1.0106543
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.1986783   -1.2700937   -1.1272630
6 months    ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.3321522   -1.4103691   -1.2539352
6 months    ki1114097-CONTENT          PERU                           observed             observed          -0.3139217   -0.4868486   -0.1409948
6 months    ki1135781-COHORTS          INDIA                          observed             observed          -1.0413281   -1.0740395   -1.0086167
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.3132988   -1.3364412   -1.2901565
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.3440477   -1.3813060   -1.3067894
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.9431132   -2.0691678   -1.8170586
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -1.8458150   -1.9718703   -1.7197596
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -1.2752193   -1.3954783   -1.1549603
24 months   ki0047075b-MAL-ED          PERU                           observed             observed          -1.7500995   -1.8705474   -1.6296516
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.6228361   -1.7581177   -1.4875546
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.6058879   -2.7403043   -2.4714714
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -2.5593683   -2.6601027   -2.4586339
24 months   ki1000108-IRC              INDIA                          observed             observed          -1.7853686   -1.8795723   -1.6911648
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.5861179   -1.6693668   -1.5028689
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.4295331   -1.5127726   -1.3462935
24 months   ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.8835905   -1.9681499   -1.7990312
24 months   ki1114097-CONTENT          PERU                           observed             observed          -0.6962195   -0.8674103   -0.5250287
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -2.0008909   -2.0401990   -1.9615828
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -2.0127436   -2.0404564   -1.9850309
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.7578934   -1.7933205   -1.7224663


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.5556083   -1.1513301    0.0401134
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.1781939   -0.5434223    0.1870345
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.4773215    0.1920171    0.7626259
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed           0.0233193   -0.2440374    0.2906760
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.3034642   -0.7301367    0.1232084
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1811052   -0.1851711    0.5473814
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.5248351    0.0168600    1.0328102
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.7663002   -1.6585873    0.1259869
Birth       ki1135781-COHORTS          INDIA                          optimal              observed           0.0500345   -0.0939871    0.1940562
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.2204293   -0.2924279   -0.1484307
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0435872   -0.2520131    0.1648386
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.0194414   -0.4334556    0.4723385
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.1626577   -0.4107770    0.0854615
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.1238818   -0.0565283    0.3042920
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           0.2227269    0.0154314    0.4300224
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.1039453   -0.2102408    0.4181315
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1560649   -0.3508446    0.0387148
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.3304620   -0.7993060    0.1383821
6 months    ki1000108-IRC              INDIA                          optimal              observed           0.0715280   -0.5008101    0.6438661
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0971626   -0.5099706    0.3156454
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.2818424   -0.4653697   -0.0983152
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed           0.1416917    0.0225518    0.2608317
6 months    ki1114097-CONTENT          PERU                           optimal              observed          -0.0026085   -0.3311392    0.3259223
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.3643253   -0.4966772   -0.2319734
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.2316198   -0.3063295   -0.1569101
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.2574054   -0.3950880   -0.1197227
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.4532841   -0.9057219   -0.0008462
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed           0.0873082   -0.1018767    0.2764931
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.1570353   -0.4631613    0.1490908
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0133660   -0.2264781    0.1997462
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.4386634   -0.9209601    0.0436334
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1370360   -0.5444036    0.8184757
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.3603736   -0.7769090    0.0561617
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.1492406   -0.2622929   -0.0361883
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.6460574   -1.1142355   -0.1778794
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.4255004   -0.5978898   -0.2531109
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0352481   -0.1322002    0.0617041
24 months   ki1114097-CONTENT          PERU                           optimal              observed           0.1585213   -0.0923640    0.4094067
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.6598066   -0.8310147   -0.4885985
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.3160216   -0.4235933   -0.2084498
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.3673708   -0.4874487   -0.2472929
