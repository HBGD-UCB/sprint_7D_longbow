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

**Outcome Variable:** sstunted

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

agecat      studyid                    country                        trth2o    sstunted   n_cell     n
----------  -------------------------  -----------------------------  -------  ---------  -------  ----
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                0        2   133
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                1        0   133
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                0      127   133
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                1        4   133
Birth       ki0047075b-MAL-ED          BRAZIL                         0                0       69    84
Birth       ki0047075b-MAL-ED          BRAZIL                         0                1        3    84
Birth       ki0047075b-MAL-ED          BRAZIL                         1                0       11    84
Birth       ki0047075b-MAL-ED          BRAZIL                         1                1        1    84
Birth       ki0047075b-MAL-ED          INDIA                          0                0        4     7
Birth       ki0047075b-MAL-ED          INDIA                          0                1        1     7
Birth       ki0047075b-MAL-ED          INDIA                          1                0        2     7
Birth       ki0047075b-MAL-ED          INDIA                          1                1        0     7
Birth       ki0047075b-MAL-ED          NEPAL                          0                0       12    62
Birth       ki0047075b-MAL-ED          NEPAL                          0                1        0    62
Birth       ki0047075b-MAL-ED          NEPAL                          1                0       49    62
Birth       ki0047075b-MAL-ED          NEPAL                          1                1        1    62
Birth       ki0047075b-MAL-ED          PERU                           0                0        9    45
Birth       ki0047075b-MAL-ED          PERU                           0                1        0    45
Birth       ki0047075b-MAL-ED          PERU                           1                0       36    45
Birth       ki0047075b-MAL-ED          PERU                           1                1        0    45
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                0        9    10
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                1        0    10
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                0        1    10
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        0    10
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                0       18    20
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                1        0    20
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0        2    20
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1        0    20
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                0        0    26
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                1        0    26
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                0       25    26
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                1        1    26
Birth       ki1000108-IRC              INDIA                          0                0        0   120
Birth       ki1000108-IRC              INDIA                          0                1        0   120
Birth       ki1000108-IRC              INDIA                          1                0      114   120
Birth       ki1000108-IRC              INDIA                          1                1        6   120
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                0       13    27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                1        0    27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                0       13    27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                1        1    27
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                0        2   134
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                1        0   134
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                0      129   134
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                1        3   134
6 months    ki0047075b-MAL-ED          BRAZIL                         0                0       90   103
6 months    ki0047075b-MAL-ED          BRAZIL                         0                1        0   103
6 months    ki0047075b-MAL-ED          BRAZIL                         1                0       13   103
6 months    ki0047075b-MAL-ED          BRAZIL                         1                1        0   103
6 months    ki0047075b-MAL-ED          INDIA                          0                0        5     9
6 months    ki0047075b-MAL-ED          INDIA                          0                1        0     9
6 months    ki0047075b-MAL-ED          INDIA                          1                0        4     9
6 months    ki0047075b-MAL-ED          INDIA                          1                1        0     9
6 months    ki0047075b-MAL-ED          NEPAL                          0                0       14    83
6 months    ki0047075b-MAL-ED          NEPAL                          0                1        0    83
6 months    ki0047075b-MAL-ED          NEPAL                          1                0       69    83
6 months    ki0047075b-MAL-ED          NEPAL                          1                1        0    83
6 months    ki0047075b-MAL-ED          PERU                           0                0       10    49
6 months    ki0047075b-MAL-ED          PERU                           0                1        0    49
6 months    ki0047075b-MAL-ED          PERU                           1                0       36    49
6 months    ki0047075b-MAL-ED          PERU                           1                1        3    49
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                0       10    12
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                1        0    12
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                0        1    12
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        1    12
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                0       33    42
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                1        3    42
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0        5    42
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1        1    42
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                0        0   120
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                1        0   120
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                0      105   120
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                1       15   120
6 months    ki1000108-IRC              INDIA                          0                0        0   121
6 months    ki1000108-IRC              INDIA                          0                1        0   121
6 months    ki1000108-IRC              INDIA                          1                0      110   121
6 months    ki1000108-IRC              INDIA                          1                1       11   121
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                0      557   583
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                1       13   583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                0       12   583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                1        1   583
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                0      313   715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                1        6   715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                0      379   715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                1       17   715
6 months    ki1113344-GMS-Nepal        NEPAL                          0                0        3     4
6 months    ki1113344-GMS-Nepal        NEPAL                          0                1        0     4
6 months    ki1113344-GMS-Nepal        NEPAL                          1                0        1     4
6 months    ki1113344-GMS-Nepal        NEPAL                          1                1        0     4
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                0        2   135
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                1        0   135
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                0      118   135
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                1       15   135
24 months   ki0047075b-MAL-ED          BRAZIL                         0                0       90   103
24 months   ki0047075b-MAL-ED          BRAZIL                         0                1        0   103
24 months   ki0047075b-MAL-ED          BRAZIL                         1                0       13   103
24 months   ki0047075b-MAL-ED          BRAZIL                         1                1        0   103
24 months   ki0047075b-MAL-ED          INDIA                          0                0        4     9
24 months   ki0047075b-MAL-ED          INDIA                          0                1        1     9
24 months   ki0047075b-MAL-ED          INDIA                          1                0        4     9
24 months   ki0047075b-MAL-ED          INDIA                          1                1        0     9
24 months   ki0047075b-MAL-ED          NEPAL                          0                0       13    83
24 months   ki0047075b-MAL-ED          NEPAL                          0                1        1    83
24 months   ki0047075b-MAL-ED          NEPAL                          1                0       65    83
24 months   ki0047075b-MAL-ED          NEPAL                          1                1        4    83
24 months   ki0047075b-MAL-ED          PERU                           0                0        9    49
24 months   ki0047075b-MAL-ED          PERU                           0                1        1    49
24 months   ki0047075b-MAL-ED          PERU                           1                0       36    49
24 months   ki0047075b-MAL-ED          PERU                           1                1        3    49
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                0        9    11
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                1        0    11
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                0        1    11
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        1    11
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                0       20    43
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                1       17    43
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0        4    43
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1        2    43
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                0        0   119
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                1        0   119
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                0       87   119
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                1       32   119
24 months   ki1000108-IRC              INDIA                          0                0        0   121
24 months   ki1000108-IRC              INDIA                          0                1        0   121
24 months   ki1000108-IRC              INDIA                          1                0      108   121
24 months   ki1000108-IRC              INDIA                          1                1       13   121
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                0      515   577
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                1       48   577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                0       13   577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                1        1   577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                0      254   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                1       18   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                0      225   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                1       17   514
24 months   ki1113344-GMS-Nepal        NEPAL                          0                0        3     4
24 months   ki1113344-GMS-Nepal        NEPAL                          0                1        0     4
24 months   ki1113344-GMS-Nepal        NEPAL                          1                0        1     4
24 months   ki1113344-GMS-Nepal        NEPAL                          1                1        0     4


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
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
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
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/7c9e2dbd-cc09-44f4-b089-fef597c4845a/1e710217-bcfc-4203-a57c-a6e727186fc3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7c9e2dbd-cc09-44f4-b089-fef597c4845a/1e710217-bcfc-4203-a57c-a6e727186fc3/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7c9e2dbd-cc09-44f4-b089-fef597c4845a/1e710217-bcfc-4203-a57c-a6e727186fc3/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7c9e2dbd-cc09-44f4-b089-fef597c4845a/1e710217-bcfc-4203-a57c-a6e727186fc3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.0188088   0.0038907   0.0337269
6 months    ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.0429293   0.0229512   0.0629074
24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.0661765   0.0366051   0.0957478
24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.0702479   0.0380177   0.1024782


### Parameter: E(Y)


agecat      studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0321678   0.0192256   0.0451101
24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0680934   0.0462948   0.0898920


### Parameter: RR


agecat      studyid                 country      intervention_level   baseline_level    estimate    ci_lower   ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ---------  ----------  ---------
6 months    ki1017093c-NIH-Crypto   BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH   1                    0                 2.282407   0.9099531   5.724892
24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    0                 1.061524   0.5594786   2.014079


### Parameter: PAR


agecat      studyid                 country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
6 months    ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.0133591   -0.0004782   0.0271963
24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.0019169   -0.0186777   0.0225116


### Parameter: PAF


agecat      studyid                 country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
6 months    ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.4152923   -0.1544286   0.7038508
24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.0281513   -0.3264871   0.2879765
