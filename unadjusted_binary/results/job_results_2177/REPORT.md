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

**Intervention Variable:** safeh20

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        safeh20    ever_stunted   n_cell       n
------------  -------------------------  -----------------------------  --------  -------------  -------  ------
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                     0      203     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                     1       39     242
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                     0      131     142
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                     1       11     142
0-6 months    ki0047075b-MAL-ED          INDIA                          0                     0      196     235
0-6 months    ki0047075b-MAL-ED          INDIA                          0                     1       39     235
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                     0      206     233
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                     1       26     233
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                     0        1     233
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                     1        0     233
0-6 months    ki0047075b-MAL-ED          PERU                           0                     0      219     259
0-6 months    ki0047075b-MAL-ED          PERU                           0                     1       29     259
0-6 months    ki0047075b-MAL-ED          PERU                           1                     0       10     259
0-6 months    ki0047075b-MAL-ED          PERU                           1                     1        1     259
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                     0      195     254
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                     1       21     254
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                     0       35     254
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                     1        3     254
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     0       61     249
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     1       18     249
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0      149     249
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1       21     249
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                     0      257     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                     1      159     416
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0                     0        0     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0                     1        2     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                     0      530     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                     1       97     629
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                     0      632     698
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                     1       66     698
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                     0      653     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                     1      105     758
0-6 months    ki1114097-CONTENT          PERU                           0                     0        3      57
0-6 months    ki1114097-CONTENT          PERU                           0                     1        0      57
0-6 months    ki1114097-CONTENT          PERU                           1                     0       52      57
0-6 months    ki1114097-CONTENT          PERU                           1                     1        2      57
0-6 months    ki1148112-LCNI-5           MALAWI                         0                     0       34     269
0-6 months    ki1148112-LCNI-5           MALAWI                         0                     1       22     269
0-6 months    ki1148112-LCNI-5           MALAWI                         1                     0      140     269
0-6 months    ki1148112-LCNI-5           MALAWI                         1                     1       73     269
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                     0       23   27144
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                     1       20   27144
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                     0    18382   27144
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                     1     8719   27144
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                     0        1    5117
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                     1        0    5117
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                     0     3650    5117
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                     1     1466    5117
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                     0      122     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                     1       73     195
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                     0      132     139
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                     1        7     139
6-24 months   ki0047075b-MAL-ED          INDIA                          0                     0      128     194
6-24 months   ki0047075b-MAL-ED          INDIA                          0                     1       66     194
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                     0      184     221
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                     1       36     221
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                     0        1     221
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                     1        0     221
6-24 months   ki0047075b-MAL-ED          PERU                           0                     0      142     221
6-24 months   ki0047075b-MAL-ED          PERU                           0                     1       70     221
6-24 months   ki0047075b-MAL-ED          PERU                           1                     0        8     221
6-24 months   ki0047075b-MAL-ED          PERU                           1                     1        1     221
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                     0      137     220
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                     1       53     220
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     0       25     220
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     1        5     220
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     0       20     187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     1       38     187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0       51     187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1       78     187
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                     0       99     226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                     1      127     226
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                     0        1     420
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                     1        1     420
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                     0      230     420
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                     1      188     420
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                     0      377     495
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                     1      118     495
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                     0      503     620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                     1      117     620
6-24 months   ki1114097-CONTENT          PERU                           0                     0        3      56
6-24 months   ki1114097-CONTENT          PERU                           0                     1        0      56
6-24 months   ki1114097-CONTENT          PERU                           1                     0       49      56
6-24 months   ki1114097-CONTENT          PERU                           1                     1        4      56
6-24 months   ki1148112-LCNI-5           MALAWI                         0                     0       73     579
6-24 months   ki1148112-LCNI-5           MALAWI                         0                     1       29     579
6-24 months   ki1148112-LCNI-5           MALAWI                         1                     0      326     579
6-24 months   ki1148112-LCNI-5           MALAWI                         1                     1      151     579
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                     0        9   13298
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                     1        4   13298
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     0    10669   13298
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     1     2616   13298
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                     0        1    4306
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                     1        0    4306
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                     0     3033    4306
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                     1     1272    4306
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                     0      117     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                     1      125     242
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                     0      124     142
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                     1       18     142
0-24 months   ki0047075b-MAL-ED          INDIA                          0                     0      112     235
0-24 months   ki0047075b-MAL-ED          INDIA                          0                     1      123     235
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                     0      175     233
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                     1       57     233
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                     0        1     233
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                     1        0     233
0-24 months   ki0047075b-MAL-ED          PERU                           0                     0      127     259
0-24 months   ki0047075b-MAL-ED          PERU                           0                     1      121     259
0-24 months   ki0047075b-MAL-ED          PERU                           1                     0        7     259
0-24 months   ki0047075b-MAL-ED          PERU                           1                     1        4     259
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                     0      120     254
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                     1       96     254
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     0       24     254
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     1       14     254
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     0       21     249
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     1       58     249
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0       51     249
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1      119     249
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                     0      106     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                     1      312     418
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                     0        0     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                     1        2     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                     0      286     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                     1      341     629
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                     0      436     698
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                     1      262     698
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                     0      464     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                     1      294     758
0-24 months   ki1114097-CONTENT          PERU                           0                     0        3      57
0-24 months   ki1114097-CONTENT          PERU                           0                     1        0      57
0-24 months   ki1114097-CONTENT          PERU                           1                     0       46      57
0-24 months   ki1114097-CONTENT          PERU                           1                     1        8      57
0-24 months   ki1148112-LCNI-5           MALAWI                         0                     0       64     817
0-24 months   ki1148112-LCNI-5           MALAWI                         0                     1       80     817
0-24 months   ki1148112-LCNI-5           MALAWI                         1                     0      285     817
0-24 months   ki1148112-LCNI-5           MALAWI                         1                     1      388     817
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                     0       21   27210
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                     1       23   27210
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     0    15112   27210
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     1    12054   27210
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                     0        1    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                     1        0    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                     0     2537    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                     1     2888    5426


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
##        ever_stunted
## safeh20   0   1
##       0 117 125
##       1   0   0
##        ever_stunted
## safeh20   0   1
##       0 124  18
##       1   0   0
##        ever_stunted
## safeh20   0   1
##       0 112 123
##       1   0   0
##        ever_stunted
## safeh20   0   1
##       0   0   0
##       1 106 312
##        ever_stunted
## safeh20   0   1
##       0   0   0
##       1 436 262
##        ever_stunted
## safeh20   0   1
##       0   0   0
##       1 464 294
##        ever_stunted
## safeh20   0   1
##       0 203  39
##       1   0   0
##        ever_stunted
## safeh20   0   1
##       0 131  11
##       1   0   0
##        ever_stunted
## safeh20   0   1
##       0 196  39
##       1   0   0
##        ever_stunted
## safeh20   0   1
##       0   0   0
##       1 257 159
##        ever_stunted
## safeh20   0   1
##       0   0   0
##       1 632  66
##        ever_stunted
## safeh20   0   1
##       0   0   0
##       1 653 105
##        ever_stunted
## safeh20   0   1
##       0 122  73
##       1   0   0
##        ever_stunted
## safeh20   0   1
##       0 132   7
##       1   0   0
##        ever_stunted
## safeh20   0   1
##       0 128  66
##       1   0   0
##        ever_stunted
## safeh20   0   1
##       0   0   0
##       1  99 127
##        ever_stunted
## safeh20   0   1
##       0   0   0
##       1 377 118
##        ever_stunted
## safeh20   0   1
##       0   0   0
##       1 503 117
```




# Results Detail

## Results Plots
![](/tmp/257a471d-83aa-4d81-b78e-d372ac877074/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/257a471d-83aa-4d81-b78e-d372ac877074/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/257a471d-83aa-4d81-b78e-d372ac877074/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/257a471d-83aa-4d81-b78e-d372ac877074/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid             country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                0.4444444   0.3780472   0.5108417
0-24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                0.3684211   0.2147476   0.5220945
0-24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7341772   0.6365648   0.8317896
0-24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7000000   0.6309749   0.7690251
0-24 months   ki1148112-LCNI-5    MALAWI                         0                    NA                0.5555556   0.4743463   0.6367648
0-24 months   ki1148112-LCNI-5    MALAWI                         1                    NA                0.5765230   0.5391697   0.6138764
0-24 months   kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                0.5227273   0.3712133   0.6742412
0-24 months   kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                0.4437164   0.4362005   0.4512324
0-6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2278481   0.1351689   0.3205273
0-6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1235294   0.0739671   0.1730917
0-6 months    ki1148112-LCNI-5    MALAWI                         0                    NA                0.3928571   0.2647051   0.5210092
0-6 months    ki1148112-LCNI-5    MALAWI                         1                    NA                0.3427230   0.2788654   0.4065806
0-6 months    kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                0.4651163   0.3043983   0.6258342
0-6 months    kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                0.3217224   0.3149667   0.3284782
6-24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                0.2789474   0.2150320   0.3428627
6-24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                0.1666667   0.0330039   0.3003294
6-24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.6551724   0.5325197   0.7778251
6-24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.6046512   0.5200531   0.6892492
6-24 months   ki1148112-LCNI-5    MALAWI                         0                    NA                0.2843137   0.1966977   0.3719298
6-24 months   ki1148112-LCNI-5    MALAWI                         1                    NA                0.3165618   0.2747843   0.3583394


### Parameter: E(Y)


agecat        studyid             country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   NA                   NA                0.4330709   0.3720144   0.4941273
0-24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7108434   0.6544178   0.7672689
0-24 months   ki1148112-LCNI-5    MALAWI                         NA                   NA                0.5728274   0.5388870   0.6067678
0-24 months   kiGH5241-JiVitA-3   BANGLADESH                     NA                   NA                0.4438442   0.4363209   0.4513674
0-6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1566265   0.1113925   0.2018605
0-6 months    ki1148112-LCNI-5    MALAWI                         NA                   NA                0.3531599   0.2959376   0.4103821
0-6 months    kiGH5241-JiVitA-3   BANGLADESH                     NA                   NA                0.3219496   0.3151876   0.3287116
6-24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   NA                   NA                0.2636364   0.2052818   0.3219909
6-24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6203209   0.5505766   0.6900651
6-24 months   ki1148112-LCNI-5    MALAWI                         NA                   NA                0.3108808   0.2731472   0.3486144


### Parameter: RR


agecat        studyid             country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    0                 0.8289474   0.5322410   1.2910575
0-24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.9534483   0.8079940   1.1250871
0-24 months   ki1148112-LCNI-5    MALAWI                         0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5    MALAWI                         1                    0                 1.0377415   0.8844005   1.2176693
0-24 months   kiGH5241-JiVitA-3   BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3   BANGLADESH                     1                    0                 0.8488488   0.6355799   1.1336800
0-6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.5421569   0.3061930   0.9599633
0-6 months    ki1148112-LCNI-5    MALAWI                         0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1148112-LCNI-5    MALAWI                         1                    0                 0.8723858   0.5991809   1.2701624
0-6 months    kiGH5241-JiVitA-3   BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3   BANGLADESH                     1                    0                 0.6917033   0.4895856   0.9772620
6-24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    0                 0.5974843   0.2594752   1.3758056
6-24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.9228886   0.7305484   1.1658685
6-24 months   ki1148112-LCNI-5    MALAWI                         0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1148112-LCNI-5    MALAWI                         1                    0                 1.1134244   0.7962865   1.5568693


### Parameter: PAR


agecat        studyid             country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                -0.0113736   -0.0366402   0.0138930
0-24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0233338   -0.1049796   0.0583119
0-24 months   ki1148112-LCNI-5    MALAWI                         0                    NA                 0.0172719   -0.0563631   0.0909068
0-24 months   kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                -0.0788831   -0.2298980   0.0721318
0-6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0712216   -0.1432301   0.0007869
0-6 months    ki1148112-LCNI-5    MALAWI                         0                    NA                -0.0396973   -0.1530971   0.0737026
0-6 months    kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                -0.1431667   -0.3035956   0.0172622
6-24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                -0.0153110   -0.0361490   0.0055270
6-24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0348516   -0.1376914   0.0679883
6-24 months   ki1148112-LCNI-5    MALAWI                         0                    NA                 0.0265671   -0.0534060   0.1065402


### Parameter: PAF


agecat        studyid             country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                -0.0262626   -0.0863664    0.0305159
0-24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0328256   -0.1544478    0.0759836
0-24 months   ki1148112-LCNI-5    MALAWI                         0                    NA                 0.0301519   -0.1073254    0.1505611
0-24 months   kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                -0.1777270   -0.5720641    0.1176944
0-6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.4547225   -0.9835123   -0.0669041
0-6 months    ki1148112-LCNI-5    MALAWI                         0                    NA                -0.1124060   -0.4847985    0.1665892
0-6 months    kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                -0.4446866   -1.0395612   -0.0233179
6-24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                -0.0580762   -0.1398706    0.0178488
6-24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0561831   -0.2360325    0.0974972
6-24 months   ki1148112-LCNI-5    MALAWI                         0                    NA                 0.0854575   -0.2115656    0.3096635
