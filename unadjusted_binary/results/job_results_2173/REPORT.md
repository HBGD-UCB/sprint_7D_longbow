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

**Outcome Variable:** ever_stunted

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

agecat        studyid                    country                        trth2o    ever_stunted   n_cell     n
------------  -------------------------  -----------------------------  -------  -------------  -------  ----
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0        2   135
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    1        0   135
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0      112   135
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    1       21   135
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                    0       81   103
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                    1        9   103
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                    0       11   103
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                    1        2   103
0-6 months    ki0047075b-MAL-ED          INDIA                          0                    0        3     9
0-6 months    ki0047075b-MAL-ED          INDIA                          0                    1        2     9
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    0        3     9
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    1        1     9
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                    0       11    83
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                    1        3    83
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                    0       62    83
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                    1        7    83
0-6 months    ki0047075b-MAL-ED          PERU                           0                    0        9    49
0-6 months    ki0047075b-MAL-ED          PERU                           0                    1        1    49
0-6 months    ki0047075b-MAL-ED          PERU                           1                    0       33    49
0-6 months    ki0047075b-MAL-ED          PERU                           1                    1        6    49
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0        9    12
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1        1    12
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        1    12
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        1    12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0       31    43
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1        6    43
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        6    43
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        0    43
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0      102   120
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    1       18   120
0-6 months    ki1000108-IRC              INDIA                          1                    0      104   122
0-6 months    ki1000108-IRC              INDIA                          1                    1       18   122
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0      619   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    1       65   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0       15   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1        1   700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0      294   758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    1       37   758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0      359   758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    1       68   758
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0        3     4
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0        1     4
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0        1   112
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    1        1   112
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0       71   112
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1       39   112
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0       87   102
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    1        2   102
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0       12   102
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1        1   102
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    0        2     7
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    1        1     7
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    0        3     7
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    1        1     7
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0       11    78
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                    1        2    78
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0       54    78
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                    1       11    78
6-24 months   ki0047075b-MAL-ED          PERU                           0                    0        2    39
6-24 months   ki0047075b-MAL-ED          PERU                           0                    1        5    39
6-24 months   ki0047075b-MAL-ED          PERU                           1                    0       16    39
6-24 months   ki0047075b-MAL-ED          PERU                           1                    1       16    39
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0        8    10
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1        1    10
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        1    10
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        0    10
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0        9    31
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1       18    31
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        2    31
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        2    31
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0       34    95
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1       61    95
6-24 months   ki1000108-IRC              INDIA                          1                    0       75    96
6-24 months   ki1000108-IRC              INDIA                          1                    1       21    96
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0      370   497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    1      114   497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0        8   497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1        5   497
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0      233   620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    1       51   620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0      270   620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1       66   620
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0        2     4
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    1        1     4
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0        1     4
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1        0     4
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0        1   135
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    1        1   135
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0       66   135
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1       67   135
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0       78   103
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    1       12   103
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0        9   103
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1        4   103
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    0        2     9
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    1        3     9
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    0        2     9
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    1        2     9
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0        9    83
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                    1        5    83
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0       51    83
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    1       18    83
0-24 months   ki0047075b-MAL-ED          PERU                           0                    0        2    49
0-24 months   ki0047075b-MAL-ED          PERU                           0                    1        8    49
0-24 months   ki0047075b-MAL-ED          PERU                           1                    0       12    49
0-24 months   ki0047075b-MAL-ED          PERU                           1                    1       27    49
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0        7    12
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1        3    12
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        1    12
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        1    12
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0        8    43
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1       29    43
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        2    43
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        4    43
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0       28   120
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1       92   120
0-24 months   ki1000108-IRC              INDIA                          1                    0       65   122
0-24 months   ki1000108-IRC              INDIA                          1                    1       57   122
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0      427   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    1      257   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0       10   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1        6   700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0      215   758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    1      116   758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0      249   758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1      178   758
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0        2     4
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    1        1     4
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0        1     4
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1        0     4


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
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
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

* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
##       ever_stunted
## trth2o  0  1
##      0  0  0
##      1 28 92
##       ever_stunted
## trth2o  0  1
##      0  0  0
##      1 65 57
##       ever_stunted
## trth2o   0   1
##      0   0   0
##      1 102  18
##       ever_stunted
## trth2o   0   1
##      0   0   0
##      1 104  18
##       ever_stunted
## trth2o  0  1
##      0  0  0
##      1 34 61
##       ever_stunted
## trth2o  0  1
##      0  0  0
##      1 75 21
```




# Results Detail

## Results Plots
![](/tmp/238f2efd-a8b0-49ad-849f-01fa393ebd45/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/238f2efd-a8b0-49ad-849f-01fa393ebd45/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/238f2efd-a8b0-49ad-849f-01fa393ebd45/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/238f2efd-a8b0-49ad-849f-01fa393ebd45/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       NEPAL        0                    NA                0.3571429   0.1046237   0.6096621
0-24 months   ki0047075b-MAL-ED       NEPAL        1                    NA                0.2608696   0.1566311   0.3651080
0-24 months   ki1017093b-PROVIDE      BANGLADESH   0                    NA                0.3757310   0.3394102   0.4120517
0-24 months   ki1017093b-PROVIDE      BANGLADESH   1                    NA                0.3750000   0.1376145   0.6123855
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.3504532   0.2990203   0.4018861
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.4168618   0.3700665   0.4636572
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.1117825   0.0778147   0.1457503
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.1592506   0.1245214   0.1939798
6-24 months   ki1017093b-PROVIDE      BANGLADESH   0                    NA                0.2355372   0.1976955   0.2733789
6-24 months   ki1017093b-PROVIDE      BANGLADESH   1                    NA                0.3846154   0.1198871   0.6493437
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.1795775   0.1349004   0.2242545
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.1964286   0.1539134   0.2389437


### Parameter: E(Y)


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       NEPAL        NA                   NA                0.2771084   0.1802355   0.3739814
0-24 months   ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.3757143   0.3398113   0.4116172
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.3878628   0.3531521   0.4225735
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.1385224   0.1139141   0.1631308
6-24 months   ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.2394366   0.2018814   0.2769918
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.1887097   0.1578857   0.2195336


### Parameter: RR


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED       NEPAL        0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED       NEPAL        1                    0                 0.7304348   0.3242415   1.645486
0-24 months   ki1017093b-PROVIDE      BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE      BANGLADESH   1                    0                 0.9980545   0.5260739   1.893485
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    0                 1.1894937   0.9888198   1.430893
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   1                    0                 1.4246471   0.9800958   2.070838
6-24 months   ki1017093b-PROVIDE      BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE      BANGLADESH   1                    0                 1.6329285   0.8053964   3.310737
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    0                 1.0938375   0.7865731   1.521131


### Parameter: PAR


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED       NEPAL        0                    NA                -0.0800344   -0.3072764   0.1472076
0-24 months   ki1017093b-PROVIDE      BANGLADESH   0                    NA                -0.0000167   -0.0055058   0.0054724
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                 0.0374096   -0.0018315   0.0766507
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                 0.0267400   -0.0006772   0.0541571
6-24 months   ki1017093b-PROVIDE      BANGLADESH   0                    NA                 0.0038994   -0.0034021   0.0112010
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                 0.0091322   -0.0242972   0.0425616


### Parameter: PAF


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED       NEPAL        0                    NA                -0.2888199   -1.4350008   0.3178414
0-24 months   ki1017093b-PROVIDE      BANGLADESH   0                    NA                -0.0000445   -0.0147615   0.0144591
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                 0.0964507   -0.0106634   0.1922124
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                 0.1930370   -0.0284506   0.3668249
6-24 months   ki1017093b-PROVIDE      BANGLADESH   0                    NA                 0.0162859   -0.0146444   0.0462733
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                 0.0483929   -0.1461969   0.2099473
