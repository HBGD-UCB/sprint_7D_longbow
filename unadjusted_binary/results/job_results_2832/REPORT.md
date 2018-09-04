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

**Outcome Variable:** stunted

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

agecat      studyid                   country                        earlybf    stunted   n_cell       n
----------  ------------------------  -----------------------------  --------  --------  -------  ------
Birth       ki0047075b-MAL-ED         BANGLADESH                     0                0       75     256
Birth       ki0047075b-MAL-ED         BANGLADESH                     0                1       22     256
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                0      134     256
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                1       25     256
Birth       ki0047075b-MAL-ED         BRAZIL                         0                0       94     191
Birth       ki0047075b-MAL-ED         BRAZIL                         0                1       14     191
Birth       ki0047075b-MAL-ED         BRAZIL                         1                0       76     191
Birth       ki0047075b-MAL-ED         BRAZIL                         1                1        7     191
Birth       ki0047075b-MAL-ED         INDIA                          0                0       66     205
Birth       ki0047075b-MAL-ED         INDIA                          0                1       15     205
Birth       ki0047075b-MAL-ED         INDIA                          1                0      106     205
Birth       ki0047075b-MAL-ED         INDIA                          1                1       18     205
Birth       ki0047075b-MAL-ED         NEPAL                          0                0       83     173
Birth       ki0047075b-MAL-ED         NEPAL                          0                1       11     173
Birth       ki0047075b-MAL-ED         NEPAL                          1                0       72     173
Birth       ki0047075b-MAL-ED         NEPAL                          1                1        7     173
Birth       ki0047075b-MAL-ED         PERU                           0                0       61     287
Birth       ki0047075b-MAL-ED         PERU                           0                1       12     287
Birth       ki0047075b-MAL-ED         PERU                           1                0      192     287
Birth       ki0047075b-MAL-ED         PERU                           1                1       22     287
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0                0       78     247
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0                1       14     247
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1                0      143     247
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1                1       12     247
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                0        9     123
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                1        3     123
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                0       96     123
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                1       15     123
Birth       ki1000109-EE              PAKISTAN                       0                0        2       4
Birth       ki1000109-EE              PAKISTAN                       0                1        0       4
Birth       ki1000109-EE              PAKISTAN                       1                0        0       4
Birth       ki1000109-EE              PAKISTAN                       1                1        2       4
Birth       ki1000304b-SAS-CompFeed   INDIA                          0                0      122     177
Birth       ki1000304b-SAS-CompFeed   INDIA                          0                1       41     177
Birth       ki1000304b-SAS-CompFeed   INDIA                          1                0       13     177
Birth       ki1000304b-SAS-CompFeed   INDIA                          1                1        1     177
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     0                0        4      27
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     0                1        0      27
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     1                0       18      27
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     1                1        5      27
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       0                0     5157   12319
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       0                1      629   12319
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1                0     5894   12319
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1                1      639   12319
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                0    26296   39082
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                1    12362   39082
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                0      152   39082
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                1      272   39082
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0                0      348    1644
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0                1      164    1644
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                0      802    1644
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                1      330    1644
6 months    ki0047075b-MAL-ED         BANGLADESH                     0                0       72     240
6 months    ki0047075b-MAL-ED         BANGLADESH                     0                1       21     240
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                0      123     240
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                1       24     240
6 months    ki0047075b-MAL-ED         BRAZIL                         0                0      110     209
6 months    ki0047075b-MAL-ED         BRAZIL                         0                1        4     209
6 months    ki0047075b-MAL-ED         BRAZIL                         1                0       93     209
6 months    ki0047075b-MAL-ED         BRAZIL                         1                1        2     209
6 months    ki0047075b-MAL-ED         INDIA                          0                0       76     236
6 months    ki0047075b-MAL-ED         INDIA                          0                1       20     236
6 months    ki0047075b-MAL-ED         INDIA                          1                0      114     236
6 months    ki0047075b-MAL-ED         INDIA                          1                1       26     236
6 months    ki0047075b-MAL-ED         NEPAL                          0                0      132     236
6 months    ki0047075b-MAL-ED         NEPAL                          0                1        8     236
6 months    ki0047075b-MAL-ED         NEPAL                          1                0       92     236
6 months    ki0047075b-MAL-ED         NEPAL                          1                1        4     236
6 months    ki0047075b-MAL-ED         PERU                           0                0       56     273
6 months    ki0047075b-MAL-ED         PERU                           0                1       15     273
6 months    ki0047075b-MAL-ED         PERU                           1                0      157     273
6 months    ki0047075b-MAL-ED         PERU                           1                1       45     273
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                0       75     250
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                1       19     250
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                0      126     250
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                1       30     250
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                0       28     247
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                1       14     247
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                0      161     247
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                1       44     247
6 months    ki1000109-EE              PAKISTAN                       0                0      294     744
6 months    ki1000109-EE              PAKISTAN                       0                1      314     744
6 months    ki1000109-EE              PAKISTAN                       1                0       64     744
6 months    ki1000109-EE              PAKISTAN                       1                1       72     744
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                0      881    1336
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                1      357    1336
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                0       75    1336
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                1       23    1336
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                0       84     715
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                1       12     715
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                0      481     715
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                1      138     715
6 months    ki1113344-GMS-Nepal       NEPAL                          0                0      560    1020
6 months    ki1113344-GMS-Nepal       NEPAL                          0                1      158    1020
6 months    ki1113344-GMS-Nepal       NEPAL                          1                0      250    1020
6 months    ki1113344-GMS-Nepal       NEPAL                          1                1       52    1020
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                0     2791    7365
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                1      606    7365
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                0     3341    7365
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                1      627    7365
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                0    25106   33577
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                1     8402   33577
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                0       29   33577
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                1       40   33577
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                0     2424    9452
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                1      864    9452
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                0     4638    9452
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                1     1526    9452
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                0       47     211
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                1       36     211
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                0       67     211
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                1       61     211
24 months   ki0047075b-MAL-ED         BRAZIL                         0                0       85     169
24 months   ki0047075b-MAL-ED         BRAZIL                         0                1        4     169
24 months   ki0047075b-MAL-ED         BRAZIL                         1                0       78     169
24 months   ki0047075b-MAL-ED         BRAZIL                         1                1        2     169
24 months   ki0047075b-MAL-ED         INDIA                          0                0       55     227
24 months   ki0047075b-MAL-ED         INDIA                          0                1       38     227
24 months   ki0047075b-MAL-ED         INDIA                          1                0       77     227
24 months   ki0047075b-MAL-ED         INDIA                          1                1       57     227
24 months   ki0047075b-MAL-ED         NEPAL                          0                0      106     228
24 months   ki0047075b-MAL-ED         NEPAL                          0                1       27     228
24 months   ki0047075b-MAL-ED         NEPAL                          1                0       73     228
24 months   ki0047075b-MAL-ED         NEPAL                          1                1       22     228
24 months   ki0047075b-MAL-ED         PERU                           0                0       39     201
24 months   ki0047075b-MAL-ED         PERU                           0                1       13     201
24 months   ki0047075b-MAL-ED         PERU                           1                0       88     201
24 months   ki0047075b-MAL-ED         PERU                           1                1       61     201
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                0       63     235
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                1       28     235
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                0       90     235
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                1       54     235
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                0        8     214
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                1       26     214
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                0       53     214
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                1      127     214
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                0       62     514
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                1        9     514
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                0      320     514
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                1      123     514
24 months   ki1113344-GMS-Nepal       NEPAL                          0                0      310     910
24 months   ki1113344-GMS-Nepal       NEPAL                          0                1      328     910
24 months   ki1113344-GMS-Nepal       NEPAL                          1                0      194     910
24 months   ki1113344-GMS-Nepal       NEPAL                          1                1       78     910
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                0       65     399
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                1      120     399
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                0       75     399
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                1      139     399
24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                0     8772   17226
24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                1     8453   17226
24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                0        1   17226
24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                1        0   17226
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                0     1987    9279
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                1     1236    9279
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                0     3645    9279
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                1     2411    9279


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

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/37df5805-6ae3-46c0-ad54-dbc1e68640dc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/37df5805-6ae3-46c0-ad54-dbc1e68640dc/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/37df5805-6ae3-46c0-ad54-dbc1e68640dc/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/37df5805-6ae3-46c0-ad54-dbc1e68640dc/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.2268041   0.1433049   0.3103033
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.1572327   0.1005403   0.2139251
Birth       ki0047075b-MAL-ED         BRAZIL                         0                    NA                0.1296296   0.0661140   0.1931452
Birth       ki0047075b-MAL-ED         BRAZIL                         1                    NA                0.0843373   0.0243960   0.1442787
Birth       ki0047075b-MAL-ED         INDIA                          0                    NA                0.1851852   0.1003844   0.2699860
Birth       ki0047075b-MAL-ED         INDIA                          1                    NA                0.1451613   0.0830076   0.2073149
Birth       ki0047075b-MAL-ED         NEPAL                          0                    NA                0.1170213   0.0518509   0.1821917
Birth       ki0047075b-MAL-ED         NEPAL                          1                    NA                0.0886076   0.0257610   0.1514542
Birth       ki0047075b-MAL-ED         PERU                           0                    NA                0.1643836   0.0792154   0.2495517
Birth       ki0047075b-MAL-ED         PERU                           1                    NA                0.1028037   0.0620425   0.1435650
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                0.1521739   0.0786280   0.2257198
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                0.0774194   0.0352604   0.1195783
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                0.1087107   0.1006898   0.1167316
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                0.0978111   0.0906075   0.1050148
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                0.3197786   0.3121413   0.3274158
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                0.6415094   0.5652183   0.7178006
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                0.3203125   0.2529859   0.3876391
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                0.2915194   0.2488609   0.3341780
6 months    ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.2258065   0.1406522   0.3109607
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.1632653   0.1033915   0.2231391
6 months    ki0047075b-MAL-ED         INDIA                          0                    NA                0.2083333   0.1269220   0.2897447
6 months    ki0047075b-MAL-ED         INDIA                          1                    NA                0.1857143   0.1211612   0.2502674
6 months    ki0047075b-MAL-ED         PERU                           0                    NA                0.2112676   0.1161421   0.3063931
6 months    ki0047075b-MAL-ED         PERU                           1                    NA                0.2227723   0.1652847   0.2802599
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                0.2021277   0.1207821   0.2834733
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                0.1923077   0.1303383   0.2542771
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.3333333   0.1904775   0.4761892
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2146341   0.1583174   0.2709509
6 months    ki1000109-EE              PAKISTAN                       0                    NA                0.5164474   0.4601963   0.5726984
6 months    ki1000109-EE              PAKISTAN                       1                    NA                0.5294118   0.4106175   0.6482060
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                0.2883683   0.2709758   0.3057609
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                0.2346939   0.1781778   0.2912099
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                0.1250000   0.0587973   0.1912027
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                0.2229402   0.1901286   0.2557519
6 months    ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.2200557   0.1771589   0.2629525
6 months    ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.1721854   0.1119086   0.2324623
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                0.1783927   0.1655176   0.1912678
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                0.1580141   0.1466642   0.1693640
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                0.2507461   0.2426223   0.2588699
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                0.5797101   0.4169850   0.7424353
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                0.2627737   0.2376974   0.2878500
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                0.2475665   0.2300662   0.2650668
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.4337349   0.3268632   0.5406066
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.4765625   0.3898330   0.5632920
24 months   ki0047075b-MAL-ED         INDIA                          0                    NA                0.4086022   0.3084742   0.5087301
24 months   ki0047075b-MAL-ED         INDIA                          1                    NA                0.4253731   0.3414788   0.5092674
24 months   ki0047075b-MAL-ED         NEPAL                          0                    NA                0.2030075   0.1344966   0.2715185
24 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                0.2315789   0.1465650   0.3165928
24 months   ki0047075b-MAL-ED         PERU                           0                    NA                0.2500000   0.1320141   0.3679859
24 months   ki0047075b-MAL-ED         PERU                           1                    NA                0.4093960   0.3302447   0.4885473
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                0.3076923   0.2126622   0.4027224
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                0.3750000   0.2957593   0.4542407
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7647059   0.6217907   0.9076211
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7055556   0.6388140   0.7722971
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                0.1267606   0.0492965   0.2042247
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                0.2776524   0.2359085   0.3193963
24 months   ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.5141066   0.4591996   0.5690136
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.2867647   0.2106733   0.3628561
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                0.6486486   0.5797703   0.7175270
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                0.6495327   0.5855282   0.7135372
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                0.3834936   0.3561099   0.4108774
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                0.3981176   0.3772860   0.4189491


### Parameter: E(Y)


agecat      studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.1835938   0.1360755   0.2311120
Birth       ki0047075b-MAL-ED         BRAZIL                         NA                   NA                0.1099476   0.0654669   0.1544284
Birth       ki0047075b-MAL-ED         INDIA                          NA                   NA                0.1609756   0.1105443   0.2114069
Birth       ki0047075b-MAL-ED         NEPAL                          NA                   NA                0.1040462   0.0584174   0.1496751
Birth       ki0047075b-MAL-ED         PERU                           NA                   NA                0.1184669   0.0810142   0.1559196
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                0.1052632   0.0669131   0.1436132
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                0.1029304   0.0975643   0.1082966
Birth       kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                0.3232690   0.3156091   0.3309289
Birth       kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                0.3004866   0.2649179   0.3360553
6 months    ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.1875000   0.1380164   0.2369836
6 months    ki0047075b-MAL-ED         INDIA                          NA                   NA                0.1949153   0.1442678   0.2455627
6 months    ki0047075b-MAL-ED         PERU                           NA                   NA                0.2197802   0.1705687   0.2689917
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                0.1960000   0.1466935   0.2453065
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2348178   0.1818480   0.2877876
6 months    ki1000109-EE              PAKISTAN                       NA                   NA                0.5188172   0.4679751   0.5696593
6 months    ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                0.2844311   0.2666491   0.3022132
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                0.2097902   0.1799252   0.2396552
6 months    ki1113344-GMS-Nepal       NEPAL                          NA                   NA                0.2058824   0.1707553   0.2410094
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                0.1674134   0.1588863   0.1759405
6 months    kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                0.2514221   0.2433018   0.2595424
6 months    kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                0.2528565   0.2387323   0.2669808
24 months   ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.4597156   0.3923103   0.5271210
24 months   ki0047075b-MAL-ED         INDIA                          NA                   NA                0.4185022   0.3541865   0.4828179
24 months   ki0047075b-MAL-ED         NEPAL                          NA                   NA                0.2149123   0.1614774   0.2683472
24 months   ki0047075b-MAL-ED         PERU                           NA                   NA                0.3681592   0.3013164   0.4350020
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                0.3489362   0.2878666   0.4100058
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7149533   0.6543278   0.7755787
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                0.2568093   0.2190047   0.2946140
24 months   ki1113344-GMS-Nepal       NEPAL                          NA                   NA                0.4461538   0.4004285   0.4918792
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                0.6491228   0.6022363   0.6960093
24 months   kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                0.3930380   0.3758543   0.4102217


### Parameter: RR


agecat      studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                    0                 0.6932533   0.4140908   1.1606154
Birth       ki0047075b-MAL-ED         BRAZIL                         0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED         BRAZIL                         1                    0                 0.6506024   0.2744139   1.5425001
Birth       ki0047075b-MAL-ED         INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED         INDIA                          1                    0                 0.7838710   0.4187727   1.4672726
Birth       ki0047075b-MAL-ED         NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED         NEPAL                          1                    0                 0.7571922   0.3073032   1.8657146
Birth       ki0047075b-MAL-ED         PERU                           0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED         PERU                           1                    0                 0.6253894   0.3256950   1.2008533
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0                 0.5087558   0.2456420   1.0536977
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1                    0                 0.8997379   0.8106646   0.9985982
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    0                 2.0061051   1.7781882   2.2632350
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                    0                 0.9101095   0.7017336   1.1803613
6 months    ki0047075b-MAL-ED         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    0                 0.7230321   0.4272755   1.2235090
6 months    ki0047075b-MAL-ED         INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED         INDIA                          1                    0                 0.8914286   0.5283865   1.5039084
6 months    ki0047075b-MAL-ED         PERU                           0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED         PERU                           1                    0                 1.0544554   0.6275430   1.7717931
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0                 0.9514170   0.5681537   1.5932208
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0                 0.6439024   0.3895676   1.0642833
6 months    ki1000109-EE              PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000109-EE              PAKISTAN                       1                    0                 1.0251030   0.7988085   1.3155045
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    0                 0.8138684   0.6506427   1.0180423
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                    0                 1.7835218   1.0293210   3.0903382
6 months    ki1113344-GMS-Nepal       NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal       NEPAL                          1                    0                 0.7824629   0.5241413   1.1680977
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                    0                 0.8857656   0.8000129   0.9807100
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    0                 2.3119409   1.7422669   3.0678830
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    0                 0.9421281   0.8350348   1.0629561
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    0                 1.0987413   0.8088387   1.4925504
24 months   ki0047075b-MAL-ED         INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         INDIA                          1                    0                 1.0410448   0.7600781   1.4258722
24 months   ki0047075b-MAL-ED         NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         NEPAL                          1                    0                 1.1407407   0.6928239   1.8782399
24 months   ki0047075b-MAL-ED         PERU                           0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         PERU                           1                    0                 1.6375839   0.9833524   2.7270803
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0                 1.2187500   0.8382899   1.7718829
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0                 0.9226496   0.7482854   1.1376438
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    0                 2.1903687   1.1673562   4.1098980
24 months   ki1113344-GMS-Nepal       NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    0                 0.5577923   0.4190353   0.7424966
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    0                 1.0013629   0.8663185   1.1574585
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    0                 1.0381334   0.9533489   1.1304581


### Parameter: PAR


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -0.0432104   -0.1060319    0.0196111
Birth       ki0047075b-MAL-ED         BRAZIL                         0                    NA                -0.0196820   -0.0577674    0.0184034
Birth       ki0047075b-MAL-ED         INDIA                          0                    NA                -0.0242096   -0.0878626    0.0394435
Birth       ki0047075b-MAL-ED         NEPAL                          0                    NA                -0.0129750   -0.0543724    0.0284223
Birth       ki0047075b-MAL-ED         PERU                           0                    NA                -0.0459167   -0.1163888    0.0245555
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -0.0469108   -0.1002995    0.0064779
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                -0.0057802   -0.0114984   -0.0000621
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                 0.0034905    0.0025451    0.0044358
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -0.0198259   -0.0754743    0.0358226
6 months    ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -0.0383065   -0.1021826    0.0255697
6 months    ki0047075b-MAL-ED         INDIA                          0                    NA                -0.0134181   -0.0750692    0.0482330
6 months    ki0047075b-MAL-ED         PERU                           0                    NA                 0.0085126   -0.0737303    0.0907555
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -0.0061277   -0.0699413    0.0576860
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0985155   -0.2260824    0.0290513
6 months    ki1000109-EE              PAKISTAN                       0                    NA                 0.0023698   -0.0216621    0.0264018
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -0.0039372   -0.0088200    0.0009456
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                 0.0847902    0.0207762    0.1488042
6 months    ki1113344-GMS-Nepal       NEPAL                          0                    NA                -0.0141734   -0.0361602    0.0078134
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                -0.0109793   -0.0202293   -0.0017292
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                 0.0006760    0.0002643    0.0010877
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -0.0099172   -0.0301655    0.0103312
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                 0.0259807   -0.0575618    0.1095232
24 months   ki0047075b-MAL-ED         INDIA                          0                    NA                 0.0099001   -0.0672187    0.0870188
24 months   ki0047075b-MAL-ED         NEPAL                          0                    NA                 0.0119048   -0.0336254    0.0574349
24 months   ki0047075b-MAL-ED         PERU                           0                    NA                 0.1181592    0.0123958    0.2239226
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                 0.0412439   -0.0346917    0.1171794
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0497526   -0.1824557    0.0829504
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                 0.1300488    0.0540744    0.2060231
24 months   ki1113344-GMS-Nepal       NEPAL                          0                    NA                -0.0679527   -0.0975884   -0.0383171
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                 0.0004742   -0.0499556    0.0509039
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                 0.0095444   -0.0120572    0.0311460


### Parameter: PAF


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -0.2353586   -0.6264335    0.0616825
Birth       ki0047075b-MAL-ED         BRAZIL                         0                    NA                -0.1790123   -0.5744279    0.1170951
Birth       ki0047075b-MAL-ED         INDIA                          0                    NA                -0.1503928   -0.6200618    0.1831153
Birth       ki0047075b-MAL-ED         NEPAL                          0                    NA                -0.1247045   -0.5980788    0.2084494
Birth       ki0047075b-MAL-ED         PERU                           0                    NA                -0.3875906   -1.1181288    0.0909864
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -0.4456522   -1.0285703   -0.0302380
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                -0.0561568   -0.1131353   -0.0020950
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                 0.0107974    0.0078795    0.0137066
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -0.0659793   -0.2680288    0.1038754
6 months    ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -0.2043011   -0.5955225    0.0909930
6 months    ki0047075b-MAL-ED         INDIA                          0                    NA                -0.0688406   -0.4365889    0.2047689
6 months    ki0047075b-MAL-ED         PERU                           0                    NA                 0.0387324   -0.4186885    0.3486693
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -0.0312636   -0.4140366    0.2478946
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.4195402   -1.0798279    0.0311244
6 months    ki1000109-EE              PAKISTAN                       0                    NA                 0.0045678   -0.0428501    0.0498295
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -0.0138424   -0.0313666    0.0033841
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                 0.4041667    0.0118732    0.6407168
6 months    ki1113344-GMS-Nepal       NEPAL                          0                    NA                -0.0688420   -0.1808338    0.0325283
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                -0.0655817   -0.1222311   -0.0117919
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                 0.0026888    0.0010492    0.0043257
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -0.0392206   -0.1224175    0.0378095
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                 0.0565147   -0.1440318    0.2219058
24 months   ki0047075b-MAL-ED         INDIA                          0                    NA                 0.0236559   -0.1791722    0.1915958
24 months   ki0047075b-MAL-ED         NEPAL                          0                    NA                 0.0553936   -0.1818279    0.2449990
24 months   ki0047075b-MAL-ED         PERU                           0                    NA                 0.3209459   -0.0347700    0.5543798
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                 0.1181989   -0.1285580    0.3110029
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0695886   -0.2727644    0.1011535
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                 0.5064020    0.1125047    0.7254758
24 months   ki1113344-GMS-Nepal       NEPAL                          0                    NA                -0.1523079   -0.2223304   -0.0862966
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                 0.0007305   -0.0800585    0.0754763
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                 0.0242837   -0.0322469    0.0777184
