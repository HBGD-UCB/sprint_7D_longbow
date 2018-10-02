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

**Outcome Variable:** wasted

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
* W_gagebrth
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
* delta_W_gagebrth
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

agecat      studyid                   country                        earlybf    wasted   n_cell       n
----------  ------------------------  -----------------------------  --------  -------  -------  ------
Birth       ki0047075b-MAL-ED         BANGLADESH                     0               0       70     240
Birth       ki0047075b-MAL-ED         BANGLADESH                     0               1       18     240
Birth       ki0047075b-MAL-ED         BANGLADESH                     1               0      130     240
Birth       ki0047075b-MAL-ED         BANGLADESH                     1               1       22     240
Birth       ki0047075b-MAL-ED         BRAZIL                         0               0      100     183
Birth       ki0047075b-MAL-ED         BRAZIL                         0               1        4     183
Birth       ki0047075b-MAL-ED         BRAZIL                         1               0       77     183
Birth       ki0047075b-MAL-ED         BRAZIL                         1               1        2     183
Birth       ki0047075b-MAL-ED         INDIA                          0               0       65     202
Birth       ki0047075b-MAL-ED         INDIA                          0               1       14     202
Birth       ki0047075b-MAL-ED         INDIA                          1               0      104     202
Birth       ki0047075b-MAL-ED         INDIA                          1               1       19     202
Birth       ki0047075b-MAL-ED         NEPAL                          0               0       83     168
Birth       ki0047075b-MAL-ED         NEPAL                          0               1        8     168
Birth       ki0047075b-MAL-ED         NEPAL                          1               0       65     168
Birth       ki0047075b-MAL-ED         NEPAL                          1               1       12     168
Birth       ki0047075b-MAL-ED         PERU                           0               0       66     279
Birth       ki0047075b-MAL-ED         PERU                           0               1        2     279
Birth       ki0047075b-MAL-ED         PERU                           1               0      207     279
Birth       ki0047075b-MAL-ED         PERU                           1               1        4     279
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0               0       81     245
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0               1       10     245
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1               0      148     245
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1               1        6     245
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0               0       10     118
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0               1        0     118
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1               0      106     118
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1               1        2     118
Birth       ki1000109-EE              PAKISTAN                       0               0        0       2
Birth       ki1000109-EE              PAKISTAN                       0               1        0       2
Birth       ki1000109-EE              PAKISTAN                       1               0        2       2
Birth       ki1000109-EE              PAKISTAN                       1               1        0       2
Birth       ki1000304b-SAS-CompFeed   INDIA                          0               0      135     158
Birth       ki1000304b-SAS-CompFeed   INDIA                          0               1       10     158
Birth       ki1000304b-SAS-CompFeed   INDIA                          1               0       13     158
Birth       ki1000304b-SAS-CompFeed   INDIA                          1               1        0     158
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     0               0        3      23
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     0               1        1      23
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     1               0       17      23
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     1               1        2      23
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       0               0     4314   11513
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       0               1     1058   11513
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1               0     5320   11513
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1               1      821   11513
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0               0    28132   31296
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0               1     2978   31296
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1               0      162   31296
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1               1       24   31296
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0               0      388    1366
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0               1       28    1366
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1               0      906    1366
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1               1       44    1366
6 months    ki0047075b-MAL-ED         BANGLADESH                     0               0       90     240
6 months    ki0047075b-MAL-ED         BANGLADESH                     0               1        3     240
6 months    ki0047075b-MAL-ED         BANGLADESH                     1               0      142     240
6 months    ki0047075b-MAL-ED         BANGLADESH                     1               1        5     240
6 months    ki0047075b-MAL-ED         BRAZIL                         0               0      114     209
6 months    ki0047075b-MAL-ED         BRAZIL                         0               1        0     209
6 months    ki0047075b-MAL-ED         BRAZIL                         1               0       94     209
6 months    ki0047075b-MAL-ED         BRAZIL                         1               1        1     209
6 months    ki0047075b-MAL-ED         INDIA                          0               0       90     236
6 months    ki0047075b-MAL-ED         INDIA                          0               1        6     236
6 months    ki0047075b-MAL-ED         INDIA                          1               0      128     236
6 months    ki0047075b-MAL-ED         INDIA                          1               1       12     236
6 months    ki0047075b-MAL-ED         NEPAL                          0               0      138     236
6 months    ki0047075b-MAL-ED         NEPAL                          0               1        2     236
6 months    ki0047075b-MAL-ED         NEPAL                          1               0       94     236
6 months    ki0047075b-MAL-ED         NEPAL                          1               1        2     236
6 months    ki0047075b-MAL-ED         PERU                           0               0       71     273
6 months    ki0047075b-MAL-ED         PERU                           0               1        0     273
6 months    ki0047075b-MAL-ED         PERU                           1               0      202     273
6 months    ki0047075b-MAL-ED         PERU                           1               1        0     273
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0               0       92     250
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0               1        2     250
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1               0      151     250
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1               1        5     250
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0               0       42     247
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0               1        0     247
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1               0      204     247
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1               1        1     247
6 months    ki1000109-EE              PAKISTAN                       0               0      530     752
6 months    ki1000109-EE              PAKISTAN                       0               1       84     752
6 months    ki1000109-EE              PAKISTAN                       1               0      124     752
6 months    ki1000109-EE              PAKISTAN                       1               1       14     752
6 months    ki1000304b-SAS-CompFeed   INDIA                          0               0     1081    1334
6 months    ki1000304b-SAS-CompFeed   INDIA                          0               1      156    1334
6 months    ki1000304b-SAS-CompFeed   INDIA                          1               0       87    1334
6 months    ki1000304b-SAS-CompFeed   INDIA                          1               1       10    1334
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0               0       93     715
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0               1        3     715
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1               0      601     715
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1               1       18     715
6 months    ki1113344-GMS-Nepal       NEPAL                          0               0      648    1020
6 months    ki1113344-GMS-Nepal       NEPAL                          0               1       70    1020
6 months    ki1113344-GMS-Nepal       NEPAL                          1               0      276    1020
6 months    ki1113344-GMS-Nepal       NEPAL                          1               1       26    1020
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0               0     3269    7339
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0               1      119    7339
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1               0     3832    7339
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1               1      119    7339
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0               0    30627   33523
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0               1     2825   33523
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1               0       55   33523
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1               1       16   33523
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0               0     3104    9456
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0               1      186    9456
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1               0     5820    9456
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1               1      346    9456
24 months   ki0047075b-MAL-ED         BANGLADESH                     0               0       74     211
24 months   ki0047075b-MAL-ED         BANGLADESH                     0               1        9     211
24 months   ki0047075b-MAL-ED         BANGLADESH                     1               0      116     211
24 months   ki0047075b-MAL-ED         BANGLADESH                     1               1       12     211
24 months   ki0047075b-MAL-ED         BRAZIL                         0               0       87     169
24 months   ki0047075b-MAL-ED         BRAZIL                         0               1        2     169
24 months   ki0047075b-MAL-ED         BRAZIL                         1               0       79     169
24 months   ki0047075b-MAL-ED         BRAZIL                         1               1        1     169
24 months   ki0047075b-MAL-ED         INDIA                          0               0       85     227
24 months   ki0047075b-MAL-ED         INDIA                          0               1        8     227
24 months   ki0047075b-MAL-ED         INDIA                          1               0      115     227
24 months   ki0047075b-MAL-ED         INDIA                          1               1       19     227
24 months   ki0047075b-MAL-ED         NEPAL                          0               0      129     228
24 months   ki0047075b-MAL-ED         NEPAL                          0               1        4     228
24 months   ki0047075b-MAL-ED         NEPAL                          1               0       94     228
24 months   ki0047075b-MAL-ED         NEPAL                          1               1        1     228
24 months   ki0047075b-MAL-ED         PERU                           0               0       52     201
24 months   ki0047075b-MAL-ED         PERU                           0               1        0     201
24 months   ki0047075b-MAL-ED         PERU                           1               0      146     201
24 months   ki0047075b-MAL-ED         PERU                           1               1        3     201
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0               0       90     235
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0               1        1     235
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1               0      144     235
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1               1        0     235
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0               0       32     214
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0               1        2     214
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1               0      178     214
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1               1        2     214
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0               0       70     514
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0               1        1     514
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1               0      399     514
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1               1       44     514
24 months   ki1113344-GMS-Nepal       NEPAL                          0               0      516     908
24 months   ki1113344-GMS-Nepal       NEPAL                          0               1      120     908
24 months   ki1113344-GMS-Nepal       NEPAL                          1               0      226     908
24 months   ki1113344-GMS-Nepal       NEPAL                          1               1       46     908
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0               0      135     370
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0               1       37     370
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1               0      167     370
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1               1       31     370
24 months   kiGH5241-JiVitA-3         BANGLADESH                     0               0    13415   17168
24 months   kiGH5241-JiVitA-3         BANGLADESH                     0               1     3752   17168
24 months   kiGH5241-JiVitA-3         BANGLADESH                     1               0        1   17168
24 months   kiGH5241-JiVitA-3         BANGLADESH                     1               1        0   17168
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0               0     2590    9246
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0               1      622    9246
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1               0     4842    9246
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1               1     1192    9246


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/f660f755-93cf-40d2-bf86-3768a0ba11cf/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f660f755-93cf-40d2-bf86-3768a0ba11cf/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f660f755-93cf-40d2-bf86-3768a0ba11cf/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f660f755-93cf-40d2-bf86-3768a0ba11cf/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH     0                    NA                0.2212354   0.1459971   0.2964738
Birth       ki0047075b-MAL-ED         BANGLADESH     1                    NA                0.1483511   0.0944462   0.2022560
Birth       ki0047075b-MAL-ED         INDIA          0                    NA                0.2146526   0.1327375   0.2965676
Birth       ki0047075b-MAL-ED         INDIA          1                    NA                0.1680729   0.1047974   0.2313483
Birth       ki0047075b-MAL-ED         NEPAL          0                    NA                0.0879121   0.0295587   0.1462655
Birth       ki0047075b-MAL-ED         NEPAL          1                    NA                0.1558442   0.0745881   0.2371002
Birth       ki0047075b-MAL-ED         SOUTH AFRICA   0                    NA                0.1098901   0.0455004   0.1742798
Birth       ki0047075b-MAL-ED         SOUTH AFRICA   1                    NA                0.0389610   0.0083371   0.0695850
Birth       ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                0.1634295   0.1566470   0.1702121
Birth       ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                0.1626298   0.1558803   0.1693794
Birth       kiGH5241-JiVitA-3         BANGLADESH     0                    NA                0.0957239   0.0904919   0.1009559
Birth       kiGH5241-JiVitA-3         BANGLADESH     1                    NA                0.0900988   0.0311125   0.1490850
Birth       kiGH5241-JiVitA-4         BANGLADESH     0                    NA                0.0907579   0.0566772   0.1248386
Birth       kiGH5241-JiVitA-4         BANGLADESH     1                    NA                0.0494741   0.0267788   0.0721693
6 months    ki0047075b-MAL-ED         INDIA          0                    NA                0.0625000   0.0139756   0.1110244
6 months    ki0047075b-MAL-ED         INDIA          1                    NA                0.0857143   0.0392442   0.1321844
6 months    ki1000109-EE              PAKISTAN       0                    NA                0.1371224   0.0984783   0.1757665
6 months    ki1000109-EE              PAKISTAN       1                    NA                0.0706276   0.0147892   0.1264660
6 months    ki1000304b-SAS-CompFeed   INDIA          0                    NA                0.1263309   0.0994047   0.1532572
6 months    ki1000304b-SAS-CompFeed   INDIA          1                    NA                0.1644577   0.0574247   0.2714906
6 months    ki1113344-GMS-Nepal       NEPAL          0                    NA                0.0964933   0.0662051   0.1267815
6 months    ki1113344-GMS-Nepal       NEPAL          1                    NA                0.0709647   0.0322424   0.1096870
6 months    ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                0.0344980   0.0287103   0.0402858
6 months    ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                0.0304125   0.0253098   0.0355152
6 months    kiGH5241-JiVitA-3         BANGLADESH     0                    NA                0.0844508   0.0796582   0.0892435
6 months    kiGH5241-JiVitA-3         BANGLADESH     1                    NA                0.2057592   0.1564712   0.2550472
6 months    kiGH5241-JiVitA-4         BANGLADESH     0                    NA                0.0571233   0.0421564   0.0720902
6 months    kiGH5241-JiVitA-4         BANGLADESH     1                    NA                0.0567412   0.0461100   0.0673724
24 months   ki0047075b-MAL-ED         BANGLADESH     0                    NA                0.1084337   0.0413836   0.1754839
24 months   ki0047075b-MAL-ED         BANGLADESH     1                    NA                0.0937500   0.0431344   0.1443656
24 months   ki0047075b-MAL-ED         INDIA          0                    NA                0.0860215   0.0289083   0.1431348
24 months   ki0047075b-MAL-ED         INDIA          1                    NA                0.1417910   0.0825974   0.2009847
24 months   ki1113344-GMS-Nepal       NEPAL          0                    NA                0.1969751   0.1546553   0.2392948
24 months   ki1113344-GMS-Nepal       NEPAL          1                    NA                0.2093598   0.1509007   0.2678189
24 months   ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                0.2128818   0.1587652   0.2669984
24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                0.1567802   0.1103700   0.2031905
24 months   kiGH5241-JiVitA-4         BANGLADESH     0                    NA                0.1959965   0.1726413   0.2193518
24 months   kiGH5241-JiVitA-4         BANGLADESH     1                    NA                0.1977530   0.1819930   0.2135130


### Parameter: E(Y)


agecat      studyid                   country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH     NA                   NA                0.1666667   0.1194187   0.2139146
Birth       ki0047075b-MAL-ED         INDIA          NA                   NA                0.1633663   0.1122571   0.2144755
Birth       ki0047075b-MAL-ED         NEPAL          NA                   NA                0.1190476   0.0699312   0.1681640
Birth       ki0047075b-MAL-ED         SOUTH AFRICA   NA                   NA                0.0653061   0.0343059   0.0963063
Birth       ki1126311-ZVITAMBO        ZIMBABWE       NA                   NA                0.1632068   0.1564561   0.1699575
Birth       kiGH5241-JiVitA-3         BANGLADESH     NA                   NA                0.0959228   0.0907196   0.1011260
Birth       kiGH5241-JiVitA-4         BANGLADESH     NA                   NA                0.0527086   0.0336587   0.0717585
6 months    ki0047075b-MAL-ED         INDIA          NA                   NA                0.0762712   0.0423347   0.1102077
6 months    ki1000109-EE              PAKISTAN       NA                   NA                0.1303191   0.0962457   0.1643926
6 months    ki1000304b-SAS-CompFeed   INDIA          NA                   NA                0.1244378   0.0992652   0.1496104
6 months    ki1113344-GMS-Nepal       NEPAL          NA                   NA                0.0941176   0.0687511   0.1194842
6 months    ki1126311-ZVITAMBO        ZIMBABWE       NA                   NA                0.0324295   0.0283765   0.0364824
6 months    kiGH5241-JiVitA-3         BANGLADESH     NA                   NA                0.0847478   0.0799486   0.0895469
6 months    kiGH5241-JiVitA-4         BANGLADESH     NA                   NA                0.0562606   0.0473198   0.0652014
24 months   ki0047075b-MAL-ED         BANGLADESH     NA                   NA                0.0995261   0.0590366   0.1400156
24 months   ki0047075b-MAL-ED         INDIA          NA                   NA                0.1189427   0.0767376   0.1611478
24 months   ki1113344-GMS-Nepal       NEPAL          NA                   NA                0.1828194   0.1472260   0.2184128
24 months   ki1126311-ZVITAMBO        ZIMBABWE       NA                   NA                0.1837838   0.1442661   0.2233014
24 months   kiGH5241-JiVitA-4         BANGLADESH     NA                   NA                0.1961929   0.1827435   0.2096424


### Parameter: RR


agecat      studyid                   country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED         BANGLADESH     1                    0                 0.6705575   0.4094411   1.0981979
Birth       ki0047075b-MAL-ED         INDIA          0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED         INDIA          1                    0                 0.7829997   0.4573977   1.3403838
Birth       ki0047075b-MAL-ED         NEPAL          0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED         NEPAL          1                    0                 1.7727273   0.7622022   4.1230032
Birth       ki0047075b-MAL-ED         SOUTH AFRICA   0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED         SOUTH AFRICA   1                    0                 0.3545455   0.1330137   0.9450341
Birth       ki1126311-ZVITAMBO        ZIMBABWE       0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO        ZIMBABWE       1                    0                 0.9951069   0.9874724   1.0028004
Birth       kiGH5241-JiVitA-3         BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3         BANGLADESH     1                    0                 0.9412358   0.4867932   1.8199204
Birth       kiGH5241-JiVitA-4         BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4         BANGLADESH     1                    0                 0.5451212   0.3011398   0.9867748
6 months    ki0047075b-MAL-ED         INDIA          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED         INDIA          1                    0                 1.3714286   0.5320090   3.5353092
6 months    ki1000109-EE              PAKISTAN       0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000109-EE              PAKISTAN       1                    0                 0.5150699   0.2227078   1.1912333
6 months    ki1000304b-SAS-CompFeed   INDIA          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed   INDIA          1                    0                 1.3018006   0.6098742   2.7787451
6 months    ki1113344-GMS-Nepal       NEPAL          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal       NEPAL          1                    0                 0.7354372   0.3928254   1.3768660
6 months    ki1126311-ZVITAMBO        ZIMBABWE       0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO        ZIMBABWE       1                    0                 0.8815728   0.6967725   1.1153864
6 months    kiGH5241-JiVitA-3         BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3         BANGLADESH     1                    0                 2.4364382   1.9091920   3.1092898
6 months    kiGH5241-JiVitA-4         BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4         BANGLADESH     1                    0                 0.9933111   0.7256816   1.3596418
24 months   ki0047075b-MAL-ED         BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         BANGLADESH     1                    0                 0.8645833   0.3804535   1.9647716
24 months   ki0047075b-MAL-ED         INDIA          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         INDIA          1                    0                 1.6483209   0.7523706   3.6112015
24 months   ki1113344-GMS-Nepal       NEPAL          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal       NEPAL          1                    0                 1.0628746   0.7470038   1.5123113
24 months   ki1126311-ZVITAMBO        ZIMBABWE       0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    0                 0.7364662   0.5015439   1.0814256
24 months   kiGH5241-JiVitA-4         BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4         BANGLADESH     1                    0                 1.0089616   0.8764852   1.1614611


### Parameter: PAR


agecat      studyid                   country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH     0                    NA                -0.0545688   -0.1112776    0.0021400
Birth       ki0047075b-MAL-ED         INDIA          0                    NA                -0.0512862   -0.1143665    0.0117941
Birth       ki0047075b-MAL-ED         NEPAL          0                    NA                 0.0311355   -0.0150019    0.0772729
Birth       ki0047075b-MAL-ED         SOUTH AFRICA   0                    NA                -0.0445840   -0.0896077    0.0004398
Birth       ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                -0.0002227   -0.0008365    0.0003910
Birth       kiGH5241-JiVitA-3         BANGLADESH     0                    NA                 0.0001989   -0.0002938    0.0006916
Birth       kiGH5241-JiVitA-4         BANGLADESH     0                    NA                -0.0380493   -0.0666184   -0.0094801
6 months    ki0047075b-MAL-ED         INDIA          0                    NA                 0.0137712   -0.0261121    0.0536545
6 months    ki1000109-EE              PAKISTAN       0                    NA                -0.0068032   -0.0220129    0.0084064
6 months    ki1000304b-SAS-CompFeed   INDIA          0                    NA                -0.0018932   -0.0056685    0.0018821
6 months    ki1113344-GMS-Nepal       NEPAL          0                    NA                -0.0023756   -0.0182419    0.0134906
6 months    ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                -0.0020685   -0.0061600    0.0020229
6 months    kiGH5241-JiVitA-3         BANGLADESH     0                    NA                 0.0002970    0.0000203    0.0005736
6 months    kiGH5241-JiVitA-4         BANGLADESH     0                    NA                -0.0008627   -0.0125310    0.0108056
24 months   ki0047075b-MAL-ED         BANGLADESH     0                    NA                -0.0089077   -0.0598802    0.0420649
24 months   ki0047075b-MAL-ED         INDIA          0                    NA                 0.0329212   -0.0157658    0.0816083
24 months   ki1113344-GMS-Nepal       NEPAL          0                    NA                -0.0141557   -0.0368552    0.0085438
24 months   ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                -0.0290980   -0.0658425    0.0076465
24 months   kiGH5241-JiVitA-4         BANGLADESH     0                    NA                 0.0001964   -0.0177862    0.0181790


### Parameter: PAF


agecat      studyid                   country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH     0                    NA                -0.3274126   -0.7267417   -0.0204329
Birth       ki0047075b-MAL-ED         INDIA          0                    NA                -0.3139338   -0.7769827    0.0284531
Birth       ki0047075b-MAL-ED         NEPAL          0                    NA                 0.2615385   -0.2276281    0.5557894
Birth       ki0047075b-MAL-ED         SOUTH AFRICA   0                    NA                -0.6826923   -1.4446196   -0.1582388
Birth       ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                -0.0013646   -0.0051323    0.0023889
Birth       kiGH5241-JiVitA-3         BANGLADESH     0                    NA                 0.0020735   -0.0030789    0.0071995
Birth       kiGH5241-JiVitA-4         BANGLADESH     0                    NA                -0.7218790   -1.4472625   -0.2115036
6 months    ki0047075b-MAL-ED         INDIA          0                    NA                 0.1805556   -0.5410426    0.5642631
6 months    ki1000109-EE              PAKISTAN       0                    NA                -0.0522045   -0.1750386    0.0577890
6 months    ki1000304b-SAS-CompFeed   INDIA          0                    NA                -0.0152137   -0.0448644    0.0135956
6 months    ki1113344-GMS-Nepal       NEPAL          0                    NA                -0.0252409   -0.2084121    0.1301652
6 months    ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                -0.0637856   -0.1979301    0.0553373
6 months    kiGH5241-JiVitA-3         BANGLADESH     0                    NA                 0.0035042    0.0002389    0.0067588
6 months    kiGH5241-JiVitA-4         BANGLADESH     0                    NA                -0.0153340   -0.2453366    0.1721892
24 months   ki0047075b-MAL-ED         BANGLADESH     0                    NA                -0.0895009   -0.7417621    0.3184993
24 months   ki0047075b-MAL-ED         INDIA          0                    NA                 0.2767822   -0.2569353    0.5838735
24 months   ki1113344-GMS-Nepal       NEPAL          0                    NA                -0.0774299   -0.2099626    0.0405860
24 months   ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                -0.1583273   -0.3797454    0.0275582
24 months   kiGH5241-JiVitA-4         BANGLADESH     0                    NA                 0.0010011   -0.0949994    0.0885852
