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
        value: FALSE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
  output_directory:
    value: ''

---







## Methods
## Outcome Variable

**Outcome Variable:** y_rate_haz

## Predictor Variables

**Intervention Variable:** impfloor

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_nrooms
* W_nchldlt5
* W_parity
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_nrooms
* delta_W_nchldlt5
* delta_W_parity
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country                        impfloor    n_cell       n
-------------  -------------------------  -----------------------------  ---------  -------  ------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0               19     237
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1              218     237
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     0               63     564
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     1              501     564
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0               53     634
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1              581     634
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0              174     720
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1              546     720
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0            18670   20001
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1             1331   20001
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0             1623    1805
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1              182    1805
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0                2     174
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1              172     174
0-3 months     ki0047075b-MAL-ED          INDIA                          0               11     194
0-3 months     ki0047075b-MAL-ED          INDIA                          1              183     194
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1               67      67
0-3 months     ki1000108-IRC              INDIA                          1              280     280
0-3 months     ki0047075b-MAL-ED          NEPAL                          0              100     168
0-3 months     ki0047075b-MAL-ED          NEPAL                          1               68     168
0-3 months     ki0047075b-MAL-ED          PERU                           0              204     260
0-3 months     ki0047075b-MAL-ED          PERU                           1               56     260
0-3 months     ki1114097-CONTENT          PERU                           0                2      29
0-3 months     ki1114097-CONTENT          PERU                           1               27      29
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0               20     215
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1              195     215
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              213     224
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               11     224
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0               17     231
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1              214     231
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     0               58     521
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     1              463     521
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0               43     574
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1              531     574
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0              174     695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1              521     695
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0            11469   12550
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1             1081   12550
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0             1639    1839
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1              200    1839
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0                2     208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1              206     208
3-6 months     ki0047075b-MAL-ED          INDIA                          0               15     229
3-6 months     ki0047075b-MAL-ED          INDIA                          1              214     229
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1              214     214
3-6 months     ki1000108-IRC              INDIA                          1              297     297
3-6 months     ki0047075b-MAL-ED          NEPAL                          0              126     227
3-6 months     ki0047075b-MAL-ED          NEPAL                          1              101     227
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0              301     370
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1               69     370
3-6 months     ki0047075b-MAL-ED          PERU                           0              209     267
3-6 months     ki0047075b-MAL-ED          PERU                           1               58     267
3-6 months     ki1114097-CONTENT          PERU                           0               14     214
3-6 months     ki1114097-CONTENT          PERU                           1              200     214
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0               19     239
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1              220     239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              226     237
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               11     237
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     0               16     220
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1              204     220
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     0               52     481
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     1              429     481
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0               40     545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1              505     545
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0              174     676
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1              502     676
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     0             8973    9815
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1              842    9815
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0             2773    3158
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1              385    3158
6-12 months    ki0047075b-MAL-ED          BRAZIL                         0                2     194
6-12 months    ki0047075b-MAL-ED          BRAZIL                         1              192     194
6-12 months    ki0047075b-MAL-ED          INDIA                          0               14     224
6-12 months    ki0047075b-MAL-ED          INDIA                          1              210     224
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1              225     225
6-12 months    ki1000108-IRC              INDIA                          1              299     299
6-12 months    ki0047075b-MAL-ED          NEPAL                          0              124     223
6-12 months    ki0047075b-MAL-ED          NEPAL                          1               99     223
6-12 months    ki1113344-GMS-Nepal        NEPAL                          0              306     377
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1               71     377
6-12 months    ki0047075b-MAL-ED          PERU                           0              183     237
6-12 months    ki0047075b-MAL-ED          PERU                           1               54     237
6-12 months    ki1114097-CONTENT          PERU                           0               14     213
6-12 months    ki1114097-CONTENT          PERU                           1              199     213
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               20     232
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1              212     232
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              211     221
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               10     221
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     0               17     206
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1              189     206
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     0               48     419
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     1              371     419
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0               37     458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1              421     458
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0              168     495
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              327     495
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0             4241    4641
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              400    4641
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0             3218    3634
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1              416    3634
12-24 months   ki0047075b-MAL-ED          BRAZIL                         0                2     165
12-24 months   ki0047075b-MAL-ED          BRAZIL                         1              163     165
12-24 months   ki0047075b-MAL-ED          INDIA                          0               14     225
12-24 months   ki0047075b-MAL-ED          INDIA                          1              211     225
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              228     228
12-24 months   ki1000108-IRC              INDIA                          1              297     297
12-24 months   ki0047075b-MAL-ED          NEPAL                          0              123     219
12-24 months   ki0047075b-MAL-ED          NEPAL                          1               96     219
12-24 months   ki1113344-GMS-Nepal        NEPAL                          0              219     276
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1               57     276
12-24 months   ki0047075b-MAL-ED          PERU                           0              145     191
12-24 months   ki0047075b-MAL-ED          PERU                           1               46     191
12-24 months   ki1114097-CONTENT          PERU                           0                5      38
12-24 months   ki1114097-CONTENT          PERU                           1               33      38
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               18     230
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              212     230
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              193     205
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               12     205


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
* agecat: 0-3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 12-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-12 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-12 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
##         y_rate_haz
## impfloor -1.19468002409639 -1.1011615443038 -1.05205997647059
##        0                 0                0                 0
##        1                 1                1                 2
##         y_rate_haz
## impfloor -0.995784821428571 -0.992163785714286 -0.859928925925926
##        0                  0                  0                  0
##        1                  2                  1                  1
##         y_rate_haz
## impfloor -0.854564428571429 -0.824336652173913 -0.698859892857143
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.686144162790698 -0.544120966666667 -0.538705409638554
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.506945 -0.423661178571429 -0.342624896551724
##        0         0                  0                  0
##        1         1                  1                  1
##         y_rate_haz
## impfloor -0.327791621359223 -0.307788035714286 -0.297482010989011
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.281636111111111 -0.278514361445783 -0.275872395348837
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.267073463414634 -0.20054967032967 -0.189657070588235
##        0                  0                 0                  0
##        1                  1                 1                  1
##         y_rate_haz
## impfloor -0.17743075 -0.155983076923077 -0.155539943181818
##        0           0                  0                  0
##        1           1                  1                  1
##         y_rate_haz
## impfloor -0.144841428571429 -0.126118024390244 -0.118287166666667
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.0289682857142857 -0.00790044155844156 -0.00334249450549443
##        0                   0                    0                    0
##        1                   1                    1                    1
##         y_rate_haz
## impfloor 0.00362103571428572 0.0181051785714286 0.0187757407407407
##        0                   0                  0                  0
##        1                   1                  1                  1
##         y_rate_haz
## impfloor 0.029820294117647 0.0337963333333333 0.0362103571428571
##        0                 0                  0                  0
##        1                 1                  1                  1
##         y_rate_haz
## impfloor 0.0395022077922078 0.0894608823529412 0.101389 0.123115214285714
##        0                  0                  0        0                 0
##        1                  1                  1        1                 1
##         y_rate_haz
## impfloor 0.136485192307692 0.160087894736842 0.160823931034483
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_haz
## impfloor 0.179120566666667 0.180494703296703 0.188103276315789
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_haz
## impfloor 0.235367321428571 0.24408462962963 0.249851464285714
##        0                 0                0                 0
##        1                 1                1                 1
##         y_rate_haz
## impfloor 0.307788035714286 0.332100704081633 0.377321088607595
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_haz
## impfloor 0.43399437804878 0.503323964285714 0.5056776375 0.542370072289157
##        0                0                 0            0                 0
##        1                1                 1            1                 1
##         y_rate_haz
## impfloor 0.579365714285714 0.59720593902439 0.643430192307692
##        0                 0                0                 0
##        1                 1                1                 1
##         y_rate_haz
## impfloor 0.744314541176471 0.8618065 1.00246588732394
##        0                 0         0                0
##        1                 1         1                1
##         y_rate_haz
## impfloor -1.42724515384615 -1.4093071 -1.36708025274725 -1.35222068478261
##        0                 0          0                 0                 0
##        1                 1          1                 1                 1
##         y_rate_haz
## impfloor -1.3403402967033 -1.32854551724138 -1.3281959 -1.32481626666667
##        0                0                 0          0                 0
##        1                1                 1          1                 1
##         y_rate_haz
## impfloor -1.31467736666667 -1.29351018947368 -1.29270975 -1.2876403
##        0                 0                 0           0          0
##        1                 1                 1           1          1
##         y_rate_haz
## impfloor -1.23548245360825 -1.23356616666667 -1.18754562765957
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_haz
## impfloor -1.18170627586207 -1.14489825842697 -1.13371336363636
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_haz
## impfloor -1.13217716666667 -1.11865863333333 -1.11072219101124
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_haz
## impfloor -1.1021965483871 -1.06971091011236 -1.03347651136364
##        0                0                 0                 0
##        1                1                 1                 1
##         y_rate_haz
## impfloor -1.03165920618557 -1.03152286956522 -1.01844680898876 -1.01389
##        0                 0                 0                 0        0
##        1                 1                 1                 1        2
##         y_rate_haz
## impfloor -1.01168589130435 -1.00274835164835 -1.00037146666667 -0.8922232
##        0                 0                 0                 0          0
##        1                 1                 1                 1          1
##         y_rate_haz
## impfloor -0.891762340909091 -0.888027793103448 -0.878704666666667
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.874480125 -0.869520880434783 -0.867199531914894
##        0            0                  0                  0
##        1            1                  1                  1
##         y_rate_haz
## impfloor -0.863554586206897 -0.862908554347826 -0.848993604395604
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.838966120879121 -0.838149066666667 -0.834690837209302
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.824630533333333 -0.815568659340659 -0.801894818181818
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.784074933333333 -0.783068234042553 -0.775796730337079
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.770335989130435 -0.765323419354839 -0.7604175
##        0                  0                  0          0
##        1                  1                  1          1
##         y_rate_haz
## impfloor -0.756961056818182 -0.747892976470588 -0.7401397
##        0                  0                  0          0
##        1                  1                  1          1
##         y_rate_haz
## impfloor -0.737274358695652 -0.710862202247191 -0.701923846153846
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.68437575 -0.676286202127659 -0.667768931034483
##        0           0                  0                  0
##        1           1                  1                  1
##         y_rate_haz
## impfloor -0.663637090909091 -0.661813912087912 -0.652269233333333
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.638089467391304 -0.629554953488372 -0.628388967032967
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.615169213483146 -0.604954366666667 -0.601649010989011
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.601498786516854 -0.598081179775281 -0.591980935483871
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.588710322580645 -0.574949817073171 -0.569912905263158
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.567322719101124 -0.549574465909091 -0.542210739130435
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.526311438202247 -0.524425862068965 -0.501718762886598
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.500185733333333 -0.49555297752809 -0.494689186813187
##        0                  0                 0                  0
##        1                  1                 1                  1
##         y_rate_haz
## impfloor -0.493426466666667 -0.4866672 -0.483287566666667
##        0                  0          0                  0
##        1                  1          1                  1
##         y_rate_haz
## impfloor -0.481319208791209 -0.478975620689655 -0.46769764516129
##        0                  0                  0                 0
##        1                  1                  1                 1
##         y_rate_haz
## impfloor -0.462862826086957 -0.459630133333333 -0.445881170454546
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.440071404255319 -0.438640831578947 -0.433107358695652
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.4258338 -0.422454166666667 -0.418638451612903
##        0          0                  0                  0
##        1          2                  1                  1
##         y_rate_haz
## impfloor -0.413026768421053 -0.405556 -0.404477393617021 -0.3954171
##        0                  0         0                  0          0
##        1                  1         1                  1          1
##         y_rate_haz
## impfloor -0.391534117021277 -0.389202935483871 -0.385062478723404
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.382661709677419 -0.362926534090909 -0.353226193548387
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.348595887640449 -0.348102233333333 -0.34093443956044
##        0                  0                  0                 0
##        1                  1                  1                 1
##         y_rate_haz
## impfloor -0.340534793478261 -0.337963333333333 -0.334249450549451
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.313772273684211 -0.304167 -0.294248510869565
##        0                  0         0                  0
##        1                  1         1                  1
##         y_rate_haz
## impfloor -0.293914179775281 -0.290942347826087 -0.283661359550562
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.280769538461539 -0.266991033333333 -0.261186880434783
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.252902898876405 -0.250092866666667 -0.244656065217391
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.236574333333333 -0.23621479787234 -0.235814865168539
##        0                  0                 0                  0
##        1                  1                 1                  1
##         y_rate_haz
## impfloor -0.232978978723404 -0.230526568421053 -0.22556204494382
##        0                  0                  0                 0
##        1                  1                  1                 1
##         y_rate_haz
## impfloor -0.223755034482759 -0.217262142857143 -0.215309224719101
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.208474011235955 -0.206157633333333 -0.189259466666667
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.187179692307692 -0.183191488636364 -0.1723613
##        0                  0                  0          0
##        1                  1                  2          1
##         y_rate_haz
## impfloor -0.171312448275862 -0.166801258064516 -0.162452829545455
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.155463133333333 -0.153792303370786 -0.1419446
##        0                  0                  0          0
##        1                  1                  1          1
##         y_rate_haz
## impfloor -0.141714170454545 -0.140877347368421 -0.136350724137931
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.128070315789474 -0.127014791208791 -0.126451449438202
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.107930225806452 -0.102491054347826 -0.101389
##        0                  0                  0         0
##        1                  1                  1         1
##         y_rate_haz
## impfloor -0.0978928275862069 -0.0869048571428571 -0.0727355869565218
##        0                   0                   0                   0
##        1                   1                   1                   1
##         y_rate_haz
## impfloor -0.0717697415730337 -0.0709723 -0.0595109347826087
##        0                   0          0                   0
##        1                   1          1                   1
##         y_rate_haz
## impfloor -0.0580993146067416 -0.0439352333333334 -0.0419540689655172
##        0                   0                   0                   0
##        1                   1                   1                   2
##         y_rate_haz
## impfloor -0.0270370666666667 -0.0241951022727273 -0.0233974615384616
##        0                   0                   0                   0
##        1                   1                   1                   1
##         y_rate_haz
## impfloor -0.0207386590909091 -0.010610476744186 -0.0102528202247191
##        0                   0                  0                   0
##        1                   1                  1                   1
##         y_rate_haz
## impfloor -0.00330616304347826 0 0.00640351578947369 0.00661232608695653
##        0                    0 0                   0                   0
##        1                    1 1                   1                   1
##         y_rate_haz
## impfloor 0.0168981666666667 0.0192105473684211 0.0226507340425532
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor 0.0239232471910112 0.026739956043956 0.02851565625
##        0                  0                 0             0
##        1                  1                 1             1
##         y_rate_haz
## impfloor 0.0323581914893617 0.0330616304347826 0.0341760674157304
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor 0.034961724137931 0.0371759666666666 0.0410112808988764
##        0                 0                  0                  0
##        1                 1                  1                  1
##         y_rate_haz
## impfloor 0.0429412235294118 0.0501374175824175 0.0580993146067416
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor 0.0588710322580645 0.0622159772727273 0.0635073956043956
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor 0.0715687058823529 0.081346988372093 0.0829546363636363
##        0                  0                 0                  0
##        1                  1                 1                  1
##         y_rate_haz
## impfloor 0.0839081379310345 0.0854401685393258 0.0912501
##        0                  0                  0         0
##        1                  1                  1         1
##         y_rate_haz
## impfloor 0.0922753820224719 0.105658010526316 0.109103380434783
##        0                  0                 0                 0
##        1                  1                 1                 1
##         y_rate_haz
## impfloor 0.109641593023256 0.111200838709677 0.118088364705882
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_haz
## impfloor 0.137042274725275 0.138257727272727 0.138858847826087
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_haz
## impfloor 0.148703866666667 0.150412252747253 0.158996386363636
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_haz
## impfloor 0.169767627906977 0.170071870967742 0.175226641304348
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_haz
## impfloor 0.179120566666667 0.187968370786517 0.190988581395349
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_haz
## impfloor 0.195307231578947 0.20054967032967 0.226435433333333
##        0                 0                0                 0
##        1                 1                1                 1
##         y_rate_haz
## impfloor 0.232213516129032 0.234243551724138 0.239232471910112
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_haz
## impfloor 0.239450617021277 0.242686436170213 0.248863909090909
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_haz
## impfloor 0.256320505617977 0.261225776470588 0.266991033333333
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_haz
## impfloor 0.273059011363636 0.277129933333333 0.282946046511628
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_haz
## impfloor 0.286686137931034 0.287268833333333 0.304167 0.313978838709677
##        0                 0                 0        0                 0
##        1                 1                 1        1                 1
##         y_rate_haz
## impfloor 0.314085489130435 0.324221967032967 0.341342966666667
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_haz
## impfloor 0.348102233333333 0.3751393 0.379354348314607 0.394769936170213
##        0                 0         0                 0                 0
##        1                 1         1                 1                 1
##         y_rate_haz
## impfloor 0.405556 0.418229625 0.419074533333333 0.426495032608696
##        0        0           0                 0                 0
##        1        1           1                 1                 1
##         y_rate_haz
## impfloor 0.459630133333333 0.461156419354839 0.462862826086957
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_haz
## impfloor 0.463009766666667 0.463163386363636 0.510324633333333
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_haz
## impfloor 0.518466477272727 0.522893831460674 0.536564258426966
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_haz
## impfloor 0.542661579545454 0.574537666666667 0.608334 0.646354875
##        0                 0                 0        0           0
##        1                 1                 1        1           1
##         y_rate_haz
## impfloor 0.651786428571428 0.676686134831461 0.726621166666667
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_haz
## impfloor 0.747192847826087 0.748455876404494 0.773936033333333
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_haz
## impfloor 0.892446032967033 0.916037825581395 0.9530566 1.216668
##        0                 0                 0         0        0
##        1                 1                 1         1        1
##         y_rate_haz
## impfloor 1.25384396666667 1.37046030337079 1.44561090322581
##        0                0                0                0
##        1                1                1                1
##         y_rate_haz
## impfloor -0.345798796089385 -0.314970745901639 -0.274920173076923
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.247344593406593 -0.239565159292035 -0.2129169
##        0                  0                  0          0
##        1                  1                  1          1
##         y_rate_haz
## impfloor -0.209384082152975 -0.203609057377049 -0.18849785915493
##        0                  0                  0                 0
##        1                  1                  1                 1
##         y_rate_haz
## impfloor -0.183519754189944 -0.183001574175824 -0.18200156557377
##        0                  0                  0                 0
##        1                  1                  1                 1
##         y_rate_haz
## impfloor -0.180438050847458 -0.175480961538462 -0.172766856
##        0                  0                  0            0
##        1                  1                  1            1
##         y_rate_haz
## impfloor -0.17261267768595 -0.169166852054795 -0.165395848806366
##        0                 0                  0                  0
##        1                 1                  1                  1
##         y_rate_haz
## impfloor -0.165143301939058 -0.164348298387097 -0.163469430481283
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.159287455263158 -0.144644633152174 -0.14289164010989
##        0                  0                  0                 0
##        1                  1                  1                 1
##         y_rate_haz
## impfloor -0.139208706349206 -0.13818339516129 -0.136617381355932
##        0                  0                 0                  0
##        1                  1                 1                  1
##         y_rate_haz
## impfloor -0.136030241666667 -0.134535403846154 -0.133536731707317
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.131209294117647 -0.130357285714286 -0.124469422764228
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.124166802739726 -0.123289024 -0.1216668 -0.119346179836512
##        0                  0            0          0                  0
##        1                  1            1          1                  1
##         y_rate_haz
## impfloor -0.119057324396783 -0.116987307692308 -0.116040589595376
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.115402113821138 -0.114871579787234 -0.114166791780822
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.113119958677686 -0.112500123287671 -0.112104910569106
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.111444107438017 -0.110456308943089 -0.109602075418994
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.10916678630137 -0.109103380434783 -0.108037459016393
##        0                 0                  0                  0
##        1                 1                  1                  1
##         y_rate_haz
## impfloor -0.104452953296703 -0.101389 -0.101110458791209
##        0                  0         0                  0
##        1                  1         1                  1
##         y_rate_haz
## impfloor -0.0997403983739837 -0.0983334410958904 -0.0983081187845304
##        0                   0                   0                   0
##        1                   1                   1                   1
##         y_rate_haz
## impfloor -0.097365626984127 -0.0966667726027397 -0.096627638121547
##        0                  0                   0                  0
##        1                  1                   2                  1
##         y_rate_haz
## impfloor -0.0964026557377049 -0.0958787282608696 -0.0953743983050847
##        0                   0                   0                   0
##        1                   1                   1                   1
##         y_rate_haz
## impfloor -0.0938476694214876 -0.09327788 -0.0931459918699187
##        0                   0           0                   0
##        1                   1           1                   1
##         y_rate_haz
## impfloor -0.092247368852459 -0.0921718181818182 -0.0895120028571429
##        0                  0                   0                   0
##        1                  1                   1                   1
##         y_rate_haz
## impfloor -0.0893644285714286 -0.0890244878048781 -0.088411208
##        0                   0                   0            0
##        1                   1                   1            1
##         y_rate_haz
## impfloor -0.0877568655462185 -0.0873671170212766 -0.0854955891891892
##        0                   0                   0                   0
##        1                   1                   1                   1
##         y_rate_haz
## impfloor -0.083645925 -0.0835140606936416 -0.0831837928176796
##        0            0                   0                   0
##        1            1                   1                   1
##         y_rate_haz
## impfloor -0.0823435524861878 -0.0805399943661972 -0.0798228314917127
##        0                   0                   0                   0
##        1                   1                   1                   1
##         y_rate_haz
## impfloor -0.079701513368984 -0.0772616711229946 -0.0758334164383562
##        0                  0                   0                   0
##        1                  1                   1                   1
##         y_rate_haz
## impfloor -0.0726621166666667 -0.0720858208092485 -0.0690583239795918
##        0                   0                   0                   0
##        1                   1                   1                   1
##         y_rate_haz
## impfloor -0.0660142664835165 -0.0654213938547486 -0.0651786428571429
##        0                   0                   0                   0
##        1                   1                   1                   1
##         y_rate_haz
## impfloor -0.0641667369863014 -0.062817097826087 -0.0627646190476191
##        0                   0                  0                   0
##        1                   1                  1                   1
##         y_rate_haz
## impfloor -0.0626468617886179 -0.0609939102902375 -0.059189254054054
##        0                   0                   0                  0
##        1                   1                   1                  1
##         y_rate_haz
## impfloor -0.0586547933884298 -0.0579365714285714 -0.0577429331550802
##        0                   0                   0                   0
##        1                   2                   1                   1
##         y_rate_haz
## impfloor -0.0559192813370474 -0.0552281544715447 -0.055155616
##        0                   0                   0            0
##        1                   1                   1            1
##         y_rate_haz
## impfloor -0.0551511593406593 -0.0546358954423592 -0.0545516902173913
##        0                   0                   0                   0
##        1                   1                   1                   1
##         y_rate_haz
## impfloor -0.053533392 -0.051911168 -0.0516357771883289 -0.0506945
##        0            0            0                   0          0
##        1            1            1                   1          1
##         y_rate_haz
## impfloor -0.0501374175824176 -0.0478094471544715 -0.0475000520547945
##        0                   0                   0                   0
##        1                   1                   1                   1
##         y_rate_haz
## impfloor -0.0468581594594595 -0.0457978721590909 -0.0441532741935484
##        0                   0                   0                   0
##        1                   1                   1                   1
##         y_rate_haz
## impfloor -0.043572132231405 -0.0432149836065574 -0.0423414289772727
##        0                  0                   0                   0
##        1                  1                   1                   1
##         y_rate_haz
## impfloor -0.0422214815864023 -0.0396387845744681 -0.0390596967213115
##        0                   0                   0                   0
##        1                   1                   1                   1
##         y_rate_haz
## impfloor -0.038326672922252 -0.0381244741144414 -0.037917837398374
##        0                  0                   0                  0
##        1                  1                   1                  1
##         y_rate_haz
## impfloor -0.0378153567567568 -0.0365665245901639 -0.0359767419354839
##        0                   0                   0                   0
##        1                   1                   1                   1
##         y_rate_haz
## impfloor -0.0349044098360656 -0.0348093024523161 -0.0340803361344538
##        0                   0                   0                   0
##        1                   1                   1                   1
##         y_rate_haz
## impfloor -0.0340733524590164 -0.0336096132596685 -0.0292468269230769
##        0                   0                   0                   0
##        1                   1                   1                   1
##         y_rate_haz
## impfloor -0.0278047396121884 -0.0250687087912088 -0.0248637874659401
##        0                   0                   0                   0
##        1                   1                   1                   1
##         y_rate_haz
## impfloor -0.0225000246575343 -0.0220288077994429 -0.0207198228882834
##        0                   0                   0                   0
##        1                   1                   1                   1
##         y_rate_haz
## impfloor -0.0195710670241287 -0.0142447355371901 -0.0141666821917808
##        0                   0                   0                   0
##        1                   1                   1                   1
##         y_rate_haz
## impfloor -0.0140894795640327 -0.0125245235294118 -0.0109838083333333
##        0                   0                   0                   0
##        1                   1                   1                   1
##         y_rate_haz
## impfloor -0.0097074574468085 -0.00955953428571427 -0.00916667671232879
##        0                   0                    0                    0
##        1                   1                    1                    1
##         y_rate_haz
## impfloor -0.00916667671232876 -0.00887489920424404 -0.00760417500000001
##        0                    0                    0                    0
##        1                    1                    1                    1
##         y_rate_haz
## impfloor -0.00743886684782611 -0.00661232608695653 -0.00421283933518006
##        0                    0                    0                    0
##        1                    1                    1                    1
##         y_rate_haz
## impfloor -0.00167124725274725 0.000833334246575325 0.00331517166212534
##        0                    0                    0                   0
##        1                    1                    1                   1
##         y_rate_haz
## impfloor 0.00752061263736263 0.00835623626373626 0.00904280270270269
##        0                   0                   0                   0
##        1                   1                   1                   1
##         y_rate_haz
## impfloor 0.0124658606557377 0.0128747936507936 0.0132606866485014
##        0                  0                  0                  0
##        1                  2                  1                  1
##         y_rate_haz
## impfloor 0.0142300350877193 0.015411128 0.0155539943181818
##        0                  0           0                  0
##        1                  1           1                  1
##         y_rate_haz
## impfloor 0.0158768489010989 0.0166211475409836 0.018958918699187
##        0                  0                  0                 0
##        1                  1                  1                 1
##         y_rate_haz
## impfloor 0.0190600731070496 0.0191666876712329 0.0211118483290489
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor 0.0225618379120879 0.0236574333333333 0.0244344681440443
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor 0.0252117032085562 0.0266666958904109 0.027424893442623
##        0                  0                  0                 0
##        1                  1                  1                 1
##         y_rate_haz
## impfloor 0.029166698630137 0.0298892427745665 0.0299313271276596
##        0                 0                  0                  0
##        1                 1                  1                  1
##         y_rate_haz
## impfloor 0.0322723607427056 0.0325000356164384 0.0335170247933884
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor 0.0340733524590164 0.0367674395604396 0.0372956811989101
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor 0.0383403781512605 0.0390596967213115 0.0401393401759531
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor 0.0410583553719008 0.0417326754617414 0.0451236758241758
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor 0.0451564453781512 0.0480263684210527 0.0515394083333333
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor 0.0520285657894737 0.055303090909091 0.0614892857142857
##        0                  0                 0                  0
##        1                  1                 1                  1
##         y_rate_haz
## impfloor 0.0626468617886179 0.069547826446281 0.0700655691056911
##        0                  0                 0                  0
##        1                  1                 1                  1
##         y_rate_haz
## impfloor 0.0752240967741935 0.0758334164383562 0.07625356545961
##        0                  0                  0                0
##        1                  1                  1                1
##         y_rate_haz
## impfloor 0.0779270826446281 0.0869048571428571 0.0994392115384616
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor 0.101669080110497 0.103654675977654 0.111613100840336
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_haz
## impfloor 0.122661351498638 0.125000136986301 0.136581876033058
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_haz
## impfloor 0.157268164772727 0.173923167101828 0.1926391 0.198003448753463
##        0                 0                 0         0                 0
##        1                 1                 1         1                 1
##         y_rate_haz
## impfloor 0.199196323369565 0.212043313315927 0.22685080726257
##        0                 0                 0                0
##        1                 1                 1                1
##         y_rate_haz
## impfloor 0.235074234986945 0.263723742382272 0.274248934426229
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_haz
## impfloor -0.305004925619835 -0.295124197297297 -0.283503480978261
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.251636766016713 -0.232303368131868 -0.222663687845304
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.221361428571429 -0.193175699164345 -0.179619509749304
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.172747019021739 -0.163458166204986 -0.15715295 -0.1520835
##        0                  0                  0           0          0
##        1                  1                  1           1          1
##         y_rate_haz
## impfloor -0.145435040983607 -0.144079105263158 -0.141609429752066
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.134456571428571 -0.128333473972603 -0.126876290055249
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.126097243697479 -0.124166802739726 -0.123333468493151
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.1216668 -0.120674951086957 -0.118947988826816
##        0          0                  0                  0
##        1          1                  1                  1
##         y_rate_haz
## impfloor -0.118699317073171 -0.113217716666667 -0.111838562674095
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.109231243093923 -0.107795447802198 -0.106710522099448
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.103902776859504 -0.103349560773481 -0.101666778082192
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.0994551498637602 -0.092500101369863 -0.0910829752747253
##        0                   0                  0                   0
##        1                   1                  1                   1
##         y_rate_haz
## impfloor -0.0906730894308943 -0.0880920819672131 -0.0878704666666667
##        0                   0                   0                   0
##        1                   1                   1                   1
##         y_rate_haz
## impfloor -0.0864207075208914 -0.0857045138121547 -0.0835623626373626
##        0                   0                   0                   0
##        1                   1                   1                   1
##         y_rate_haz
## impfloor -0.0832635921787709 -0.0830293702702703 -0.0821843983286908
##        0                   0                   0                   0
##        1                   1                   1                   1
##         y_rate_haz
## impfloor -0.0817653225806452 -0.0816667561643836 -0.0815643351955307
##        0                   0                   0                   0
##        1                   1                   1                   1
##         y_rate_haz
## impfloor -0.0814436229508197 -0.0812787851239669 -0.0810554917582418
##        0                   0                   0                   0
##        1                   1                   1                   1
##         y_rate_haz
## impfloor -0.0808334219178082 -0.0796029338842975 -0.0787650082644628
##        0                   0                   0                   0
##        1                   1                   1                   1
##         y_rate_haz
## impfloor -0.0780969324324324 -0.0768866583333333 -0.0766599756097561
##        0                   0                   0                   0
##        1                   1                   1                   1
##         y_rate_haz
## impfloor -0.07604175 -0.0756262213114754 -0.0756216298342541
##        0           0                   0                   0
##        1           1                   1                   1
##         y_rate_haz
## impfloor -0.075413305785124 -0.0752061263736264 -0.0750000821917808
##        0                  0                   0                   0
##        1                  1                   1                   1
##         y_rate_haz
## impfloor -0.0745753801652893 -0.0741667479452055 -0.073964106557377
##        0                   0                   0                  0
##        1                   1                   1                  1
##         y_rate_haz
## impfloor -0.0728995289256198 -0.0697399475138122 -0.0691667424657534
##        0                   0                   0                   0
##        1                   1                   1                   1
##         y_rate_haz
## impfloor -0.068628208913649 -0.0666667397260274 -0.065833405479452
##        0                  0                   0                  0
##        1                  1                   2                  1
##         y_rate_haz
## impfloor -0.0651786428571429 -0.0648777257617729 -0.0643430192307692
##        0                   0                   0                   0
##        1                   1                   1                   1
##         y_rate_haz
## impfloor -0.0641667369863014 -0.0635073956043956 -0.063129
##        0                   0                   0         0
##        1                   1                   1         1
##         y_rate_haz
## impfloor -0.0619905570652174 -0.0613306757493188 -0.0601649010989011
##        0                   0                   0                   0
##        1                   1                   1                   1
##         y_rate_haz
## impfloor -0.0588710322580645 -0.0586843940217391 -0.0584936538461538
##        0                   0                   0                   0
##        1                   1                   1                   1
##         y_rate_haz
## impfloor -0.0582098571428572 -0.0576138050139276 -0.0574537666666667
##        0                   0                   0                   0
##        1                   1                   1                   1
##         y_rate_haz
## impfloor -0.0573429590163934 -0.0571363425414365 -0.0561410165289256
##        0                   0                   0                   0
##        1                   1                   1                   1
##         y_rate_haz
## impfloor -0.0555291253405995 -0.0551511593406593 -0.0548497868852459
##        0                   0                   0                   0
##        1                   1                   1                   1
##         y_rate_haz
## impfloor -0.0547827661290322 -0.0547669113573407 -0.0537251494565218
##        0                   0                   0                   0
##        1                   1                   1                   1
##         y_rate_haz
## impfloor -0.053229225 -0.0526442884615385 -0.051972512605042
##        0            0                   0                  0
##        1            1                   1                  1
##         y_rate_haz
## impfloor -0.0519513884297521 -0.0509730412087912 -0.0508357103064067
##        0                   0                   0                   0
##        1                   1                   1                   1
##         y_rate_haz
## impfloor -0.0502755371900826 -0.0501374175824176 -0.0498768467741936
##        0                   0                   0                   0
##        1                   1                   1                   1
##         y_rate_haz
## impfloor -0.0498634426229508 -0.0497275749318801 -0.049574179558011
##        0                   0                   0                  0
##        1                   1                   1                  1
##         y_rate_haz
## impfloor -0.0490323852459016 -0.0484661703296703 -0.0480263684210527
##        0                   0                   0                   0
##        1                   2                   1                   1
##         y_rate_haz
## impfloor -0.0475000520547945 -0.0473702704918033 -0.0473148666666666
##        0                   0                   0                   0
##        1                   1                   1                   1
##         y_rate_haz
## impfloor -0.0472411961852861 -0.0469238347107438 -0.0462132182320442
##        0                   0                   0                   0
##        1                   1                   1                   2
##         y_rate_haz
## impfloor -0.0459592994505495 -0.0453729779005525 -0.0450000493150685
##        0                   0                   0                   0
##        1                   3                   1                   1
##         y_rate_haz
## impfloor -0.0447801416666667 -0.0438135290858726 -0.043572132231405
##        0                   0                   0                  0
##        1                   1                   1                  1
##         y_rate_haz
## impfloor -0.0433333808219178 -0.0428522569060774 -0.0422454166666667
##        0                   0                   0                   0
##        1                   1                   1                   1
##         y_rate_haz
## impfloor -0.0421283933518006 -0.0412150406504065 -0.0407218114754098
##        0                   0                   0                   0
##        1                   1                   1                   1
##         y_rate_haz
## impfloor -0.0404432576177285 -0.0402204297520661 -0.0400000438356164
##        0                   0                   0                   0
##        1                   1                   1                   1
##         y_rate_haz
## impfloor -0.0392743104395604 -0.0386510552486188 -0.0374883697478992
##        0                   0                   0                   0
##        1                   1                   1                   1
##         y_rate_haz
## impfloor -0.0371943342391304 -0.0368687272727273 -0.0363310583333333
##        0                   0                   0                   0
##        1                   1                   1                   1
##         y_rate_haz
## impfloor -0.0360308016528926 -0.0351928760330579 -0.0351928760330578
##        0                   0                   0                   0
##        1                   1                   1                   2
##         y_rate_haz
## impfloor -0.0342605686813187 -0.0341667041095891 -0.0340733524590164
##        0                   0                   0                   0
##        1                   1                   1                   1
##         y_rate_haz
## impfloor -0.0336096132596685 -0.033424945054945 -0.0330432116991643
##        0                   0                  0                   0
##        1                   1                  1                   1
##         y_rate_haz
## impfloor -0.0326184450402145 -0.0318884758064516 -0.0312616083333333
##        0                   0                   0                   0
##        1                   1                   1                   1
##         y_rate_haz
## impfloor -0.0292468269230769 -0.028695 -0.0285681712707182
##        0                   0         0                   0
##        1                   1         1                   1
##         y_rate_haz
## impfloor -0.0284112032967033 -0.0276515454545455 -0.0271123788300836
##        0                   0                   0                   0
##        1                   1                   2                   1
##         y_rate_haz
## impfloor -0.0257627786885246 -0.0254888547486034 -0.0235919002770083
##        0                   0                   0                   0
##        1                   1                   1                   1
##         y_rate_haz
## impfloor -0.0233974615384615 -0.0232062016348774 -0.0219067645429363
##        0                   0                   0                   0
##        1                   1                   1                   1
##         y_rate_haz
## impfloor -0.0208905906593407 -0.0208333561643836 -0.0195414553072626
##        0                   0                   0                   0
##        1                   1                   1                   1
##         y_rate_haz
## impfloor -0.0192722892561983 -0.0183837197802198 -0.0181838967391305
##        0                   0                   0                   0
##        1                   1                   1                   1
##         y_rate_haz
## impfloor -0.0175480961538462 -0.017404651226158 -0.0167585123966942
##        0                   0                  0                   0
##        1                   1                  1                   1
##         y_rate_haz
## impfloor -0.0166666849315068 -0.0164860162601626 -0.0161881596638655
##        0                   0                   0                   0
##        1                   1                   1                   1
##         y_rate_haz
## impfloor -0.0157900901639344 -0.0153792303370787 -0.0150826611570248
##        0                   0                   0                   0
##        1                   1                   1                   1
##         y_rate_haz
## impfloor -0.0140511929347826 -0.0134810858725762 -0.0127444273743017
##        0                   0                   0                   0
##        1                   1                   1                   1
##         y_rate_haz
## impfloor -0.01243189373297 -0.0123310945945946 -0.0116666794520548
##        0                 0                   0                   0
##        1                 1                   1                   1
##         y_rate_haz
## impfloor -0.0115715706521739 -0.0115402113821138 -0.0114471451612903
##        0                   0                   0                   0
##        1                   1                   1                   1
##         y_rate_haz
## impfloor -0.0100274835164835 -0.00991848913043478 -0.00911672207084469
##        0                   0                    0                    0
##        1                   2                    1                    1
##         y_rate_haz
## impfloor -0.00840240331491712 -0.00837925619834711 -0.00833334246575343
##        0                    0                    0                    0
##        1                    1                    1                    1
##         y_rate_haz
## impfloor -0.00828792915531336 -0.00670340495867765 -0.00596405882352941
##        0                    0                    0                    0
##        1                    1                    1                    1
##         y_rate_haz
## impfloor -0.00593083286908077 -0.0058333397260274 -0.00505540720221607
##        0                    0                   0                    0
##        1                    1                   1                    1
##         y_rate_haz
## impfloor -0.00501374175824176 -0.00487968449197861 -0.00420120165745857
##        0                    0                    0                    0
##        1                    1                    1                    1
##         y_rate_haz
## impfloor -0.00337027146814404 -0.00336096132596685 -0.00334249450549451
##        0                    0                    0                    0
##        1                    1                    1                    1
##         y_rate_haz
## impfloor -0.00250000273972601 -0.00165758583106267 -0.000847261838440112
##        0                    0                    0                     0
##        1                    1                    1                     1
##         y_rate_haz
## impfloor -0.000826540760869566 0.000837925619834709 0.00415528688524592
##        0                     0                    0                   0
##        1                     2                    1                   1
##         y_rate_haz
## impfloor 0.00422454166666665 0.00502755371900827 0.00505540720221607
##        0                   0                   0                   0
##        1                   1                   1                   1
##         y_rate_haz
## impfloor 0.0059640588235294 0.00735887903225806 0.00924264364640884
##        0                  0                   0                   0
##        1                  1                   1                   1
##         y_rate_haz
## impfloor 0.0108037459016394 0.0110144038997214 0.0116987307692308
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor 0.013369978021978 0.0135185333333333 0.0141666821917808
##        0                 0                  0                  0
##        1                 1                  1                  2
##         y_rate_haz
## impfloor 0.0150826611570248 0.01520835 0.0156193864864865
##        0                  0          0                  0
##        1                  1          1                  1
##         y_rate_haz
## impfloor 0.0159205867768595 0.0173103170731707 0.0175964380165289
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor 0.0185364930747923 0.019891029972752 0.0218462486187845
##        0                  0                 0                  0
##        1                  1                 1                  1
##         y_rate_haz
## impfloor 0.0232062016348774 0.0232696065573771 0.0233974615384615
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor 0.0242330851648352 0.0300824505494505 0.0304167
##        0                  0                  0         0
##        1                  1                  1         1
##         y_rate_haz
## impfloor 0.0320608459459459 0.0339805095367847 0.0342605686813187
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor 0.0343549504132232 0.0346206341463415 0.0358333726027397
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor 0.0359318159340659 0.0365665245901639 0.0367674395604396
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor 0.038233282122905 0.0387581218836565 0.0389532670299727
##        0                 0                  0                  0
##        1                 1                  1                  1
##         y_rate_haz
## impfloor 0.0409928571428571 0.0413270380434783 0.0434524285714286
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor 0.0444100578512397 0.0464124032697548 0.0464699583333333
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor 0.0466667178082192 0.0473148666666667 0.0478936988950276
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor 0.0500000547945205 0.0502823495934959 0.0589797506925208
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor 0.0618501142061281 0.062817097826087 0.0680594668508287
##        0                  0                 0                  0
##        1                  1                 1                  1
##         y_rate_haz
## impfloor 0.0714709344262295 0.0723019918032787 0.0764572786885246
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor 0.0802198681318681 0.0806125655737705 0.0839367950819672
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor 0.0876270581717452 0.0899057154696133 0.0906570167130919
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor 0.0961399782016349 0.100551074380165 0.103349560773481
##        0                  0                 0                 0
##        1                  1                 1                 1
##         y_rate_haz
## impfloor 0.111218958448753 0.118429168067227 0.125891341666667
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_haz
## impfloor 0.133867370473538 0.137558671348315 0.148333495890411
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_haz
## impfloor 0.153340388429752 0.157042744565217 0.165758583106267
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_haz
## impfloor 0.30077795264624
##        0                0
##        1                1
##         y_rate_haz
## impfloor -1.35434358947368 -1.07710902352941 -0.9936122 -0.986688073170732
##        0                 0                 0          0                  0
##        1                 1                 1          1                  1
##         y_rate_haz
## impfloor -0.862985441860465 -0.845301313953488 -0.838966120879121
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.837353858823529 -0.828938637362637 -0.828699887755102
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.731644945945946 -0.727690670886076 -0.7259835
##        0                  0                  0          0
##        1                  1                  1          1
##         y_rate_haz
## impfloor -0.706226827586207 -0.704090277777778 -0.680887596330275
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.678526384615385 -0.6590285 -0.650775906976744
##        0                  0          0                  0
##        1                  1          1                  1
##         y_rate_haz
## impfloor -0.648165392857143 -0.644310741935484 -0.637302285714286
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.6286118 -0.615490870588235 -0.615169213483146
##        0          0                  0                  0
##        1          1                  1                  1
##         y_rate_haz
## impfloor -0.611535757894737 -0.604755564705882 -0.574909054945055
##        0                  0                  0                  0
##        1                  1                  1                  2
##         y_rate_haz
## impfloor -0.574847724770642 -0.572739989361702 -0.553652292134831
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.55212922826087 -0.540439580357143 -0.528986086956522
##        0                 0                  0                  0
##        1                 1                  1                  2
##         y_rate_haz
## impfloor -0.521965592592593 -0.517731063829787 -0.51678859223301
##        0                  0                  0                 0
##        1                  1                  1                 1
##         y_rate_haz
## impfloor -0.515010034090909 -0.487321322580645 -0.47608747826087
##        0                  0                  0                 0
##        1                  1                  1                 1
##         y_rate_haz
## impfloor -0.472353458823529 -0.454502413793104 -0.449491233333333
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.442424727272727 -0.437628030612245 -0.423661178571428
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.422866317073171 -0.422255364705882 -0.4144275375 -0.41366712
##        0                  0                  0             0           0
##        1                  1                  1             1           1
##         y_rate_haz
## impfloor -0.409052172413793 -0.405556 -0.401375010309278
##        0                  0         0                  0
##        1                  1         2                  1
##         y_rate_haz
## impfloor -0.399762342857143 -0.394290555555556 -0.391071857142857
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.385640303571429 -0.379484542857143 -0.369620658227848
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.363914089285714 -0.362801602409639 -0.350453282608696
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.34961724137931 -0.347108223529412 -0.344478289156627
##        0                 0                  0                  0
##        1                 1                  1                  1
##         y_rate_haz
## impfloor -0.343162769230769 -0.337963333333333 -0.336873129032258
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.336525191489362 -0.3231774375 -0.307788035714286 -0.304167
##        0                  0             0                  0         0
##        1                  1             1                  1         1
##         y_rate_haz
## impfloor -0.297695361702128 -0.297093348837209 -0.29594627027027
##        0                  0                  0                 0
##        1                  1                  1                 1
##         y_rate_haz
## impfloor -0.288158210526316 -0.284112032967033 -0.277427043956044
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.274411532608696 -0.274293455357143 -0.270370666666667
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.268572989361702 -0.267457189655172 -0.261725093023256
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.257647341176471 -0.250937775 -0.246230428571429
##        0                  0            0                  0
##        1                  1            1                  1
##         y_rate_haz
## impfloor -0.244656065217391 -0.24396728125 -0.233430488372093
##        0                  0              0                  0
##        1                  1              1                  1
##         y_rate_haz
## impfloor -0.229815066666667 -0.226507340425532 -0.217262142857143
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.214706117647059 -0.212343 -0.195535928571429
##        0                  0         0                  0
##        1                  1         1                  1
##         y_rate_haz
## impfloor -0.194803584269663 -0.168614315217391 -0.161790957446808
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.160260032258064 -0.153684378947368 -0.153429371681416
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.147280863157895 -0.146450777777778 -0.145324233333333
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.142165010869565 -0.137972659793814 -0.13224652173913
##        0                  0                  0                 0
##        1                  1                  1                 1
##         y_rate_haz
## impfloor -0.128070315789474 -0.124283290322581 -0.122895757575758
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.1216668 -0.11723103125 -0.110302318681319 -0.108631071428571
##        0          0              0                  0                  0
##        1          1              1                  1                  1
##         y_rate_haz
## impfloor -0.0981183870967742 -0.0963697425742574 -0.0931123469387755
##        0                   0                   0                   0
##        1                   1                   1                   1
##         y_rate_haz
## impfloor -0.0915771612903226 -0.0894608823529412 -0.0864788529411765
##        0                   0                   0                   0
##        1                   1                   1                   1
##         y_rate_haz
## impfloor -0.0844908333333333 -0.0808954787234042 -0.0579365714285714
##        0                   0                   0                   0
##        1                   1                   1                   1
##         y_rate_haz
## impfloor -0.0543155357142857 -0.0523298064516129 -0.0425179677419355
##        0                   0                   0                   0
##        1                   1                   1                   1
##         y_rate_haz
## impfloor -0.0401099340659341 -0.0330616304347826 -0.0207386590909091
##        0                   0                   0                   0
##        1                   1                   1                   1
##         y_rate_haz
## impfloor -0.0202778 -0.0141473023255814 -0.00822072972972974
##        0          0                   0                    0
##        1          1                   1                    1
##         y_rate_haz
## impfloor -0.00602310891089109 -0.00316840624999993 0.00271577678571429
##        0                    0                    0                   0
##        1                    1                    1                   1
##         y_rate_haz
## impfloor 0.00276515454545455 0.00640351578947368 0.0107353058823529
##        0                   0                   0                  0
##        1                   1                   1                  1
##         y_rate_haz
## impfloor 0.013224652173913 0.0160087894736842 0.0175480961538462
##        0                 0                  0                  0
##        1                 1                  1                  1
##         y_rate_haz
## impfloor 0.0190104375 0.0295717916666667 0.0300824505494506
##        0            0                  0                  0
##        1            1                  1                  1
##         y_rate_haz
## impfloor 0.0349617241379311 0.0495924456521739 0.0591435833333334
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor 0.0608334 0.0646354875 0.06995841 0.0752240967741935
##        0         0            0          0                  0
##        1         1            1          1                  1
##         y_rate_haz
## impfloor 0.0775327647058823 0.080043947368421 0.0802198681318681
##        0                  0                 0                  0
##        1                  1                 1                  1
##         y_rate_haz
## impfloor 0.0835623626373626 0.0869048571428571 0.0943966551724138
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor 0.0977679642857143 0.100196188235294 0.10341678 0.113644813186813
##        0                  0                 0          0                 0
##        1                  1                 1          1                 1
##         y_rate_haz
## impfloor 0.128686038461538 0.147653883495146 0.150374696629213
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_haz
## impfloor 0.158695826086957 0.164608023529412 0.170221899082569
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_haz
## impfloor 0.17192047826087 0.178405644230769 0.184101078947368
##        0                0                 0                 0
##        1                1                 1                 1
##         y_rate_haz
## impfloor 0.188903715789474 0.196145074766355 0.200620787234043
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_haz
## impfloor 0.200687505154639 0.210577153846154 0.215451625 0.222820011627907
##        0                 0                 0           0                 0
##        1                 1                 1           1                 1
##         y_rate_haz
## impfloor 0.235038136363636 0.260714571428571 0.262689681818182
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_haz
## impfloor 0.263430348214286 0.265803594594595 0.357474618556701
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_haz
## impfloor 0.393968685714286 0.408333780821918 0.428086888888889
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_haz
## impfloor 0.434036056179775 0.47463421978022 0.5475006 0.548754896907217
##        0                 0                0         0                 0
##        1                 1                1         1                 1
##         y_rate_haz
## impfloor 0.556487352272727 0.55710587368421 0.569226814285714
##        0                 0                0                 0
##        1                 1                1                 1
##         y_rate_haz
## impfloor 0.585683265957447 0.597470892857143 0.604797174418605
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_haz
## impfloor 0.65850587628866 0.69388096875 0.733736184210526
##        0                0             0                 0
##        1                1             1                 1
##         y_rate_haz
## impfloor 0.754920506024096 0.762088747252747 0.764038535714286
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_haz
## impfloor 0.783297318584071 0.96636390625 1.05010035714286 1.05075872727273
##        0                 0             0                0                0
##        1                 1             1                1                1
##         y_rate_haz
## impfloor 1.05288576923077 1.0663325862069 1.14729657894737
##        0                0               0                0
##        1                1               1                1
##         y_rate_haz
## impfloor 1.14871579787234
##        0                0
##        1                1
##         y_rate_haz
## impfloor -0.902248179775281 -0.71175078 -0.687681913043478
##        0                  0           0                  0
##        1                  1           1                  1
##         y_rate_haz
## impfloor -0.678526384615385 -0.653267761363636 -0.594663573033708
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.587595340909091 -0.584936538461538 -0.571966206521739
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.561019133333333 -0.556004193548387 -0.542210739130435
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.516756838709677 -0.502536782608696 -0.485372872340426
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.480780096774193 -0.449638173913044 -0.442731966666667
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.439719684782609 -0.438566372093023 -0.434036056179775
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.429035557894737 -0.424496802197802 -0.411316738636364
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.410949031914894 -0.410112808988764 -0.398796733333333
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.397756846153846 -0.393816221052632 -0.389202935483871
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.386821076086956 -0.386189561797753 -0.37101689010989
##        0                  0                  0                 0
##        1                  1                  1                 1
##         y_rate_haz
## impfloor -0.37070353125 -0.370290260869565 -0.36630864516129
##        0              0                  0                 0
##        1              1                  1                 1
##         y_rate_haz
## impfloor -0.363677934782609 -0.362266314606742 -0.360989406593407
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.36037177173913 -0.358241133333333 -0.357065608695652
##        0                 0                  0                  0
##        1                 1                  1                  1
##         y_rate_haz
## impfloor -0.355431101123595 -0.3548615 -0.353226193548387 -0.35169309375
##        0                  0          0                  0              0
##        1                  1          1                  1              1
##         y_rate_haz
## impfloor -0.351481866666667 -0.350453282608696 -0.348102233333333
##        0                  0                  0                  0
##        1                  1                  2                  1
##         y_rate_haz
## impfloor -0.342624896551724 -0.342187875 -0.34093443956044
##        0                  0            0                 0
##        1                  1            1                 1
##         y_rate_haz
## impfloor -0.333922467391304 -0.323377547368421 -0.321647862068966
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.321255033707865 -0.320520064516129 -0.317837426966292
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.314419820224719 -0.3143059 -0.310779326086957 -0.3105038125
##        0                  0          0                  0             0
##        1                  1          1                  1             1
##         y_rate_haz
## impfloor -0.307703825581395 -0.307584606741573 -0.307546633333333
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.307402819148936 -0.304167 -0.290648466666667
##        0                  0         0                  0
##        1                  1         2                  1
##         y_rate_haz
## impfloor -0.288648275510204 -0.284112032967033 -0.283661359550562
##        0                  0                  0                  0
##        1                  1                  2                  1
##         y_rate_haz
## impfloor -0.281272709677419 -0.265745905263158 -0.26210135106383
##        0                  0                  0                 0
##        1                  1                  1                 1
##         y_rate_haz
## impfloor -0.261649032258065 -0.258865531914894 -0.254574554347826
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.254029582417582 -0.244002098901099 -0.242686436170213
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.240504139534884 -0.232978978723404 -0.230632120879121
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.216296533333333 -0.213266517241379 -0.2129169
##        0                  0                  0          0
##        1                  1                  1          1
##         y_rate_haz
## impfloor -0.209770344827586 -0.208474011235955 -0.207950908163265
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.207092425531915 -0.205056404494382 -0.203892164835165
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.202778 -0.201675945652174 -0.199398366666667 -0.19681394117647
##        0         0                  0                  0                 0
##        1         1                  1                  1                 1
##         y_rate_haz
## impfloor -0.195063619565217 -0.19414914893617 -0.191914892857143
##        0                  0                 0                  0
##        1                  1                 1                  1
##         y_rate_haz
## impfloor -0.19138597752809 -0.188451293478261 -0.186647931818182
##        0                 0                  0                  0
##        1                 1                  1                  1
##         y_rate_haz
## impfloor -0.186424935483871 -0.1825002 -0.170071870967742
##        0                  0          0                  0
##        1                  1          1                  1
##         y_rate_haz
## impfloor -0.169767627906977 -0.168981666666667 -0.168614315217391
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.167124725274725 -0.165308152173913 -0.158842766666667
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.15720991011236 -0.15525190625 -0.153792303370786 -0.1520835
##        0                 0              0                  0          0
##        1                 1              1                  1          1
##         y_rate_haz
## impfloor -0.150448193548387 -0.143727263736264 -0.142165010869565
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.14063635483871 -0.135185333333333 -0.133978321428571
##        0                 0                  0                  0
##        1                 1                  1                  1
##         y_rate_haz
## impfloor -0.132668585106383 -0.129869056179775 -0.125245235294118
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.120975511363636 -0.119725308510638 -0.118287166666667
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.11483856122449 -0.114471451612903 -0.113644813186813
##        0                 0                  0                  0
##        1                 1                  1                  1
##         y_rate_haz
## impfloor -0.112409543478261 -0.111877517241379 -0.110606181818182
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.106959824175824 -0.104659612903226 -0.0980093666666667
##        0                  0                  0                   0
##        1                  1                  1                   2
##         y_rate_haz
## impfloor -0.0912501 -0.0902473516483517 -0.088715375 -0.0878704666666667
##        0          0                   0            0                   0
##        1          1                   1            1                   1
##         y_rate_haz
## impfloor -0.0869048571428571 -0.0826540760869565 -0.0768773736263737
##        0                   0                   0                   0
##        1                   2                   1                   1
##         y_rate_haz
## impfloor -0.0751873483146067 -0.0743519333333333 -0.0675926666666667
##        0                   0                   0                   0
##        1                   1                   1                   1
##         y_rate_haz
## impfloor -0.0649345280898876 -0.0601649010989012 -0.0556004193548387
##        0                   0                   0                   0
##        1                   1                   1                   1
##         y_rate_haz
## impfloor -0.0473148666666667 -0.0454502413793103 -0.0453014680851064
##        0                   0                   0                   0
##        1                   2                   1                   1
##         y_rate_haz
## impfloor -0.0429801195652174 -0.0420656489361702 -0.04118928125
##        0                   0                   0              0
##        1                   1                   1              1
##         y_rate_haz
## impfloor -0.0410112808988764 -0.0396739565217392 -0.0392473548387097
##        0                   0                   0                   0
##        1                   1                   1                   1
##         y_rate_haz
## impfloor -0.0371759666666667 -0.0367674395604396 -0.0367674395604395
##        0                   0                   0                   0
##        1                   1                   1                   1
##         y_rate_haz
## impfloor -0.0323581914893617 -0.0304167 -0.0273408539325843
##        0                   0          0                   0
##        1                   1          1                   1
##         y_rate_haz
## impfloor -0.0224123052631578 -0.0161790957446808 -0.01584203125
##        0                   0                   0              0
##        1                   1                   1              1
##         y_rate_haz
## impfloor -0.0136704269662921 -0.0103693295454545 -0.00691288636363637
##        0                   0                   0                    0
##        1                   1                   1                    2
##         y_rate_haz
## impfloor -0.00608333999999999 -0.00334249450549451 -0.0033424945054945
##        0                    0                    0                   0
##        1                    1                    1                   1
##         y_rate_haz
## impfloor -0.00330616304347826 0 0.00647163829787235 0.0209770344827586
##        0                    0 0                   0                  0
##        1                    1 2                   1                  1
##         y_rate_haz
## impfloor 0.0212209534883721 0.0212209534883723 0.0258865531914894
##        0                  0                  0                  0
##        1                  1                  1                  2
##         y_rate_haz
## impfloor 0.0270370666666667 0.0291223723404256 0.0294355161290323
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor 0.0297554673913043 0.0322059176470588 0.036367793478261
##        0                  0                  0                 0
##        1                  1                  1                 1
##         y_rate_haz
## impfloor 0.0439352333333333 0.0473148666666667 0.0506945 0.053307618556701
##        0                  0                  0         0                 0
##        1                  1                  1         1                 1
##         y_rate_haz
## impfloor 0.0574537666666667 0.0635073956043956 0.06653653125
##        0                  0                  0             0
##        1                  1                  1             1
##         y_rate_haz
## impfloor 0.0704386736842104 0.0742733372093023 0.0752240967741935
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor 0.080043947368421 0.0835623626373626 0.085035935483871
##        0                 0                  0                 0
##        1                 1                  1                 1
##         y_rate_haz
## impfloor 0.0859602391304348 0.0869048571428571 0.0935898461538462
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor 0.0948477741935484 0.0980093666666667 0.099110595505618
##        0                  0                  0                 0
##        1                  1                  1                 1
##         y_rate_haz
## impfloor 0.104659612903226 0.106959824175824 0.107149738636364
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_haz
## impfloor 0.116489489361702 0.118287166666667 0.129869056179775
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_haz
## impfloor 0.134801284090909 0.135552684782609 0.140384769230769
##        0                 0                 0                 0
##        1                 1                 1                 2
##         y_rate_haz
## impfloor 0.146715847058824 0.150412252747253 0.1520835 0.156692090909091
##        0                 0                 0         0                 0
##        1                 1                 1         1                 1
##         y_rate_haz
## impfloor 0.156989419354839 0.15720991011236 0.162001989130435
##        0                 0                0                 0
##        1                 1                1                 1
##         y_rate_haz
## impfloor 0.166801258064516 0.167462730337079 0.171498414893617
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_haz
## impfloor 0.17192047826087 0.17337519 0.176613096774194 0.187179692307692
##        0                0          0                 0                 0
##        1                1          1                 1                 1
##         y_rate_haz
## impfloor 0.188451293478261 0.1926391 0.212589838709677 0.218206760869565
##        0                 0         0                 0                 0
##        1                 1         1                 1                 1
##         y_rate_haz
## impfloor 0.221512923913043 0.230632120879121 0.2331947 0.2344620625
##        0                 0                 0         0            0
##        1                 1                 1         1            1
##         y_rate_haz
## impfloor 0.244587896907216 0.24796222826087 0.251268391304348
##        0                 0                0                 0
##        1                 1                1                 1
##         y_rate_haz
## impfloor 0.252320352272727 0.25664090625 0.259233238636364
##        0                 0             0                 0
##        1                 1             1                 2
##         y_rate_haz
## impfloor 0.270742054945055 0.283661359550562 0.294248510869565
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_haz
## impfloor 0.300710556818182 0.300860836956522 0.307623443181818
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_haz
## impfloor 0.314655517241379 0.317391652173913 0.317536978021978
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_haz
## impfloor 0.328640206896552 0.328924779069767 0.331507853932584
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_haz
## impfloor 0.334249450549451 0.336525191489362 0.34093443956044
##        0                 0                 0                0
##        1                 1                 1                1
##         y_rate_haz
## impfloor 0.341760674157303 0.353113413793103 0.358241133333333
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_haz
## impfloor 0.358848707865169 0.363038032258065 0.37101689010989
##        0                 0                 0                0
##        1                 1                 1                1
##         y_rate_haz
## impfloor 0.384386868131868 0.391071857142857 0.397279346938775
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_haz
## impfloor 0.410112808988764 0.414469318681319 0.427282214285714 0.42887547
##        0                 0                 0                 0          0
##        1                 1                 1                 1          1
##         y_rate_haz
## impfloor 0.492960310344828 0.506945 0.522893831460674 0.53229225
##        0                 0        0                 0          0
##        1                 1        1                 1          1
##         y_rate_haz
## impfloor 0.538904576086957 0.541906724137931 0.548823065217391
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_haz
## impfloor 0.567322719101124 0.571966206521739 0.643295724137931
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_haz
## impfloor 0.772654103448276 0.779646448275862 0.899418548387097
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_haz
## impfloor 0.999905310344828 1.14674455172414 1.19352485869565
##        0                 0                0                0
##        1                 1                1                1
##         y_rate_haz
## impfloor -0.493588365269461 -0.484579779411765 -0.424459033898305
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.423942606217617 -0.405556 -0.402675630681818
##        0                  0         0                  0
##        1                  1         1                  1
##         y_rate_haz
## impfloor -0.388560156069364 -0.365683921348315 -0.363440569230769
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.361586280612245 -0.359767419354839 -0.355666174603175
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.350838126984127 -0.348121768786127 -0.342187875
##        0                  0                  0            0
##        1                  1                  1            1
##         y_rate_haz
## impfloor -0.335099237288136 -0.3345837 -0.331239455497382
##        0                  0          0                  0
##        1                  1          1                  1
##         y_rate_haz
## impfloor -0.323790677419355 -0.323685737967914 -0.318565437869822
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.316153876847291 -0.309020728723404 -0.305793561497326
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.302513918478261 -0.300824505494506 -0.297729603174603
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.292468269230769 -0.290128523076923 -0.284543322580645
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.28335557368421 -0.279898356382979 -0.278182884422111
##        0                 0                  0                  0
##        1                 1                  1                  1
##         y_rate_haz
## impfloor -0.277375088082902 -0.275271135 -0.275044627659574
##        0                  0            0                  0
##        1                  1            1                  1
##         y_rate_haz
## impfloor -0.274953220338983 -0.268482603351955 -0.268105963917526
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.261834479381443 -0.260474502762431 -0.260249839572193
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.259289901639344 -0.256392078534031 -0.255433060773481
##        0                  0                  0                  0
##        1                  2                  1                  1
##         y_rate_haz
## impfloor -0.251403336734694 -0.247344593406593 -0.24630914673913
##        0                  0                  0                 0
##        1                  1                  1                 1
##         y_rate_haz
## impfloor -0.245195846938775 -0.241182924242424 -0.24058406779661
##        0                  0                  0                 0
##        1                  1                  1                 1
##         y_rate_haz
## impfloor -0.240131842105263 -0.238988357142857 -0.235851417112299
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.235484129032258 -0.234224855614973 -0.226864889502762
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.2230558 -0.222522173684211 -0.222476434285714
##        0          0                  0                  0
##        1          1                  1                  1
##         y_rate_haz
## impfloor -0.220766370967742 -0.218172141361257 -0.213564063829787
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.213230474226804 -0.208742058823529 -0.207309351955307
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.205708317919075 -0.205610094972067 -0.205312725
##        0                  0                  0            0
##        1                  1                  1            1
##         y_rate_haz
## impfloor -0.204337830769231 -0.201115885245902 -0.198143074285714
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.196813941176471 -0.195877178010471 -0.194731253968254
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.19133085483871 -0.187543383419689 -0.185219011173184
##        0                 0                  0                  0
##        1                 1                  1                  1
##         y_rate_haz
## impfloor -0.180017204081633 -0.177697563157895 -0.175923616216216
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.17278125443787 -0.172138467032967 -0.171707177419355
##        0                 0                  0                  0
##        1                 1                  1                  1
##         y_rate_haz
## impfloor -0.169728546961326 -0.165165951612903 -0.164827927374302
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.163058597938144 -0.161029588235294 -0.156023487046632
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.15293312849162 -0.149643657754011 -0.14953461452514
##        0                 0                  0                 0
##        1                 1                  1                 1
##         y_rate_haz
## impfloor -0.148627056818182 -0.142941868852459 -0.135371027472527
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.134145446153846 -0.128805413265306 -0.128686038461538
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.125142994285714 -0.124658606557377 -0.123788895348837
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.12356784375 -0.122597923469388 -0.121046051020408
##        0              0                  0                  0
##        1              1                  1                  1
##         y_rate_haz
## impfloor -0.121012677419355 -0.120022654054054 -0.119021869565217
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.11810739893617 -0.115263284210526 -0.114613652173913
##        0                 0                  0                  0
##        1                 1                  1                  1
##         y_rate_haz
## impfloor -0.112216951456311 -0.11136168852459 -0.107258889473684
##        0                  0                 0                  0
##        1                  1                 1                  1
##         y_rate_haz
## impfloor -0.0998291692307692 -0.0997268852459016 -0.0962160918367347
##        0                   0                   0                   0
##        1                   1                   1                   1
##         y_rate_haz
## impfloor -0.0955498429319372 -0.0943405668449198 -0.0924264364640884
##        0                   0                   0                   0
##        1                   1                   1                   1
##         y_rate_haz
## impfloor -0.0921191485714286 -0.0900606201117319 -0.0881393011363636
##        0                   0                   0                   0
##        1                   1                   1                   1
##         y_rate_haz
## impfloor -0.0871489719101124 -0.0831057377049181 -0.0818911153846154
##        0                   0                   0                   0
##        1                   1                   1                   1
##         y_rate_haz
## impfloor -0.0787255764705882 -0.0776596595744681 -0.07300008
##        0                   0                   0           0
##        1                   1                   1           1
##         y_rate_haz
## impfloor -0.0720395526315789 -0.0713861326530612 -0.0700609382022472
##        0                   0                   0                   0
##        1                   1                   1                   1
##         y_rate_haz
## impfloor -0.0682425961538461 -0.0674099837837838 -0.0668498901098901
##        0                   0                   0                   0
##        1                   1                   1                   1
##         y_rate_haz
## impfloor -0.066254198019802 -0.0644118352941176 -0.062764619047619
##        0                  0                   0                  0
##        1                  1                   1                  1
##         y_rate_haz
## impfloor -0.0624342789473684 -0.0582447446808511 -0.0534799120879121
##        0                   0                   0                   0
##        1                   1                   1                   1
##         y_rate_haz
## impfloor -0.0504318341968912 -0.0501374175824176 -0.0448770983606557
##        0                   0                   0                   0
##        1                   1                   1                   1
##         y_rate_haz
## impfloor -0.0439171604278075 -0.034979205 -0.0313384181818182
##        0                   0            0                   0
##        1                   1            1                   1
##         y_rate_haz
## impfloor -0.0311966153846154 -0.0308017215189874 -0.029141748502994
##        0                   0                   0                  0
##        1                   1                   1                  1
##         y_rate_haz
## impfloor -0.0279337040816327 -0.0183837197802198 -0.017426234375
##        0                   0                   0               0
##        1                   1                   1               1
##         y_rate_haz
## impfloor -0.0109188153846154 -0.00764238693467341 -0.00533626315789474
##        0                   0                    0                    0
##        1                   1                    1                    1
##         y_rate_haz
## impfloor -0.00332422950819672 0 0.00177875438596491 0.00310374489795919
##        0                    0 0                   0                   0
##        1                    1 2                   1                   1
##         y_rate_haz
## impfloor 0.00447304411764706 0.00724207142857143 0.0103107457627119
##        0                   0                   0                  0
##        1                   1                   1                  1
##         y_rate_haz
## impfloor 0.0132888495145631 0.0235367321428572 0.0267399560439561
##        0                  0                  0                  0
##        1                  1                  1                  2
##         y_rate_haz
## impfloor 0.0292137796610169 0.0304167 0.0310708225806452 0.03345837
##        0                  0         0                  0          0
##        1                  1         1                  1          1
##         y_rate_haz
## impfloor 0.0445497121212121 0.046671126984127 0.0504144198895028
##        0                  0                 0                  0
##        1                  1                 1                  1
##         y_rate_haz
## impfloor 0.0525050178571429 0.052702202970297 0.0527457225433526
##        0                  0                 0                  0
##        1                  1                 1                  1
##         y_rate_haz
## impfloor 0.0566268351063829 0.0615576071428571 0.062764619047619
##        0                  0                  0                 0
##        1                  1                  1                 1
##         y_rate_haz
## impfloor 0.0683521348314607 0.0715687058823529 0.07604175
##        0                  0                  0          0
##        1                  1                  1          1
##         y_rate_haz
## impfloor 0.0764572786885246 0.0775936224489796 0.0912501
##        0                  0                  0         0
##        1                  1                  1         1
##         y_rate_haz
## impfloor 0.0941069171270718 0.0962160918367347 0.102407984924623
##        0                  0                  0                 0
##        1                  1                  1                 1
##         y_rate_haz
## impfloor 0.104461393939394 0.111280609756098 0.11283614516129
##        0                 0                 0                0
##        1                 1                 1                1
##         y_rate_haz
## impfloor 0.116252308900524 0.118699317073171 0.121992112299465
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_haz
## impfloor 0.123919888888889 0.138713521978022 0.145471173913043
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_haz
## impfloor 0.150430418478261 0.153754747252747 0.166801258064516 0.1723613
##        0                 0                 0                 0         0
##        1                 1                 1                 2         1
##         y_rate_haz
## impfloor 0.182841960674157 0.193560818181818 0.204337830769231
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_haz
## impfloor 0.204815969849246 0.204982108695652 0.219936138461538
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_haz
## impfloor 0.221959702702703 0.229295123076923 0.262544147368421
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_haz
## impfloor 0.282569343195266 0.288158210526316 0.304167 0.312343532258064
##        0                 0                 0        0                 0
##        1                 1                 1        1                 1
##         y_rate_haz
## impfloor 0.326257340782123 0.351522341317365 0.392215342105263
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_haz
## impfloor 0.432073123076923 0.529351408839779 0.61003325698324
##        0                 0                 0                0
##        1                 1                 1                1
##         y_rate_haz
## impfloor 0.725321307692308
##        0                 0
##        1                 1
##         y_rate_haz
## impfloor -0.402231770491803 -0.393627882352941 -0.374865275675676
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.354030442622951 -0.327436606557377 -0.269070807692308
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.266146125 -0.255886523809524 -0.249317213114754
##        0            0                  0                  0
##        1            1                  1                  1
##         y_rate_haz
## impfloor -0.247344593406593 -0.235851417112299 -0.22812525
##        0                  0                  0           0
##        1                  1                  1           1
##         y_rate_haz
## impfloor -0.22369953968254 -0.21798635 -0.210843034090909
##        0                 0           0                  0
##        1                 1           1                  1
##         y_rate_haz
## impfloor -0.207386590909091 -0.202778 -0.201168650793651
##        0                  0         0                  0
##        1                  1         1                  1
##         y_rate_haz
## impfloor -0.200585805405405 -0.199002877659574 -0.197384968085106
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.197297513513514 -0.19133085483871 -0.191143196721311
##        0                  0                 0                  0
##        1                  1                 1                  1
##         y_rate_haz
## impfloor -0.189295420212766 -0.188213834254144 -0.186798211956522
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.18653335359116 -0.185145130434783 -0.182165950549451
##        0                 0                  0                  0
##        1                 1                  1                  1
##         y_rate_haz
## impfloor -0.178130950276243 -0.177846278688525 -0.172200365079365
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.172138467032967 -0.17046721978022 -0.169535704918033
##        0                  0                 0                  0
##        1                  1                 1                  2
##         y_rate_haz
## impfloor -0.166211475409836 -0.164414594594595 -0.164282711229947
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.163655070652174 -0.162110983516484 -0.160532583333333
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.157838010810811 -0.156886136842105 -0.155389663043478
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.150430418478261 -0.150393683333333 -0.14953461452514
##        0                  0                  0                 0
##        1                  2                  1                 1
##         y_rate_haz
## impfloor -0.147882298342541 -0.143818092391304 -0.142271661290323
##        0                  0                  0                  0
##        1                  1                  1                  2
##         y_rate_haz
## impfloor -0.139140223404255 -0.13687515 -0.136293409836066
##        0                  0           0                  0
##        1                  1           1                  1
##         y_rate_haz
## impfloor -0.135940558659218 -0.135552684782609 -0.134631295081967
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.131531675675676 -0.13130706557377 -0.130593440217391
##        0                  0                 0                  0
##        1                  1                 1                  1
##         y_rate_haz
## impfloor -0.130115883333333 -0.123356616666667 -0.122647983870968
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.122346502793296 -0.12133437704918 -0.119672262295082
##        0                  0                 0                  0
##        1                  1                 1                  1
##         y_rate_haz
## impfloor -0.119314127071823 -0.117742064516129 -0.115953165745856
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.114685918032787 -0.114489825842697 -0.111635760638298
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.11001785106383 -0.108513632432432 -0.107550762430939
##        0                 0                  0                  0
##        1                 1                  1                  1
##         y_rate_haz
## impfloor -0.106869486486487 -0.10645845 -0.106375344262295
##        0                  0           0                  0
##        1                  1           1                  1
##         y_rate_haz
## impfloor -0.105421517045455 -0.104144135869565 -0.103051114754098
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor -0.101937048648649 -0.101389 -0.0986035879120879
##        0                  0         0                   0
##        1                  1         2                   1
##         y_rate_haz
## impfloor -0.0980647704918033 -0.0970046108108109 -0.0969323406593406
##        0                   0                   0                   0
##        1                   1                   1                   1
##         y_rate_haz
## impfloor -0.0947405409836065 -0.0927967118644068 -0.0914163114754098
##        0                   0                   0                   0
##        1                   1                   1                   2
##         y_rate_haz
## impfloor -0.090745955801105 -0.0897541967213115 -0.087834320855615
##        0                  0                   0                  0
##        1                  1                   1                  1
##         y_rate_haz
## impfloor -0.08618065 -0.0854955891891892 -0.0849628491620112
##        0           0                   0                   0
##        1           1                   1                   1
##         y_rate_haz
## impfloor -0.0846828579545455 -0.0840240331491713 -0.0829546363636364
##        0                   0                   0                   0
##        1                   1                   1                   1
##         y_rate_haz
## impfloor -0.0814436229508197 -0.0802198681318681 -0.0797815081967213
##        0                   0                   0                   0
##        1                   1                   1                   1
##         y_rate_haz
## impfloor -0.0752061263736263 -0.0751873483146067 -0.0735348791208791
##        0                   0                   0                   0
##        1                   1                   1                   1
##         y_rate_haz
## impfloor -0.072175220338983 -0.0698088196721312 -0.0679702793296089
##        0                  0                   0                   0
##        1                  1                   1                   1
##         y_rate_haz
## impfloor -0.0677763423913044 -0.067219226519337 -0.06590285
##        0                   0                  0           0
##        1                   1                  1           1
##         y_rate_haz
## impfloor -0.0651786428571429 -0.0647163829787235 -0.0625232166666666
##        0                   0                   0                   0
##        1                   1                   1                   1
##         y_rate_haz
## impfloor -0.0618361483516484 -0.0588168232044199 -0.0579365714285714
##        0                   0                   0                   0
##        1                   1                   1                   1
##         y_rate_haz
## impfloor -0.0565119016393443 -0.0565119016393442 -0.0559009621621622
##        0                   0                   0                   0
##        1                   1                   1                   1
##         y_rate_haz
## impfloor -0.0548497868852459 -0.0534799120879121 -0.0531876721311475
##        0                   0                   0                   0
##        1                   1                   1                   1
##         y_rate_haz
## impfloor -0.0528986086956521 -0.0526126702702702 -0.0523843166666666
##        0                   0                   0                   0
##        1                   1                   1                   1
##         y_rate_haz
## impfloor -0.0509685243243243 -0.0498634426229508 -0.0493243783783784
##        0                   0                   0                   0
##        1                   1                   1                   1
##         y_rate_haz
## impfloor -0.0484661703296703 -0.0482013278688525 -0.0465392131147541
##        0                   0                   0                   0
##        1                   1                   1                   1
##         y_rate_haz
## impfloor -0.0446332010869566 -0.0425179677419355 -0.0413270380434783
##        0                   0                   0                   0
##        1                   1                   2                   1
##         y_rate_haz
## impfloor -0.0405556 -0.0386243809523809 -0.0384386868131868 -0.038020875
##        0          0                   0                   0            0
##        1          1                   1                   1            1
##         y_rate_haz
## impfloor -0.0363677934782609 -0.034341435483871 -0.0336096132596685
##        0                   0                  0                   0
##        1                   1                  1                   1
##         y_rate_haz
## impfloor -0.0327061290322581 -0.0325312299465241 -0.0319291325966851
##        0                   0                   0                   0
##        1                   1                   1                   1
##         y_rate_haz
## impfloor -0.0317536978021978 -0.0314085489130435 -0.030586625698324
##        0                   0                   0                  0
##        1                   1                   1                  1
##         y_rate_haz
## impfloor -0.0300824505494505 -0.0291223723404255 -0.0284112032967033
##        0                   0                   0                   0
##        1                   1                   1                   1
##         y_rate_haz
## impfloor -0.0273408539325843 -0.0265938360655738 -0.0264493043478261
##        0                   0                   0                   0
##        1                   1                   1                   1
##         y_rate_haz
## impfloor -0.0260249839572192 -0.0252072099447514 -0.0237895977653631
##        0                   0                   0                   0
##        1                   1                   1                   1
##         y_rate_haz
## impfloor -0.0227718609625668 -0.0225308888888889 -0.0222144438202247
##        0                   0                   0                   0
##        1                   1                   1                   1
##         y_rate_haz
## impfloor -0.0214900597826087 -0.0198369782608696 -0.019414914893617
##        0                   0                   0                  0
##        1                   1                   1                  1
##         y_rate_haz
## impfloor -0.0185879833333333 -0.0184852872928177 -0.0164414594594594
##        0                   0                   0                   0
##        1                   1                   1                   1
##         y_rate_haz
## impfloor -0.0150412252747253 -0.0149590327868852 -0.0134438453038674
##        0                   0                   0                   0
##        1                   1                   1                   1
##         y_rate_haz
## impfloor -0.0116987307692308 -0.0115090216216217 -0.0103107457627119
##        0                   0                   0                   0
##        1                   1                   1                   1
##         y_rate_haz
## impfloor -0.0100828839779005 -0.00849628491620112 -0.00840240331491712
##        0                   0                    0                    0
##        1                   1                    1                    1
##         y_rate_haz
## impfloor -0.00664845901639344 -0.00334249450549451 -0.00168048066298343
##        0                    0                    0                    0
##        1                    1                    1                    2
##         y_rate_haz
## impfloor -0.0016621147540984 -0.00164414594594595 0 0.0016621147540984
##        0                   0                    0 0                  0
##        1                   1                    1 3                  1
##         y_rate_haz
## impfloor 0.00320175789473684 0.00347619428571429 0.00490591935483868
##        0                   0                   0                   0
##        1                   1                   1                   1
##         y_rate_haz
## impfloor 0.00498634426229509 0.00504144198895032 0.00986487567567568
##        0                   0                   0                   0
##        1                   1                   1                   1
##         y_rate_haz
## impfloor 0.0100274835164835 0.0115715706521739 0.0150412252747253
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor 0.019414914893617 0.0212589838709678 0.0228942903225807
##        0                 0                  0                  0
##        1                 1                  1                  1
##         y_rate_haz
## impfloor 0.0236574333333334 0.0250687087912088 0.0263063351351351
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor 0.0279504810810811 0.0282559508196721 0.0310708225806451
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor 0.0317536978021978 0.0325312299465241 0.0334249450549451
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor 0.034341435483871 0.0382286393442623 0.0401099340659341
##        0                 0                  0                  0
##        1                 1                  1                  1
##         y_rate_haz
## impfloor 0.0403315359116022 0.0404477393617021 0.0413270380434783
##        0                  0                  0                  0
##        1                  1                  1                  2
##         y_rate_haz
## impfloor 0.0418430793650794 0.0427477945945946 0.0434524285714286
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor 0.0441532741935484 0.0448770983606557 0.0453014680851064
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor 0.0465392131147541 0.0487339392265193 0.0504144198895028
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor 0.0518086648351648 0.0520949005524862 0.0531085238095238
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor 0.0534799120879121 0.0537753812154696 0.0540741333333333
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor 0.0551511593406593 0.0562047717391304 0.0579365714285714
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor 0.0621777845303868 0.0661232608695652 0.0701923846153846
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor 0.0705801878453039 0.0719534838709677 0.0739411491712707
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor 0.0752240967741935 0.0768773736263736 0.078982591160221
##        0                  0                  0                 0
##        1                  1                  1                 1
##         y_rate_haz
## impfloor 0.0805631513513514 0.0835623626373626 0.0836861587301587
##        0                  0                  0                  0
##        1                  1                  2                  1
##         y_rate_haz
## impfloor 0.0852336098901099 0.0887838810810811 0.089266402173913
##        0                  0                  0                 0
##        1                  1                  1                 1
##         y_rate_haz
## impfloor 0.0902473516483516 0.0910874438502674 0.0935898461538462
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor 0.0941069171270719 0.0946297333333333 0.0953604648648649
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor 0.0970046108108108 0.0975318097826087 0.0991848913043478
##        0                  0                  0                  0
##        1                  1                  1                  1
##         y_rate_haz
## impfloor 0.100310393617021 0.103051114754098 0.103654675977654
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_haz
## impfloor 0.106217047619048 0.112232743315508 0.11259220441989
##        0                 0                 0                0
##        1                 1                 1                1
##         y_rate_haz
## impfloor 0.11531606043956 0.120329802197802 0.12673625 0.128686038461538
##        0                0                 0          0                 0
##        1                1                 1          1                 1
##         y_rate_haz
## impfloor 0.128747936507936 0.129143530726257 0.130842787709497
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_haz
## impfloor 0.131307065573771 0.135940558659218 0.138413073033708
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_haz
## impfloor 0.139884288770053 0.142056016483516 0.143727263736264
##        0                 0                 0                 0
##        1                 1                 1                 2
##         y_rate_haz
## impfloor 0.147973135135135 0.150448193548387 0.1520835 0.154523342245989
##        0                 0                 0         0                 0
##        1                 1                 1         1                 1
##         y_rate_haz
## impfloor 0.170671483333333 0.172415518716578 0.179883709677419
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_haz
## impfloor 0.209426459016393 0.212571255681818 0.21275068852459
##        0                 0                 0                0
##        1                 1                 1                1
##         y_rate_haz
## impfloor 0.216762689655172 0.276808063492063 0.325893214285714
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_haz
## impfloor 0.346121068965517 0.370651590163934 0.646772686813187
##        0                 0                 0                 0
##        1                 1                 1                 1
##         y_rate_haz
## impfloor 0.700906565217391
##        0                 0
##        1                 1
```




# Results Detail

## Results Plots
![](/tmp/6515dcd0-00a5-423c-bd9e-6706c447a634/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/6515dcd0-00a5-423c-bd9e-6706c447a634/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     0                    NA                 0.4218727    0.3292247    0.5145207
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     1                    NA                -0.0280568   -0.0613664    0.0052528
0-3 months     ki0047075b-MAL-ED       INDIA                          0                    NA                 0.1103434    0.0803477    0.1403392
0-3 months     ki0047075b-MAL-ED       INDIA                          1                    NA                -0.0243510   -0.0620962    0.0133942
0-3 months     ki0047075b-MAL-ED       NEPAL                          0                    NA                 0.0627594    0.0238118    0.1017070
0-3 months     ki0047075b-MAL-ED       NEPAL                          1                    NA                 0.0834146    0.0416634    0.1251658
0-3 months     ki0047075b-MAL-ED       PERU                           0                    NA                -0.1555249   -0.1904448   -0.1206051
0-3 months     ki0047075b-MAL-ED       PERU                           1                    NA                -0.0724480   -0.1064719   -0.0384240
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                -0.0609554   -0.1014252   -0.0204855
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                -0.1150904   -0.1623783   -0.0678026
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0547201   -0.0944147   -0.0150254
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.8504918    0.8211684    0.8798153
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     0                    NA                -0.0368405   -0.0777585    0.0040774
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     1                    NA                -0.1212116   -0.1493061   -0.0931170
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     0                    NA                 0.0291513   -0.0065706    0.0648733
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.0377494   -0.0563436   -0.0191552
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                -0.2452469   -0.2662060   -0.2242879
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.1098646   -0.1308074   -0.0889218
0-3 months     kiGH5241-JiVitA-3       BANGLADESH                     0                    NA                 0.0679966    0.0630272    0.0729660
0-3 months     kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                 0.1314341    0.1156188    0.1472495
0-3 months     kiGH5241-JiVitA-4       BANGLADESH                     0                    NA                 0.0644876    0.0490954    0.0798798
0-3 months     kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                 0.0679924    0.0363461    0.0996388
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     0                    NA                -0.0996025   -0.1658245   -0.0333806
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     1                    NA                -0.0164003   -0.0405741    0.0077736
3-6 months     ki0047075b-MAL-ED       INDIA                          0                    NA                 0.1982624    0.1775085    0.2190163
3-6 months     ki0047075b-MAL-ED       INDIA                          1                    NA                -0.0388481   -0.0674735   -0.0102227
3-6 months     ki0047075b-MAL-ED       NEPAL                          0                    NA                -0.0261733   -0.0575323    0.0051857
3-6 months     ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.0138839   -0.0477957    0.0200279
3-6 months     ki0047075b-MAL-ED       PERU                           0                    NA                 0.0174519   -0.0167426    0.0516464
3-6 months     ki0047075b-MAL-ED       PERU                           1                    NA                 0.0287898   -0.0058625    0.0634422
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                -0.9577920   -1.0009388   -0.9146452
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                -0.0140620   -0.0541160    0.0259920
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0728320   -0.1058536   -0.0398103
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.6806643   -0.7089631   -0.6523655
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     0                    NA                -0.1549249   -0.1936894   -0.1161604
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     1                    NA                -0.0489359   -0.0718287   -0.0260432
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     0                    NA                 0.1382167    0.1133333    0.1631001
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.0224869   -0.0395556   -0.0054183
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                 0.0529644    0.0288731    0.0770556
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                 0.0050889   -0.0119288    0.0221066
3-6 months     ki1113344-GMS-Nepal     NEPAL                          0                    NA                -0.1689122   -0.1917300   -0.1460944
3-6 months     ki1113344-GMS-Nepal     NEPAL                          1                    NA                -0.2232469   -0.2570342   -0.1894595
3-6 months     ki1114097-CONTENT       PERU                           0                    NA                 0.0093544   -0.0438712    0.0625800
3-6 months     ki1114097-CONTENT       PERU                           1                    NA                 0.0139482   -0.0094963    0.0373927
3-6 months     kiGH5241-JiVitA-3       BANGLADESH                     0                    NA                -0.0048779   -0.0099762    0.0002204
3-6 months     kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                 0.0065087   -0.0067435    0.0197609
3-6 months     kiGH5241-JiVitA-4       BANGLADESH                     0                    NA                -0.0083228   -0.0217973    0.0051517
3-6 months     kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                -0.0107512   -0.0724461    0.0509436
6-12 months    ki0047075b-MAL-ED       BANGLADESH                     0                    NA                -0.0770624   -0.1015637   -0.0525611
6-12 months    ki0047075b-MAL-ED       BANGLADESH                     1                    NA                -0.0810276   -0.0920229   -0.0700322
6-12 months    ki0047075b-MAL-ED       INDIA                          0                    NA                 0.2678205    0.2521102    0.2835308
6-12 months    ki0047075b-MAL-ED       INDIA                          1                    NA                -0.0735631   -0.0859373   -0.0611890
6-12 months    ki0047075b-MAL-ED       NEPAL                          0                    NA                -0.0493929   -0.0616269   -0.0371589
6-12 months    ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.0384781   -0.0531203   -0.0238360
6-12 months    ki0047075b-MAL-ED       PERU                           0                    NA                -0.0305160   -0.0462306   -0.0148013
6-12 months    ki0047075b-MAL-ED       PERU                           1                    NA                 0.0201189    0.0013654    0.0388723
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                -0.3759654   -0.3965611   -0.3553697
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                -0.0613070   -0.0787052   -0.0439088
6-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1232332   -0.1391711   -0.1072953
6-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0084323   -0.0141706    0.0310353
6-12 months    ki1017093-NIH-Birth     BANGLADESH                     0                    NA                -0.1181619   -0.1372609   -0.0990629
6-12 months    ki1017093-NIH-Birth     BANGLADESH                     1                    NA                -0.0492401   -0.0588441   -0.0396362
6-12 months    ki1017093b-PROVIDE      BANGLADESH                     0                    NA                -0.1234180   -0.1375251   -0.1093109
6-12 months    ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.0604395   -0.0676104   -0.0532686
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                -0.0505027   -0.0599766   -0.0410289
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.0303602   -0.0384299   -0.0222905
6-12 months    ki1113344-GMS-Nepal     NEPAL                          0                    NA                -0.0635269   -0.0737595   -0.0532943
6-12 months    ki1113344-GMS-Nepal     NEPAL                          1                    NA                -0.0919396   -0.1081189   -0.0757602
6-12 months    ki1114097-CONTENT       PERU                           0                    NA                -0.0055356   -0.0369903    0.0259192
6-12 months    ki1114097-CONTENT       PERU                           1                    NA                -0.0237080   -0.0366291   -0.0107869
6-12 months    kiGH5241-JiVitA-3       BANGLADESH                     0                    NA                -0.0745419   -0.0773876   -0.0716963
6-12 months    kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                -0.0785338   -0.0860841   -0.0709835
6-12 months    kiGH5241-JiVitA-4       BANGLADESH                     0                    NA                -0.0398595   -0.0445397   -0.0351794
6-12 months    kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                -0.0252353   -0.0381432   -0.0123275
12-24 months   ki0047075b-MAL-ED       BANGLADESH                     0                    NA                 0.0098251   -0.0049105    0.0245607
12-24 months   ki0047075b-MAL-ED       BANGLADESH                     1                    NA                -0.0169687   -0.0226402   -0.0112973
12-24 months   ki0047075b-MAL-ED       INDIA                          0                    NA                -0.1069236   -0.1126243   -0.1012229
12-24 months   ki0047075b-MAL-ED       INDIA                          1                    NA                -0.0101195   -0.0154079   -0.0048311
12-24 months   ki0047075b-MAL-ED       NEPAL                          0                    NA                -0.0259826   -0.0320130   -0.0199522
12-24 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.0130772   -0.0202199   -0.0059345
12-24 months   ki0047075b-MAL-ED       PERU                           0                    NA                 0.0003223   -0.0077869    0.0084316
12-24 months   ki0047075b-MAL-ED       PERU                           1                    NA                 0.0885059    0.0780149    0.0989970
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                 0.1258734    0.1178971    0.1338497
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                -0.0130621   -0.0210288   -0.0050954
12-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0366359   -0.0447398   -0.0285319
12-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1469073    0.1397816    0.1540329
12-24 months   ki1017093-NIH-Birth     BANGLADESH                     0                    NA                -0.0205529   -0.0331090   -0.0079967
12-24 months   ki1017093-NIH-Birth     BANGLADESH                     1                    NA                -0.0417476   -0.0465810   -0.0369142
12-24 months   ki1017093b-PROVIDE      BANGLADESH                     0                    NA                 0.0288116    0.0221854    0.0354378
12-24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.0077009   -0.0117046   -0.0036971
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                 0.0053843   -0.0002252    0.0109938
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.0050031   -0.0096713   -0.0003350
12-24 months   ki1113344-GMS-Nepal     NEPAL                          0                    NA                -0.0124321   -0.0190593   -0.0058049
12-24 months   ki1113344-GMS-Nepal     NEPAL                          1                    NA                 0.0161082    0.0072626    0.0249538
12-24 months   ki1114097-CONTENT       PERU                           0                    NA                -0.0272440   -0.0335417   -0.0209464
12-24 months   ki1114097-CONTENT       PERU                           1                    NA                -0.0234331   -0.0371623   -0.0097039
12-24 months   kiGH5241-JiVitA-3       BANGLADESH                     0                    NA                -0.0191038   -0.0209743   -0.0172332
12-24 months   kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                -0.0155095   -0.0192874   -0.0117315
12-24 months   kiGH5241-JiVitA-4       BANGLADESH                     0                    NA                -0.0138240   -0.0158356   -0.0118124
12-24 months   kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                -0.0179081   -0.0235783   -0.0122379


### Parameter: E(Y)


agecat         studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                -0.0289484   -0.0610285    0.0031317
0-3 months     ki0047075b-MAL-ED       INDIA                          NA                   NA                -0.0252274   -0.0639359    0.0134811
0-3 months     ki0047075b-MAL-ED       NEPAL                          NA                   NA                 0.0756641    0.0398686    0.1114597
0-3 months     ki0047075b-MAL-ED       PERU                           NA                   NA                -0.1495227   -0.1815151   -0.1175302
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                -0.1085575   -0.1542119   -0.0629030
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0507910   -0.0896375   -0.0119446
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                -0.1194091   -0.1464464   -0.0923719
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                -0.0413143   -0.0594662   -0.0231624
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                -0.1220821   -0.1402761   -0.1038881
0-3 months     kiGH5241-JiVitA-3       BANGLADESH                     NA                   NA                 0.0704374    0.0654823    0.0753924
0-3 months     kiGH5241-JiVitA-4       BANGLADESH                     NA                   NA                 0.0675829    0.0526455    0.0825202
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                -0.0225211   -0.0456381    0.0005960
3-6 months     ki0047075b-MAL-ED       INDIA                          NA                   NA                -0.0401251   -0.0685271   -0.0117231
3-6 months     ki0047075b-MAL-ED       NEPAL                          NA                   NA                -0.0213486   -0.0485627    0.0058655
3-6 months     ki0047075b-MAL-ED       PERU                           NA                   NA                 0.0273803   -0.0036374    0.0583980
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                 0.0032881   -0.0348581    0.0414343
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0691618   -0.1015337   -0.0367899
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                -0.0502117   -0.0723801   -0.0280432
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                -0.0272428   -0.0436954   -0.0107902
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                 0.0267740    0.0099602    0.0435879
3-6 months     ki1113344-GMS-Nepal     NEPAL                          NA                   NA                -0.1648683   -0.1859149   -0.1438218
3-6 months     ki1114097-CONTENT       PERU                           NA                   NA                 0.0127563   -0.0097402    0.0352528
3-6 months     kiGH5241-JiVitA-3       BANGLADESH                     NA                   NA                -0.0034650   -0.0083318    0.0014017
3-6 months     kiGH5241-JiVitA-4       BANGLADESH                     NA                   NA                -0.0088470   -0.0225757    0.0048816
6-12 months    ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                -0.0807393   -0.0911050   -0.0703737
6-12 months    ki0047075b-MAL-ED       INDIA                          NA                   NA                -0.0776724   -0.0898619   -0.0654829
6-12 months    ki0047075b-MAL-ED       NEPAL                          NA                   NA                -0.0480281   -0.0588872   -0.0371690
6-12 months    ki0047075b-MAL-ED       PERU                           NA                   NA                -0.0373127   -0.0513600   -0.0232653
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                -0.0537724   -0.0711138   -0.0364310
6-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1240568   -0.1398123   -0.1083013
6-12 months    ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                -0.0526694   -0.0619560   -0.0433828
6-12 months    ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                -0.0626151   -0.0695574   -0.0556729
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                -0.0315658   -0.0388594   -0.0242722
6-12 months    ki1113344-GMS-Nepal     NEPAL                          NA                   NA                -0.0615138   -0.0709958   -0.0520318
6-12 months    ki1114097-CONTENT       PERU                           NA                   NA                -0.0227186   -0.0352036   -0.0102335
6-12 months    kiGH5241-JiVitA-3       BANGLADESH                     NA                   NA                -0.0747692   -0.0776099   -0.0719285
6-12 months    kiGH5241-JiVitA-4       BANGLADESH                     NA                   NA                -0.0383579   -0.0427247   -0.0339912
12-24 months   ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                -0.0178490   -0.0232486   -0.0124494
12-24 months   ki0047075b-MAL-ED       INDIA                          NA                   NA                -0.0098833   -0.0150187   -0.0047479
12-24 months   ki0047075b-MAL-ED       NEPAL                          NA                   NA                -0.0296781   -0.0348595   -0.0244967
12-24 months   ki0047075b-MAL-ED       PERU                           NA                   NA                -0.0092560   -0.0162726   -0.0022393
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                -0.0153445   -0.0229210   -0.0077680
12-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0389391   -0.0468100   -0.0310683
12-24 months   ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                -0.0410728   -0.0456642   -0.0364813
12-24 months   ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                -0.0081718   -0.0120131   -0.0043304
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                -0.0057326   -0.0097260   -0.0017391
12-24 months   ki1113344-GMS-Nepal     NEPAL                          NA                   NA                -0.0137560   -0.0196138   -0.0078982
12-24 months   ki1114097-CONTENT       PERU                           NA                   NA                -0.0241116   -0.0366136   -0.0116097
12-24 months   kiGH5241-JiVitA-3       BANGLADESH                     NA                   NA                -0.0188169   -0.0206658   -0.0169680
12-24 months   kiGH5241-JiVitA-4       BANGLADESH                     NA                   NA                -0.0145979   -0.0164717   -0.0127240


### Parameter: ATE


agecat         studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     1                    0                 -0.4499295   -0.5485739   -0.3512850
0-3 months     ki0047075b-MAL-ED       INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       INDIA                          1                    0                 -0.1346944   -0.1813957   -0.0879930
0-3 months     ki0047075b-MAL-ED       NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       NEPAL                          1                    0                  0.0206552   -0.0357437    0.0770541
0-3 months     ki0047075b-MAL-ED       PERU                           0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       PERU                           1                    0                  0.0830769    0.0342347    0.1319192
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   1                    0                 -0.0541351   -0.1103077    0.0020376
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    0                  0.9052119    0.8550094    0.9554144
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     1                    0                 -0.0843710   -0.1315803   -0.0371618
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     1                    0                 -0.0669007   -0.1055706   -0.0282308
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    0                  0.1353824    0.1057127    0.1650521
0-3 months     kiGH5241-JiVitA-3       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3       BANGLADESH                     1                    0                  0.0634375    0.0469995    0.0798755
0-3 months     kiGH5241-JiVitA-4       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4       BANGLADESH                     1                    0                  0.0035049   -0.0316428    0.0386525
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     1                    0                  0.0832023    0.0128540    0.1535506
3-6 months     ki0047075b-MAL-ED       INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       INDIA                          1                    0                 -0.2371105   -0.2728389   -0.2013821
3-6 months     ki0047075b-MAL-ED       NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       NEPAL                          1                    0                  0.0122894   -0.0338806    0.0584594
3-6 months     ki0047075b-MAL-ED       PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       PERU                           1                    0                  0.0113379   -0.0367335    0.0594094
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   1                    0                  0.9437300    0.8797794    1.0076807
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.6078323   -0.6518393   -0.5638253
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     1                    0                  0.1059890    0.0624629    0.1495151
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     1                    0                 -0.1607037   -0.1907486   -0.1306587
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    0                 -0.0478755   -0.0761729   -0.0195780
3-6 months     ki1113344-GMS-Nepal     NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal     NEPAL                          1                    0                 -0.0543347   -0.0950133   -0.0136561
3-6 months     ki1114097-CONTENT       PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CONTENT       PERU                           1                    0                  0.0045938   -0.0533893    0.0625769
3-6 months     kiGH5241-JiVitA-3       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3       BANGLADESH                     1                    0                  0.0113866   -0.0028924    0.0256656
3-6 months     kiGH5241-JiVitA-4       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4       BANGLADESH                     1                    0                 -0.0024284   -0.0652776    0.0604208
6-12 months    ki0047075b-MAL-ED       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       BANGLADESH                     1                    0                 -0.0039652   -0.0307330    0.0228026
6-12 months    ki0047075b-MAL-ED       INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       INDIA                          1                    0                 -0.3413836   -0.3624294   -0.3203379
6-12 months    ki0047075b-MAL-ED       NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       NEPAL                          1                    0                  0.0109147   -0.0081861    0.0300156
6-12 months    ki0047075b-MAL-ED       PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       PERU                           1                    0                  0.0506348    0.0267296    0.0745401
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1                    0                  0.3146584    0.2883870    0.3409299
6-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    0                  0.1316655    0.1069108    0.1564203
6-12 months    ki1017093-NIH-Birth     BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth     BANGLADESH                     1                    0                  0.0689218    0.0475620    0.0902816
6-12 months    ki1017093b-PROVIDE      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE      BANGLADESH                     1                    0                  0.0629786    0.0471465    0.0788106
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    0                  0.0201425    0.0083845    0.0319006
6-12 months    ki1113344-GMS-Nepal     NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal     NEPAL                          1                    0                 -0.0284127   -0.0475141   -0.0093112
6-12 months    ki1114097-CONTENT       PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CONTENT       PERU                           1                    0                 -0.0181724   -0.0520253    0.0156804
6-12 months    kiGH5241-JiVitA-3       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3       BANGLADESH                     1                    0                 -0.0039918   -0.0117779    0.0037942
6-12 months    kiGH5241-JiVitA-4       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4       BANGLADESH                     1                    0                  0.0146242    0.0009561    0.0282923
12-24 months   ki0047075b-MAL-ED       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       BANGLADESH                     1                    0                 -0.0267938   -0.0426011   -0.0109864
12-24 months   ki0047075b-MAL-ED       INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       INDIA                          1                    0                  0.0968041    0.0888426    0.1047657
12-24 months   ki0047075b-MAL-ED       NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       NEPAL                          1                    0                  0.0129054    0.0034357    0.0223751
12-24 months   ki0047075b-MAL-ED       PERU                           0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       PERU                           1                    0                  0.0881836    0.0733606    0.1030066
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    0                 -0.1389355   -0.1505434   -0.1273276
12-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    0                  0.1835431    0.1720202    0.1950660
12-24 months   ki1017093-NIH-Birth     BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093-NIH-Birth     BANGLADESH                     1                    0                 -0.0211947   -0.0346498   -0.0077396
12-24 months   ki1017093b-PROVIDE      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    0                 -0.0365125   -0.0442176   -0.0288074
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    0                 -0.0103874   -0.0176954   -0.0030794
12-24 months   ki1113344-GMS-Nepal     NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal     NEPAL                          1                    0                  0.0285403    0.0175111    0.0395695
12-24 months   ki1114097-CONTENT       PERU                           0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1114097-CONTENT       PERU                           1                    0                  0.0038109   -0.0092055    0.0168274
12-24 months   kiGH5241-JiVitA-3       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3       BANGLADESH                     1                    0                  0.0035943   -0.0004555    0.0076441
12-24 months   kiGH5241-JiVitA-4       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4       BANGLADESH                     1                    0                 -0.0040841   -0.0101514    0.0019833
