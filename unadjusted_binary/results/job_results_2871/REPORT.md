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

**Intervention Variable:** earlybf

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                   country                        earlybf    sstunted   n_cell       n
----------  ------------------------  -----------------------------  --------  ---------  -------  ------
Birth       ki0047075b-MAL-ED         BANGLADESH                     0                 0       90     256
Birth       ki0047075b-MAL-ED         BANGLADESH                     0                 1        7     256
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                 0      157     256
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                 1        2     256
Birth       ki0047075b-MAL-ED         BRAZIL                         0                 0      104     191
Birth       ki0047075b-MAL-ED         BRAZIL                         0                 1        4     191
Birth       ki0047075b-MAL-ED         BRAZIL                         1                 0       79     191
Birth       ki0047075b-MAL-ED         BRAZIL                         1                 1        4     191
Birth       ki0047075b-MAL-ED         INDIA                          0                 0       77     205
Birth       ki0047075b-MAL-ED         INDIA                          0                 1        4     205
Birth       ki0047075b-MAL-ED         INDIA                          1                 0      121     205
Birth       ki0047075b-MAL-ED         INDIA                          1                 1        3     205
Birth       ki0047075b-MAL-ED         NEPAL                          0                 0       90     173
Birth       ki0047075b-MAL-ED         NEPAL                          0                 1        4     173
Birth       ki0047075b-MAL-ED         NEPAL                          1                 0       77     173
Birth       ki0047075b-MAL-ED         NEPAL                          1                 1        2     173
Birth       ki0047075b-MAL-ED         PERU                           0                 0       68     287
Birth       ki0047075b-MAL-ED         PERU                           0                 1        5     287
Birth       ki0047075b-MAL-ED         PERU                           1                 0      211     287
Birth       ki0047075b-MAL-ED         PERU                           1                 1        3     287
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0                 0       91     247
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0                 1        1     247
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1                 0      155     247
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1                 1        0     247
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                 0       10     123
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                 1        2     123
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                 0      107     123
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                 1        4     123
Birth       ki1000109-EE              PAKISTAN                       0                 0        2       4
Birth       ki1000109-EE              PAKISTAN                       0                 1        0       4
Birth       ki1000109-EE              PAKISTAN                       1                 0        2       4
Birth       ki1000109-EE              PAKISTAN                       1                 1        0       4
Birth       ki1000304b-SAS-CompFeed   INDIA                          0                 0      155     177
Birth       ki1000304b-SAS-CompFeed   INDIA                          0                 1        8     177
Birth       ki1000304b-SAS-CompFeed   INDIA                          1                 0       13     177
Birth       ki1000304b-SAS-CompFeed   INDIA                          1                 1        1     177
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     0                 0        4      27
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     0                 1        0      27
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     1                 0       22      27
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     1                 1        1      27
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       0                 0     5569   12319
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       0                 1      217   12319
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1                 0     6365   12319
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1                 1      168   12319
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                 0    34752   39082
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                 1     3906   39082
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                 0      258   39082
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                 1      166   39082
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0                 0      460    1644
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0                 1       52    1644
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                 0     1056    1644
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                 1       76    1644
6 months    ki0047075b-MAL-ED         BANGLADESH                     0                 0       90     240
6 months    ki0047075b-MAL-ED         BANGLADESH                     0                 1        3     240
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                 0      142     240
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                 1        5     240
6 months    ki0047075b-MAL-ED         BRAZIL                         0                 0      114     209
6 months    ki0047075b-MAL-ED         BRAZIL                         0                 1        0     209
6 months    ki0047075b-MAL-ED         BRAZIL                         1                 0       95     209
6 months    ki0047075b-MAL-ED         BRAZIL                         1                 1        0     209
6 months    ki0047075b-MAL-ED         INDIA                          0                 0       92     236
6 months    ki0047075b-MAL-ED         INDIA                          0                 1        4     236
6 months    ki0047075b-MAL-ED         INDIA                          1                 0      135     236
6 months    ki0047075b-MAL-ED         INDIA                          1                 1        5     236
6 months    ki0047075b-MAL-ED         NEPAL                          0                 0      139     236
6 months    ki0047075b-MAL-ED         NEPAL                          0                 1        1     236
6 months    ki0047075b-MAL-ED         NEPAL                          1                 0       96     236
6 months    ki0047075b-MAL-ED         NEPAL                          1                 1        0     236
6 months    ki0047075b-MAL-ED         PERU                           0                 0       69     273
6 months    ki0047075b-MAL-ED         PERU                           0                 1        2     273
6 months    ki0047075b-MAL-ED         PERU                           1                 0      192     273
6 months    ki0047075b-MAL-ED         PERU                           1                 1       10     273
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                 0       89     250
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                 1        5     250
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                 0      155     250
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                 1        1     250
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                 0       36     247
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                 1        6     247
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                 0      197     247
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                 1        8     247
6 months    ki1000109-EE              PAKISTAN                       0                 0      452     744
6 months    ki1000109-EE              PAKISTAN                       0                 1      156     744
6 months    ki1000109-EE              PAKISTAN                       1                 0      104     744
6 months    ki1000109-EE              PAKISTAN                       1                 1       32     744
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                 0     1116    1336
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                 1      122    1336
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                 0       92    1336
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                 1        6    1336
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                 0       93     715
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                 1        3     715
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                 0      599     715
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                 1       20     715
6 months    ki1113344-GMS-Nepal       NEPAL                          0                 0      694    1020
6 months    ki1113344-GMS-Nepal       NEPAL                          0                 1       24    1020
6 months    ki1113344-GMS-Nepal       NEPAL                          1                 0      294    1020
6 months    ki1113344-GMS-Nepal       NEPAL                          1                 1        8    1020
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                 0     3244    7365
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                 1      153    7365
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                 0     3816    7365
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                 1      152    7365
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                 0    31499   33577
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                 1     2009   33577
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                 0       41   33577
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                 1       28   33577
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                 0     3091    9452
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                 1      197    9452
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                 0     5835    9452
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                 1      329    9452
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                 0       72     211
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                 1       11     211
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                 0      113     211
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                 1       15     211
24 months   ki0047075b-MAL-ED         BRAZIL                         0                 0       89     169
24 months   ki0047075b-MAL-ED         BRAZIL                         0                 1        0     169
24 months   ki0047075b-MAL-ED         BRAZIL                         1                 0       79     169
24 months   ki0047075b-MAL-ED         BRAZIL                         1                 1        1     169
24 months   ki0047075b-MAL-ED         INDIA                          0                 0       85     227
24 months   ki0047075b-MAL-ED         INDIA                          0                 1        8     227
24 months   ki0047075b-MAL-ED         INDIA                          1                 0      114     227
24 months   ki0047075b-MAL-ED         INDIA                          1                 1       20     227
24 months   ki0047075b-MAL-ED         NEPAL                          0                 0      127     228
24 months   ki0047075b-MAL-ED         NEPAL                          0                 1        6     228
24 months   ki0047075b-MAL-ED         NEPAL                          1                 0       94     228
24 months   ki0047075b-MAL-ED         NEPAL                          1                 1        1     228
24 months   ki0047075b-MAL-ED         PERU                           0                 0       50     201
24 months   ki0047075b-MAL-ED         PERU                           0                 1        2     201
24 months   ki0047075b-MAL-ED         PERU                           1                 0      136     201
24 months   ki0047075b-MAL-ED         PERU                           1                 1       13     201
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                 0       85     235
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                 1        6     235
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                 0      125     235
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                 1       19     235
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                 0       18     214
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                 1       16     214
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                 0      127     214
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                 1       53     214
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                 0       69     514
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                 1        2     514
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                 0      410     514
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                 1       33     514
24 months   ki1113344-GMS-Nepal       NEPAL                          0                 0      552     910
24 months   ki1113344-GMS-Nepal       NEPAL                          0                 1       86     910
24 months   ki1113344-GMS-Nepal       NEPAL                          1                 0      262     910
24 months   ki1113344-GMS-Nepal       NEPAL                          1                 1       10     910
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                 0      137     399
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                 1       48     399
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                 0      150     399
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                 1       64     399
24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                 0    14541   17226
24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                 1     2684   17226
24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                 0        1   17226
24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                 1        0   17226
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                 0     2927    9279
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                 1      296    9279
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                 0     5497    9279
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                 1      559    9279


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
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/e31ad477-8c35-46a8-b7c3-0a4ee9d184bd/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e31ad477-8c35-46a8-b7c3-0a4ee9d184bd/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e31ad477-8c35-46a8-b7c3-0a4ee9d184bd/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e31ad477-8c35-46a8-b7c3-0a4ee9d184bd/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                0.0375043   0.0326086   0.0424000
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                0.0257156   0.0218772   0.0295540
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                0.1010399   0.0963710   0.1057088
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                0.3915094   0.3156688   0.4673501
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                0.1015625   0.0587995   0.1443255
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                0.0671378   0.0420820   0.0921936
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1428571   0.0368142   0.2489001
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0390244   0.0124614   0.0655873
6 months    ki1000109-EE              PAKISTAN                       0                    NA                0.2565789   0.2074176   0.3057403
6 months    ki1000109-EE              PAKISTAN                       1                    NA                0.2352941   0.1343384   0.3362498
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                0.0985460   0.0798882   0.1172039
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                0.0612245   0.0218241   0.1006248
6 months    ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.0334262   0.0148144   0.0520380
6 months    ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.0264901   0.0008513   0.0521289
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                0.0450397   0.0380651   0.0520144
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                0.0383065   0.0323341   0.0442788
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                0.0599558   0.0561100   0.0638017
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                0.4057971   0.2511137   0.5604805
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                0.0599148   0.0483587   0.0714710
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                0.0533744   0.0447774   0.0619715
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.1325301   0.0594120   0.2056483
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.1171875   0.0613341   0.1730409
24 months   ki0047075b-MAL-ED         INDIA                          0                    NA                0.0860215   0.0289083   0.1431348
24 months   ki0047075b-MAL-ED         INDIA                          1                    NA                0.1492537   0.0887869   0.2097205
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                0.0659341   0.0148369   0.1170313
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                0.1319444   0.0765505   0.1873384
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.4705882   0.3024204   0.6387561
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2944444   0.2277029   0.3611860
24 months   ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.1347962   0.0972792   0.1723133
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.0367647   0.0051027   0.0684267
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                0.2594595   0.1962159   0.3227030
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                0.2990654   0.2376457   0.3604852
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                0.0918399   0.0756071   0.1080727
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                0.0923052   0.0807202   0.1038901


### Parameter: E(Y)


agecat      studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                0.0312525   0.0281798   0.0343253
Birth       kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                0.1041912   0.0995112   0.1088712
Birth       kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                0.0778589   0.0559066   0.0998111
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0566802   0.0277850   0.0855754
6 months    ki1000109-EE              PAKISTAN                       NA                   NA                0.2526882   0.2084696   0.2969067
6 months    ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                0.0958084   0.0774939   0.1141229
6 months    ki1113344-GMS-Nepal       NEPAL                          NA                   NA                0.0313725   0.0162285   0.0465166
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                0.0414121   0.0368615   0.0459627
6 months    kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                0.0606665   0.0568133   0.0645198
6 months    kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                0.0556496   0.0487560   0.0625432
24 months   ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.1232227   0.0787669   0.1676786
24 months   ki0047075b-MAL-ED         INDIA                          NA                   NA                0.1233480   0.0804760   0.1662200
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                0.1063830   0.0668780   0.1458880
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3224299   0.2596598   0.3852000
24 months   ki1113344-GMS-Nepal       NEPAL                          NA                   NA                0.1054945   0.0772375   0.1337515
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                0.2807018   0.2365565   0.3248470
24 months   kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                0.0921435   0.0826637   0.1016234


### Parameter: RR


agecat      studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1                    0                 0.6856703   0.5623391   0.8360502
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    0                 3.8748007   3.1674022   4.7401876
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                    0                 0.6610492   0.3777919   1.1566845
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0                 0.2731707   0.0997790   0.7478755
6 months    ki1000109-EE              PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000109-EE              PAKISTAN                       1                    0                 0.9170437   0.5732119   1.4671176
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    0                 0.6212780   0.3218794   1.1991644
6 months    ki1113344-GMS-Nepal       NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal       NEPAL                          1                    0                 0.7924945   0.2594562   2.4206303
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                    0                 0.8505034   0.6827189   1.0595224
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    0                 6.7682674   4.5875623   9.9855743
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    0                 0.8908382   0.6930216   1.1451199
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    0                 0.8842330   0.4265154   1.8331526
24 months   ki0047075b-MAL-ED         INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         INDIA                          1                    0                 1.7350746   0.7971338   3.7766357
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0                 2.0011574   0.8288967   4.8312785
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0                 0.6256944   0.4098045   0.9553177
24 months   ki1113344-GMS-Nepal       NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    0                 0.2727428   0.1103289   0.6742446
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    0                 1.1526480   0.8380531   1.5853379
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    0                 1.0050659   0.8100730   1.2469955


### Parameter: PAR


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                -0.0062518   -0.0095526   -0.0029510
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                 0.0031513    0.0022059    0.0040967
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -0.0237036   -0.0576327    0.0102255
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0861770   -0.1770384    0.0046844
6 months    ki1000109-EE              PAKISTAN                       0                    NA                -0.0038908   -0.0244338    0.0166523
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -0.0027377   -0.0068956    0.0014203
6 months    ki1113344-GMS-Nepal       NEPAL                          0                    NA                -0.0020536   -0.0114380    0.0073307
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                -0.0036277   -0.0085753    0.0013200
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                 0.0007107    0.0002985    0.0011229
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -0.0042652   -0.0136654    0.0051349
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -0.0093074   -0.0651331    0.0465184
24 months   ki0047075b-MAL-ED         INDIA                          0                    NA                 0.0373265   -0.0119398    0.0865928
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                 0.0404489   -0.0059137    0.0868115
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1481583   -0.3005861    0.0042694
24 months   ki1113344-GMS-Nepal       NEPAL                          0                    NA                -0.0293017   -0.0445449   -0.0140585
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                 0.0212423   -0.0260811    0.0685657
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                 0.0003036   -0.0126463    0.0132536


### Parameter: PAF


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                -0.2000409   -0.3085855   -0.1004998
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                 0.0302454    0.0211815    0.0392253
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -0.3044434   -0.8178993    0.0639897
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.5204082   -3.5100985   -0.4084964
6 months    ki1000109-EE              PAKISTAN                       0                    NA                -0.0153975   -0.1000237    0.0627182
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -0.0285743   -0.0734293    0.0144063
6 months    ki1113344-GMS-Nepal       NEPAL                          0                    NA                -0.0654596   -0.4087367    0.1941687
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                -0.0875990   -0.2134900    0.0252317
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                 0.0117148    0.0049092    0.0184739
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -0.0766446   -0.2600455    0.0800621
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -0.0755329   -0.6380641    0.2938182
24 months   ki0047075b-MAL-ED         INDIA                          0                    NA                 0.3026114   -0.2166709    0.6002609
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                 0.3802198   -0.2123749    0.6831611
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.4595055   -1.0223394   -0.0533130
24 months   ki1113344-GMS-Nepal       NEPAL                          0                    NA                -0.2777560   -0.4150726   -0.1537644
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                 0.0756757   -0.1091273    0.2296868
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                 0.0032954   -0.1476465    0.1343850
