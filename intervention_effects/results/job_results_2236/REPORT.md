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

**Intervention Variable:** tr

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* perdiar24
* agecat
* studyid
* country

## Data Summary

perdiar24   agecat      studyid                    country      tr         stunted   n_cell      n
----------  ----------  -------------------------  -----------  --------  --------  -------  -----
Q3          6 months    ki1000304-Vitamin-B12      INDIA        Control          0        3     22
Q3          6 months    ki1000304-Vitamin-B12      INDIA        Control          1        1     22
Q3          6 months    ki1000304-Vitamin-B12      INDIA        Other            0       12     22
Q3          6 months    ki1000304-Vitamin-B12      INDIA        Other            1        6     22
Q1          24 months   ki1000304-Vitamin-B12      INDIA        Control          0        8     43
Q1          24 months   ki1000304-Vitamin-B12      INDIA        Control          1        7     43
Q1          24 months   ki1000304-Vitamin-B12      INDIA        Other            0       14     43
Q1          24 months   ki1000304-Vitamin-B12      INDIA        Other            1       14     43
Q2          6 months    ki1000304-Vitamin-B12      INDIA        Control          0        1     10
Q2          6 months    ki1000304-Vitamin-B12      INDIA        Control          1        1     10
Q2          6 months    ki1000304-Vitamin-B12      INDIA        Other            0        5     10
Q2          6 months    ki1000304-Vitamin-B12      INDIA        Other            1        3     10
Q4          6 months    ki1000304-Vitamin-B12      INDIA        Control          0        5     38
Q4          6 months    ki1000304-Vitamin-B12      INDIA        Control          1        4     38
Q4          6 months    ki1000304-Vitamin-B12      INDIA        Other            0       23     38
Q4          6 months    ki1000304-Vitamin-B12      INDIA        Other            1        6     38
Q3          24 months   ki1000304-Vitamin-B12      INDIA        Control          0        3     21
Q3          24 months   ki1000304-Vitamin-B12      INDIA        Control          1        1     21
Q3          24 months   ki1000304-Vitamin-B12      INDIA        Other            0        8     21
Q3          24 months   ki1000304-Vitamin-B12      INDIA        Other            1        9     21
Q1          6 months    ki1000304-Vitamin-B12      INDIA        Control          0        2     11
Q1          6 months    ki1000304-Vitamin-B12      INDIA        Control          1        0     11
Q1          6 months    ki1000304-Vitamin-B12      INDIA        Other            0        7     11
Q1          6 months    ki1000304-Vitamin-B12      INDIA        Other            1        2     11
Q2          24 months   ki1000304-Vitamin-B12      INDIA        Control          0        5     20
Q2          24 months   ki1000304-Vitamin-B12      INDIA        Control          1        4     20
Q2          24 months   ki1000304-Vitamin-B12      INDIA        Other            0        7     20
Q2          24 months   ki1000304-Vitamin-B12      INDIA        Other            1        4     20
Q4          24 months   ki1000304-Vitamin-B12      INDIA        Control          0        3     23
Q4          24 months   ki1000304-Vitamin-B12      INDIA        Control          1        1     23
Q4          24 months   ki1000304-Vitamin-B12      INDIA        Other            0        9     23
Q4          24 months   ki1000304-Vitamin-B12      INDIA        Other            1       10     23
Q4          6 months    ki1000304b-SAS-FoodSuppl   INDIA        Control          0       12    243
Q4          6 months    ki1000304b-SAS-FoodSuppl   INDIA        Control          1       14    243
Q4          6 months    ki1000304b-SAS-FoodSuppl   INDIA        Other            0      130    243
Q4          6 months    ki1000304b-SAS-FoodSuppl   INDIA        Other            1       87    243
Q1          6 months    ki1000304b-SAS-FoodSuppl   INDIA        Control          0       31     68
Q1          6 months    ki1000304b-SAS-FoodSuppl   INDIA        Control          1       33     68
Q1          6 months    ki1000304b-SAS-FoodSuppl   INDIA        Other            0        2     68
Q1          6 months    ki1000304b-SAS-FoodSuppl   INDIA        Other            1        2     68
Q3          6 months    ki1000304b-SAS-FoodSuppl   INDIA        Other            0       20     32
Q3          6 months    ki1000304b-SAS-FoodSuppl   INDIA        Other            1       12     32
Q2          6 months    ki1000304b-SAS-FoodSuppl   INDIA        Other            0        9     12
Q2          6 months    ki1000304b-SAS-FoodSuppl   INDIA        Other            1        3     12
Q2          6 months    ki1017093b-PROVIDE         BANGLADESH   Other            0       11     12
Q2          6 months    ki1017093b-PROVIDE         BANGLADESH   Other            1        1     12
Q3          6 months    ki1017093b-PROVIDE         BANGLADESH   Control          0        4     20
Q3          6 months    ki1017093b-PROVIDE         BANGLADESH   Control          1        1     20
Q3          6 months    ki1017093b-PROVIDE         BANGLADESH   Other            0       10     20
Q3          6 months    ki1017093b-PROVIDE         BANGLADESH   Other            1        5     20
Q4          6 months    ki1017093b-PROVIDE         BANGLADESH   Control          0        3      9
Q4          6 months    ki1017093b-PROVIDE         BANGLADESH   Control          1        1      9
Q4          6 months    ki1017093b-PROVIDE         BANGLADESH   Other            0        5      9
Q4          6 months    ki1017093b-PROVIDE         BANGLADESH   Other            1        0      9
Q1          6 months    ki1017093b-PROVIDE         BANGLADESH   Control          0        1      5
Q1          6 months    ki1017093b-PROVIDE         BANGLADESH   Control          1        0      5
Q1          6 months    ki1017093b-PROVIDE         BANGLADESH   Other            0        2      5
Q1          6 months    ki1017093b-PROVIDE         BANGLADESH   Other            1        2      5
Q2          24 months   ki1017093b-PROVIDE         BANGLADESH   Other            0        2      2
Q4          6 months    ki1112895-Guatemala BSC    GUATEMALA    Control          0       50    146
Q4          6 months    ki1112895-Guatemala BSC    GUATEMALA    Control          1       27    146
Q4          6 months    ki1112895-Guatemala BSC    GUATEMALA    Other            0       48    146
Q4          6 months    ki1112895-Guatemala BSC    GUATEMALA    Other            1       21    146
Q1          6 months    ki1112895-Guatemala BSC    GUATEMALA    Control          0        4     13
Q1          6 months    ki1112895-Guatemala BSC    GUATEMALA    Control          1        1     13
Q1          6 months    ki1112895-Guatemala BSC    GUATEMALA    Other            0        5     13
Q1          6 months    ki1112895-Guatemala BSC    GUATEMALA    Other            1        3     13
Q2          6 months    ki1112895-Guatemala BSC    GUATEMALA    Control          0        4     16
Q2          6 months    ki1112895-Guatemala BSC    GUATEMALA    Control          1        3     16
Q2          6 months    ki1112895-Guatemala BSC    GUATEMALA    Other            0        8     16
Q2          6 months    ki1112895-Guatemala BSC    GUATEMALA    Other            1        1     16
Q3          6 months    ki1112895-Guatemala BSC    GUATEMALA    Control          0       15     43
Q3          6 months    ki1112895-Guatemala BSC    GUATEMALA    Control          1        4     43
Q3          6 months    ki1112895-Guatemala BSC    GUATEMALA    Other            0       18     43
Q3          6 months    ki1112895-Guatemala BSC    GUATEMALA    Other            1        6     43
Q1          6 months    kiGH5241-JiVitA-4          BANGLADESH   Control          0      337   1734
Q1          6 months    kiGH5241-JiVitA-4          BANGLADESH   Control          1       92   1734
Q1          6 months    kiGH5241-JiVitA-4          BANGLADESH   LNS              0      374   1734
Q1          6 months    kiGH5241-JiVitA-4          BANGLADESH   LNS              1      116   1734
Q1          6 months    kiGH5241-JiVitA-4          BANGLADESH   Other            0      614   1734
Q1          6 months    kiGH5241-JiVitA-4          BANGLADESH   Other            1      201   1734
Q2          Birth       kiGH5241-JiVitA-4          BANGLADESH   Control          0       56    277
Q2          Birth       kiGH5241-JiVitA-4          BANGLADESH   Control          1       28    277
Q2          Birth       kiGH5241-JiVitA-4          BANGLADESH   LNS              0       49    277
Q2          Birth       kiGH5241-JiVitA-4          BANGLADESH   LNS              1       21    277
Q2          Birth       kiGH5241-JiVitA-4          BANGLADESH   Other            0       83    277
Q2          Birth       kiGH5241-JiVitA-4          BANGLADESH   Other            1       40    277
Q2          6 months    kiGH5241-JiVitA-4          BANGLADESH   Control          0      334   1593
Q2          6 months    kiGH5241-JiVitA-4          BANGLADESH   Control          1       83   1593
Q2          6 months    kiGH5241-JiVitA-4          BANGLADESH   LNS              0      331   1593
Q2          6 months    kiGH5241-JiVitA-4          BANGLADESH   LNS              1      101   1593
Q2          6 months    kiGH5241-JiVitA-4          BANGLADESH   Other            0      536   1593
Q2          6 months    kiGH5241-JiVitA-4          BANGLADESH   Other            1      208   1593
Q4          6 months    kiGH5241-JiVitA-4          BANGLADESH   Control          0       83    382
Q4          6 months    kiGH5241-JiVitA-4          BANGLADESH   Control          1       31    382
Q4          6 months    kiGH5241-JiVitA-4          BANGLADESH   LNS              0       78    382
Q4          6 months    kiGH5241-JiVitA-4          BANGLADESH   LNS              1       31    382
Q4          6 months    kiGH5241-JiVitA-4          BANGLADESH   Other            0      107    382
Q4          6 months    kiGH5241-JiVitA-4          BANGLADESH   Other            1       52    382
Q1          Birth       kiGH5241-JiVitA-4          BANGLADESH   Control          0       55    291
Q1          Birth       kiGH5241-JiVitA-4          BANGLADESH   Control          1       23    291
Q1          Birth       kiGH5241-JiVitA-4          BANGLADESH   LNS              0       53    291
Q1          Birth       kiGH5241-JiVitA-4          BANGLADESH   LNS              1       23    291
Q1          Birth       kiGH5241-JiVitA-4          BANGLADESH   Other            0      104    291
Q1          Birth       kiGH5241-JiVitA-4          BANGLADESH   Other            1       33    291
Q1          24 months   kiGH5241-JiVitA-4          BANGLADESH   Control          0       54    388
Q1          24 months   kiGH5241-JiVitA-4          BANGLADESH   Control          1       41    388
Q1          24 months   kiGH5241-JiVitA-4          BANGLADESH   LNS              0       71    388
Q1          24 months   kiGH5241-JiVitA-4          BANGLADESH   LNS              1       36    388
Q1          24 months   kiGH5241-JiVitA-4          BANGLADESH   Other            0      118    388
Q1          24 months   kiGH5241-JiVitA-4          BANGLADESH   Other            1       68    388
Q3          24 months   kiGH5241-JiVitA-4          BANGLADESH   Control          0       36    248
Q3          24 months   kiGH5241-JiVitA-4          BANGLADESH   Control          1       31    248
Q3          24 months   kiGH5241-JiVitA-4          BANGLADESH   LNS              0       39    248
Q3          24 months   kiGH5241-JiVitA-4          BANGLADESH   LNS              1       40    248
Q3          24 months   kiGH5241-JiVitA-4          BANGLADESH   Other            0       53    248
Q3          24 months   kiGH5241-JiVitA-4          BANGLADESH   Other            1       49    248
Q3          6 months    kiGH5241-JiVitA-4          BANGLADESH   Control          0      197   1089
Q3          6 months    kiGH5241-JiVitA-4          BANGLADESH   Control          1       93   1089
Q3          6 months    kiGH5241-JiVitA-4          BANGLADESH   LNS              0      220   1089
Q3          6 months    kiGH5241-JiVitA-4          BANGLADESH   LNS              1       73   1089
Q3          6 months    kiGH5241-JiVitA-4          BANGLADESH   Other            0      371   1089
Q3          6 months    kiGH5241-JiVitA-4          BANGLADESH   Other            1      135   1089
Q2          24 months   kiGH5241-JiVitA-4          BANGLADESH   Control          0       60    369
Q2          24 months   kiGH5241-JiVitA-4          BANGLADESH   Control          1       36    369
Q2          24 months   kiGH5241-JiVitA-4          BANGLADESH   LNS              0       60    369
Q2          24 months   kiGH5241-JiVitA-4          BANGLADESH   LNS              1       36    369
Q2          24 months   kiGH5241-JiVitA-4          BANGLADESH   Other            0      110    369
Q2          24 months   kiGH5241-JiVitA-4          BANGLADESH   Other            1       67    369
Q3          Birth       kiGH5241-JiVitA-4          BANGLADESH   Control          0       32    188
Q3          Birth       kiGH5241-JiVitA-4          BANGLADESH   Control          1       13    188
Q3          Birth       kiGH5241-JiVitA-4          BANGLADESH   LNS              0       39    188
Q3          Birth       kiGH5241-JiVitA-4          BANGLADESH   LNS              1       22    188
Q3          Birth       kiGH5241-JiVitA-4          BANGLADESH   Other            0       58    188
Q3          Birth       kiGH5241-JiVitA-4          BANGLADESH   Other            1       24    188
Q4          24 months   kiGH5241-JiVitA-4          BANGLADESH   Control          0       14     91
Q4          24 months   kiGH5241-JiVitA-4          BANGLADESH   Control          1       14     91
Q4          24 months   kiGH5241-JiVitA-4          BANGLADESH   LNS              0       14     91
Q4          24 months   kiGH5241-JiVitA-4          BANGLADESH   LNS              1        7     91
Q4          24 months   kiGH5241-JiVitA-4          BANGLADESH   Other            0       20     91
Q4          24 months   kiGH5241-JiVitA-4          BANGLADESH   Other            1       22     91
Q4          Birth       kiGH5241-JiVitA-4          BANGLADESH   Control          0       12     66
Q4          Birth       kiGH5241-JiVitA-4          BANGLADESH   Control          1        5     66
Q4          Birth       kiGH5241-JiVitA-4          BANGLADESH   LNS              0       12     66
Q4          Birth       kiGH5241-JiVitA-4          BANGLADESH   LNS              1        8     66
Q4          Birth       kiGH5241-JiVitA-4          BANGLADESH   Other            0       22     66
Q4          Birth       kiGH5241-JiVitA-4          BANGLADESH   Other            1        7     66


The following strata were considered:

* perdiar24: Q1, agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* perdiar24: Q1, agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* perdiar24: Q1, agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* perdiar24: Q1, agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* perdiar24: Q1, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* perdiar24: Q1, agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* perdiar24: Q1, agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* perdiar24: Q1, agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* perdiar24: Q2, agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* perdiar24: Q2, agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* perdiar24: Q2, agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* perdiar24: Q2, agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* perdiar24: Q2, agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* perdiar24: Q2, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* perdiar24: Q2, agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* perdiar24: Q2, agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* perdiar24: Q2, agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* perdiar24: Q3, agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* perdiar24: Q3, agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* perdiar24: Q3, agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* perdiar24: Q3, agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* perdiar24: Q3, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* perdiar24: Q3, agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* perdiar24: Q3, agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* perdiar24: Q3, agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* perdiar24: Q4, agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* perdiar24: Q4, agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* perdiar24: Q4, agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* perdiar24: Q4, agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* perdiar24: Q4, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* perdiar24: Q4, agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* perdiar24: Q4, agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* perdiar24: Q4, agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* perdiar24: Q3, agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* perdiar24: Q2, agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* perdiar24: Q4, agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* perdiar24: Q3, agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* perdiar24: Q1, agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* perdiar24: Q2, agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* perdiar24: Q4, agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* perdiar24: Q1, agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* perdiar24: Q2, agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* perdiar24: Q2, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* perdiar24: Q3, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* perdiar24: Q4, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* perdiar24: Q1, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* perdiar24: Q2, agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* perdiar24: Q1, agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* perdiar24: Q2, agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* perdiar24: Q3, agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
##          stunted
## tr         0  1
##   Control  0  0
##   LNS      0  0
##   Other   20 12
```




# Results Detail

## Results Plots
![](/tmp/340a5acf-1ebf-477a-b92a-1feb9b5b84ef/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/340a5acf-1ebf-477a-b92a-1feb9b5b84ef/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/340a5acf-1ebf-477a-b92a-1feb9b5b84ef/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/340a5acf-1ebf-477a-b92a-1feb9b5b84ef/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


perdiar24   agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Q1          Birth       kiGH5241-JiVitA-4          BANGLADESH   Control              NA                0.2948718   0.1842474   0.4054962
Q1          Birth       kiGH5241-JiVitA-4          BANGLADESH   LNS                  NA                0.3026316   0.1933969   0.4118663
Q1          Birth       kiGH5241-JiVitA-4          BANGLADESH   Other                NA                0.2408759   0.1653259   0.3164259
Q1          6 months    kiGH5241-JiVitA-4          BANGLADESH   Control              NA                0.2144522   0.1611412   0.2677633
Q1          6 months    kiGH5241-JiVitA-4          BANGLADESH   LNS                  NA                0.2367347   0.1882494   0.2852200
Q1          6 months    kiGH5241-JiVitA-4          BANGLADESH   Other                NA                0.2466258   0.2118448   0.2814068
Q1          24 months   ki1000304-Vitamin-B12      INDIA        Control              NA                0.4666667   0.2112114   0.7221219
Q1          24 months   ki1000304-Vitamin-B12      INDIA        Other                NA                0.5000000   0.3126090   0.6873910
Q1          24 months   kiGH5241-JiVitA-4          BANGLADESH   Control              NA                0.4315789   0.3165486   0.5466093
Q1          24 months   kiGH5241-JiVitA-4          BANGLADESH   LNS                  NA                0.3364486   0.2377645   0.4351327
Q1          24 months   kiGH5241-JiVitA-4          BANGLADESH   Other                NA                0.3655914   0.2913835   0.4397993
Q2          Birth       kiGH5241-JiVitA-4          BANGLADESH   Control              NA                0.3333333   0.2373206   0.4293461
Q2          Birth       kiGH5241-JiVitA-4          BANGLADESH   LNS                  NA                0.3000000   0.1885412   0.4114588
Q2          Birth       kiGH5241-JiVitA-4          BANGLADESH   Other                NA                0.3252033   0.2316838   0.4187227
Q2          6 months    kiGH5241-JiVitA-4          BANGLADESH   Control              NA                0.1990408   0.1510211   0.2470605
Q2          6 months    kiGH5241-JiVitA-4          BANGLADESH   LNS                  NA                0.2337963   0.1852208   0.2823718
Q2          6 months    kiGH5241-JiVitA-4          BANGLADESH   Other                NA                0.2795699   0.2401177   0.3190221
Q2          24 months   kiGH5241-JiVitA-4          BANGLADESH   Control              NA                0.3750000   0.2682035   0.4817965
Q2          24 months   kiGH5241-JiVitA-4          BANGLADESH   LNS                  NA                0.3750000   0.2683142   0.4816858
Q2          24 months   kiGH5241-JiVitA-4          BANGLADESH   Other                NA                0.3785311   0.3014782   0.4555839
Q3          Birth       kiGH5241-JiVitA-4          BANGLADESH   Control              NA                0.2888889   0.1377588   0.4400189
Q3          Birth       kiGH5241-JiVitA-4          BANGLADESH   LNS                  NA                0.3606557   0.2441290   0.4771825
Q3          Birth       kiGH5241-JiVitA-4          BANGLADESH   Other                NA                0.2926829   0.1899506   0.3954152
Q3          6 months    kiGH5241-JiVitA-4          BANGLADESH   Control              NA                0.3206897   0.2509711   0.3904082
Q3          6 months    kiGH5241-JiVitA-4          BANGLADESH   LNS                  NA                0.2491468   0.1982570   0.3000365
Q3          6 months    kiGH5241-JiVitA-4          BANGLADESH   Other                NA                0.2667984   0.2222847   0.3113122
Q3          24 months   kiGH5241-JiVitA-4          BANGLADESH   Control              NA                0.4626866   0.3359964   0.5893767
Q3          24 months   kiGH5241-JiVitA-4          BANGLADESH   LNS                  NA                0.5063291   0.3951065   0.6175517
Q3          24 months   kiGH5241-JiVitA-4          BANGLADESH   Other                NA                0.4803922   0.3763218   0.5844626
Q4          Birth       kiGH5241-JiVitA-4          BANGLADESH   Control              NA                0.2941176   0.0725884   0.5156469
Q4          Birth       kiGH5241-JiVitA-4          BANGLADESH   LNS                  NA                0.4000000   0.1619029   0.6380971
Q4          Birth       kiGH5241-JiVitA-4          BANGLADESH   Other                NA                0.2413793   0.0977777   0.3849809
Q4          6 months    ki1000304b-SAS-FoodSuppl   INDIA        Control              NA                0.5384615   0.3464452   0.7304779
Q4          6 months    ki1000304b-SAS-FoodSuppl   INDIA        Other                NA                0.4009217   0.3355807   0.4662626
Q4          6 months    ki1112895-Guatemala BSC    GUATEMALA    Control              NA                0.3506494   0.2437017   0.4575970
Q4          6 months    ki1112895-Guatemala BSC    GUATEMALA    Other                NA                0.3043478   0.1954054   0.4132903
Q4          6 months    kiGH5241-JiVitA-4          BANGLADESH   Control              NA                0.2719298   0.1848002   0.3590594
Q4          6 months    kiGH5241-JiVitA-4          BANGLADESH   LNS                  NA                0.2844037   0.1938225   0.3749848
Q4          6 months    kiGH5241-JiVitA-4          BANGLADESH   Other                NA                0.3270440   0.2394362   0.4146519
Q4          24 months   kiGH5241-JiVitA-4          BANGLADESH   Control              NA                0.5000000   0.3037324   0.6962676
Q4          24 months   kiGH5241-JiVitA-4          BANGLADESH   LNS                  NA                0.3333333   0.1025444   0.5641223
Q4          24 months   kiGH5241-JiVitA-4          BANGLADESH   Other                NA                0.5238095   0.3724639   0.6751552


### Parameter: E(Y)


perdiar24   agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Q1          Birth       kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.2714777   0.2168416   0.3261137
Q1          6 months    kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.2358708   0.2107720   0.2609696
Q1          24 months   ki1000304-Vitamin-B12      INDIA        NA                   NA                0.4883721   0.3371985   0.6395457
Q1          24 months   kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.3737113   0.3206788   0.4267439
Q2          Birth       kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.3212996   0.2632280   0.3793712
Q2          6 months    kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.2460766   0.2200979   0.2720553
Q2          24 months   kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.3766938   0.3227477   0.4306399
Q3          Birth       kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.3138298   0.2448860   0.3827736
Q3          6 months    kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.2764004   0.2451462   0.3076546
Q3          24 months   kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.4838710   0.4186244   0.5491175
Q4          Birth       kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.3030303   0.1893679   0.4166927
Q4          6 months    ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                0.4156379   0.3535454   0.4777303
Q4          6 months    ki1112895-Guatemala BSC    GUATEMALA    NA                   NA                0.3287671   0.2523053   0.4052290
Q4          6 months    kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.2984293   0.2466490   0.3502096
Q4          24 months   kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.4725275   0.3644214   0.5806336


### Parameter: RR


perdiar24   agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Q1          Birth       kiGH5241-JiVitA-4          BANGLADESH   Control              Control           1.0000000   1.0000000   1.000000
Q1          Birth       kiGH5241-JiVitA-4          BANGLADESH   LNS                  Control           1.0263158   0.6098644   1.727145
Q1          Birth       kiGH5241-JiVitA-4          BANGLADESH   Other                Control           0.8168835   0.5010287   1.331857
Q1          6 months    kiGH5241-JiVitA-4          BANGLADESH   Control              Control           1.0000000   1.0000000   1.000000
Q1          6 months    kiGH5241-JiVitA-4          BANGLADESH   LNS                  Control           1.1039042   0.7999102   1.523427
Q1          6 months    kiGH5241-JiVitA-4          BANGLADESH   Other                Control           1.1500267   0.8641390   1.530496
Q1          24 months   ki1000304-Vitamin-B12      INDIA        Control              Control           1.0000000   1.0000000   1.000000
Q1          24 months   ki1000304-Vitamin-B12      INDIA        Other                Control           1.0714286   0.5518842   2.080073
Q1          24 months   kiGH5241-JiVitA-4          BANGLADESH   Control              Control           1.0000000   1.0000000   1.000000
Q1          24 months   kiGH5241-JiVitA-4          BANGLADESH   LNS                  Control           0.7795760   0.5244674   1.158773
Q1          24 months   kiGH5241-JiVitA-4          BANGLADESH   Other                Control           0.8471020   0.6059852   1.184157
Q2          Birth       kiGH5241-JiVitA-4          BANGLADESH   Control              Control           1.0000000   1.0000000   1.000000
Q2          Birth       kiGH5241-JiVitA-4          BANGLADESH   LNS                  Control           0.9000000   0.5624374   1.440160
Q2          Birth       kiGH5241-JiVitA-4          BANGLADESH   Other                Control           0.9756098   0.6494130   1.465653
Q2          6 months    kiGH5241-JiVitA-4          BANGLADESH   Control              Control           1.0000000   1.0000000   1.000000
Q2          6 months    kiGH5241-JiVitA-4          BANGLADESH   LNS                  Control           1.1746151   0.8542703   1.615087
Q2          6 months    kiGH5241-JiVitA-4          BANGLADESH   Other                Control           1.4045861   1.0621462   1.857430
Q2          24 months   kiGH5241-JiVitA-4          BANGLADESH   Control              Control           1.0000000   1.0000000   1.000000
Q2          24 months   kiGH5241-JiVitA-4          BANGLADESH   LNS                  Control           1.0000000   0.6686591   1.495530
Q2          24 months   kiGH5241-JiVitA-4          BANGLADESH   Other                Control           1.0094162   0.7113905   1.432295
Q3          Birth       kiGH5241-JiVitA-4          BANGLADESH   Control              Control           1.0000000   1.0000000   1.000000
Q3          Birth       kiGH5241-JiVitA-4          BANGLADESH   LNS                  Control           1.2484237   0.6749775   2.309057
Q3          Birth       kiGH5241-JiVitA-4          BANGLADESH   Other                Control           1.0131332   0.5396234   1.902139
Q3          6 months    kiGH5241-JiVitA-4          BANGLADESH   Control              Control           1.0000000   1.0000000   1.000000
Q3          6 months    kiGH5241-JiVitA-4          BANGLADESH   LNS                  Control           0.7769092   0.5766777   1.046664
Q3          6 months    kiGH5241-JiVitA-4          BANGLADESH   Other                Control           0.8319521   0.6325891   1.094145
Q3          24 months   kiGH5241-JiVitA-4          BANGLADESH   Control              Control           1.0000000   1.0000000   1.000000
Q3          24 months   kiGH5241-JiVitA-4          BANGLADESH   LNS                  Control           1.0943242   0.7702202   1.554809
Q3          24 months   kiGH5241-JiVitA-4          BANGLADESH   Other                Control           1.0382669   0.7321020   1.472470
Q4          Birth       kiGH5241-JiVitA-4          BANGLADESH   Control              Control           1.0000000   1.0000000   1.000000
Q4          Birth       kiGH5241-JiVitA-4          BANGLADESH   LNS                  Control           1.3600000   0.5206883   3.552221
Q4          Birth       kiGH5241-JiVitA-4          BANGLADESH   Other                Control           0.8206897   0.3143317   2.142741
Q4          6 months    ki1000304b-SAS-FoodSuppl   INDIA        Control              Control           1.0000000   1.0000000   1.000000
Q4          6 months    ki1000304b-SAS-FoodSuppl   INDIA        Other                Control           0.7445688   0.5030683   1.102003
Q4          6 months    ki1112895-Guatemala BSC    GUATEMALA    Control              Control           1.0000000   1.0000000   1.000000
Q4          6 months    ki1112895-Guatemala BSC    GUATEMALA    Other                Control           0.8679549   0.5423266   1.389100
Q4          6 months    kiGH5241-JiVitA-4          BANGLADESH   Control              Control           1.0000000   1.0000000   1.000000
Q4          6 months    kiGH5241-JiVitA-4          BANGLADESH   LNS                  Control           1.0458716   0.6657019   1.643149
Q4          6 months    kiGH5241-JiVitA-4          BANGLADESH   Other                Control           1.2026780   0.7920955   1.826086
Q4          24 months   kiGH5241-JiVitA-4          BANGLADESH   Control              Control           1.0000000   1.0000000   1.000000
Q4          24 months   kiGH5241-JiVitA-4          BANGLADESH   LNS                  Control           0.6666667   0.3007835   1.477622
Q4          24 months   kiGH5241-JiVitA-4          BANGLADESH   Other                Control           1.0476190   0.6434652   1.705618


### Parameter: PAR


perdiar24   agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Q1          Birth       kiGH5241-JiVitA-4          BANGLADESH   Control              NA                -0.0233941   -0.1162571   0.0694689
Q1          6 months    kiGH5241-JiVitA-4          BANGLADESH   Control              NA                 0.0214186   -0.0240443   0.0668815
Q1          24 months   ki1000304-Vitamin-B12      INDIA        Control              NA                 0.0217054   -0.1846497   0.2280605
Q1          24 months   kiGH5241-JiVitA-4          BANGLADESH   Control              NA                -0.0578676   -0.1558291   0.0400939
Q2          Birth       kiGH5241-JiVitA-4          BANGLADESH   Control              NA                -0.0120337   -0.0957014   0.0716340
Q2          6 months    kiGH5241-JiVitA-4          BANGLADESH   Control              NA                 0.0470358    0.0048091   0.0892626
Q2          24 months   kiGH5241-JiVitA-4          BANGLADESH   Control              NA                 0.0016938   -0.0897995   0.0931870
Q3          Birth       kiGH5241-JiVitA-4          BANGLADESH   Control              NA                 0.0249409   -0.1040906   0.1539724
Q3          6 months    kiGH5241-JiVitA-4          BANGLADESH   Control              NA                -0.0442893   -0.1011127   0.0125341
Q3          24 months   kiGH5241-JiVitA-4          BANGLADESH   Control              NA                 0.0211844   -0.0866659   0.1290347
Q4          Birth       kiGH5241-JiVitA-4          BANGLADESH   Control              NA                 0.0089127   -0.1827132   0.2005385
Q4          6 months    ki1000304b-SAS-FoodSuppl   INDIA        Control              NA                -0.1228237   -0.3040302   0.0583829
Q4          6 months    ki1112895-Guatemala BSC    GUATEMALA    Control              NA                -0.0218822   -0.0941296   0.0503652
Q4          6 months    kiGH5241-JiVitA-4          BANGLADESH   Control              NA                 0.0264995   -0.0492916   0.1022906
Q4          24 months   kiGH5241-JiVitA-4          BANGLADESH   Control              NA                -0.0274725   -0.1902690   0.1353239


### Parameter: PAF


perdiar24   agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Q1          Birth       kiGH5241-JiVitA-4          BANGLADESH   Control              NA                -0.0861733   -0.4873586   0.2068002
Q1          6 months    kiGH5241-JiVitA-4          BANGLADESH   Control              NA                 0.0908065   -0.1249505   0.2651829
Q1          24 months   ki1000304-Vitamin-B12      INDIA        Control              NA                 0.0444444   -0.4872374   0.3860520
Q1          24 months   kiGH5241-JiVitA-4          BANGLADESH   Control              NA                -0.1548457   -0.4480820   0.0790103
Q2          Birth       kiGH5241-JiVitA-4          BANGLADESH   Control              NA                -0.0374532   -0.3345982   0.1935332
Q2          6 months    kiGH5241-JiVitA-4          BANGLADESH   Control              NA                 0.1911430    0.0002446   0.3455903
Q2          24 months   kiGH5241-JiVitA-4          BANGLADESH   Control              NA                 0.0044964   -0.2705940   0.2200282
Q3          Birth       kiGH5241-JiVitA-4          BANGLADESH   Control              NA                 0.0794727   -0.4416241   0.4122112
Q3          6 months    kiGH5241-JiVitA-4          BANGLADESH   Control              NA                -0.1602360   -0.3821077   0.0260183
Q3          24 months   kiGH5241-JiVitA-4          BANGLADESH   Control              NA                 0.0437811   -0.2074129   0.2427159
Q4          Birth       kiGH5241-JiVitA-4          BANGLADESH   Control              NA                 0.0294118   -0.8619548   0.4940578
Q4          6 months    ki1000304b-SAS-FoodSuppl   INDIA        Control              NA                -0.2955065   -0.8164413   0.0760301
Q4          6 months    ki1112895-Guatemala BSC    GUATEMALA    Control              NA                -0.0665584   -0.3106181   0.1320531
Q4          6 months    kiGH5241-JiVitA-4          BANGLADESH   Control              NA                 0.0887966   -0.2025449   0.3095545
Q4          24 months   kiGH5241-JiVitA-4          BANGLADESH   Control              NA                -0.0581395   -0.4655482   0.2360134
