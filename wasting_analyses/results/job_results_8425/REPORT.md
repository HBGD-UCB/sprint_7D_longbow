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

**Outcome Variable:** pers_wast

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

agecat        studyid                    country                        trth2o    pers_wast   n_cell     n
------------  -------------------------  -----------------------------  -------  ----------  -------  ----
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 0        2   135
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 1        0   135
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 0      127   135
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 1        6   135
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                 0       90   103
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                 1        0   103
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                 0       13   103
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                 1        0   103
0-24 months   ki0047075b-MAL-ED          INDIA                          0                 0        4     9
0-24 months   ki0047075b-MAL-ED          INDIA                          0                 1        1     9
0-24 months   ki0047075b-MAL-ED          INDIA                          1                 0        4     9
0-24 months   ki0047075b-MAL-ED          INDIA                          1                 1        0     9
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                 0       13    83
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                 1        1    83
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                 0       69    83
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                 1        0    83
0-24 months   ki0047075b-MAL-ED          PERU                           0                 0       10    49
0-24 months   ki0047075b-MAL-ED          PERU                           0                 1        0    49
0-24 months   ki0047075b-MAL-ED          PERU                           1                 0       39    49
0-24 months   ki0047075b-MAL-ED          PERU                           1                 1        0    49
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0       10    12
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        0    12
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0        2    12
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        0    12
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0       37    43
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1        0    43
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0        6    43
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        0    43
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0        0   120
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 1        0   120
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 0      112   120
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 1        8   120
0-24 months   ki1000108-IRC              INDIA                          0                 0        0   122
0-24 months   ki1000108-IRC              INDIA                          0                 1        0   122
0-24 months   ki1000108-IRC              INDIA                          1                 0      105   122
0-24 months   ki1000108-IRC              INDIA                          1                 1       17   122
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                 0      611   640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                 1       15   640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 0       14   640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 1        0   640
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                 0      314   730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                 1        8   730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      390   730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 1       18   730
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                 0        6     8
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                 1        0     8
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                 0        2     8
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                 1        0     8
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                 0        2   135
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                 1        0   135
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 0      129   135
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 1        4   135
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                 0       90   103
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                 1        0   103
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                 0       13   103
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                 1        0   103
0-6 months    ki0047075b-MAL-ED          INDIA                          0                 0        3     8
0-6 months    ki0047075b-MAL-ED          INDIA                          0                 1        1     8
0-6 months    ki0047075b-MAL-ED          INDIA                          1                 0        4     8
0-6 months    ki0047075b-MAL-ED          INDIA                          1                 1        0     8
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                 0       13    82
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                 1        1    82
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                 0       68    82
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                 1        0    82
0-6 months    ki0047075b-MAL-ED          PERU                           0                 0       10    49
0-6 months    ki0047075b-MAL-ED          PERU                           0                 1        0    49
0-6 months    ki0047075b-MAL-ED          PERU                           1                 0       39    49
0-6 months    ki0047075b-MAL-ED          PERU                           1                 1        0    49
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0        9    12
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        1    12
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0        2    12
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        0    12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0       37    43
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1        0    43
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0        6    43
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        0    43
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 0        0   119
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 1        0   119
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                 0      104   119
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                 1       15   119
0-6 months    ki1000108-IRC              INDIA                          0                 0        0   121
0-6 months    ki1000108-IRC              INDIA                          0                 1        0   121
0-6 months    ki1000108-IRC              INDIA                          1                 0      102   121
0-6 months    ki1000108-IRC              INDIA                          1                 1       19   121
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                 0      609   637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                 1       14   637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 0       14   637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 1        0   637
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                 0        6     8
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                 1        0     8
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                 0        2     8
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                 1        0     8
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 0        2   135
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 1        0   135
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 0      122   135
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 1       11   135
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                 0       90   103
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                 1        0   103
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                 0       13   103
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                 1        0   103
6-24 months   ki0047075b-MAL-ED          INDIA                          0                 0        4     9
6-24 months   ki0047075b-MAL-ED          INDIA                          0                 1        1     9
6-24 months   ki0047075b-MAL-ED          INDIA                          1                 0        4     9
6-24 months   ki0047075b-MAL-ED          INDIA                          1                 1        0     9
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                 0       14    83
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                 1        0    83
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                 0       69    83
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                 1        0    83
6-24 months   ki0047075b-MAL-ED          PERU                           0                 0       10    49
6-24 months   ki0047075b-MAL-ED          PERU                           0                 1        0    49
6-24 months   ki0047075b-MAL-ED          PERU                           1                 0       39    49
6-24 months   ki0047075b-MAL-ED          PERU                           1                 1        0    49
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0       10    12
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        0    12
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0        2    12
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        0    12
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0       37    43
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1        0    43
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0        6    43
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        0    43
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0        0   120
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 1        0   120
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 0      110   120
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 1       10   120
6-24 months   ki1000108-IRC              INDIA                          0                 0        0   122
6-24 months   ki1000108-IRC              INDIA                          0                 1        0   122
6-24 months   ki1000108-IRC              INDIA                          1                 0      103   122
6-24 months   ki1000108-IRC              INDIA                          1                 1       19   122
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                 0      549   601
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                 1       38   601
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 0       14   601
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 1        0   601
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                 0      296   697
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                 1       18   697
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      359   697
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 1       24   697
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                 0        6     8
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                 1        0     8
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                 0        2     8
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                 1        0     8


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/84832f6e-f45e-46e6-98b9-b3479c43ead6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/84832f6e-f45e-46e6-98b9-b3479c43ead6/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/84832f6e-f45e-46e6-98b9-b3479c43ead6/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/84832f6e-f45e-46e6-98b9-b3479c43ead6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.0248447   0.0078321   0.0418574
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.0441176   0.0241777   0.0640576
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.0573248   0.0315944   0.0830553
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.0626632   0.0383739   0.0869525


### Parameter: E(Y)


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0356164   0.0221630   0.0490699
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0602582   0.0425793   0.0779372


### Parameter: RR


agecat        studyid                 country      intervention_level   baseline_level    estimate    ci_lower   ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ---------  ----------  ---------
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    0                 1.775735   0.7817213   4.033708
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    0                 1.093125   0.6040995   1.978020


### Parameter: PAR


agecat        studyid                 country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.0107717   -0.0038943   0.0254378
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.0029334   -0.0165110   0.0223778


### Parameter: PAF


agecat        studyid                 country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.3024367   -0.2314490   0.6048601
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.0486806   -0.3350914   0.3221374
