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

**Outcome Variable:** swasted

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

agecat      studyid                   country                        earlybf    swasted   n_cell       n
----------  ------------------------  -----------------------------  --------  --------  -------  ------
Birth       ki0047075b-MAL-ED         BANGLADESH                     0                0       85     240
Birth       ki0047075b-MAL-ED         BANGLADESH                     0                1        3     240
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                0      147     240
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                1        5     240
Birth       ki0047075b-MAL-ED         BRAZIL                         0                0      104     183
Birth       ki0047075b-MAL-ED         BRAZIL                         0                1        0     183
Birth       ki0047075b-MAL-ED         BRAZIL                         1                0       79     183
Birth       ki0047075b-MAL-ED         BRAZIL                         1                1        0     183
Birth       ki0047075b-MAL-ED         INDIA                          0                0       76     202
Birth       ki0047075b-MAL-ED         INDIA                          0                1        3     202
Birth       ki0047075b-MAL-ED         INDIA                          1                0      119     202
Birth       ki0047075b-MAL-ED         INDIA                          1                1        4     202
Birth       ki0047075b-MAL-ED         NEPAL                          0                0       89     168
Birth       ki0047075b-MAL-ED         NEPAL                          0                1        2     168
Birth       ki0047075b-MAL-ED         NEPAL                          1                0       75     168
Birth       ki0047075b-MAL-ED         NEPAL                          1                1        2     168
Birth       ki0047075b-MAL-ED         PERU                           0                0       68     279
Birth       ki0047075b-MAL-ED         PERU                           0                1        0     279
Birth       ki0047075b-MAL-ED         PERU                           1                0      211     279
Birth       ki0047075b-MAL-ED         PERU                           1                1        0     279
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0                0       90     245
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0                1        1     245
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1                0      153     245
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1                1        1     245
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                0       10     118
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                1        0     118
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                0      107     118
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                1        1     118
Birth       ki1000109-EE              PAKISTAN                       0                0        0       2
Birth       ki1000109-EE              PAKISTAN                       0                1        0       2
Birth       ki1000109-EE              PAKISTAN                       1                0        2       2
Birth       ki1000109-EE              PAKISTAN                       1                1        0       2
Birth       ki1000304b-SAS-CompFeed   INDIA                          0                0      141     158
Birth       ki1000304b-SAS-CompFeed   INDIA                          0                1        4     158
Birth       ki1000304b-SAS-CompFeed   INDIA                          1                0       13     158
Birth       ki1000304b-SAS-CompFeed   INDIA                          1                1        0     158
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     0                0        4      23
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     0                1        0      23
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     1                0       18      23
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     1                1        1      23
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       0                0     4929   11513
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       0                1      443   11513
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1                0     5862   11513
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1                1      279   11513
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                0    30606   31296
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                1      504   31296
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                0      182   31296
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                1        4   31296
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0                0      410    1366
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0                1        6    1366
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                0      946    1366
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                1        4    1366
6 months    ki0047075b-MAL-ED         BANGLADESH                     0                0       91     240
6 months    ki0047075b-MAL-ED         BANGLADESH                     0                1        2     240
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                0      147     240
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                1        0     240
6 months    ki0047075b-MAL-ED         BRAZIL                         0                0      114     209
6 months    ki0047075b-MAL-ED         BRAZIL                         0                1        0     209
6 months    ki0047075b-MAL-ED         BRAZIL                         1                0       95     209
6 months    ki0047075b-MAL-ED         BRAZIL                         1                1        0     209
6 months    ki0047075b-MAL-ED         INDIA                          0                0       94     236
6 months    ki0047075b-MAL-ED         INDIA                          0                1        2     236
6 months    ki0047075b-MAL-ED         INDIA                          1                0      137     236
6 months    ki0047075b-MAL-ED         INDIA                          1                1        3     236
6 months    ki0047075b-MAL-ED         NEPAL                          0                0      140     236
6 months    ki0047075b-MAL-ED         NEPAL                          0                1        0     236
6 months    ki0047075b-MAL-ED         NEPAL                          1                0       96     236
6 months    ki0047075b-MAL-ED         NEPAL                          1                1        0     236
6 months    ki0047075b-MAL-ED         PERU                           0                0       71     273
6 months    ki0047075b-MAL-ED         PERU                           0                1        0     273
6 months    ki0047075b-MAL-ED         PERU                           1                0      202     273
6 months    ki0047075b-MAL-ED         PERU                           1                1        0     273
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                0       94     250
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                1        0     250
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                0      153     250
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                1        3     250
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                0       42     247
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                1        0     247
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                0      205     247
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                1        0     247
6 months    ki1000109-EE              PAKISTAN                       0                0      598     752
6 months    ki1000109-EE              PAKISTAN                       0                1       16     752
6 months    ki1000109-EE              PAKISTAN                       1                0      136     752
6 months    ki1000109-EE              PAKISTAN                       1                1        2     752
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                0     1199    1334
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                1       38    1334
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                0       92    1334
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                1        5    1334
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                0       96     715
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                1        0     715
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                0      619     715
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                1        0     715
6 months    ki1113344-GMS-Nepal       NEPAL                          0                0      710    1020
6 months    ki1113344-GMS-Nepal       NEPAL                          0                1        8    1020
6 months    ki1113344-GMS-Nepal       NEPAL                          1                0      296    1020
6 months    ki1113344-GMS-Nepal       NEPAL                          1                1        6    1020
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                0     3354    7339
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                1       34    7339
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                0     3916    7339
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                1       35    7339
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                0    32992   33523
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                1      460   33523
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                0       71   33523
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                1        0   33523
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                0     3269    9456
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                1       21    9456
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                0     6122    9456
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                1       44    9456
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                0       83     211
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                1        0     211
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                0      128     211
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                1        0     211
24 months   ki0047075b-MAL-ED         BRAZIL                         0                0       89     169
24 months   ki0047075b-MAL-ED         BRAZIL                         0                1        0     169
24 months   ki0047075b-MAL-ED         BRAZIL                         1                0       79     169
24 months   ki0047075b-MAL-ED         BRAZIL                         1                1        1     169
24 months   ki0047075b-MAL-ED         INDIA                          0                0       92     227
24 months   ki0047075b-MAL-ED         INDIA                          0                1        1     227
24 months   ki0047075b-MAL-ED         INDIA                          1                0      133     227
24 months   ki0047075b-MAL-ED         INDIA                          1                1        1     227
24 months   ki0047075b-MAL-ED         NEPAL                          0                0      133     228
24 months   ki0047075b-MAL-ED         NEPAL                          0                1        0     228
24 months   ki0047075b-MAL-ED         NEPAL                          1                0       95     228
24 months   ki0047075b-MAL-ED         NEPAL                          1                1        0     228
24 months   ki0047075b-MAL-ED         PERU                           0                0       52     201
24 months   ki0047075b-MAL-ED         PERU                           0                1        0     201
24 months   ki0047075b-MAL-ED         PERU                           1                0      148     201
24 months   ki0047075b-MAL-ED         PERU                           1                1        1     201
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                0       91     235
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                1        0     235
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                0      144     235
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                1        0     235
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                0       34     214
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                1        0     214
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                0      180     214
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                1        0     214
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                0       71     514
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                1        0     514
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                0      439     514
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                1        4     514
24 months   ki1113344-GMS-Nepal       NEPAL                          0                0      614     908
24 months   ki1113344-GMS-Nepal       NEPAL                          0                1       22     908
24 months   ki1113344-GMS-Nepal       NEPAL                          1                0      268     908
24 months   ki1113344-GMS-Nepal       NEPAL                          1                1        4     908
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                0      158     370
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                1       14     370
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                0      184     370
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                1       14     370
24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                0    16498   17168
24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                1      669   17168
24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                0        1   17168
24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                1        0   17168
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                0     3108    9246
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                1      104    9246
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                0     5886    9246
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                1      148    9246


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
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
![](/tmp/84e814e9-056b-4953-8147-9c9d6b41612d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/84e814e9-056b-4953-8147-9c9d6b41612d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/84e814e9-056b-4953-8147-9c9d6b41612d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/84e814e9-056b-4953-8147-9c9d6b41612d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0630047    0.0585317   0.0674777
Birth       ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.0619541    0.0575567   0.0663515
6 months    ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0307195    0.0217846   0.0396544
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.0515464    0.0256358   0.0774570
6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                0.0111421    0.0002734   0.0220107
6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                0.0198675   -0.0024117   0.0421468
6 months    ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0100125    0.0067792   0.0132458
6 months    ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.0089401    0.0061032   0.0117771
6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0055279    0.0019228   0.0091330
6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0069166    0.0024595   0.0113738
24 months   ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0873410    0.0480475   0.1266345
24 months   ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.0763936    0.0411652   0.1116221
24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0298713    0.0210488   0.0386938
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0239362    0.0178497   0.0300227


### Parameter: E(Y)


agecat      studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0627117   0.0582829   0.0671405
6 months    ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.0322339   0.0235219   0.0409459
6 months    ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.0137255   0.0036178   0.0238332
6 months    ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0094018   0.0071937   0.0116099
6 months    kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.0068739   0.0035659   0.0101820
24 months   ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0756757   0.0486905   0.1026609
24 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.0272550   0.0219628   0.0325472


### Parameter: RR


agecat      studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO        ZIMBABWE     0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO        ZIMBABWE     1                    0                 0.9833250   0.9680201   0.9988719
6 months    ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    0                 1.6779707   0.9039483   3.1147640
6 months    ki1113344-GMS-Nepal       NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal       NEPAL        1                    0                 1.7831126   0.4033607   7.8824996
6 months    ki1126311-ZVITAMBO        ZIMBABWE     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO        ZIMBABWE     1                    0                 0.8928987   0.5686149   1.4021229
6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    0                 1.2512241   0.5059674   3.0941953
24 months   ki1126311-ZVITAMBO        ZIMBABWE     0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO        ZIMBABWE     1                    0                 0.8746595   0.4596079   1.6645260
24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    0                 0.8013098   0.5489857   1.1696067


### Parameter: PAR


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                -0.0002930   -0.0007571   0.0001712
6 months    ki1000304b-SAS-CompFeed   INDIA        0                    NA                 0.0015144   -0.0009910   0.0040198
6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                 0.0025834   -0.0047642   0.0099311
6 months    ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                -0.0006107   -0.0029222   0.0017009
6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                 0.0013460   -0.0023865   0.0050786
24 months   ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                -0.0116653   -0.0396170   0.0162864
24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0026163   -0.0093577   0.0041251


### Parameter: PAF


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                -0.0046719   -0.0120937   0.0026954
6 months    ki1000304b-SAS-CompFeed   INDIA        0                    NA                 0.0469816   -0.0343863   0.1219490
6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                 0.1882212   -0.5356449   0.5708743
6 months    ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                -0.0649513   -0.3416659   0.1546917
6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                 0.1958176   -0.5059099   0.5705524
24 months   ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                -0.1541487   -0.5933496   0.1639882
24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0959927   -0.3729173   0.1250747
