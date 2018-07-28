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

**Intervention Variable:** earlybf

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* vagbrth
* W_birthwt
* W_birthlen
* W_nrooms
* W_nchldlt5
* brthmon
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_vagbrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_W_nchldlt5
* delta_brthmon
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                   country                        earlybf    ever_stunted   n_cell       n
------------  ------------------------  -----------------------------  --------  -------------  -------  ------
0-6 months    ki0047075b-MAL-ED         BANGLADESH                     0                     0       78     264
0-6 months    ki0047075b-MAL-ED         BANGLADESH                     0                     1       23     264
0-6 months    ki0047075b-MAL-ED         BANGLADESH                     1                     0      138     264
0-6 months    ki0047075b-MAL-ED         BANGLADESH                     1                     1       25     264
0-6 months    ki0047075b-MAL-ED         BRAZIL                         0                     0      108     233
0-6 months    ki0047075b-MAL-ED         BRAZIL                         0                     1       17     233
0-6 months    ki0047075b-MAL-ED         BRAZIL                         1                     0      100     233
0-6 months    ki0047075b-MAL-ED         BRAZIL                         1                     1        8     233
0-6 months    ki0047075b-MAL-ED         INDIA                          0                     0       80     250
0-6 months    ki0047075b-MAL-ED         INDIA                          0                     1       22     250
0-6 months    ki0047075b-MAL-ED         INDIA                          1                     0      128     250
0-6 months    ki0047075b-MAL-ED         INDIA                          1                     1       20     250
0-6 months    ki0047075b-MAL-ED         NEPAL                          0                     0      122     240
0-6 months    ki0047075b-MAL-ED         NEPAL                          0                     1       20     240
0-6 months    ki0047075b-MAL-ED         NEPAL                          1                     0       90     240
0-6 months    ki0047075b-MAL-ED         NEPAL                          1                     1        8     240
0-6 months    ki0047075b-MAL-ED         PERU                           0                     0       64     303
0-6 months    ki0047075b-MAL-ED         PERU                           0                     1       14     303
0-6 months    ki0047075b-MAL-ED         PERU                           1                     0      202     303
0-6 months    ki0047075b-MAL-ED         PERU                           1                     1       23     303
0-6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                     0       98     297
0-6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                     1       18     297
0-6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                     0      167     297
0-6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                     1       14     297
0-6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                     0       35     262
0-6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                     1       10     262
0-6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                     0      184     262
0-6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                     1       33     262
0-6 months    ki1000109-EE              PAKISTAN                       0                     0      200     379
0-6 months    ki1000109-EE              PAKISTAN                       0                     1      110     379
0-6 months    ki1000109-EE              PAKISTAN                       1                     0       49     379
0-6 months    ki1000109-EE              PAKISTAN                       1                     1       20     379
0-6 months    ki1000304b-SAS-CompFeed   INDIA                          0                     0      975    1472
0-6 months    ki1000304b-SAS-CompFeed   INDIA                          0                     1      395    1472
0-6 months    ki1000304b-SAS-CompFeed   INDIA                          1                     0       87    1472
0-6 months    ki1000304b-SAS-CompFeed   INDIA                          1                     1       15    1472
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                     0       84     758
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                     1       17     758
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                     0      569     758
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                     1       88     758
0-6 months    ki1113344-GMS-Nepal       NEPAL                          0                     0      345     548
0-6 months    ki1113344-GMS-Nepal       NEPAL                          0                     1       40     548
0-6 months    ki1113344-GMS-Nepal       NEPAL                          1                     0      147     548
0-6 months    ki1113344-GMS-Nepal       NEPAL                          1                     1       16     548
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                     0     5234   12510
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                     1      653   12510
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                     0     5967   12510
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                     1      656   12510
0-6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                     0    18258   27072
0-6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                     1     8548   27072
0-6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                     0       97   27072
0-6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                     1      169   27072
0-6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                     0     1211    5130
0-6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                     1      522    5130
0-6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                     0     2448    5130
0-6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                     1      949    5130
6-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                     0       49     194
6-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                     1       26     194
6-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                     0       73     194
6-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                     1       46     194
6-24 months   ki0047075b-MAL-ED         BRAZIL                         0                     0      104     203
6-24 months   ki0047075b-MAL-ED         BRAZIL                         0                     1        4     203
6-24 months   ki0047075b-MAL-ED         BRAZIL                         1                     0       91     203
6-24 months   ki0047075b-MAL-ED         BRAZIL                         1                     1        4     203
6-24 months   ki0047075b-MAL-ED         INDIA                          0                     0       52     194
6-24 months   ki0047075b-MAL-ED         INDIA                          0                     1       28     194
6-24 months   ki0047075b-MAL-ED         INDIA                          1                     0       76     194
6-24 months   ki0047075b-MAL-ED         INDIA                          1                     1       38     194
6-24 months   ki0047075b-MAL-ED         NEPAL                          0                     0      115     224
6-24 months   ki0047075b-MAL-ED         NEPAL                          0                     1       18     224
6-24 months   ki0047075b-MAL-ED         NEPAL                          1                     0       73     224
6-24 months   ki0047075b-MAL-ED         NEPAL                          1                     1       18     224
6-24 months   ki0047075b-MAL-ED         PERU                           0                     0       41     229
6-24 months   ki0047075b-MAL-ED         PERU                           0                     1       18     229
6-24 months   ki0047075b-MAL-ED         PERU                           1                     0      113     229
6-24 months   ki0047075b-MAL-ED         PERU                           1                     1       57     229
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                     0       62     221
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                     1       21     221
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                     0      101     221
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                     1       37     221
6-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                     0       14     187
6-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                     1       15     187
6-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                     0       57     187
6-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                     1      101     187
6-24 months   ki1000109-EE              PAKISTAN                       0                     0       35     188
6-24 months   ki1000109-EE              PAKISTAN                       0                     1      118     188
6-24 months   ki1000109-EE              PAKISTAN                       1                     0       12     188
6-24 months   ki1000109-EE              PAKISTAN                       1                     1       23     188
6-24 months   ki1000304b-SAS-CompFeed   INDIA                          0                     0      604     964
6-24 months   ki1000304b-SAS-CompFeed   INDIA                          0                     1      284     964
6-24 months   ki1000304b-SAS-CompFeed   INDIA                          1                     0       53     964
6-24 months   ki1000304b-SAS-CompFeed   INDIA                          1                     1       23     964
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                     0       80     620
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                     1       11     620
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                     0      423     620
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                     1      106     620
6-24 months   ki1113344-GMS-Nepal       NEPAL                          0                     0      159     438
6-24 months   ki1113344-GMS-Nepal       NEPAL                          0                     1      147     438
6-24 months   ki1113344-GMS-Nepal       NEPAL                          1                     0       83     438
6-24 months   ki1113344-GMS-Nepal       NEPAL                          1                     1       49     438
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                     0     3281    8278
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                     1      489    8278
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                     0     3889    8278
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                     1      619    8278
6-24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                     0    10666   13303
6-24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                     1     2622   13303
6-24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                     0       15   13303
6-24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                     1        0   13303
6-24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                     0     1144    4312
6-24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                     1      429    4312
6-24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                     0     1896    4312
6-24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                     1      843    4312
0-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                     0       51     264
0-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                     1       50     264
0-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                     0       80     264
0-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                     1       83     264
0-24 months   ki0047075b-MAL-ED         BRAZIL                         0                     0      103     233
0-24 months   ki0047075b-MAL-ED         BRAZIL                         0                     1       22     233
0-24 months   ki0047075b-MAL-ED         BRAZIL                         1                     0       94     233
0-24 months   ki0047075b-MAL-ED         BRAZIL                         1                     1       14     233
0-24 months   ki0047075b-MAL-ED         INDIA                          0                     0       48     250
0-24 months   ki0047075b-MAL-ED         INDIA                          0                     1       54     250
0-24 months   ki0047075b-MAL-ED         INDIA                          1                     0       76     250
0-24 months   ki0047075b-MAL-ED         INDIA                          1                     1       72     250
0-24 months   ki0047075b-MAL-ED         NEPAL                          0                     0      108     240
0-24 months   ki0047075b-MAL-ED         NEPAL                          0                     1       34     240
0-24 months   ki0047075b-MAL-ED         NEPAL                          1                     0       73     240
0-24 months   ki0047075b-MAL-ED         NEPAL                          1                     1       25     240
0-24 months   ki0047075b-MAL-ED         PERU                           0                     0       43     303
0-24 months   ki0047075b-MAL-ED         PERU                           0                     1       35     303
0-24 months   ki0047075b-MAL-ED         PERU                           1                     0      124     303
0-24 months   ki0047075b-MAL-ED         PERU                           1                     1      101     303
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                     0       69     297
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                     1       47     297
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                     0      111     297
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                     1       70     297
0-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                     0       16     262
0-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                     1       29     262
0-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                     0       64     262
0-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                     1      153     262
0-24 months   ki1000109-EE              PAKISTAN                       0                     0       34     379
0-24 months   ki1000109-EE              PAKISTAN                       0                     1      276     379
0-24 months   ki1000109-EE              PAKISTAN                       1                     0       11     379
0-24 months   ki1000109-EE              PAKISTAN                       1                     1       58     379
0-24 months   ki1000304b-SAS-CompFeed   INDIA                          0                     0      549    1475
0-24 months   ki1000304b-SAS-CompFeed   INDIA                          0                     1      823    1475
0-24 months   ki1000304b-SAS-CompFeed   INDIA                          1                     0       46    1475
0-24 months   ki1000304b-SAS-CompFeed   INDIA                          1                     1       57    1475
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                     0       69     758
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                     1       32     758
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                     0      395     758
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                     1      262     758
0-24 months   ki1113344-GMS-Nepal       NEPAL                          0                     0      151     548
0-24 months   ki1113344-GMS-Nepal       NEPAL                          0                     1      234     548
0-24 months   ki1113344-GMS-Nepal       NEPAL                          1                     0       83     548
0-24 months   ki1113344-GMS-Nepal       NEPAL                          1                     1       80     548
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                     0     4151   12530
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                     1     1748   12530
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                     0     4730   12530
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                     1     1901   12530
0-24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                     0    14986   27137
0-24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                     1    11884   27137
0-24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                     0       93   27137
0-24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                     1      174   27137
0-24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                     0      954    5442
0-24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                     1     1054    5442
0-24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                     0     1595    5442
0-24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                     1     1839    5442


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/80815f97-7095-444e-b1c2-3ec0fdeef57b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/80815f97-7095-444e-b1c2-3ec0fdeef57b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/80815f97-7095-444e-b1c2-3ec0fdeef57b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/80815f97-7095-444e-b1c2-3ec0fdeef57b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.4594685   0.3885417   0.5303954
0-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.5283745   0.4620733   0.5946757
0-24 months   ki0047075b-MAL-ED         BRAZIL                         0                    NA                0.1819774   0.1295021   0.2344528
0-24 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                0.1514240   0.1018022   0.2010458
0-24 months   ki0047075b-MAL-ED         INDIA                          0                    NA                0.5251559   0.4434663   0.6068454
0-24 months   ki0047075b-MAL-ED         INDIA                          1                    NA                0.4904536   0.4155494   0.5653578
0-24 months   ki0047075b-MAL-ED         NEPAL                          0                    NA                0.2377863   0.1755694   0.3000033
0-24 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                0.2568103   0.1857220   0.3278986
0-24 months   ki0047075b-MAL-ED         PERU                           0                    NA                0.4106044   0.3298466   0.4913621
0-24 months   ki0047075b-MAL-ED         PERU                           1                    NA                0.4630227   0.4028398   0.5232057
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                0.4213199   0.3508804   0.4917594
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                0.4214993   0.3571636   0.4858350
0-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.6316871   0.5055520   0.7578222
0-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7075122   0.6474786   0.7675457
0-24 months   ki1000109-EE              PAKISTAN                       0                    NA                0.8890569   0.8549471   0.9231667
0-24 months   ki1000109-EE              PAKISTAN                       1                    NA                0.7720569   0.7044724   0.8396413
0-24 months   ki1000304b-SAS-CompFeed   INDIA                          0                    NA                0.5956832   0.5576710   0.6336954
0-24 months   ki1000304b-SAS-CompFeed   INDIA                          1                    NA                0.6488169   0.5853713   0.7122625
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                0.3294599   0.2643610   0.3945588
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                0.3967386   0.3604909   0.4329863
0-24 months   ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.5999012   0.5519652   0.6478372
0-24 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.4656193   0.3942831   0.5369555
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                0.2878165   0.2777525   0.2978805
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                0.2908885   0.2812518   0.3005252
0-24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                0.4442306   0.4367005   0.4517607
0-24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                0.5933833   0.5745018   0.6122648
0-24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                0.5327471   0.5116084   0.5538858
0-24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                0.5313786   0.5115964   0.5511608
0-6 months    ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.1881150   0.1385136   0.2377164
0-6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.1776253   0.1314890   0.2237616
0-6 months    ki0047075b-MAL-ED         BRAZIL                         0                    NA                0.1296567   0.0872384   0.1720750
0-6 months    ki0047075b-MAL-ED         BRAZIL                         1                    NA                0.1088832   0.0684087   0.1493577
0-6 months    ki0047075b-MAL-ED         INDIA                          0                    NA                0.1874684   0.1354359   0.2395010
0-6 months    ki0047075b-MAL-ED         INDIA                          1                    NA                0.1517788   0.1070724   0.1964853
0-6 months    ki0047075b-MAL-ED         NEPAL                          0                    NA                0.1291420   0.0825803   0.1757037
0-6 months    ki0047075b-MAL-ED         NEPAL                          1                    NA                0.0882151   0.0493042   0.1271259
0-6 months    ki0047075b-MAL-ED         PERU                           0                    NA                0.1282999   0.0854607   0.1711392
0-6 months    ki0047075b-MAL-ED         PERU                           1                    NA                0.1186213   0.0823575   0.1548851
0-6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                0.1204714   0.0804737   0.1604691
0-6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                0.1012851   0.0667437   0.1358264
0-6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.3032494   0.2167643   0.3897345
0-6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1581531   0.1124419   0.2038644
0-6 months    ki1000109-EE              PAKISTAN                       0                    NA                0.3567830   0.3055931   0.4079730
0-6 months    ki1000109-EE              PAKISTAN                       1                    NA                0.2785173   0.2133198   0.3437148
0-6 months    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                0.2806758   0.2559408   0.3054108
0-6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                0.2218629   0.1827064   0.2610194
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                0.1987143   0.1683451   0.2290835
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                0.1367554   0.1122243   0.1612864
0-6 months    ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.0976258   0.0677806   0.1274710
0-6 months    ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.0679736   0.0272705   0.1086766
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                0.1039313   0.0985721   0.1092904
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                0.1038692   0.0985196   0.1092188
0-6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                0.3218403   0.3150707   0.3286100
0-6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                0.4568314   0.4400843   0.4735786
0-6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                0.3021510   0.2828504   0.3214516
0-6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                0.2807115   0.2656353   0.2957878
6-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.2004370   0.1081923   0.2926817
6-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.3300244   0.2482803   0.4117684
6-24 months   ki0047075b-MAL-ED         INDIA                          0                    NA                0.3375985   0.2398422   0.4353547
6-24 months   ki0047075b-MAL-ED         INDIA                          1                    NA                0.3420209   0.2561671   0.4278748
6-24 months   ki0047075b-MAL-ED         NEPAL                          0                    NA                0.2108378   0.1548272   0.2668483
6-24 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                0.3966467   0.3241303   0.4691630
6-24 months   ki0047075b-MAL-ED         PERU                           0                    NA                0.2945267   0.1852266   0.4038268
6-24 months   ki0047075b-MAL-ED         PERU                           1                    NA                0.3391795   0.2690677   0.4092912
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                0.3953893   0.3035451   0.4872334
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                0.3104159   0.2365261   0.3843057
6-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.3788892   0.2334773   0.5243010
6-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.6312015   0.5572447   0.7051582
6-24 months   ki1000109-EE              PAKISTAN                       0                    NA                0.7665045   0.7002221   0.8327869
6-24 months   ki1000109-EE              PAKISTAN                       1                    NA                0.5887225   0.4483030   0.7291419
6-24 months   ki1000304b-SAS-CompFeed   INDIA                          0                    NA                0.3187169   0.2891100   0.3483238
6-24 months   ki1000304b-SAS-CompFeed   INDIA                          1                    NA                0.2954010   0.2580137   0.3327883
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                0.0834083   0.0410966   0.1257200
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                0.1974133   0.1642545   0.2305721
6-24 months   ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.4724904   0.4172320   0.5277488
6-24 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.3386366   0.2595750   0.4176982
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                0.1271966   0.1171456   0.1372477
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                0.1362792   0.1267772   0.1457811
6-24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                0.2753934   0.2534584   0.2973284
6-24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                0.3062404   0.2858446   0.3266361


### Parameter: E(Y)


agecat        studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.5037879   0.4433613   0.5642144
0-24 months   ki0047075b-MAL-ED         BRAZIL                         NA                   NA                0.1545064   0.1079979   0.2010150
0-24 months   ki0047075b-MAL-ED         INDIA                          NA                   NA                0.5040000   0.4418982   0.5661018
0-24 months   ki0047075b-MAL-ED         NEPAL                          NA                   NA                0.2458333   0.1912446   0.3004221
0-24 months   ki0047075b-MAL-ED         PERU                           NA                   NA                0.4488449   0.3927492   0.5049406
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                0.3939394   0.3382753   0.4496035
0-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6946565   0.6387828   0.7505302
0-24 months   ki1000109-EE              PAKISTAN                       NA                   NA                0.8812665   0.8486571   0.9138759
0-24 months   ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                0.5966102   0.5576528   0.6355676
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                0.3878628   0.3531521   0.4225735
0-24 months   ki1113344-GMS-Nepal       NEPAL                          NA                   NA                0.5729927   0.5315406   0.6144448
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                0.2912211   0.2832658   0.2991764
0-24 months   kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                0.4443380   0.4368301   0.4518459
0-24 months   kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                0.5316060   0.5154292   0.5477829
0-6 months    ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.1818182   0.1352045   0.2284319
0-6 months    ki0047075b-MAL-ED         BRAZIL                         NA                   NA                0.1072961   0.0674717   0.1471206
0-6 months    ki0047075b-MAL-ED         INDIA                          NA                   NA                0.1680000   0.1215629   0.2144371
0-6 months    ki0047075b-MAL-ED         NEPAL                          NA                   NA                0.1166667   0.0759676   0.1573658
0-6 months    ki0047075b-MAL-ED         PERU                           NA                   NA                0.1221122   0.0851852   0.1590392
0-6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                0.1077441   0.0724222   0.1430660
0-6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1641221   0.1191873   0.2090569
0-6 months    ki1000109-EE              PAKISTAN                       NA                   NA                0.3430079   0.2951521   0.3908637
0-6 months    ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                0.2785326   0.2525203   0.3045449
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                0.1385224   0.1139141   0.1631308
0-6 months    ki1113344-GMS-Nepal       NEPAL                          NA                   NA                0.1021898   0.0768063   0.1275732
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                0.1046363   0.0992724   0.1100002
0-6 months    kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                0.3219932   0.3152366   0.3287498
0-6 months    kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                0.2867446   0.2729319   0.3005573
6-24 months   ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.3711340   0.3029765   0.4392916
6-24 months   ki0047075b-MAL-ED         INDIA                          NA                   NA                0.3402062   0.2733649   0.4070475
6-24 months   ki0047075b-MAL-ED         NEPAL                          NA                   NA                0.1607143   0.1125109   0.2089177
6-24 months   ki0047075b-MAL-ED         PERU                           NA                   NA                0.3275109   0.2665942   0.3884276
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                0.2624434   0.2043065   0.3205804
6-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6203209   0.5505766   0.6900651
6-24 months   ki1000109-EE              PAKISTAN                       NA                   NA                0.7500000   0.6879377   0.8120623
6-24 months   ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                0.3184647   0.2882909   0.3486385
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                0.1887097   0.1578857   0.2195336
6-24 months   ki1113344-GMS-Nepal       NEPAL                          NA                   NA                0.4474886   0.4008689   0.4941082
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                0.1338488   0.1265135   0.1411840
6-24 months   kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                0.2949907   0.2786334   0.3113480


### Parameter: RR


agecat        studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    0                 1.1499689   0.9996383   1.3229069
0-24 months   ki0047075b-MAL-ED         BRAZIL                         0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED         BRAZIL                         1                    0                 0.8321032   0.6065491   1.1415330
0-24 months   ki0047075b-MAL-ED         INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED         INDIA                          1                    0                 0.9339200   0.7736483   1.1273942
0-24 months   ki0047075b-MAL-ED         NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED         NEPAL                          1                    0                 1.0800045   0.7940658   1.4689082
0-24 months   ki0047075b-MAL-ED         PERU                           0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED         PERU                           1                    0                 1.1276616   0.9312475   1.3655023
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0                 1.0004258   0.8326693   1.2019799
0-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0                 1.1200358   0.9070692   1.3830039
0-24 months   ki1000109-EE              PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-EE              PAKISTAN                       1                    0                 0.8683998   0.7911042   0.9532477
0-24 months   ki1000304b-SAS-CompFeed   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed   INDIA                          1                    0                 1.0891979   0.9941420   1.1933426
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    0                 1.2042091   0.9895284   1.4654652
0-24 months   ki1113344-GMS-Nepal       NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal       NEPAL                          1                    0                 0.7761601   0.6530719   0.9224474
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    0                 1.0106735   0.9693982   1.0537063
0-24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                    0                 1.3357551   1.2916910   1.3813223
0-24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    0                 0.9974311   0.9496421   1.0476251
0-6 months    ki0047075b-MAL-ED         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    0                 0.9442378   0.8513674   1.0472388
0-6 months    ki0047075b-MAL-ED         BRAZIL                         0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED         BRAZIL                         1                    0                 0.8397808   0.7072869   0.9970944
0-6 months    ki0047075b-MAL-ED         INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED         INDIA                          1                    0                 0.8096233   0.6812979   0.9621192
0-6 months    ki0047075b-MAL-ED         NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED         NEPAL                          1                    0                 0.6830858   0.4748513   0.9826363
0-6 months    ki0047075b-MAL-ED         PERU                           0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED         PERU                           1                    0                 0.9245626   0.7743163   1.1039624
0-6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0                 0.8407396   0.6806451   1.0384899
0-6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0                 0.5215283   0.3684138   0.7382780
0-6 months    ki1000109-EE              PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000109-EE              PAKISTAN                       1                    0                 0.7806349   0.6046850   1.0077823
0-6 months    ki1000304b-SAS-CompFeed   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    0                 0.7904598   0.7105382   0.8793709
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                    0                 0.6882010   0.6087656   0.7780017
0-6 months    ki1113344-GMS-Nepal       NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal       NEPAL                          1                    0                 0.6962665   0.3557536   1.3627046
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                    0                 0.9994033   0.9899988   1.0088972
0-6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    0                 1.4194350   1.3672109   1.4736540
0-6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    0                 0.9290438   0.8688111   0.9934522
6-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    0                 1.6465244   0.9893673   2.7401781
6-24 months   ki0047075b-MAL-ED         INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED         INDIA                          1                    0                 1.0130997   0.7004694   1.4652619
6-24 months   ki0047075b-MAL-ED         NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED         NEPAL                          1                    0                 1.8812886   1.3693940   2.5845352
6-24 months   ki0047075b-MAL-ED         PERU                           0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED         PERU                           1                    0                 1.1516086   0.7629135   1.7383391
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0                 0.7850894   0.5644995   1.0918794
6-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0                 1.6659265   1.1253900   2.4660883
6-24 months   ki1000109-EE              PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000109-EE              PAKISTAN                       1                    0                 0.7680613   0.5964933   0.9889771
6-24 months   ki1000304b-SAS-CompFeed   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed   INDIA                          1                    0                 0.9268446   0.8194168   1.0483565
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    0                 2.3668309   1.3982072   4.0064795
6-24 months   ki1113344-GMS-Nepal       NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal       NEPAL                          1                    0                 0.7167058   0.5522439   0.9301455
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    0                 1.0714055   0.9659939   1.1883198
6-24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    0                 1.1120106   1.0079812   1.2267765


### Parameter: PAR


agecat        studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                 0.0443194    0.0023499    0.0862888
0-24 months   ki0047075b-MAL-ED         BRAZIL                         0                    NA                -0.0274710   -0.0521324   -0.0028096
0-24 months   ki0047075b-MAL-ED         INDIA                          0                    NA                -0.0211559   -0.0778816    0.0355698
0-24 months   ki0047075b-MAL-ED         NEPAL                          0                    NA                 0.0080470   -0.0232957    0.0393897
0-24 months   ki0047075b-MAL-ED         PERU                           0                    NA                 0.0382405   -0.0216476    0.0981286
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -0.0273805   -0.0741007    0.0193397
0-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0629694   -0.0491390    0.1750778
0-24 months   ki1000109-EE              PAKISTAN                       0                    NA                -0.0077904   -0.0236911    0.0081103
0-24 months   ki1000304b-SAS-CompFeed   INDIA                          0                    NA                 0.0009270   -0.0059010    0.0077549
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                 0.0584029    0.0010626    0.1157432
0-24 months   ki1113344-GMS-Nepal       NEPAL                          0                    NA                -0.0269085   -0.0538818    0.0000648
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                 0.0034046   -0.0030677    0.0098770
0-24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                 0.0001074   -0.0001356    0.0003503
0-24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -0.0011411   -0.0175098    0.0152276
0-6 months    ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -0.0062968   -0.0181561    0.0055624
0-6 months    ki0047075b-MAL-ED         BRAZIL                         0                    NA                -0.0223606   -0.0349969   -0.0097243
0-6 months    ki0047075b-MAL-ED         INDIA                          0                    NA                -0.0194684   -0.0358700   -0.0030669
0-6 months    ki0047075b-MAL-ED         NEPAL                          0                    NA                -0.0124753   -0.0277357    0.0027850
0-6 months    ki0047075b-MAL-ED         PERU                           0                    NA                -0.0061877   -0.0225697    0.0101943
0-6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -0.0127273   -0.0267125    0.0012579
0-6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1391272   -0.2091445   -0.0691099
0-6 months    ki1000109-EE              PAKISTAN                       0                    NA                -0.0137751   -0.0319002    0.0043500
0-6 months    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -0.0021432   -0.0049968    0.0007105
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                -0.0601919   -0.0781153   -0.0422684
0-6 months    ki1113344-GMS-Nepal       NEPAL                          0                    NA                 0.0045640   -0.0114424    0.0205704
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                 0.0007050    0.0001826    0.0012275
0-6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                 0.0001529   -0.0000656    0.0003714
0-6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -0.0154064   -0.0284363   -0.0023764
6-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                 0.1706971    0.0973245    0.2440696
6-24 months   ki0047075b-MAL-ED         INDIA                          0                    NA                 0.0026077   -0.0710139    0.0762293
6-24 months   ki0047075b-MAL-ED         NEPAL                          0                    NA                -0.0501235   -0.0886905   -0.0115564
6-24 months   ki0047075b-MAL-ED         PERU                           0                    NA                 0.0329842   -0.0603465    0.1263150
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -0.1329458   -0.2057365   -0.0601552
6-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.2414317    0.1098554    0.3730080
6-24 months   ki1000109-EE              PAKISTAN                       0                    NA                -0.0165045   -0.0481764    0.0151674
6-24 months   ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -0.0002521   -0.0056613    0.0051570
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                 0.1053014    0.0623763    0.1482265
6-24 months   ki1113344-GMS-Nepal       NEPAL                          0                    NA                -0.0250018   -0.0548242    0.0048205
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                 0.0066521   -0.0007892    0.0140934
6-24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                 0.0195973    0.0017300    0.0374647


### Parameter: PAF


agecat        studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                 0.0879722    0.0008802    0.1674726
0-24 months   ki0047075b-MAL-ED         BRAZIL                         0                    NA                -0.1777983   -0.3592194   -0.0205922
0-24 months   ki0047075b-MAL-ED         INDIA                          0                    NA                -0.0419759   -0.1612903    0.0650798
0-24 months   ki0047075b-MAL-ED         NEPAL                          0                    NA                 0.0327336   -0.1035616    0.1521957
0-24 months   ki0047075b-MAL-ED         PERU                           0                    NA                 0.0851977   -0.0585545    0.2094282
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -0.0695044   -0.1960517    0.0436537
0-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0906483   -0.0862950    0.2387698
0-24 months   ki1000109-EE              PAKISTAN                       0                    NA                -0.0088400   -0.0270974    0.0090928
0-24 months   ki1000304b-SAS-CompFeed   INDIA                          0                    NA                 0.0015537   -0.0099341    0.0129109
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                 0.1505762   -0.0106092    0.2860536
0-24 months   ki1113344-GMS-Nepal       NEPAL                          0                    NA                -0.0469613   -0.0954722   -0.0005986
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                 0.0116908   -0.0107758    0.0336581
0-24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                 0.0002416   -0.0003055    0.0007885
0-24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -0.0021465   -0.0334261    0.0281863
0-6 months    ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -0.0346327   -0.1013436    0.0280374
0-6 months    ki0047075b-MAL-ED         BRAZIL                         0                    NA                -0.2084006   -0.3539296   -0.0785140
0-6 months    ki0047075b-MAL-ED         INDIA                          0                    NA                -0.1158836   -0.2171711   -0.0230248
0-6 months    ki0047075b-MAL-ED         NEPAL                          0                    NA                -0.1069315   -0.2423077    0.0136926
0-6 months    ki0047075b-MAL-ED         PERU                           0                    NA                -0.0506724   -0.1918280    0.0737652
0-6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -0.1181251   -0.2553530    0.0041019
0-6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.8477055   -1.3793213   -0.4348695
0-6 months    ki1000109-EE              PAKISTAN                       0                    NA                -0.0401597   -0.0946725    0.0116385
0-6 months    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -0.0076945   -0.0183675    0.0028667
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                -0.4345280   -0.5937698   -0.2911968
0-6 months    ki1113344-GMS-Nepal       NEPAL                          0                    NA                 0.0446619   -0.1258495    0.1893490
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                 0.0067380    0.0017408    0.0117102
0-6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                 0.0004748   -0.0002046    0.0011537
0-6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -0.0537286   -0.1001508   -0.0092652
6-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                 0.4599337    0.2137503    0.6290344
6-24 months   ki0047075b-MAL-ED         INDIA                          0                    NA                 0.0076651   -0.2340901    0.2020611
6-24 months   ki0047075b-MAL-ED         NEPAL                          0                    NA                -0.3118793   -0.6152361   -0.0654959
6-24 months   ki0047075b-MAL-ED         PERU                           0                    NA                 0.1007118   -0.2343526    0.3448232
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -0.5065694   -0.8411749   -0.2327734
6-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.3892046    0.1327075    0.5698440
6-24 months   ki1000109-EE              PAKISTAN                       0                    NA                -0.0220060   -0.0653827    0.0196046
6-24 months   ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -0.0007917   -0.0179367    0.0160645
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                 0.5580074    0.2882599    0.7255214
6-24 months   ki1113344-GMS-Nepal       NEPAL                          0                    NA                -0.0558714   -0.1249543    0.0089691
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                 0.0496988   -0.0074093    0.1035696
6-24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                 0.0664337    0.0044501    0.1245583
