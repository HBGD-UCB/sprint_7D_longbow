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
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0             72    84
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1             12    84
0-3 months     ki0047075b-MAL-ED          INDIA                          0              4     6
0-3 months     ki0047075b-MAL-ED          INDIA                          1              2     6
0-3 months     ki0047075b-MAL-ED          NEPAL                          0             12    63
0-3 months     ki0047075b-MAL-ED          NEPAL                          1             51    63
0-3 months     ki0047075b-MAL-ED          PERU                           0              9    46
0-3 months     ki0047075b-MAL-ED          PERU                           1             37    46
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0              9    10
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1              1    10
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             32    38
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              6    38
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0              0    25
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1             25    25
0-3 months     ki1000108-IRC              INDIA                          0              0   118
0-3 months     ki1000108-IRC              INDIA                          1            118   118
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0            620   634
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1             14   634
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0            319   720
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1            401   720
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0              2   132
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1            130   132
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0             90   103
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1             13   103
3-6 months     ki0047075b-MAL-ED          INDIA                          0              4     7
3-6 months     ki0047075b-MAL-ED          INDIA                          1              3     7
3-6 months     ki0047075b-MAL-ED          NEPAL                          0             14    82
3-6 months     ki0047075b-MAL-ED          NEPAL                          1             68    82
3-6 months     ki0047075b-MAL-ED          PERU                           0             10    49
3-6 months     ki0047075b-MAL-ED          PERU                           1             39    49
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0              9    11
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1              2    11
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             36    42
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              6    42
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0              0   101
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1            101   101
3-6 months     ki1000108-IRC              INDIA                          0              0   119
3-6 months     ki1000108-IRC              INDIA                          1            119   119
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0            561   574
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1             13   574
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0            313   695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1            382   695
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0              6     8
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1              2     8
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     0              2   131
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1            129   131
6-12 months    ki0047075b-MAL-ED          BRAZIL                         0             90   103
6-12 months    ki0047075b-MAL-ED          BRAZIL                         1             13   103
6-12 months    ki0047075b-MAL-ED          INDIA                          0              5     8
6-12 months    ki0047075b-MAL-ED          INDIA                          1              3     8
6-12 months    ki0047075b-MAL-ED          NEPAL                          0             14    83
6-12 months    ki0047075b-MAL-ED          NEPAL                          1             69    83
6-12 months    ki0047075b-MAL-ED          PERU                           0             10    49
6-12 months    ki0047075b-MAL-ED          PERU                           1             39    49
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0              9    11
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1              2    11
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             35    41
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              6    41
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0              0   107
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1            107   107
6-12 months    ki1000108-IRC              INDIA                          0              0   119
6-12 months    ki1000108-IRC              INDIA                          1            119   119
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0            532   545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1             13   545
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0            311   676
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1            365   676
6-12 months    ki1113344-GMS-Nepal        NEPAL                          0              6     8
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1              2     8
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     0              2   132
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1            130   132
12-24 months   ki0047075b-MAL-ED          BRAZIL                         0             90   103
12-24 months   ki0047075b-MAL-ED          BRAZIL                         1             13   103
12-24 months   ki0047075b-MAL-ED          INDIA                          0              5     9
12-24 months   ki0047075b-MAL-ED          INDIA                          1              4     9
12-24 months   ki0047075b-MAL-ED          NEPAL                          0             14    83
12-24 months   ki0047075b-MAL-ED          NEPAL                          1             69    83
12-24 months   ki0047075b-MAL-ED          PERU                           0             10    48
12-24 months   ki0047075b-MAL-ED          PERU                           1             38    48
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0              9    11
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              2    11
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             36    42
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              6    42
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0              0   100
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1            100   100
12-24 months   ki1000108-IRC              INDIA                          0              0   118
12-24 months   ki1000108-IRC              INDIA                          1            118   118
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0            447   458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1             11   458
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0            267   495
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            228   495
12-24 months   ki1113344-GMS-Nepal        NEPAL                          0              6     8
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1              2     8


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
* agecat: 0-3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/0859a420-9e4e-420a-b088-05dbfd825e38/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/0859a420-9e4e-420a-b088-05dbfd825e38/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





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
