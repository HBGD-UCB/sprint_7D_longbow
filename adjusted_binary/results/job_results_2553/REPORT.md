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

**Outcome Variable:** ever_stunted

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
![](/tmp/5d93a356-79a0-4754-8b7d-bfbdf9e52fb6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/5d93a356-79a0-4754-8b7d-bfbdf9e52fb6/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/5d93a356-79a0-4754-8b7d-bfbdf9e52fb6/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/5d93a356-79a0-4754-8b7d-bfbdf9e52fb6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                 country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED       NEPAL        0                    NA                0.3677792    0.1128571   0.6227014
0-24 months   ki0047075b-MAL-ED       NEPAL        1                    NA                0.2591481    0.1554558   0.3628404
0-24 months   ki1017093b-PROVIDE      BANGLADESH   0                    NA                0.3738730    0.3378614   0.4098846
0-24 months   ki1017093b-PROVIDE      BANGLADESH   1                    NA                0.0168646    0.0009945   0.0327347
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.4095239    0.3692843   0.4497634
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.4590830    0.4191098   0.4990562
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.0990976    0.0727159   0.1254794
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.1599367    0.1303503   0.1895230
6-24 months   ki1017093b-PROVIDE      BANGLADESH   0                    NA                0.2333697    0.1958444   0.2708950
6-24 months   ki1017093b-PROVIDE      BANGLADESH   1                    NA                0.0116519   -0.0100255   0.0333293
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.1592408    0.1230769   0.1954046
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.1763926    0.1402926   0.2124926


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


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED       NEPAL        1                    0                 0.7046294   0.3174764   1.5639041
0-24 months   ki1017093b-PROVIDE      BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE      BANGLADESH   1                    0                 0.0451079   0.0175486   0.1159478
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    0                 1.1210165   0.9908639   1.2682649
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   1                    0                 1.6139302   1.1700357   2.2262319
6-24 months   ki1017093b-PROVIDE      BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE      BANGLADESH   1                    0                 0.0499289   0.0077160   0.3230816
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    0                 1.1077100   0.8325636   1.4737870


### Parameter: PAR


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED       NEPAL        0                    NA                -0.0906708   -0.3190459   0.1377044
0-24 months   ki1017093b-PROVIDE      BANGLADESH   0                    NA                 0.0018413   -0.0027372   0.0064198
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                -0.0216611   -0.0516740   0.0083518
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                 0.0394248    0.0166104   0.0622391
6-24 months   ki1017093b-PROVIDE      BANGLADESH   0                    NA                 0.0060669   -0.0012712   0.0134050
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                 0.0294689    0.0032772   0.0556606


### Parameter: PAF


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED       NEPAL        0                    NA                -0.3272033   -1.4677332   0.2861997
0-24 months   ki1017093b-PROVIDE      BANGLADESH   0                    NA                 0.0049008   -0.0073504   0.0170030
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                -0.0558473   -0.1375514   0.0199885
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                 0.2846094    0.1144470   0.4220744
6-24 months   ki1017093b-PROVIDE      BANGLADESH   0                    NA                 0.0253384   -0.0056440   0.0553663
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                 0.1561600    0.0086796   0.2816994
