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

**Intervention Variable:** safeh20

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_nrooms
* W_nchldlt5
* W_parity
* impfloor
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_nrooms
* delta_W_nchldlt5
* delta_W_parity
* delta_impfloor
* delta_impsan

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
![](/tmp/caa2ba87-d1cf-4877-ba5c-4282fe7380ba/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/caa2ba87-d1cf-4877-ba5c-4282fe7380ba/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/caa2ba87-d1cf-4877-ba5c-4282fe7380ba/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/caa2ba87-d1cf-4877-ba5c-4282fe7380ba/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid             country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                0.4429743   0.3782083   0.5077403
0-24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                0.3775872   0.2449427   0.5102317
0-24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.8035913   0.7188118   0.8883707
0-24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7058486   0.6386344   0.7730627
0-24 months   ki1148112-LCNI-5    MALAWI                         0                    NA                0.5739033   0.5069995   0.6408071
0-24 months   ki1148112-LCNI-5    MALAWI                         1                    NA                0.5767749   0.5403308   0.6132190
0-24 months   kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                0.4768216   0.4205403   0.5331028
0-24 months   kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                0.4436728   0.4361556   0.4511901
0-6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1742205   0.0858944   0.2625467
0-6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1137314   0.0644729   0.1629900
0-6 months    ki1148112-LCNI-5    MALAWI                         0                    NA                0.3048991   0.2030606   0.4067375
0-6 months    ki1148112-LCNI-5    MALAWI                         1                    NA                0.3413169   0.2790809   0.4035529
0-6 months    kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                0.6976276   0.6376626   0.7575925
0-6 months    kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                0.3217110   0.3149547   0.3284673
6-24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                0.3032582   0.2400762   0.3664403
6-24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                0.7669267   0.6809823   0.8528710
6-24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.6009986   0.4952960   0.7067013
6-24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.5811838   0.4996169   0.6627506
6-24 months   ki1148112-LCNI-5    MALAWI                         0                    NA                0.2902253   0.2070033   0.3734473
6-24 months   ki1148112-LCNI-5    MALAWI                         1                    NA                0.3153816   0.2741053   0.3566579


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
0-24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    0                 0.8523909   0.5925266   1.2262237
0-24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.8783676   0.7636127   1.0103677
0-24 months   ki1148112-LCNI-5    MALAWI                         0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5    MALAWI                         1                    0                 1.0050037   0.8854076   1.1407541
0-24 months   kiGH5241-JiVitA-3   BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3   BANGLADESH                     1                    0                 0.9304798   0.8271616   1.0467033
0-6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.6528015   0.3361631   1.2676877
0-6 months    ki1148112-LCNI-5    MALAWI                         0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1148112-LCNI-5    MALAWI                         1                    0                 1.1194425   0.7720307   1.6231885
0-6 months    kiGH5241-JiVitA-3   BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3   BANGLADESH                     1                    0                 0.4611501   0.4224841   0.5033548
6-24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    0                 2.5289556   1.9917588   3.2110397
6-24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.9670301   0.7779553   1.2020578
6-24 months   ki1148112-LCNI-5    MALAWI                         0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1148112-LCNI-5    MALAWI                         1                    0                 1.0866785   0.7973387   1.4810146


### Parameter: PAR


agecat        studyid             country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                -0.0099034   -0.0312858    0.0114790
0-24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0927479   -0.1638882   -0.0216076
0-24 months   ki1148112-LCNI-5    MALAWI                         0                    NA                -0.0010759   -0.0601623    0.0580105
0-24 months   kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                -0.0329774   -0.0888938    0.0229390
0-6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0175940   -0.0855628    0.0503747
0-6 months    ki1148112-LCNI-5    MALAWI                         0                    NA                 0.0482608   -0.0406701    0.1371917
0-6 months    kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                -0.3756780   -0.4355166   -0.3158393
6-24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                -0.0396219   -0.0632037   -0.0160401
6-24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0193222   -0.0678315    0.1064760
6-24 months   ki1148112-LCNI-5    MALAWI                         0                    NA                 0.0206555   -0.0544333    0.0957443


### Parameter: PAF


agecat        studyid             country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                -0.0228679   -0.0735509    0.0254224
0-24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1304759   -0.2371762   -0.0329779
0-24 months   ki1148112-LCNI-5    MALAWI                         0                    NA                -0.0018782   -0.1105290    0.0961425
0-24 months   kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                -0.0742995   -0.2079993    0.0446026
0-6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1123312   -0.6360232    0.2437267
0-6 months    ki1148112-LCNI-5    MALAWI                         0                    NA                 0.1366543   -0.1546683    0.3544762
0-6 months    kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                -1.1668844   -1.3637050   -0.9864526
6-24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                -0.1502899   -0.2494168   -0.0590276
6-24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0311488   -0.1196686    0.1616513
6-24 months   ki1148112-LCNI-5    MALAWI                         0                    NA                 0.0664419   -0.2091412    0.2792151
