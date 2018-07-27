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

**Outcome Variable:** stunted

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

agecat      studyid                    country                        trth2o    stunted   n_cell     n
----------  -------------------------  -----------------------------  -------  --------  -------  ----
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               0        2   133
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               1        0   133
Birth       ki0047075b-MAL-ED          BANGLADESH                     1               0      110   133
Birth       ki0047075b-MAL-ED          BANGLADESH                     1               1       21   133
6 months    ki0047075b-MAL-ED          BANGLADESH                     0               0        2   134
6 months    ki0047075b-MAL-ED          BANGLADESH                     0               1        0   134
6 months    ki0047075b-MAL-ED          BANGLADESH                     1               0      106   134
6 months    ki0047075b-MAL-ED          BANGLADESH                     1               1       26   134
24 months   ki0047075b-MAL-ED          BANGLADESH                     0               0        2   135
24 months   ki0047075b-MAL-ED          BANGLADESH                     0               1        0   135
24 months   ki0047075b-MAL-ED          BANGLADESH                     1               0       77   135
24 months   ki0047075b-MAL-ED          BANGLADESH                     1               1       56   135
Birth       ki0047075b-MAL-ED          BRAZIL                         0               0       65    84
Birth       ki0047075b-MAL-ED          BRAZIL                         0               1        7    84
Birth       ki0047075b-MAL-ED          BRAZIL                         1               0       10    84
Birth       ki0047075b-MAL-ED          BRAZIL                         1               1        2    84
6 months    ki0047075b-MAL-ED          BRAZIL                         0               0       89   103
6 months    ki0047075b-MAL-ED          BRAZIL                         0               1        1   103
6 months    ki0047075b-MAL-ED          BRAZIL                         1               0       13   103
6 months    ki0047075b-MAL-ED          BRAZIL                         1               1        0   103
24 months   ki0047075b-MAL-ED          BRAZIL                         0               0       89   103
24 months   ki0047075b-MAL-ED          BRAZIL                         0               1        1   103
24 months   ki0047075b-MAL-ED          BRAZIL                         1               0       13   103
24 months   ki0047075b-MAL-ED          BRAZIL                         1               1        0   103
Birth       ki0047075b-MAL-ED          INDIA                          0               0        3     7
Birth       ki0047075b-MAL-ED          INDIA                          0               1        2     7
Birth       ki0047075b-MAL-ED          INDIA                          1               0        2     7
Birth       ki0047075b-MAL-ED          INDIA                          1               1        0     7
6 months    ki0047075b-MAL-ED          INDIA                          0               0        2     9
6 months    ki0047075b-MAL-ED          INDIA                          0               1        3     9
6 months    ki0047075b-MAL-ED          INDIA                          1               0        3     9
6 months    ki0047075b-MAL-ED          INDIA                          1               1        1     9
24 months   ki0047075b-MAL-ED          INDIA                          0               0        2     9
24 months   ki0047075b-MAL-ED          INDIA                          0               1        3     9
24 months   ki0047075b-MAL-ED          INDIA                          1               0        4     9
24 months   ki0047075b-MAL-ED          INDIA                          1               1        0     9
Birth       ki0047075b-MAL-ED          NEPAL                          0               0        9    62
Birth       ki0047075b-MAL-ED          NEPAL                          0               1        3    62
Birth       ki0047075b-MAL-ED          NEPAL                          1               0       47    62
Birth       ki0047075b-MAL-ED          NEPAL                          1               1        3    62
6 months    ki0047075b-MAL-ED          NEPAL                          0               0       13    83
6 months    ki0047075b-MAL-ED          NEPAL                          0               1        1    83
6 months    ki0047075b-MAL-ED          NEPAL                          1               0       65    83
6 months    ki0047075b-MAL-ED          NEPAL                          1               1        4    83
24 months   ki0047075b-MAL-ED          NEPAL                          0               0       11    83
24 months   ki0047075b-MAL-ED          NEPAL                          0               1        3    83
24 months   ki0047075b-MAL-ED          NEPAL                          1               0       55    83
24 months   ki0047075b-MAL-ED          NEPAL                          1               1       14    83
Birth       ki0047075b-MAL-ED          PERU                           0               0        9    45
Birth       ki0047075b-MAL-ED          PERU                           0               1        0    45
Birth       ki0047075b-MAL-ED          PERU                           1               0       31    45
Birth       ki0047075b-MAL-ED          PERU                           1               1        5    45
6 months    ki0047075b-MAL-ED          PERU                           0               0        8    49
6 months    ki0047075b-MAL-ED          PERU                           0               1        2    49
6 months    ki0047075b-MAL-ED          PERU                           1               0       29    49
6 months    ki0047075b-MAL-ED          PERU                           1               1       10    49
24 months   ki0047075b-MAL-ED          PERU                           0               0        3    49
24 months   ki0047075b-MAL-ED          PERU                           0               1        7    49
24 months   ki0047075b-MAL-ED          PERU                           1               0       22    49
24 months   ki0047075b-MAL-ED          PERU                           1               1       17    49
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0               0        8    10
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0               1        1    10
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1               0        1    10
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1               1        0    10
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               0       10    12
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               1        0    12
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1               0        1    12
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1               1        1    12
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               0        8    11
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               1        1    11
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1               0        1    11
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1               1        1    11
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               0       17    20
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               1        1    20
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0        2    20
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        0    20
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               0       26    42
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               1       10    42
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0        4    42
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        2    42
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               0        9    43
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               1       28    43
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0        2    43
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        4    43
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1               0       85   120
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1               1       35   120
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               0       43   119
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               1       76   119
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1               0       24    26
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1               1        2    26
Birth       ki1000108-IRC              INDIA                          1               0      102   120
Birth       ki1000108-IRC              INDIA                          1               1       18   120
6 months    ki1000108-IRC              INDIA                          1               0       90   121
6 months    ki1000108-IRC              INDIA                          1               1       31   121
24 months   ki1000108-IRC              INDIA                          1               0       70   121
24 months   ki1000108-IRC              INDIA                          1               1       51   121
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               0      478   583
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               1       92   583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               0       11   583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               1        2   583
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               0      378   577
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               1      185   577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               0        9   577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               1        5   577
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0               0       11    27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0               1        2    27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1               0       11    27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1               1        3    27
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0               0      265   715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0               1       54   715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1               0      300   715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1               1       96   715
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0               0      207   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0               1       65   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1               0      175   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1               1       67   514
6 months    ki1113344-GMS-Nepal        NEPAL                          0               0        3     4
6 months    ki1113344-GMS-Nepal        NEPAL                          1               0        1     4
24 months   ki1113344-GMS-Nepal        NEPAL                          0               0        2     4
24 months   ki1113344-GMS-Nepal        NEPAL                          0               1        1     4
24 months   ki1113344-GMS-Nepal        NEPAL                          1               0        1     4
24 months   ki1113344-GMS-Nepal        NEPAL                          1               1        0     4


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

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
##       stunted
## trth2o  0  1
##      0  0  0
##      1 43 76
##       stunted
## trth2o  0  1
##      0  0  0
##      1 70 51
##       stunted
## trth2o  0  1
##      0  0  0
##      1 85 35
##       stunted
## trth2o  0  1
##      0  0  0
##      1 90 31
##       stunted
## trth2o   0   1
##      0   0   0
##      1 102  18
```




# Results Detail

## Results Plots
![](/tmp/0f8044bd-bdf6-4051-ae7a-9339c75036f0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/0f8044bd-bdf6-4051-ae7a-9339c75036f0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/0f8044bd-bdf6-4051-ae7a-9339c75036f0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/0f8044bd-bdf6-4051-ae7a-9339c75036f0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.1692790   0.1280990   0.2104589
6 months    ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.2424242   0.2001860   0.2846624
24 months   ki1017093b-PROVIDE      BANGLADESH   0                    NA                0.3285968   0.2897644   0.3674292
24 months   ki1017093b-PROVIDE      BANGLADESH   1                    NA                0.3571429   0.1059317   0.6083540
24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.2389706   0.1882412   0.2897000
24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.2768595   0.2204302   0.3332888


### Parameter: E(Y)


agecat      studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.2097902   0.1799252   0.2396552
24 months   ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.3292894   0.2909105   0.3676684
24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.2568093   0.2190047   0.2946140


### Parameter: RR


agecat      studyid                 country      intervention_level   baseline_level    estimate    ci_lower   ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ---------  ----------  ---------
6 months    ki1017093c-NIH-Crypto   BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH   1                    0                 1.432099   1.0617472   1.931634
24 months   ki1017093b-PROVIDE      BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
24 months   ki1017093b-PROVIDE      BANGLADESH   1                    0                 1.086873   0.5326210   2.217885
24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    0                 1.158551   0.8631906   1.554974


### Parameter: PAR


agecat      studyid                 country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
6 months    ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.0405112    0.0077310   0.0732914
24 months   ki1017093b-PROVIDE      BANGLADESH   0                    NA                0.0006926   -0.0054854   0.0068707
24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.0178388   -0.0179242   0.0536017


### Parameter: PAF


agecat      studyid                 country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
6 months    ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.1931034    0.0223800   0.3340132
24 months   ki1017093b-PROVIDE      BANGLADESH   0                    NA                0.0021034   -0.0168359   0.0206899
24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.0694630   -0.0806002   0.1986869
