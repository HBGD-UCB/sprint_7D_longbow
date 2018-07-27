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

**Outcome Variable:** y_rate_haz

## Predictor Variables

**Intervention Variable:** trth2o

**Adjustment Set:**

unadjusted

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
##       y_rate_haz
## trth2o -0.876290642857143 -0.544120966666667 -0.423661178571429
##      0                  0                  0                  0
##      1                  1                  1                  1
##       y_rate_haz
## trth2o -0.281636111111111 -0.275872395348837 -0.213266517241379
##      0                  0                  0                  0
##      1                  1                  1                  1
##       y_rate_haz
## trth2o -0.189657070588235 -0.155983076923077 -0.155539943181818
##      0                  0                  0                  0
##      1                  1                  1                  1
##       y_rate_haz
## trth2o -0.144841428571429 -0.00790044155844156 -0.00362103571428571
##      0                  0                    0                    0
##      1                  1                    1                    1
##       y_rate_haz
## trth2o 0.00362103571428572 0.0155187244897959 0.0187757407407407
##      0                   0                  0                  0
##      1                   1                  1                  1
##       y_rate_haz
## trth2o 0.0395022077922078 0.101389 0.123115214285714 0.160823931034483
##      0                  0        0                 0                 0
##      1                  1        1                 1                 1
##       y_rate_haz
## trth2o 0.180494703296703 0.249851464285714 0.35014573255814
##      0                 0                 0                0
##      1                 1                 1                1
##       y_rate_haz
## trth2o 0.398665485436893 0.5056776375 0.744314541176471
##      0                 0            0                 0
##      1                 1            1                 1
##       y_rate_haz
## trth2o -1.53420497802198 -1.50393683333333 -1.32481626666667
##      0                 0                 0                 0
##      1                 1                 1                 1
##       y_rate_haz
## trth2o -1.31467736666667 -1.2876403 -1.13217716666667 -1.00713073333333
##      0                 0          0                 0                 0
##      1                 1          1                 1                 1
##       y_rate_haz
## trth2o -1.00037146666667 -0.878704666666667 -0.874480125
##      0                 0                  0            0
##      1                 1                  1            1
##       y_rate_haz
## trth2o -0.863554586206897 -0.862908554347826 -0.855047233333333
##      0                  0                  0                  0
##      1                  1                  1                  1
##       y_rate_haz
## trth2o -0.838966120879121 -0.838149066666667 -0.801894818181818
##      0                  0                  0                  0
##      1                  1                  1                  1
##       y_rate_haz
## trth2o -0.79971997752809 -0.78025447826087 -0.775796730337079
##      0                 0                 0                  0
##      1                 1                 1                  1
##       y_rate_haz
## trth2o -0.765323419354839 -0.7604175 -0.748455876404494 -0.716482266666667
##      0                  0          0                  0                  0
##      1                  1          1                  1                  1
##       y_rate_haz
## trth2o -0.710862202247191 -0.68437575 -0.676286202127659
##      0                  0           0                  0
##      1                  1           1                  1
##       y_rate_haz
## trth2o -0.642130333333333 -0.629554953488372 -0.615169213483146
##      0                  0                  0                  0
##      1                  1                  1                  1
##       y_rate_haz
## trth2o -0.614946326086957 -0.604954366666667 -0.601498786516854
##      0                  0                  0                  0
##      1                  1                  1                  1
##       y_rate_haz
## trth2o -0.588710322580645 -0.574949817073171 -0.574537666666667
##      0                  0                  0                  0
##      1                  1                  1                  1
##       y_rate_haz
## trth2o -0.567322719101124 -0.493426466666667 -0.478975620689655
##      0                  0                  0                  0
##      1                  1                  1                  1
##       y_rate_haz
## trth2o -0.459630133333333 -0.4258338 -0.422454166666667 -0.418638451612903
##      0                  0          0                  0                  0
##      1                  1          2                  1                  1
##       y_rate_haz
## trth2o -0.413026768421053 -0.393024775280899 -0.389202935483871
##      0                  0                  0                  0
##      1                  1                  1                  1
##       y_rate_haz
## trth2o -0.382661709677419 -0.337963333333333 -0.321065166666667
##      0                  0                  0                  0
##      1                  1                  1                  1
##       y_rate_haz
## trth2o -0.314655517241379 -0.304167 -0.293556523255814 -0.28433002173913
##      0                  0         0                  0                 0
##      1                  1         1                  1                 1
##       y_rate_haz
## trth2o -0.261186880434783 -0.252902898876405 -0.231581693181818
##      0                  0                  0                  0
##      1                  1                  1                  1
##       y_rate_haz
## trth2o -0.230526568421053 -0.22556204494382 -0.223755034482759
##      0                  0                 0                  0
##      1                  1                 1                  1
##       y_rate_haz
## trth2o -0.215309224719101 -0.208474011235955 -0.206157633333333
##      0                  0                  0                  0
##      1                  1                  1                  1
##       y_rate_haz
## trth2o -0.187179692307692 -0.183191488636364 -0.1723613 -0.171312448275862
##      0                  0                  0          0                  0
##      1                  1                  1          1                  1
##       y_rate_haz
## trth2o -0.165308152173913 -0.155463133333333 -0.153792303370786 -0.1419446
##      0                  0                  0                  0          0
##      1                  1                  1                  1          1
##       y_rate_haz
## trth2o -0.127014791208791 -0.126451449438202 -0.0709723
##      0                  0                  0          0
##      1                  1                  1          1
##       y_rate_haz
## trth2o -0.0580993146067416 -0.0570313125 -0.0439352333333334
##      0                   0             0                   0
##      1                   1             1                   1
##       y_rate_haz
## trth2o -0.0270370666666667 -0.0233974615384616 0 0.00661232608695653
##      0                   0                   0 0                   0
##      1                   1                   1 1                   1
##       y_rate_haz
## trth2o 0.02851565625 0.0330616304347826 0.034961724137931
##      0             0                  0                 0
##      1             1                  1                 1
##       y_rate_haz
## trth2o 0.0580993146067416 0.0829546363636363 0.0854401685393258
##      0                  0                  0                  0
##      1                  1                  1                  1
##       y_rate_haz
## trth2o 0.0922753820224719 0.105658010526316 0.109641593023256
##      0                  0                 0                 0
##      1                  1                 1                 1
##       y_rate_haz
## trth2o 0.116022463917526 0.137042274725275 0.137675589473684
##      0                 0                 0                 0
##      1                 1                 1                 1
##       y_rate_haz
## trth2o 0.138257727272727 0.138858847826087 0.176841279069767
##      0                 0                 0                 0
##      1                 1                 1                 1
##       y_rate_haz
## trth2o 0.187968370786517 0.190988581395349 0.195307231578947
##      0                 0                 0                 0
##      1                 1                 1                 1
##       y_rate_haz
## trth2o 0.20054967032967 0.266991033333333 0.273059011363636
##      0                0                 0                 0
##      1                1                 1                 1
##       y_rate_haz
## trth2o 0.290341227272727 0.313978838709677 0.405556 0.459630133333333
##      0                 0                 0        0                 0
##      1                 1                 1        1                 1
##       y_rate_haz
## trth2o 0.461156419354839 0.462862826086957 0.510324633333333
##      0                 0                 0                 0
##      1                 1                 1                 1
##       y_rate_haz
## trth2o 0.536564258426966 0.542661579545454 0.574537666666667
##      0                 0                 0                 0
##      1                 1                 1                 1
##       y_rate_haz
## trth2o 0.676686134831461 0.748455876404494 0.892446032967033
##      0                 0                 0                 0
##      1                 1                 1                 1
##       y_rate_haz
## trth2o 1.14148065168539 1.25384396666667 1.44561090322581 1.98562951685393
##      0                0                0                0                0
##      1                1                1                1                1
##       y_rate_haz
## trth2o -0.314970745901639 -0.239565159292035 -0.2129169 -0.201675945652174
##      0                  0                  0          0                  0
##      1                  1                  1          1                  1
##       y_rate_haz
## trth2o -0.199166884931507 -0.191574795580111 -0.18849785915493
##      0                  0                  0                 0
##      1                  1                  1                 1
##       y_rate_haz
## trth2o -0.185107345714286 -0.183519754189944 -0.183001574175824
##      0                  0                  0                  0
##      1                  1                  1                  1
##       y_rate_haz
## trth2o -0.18296935218509 -0.18200156557377 -0.180438050847458
##      0                 0                 0                  0
##      1                 1                 1                  1
##       y_rate_haz
## trth2o -0.176666860273973 -0.172766856 -0.165395848806366
##      0                  0            0                  0
##      1                  1            1                  1
##       y_rate_haz
## trth2o -0.164348298387097 -0.154510364361702 -0.136997469168901
##      0                  0                  0                  0
##      1                  1                  1                  1
##       y_rate_haz
## trth2o -0.133536731707317 -0.132757972375691 -0.124469422764228
##      0                  0                  0                  0
##      1                  1                  1                  1
##       y_rate_haz
## trth2o -0.118777614775726 -0.115202215258856 -0.109602075418994
##      0                  0                  0                  0
##      1                  1                  1                  1
##       y_rate_haz
## trth2o -0.108571871934605 -0.102748101876676 -0.102547731428571 -0.101389
##      0                  0                  0                  0         0
##      1                  1                  1                  1         1
##       y_rate_haz
## trth2o -0.096627638121547 -0.0958787282608696 -0.0938572457142857
##      0                  0                   0                   0
##      1                  1                   1                   1
##       y_rate_haz
## trth2o -0.0890244878048781 -0.0869048571428571 -0.083645925
##      0                   0                   0            0
##      1                   1                   1            1
##       y_rate_haz
## trth2o -0.0831837928176796 -0.0820504986376022 -0.078358811634349
##      0                   0                   0                  0
##      1                   1                   1                  1
##       y_rate_haz
## trth2o -0.0726621166666667 -0.0691667424657534 -0.0679522021276596
##      0                   0                   0                   0
##      1                   1                   1                   1
##       y_rate_haz
## trth2o -0.0660142664835165 -0.062817097826087 -0.0626468617886179
##      0                   0                  0                   0
##      1                   1                  1                   1
##       y_rate_haz
## trth2o -0.0595109347826087 -0.059189254054054 -0.0579365714285714
##      0                   0                  0                   0
##      1                   1                  1                   1
##       y_rate_haz
## trth2o -0.0520720679347826 -0.0516357771883289 -0.0500221591511936
##      0                   0                   0                   0
##      1                   1                   1                   1
##       y_rate_haz
## trth2o -0.0475000520547945 -0.0468581594594595 -0.0446798983050847
##      0                   0                   0                   0
##      1                   1                   1                   1
##       y_rate_haz
## trth2o -0.0423414289772727 -0.0410112808988764 -0.0398213064066852
##      0                   0                   0                   0
##      1                   1                   1                   1
##       y_rate_haz
## trth2o -0.037917837398374 -0.0365665245901639 -0.0344498535911602
##      0                  0                   0                   0
##      1                  1                   1                   1
##       y_rate_haz
## trth2o -0.0254888547486033 -0.0250687087912088 -0.0248637874659401
##      0                   0                   0                   0
##      1                   1                   1                   1
##       y_rate_haz
## trth2o -0.022377408719346 -0.0168048066298343 -0.0140894795640327
##      0                  0                   0                   0
##      1                  1                   1                   1
##       y_rate_haz
## trth2o -0.0125245235294118 -0.0097074574468085 -0.00743886684782611
##      0                   0                   0                    0
##      1                   1                   1                    1
##       y_rate_haz
## trth2o 0.00331517166212534 0.00664845901639344 0.00904280270270269
##      0                   0                   0                   0
##      1                   1                   1                   1
##       y_rate_haz
## trth2o 0.0142300350877193 0.0155539943181818 0.0191666876712329
##      0                  0                  0                  0
##      1                  1                  1                  1
##       y_rate_haz
## trth2o 0.0211118483290489 0.0225618379120879 0.0244344681440443
##      0                  0                  0                  0
##      1                  1                  1                  1
##       y_rate_haz
## trth2o 0.027424893442623 0.0283333643835616 0.0340733524590164
##      0                 0                  0                  0
##      1                 1                  1                  1
##       y_rate_haz
## trth2o 0.0417326754617414 0.0417811813186813 0.0520285657894737
##      0                  0                  0                  0
##      1                  1                  1                  1
##       y_rate_haz
## trth2o 0.0614892857142857 0.0625714971428572 0.0626468617886179
##      0                  0                  0                  0
##      1                  1                  1                  1
##       y_rate_haz
## trth2o 0.0752240967741935 0.0828792915531335 0.0877568655462185
##      0                  0                  0                  0
##      1                  1                  1                  1
##       y_rate_haz
## trth2o 0.101669080110497 0.111613100840336 0.122661351498638
##      0                 0                 0                 0
##      1                 1                 1                 1
##       y_rate_haz
## trth2o 0.157268164772727 0.173923167101828 0.198003448753463
##      0                 0                 0                 0
##      1                 1                 1                 1
##       y_rate_haz
## trth2o 0.199196323369565 0.22685080726257 0.235074234986945
##      0                 0                0                 0
##      1                 1                1                 1
##       y_rate_haz
## trth2o 0.263723742382272 0.274248934426229
##      0                 0                 0
##      1                 1                 1
##       y_rate_haz
## trth2o -0.295124197297297 -0.283503480978261 -0.251636766016713
##      0                  0                  0                  0
##      1                  1                  1                  1
##       y_rate_haz
## trth2o -0.193175699164345 -0.179619509749304 -0.172747019021739 -0.1520835
##      0                  0                  0                  0          0
##      1                  1                  1                  1          1
##       y_rate_haz
## trth2o -0.146636983471074 -0.126876290055249 -0.120674951086957
##      0                  0                  0                  0
##      1                  1                  1                  1
##       y_rate_haz
## trth2o -0.11790743258427 -0.111838562674095 -0.105907729805014
##      0                 0                  0                  0
##      1                 1                  1                  1
##       y_rate_haz
## trth2o -0.103902776859504 -0.0926824653739612 -0.0855734456824512
##      0                  0                   0                   0
##      1                  1                   1                   1
##       y_rate_haz
## trth2o -0.0835623626373626 -0.0830293702702703 -0.0817653225806452
##      0                   0                   0                   0
##      1                   1                   1                   1
##       y_rate_haz
## trth2o -0.0816667561643836 -0.0808334219178082 -0.0766599756097561
##      0                   0                   0                   0
##      1                   1                   1                   1
##       y_rate_haz
## trth2o -0.0756262213114754 -0.075413305785124 -0.0752061263736264
##      0                   0                  0                   0
##      1                   1                  1                   1
##       y_rate_haz
## trth2o -0.0745913623978202 -0.0745753801652893 -0.0741667479452055
##      0                   0                   0                   0
##      1                   1                   1                   1
##       y_rate_haz
## trth2o -0.0691667424657534 -0.068628208913649 -0.0677809470752089
##      0                   0                  0                   0
##      1                   1                  1                   1
##       y_rate_haz
## trth2o -0.0666667397260274 -0.0661961239669421 -0.0651786428571429
##      0                   0                   0                   0
##      1                   2                   1                   1
##       y_rate_haz
## trth2o -0.0643430192307692 -0.063129 -0.0601649010989011
##      0                   0         0                   0
##      1                   1         1                   1
##       y_rate_haz
## trth2o -0.059836131147541 -0.0571363425414365 -0.0561410165289256
##      0                  0                   0                   0
##      1                  1                   1                   1
##       y_rate_haz
## trth2o -0.0555291253405995 -0.0548497868852459 -0.0547827661290322
##      0                   0                   0                   0
##      1                   1                   1                   1
##       y_rate_haz
## trth2o -0.053229225 -0.0509730412087912 -0.0501374175824176
##      0            0                   0                   0
##      1            1                   1                   1
##       y_rate_haz
## trth2o -0.0498768467741936 -0.0498634426229508 -0.0490323852459016
##      0                   0                   0                   0
##      1                   1                   1                   1
##       y_rate_haz
## trth2o -0.0480263684210527 -0.0462132182320442 -0.0459592994505495
##      0                   0                   0                   0
##      1                   1                   1                   1
##       y_rate_haz
## trth2o -0.0447801416666667 -0.0438135290858726 -0.043806660326087
##      0                   0                   0                  0
##      1                   1                   1                  1
##       y_rate_haz
## trth2o -0.0421283933518006 -0.0412150406504065 -0.0387581218836565
##      0                   0                   0                   0
##      1                   1                   1                   1
##       y_rate_haz
## trth2o -0.0386510552486188 -0.0363310583333333 -0.0360308016528926
##      0                   0                   0                   0
##      1                   1                   1                   1
##       y_rate_haz
## trth2o -0.0351928760330578 -0.0349044098360656 -0.0342605686813187
##      0                   0                   0                   0
##      1                   1                   1                   1
##       y_rate_haz
## trth2o -0.0340733524590164 -0.033424945054945 -0.031841173553719
##      0                   0                  0                  0
##      1                   1                  1                  1
##       y_rate_haz
## trth2o -0.0303324432132964 -0.028695 -0.0276515454545455
##      0                   0         0                   0
##      1                   1         1                   1
##       y_rate_haz
## trth2o -0.0271123788300836 -0.0232062016348774 -0.0219067645429363
##      0                   0                   0                   0
##      1                   1                   1                   1
##       y_rate_haz
## trth2o -0.0195961932773109 -0.0195414553072626 -0.0183837197802198
##      0                   0                   0                   0
##      1                   1                   1                   1
##       y_rate_haz
## trth2o -0.0153792303370787 -0.013369978021978 -0.0115402113821138
##      0                   0                  0                   0
##      1                   1                  1                   1
##       y_rate_haz
## trth2o -0.0114471451612903 -0.0100274835164835 -0.00911672207084469
##      0                   0                   0                    0
##      1                   1                   1                    1
##       y_rate_haz
## trth2o -0.00835623626373627 -0.00752061263736266 -0.00509777094972067
##      0                    0                    0                    0
##      1                    1                    1                    1
##       y_rate_haz
## trth2o -0.00500000547945206 0.00415528688524592 0.00505540720221607
##      0                    0                   0                   0
##      1                    1                   1                   1
##       y_rate_haz
## trth2o 0.0059640588235294 0.00735887903225806 0.0075621629834254
##      0                  0                   0                  0
##      1                  1                   1                  1
##       y_rate_haz
## trth2o 0.00924264364640884 0.0110144038997214 0.0116987307692308
##      0                   0                  0                  0
##      1                   1                  1                  1
##       y_rate_haz
## trth2o 0.0141666821917808 0.0150826611570248 0.0156193864864865
##      0                  0                  0                  0
##      1                  1                  1                  1
##       y_rate_haz
## trth2o 0.0159205867768595 0.0173103170731707 0.0300824505494505
##      0                  0                  0                  0
##      1                  1                  1                  1
##       y_rate_haz
## trth2o 0.0343549504132232 0.0389532670299727 0.0413270380434783
##      0                  0                  0                  0
##      1                  1                  1                  1
##       y_rate_haz
## trth2o 0.0444100578512397 0.0464699583333333 0.0473148666666667
##      0                  0                  0                  0
##      1                  1                  1                  1
##       y_rate_haz
## trth2o 0.0500000547945205 0.0618501142061281 0.062817097826087
##      0                  0                  0                 0
##      1                  1                  1                 1
##       y_rate_haz
## trth2o 0.0764572786885246 0.0802198681318681 0.0839367950819672
##      0                  0                  0                  0
##      1                  1                  1                  1
##       y_rate_haz
## trth2o 0.0899057154696133 0.103349560773481 0.137558671348315
##      0                  0                 0                 0
##      1                  1                 1                 1
##       y_rate_haz
## trth2o 0.153340388429752 0.189467153631285
##      0                 0                 0
##      1                 1                 1
##       y_rate_haz
## trth2o -0.9936122 -0.862985441860465 -0.838966120879121 -0.828938637362637
##      0          0                  0                  0                  0
##      1          1                  1                  1                  1
##       y_rate_haz
## trth2o -0.731644945945946 -0.638008829268293 -0.635371066666667 -0.6286118
##      0                  0                  0                  0          0
##      1                  1                  1                  1          1
##       y_rate_haz
## trth2o -0.615490870588235 -0.615169213483146 -0.611535757894737
##      0                  0                  0                  0
##      1                  1                  1                  1
##       y_rate_haz
## trth2o -0.546118022727273 -0.541565634146341 -0.528986086956522
##      0                  0                  0                  0
##      1                  1                  1                  1
##       y_rate_haz
## trth2o -0.503448827586207 -0.493426466666667 -0.487321322580645
##      0                  0                  0                  0
##      1                  1                  1                  1
##       y_rate_haz
## trth2o -0.47608747826087 -0.454502413793104 -0.437628030612245
##      0                 0                  0                  0
##      1                 1                  1                  1
##       y_rate_haz
## trth2o -0.423661178571428 -0.422255364705882 -0.41366712
##      0                  0                  0           0
##      1                  1                  1           1
##       y_rate_haz
## trth2o -0.403421494736842 -0.391071857142857 -0.379484542857143
##      0                  0                  0                  0
##      1                  1                  1                  1
##       y_rate_haz
## trth2o -0.337963333333333 -0.312616083333333 -0.3070365 -0.297695361702128
##      0                  0                  0          0                  0
##      1                  1                  1          1                  1
##       y_rate_haz
## trth2o -0.297093348837209 -0.26999093258427 -0.250937775
##      0                  0                 0            0
##      1                  1                 1            1
##       y_rate_haz
## trth2o -0.246230428571429 -0.24060971641791 -0.22657337755102
##      0                  0                 0                 0
##      1                  1                 1                 1
##       y_rate_haz
## trth2o -0.218726831460674 -0.214706117647059 -0.212343 -0.194803584269663
##      0                  0                  0         0                  0
##      1                  1                  1         1                  1
##       y_rate_haz
## trth2o -0.18323313253012 -0.161790957446808 -0.153684378947368
##      0                 0                  0                  0
##      1                 1                  1                  1
##       y_rate_haz
## trth2o -0.137972659793814 -0.128070315789474 -0.124283290322581
##      0                  0                  0                  0
##      1                  1                  1                  1
##       y_rate_haz
## trth2o -0.122895757575758 -0.116715244186047 -0.110302318681319
##      0                  0                  0                  0
##      1                  1                  1                  1
##       y_rate_haz
## trth2o -0.0969323406593407 -0.0915771612903226 -0.0864788529411765
##      0                   0                   0                   0
##      1                   1                   1                   1
##       y_rate_haz
## trth2o -0.0709723 -0.0595791030927835 -0.0579365714285714
##      0          0                   0                   0
##      1          1                   1                   1
##       y_rate_haz
## trth2o -0.0543155357142857 -0.0367674395604395 -0.0207386590909091
##      0                   0                   0                   0
##      1                   1                   1                   1
##       y_rate_haz
## trth2o -0.0202778 -0.0138257727272727 -0.013369978021978
##      0          0                   0                  0
##      1          1                   1                  1
##       y_rate_haz
## trth2o -0.0103693295454546 0 0.00276515454545455 0.0295717916666667
##      0                   0 0                   0                  0
##      1                   1 1                   1                  1
##       y_rate_haz
## trth2o 0.0300824505494506 0.0349617241379311 0.0591435833333334 0.06995841
##      0                  0                  0                  0          0
##      1                  1                  1                  1          1
##       y_rate_haz
## trth2o 0.0775327647058823 0.0835623626373626 0.0869048571428571
##      0                  0                  0                  0
##      1                  1                  1                  1
##       y_rate_haz
## trth2o 0.0943966551724138 0.135552684782609 0.145170613636364
##      0                  0                 0                 0
##      1                  1                 1                 1
##       y_rate_haz
## trth2o 0.147177580645161 0.147653883495146 0.155463133333333
##      0                 0                 0                 0
##      1                 1                 1                 1
##       y_rate_haz
## trth2o 0.158695826086957 0.170221899082569 0.184101078947368
##      0                 0                 0                 0
##      1                 1                 1                 1
##       y_rate_haz
## trth2o 0.188903715789474 0.20054967032967 0.200620787234043
##      0                 0                0                 0
##      1                 2                1                 1
##       y_rate_haz
## trth2o 0.263430348214286 0.310926266666667 0.357474618556701
##      0                 0                 0                 0
##      1                 1                 1                 1
##       y_rate_haz
## trth2o 0.393024775280899 0.393968685714286 0.396739565217391
##      0                 0                 0                 0
##      1                 1                 1                 1
##       y_rate_haz
## trth2o 0.428086888888889 0.434036056179775 0.55710587368421
##      0                 0                 0                0
##      1                 1                 1                1
##       y_rate_haz
## trth2o 0.597470892857143 0.604797174418605 0.605230255102041
##      0                 0                 0                 0
##      1                 1                 1                 1
##       y_rate_haz
## trth2o 0.732253888888889 0.735794457142857 0.754920506024096
##      0                 0                 0                 0
##      1                 1                 1                 1
##       y_rate_haz
## trth2o 1.05288576923077
##      0                0
##      1                1
##       y_rate_haz
## trth2o -0.808954787234042 -0.678526384615385 -0.516756838709677
##      0                  0                  0                  0
##      1                  1                  1                  1
##       y_rate_haz
## trth2o -0.480780096774193 -0.462862826086957 -0.445640023255814
##      0                  0                  0                  0
##      1                  1                  1                  1
##       y_rate_haz
## trth2o -0.434036056179775 -0.411316738636364 -0.410949031914894
##      0                  0                  0                  0
##      1                  1                  1                  1
##       y_rate_haz
## trth2o -0.404363188235294 -0.393816221052632 -0.36630864516129
##      0                  0                  0                 0
##      1                  1                  1                 1
##       y_rate_haz
## trth2o -0.362266314606742 -0.36037177173913 -0.358241133333333
##      0                  0                 0                  0
##      1                  1                 1                  1
##       y_rate_haz
## trth2o -0.355431101123595 -0.3548615 -0.348102233333333 -0.342187875
##      0                  0          0                  0            0
##      1                  1          2                  1            1
##       y_rate_haz
## trth2o -0.323377547368421 -0.321255033707865 -0.307584606741573
##      0                  0                  0                  0
##      1                  1                  1                  1
##       y_rate_haz
## trth2o -0.307546633333333 -0.288648275510204 -0.284112032967033
##      0                  0                  0                  0
##      1                  1                  1                  1
##       y_rate_haz
## trth2o -0.261649032258065 -0.254574554347826 -0.244002098901099
##      0                  0                  0                  0
##      1                  1                  1                  1
##       y_rate_haz
## trth2o -0.242686436170213 -0.240504139534884 -0.232978978723404
##      0                  0                  0                  0
##      1                  1                  1                  1
##       y_rate_haz
## trth2o -0.214299477272727 -0.213266517241379 -0.199398366666667
##      0                  0                  0                  0
##      1                  1                  1                  1
##       y_rate_haz
## trth2o -0.187677510638298 -0.186424935483871 -0.1825002 -0.176613096774194
##      0                  0                  0          0                  0
##      1                  1                  1          1                  1
##       y_rate_haz
## trth2o -0.170071870967742 -0.165308152173913 -0.1520835 -0.142165010869565
##      0                  0                  0          0                  0
##      1                  1                  1          1                  1
##       y_rate_haz
## trth2o -0.133978321428571 -0.129869056179775 -0.12673625
##      0                  0                  0           0
##      1                  1                  1           1
##       y_rate_haz
## trth2o -0.120975511363636 -0.119725308510638 -0.114471451612903
##      0                  0                  0                  0
##      1                  1                  1                  1
##       y_rate_haz
## trth2o -0.112409543478261 -0.111877517241379 -0.106959824175824 -0.101389
##      0                  0                  0                  0         0
##      1                  1                  1                  1         1
##       y_rate_haz
## trth2o -0.0869048571428571 -0.0768773736263737 -0.07604175
##      0                   0                   0           0
##      1                   1                   1           1
##       y_rate_haz
## trth2o -0.0743519333333333 -0.0635073956043956 -0.0465561734693877
##      0                   0                   0                   0
##      1                   1                   1                   1
##       y_rate_haz
## trth2o -0.0453014680851064 -0.0429801195652174 -0.04118928125
##      0                   0                   0              0
##      1                   1                   1              1
##       y_rate_haz
## trth2o -0.0396739565217392 -0.0367674395604395 -0.0304166999999999
##      0                   0                   0                   0
##      1                   1                   1                   1
##       y_rate_haz
## trth2o -0.0161790957446808 -0.01584203125 -0.013369978021978
##      0                   0              0                  0
##      1                   1              1                  1
##       y_rate_haz
## trth2o -0.0103693295454545 -0.00691288636363637 -0.00675926666666667
##      0                   0                    0                    0
##      1                   1                    1                    1
##       y_rate_haz
## trth2o -0.00341760674157304 -0.0033424945054945 -0.00330616304347826
##      0                    0                   0                    0
##      1                    1                   1                    1
##       y_rate_haz
## trth2o 0.00654122580645155 0.0209770344827586 0.0212209534883721
##      0                   0                  0                  0
##      1                   1                  1                  1
##       y_rate_haz
## trth2o 0.0258865531914894 0.0473148666666667 0.0490591935483871 0.0506945
##      0                  0                  0                  0         0
##      1                  2                  1                  1         1
##       y_rate_haz
## trth2o 0.0649345280898876 0.06653653125 0.0835623626373626
##      0                  0             0                  0
##      1                  1             1                  1
##       y_rate_haz
## trth2o 0.0859602391304348 0.0869048571428571 0.0935898461538462
##      0                  0                  0                  0
##      1                  1                  1                  1
##       y_rate_haz
## trth2o 0.0948477741935484 0.106959824175824 0.118287166666667
##      0                  0                 0                 0
##      1                  1                 1                 1
##       y_rate_haz
## trth2o 0.134801284090909 0.146715847058824 0.156692090909091
##      0                 0                 0                 0
##      1                 1                 1                 1
##       y_rate_haz
## trth2o 0.15720991011236 0.162001989130435 0.171498414893617
##      0                0                 0                 0
##      1                1                 1                 1
##       y_rate_haz
## trth2o 0.188451293478261 0.1926391 0.218206760869565 0.230632120879121
##      0                 0         0                 0                 0
##      1                 1         1                 1                 1
##       y_rate_haz
## trth2o 0.251268391304348 0.252320352272727 0.25664090625 0.259233238636364
##      0                 0                 0             0                 0
##      1                 1                 1             1                 1
##       y_rate_haz
## trth2o 0.262544147368421 0.283661359550562 0.327564461538462
##      0                 0                 0                 0
##      1                 1                 1                 1
##       y_rate_haz
## trth2o 0.328924779069767 0.334249450549451 0.336525191489362
##      0                 0                 0                 0
##      1                 1                 1                 1
##       y_rate_haz
## trth2o 0.34093443956044 0.358241133333333 0.363038032258065 0.3751393
##      0                0                 0                 0         0
##      1                1                 1                 1         1
##       y_rate_haz
## trth2o 0.571966206521739 0.595109347826087 0.772654103448276
##      0                 0                 0                 0
##      1                 1                 1                 1
##       y_rate_haz
## trth2o 1.14674455172414
##      0                0
##      1                1
##       y_rate_haz
## trth2o -0.536662465517241 -0.424459033898305 -0.405556 -0.359767419354839
##      0                  0                  0         0                  0
##      1                  1                  1         1                  1
##       y_rate_haz
## trth2o -0.359470090909091 -0.339851396648045 -0.335099237288136
##      0                  0                  0                  0
##      1                  1                  1                  1
##       y_rate_haz
## trth2o -0.32925293814433 -0.329235708791209 -0.323790677419355
##      0                 0                  0                  0
##      1                 1                  1                  1
##       y_rate_haz
## trth2o -0.323685737967914 -0.318565437869822 -0.316153876847291
##      0                  0                  0                  0
##      1                  1                  1                  1
##       y_rate_haz
## trth2o -0.310851989010989 -0.292901555555556 -0.278182884422111
##      0                  0                  0                  0
##      1                  1                  1                  1
##       y_rate_haz
## trth2o -0.268482603351955 -0.260474502762431 -0.259289901639344
##      0                  0                  0                  0
##      1                  1                  1                  1
##       y_rate_haz
## trth2o -0.256392078534031 -0.255433060773481 -0.252667825396825
##      0                  0                  0                  0
##      1                  1                  1                  1
##       y_rate_haz
## trth2o -0.251403336734694 -0.247344593406593 -0.24630914673913
##      0                  0                  0                 0
##      1                  1                  1                 1
##       y_rate_haz
## trth2o -0.245195846938775 -0.240131842105263 -0.234224855614973
##      0                  0                  0                  0
##      1                  1                  1                  1
##       y_rate_haz
## trth2o -0.226864889502762 -0.220766370967742 -0.218172141361257
##      0                  0                  0                  0
##      1                  1                  1                  1
##       y_rate_haz
## trth2o -0.214412803278689 -0.208742058823529 -0.207309351955307
##      0                  0                  0                  0
##      1                  1                  1                  1
##       y_rate_haz
## trth2o -0.206102229508197 -0.205708317919075 -0.20513588372093
##      0                  0                  0                 0
##      1                  1                  1                 1
##       y_rate_haz
## trth2o -0.198143074285714 -0.194731253968254 -0.172138467032967
##      0                  0                  0                  0
##      1                  1                  1                  1
##       y_rate_haz
## trth2o -0.171707177419355 -0.165165951612903 -0.164827927374302
##      0                  0                  0                  0
##      1                  1                  1                  1
##       y_rate_haz
## trth2o -0.149643657754011 -0.14953461452514 -0.148627056818182
##      0                  0                 0                  0
##      1                  1                 1                  1
##       y_rate_haz
## trth2o -0.136794682539683 -0.134145446153846 -0.127655580310881
##      0                  0                  0                  0
##      1                  1                  1                  1
##       y_rate_haz
## trth2o -0.124658606557377 -0.121012677419355 -0.119021869565217
##      0                  0                  0                  0
##      1                  1                  1                  1
##       y_rate_haz
## trth2o -0.118483656976744 -0.114613652173913 -0.112216951456311
##      0                  0                  0                  0
##      1                  1                  1                  1
##       y_rate_haz
## trth2o -0.107258889473684 -0.0955498429319372 -0.0897541967213115
##      0                  0                   0                   0
##      1                  1                   1                   1
##       y_rate_haz
## trth2o -0.0881393011363636 -0.079806193069307 -0.0788581111111111
##      0                   0                  0                   0
##      1                   1                  1                   1
##       y_rate_haz
## trth2o -0.0787255764705882 -0.0720395526315789 -0.0700609382022472
##      0                   0                   0                   0
##      1                   1                   1                   1
##       y_rate_haz
## trth2o -0.0685211373626374 -0.0501374175824176 -0.0479393641304348
##      0                   0                   0                   0
##      1                   1                   1                   1
##       y_rate_haz
## trth2o -0.0477749214659686 -0.0439171604278075 -0.0337963333333333
##      0                   0                   0                   0
##      1                   1                   1                   1
##       y_rate_haz
## trth2o -0.0282559508196721 -0.0279337040816327 -0.017426234375
##      0                   0                   0               0
##      1                   1                   1               1
##       y_rate_haz
## trth2o -0.00826540760869564 -0.00779915384615382 0.00177875438596491
##      0                    0                    0                   0
##      1                    1                    1                   1
##       y_rate_haz
## trth2o 0.00859228813559321 0.00997268852459017 0.0130124919786096
##      0                   0                   0                  0
##      1                   1                   1                  1
##       y_rate_haz
## trth2o 0.0132888495145631 0.0132969180327869 0.0135940558659218
##      0                  0                  0                  0
##      1                  1                  1                  1
##       y_rate_haz
## trth2o 0.0169925698324022 0.0267399560439561 0.0292137796610169 0.03345837
##      0                  0                  0                  0          0
##      1                  1                  2                  1          1
##       y_rate_haz
## trth2o 0.0445497121212121 0.046671126984127 0.0495924456521739
##      0                  0                 0                  0
##      1                  1                 1                  1
##       y_rate_haz
## trth2o 0.0615576071428571 0.0621073979057592 0.0706982756756757
##      0                  0                  0                  0
##      1                  1                  1                  1
##       y_rate_haz
## trth2o 0.0835623626373626 0.0912501 0.0986924840425531 0.102407984924623
##      0                  0         0                  0                 0
##      1                  1         1                  1                 1
##       y_rate_haz
## trth2o 0.104144135869565 0.145471173913043 0.166801258064516
##      0                 0                 0                 0
##      1                 1                 1                 1
##       y_rate_haz
## trth2o 0.167124725274725 0.1723613 0.204982108695652 0.30076848603352
##      0                 0         0                 0                0
##      1                 1         1                 1                1
##       y_rate_haz
## trth2o 0.312343532258064 0.432073123076923 0.61003325698324
##      0                 0                 0                0
##      1                 1                 1                1
##       y_rate_haz
## trth2o -0.402231770491803 -0.393627882352941 -0.327436606557377
##      0                  0                  0                  0
##      1                  1                  1                  1
##       y_rate_haz
## trth2o -0.319126032786885 -0.309351664772727 -0.255886523809524
##      0                  0                  0                  0
##      1                  1                  1                  1
##       y_rate_haz
## trth2o -0.235851417112299 -0.22812525 -0.207386590909091
##      0                  0           0                  0
##      1                  1           1                  1
##       y_rate_haz
## trth2o -0.199002877659574 -0.19133085483871 -0.189295420212766
##      0                  0                 0                  0
##      1                  1                 1                  1
##       y_rate_haz
## trth2o -0.188213834254144 -0.185145130434783 -0.17046721978022
##      0                  0                  0                 0
##      1                  1                  1                 1
##       y_rate_haz
## trth2o -0.169535704918033 -0.164282711229947 -0.160532583333333
##      0                  0                  0                  0
##      1                  2                  1                  1
##       y_rate_haz
## trth2o -0.157838010810811 -0.156886136842105 -0.150393683333333
##      0                  0                  0                  0
##      1                  1                  1                  1
##       y_rate_haz
## trth2o -0.143818092391304 -0.134631295081967 -0.133378042780749
##      0                  0                  0                  0
##      1                  1                  1                  1
##       y_rate_haz
## trth2o -0.13130706557377 -0.127014791208791 -0.122001049450549
##      0                 0                  0                  0
##      1                 1                  1                  1
##       y_rate_haz
## trth2o -0.12133437704918 -0.115953165745856 -0.108513632432432 -0.10645845
##      0                 0                  0                  0           0
##      1                 1                  1                  1           1
##       y_rate_haz
## trth2o -0.0986035879120879 -0.0927967118644068 -0.0914163114754098
##      0                   0                   0                   0
##      1                   1                   1                   1
##       y_rate_haz
## trth2o -0.090745955801105 -0.0854955891891892 -0.0848465842105263
##      0                  0                   0                   0
##      1                  1                   1                   1
##       y_rate_haz
## trth2o -0.0843071576086957 -0.0797815081967213 -0.0751873483146067
##      0                   0                   0                   0
##      1                   1                   1                   1
##       y_rate_haz
## trth2o -0.067219226519337 -0.0651786428571429 -0.0647163829787235
##      0                  0                   0                   0
##      1                  1                   1                   1
##       y_rate_haz
## trth2o -0.0625232166666666 -0.0578578532608696 -0.0565119016393442
##      0                   0                   0                   0
##      1                   1                   1                   1
##       y_rate_haz
## trth2o -0.0559009621621622 -0.0531876721311475 -0.0484661703296703
##      0                   0                   0                   0
##      1                   1                   1                   1
##       y_rate_haz
## trth2o -0.041552868852459 -0.0413270380434783 -0.0386243809523809
##      0                  0                   0                   0
##      1                  1                   1                   1
##       y_rate_haz
## trth2o -0.0380208750000001 -0.038020875 -0.0336096132596685
##      0                   0            0                   0
##      1                   1            1                   1
##       y_rate_haz
## trth2o -0.0327061290322581 -0.0325312299465241 -0.0319291325966851
##      0                   0                   0                   0
##      1                   1                   1                   1
##       y_rate_haz
## trth2o -0.0317536978021978 -0.030586625698324 -0.0264493043478261
##      0                   0                  0                   0
##      1                   1                  1                   1
##       y_rate_haz
## trth2o -0.0249317213114754 -0.0198369782608696 -0.0184852872928177
##      0                   0                   0                   0
##      1                   1                   1                   1
##       y_rate_haz
## trth2o -0.0116987307692308 -0.0115090216216217 -0.0115090216216216
##      0                   0                   0                   0
##      1                   1                   1                   1
##       y_rate_haz
## trth2o -0.0100828839779005 -0.00664845901639344 -0.00169925698324022
##      0                   0                    0                    0
##      1                   1                    1                    1
##       y_rate_haz
## trth2o -0.00168048066298343 0 0.00330616304347826 0.00347619428571429
##      0                    0 0                   0                   0
##      1                    1 2                   1                   1
##       y_rate_haz
## trth2o 0.00657658378378379 0.00986487567567568 0.0100274835164835
##      0                   0                   0                  0
##      1                   1                   1                  1
##       y_rate_haz
## trth2o 0.0113859304812834 0.0130124919786096 0.019414914893617
##      0                  0                  0                 0
##      1                  1                  1                 1
##       y_rate_haz
## trth2o 0.0212589838709678 0.0250687087912088 0.0263063351351351
##      0                  0                  0                  0
##      1                  1                  1                  1
##       y_rate_haz
## trth2o 0.0282559508196721 0.0285681712707182 0.0401099340659341
##      0                  0                  0                  0
##      1                  1                  1                  1
##       y_rate_haz
## trth2o 0.0413270380434783 0.0434524285714286 0.0487339392265193
##      0                  0                  0                  0
##      1                  1                  1                  1
##       y_rate_haz
## trth2o 0.0520949005524862 0.0534799120879121 0.0551511593406593
##      0                  0                  0                  0
##      1                  1                  1                  1
##       y_rate_haz
## trth2o 0.0621777845303868 0.0661232608695652 0.0705801878453039
##      0                  0                  0                  0
##      1                  1                  1                  1
##       y_rate_haz
## trth2o 0.0768773736263736 0.078982591160221 0.0852336098901099
##      0                  0                 0                  0
##      1                  1                 1                  1
##       y_rate_haz
## trth2o 0.0902473516483516 0.0925725652173913 0.0935898461538462
##      0                  0                  0                  0
##      1                  1                  1                  1
##       y_rate_haz
## trth2o 0.0943405668449197 0.100310393617021 0.111072219101124
##      0                  0                 0                 0
##      1                  1                 1                 1
##       y_rate_haz
## trth2o 0.129143530726257 0.130842787709497 0.139884288770053
##      0                 0                 0                 0
##      1                 1                 1                 1
##       y_rate_haz
## trth2o 0.147973135135135 0.157900901639344 0.170671483333333
##      0                 0                 0                 0
##      1                 1                 1                 1
##       y_rate_haz
## trth2o 0.209426459016393 0.21275068852459 0.275911049180328
##      0                 0                0                 0
##      1                 1                1                 1
##       y_rate_haz
## trth2o 0.276808063492063 0.372313704918033 0.646772686813187
##      0                 0                 0                 0
##      1                 1                 1                 1
##       y_rate_haz
## trth2o 0.700906565217391
##      0                 0
##      1                 1
```




# Results Detail

## Results Plots
![](/tmp/9a96d894-ac27-4304-adb9-c60c8adb53a1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/9a96d894-ac27-4304-adb9-c60c8adb53a1/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       BRAZIL                         0                    NA                 0.1792561    0.1027959    0.2557163
0-3 months     ki0047075b-MAL-ED       BRAZIL                         1                    NA                 0.3304245    0.2129626    0.4478863
0-3 months     ki0047075b-MAL-ED       NEPAL                          0                    NA                -0.1046518   -0.2555314    0.0462279
0-3 months     ki0047075b-MAL-ED       NEPAL                          1                    NA                 0.0489262   -0.0089978    0.1068502
0-3 months     ki0047075b-MAL-ED       PERU                           0                    NA                -0.0758361   -0.1816493    0.0299771
0-3 months     ki0047075b-MAL-ED       PERU                           1                    NA                -0.1741065   -0.2690571   -0.0791560
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1809516   -0.2923482   -0.0695550
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0426731   -0.1094170    0.1947631
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     0                    NA                -0.0403222   -0.0586822   -0.0219623
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.0852495   -0.2038802    0.0333813
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                -0.1509973   -0.1754248   -0.1265698
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.0990797   -0.1251200   -0.0730395
3-6 months     ki0047075b-MAL-ED       BRAZIL                         0                    NA                 0.1070668    0.0571647    0.1569690
3-6 months     ki0047075b-MAL-ED       BRAZIL                         1                    NA                 0.0084511   -0.1798343    0.1967364
3-6 months     ki0047075b-MAL-ED       NEPAL                          0                    NA                 0.0930012   -0.0409602    0.2269625
3-6 months     ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.0243725   -0.0762821    0.0275371
3-6 months     ki0047075b-MAL-ED       PERU                           0                    NA                 0.0181999   -0.0741782    0.1105781
3-6 months     ki0047075b-MAL-ED       PERU                           1                    NA                 0.0094077   -0.0727307    0.0915462
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0410643   -0.1081175    0.0259890
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2457527   -0.3985192   -0.0929862
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     0                    NA                -0.0246686   -0.0412977   -0.0080394
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.1383308   -0.2332995   -0.0433622
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                 0.0545940    0.0289837    0.0802043
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                 0.0039791   -0.0180169    0.0259752
6-12 months    ki0047075b-MAL-ED       BRAZIL                         0                    NA                 0.0155855   -0.0145235    0.0456944
6-12 months    ki0047075b-MAL-ED       BRAZIL                         1                    NA                 0.0174152   -0.0389784    0.0738089
6-12 months    ki0047075b-MAL-ED       NEPAL                          0                    NA                -0.0874946   -0.1272287   -0.0477605
6-12 months    ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.0568592   -0.0765986   -0.0371199
6-12 months    ki0047075b-MAL-ED       PERU                           0                    NA                -0.1083468   -0.1412159   -0.0754776
6-12 months    ki0047075b-MAL-ED       PERU                           1                    NA                -0.0372084   -0.0734686   -0.0009482
6-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1091758   -0.1404418   -0.0779099
6-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0701895   -0.1547940    0.0144151
6-12 months    ki1017093b-PROVIDE      BANGLADESH                     0                    NA                -0.0628179   -0.0698549   -0.0557809
6-12 months    ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.0543168   -0.0961932   -0.0124404
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                -0.0453478   -0.0555171   -0.0351786
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.0198227   -0.0300322   -0.0096133
12-24 months   ki0047075b-MAL-ED       BRAZIL                         0                    NA                 0.0007187   -0.0140905    0.0155279
12-24 months   ki0047075b-MAL-ED       BRAZIL                         1                    NA                -0.0340767   -0.0558067   -0.0123468
12-24 months   ki0047075b-MAL-ED       NEPAL                          0                    NA                -0.0061167   -0.0191082    0.0068747
12-24 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.0256788   -0.0341420   -0.0172156
12-24 months   ki0047075b-MAL-ED       PERU                           0                    NA                -0.0242099   -0.0492909    0.0008710
12-24 months   ki0047075b-MAL-ED       PERU                           1                    NA                -0.0017132   -0.0186903    0.0152639
12-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0415527   -0.0566565   -0.0264488
12-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0732993   -0.1193519   -0.0272467
12-24 months   ki1017093b-PROVIDE      BANGLADESH                     0                    NA                -0.0082189   -0.0121359   -0.0043020
12-24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.0062543   -0.0218834    0.0093749
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                -0.0041994   -0.0096421    0.0012433
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.0075280   -0.0133970   -0.0016591


### Parameter: E(Y)


agecat         studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       BRAZIL                         NA                   NA                 0.2008516    0.1322496    0.2694535
0-3 months     ki0047075b-MAL-ED       NEPAL                          NA                   NA                 0.0196732   -0.0373357    0.0766822
0-3 months     ki0047075b-MAL-ED       PERU                           NA                   NA                -0.1548797   -0.2348247   -0.0749347
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1456424   -0.2459764   -0.0453085
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                -0.0413143   -0.0594662   -0.0231624
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                -0.1220821   -0.1402761   -0.1038881
3-6 months     ki0047075b-MAL-ED       BRAZIL                         NA                   NA                 0.0946202    0.0445560    0.1446843
3-6 months     ki0047075b-MAL-ED       NEPAL                          NA                   NA                -0.0043331   -0.0540186    0.0453524
3-6 months     ki0047075b-MAL-ED       PERU                           NA                   NA                 0.0112021   -0.0568449    0.0792490
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0703055   -0.1355760   -0.0050350
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                -0.0272428   -0.0436954   -0.0107902
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                 0.0267740    0.0099602    0.0435879
6-12 months    ki0047075b-MAL-ED       BRAZIL                         NA                   NA                 0.0158164   -0.0114385    0.0430713
6-12 months    ki0047075b-MAL-ED       NEPAL                          NA                   NA                -0.0620266   -0.0799254   -0.0441279
6-12 months    ki0047075b-MAL-ED       PERU                           NA                   NA                -0.0517264   -0.0824460   -0.0210068
6-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1034705   -0.1332011   -0.0737399
6-12 months    ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                -0.0626151   -0.0695574   -0.0556729
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                -0.0315658   -0.0388594   -0.0242722
12-24 months   ki0047075b-MAL-ED       BRAZIL                         NA                   NA                -0.0036730   -0.0170893    0.0097433
12-24 months   ki0047075b-MAL-ED       NEPAL                          NA                   NA                -0.0223791   -0.0299168   -0.0148415
12-24 months   ki0047075b-MAL-ED       PERU                           NA                   NA                -0.0064000   -0.0210549    0.0082548
12-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0460879   -0.0610026   -0.0311732
12-24 months   ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                -0.0081718   -0.0120131   -0.0043304
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                -0.0057326   -0.0097260   -0.0017391


### Parameter: ATE


agecat         studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       BRAZIL                         1                    0                  0.1511684    0.0110132    0.2913235
0-3 months     ki0047075b-MAL-ED       NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       NEPAL                          1                    0                  0.1535779   -0.0080385    0.3151943
0-3 months     ki0047075b-MAL-ED       PERU                           0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       PERU                           1                    0                 -0.0982704   -0.2404395    0.0438986
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    0                  0.2236247    0.0351026    0.4121468
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     1                    0                 -0.0449272   -0.1649704    0.0751159
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    0                  0.0519175    0.0162133    0.0876218
3-6 months     ki0047075b-MAL-ED       BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       BRAZIL                         1                    0                 -0.0986158   -0.2934018    0.0961703
3-6 months     ki0047075b-MAL-ED       NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       NEPAL                          1                    0                 -0.1173736   -0.2610408    0.0262936
3-6 months     ki0047075b-MAL-ED       PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       PERU                           1                    0                 -0.0087922   -0.1324063    0.1148219
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.2046884   -0.3715229   -0.0378539
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     1                    0                 -0.1136623   -0.2100758   -0.0172487
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    0                 -0.0506149   -0.0843745   -0.0168552
6-12 months    ki0047075b-MAL-ED       BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       BRAZIL                         1                    0                  0.0018298   -0.0620983    0.0657578
6-12 months    ki0047075b-MAL-ED       NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       NEPAL                          1                    0                  0.0306354   -0.0137317    0.0750025
6-12 months    ki0047075b-MAL-ED       PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       PERU                           1                    0                  0.0711384    0.0221978    0.1200790
6-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0389864   -0.0512106    0.1291833
6-12 months    ki1017093b-PROVIDE      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE      BANGLADESH                     1                    0                  0.0085011   -0.0339624    0.0509647
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    0                  0.0255251    0.0111151    0.0399350
12-24 months   ki0047075b-MAL-ED       BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       BRAZIL                         1                    0                 -0.0347954   -0.0610919   -0.0084989
12-24 months   ki0047075b-MAL-ED       NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       NEPAL                          1                    0                 -0.0195620   -0.0350670   -0.0040571
12-24 months   ki0047075b-MAL-ED       PERU                           0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       PERU                           1                    0                  0.0224967   -0.0077898    0.0527833
12-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0317467   -0.0802128    0.0167195
12-24 months   ki1017093b-PROVIDE      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    0                  0.0019647   -0.0141478    0.0180772
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    0                 -0.0033287   -0.0113329    0.0046755
