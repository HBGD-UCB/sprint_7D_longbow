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

**Outcome Variable:** y_rate_len

## Predictor Variables

**Intervention Variable:** trth2o

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_nrooms
* W_nhh
* W_nchldlt5
* cleanck
* impfloor
* impsan
* safeh20
* delta_meducyrs
* delta_feducyrs
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_nrooms
* delta_W_nhh
* delta_W_nchldlt5
* delta_cleanck
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country                        trth2o    n_cell     n
-------------  -------------------------  -----------------------------  -------  -------  ----
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0              2   134
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1            132   134
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0            620   634
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1             14   634
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0            319   720
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1            401   720
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0             72    84
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1             12    84
0-3 months     ki0047075b-MAL-ED          INDIA                          0              4     6
0-3 months     ki0047075b-MAL-ED          INDIA                          1              2     6
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1             25    25
0-3 months     ki1000108-IRC              INDIA                          1            118   118
0-3 months     ki0047075b-MAL-ED          NEPAL                          0             12    63
0-3 months     ki0047075b-MAL-ED          NEPAL                          1             51    63
0-3 months     ki0047075b-MAL-ED          PERU                           0              9    46
0-3 months     ki0047075b-MAL-ED          PERU                           1             37    46
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0              9    10
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1              1    10
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             32    38
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              6    38
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0              2   132
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1            130   132
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0            561   574
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1             13   574
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0            313   695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1            382   695
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0             90   103
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1             13   103
3-6 months     ki0047075b-MAL-ED          INDIA                          0              4     7
3-6 months     ki0047075b-MAL-ED          INDIA                          1              3     7
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1            101   101
3-6 months     ki1000108-IRC              INDIA                          1            119   119
3-6 months     ki0047075b-MAL-ED          NEPAL                          0             14    82
3-6 months     ki0047075b-MAL-ED          NEPAL                          1             68    82
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0              3     4
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1              1     4
3-6 months     ki0047075b-MAL-ED          PERU                           0             10    49
3-6 months     ki0047075b-MAL-ED          PERU                           1             39    49
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0              9    11
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1              2    11
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             36    42
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              6    42
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     0              2   131
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1            129   131
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0            532   545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1             13   545
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0            311   676
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1            365   676
6-12 months    ki0047075b-MAL-ED          BRAZIL                         0             90   103
6-12 months    ki0047075b-MAL-ED          BRAZIL                         1             13   103
6-12 months    ki0047075b-MAL-ED          INDIA                          0              5     8
6-12 months    ki0047075b-MAL-ED          INDIA                          1              3     8
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1            107   107
6-12 months    ki1000108-IRC              INDIA                          1            119   119
6-12 months    ki0047075b-MAL-ED          NEPAL                          0             14    83
6-12 months    ki0047075b-MAL-ED          NEPAL                          1             69    83
6-12 months    ki1113344-GMS-Nepal        NEPAL                          0              3     4
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1              1     4
6-12 months    ki0047075b-MAL-ED          PERU                           0             10    49
6-12 months    ki0047075b-MAL-ED          PERU                           1             39    49
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0              9    11
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1              2    11
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             35    41
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              6    41
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     0              2   132
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1            130   132
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0            447   458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1             11   458
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0            267   495
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            228   495
12-24 months   ki0047075b-MAL-ED          BRAZIL                         0             90   103
12-24 months   ki0047075b-MAL-ED          BRAZIL                         1             13   103
12-24 months   ki0047075b-MAL-ED          INDIA                          0              5     9
12-24 months   ki0047075b-MAL-ED          INDIA                          1              4     9
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1            100   100
12-24 months   ki1000108-IRC              INDIA                          1            118   118
12-24 months   ki0047075b-MAL-ED          NEPAL                          0             14    83
12-24 months   ki0047075b-MAL-ED          NEPAL                          1             69    83
12-24 months   ki1113344-GMS-Nepal        NEPAL                          0              3     4
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1              1     4
12-24 months   ki0047075b-MAL-ED          PERU                           0             10    48
12-24 months   ki0047075b-MAL-ED          PERU                           1             38    48
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0              9    11
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              2    11
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             36    42
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              6    42


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
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
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
* agecat: 12-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
##       y_rate_len
## trth2o 2.24504214285714 2.36574333333333 3.07788035714286 3.14655517241379
##      0                0                0                0                0
##      1                1                1                1                1
##       y_rate_len
## trth2o 3.22059176470588 3.25893214285714 3.32461604651163 3.37963333333333
##      0                0                0                0                0
##      1                1                1                1                1
##       y_rate_len
## trth2o 3.56013647727273 3.62103571428571 3.62660653846154 3.63807588235294
##      0                0                0                0                0
##      1                1                2                1                1
##       y_rate_len
## trth2o 3.72449387755102 3.75270974025974 3.75514814814815 3.8020875
##      0                0                0                0         0
##      1                1                2                1         1
##       y_rate_len
## trth2o 3.84578965517241 4.01099340659341 4.13430873786408 4.20882244186046
##      0                0                0                0                0
##      1                1                1                1                1
##       y_rate_len
## trth2o 4.258338 4.34524285714286 5.36765294117647
##      0        0                0                0
##      1        1                1                1
##       y_rate_len
## trth2o 0.574537666666665 0.802198681318681 1.04768633333333 1.115279
##      0                 0                 0                0        0
##      1                 1                 1                1        1
##       y_rate_len
## trth2o 1.14907533333333 1.35185333333333 1.58842766666667 1.7192047826087
##      0                0                0                0               0
##      1                1                2                1               1
##       y_rate_len
## trth2o 1.78304793103448 1.89259466666667 1.99398366666667 2.01675945652174
##      0                0                0                0                0
##      1                1                1                1                1
##       y_rate_len
## trth2o 2.04982108695652 2.09537266666667 2.10577153846154 2.19676166666667
##      0                0                0                0                0
##      1                1                1                1                1
##       y_rate_len
## trth2o 2.24668806818182 2.26435433333333 2.2812525 2.28942903225806
##      0                0                0         0                0
##      1                1                1         1                1
##       y_rate_len
## trth2o 2.28979651685393 2.31431413043478 2.32397258426966 2.35814865168539
##      0                0                0                0                0
##      1                1                1                1                1
##       y_rate_len
## trth2o 2.36967313953488 2.39232471910112 2.433336 2.46067685393258
##      0                0                0        0                0
##      1                1                1        1                1
##       y_rate_len
## trth2o 2.46713233333333 2.4796222826087 2.52393893617021 2.52902898876404
##      0                0               0                0                0
##      1                1               1                1                1
##       y_rate_len
## trth2o 2.56320505617978 2.56852133333333 2.59654756097561 2.60231766666667
##      0                0                0                0                0
##      1                1                1                1                1
##       y_rate_len
## trth2o 2.6491964516129 2.66991033333333 2.70370666666667 2.72149421052632
##      0               0                0                0                0
##      1               1                1                1                1
##       y_rate_len
## trth2o 2.74731483870968 2.76826146067416 2.86686137931035 2.88158210526316
##      0                0                0                0                0
##      1                1                1                1                1
##       y_rate_len
## trth2o 2.90496573033708 2.940281 2.94355161290323 2.97331786516854 3.04167
##      0                0        0                0                0       0
##      1                1        2                1                1       2
##       y_rate_len
## trth2o 3.07546633333333 3.10851989010989 3.11079886363636 3.13978838709677
##      0                0                0                0                0
##      1                1                1                1                1
##       y_rate_len
## trth2o 3.14655517241379 3.18314302325581 3.21065166666667 3.21647862068966
##      0                0                0                0                0
##      1                1                1                1                1
##       y_rate_len
## trth2o 3.244448 3.27564461538461 3.30616304347826 3.345837
##      0        0                0                0        0
##      1        1                1                1        1
##       y_rate_len
## trth2o 3.37963333333333 3.39128724137931 3.41760674157303 3.45178280898876
##      0                0                0                0                0
##      1                1                1                1                1
##       y_rate_len
## trth2o 3.45644318181818 3.47147119565217 3.48595887640449 3.548615
##      0                0                0                0        0
##      1                1                1                1        3
##       y_rate_len
## trth2o 3.58848707865168 3.62266314606742 3.6436671875 3.69839420454546
##      0                0                0            0                0
##      1                1                1            1                1
##       y_rate_len
## trth2o 3.71759666666667 3.73596423913043 3.73596423913044 3.74605673684211
##      0                0                0                0                0
##      1                1                1                1                2
##       y_rate_len
## trth2o 3.74903511627907 3.75936741573034 3.77701879120879 3.8020875
##      0                0                0                0         0
##      1                1                1                1         1
##       y_rate_len
## trth2o 3.83514913043478 3.89050813953488 3.90614463157895 3.93816221052631
##      0                0                0                0                0
##      1                1                1                1                1
##       y_rate_len
## trth2o 3.94034522727273 3.95067482758621 3.96442382022472 3.99859988764045
##      0                0                0                0                0
##      1                1                1                2                1
##       y_rate_len
## trth2o 4.01375010309278 4.0778432967033 4.24419069767442 4.26533034482759
##      0                0               0                0                0
##      1                1               2                1                1
##       y_rate_len
## trth2o 4.32593066666667 4.41532741935484 4.42424727272727 4.52870866666667
##      0                0                0                0                0
##      1                1                1                1                1
##       y_rate_len
## trth2o 4.6137691011236 4.74238870967742 4.7608747826087 4.765283
##      0               0                0               0        0
##      1               1                1               1        1
##       y_rate_len
## trth2o 4.79907933333333 4.94271375 5.12641011235955 5.28114131868132
##      0                0          0                0                0
##      1                1          1                1                1
##       y_rate_len
## trth2o 5.2972904494382 6.15169213483146 6.45509966666666 6.50851967741935
##      0               0                0                0                0
##      1               1                1                1                1
##       y_rate_len
## trth2o 7.34785449438202
##      0                0
##      1                1
##       y_rate_len
## trth2o 0 0.224311946902655 0.270370666666667 0.280377402234637
##      0 0                 0                 0                 0
##      1 1                 1                 1                 1
##       y_rate_len
## trth2o 0.285681712707182 0.312768123393316 0.317914661016949
##      0                 0                 0                 0
##      1                 1                 1                 1
##       y_rate_len
## trth2o 0.330616304347826 0.358333726027397 0.359318159340659
##      0                 0                 0                 0
##      1                 1                 1                 1
##       y_rate_len
## trth2o 0.368427633802817 0.375000410958904 0.390596967213114 0.405556
##      0                 0                 0                 0        0
##      1                 1                 1                 1        1
##       y_rate_len
## trth2o 0.444925132978723 0.449709274193548 0.467949230769231
##      0                 0                 0                 0
##      1                 1                 1                 1
##       y_rate_len
## trth2o 0.530049731903485 0.530427465940055 0.535795528455285
##      0                 0                 0                 0
##      1                 1                 2                 1
##       y_rate_len
## trth2o 0.537753812154697 0.552281544715447 0.553760501319262
##      0                 0                 0                 0
##      1                 1                 1                 1
##       y_rate_len
## trth2o 0.564881571428571 0.573572057142858 0.575451081081081
##      0                 0                 0                 0
##      1                 1                 1                 1
##       y_rate_len
## trth2o 0.582986749999999 0.611732513966481 0.630984734042553
##      0                 0                 0                 0
##      1                 1                 1                 1
##       y_rate_len
## trth2o 0.638170544959128 0.639006302521008 0.643430192307692
##      0                 0                 0                 0
##      1                 1                 1                 1
##       y_rate_len
## trth2o 0.650000712328768 0.659440650406504 0.660523512064343
##      0                 0                 0                 0
##      1                 1                 1                 1
##       y_rate_len
## trth2o 0.663789861878453 0.667683658536585 0.673156475409836
##      0                 0                 0                 0
##      1                 1                 1                 1
##       y_rate_len
## trth2o 0.674099837837838 0.675926666666667 0.686548371428572
##      0                 0                 0                 0
##      1                 1                 1                 1
##       y_rate_len
## trth2o 0.696695363128492 0.699331329639889 0.699929744318181
##      0                 0                 0                 0
##      1                 1                 1                 1
##       y_rate_len
## trth2o 0.70255964673913 0.720172562674095 0.721049836512261
##      0                0                 0                 0
##      1                1                 1                 1
##       y_rate_len
## trth2o 0.727355869565217 0.741870731707317 0.743329466292135
##      0                 0                 0                 0
##      1                 1                 1                 1
##       y_rate_len
## trth2o 0.743886684782609 0.756216298342541 0.758462699228792 0.7604175
##      0                 0                 0                 0         0
##      1                 2                 1                 1         1
##       y_rate_len
## trth2o 0.775000849315068 0.782604748010609 0.785213722826087
##      0                 0                 0                 0
##      1                 1                 1                 1
##       y_rate_len
## trth2o 0.797815081967213 0.837080844686648 0.839081379310344
##      0                 0                 0                 0
##      1                 1                 1                 1
##       y_rate_len
## trth2o 0.840240331491713 0.845368773841962 0.858824470588235
##      0                 0                 0                 0
##      1                 2                 1                 1
##       y_rate_len
## trth2o 0.864474631578947 0.867821101694915 0.869048571428572
##      0                 0                 0                 0
##      1                 1                 1                 1
##       y_rate_len
## trth2o 0.889231393442623 0.895096348773842 0.914163114754098
##      0                 0                 0                 0
##      1                 1                 1                 1
##       y_rate_len
## trth2o 0.915957443181818 0.922208457446809 0.927542225274725
##      0                 0                 0                 0
##      1                 1                 1                 1
##       y_rate_len
## trth2o 0.939094836065574 0.941667698630137 0.953604648648648
##      0                 0                 0                 0
##      1                 1                 1                 1
##       y_rate_len
## trth2o 0.968953047091413 0.969421140350878 0.981183870967742
##      0                 0                 0                 0
##      1                 1                 1                 1
##       y_rate_len
## trth2o 0.995163799472296 0.999885994475139 1.00000109589041
##      0                 0                 0                0
##      1                 1                 1                1
##       y_rate_len
## trth2o 1.00274835164835 1.01678682857143 1.03037601626016 1.05761571428571
##      0                0                0                0                0
##      1                1                1                1                1
##       y_rate_len
## trth2o 1.09057075630252 1.10229457765668 1.11613100840336 1.1912545691906
##      0                0                0                0               0
##      1                1                1                1               1
##       y_rate_len
## trth2o 1.21003765667575 1.36529505681818 1.38858847826087 1.40188701117318
##      0                0                0                0                0
##      1                1                1                1                1
##       y_rate_len
## trth2o 1.40568039164491 1.42393969529086 1.47449376731302 1.58731959016393
##      0                0                0                0                0
##      1                1                1                1                1
##       y_rate_len
## trth2o 0.189076783783784 0.190104375000001 0.271123788300836
##      0                 0                 0                 0
##      1                 1                 1                 1
##       y_rate_len
## trth2o 0.405004972826087 0.415158300835654 0.465994011142061
##      0                 0                 0                 0
##      1                 1                 1                 1
##       y_rate_len
## trth2o 0.495741795580111 0.511134628099173 0.512455271739131
##      0                 0                 0                 0
##      1                 1                 1                 1
##       y_rate_len
## trth2o 0.521185028089888 0.547003324250681 0.618501142061281
##      0                 0                 0                 0
##      1                 1                 1                 1
##       y_rate_len
## trth2o 0.630180248618785 0.635446378830084 0.63682347107438
##      0                 0                 0                0
##      1                 1                 1                1
##       y_rate_len
## trth2o 0.648777257617729 0.650000712328767 0.654122580645161
##      0                 0                 0                 0
##      1                 1                 1                 1
##       y_rate_len
## trth2o 0.662299112903225 0.666667397260274 0.668498901098901
##      0                 0                 0                 0
##      1                 1                 1                 1
##       y_rate_len
## trth2o 0.683334082191781 0.68868 0.691667424657534 0.69547826446281
##      0                 0       0                 0                0
##      1                 1       1                 1                1
##       y_rate_len
## trth2o 0.705077142857142 0.706982756756756 0.711699944289694
##      0                 0                 0                 0
##      1                 1                 1                 1
##       y_rate_len
## trth2o 0.714709344262295 0.718636318681319 0.720616033057851
##      0                 0                 0                 0
##      1                 1                 1                 1
##       y_rate_len
## trth2o 0.725000794520548 0.727355869565217 0.728645181058495
##      0                 0                 0                 0
##      1                 1                 1                 1
##       y_rate_len
## trth2o 0.728995289256198 0.731330491803278 0.73303404432133
##      0                 0                 0                0
##      1                 2                 1                1
##       y_rate_len
## trth2o 0.733334136986301 0.733627723577236 0.735348791208791
##      0                 0                 0                 0
##      1                 1                 1                 1
##       y_rate_len
## trth2o 0.739411491712707 0.73964106557377 0.747951639344262
##      0                 0                0                 0
##      1                 1                1                 1
##       y_rate_len
## trth2o 0.758287478991596 0.7604175 0.764618701657458 0.768773736263736
##      0                 0         0                 0                 0
##      1                 1         1                 1                 2
##       y_rate_len
## trth2o 0.772883360655737 0.779480891364903 0.781423508287293
##      0                 0                 0                 0
##      1                 1                 1                 1
##       y_rate_len
## trth2o 0.783085772357724 0.787353269754768 0.793842445054945
##      0                 0                 0                 0
##      1                 1                 1                 2
##       y_rate_len
## trth2o 0.797815081967214 0.801300161290322 0.804898746518106
##      0                 0                 0                 0
##      1                 1                 1                 1
##       y_rate_len
## trth2o 0.807147067039106 0.80886515235457 0.813852243243243
##      0                 0                0                 0
##      1                 1                1                 1
##       y_rate_len
## trth2o 0.817290831024931 0.822746803278688 0.825716509695291
##      0                 0                 0                 0
##      1                 1                 1                 1
##       y_rate_len
## trth2o 0.828010166666666 0.829546363636364 0.835623626373626
##      0                 0                 0                 0
##      1                 1                 1                 2
##       y_rate_len
## trth2o 0.844908333333333 0.850993545706371 0.859419224376732 0.8618065
##      0                 0                 0                 0         0
##      1                 1                 1                 1         1
##       y_rate_len
## trth2o 0.86294570224719 0.872610245901639 0.877404807692308
##      0                0                 0                 0
##      1                1                 1                 1
##       y_rate_len
## trth2o 0.879821900826446 0.886808419618529 0.888201157024793
##      0                 0                 0                 0
##      1                 1                 2                 1
##       y_rate_len
## trth2o 0.894117280219779 0.89411728021978 0.913338925619835
##      0                 0                0                 0
##      1                 1                1                 1
##       y_rate_len
## trth2o 0.914973902439025 0.918398975069253 0.920169075630252
##      0                 0                 0                 0
##      1                 1                 1                 1
##       y_rate_len
## trth2o 0.92394814516129 0.924264364640884 0.926095055865922
##      0                0                 0                 0
##      1                1                 1                 1
##       y_rate_len
## trth2o 0.927542225274726 0.932124677419355 0.933334356164384
##      0                 0                 0                 0
##      1                 1                 1                 1
##       y_rate_len
## trth2o 0.941667698630137 0.946855950413223 0.96096717032967
##      0                 0                 0                0
##      1                 1                 1                1
##       y_rate_len
## trth2o 0.974351114206128 0.975318097826088 0.980372975206612
##      0                 0                 0                 0
##      1                 1                 1                 1
##       y_rate_len
## trth2o 0.980917967479674 0.991848913043478 0.994551498637602
##      0                 0                 0                 0
##      1                 1                 1                 1
##       y_rate_len
## trth2o 0.999768969359331 1.01110458791209 1.05613541666667
##      0                 0                0                0
##      1                 1                1                1
##       y_rate_len
## trth2o 1.05870281767956 1.06416553719008 1.08148266666667 1.09699573770492
##      0                0                0                0                0
##      1                1                1                1                1
##       y_rate_len
## trth2o 1.10071483425414 1.10302318681319 1.11666789041096 1.1280918956044
##      0                0                0                0               0
##      1                1                1                1               1
##       y_rate_len
## trth2o 1.14795809917355 1.16198629213483 1.18841204918033 1.23515328729282
##      0                0                0                0                0
##      1                1                1                1                1
##       y_rate_len
## trth2o 1.33230173553719 1.37639815642458
##      0                0                0
##      1                1                1
##       y_rate_len
## trth2o -0.168981666666667 0.334249450549451 0.353682558139535
##      0                  0                 0                 0
##      1                  1                 1                 1
##       y_rate_len
## trth2o 0.434524285714285 0.439352333333332 0.575451081081079
##      0                 0                 0                 0
##      1                 1                 1                 1
##       y_rate_len
## trth2o 0.593496585365854 0.691288636363636 0.715687058823529
##      0                 0                 0                 0
##      1                 1                 1                 1
##       y_rate_len
## trth2o 0.760417499999999 0.786049550561797 0.81605780487805
##      0                 0                 0                0
##      1                 1                 1                1
##       y_rate_len
## trth2o 0.844908333333333 0.909004827586205 0.958787282608695
##      0                 0                 0                 0
##      1                 1                 1                 1
##       y_rate_len
## trth2o 0.960527368421053 1.01389 1.04885172413793 1.0645845
##      0                 0       0                0         0
##      1                 1       2                1         1
##       y_rate_len
## trth2o 1.08631071428571 1.11734816326531 1.13253670212766 1.14062625
##      0                0                0                0          0
##      1                1                1                1          1
##       y_rate_len
## trth2o 1.15873142857143 1.24868557894737 1.25245235294118 1.26258
##      0                0                0                0       0
##      1                1                1                1       1
##       y_rate_len
## trth2o 1.27460457142857 1.34399372093023 1.35185333333333 1.36150942857143
##      0                0                0                0                0
##      1                1                1                1                1
##       y_rate_len
## trth2o 1.36704269662921 1.38564966666667 1.45273791044776 1.46586506024096
##      0                0                0                0                0
##      1                1                1                1                1
##       y_rate_len
## trth2o 1.48979755102041 1.50805487394958 1.56787113402062 1.57209910112359
##      0                0                0                0                0
##      1                1                1                1                1
##       y_rate_len
## trth2o 1.578225 1.61790957446808 1.66491410526316 1.70880337078652
##      0        0                0                0                0
##      1        1                1                1                1
##       y_rate_len
## trth2o 1.73342483870968 1.81051785714286 1.83837197802198 1.84343636363636
##      0                0                0                0                0
##      1                1                1                1                1
##       y_rate_len
## trth2o 1.85701957894737 1.86647931818182 1.87179692307692 1.88144536082474
##      0                0                0                0                0
##      1                1                1                1                1
##       y_rate_len
## trth2o 1.88293857142857 1.90104375 1.90988581395349 1.91190685714286
##      0                0          0                0                0
##      1                1          1                1                1
##       y_rate_len
## trth2o 1.92966161290323 1.93864681318681 1.9681394117647 1.97145277777778
##      0                0                0               0                0
##      1                1                1               1                1
##       y_rate_len
## trth2o 1.97207175824176 2.00473704545454 2.0054967032967 2.02778
##      0                0                0               0       0
##      1                1                1               1       2
##       y_rate_len
## trth2o 2.03892164835165 2.04621436363636 2.05760029411765 2.09770344827586
##      0                0                0                0                0
##      1                1                1                1                1
##       y_rate_len
## trth2o 2.10577153846154 2.1900024 2.27289626373626 2.33728326315789
##      0                0         0                0                0
##      1                1         1                1                1
##       y_rate_len
## trth2o 2.33974615384615 2.34737576086956 2.35038136363636 2.35398808695652
##      0                0                0                0                0
##      1                1                1                1                1
##       y_rate_len
## trth2o 2.35484129032258 2.36574333333333 2.37739724137931 2.40131842105263
##      0                0                0                0                0
##      1                1                1                1                1
##       y_rate_len
## trth2o 2.42152368932039 2.42686436170213 2.46535357894737 2.51147064220183
##      0                0                0                0                0
##      1                1                1                1                1
##       y_rate_len
## trth2o 2.68861901785714 2.70370666666667 2.82216804123711 2.87636184782609
##      0                0                0                0                0
##      1                1                1                1                1
##       y_rate_len
## trth2o 2.89682857142857 2.90496573033708 2.92901555555555 3.20175789473684
##      0                0                0                0                0
##      1                1                2                1                1
##       y_rate_len
## trth2o 3.25893214285714 3.38308193877551 3.39535255813954 3.47619428571429
##      0                0                0                0                0
##      1                1                1                1                1
##       y_rate_len
## trth2o 3.49228777777778 3.66466265060241 4.28953461538462
##      0                0                0                0
##      1                1                1                1
##       y_rate_len
## trth2o 0.420656489361701 0.568224065934067 0.817653225806452
##      0                 0                 0                 0
##      1                 1                 1                 1
##       y_rate_len
## trth2o 1.02456252631579 1.04659612903226 1.05945808988764 1.0610476744186
##      0                0                0                0               0
##      1                1                1                1               1
##       y_rate_len
## trth2o 1.09103380434783 1.16489489361702 1.18088364705882 1.20975511363636
##      0                0                0                0                0
##      1                1                1                1                1
##       y_rate_len
## trth2o 1.23033842696629 1.25046433333333 1.2673625 1.27553903225806
##      0                0                0         0                0
##      1                1                1         1                2
##       y_rate_len
## trth2o 1.27888397727273 1.28426066666667 1.29869056179775 1.30357285714286
##      0                0                0                0                0
##      1                1                1                2                1
##       y_rate_len
## trth2o 1.31272073684211 1.318057 1.3224652173913 1.36704269662921
##      0                0        0               0                0
##      1                1        1               1                1
##       y_rate_len
## trth2o 1.37042274725275 1.40384769230769 1.419446 1.42165010869565
##      0                0                0        0                0
##      1                1                1        1                1
##       y_rate_len
## trth2o 1.45876010204082 1.48546674418605 1.520835 1.55319319148936
##      0                0                0        0                0
##      1                1                1        2                1
##       y_rate_len
## trth2o 1.55389663043478 1.56989419354839 1.5732775862069 1.58555138297873
##      0                0                0               0                0
##      1                1                1               1                1
##       y_rate_len
## trth2o 1.60260032258064 1.62001989130435 1.6353064516129 1.65602033333333
##      0                0                0               0                0
##      1                1                3               1                1
##       y_rate_len
## trth2o 1.66491410526316 1.67124725274725 1.70071870967742 1.73809714285714
##      0                0                0                0                0
##      1                1                1                1                3
##       y_rate_len
## trth2o 1.74297943820225 1.75226641304348 1.75740933333333 1.76278602272727
##      0                0                0                0                0
##      1                1                1                1                1
##       y_rate_len
## trth2o 1.77970053191489 1.78304793103448 1.80494703296703 1.8059915625
##      0                0                0                0            0
##      1                1                1                1            1
##       y_rate_len
## trth2o 1.83837197802198 1.85879833333333 1.86647931818182 1.90104375
##      0                0                0                0          0
##      1                1                1                1          1
##       y_rate_len
## trth2o 1.91757456521739 1.91914892857143 1.93560818181818 1.9414914893617
##      0                0                0                0               0
##      1                1                1                1               3
##       y_rate_len
## trth2o 1.95063619565217 1.964411875 1.97207175824176 1.98639673469388
##      0                0           0                0                0
##      1                1           1                1                1
##       y_rate_len
## trth2o 2.02778 2.03892164835165 2.05056404494382 2.06048612903226
##      0       0                0                0                0
##      1       1                1                1                2
##       y_rate_len
## trth2o 2.07092425531915 2.08288271739131 2.08474011235955 2.09537266666667
##      0                0                0                0                0
##      1                1                1                1                2
##       y_rate_len
## trth2o 2.09770344827586 2.10577153846154 2.13919648351648 2.15746360465116
##      0                0                0                0                0
##      1                1                1                1                1
##       y_rate_len
## trth2o 2.17262142857143 2.17755920454546 2.1862003125 2.21512923913044
##      0                0                0            0                0
##      1                1                1            1                1
##       y_rate_len
## trth2o 2.22401677419355 2.26435433333333 2.30429545454545 2.32978978723404
##      0                0                0                0                0
##      1                1                1                1                1
##       y_rate_len
## trth2o 2.34737576086957 2.36176729411765 2.38043739130435 2.42650078651685
##      0                0                0                0                0
##      1                1                1                1                1
##       y_rate_len
## trth2o 2.44656065217391 2.45407465909091 2.50092866666667 2.56140631578947
##      0                0                0                0                0
##      1                2                1                1                1
##       y_rate_len
## trth2o 2.5664090625 2.6210135106383 2.62689681818182 2.66573325842697
##      0            0               0                0                0
##      1            1               1                1                1
##       y_rate_len
## trth2o 2.6739956043956 2.70742054945055 2.71460870967742 2.737503
##      0               0                0                0        0
##      1               3                1                1        2
##       y_rate_len
## trth2o 2.82946046511628 3.14085489130435 3.20697815217391 3.6010575862069
##      0                0                0                0               0
##      1                1                1                1               1
##       y_rate_len
## trth2o 4.54502413793103
##      0                0
##      1                1
##       y_rate_len
## trth2o 0.157327758620691 0.189030338983051 0.362103571428571
##      0                 0                 0                 0
##      1                 1                 1                 1
##       y_rate_len
## trth2o 0.422905989304812 0.455437219251336 0.470361340206186
##      0                 0                 0                 0
##      1                 1                 1                 1
##       y_rate_len
## trth2o 0.475791955307262 0.490591935483871 0.539941420118343
##      0                 0                 0                 0
##      1                 1                 2                 1
##       y_rate_len
## trth2o 0.567091016949152 0.599343842364532 0.611390954773869
##      0                 0                 0                 0
##      1                 1                 1                 1
##       y_rate_len
## trth2o 0.618361483516484 0.619599444444444 0.621777845303868
##      0                 0                 0                 0
##      1                 1                 1                 1
##       y_rate_len
## trth2o 0.628725083798883 0.643739682539683 0.650624598930481
##      0                 0                 0                 0
##      1                 1                 1                 1
##       y_rate_len
## trth2o 0.65178642857143 0.684773874345549 0.688377947368421
##      0                0                 0                 0
##      1                1                 1                 1
##       y_rate_len
## trth2o 0.705801878453039 0.713861326530614 0.716623821989529
##      0                 0                 0                 0
##      1                 1                 1                 1
##       y_rate_len
## trth2o 0.727355869565218 0.747381771428571 0.747951639344262
##      0                 0                 0                 0
##      1                 1                 1                 1
##       y_rate_len
## trth2o 0.752061263736264 0.756022023121387 0.764665642458101
##      0                 0                 0                 0
##      1                 1                 1                 1
##       y_rate_len
## trth2o 0.775936224489796 0.78982591160221 0.797815081967213
##      0                 0                0                 0
##      1                 1                1                 1
##       y_rate_len
## trth2o 0.813469883720929 0.817653225806452 0.820768095238094
##      0                 0                 0                 0
##      1                 1                 1                 1
##       y_rate_len
## trth2o 0.834006290322581 0.849628491620112 0.883065483870969
##      0                 0                 0                 0
##      1                 1                 1                 1
##       y_rate_len
## trth2o 0.894608823529412 0.902473516483517 0.933422539682539
##      0                 0                 0                 0
##      1                 1                 1                 1
##       y_rate_len
## trth2o 0.943405668449197 0.964026557377049 0.981183870967742
##      0                 0                 0                 0
##      1                 1                 2                 1
##       y_rate_len
## trth2o 0.999195942028985 1.00236852272727 1.00256162011173
##      0                 0                0                0
##      1                 1                1                1
##       y_rate_len
## trth2o 1.00837972826087 1.01389 1.03357718446602 1.03512329842932
##      0                0       0                0                0
##      1                1       1                1                1
##       y_rate_len
## trth2o 1.04057131578947 1.0610476744186 1.07167647668394 1.09921737623762
##      0                0               0                0                0
##      1                1               1                1                1
##       y_rate_len
## trth2o 1.11973565934066 1.12061526315789 1.12334403409091 1.14685918032787
##      0                0                0                0                0
##      1                1                1                1                1
##       y_rate_len
## trth2o 1.15715706521739 1.16299147058824 1.18658554945055 1.19091841269841
##      0                0                0                0                0
##      1                1                1                1                1
##       y_rate_len
## trth2o 1.19616235955056 1.20365550802139 1.22042314814815 1.22622298429319
##      0                0                0                0                0
##      1                1                1                1                1
##       y_rate_len
## trth2o 1.24149795918367 1.25343543956044 1.27014791208791 1.27982836065574
##      0                0                0                0                0
##      1                1                1                1                1
##       y_rate_len
## trth2o 1.29143530726257 1.30124919786096 1.31025784615385 1.31627824561403
##      0                0                0                0                0
##      1                1                1                1                1
##       y_rate_len
## trth2o 1.32969180327869 1.33899603260869 1.34039694915254 1.35185333333333
##      0                0                0                0                0
##      1                1                1                1                1
##       y_rate_len
## trth2o 1.35940558659218 1.36293409836066 1.3672153030303 1.3695477486911
##      0                0                0               0               0
##      1                1                1               1               1
##       y_rate_len
## trth2o 1.37318111650485 1.37476610169492 1.39409875 1.3991682
##      0                0                0          0         0
##      1                1                1          1         1
##       y_rate_len
## trth2o 1.40758132978723 1.42165010869565 1.43030910714286 1.46328989189189
##      0                0                0                0                0
##      1                1                1                1                1
##       y_rate_len
## trth2o 1.50412252747253 1.52847738693467 1.53736581521739 1.56886136842105
##      0                0                0                0                0
##      1                1                1                1                1
##       y_rate_len
## trth2o 1.57042744565217 1.65453478021978 1.68436564516129 1.74051116666667
##      0                0                0                0                0
##      1                1                1                1                1
##       y_rate_len
## trth2o 1.80185885869565 2.00512324022346 2.12589838709677 2.30854953846154
##      0                0                0                0                0
##      1                1                1                1                1
##       y_rate_len
## trth2o 2.76978888268156
##      0                0
##      1                1
##       y_rate_len
## trth2o 0.536765294117647 0.565119016393444 0.587595340909092
##      0                 0                 0                 0
##      1                 1                 1                 1
##       y_rate_len
## trth2o 0.598361311475409 0.614982459016394 0.764483903743316
##      0                 0                 0                 0
##      1                 1                 1                 1
##       y_rate_len
## trth2o 0.772487619047619 0.793479130434783 0.829546363636363
##      0                 0                 0                 0
##      1                 1                 1                 1
##       y_rate_len
## trth2o 0.859602391304348 0.861806500000001 0.866712419354838
##      0                 0                 0                 0
##      1                 1                 1                 1
##       y_rate_len
## trth2o 0.880483421052632 0.880920819672132 0.889850265957447
##      0                 0                 0                 0
##      1                 1                 1                 1
##       y_rate_len
## trth2o 0.904280270270269 0.914163114754098 0.919185989010989
##      0                 0                 0                 0
##      1                 1                 1                 1
##       y_rate_len
## trth2o 0.922208457446809 0.924264364640884 0.929399166666667
##      0                 0                 0                 0
##      1                 1                 1                 1
##       y_rate_len
## trth2o 0.947405409836066 0.975936898395722 0.997268852459016
##      0                 0                 0                 0
##      1                 1                 1                 1
##       y_rate_len
## trth2o 1.00274835164835 1.01937048648649 1.02473374331551 1.0361732967033
##      0                0                0                0               0
##      1                1                1                1               1
##       y_rate_len
## trth2o 1.04144135869565 1.06375344262295 1.07450298913044 1.07550762430939
##      0                0                0                0                0
##      1                1                1                1                1
##       y_rate_len
## trth2o 1.08631071428571 1.09231243093923 1.1001785106383 1.10302318681319
##      0                0                0               0                0
##      1                1                1               1                1
##       y_rate_len
## trth2o 1.10911723756906 1.1136168852459 1.115279 1.12654444444444
##      0                0               0        0                0
##      1                1               1        1                1
##       y_rate_len
## trth2o 1.13023803278688 1.13217716666667 1.1341820338983 1.15090216216216
##      0                0                0               0                0
##      1                1                1               1                1
##       y_rate_len
## trth2o 1.15263284210526 1.15549474860335 1.16198629213483 1.16348032786885
##      0                0                0                0                0
##      1                1                1                1                2
##       y_rate_len
## trth2o 1.1659735 1.17368788043478 1.20329802197802 1.20365550802139
##      0         0                0                0                0
##      1         1                2                1                1
##       y_rate_len
## trth2o 1.22328032608696 1.2267508839779 1.23310945945946 1.23356616666667
##      0                0               0                0                0
##      1                1               1                2                1
##       y_rate_len
## trth2o 1.23981114130435 1.24658606557377 1.24955091891892 1.25343543956044
##      0                0                0                0                0
##      1                1                1                1                1
##       y_rate_len
## trth2o 1.26036049723757 1.27014791208791 1.27287277173913 1.28243383783784
##      0                0                0                0                0
##      1                1                1                1                1
##       y_rate_len
## trth2o 1.29189209677419 1.29397011049724 1.29644950819672 1.30124919786096
##      0                0                0                0                0
##      1                1                1                1                2
##       y_rate_len
## trth2o 1.30593440217391 1.31077491712707 1.31531675675676 1.32542044692737
##      0                0                0                0                0
##      1                1                2                1                1
##       y_rate_len
## trth2o 1.32969180327869 1.3369978021978 1.34095129032258 1.37042274725275
##      0                0               0                0                0
##      1                1               1                1                1
##       y_rate_len
## trth2o 1.37205766304348 1.37309674285714 1.3810825945946 1.38713521978022
##      0                0                0               0                0
##      1                1                1               1                1
##       y_rate_len
## trth2o 1.38858847826087 1.39479895027624 1.40384769230769 1.42056016483516
##      0                0                0                0                0
##      1                1                3                1                1
##       y_rate_len
## trth2o 1.42165010869565 1.42376042553191 1.42840856353591 1.43727263736264
##      0                0                0                0                0
##      1                2                1                2                1
##       y_rate_len
## trth2o 1.44603983606557 1.46201817679558 1.46390534759358 1.50412252747253
##      0                0                0                0                0
##      1                1                1                1                2
##       y_rate_len
## trth2o 1.53754747252747 1.5463238547486 1.55425994505494 1.55463133333333
##      0                0               0                0                0
##      1                1               1                1                1
##       y_rate_len
## trth2o 1.56937228723404 1.59730156424581 1.60627516853932 1.66211475409836
##      0                0                0                0                0
##      1                1                1                1                1
##       y_rate_len
## trth2o 1.67702886486487 1.69162395721925 1.74522049180328 1.87818967213115
##      0                0                0                0                0
##      1                1                1                1                1
##       y_rate_len
## trth2o 1.91143196721311 1.94731253968254 2.14412803278689 2.72413302197802
##      0                0                0                0                0
##      1                1                1                1                1
##       y_rate_len
## trth2o 2.81023858695652
##      0                0
##      1                1
```




# Results Detail

## Results Plots
![](/tmp/a933d446-1121-4995-a57b-57432f9bbb61/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/a933d446-1121-4995-a57b-57432f9bbb61/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                 country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED       BRAZIL                         0                    NA                4.1014327   3.9584909   4.2443745
0-3 months     ki0047075b-MAL-ED       BRAZIL                         1                    NA                5.2302740   5.1123810   5.3481669
0-3 months     ki0047075b-MAL-ED       NEPAL                          0                    NA                2.8441621   2.6653378   3.0229864
0-3 months     ki0047075b-MAL-ED       NEPAL                          1                    NA                3.5958839   3.4650995   3.7266682
0-3 months     ki0047075b-MAL-ED       PERU                           0                    NA                4.0585993   3.8513682   4.2658304
0-3 months     ki0047075b-MAL-ED       PERU                           1                    NA                3.3600867   3.1735009   3.5466725
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                3.1953217   3.0020678   3.3885756
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                3.6745316   3.3407110   4.0083522
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     0                    NA                3.4828603   3.4430972   3.5226233
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     1                    NA                3.4742712   3.2558918   3.6926505
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                3.2987095   3.2578890   3.3395300
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                3.4080079   3.3617203   3.4542955
3-6 months     ki0047075b-MAL-ED       BRAZIL                         0                    NA                2.2076548   2.1000183   2.3152912
3-6 months     ki0047075b-MAL-ED       BRAZIL                         1                    NA                0.7236561   0.4959257   0.9513864
3-6 months     ki0047075b-MAL-ED       NEPAL                          0                    NA                2.1197806   1.9785064   2.2610549
3-6 months     ki0047075b-MAL-ED       NEPAL                          1                    NA                1.9650331   1.8628726   2.0671936
3-6 months     ki0047075b-MAL-ED       PERU                           0                    NA                1.9915745   1.8202223   2.1629266
3-6 months     ki0047075b-MAL-ED       PERU                           1                    NA                1.9941935   1.8277033   2.1606838
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                1.9703687   1.8160351   2.1247024
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                2.5016704   2.3418286   2.6615123
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     0                    NA                1.9685935   1.9332005   2.0039864
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     1                    NA                0.6386626   0.5797224   0.6976027
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                2.1408743   2.0991246   2.1826240
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                2.0200097   1.9801489   2.0598706
6-12 months    ki0047075b-MAL-ED       BRAZIL                         0                    NA                1.4314021   1.3606856   1.5021186
6-12 months    ki0047075b-MAL-ED       BRAZIL                         1                    NA                2.1754919   2.0922711   2.2587127
6-12 months    ki0047075b-MAL-ED       NEPAL                          0                    NA                1.1327024   1.0558174   1.2095874
6-12 months    ki0047075b-MAL-ED       NEPAL                          1                    NA                1.2028097   1.1564868   1.2491327
6-12 months    ki0047075b-MAL-ED       PERU                           0                    NA                1.0400373   0.9517888   1.1282858
6-12 months    ki0047075b-MAL-ED       PERU                           1                    NA                1.2045029   1.1189467   1.2900590
6-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                1.0339646   0.9628642   1.1050649
6-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                1.0923814   1.0036693   1.1810935
6-12 months    ki1017093b-PROVIDE      BANGLADESH                     0                    NA                1.1743103   1.1568747   1.1917458
6-12 months    ki1017093b-PROVIDE      BANGLADESH                     1                    NA                1.8052016   1.7910014   1.8194019
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                1.1515929   1.1318237   1.1713622
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                1.2223791   1.2012970   1.2434612
12-24 months   ki0047075b-MAL-ED       BRAZIL                         0                    NA                1.0321686   0.9873568   1.0769805
12-24 months   ki0047075b-MAL-ED       BRAZIL                         1                    NA                1.4773101   1.4253496   1.5292706
12-24 months   ki0047075b-MAL-ED       NEPAL                          0                    NA                0.9076558   0.8607696   0.9545421
12-24 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                0.8795024   0.8518125   0.9071924
12-24 months   ki0047075b-MAL-ED       PERU                           0                    NA                1.1090768   1.0422691   1.1758845
12-24 months   ki0047075b-MAL-ED       PERU                           1                    NA                0.8916221   0.8407746   0.9424696
12-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7502791   0.7048604   0.7956979
12-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7350426   0.6832068   0.7868783
12-24 months   ki1017093b-PROVIDE      BANGLADESH                     0                    NA                0.8603405   0.8481442   0.8725369
12-24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                1.2795968   1.2730007   1.2861930
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                0.8660618   0.8522089   0.8799146
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                0.8605212   0.8461549   0.8748876


### Parameter: E(Y)


agecat         studyid                 country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED       BRAZIL                         NA                   NA                4.0715516   3.9418270   4.2012761
0-3 months     ki0047075b-MAL-ED       NEPAL                          NA                   NA                3.6902242   3.5713067   3.8091418
0-3 months     ki0047075b-MAL-ED       PERU                           NA                   NA                3.3427634   3.1861528   3.4993739
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                3.2714929   3.0881028   3.4548830
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                3.4826706   3.4434873   3.5218539
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                3.3028656   3.2646714   3.3410598
3-6 months     ki0047075b-MAL-ED       BRAZIL                         NA                   NA                2.2227563   2.1133297   2.3321829
3-6 months     ki0047075b-MAL-ED       NEPAL                          NA                   NA                1.9950101   1.8904604   2.0995599
3-6 months     ki0047075b-MAL-ED       PERU                           NA                   NA                1.9903923   1.8466790   2.1341055
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.8159811   1.6776334   1.9543288
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                1.9654454   1.9303798   2.0005110
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                2.0057973   1.9693775   2.0422170
6-12 months    ki0047075b-MAL-ED       BRAZIL                         NA                   NA                1.4128372   1.3473294   1.4783450
6-12 months    ki0047075b-MAL-ED       NEPAL                          NA                   NA                1.1905799   1.1461403   1.2350196
6-12 months    ki0047075b-MAL-ED       PERU                           NA                   NA                1.1709466   1.0976676   1.2442255
6-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.0440833   0.9736537   1.1145130
6-12 months    ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                1.1731762   1.1558671   1.1904853
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                1.2281313   1.2106849   1.2455776
12-24 months   ki0047075b-MAL-ED       BRAZIL                         NA                   NA                0.9771443   0.9389322   1.0153564
12-24 months   ki0047075b-MAL-ED       NEPAL                          NA                   NA                0.8842512   0.8598045   0.9086979
12-24 months   ki0047075b-MAL-ED       PERU                           NA                   NA                0.8452899   0.8040289   0.8865508
12-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7446935   0.6968915   0.7924955
12-24 months   ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                0.8575519   0.8455586   0.8695452
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                0.8755729   0.8637860   0.8873598


### Parameter: ATE


agecat         studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       BRAZIL                         1                    0                  1.1288412    0.9289511    1.3287314
0-3 months     ki0047075b-MAL-ED       NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       NEPAL                          1                    0                  0.7517218    0.5107205    0.9927230
0-3 months     ki0047075b-MAL-ED       PERU                           0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       PERU                           1                    0                 -0.6985126   -0.9871110   -0.4099141
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    0                  0.4792099    0.0998994    0.8585204
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     1                    0                 -0.0085891   -0.2305564    0.2133782
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    0                  0.1092984    0.0491834    0.1694135
3-6 months     ki0047075b-MAL-ED       BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       BRAZIL                         1                    0                 -1.4839987   -1.7391087   -1.2288888
3-6 months     ki0047075b-MAL-ED       NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       NEPAL                          1                    0                 -0.1547475   -0.2840286   -0.0254665
3-6 months     ki0047075b-MAL-ED       PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       PERU                           1                    0                  0.0026190   -0.2276280    0.2328661
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    0                  0.5313017    0.2713952    0.7912081
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     1                    0                 -1.3299309   -1.3988635   -1.2609983
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    0                 -0.1208645   -0.1734910   -0.0682381
6-12 months    ki0047075b-MAL-ED       BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       BRAZIL                         1                    0                  0.7440898    0.6350212    0.8531584
6-12 months    ki0047075b-MAL-ED       NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       NEPAL                          1                    0                  0.0701074   -0.0095109    0.1497256
6-12 months    ki0047075b-MAL-ED       PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       PERU                           1                    0                  0.1644655    0.0423673    0.2865638
6-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0584168   -0.0261679    0.1430016
6-12 months    ki1017093b-PROVIDE      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE      BANGLADESH                     1                    0                  0.6308914    0.6081424    0.6536403
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    0                  0.0707862    0.0416994    0.0998730
12-24 months   ki0047075b-MAL-ED       BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       BRAZIL                         1                    0                  0.4451415    0.3648573    0.5254256
12-24 months   ki0047075b-MAL-ED       NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       NEPAL                          1                    0                 -0.0281534   -0.0826058    0.0262989
12-24 months   ki0047075b-MAL-ED       PERU                           0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       PERU                           1                    0                 -0.2174547   -0.3107075   -0.1242019
12-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0152366   -0.0401064    0.0096333
12-24 months   ki1017093b-PROVIDE      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    0                  0.4192563    0.4047772    0.4337354
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    0                 -0.0055405   -0.0255733    0.0144923
