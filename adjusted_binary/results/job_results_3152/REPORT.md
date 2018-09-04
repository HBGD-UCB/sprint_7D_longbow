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



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/a3635008-4c4e-406d-97fb-24fa6b92fbf8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a3635008-4c4e-406d-97fb-24fa6b92fbf8/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a3635008-4c4e-406d-97fb-24fa6b92fbf8/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a3635008-4c4e-406d-97fb-24fa6b92fbf8/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.2726123   0.1919150   0.3533095
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.1721677   0.1161351   0.2282003
Birth       ki0047075b-MAL-ED         BRAZIL                         0                    NA                0.1296296   0.0661140   0.1931452
Birth       ki0047075b-MAL-ED         BRAZIL                         1                    NA                0.0843373   0.0243960   0.1442787
Birth       ki0047075b-MAL-ED         INDIA                          0                    NA                0.1830012   0.0982144   0.2677879
Birth       ki0047075b-MAL-ED         INDIA                          1                    NA                0.1464243   0.0847167   0.2081318
Birth       ki0047075b-MAL-ED         NEPAL                          0                    NA                0.1170213   0.0518509   0.1821917
Birth       ki0047075b-MAL-ED         NEPAL                          1                    NA                0.0886076   0.0257610   0.1514542
Birth       ki0047075b-MAL-ED         PERU                           0                    NA                0.1869266   0.1051440   0.2687091
Birth       ki0047075b-MAL-ED         PERU                           1                    NA                0.1040242   0.0633355   0.1447130
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                0.1616046   0.0885708   0.2346384
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                0.0801565   0.0380388   0.1222742
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                0.1029133   0.0975480   0.1082786
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                0.1028958   0.0975314   0.1082602
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                0.3232683   0.3156084   0.3309282
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                0.3228719   0.3152220   0.3305218
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                0.3005119   0.2649383   0.3360855
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                0.3004749   0.2649082   0.3360415
6 months    ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.2833085   0.2034945   0.3631225
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.1910493   0.1325451   0.2495534
6 months    ki0047075b-MAL-ED         INDIA                          0                    NA                0.2830099   0.2149569   0.3510629
6 months    ki0047075b-MAL-ED         INDIA                          1                    NA                0.2153358   0.1564938   0.2741777
6 months    ki0047075b-MAL-ED         PERU                           0                    NA                0.2124754   0.1176892   0.3072616
6 months    ki0047075b-MAL-ED         PERU                           1                    NA                0.2223374   0.1650183   0.2796565
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                0.1992454   0.1189673   0.2795234
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                0.1939412   0.1319491   0.2559333
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.4875758   0.3813039   0.5938477
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2182165   0.1629929   0.2734402
6 months    ki1000109-EE              PAKISTAN                       0                    NA                0.5014809   0.4479820   0.5549798
6 months    ki1000109-EE              PAKISTAN                       1                    NA                0.3239376   0.2584457   0.3894294
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                0.2882252   0.2712308   0.3052197
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                0.2561521   0.1945586   0.3177457
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                0.1227699   0.0624592   0.1830806
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                0.2227700   0.1901033   0.2554368
6 months    ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.2112600   0.1691194   0.2534006
6 months    ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.1366711   0.0826972   0.1906450
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                0.1638095   0.1524085   0.1752106
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                0.1617205   0.1511614   0.1722797
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                0.2508272   0.2426986   0.2589557
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                0.3999566   0.3523922   0.4475209
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                0.2598153   0.2370286   0.2826020
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                0.2444785   0.2279179   0.2610390
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.5484329   0.4579732   0.6388926
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.5614954   0.4828060   0.6401849
24 months   ki0047075b-MAL-ED         INDIA                          0                    NA                0.4118759   0.3158327   0.5079191
24 months   ki0047075b-MAL-ED         INDIA                          1                    NA                0.4230547   0.3414106   0.5046988
24 months   ki0047075b-MAL-ED         NEPAL                          0                    NA                0.2125178   0.1470433   0.2779923
24 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                0.2688754   0.1917407   0.3460100
24 months   ki0047075b-MAL-ED         PERU                           0                    NA                0.2427335   0.1342912   0.3511758
24 months   ki0047075b-MAL-ED         PERU                           1                    NA                0.4122015   0.3338288   0.4905741
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                0.3487307   0.2616231   0.4358383
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                0.3964996   0.3202327   0.4727666
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7647059   0.6217907   0.9076211
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7055556   0.6388140   0.7722971
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                0.1267606   0.0492965   0.2042247
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                0.2776524   0.2359085   0.3193963
24 months   ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.5001176   0.4474778   0.5527574
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.2495511   0.1861216   0.3129805
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                0.4894326   0.4261882   0.5526770
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                0.5594188   0.4998035   0.6190341
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                0.3779649   0.3523370   0.4035928
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                0.3921148   0.3717432   0.4124865


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
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                    0                 0.6315478   0.4064690   0.9812620
Birth       ki0047075b-MAL-ED         BRAZIL                         0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED         BRAZIL                         1                    0                 0.6506024   0.2744139   1.5425001
Birth       ki0047075b-MAL-ED         INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED         INDIA                          1                    0                 0.8001274   0.4290076   1.4922903
Birth       ki0047075b-MAL-ED         NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED         NEPAL                          1                    0                 0.7571922   0.3073032   1.8657146
Birth       ki0047075b-MAL-ED         PERU                           0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED         PERU                           1                    0                 0.5564979   0.3099890   0.9990351
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0                 0.4960039   0.2480445   0.9918378
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1                    0                 0.9998300   0.9997257   0.9999344
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    0                 0.9987739   0.9987389   0.9988088
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                    0                 0.9998768   0.9991942   1.0005598
6 months    ki0047075b-MAL-ED         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    0                 0.6743506   0.4466328   1.0181715
6 months    ki0047075b-MAL-ED         INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED         INDIA                          1                    0                 0.7608771   0.5494944   1.0535756
6 months    ki0047075b-MAL-ED         PERU                           0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED         PERU                           1                    0                 1.0464148   0.6260267   1.7491011
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0                 0.9733788   0.5833663   1.6241362
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0                 0.4475541   0.3228775   0.6203734
6 months    ki1000109-EE              PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000109-EE              PAKISTAN                       1                    0                 0.6459619   0.5198353   0.8026904
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    0                 0.8887221   0.7094336   1.1133204
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                    0                 1.8145329   1.0867598   3.0296756
6 months    ki1113344-GMS-Nepal       NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal       NEPAL                          1                    0                 0.6469332   0.4158098   1.0065239
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                    0                 0.9872473   0.9018625   1.0807159
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    0                 1.5945503   1.4098293   1.8034743
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    0                 0.9409704   0.8464390   1.0460591
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    0                 1.0238179   0.8359798   1.2538618
24 months   ki0047075b-MAL-ED         INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         INDIA                          1                    0                 1.0271413   0.7669321   1.3756357
24 months   ki0047075b-MAL-ED         NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         NEPAL                          1                    0                 1.2651899   0.8448535   1.8946547
24 months   ki0047075b-MAL-ED         PERU                           0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         PERU                           1                    0                 1.6981649   1.0557273   2.7315426
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0                 1.1369795   0.8315200   1.5546497
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0                 0.9226496   0.7482854   1.1376438
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    0                 2.1903687   1.1673562   4.1098980
24 months   ki1113344-GMS-Nepal       NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    0                 0.4989848   0.3796447   0.6558389
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    0                 1.1429947   0.9769824   1.3372163
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    0                 1.0374373   0.9586265   1.1227273


### Parameter: PAR


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -0.0890185   -0.1501785   -0.0278586
Birth       ki0047075b-MAL-ED         BRAZIL                         0                    NA                -0.0196820   -0.0577674    0.0184034
Birth       ki0047075b-MAL-ED         INDIA                          0                    NA                -0.0220256   -0.0852070    0.0411559
Birth       ki0047075b-MAL-ED         NEPAL                          0                    NA                -0.0129750   -0.0543724    0.0284223
Birth       ki0047075b-MAL-ED         PERU                           0                    NA                -0.0684597   -0.1363679   -0.0005515
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -0.0563415   -0.1094593   -0.0032236
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                 0.0000171    0.0000116    0.0000227
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                 0.0000007    0.0000004    0.0000010
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -0.0000253   -0.0001661    0.0001155
6 months    ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -0.0958085   -0.1553261   -0.0362909
6 months    ki0047075b-MAL-ED         INDIA                          0                    NA                -0.0880947   -0.1350909   -0.0410984
6 months    ki0047075b-MAL-ED         PERU                           0                    NA                 0.0073048   -0.0744082    0.0890178
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -0.0032454   -0.0659739    0.0594831
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.2527580   -0.3474003   -0.1581157
6 months    ki1000109-EE              PAKISTAN                       0                    NA                 0.0173363   -0.0041515    0.0388241
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -0.0037941   -0.0085903    0.0010021
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                 0.0870203    0.0283713    0.1456693
6 months    ki1113344-GMS-Nepal       NEPAL                          0                    NA                -0.0053777   -0.0268980    0.0161427
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                 0.0036039   -0.0043152    0.0115230
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                 0.0005949    0.0002111    0.0009787
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -0.0069587   -0.0244752    0.0105578
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -0.0887172   -0.1551194   -0.0223151
24 months   ki0047075b-MAL-ED         INDIA                          0                    NA                 0.0066263   -0.0651974    0.0784501
24 months   ki0047075b-MAL-ED         NEPAL                          0                    NA                 0.0023945   -0.0385075    0.0432965
24 months   ki0047075b-MAL-ED         PERU                           0                    NA                 0.1254257    0.0284873    0.2223641
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                 0.0002055   -0.0692896    0.0697006
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0497526   -0.1824557    0.0829504
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                 0.1300488    0.0540744    0.2060231
24 months   ki1113344-GMS-Nepal       NEPAL                          0                    NA                -0.0539637   -0.0817166   -0.0262109
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                 0.1596902    0.1151402    0.2042403
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                 0.0150732   -0.0046739    0.0348202


### Parameter: PAF


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -0.4848669   -0.8738061   -0.1766583
Birth       ki0047075b-MAL-ED         BRAZIL                         0                    NA                -0.1790123   -0.5744279    0.1170951
Birth       ki0047075b-MAL-ED         INDIA                          0                    NA                -0.1368254   -0.6026820    0.1936191
Birth       ki0047075b-MAL-ED         NEPAL                          0                    NA                -0.1247045   -0.5980788    0.2084494
Birth       ki0047075b-MAL-ED         PERU                           0                    NA                -0.5778801   -1.2760986   -0.0938479
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -0.5352438   -1.1156178   -0.1140829
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                 0.0001664    0.0001132    0.0002196
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                 0.0000023    0.0000014    0.0000032
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -0.0000841   -0.0005526    0.0003841
6 months    ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -0.5109786   -0.8882638   -0.2090770
6 months    ki0047075b-MAL-ED         INDIA                          0                    NA                -0.4519639   -0.7503090   -0.2044726
6 months    ki0047075b-MAL-ED         PERU                           0                    NA                 0.0332370   -0.4201208    0.3418653
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -0.0165580   -0.3926766    0.2579826
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.0764005   -1.6166305   -0.6477064
6 months    ki1000109-EE              PAKISTAN                       0                    NA                 0.0334151   -0.0087482    0.0738161
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -0.0133392   -0.0306121    0.0036442
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                 0.4147968    0.0652863    0.6336175
6 months    ki1113344-GMS-Nepal       NEPAL                          0                    NA                -0.0261200   -0.1360048    0.0731357
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                 0.0215269   -0.0269050    0.0676746
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                 0.0023663    0.0008369    0.0038934
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -0.0275205   -0.0991589    0.0394488
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -0.1929829   -0.3523177   -0.0524215
24 months   ki0047075b-MAL-ED         INDIA                          0                    NA                 0.0158334   -0.1716587    0.1733226
24 months   ki0047075b-MAL-ED         NEPAL                          0                    NA                 0.0111417   -0.1985653    0.1841574
24 months   ki0047075b-MAL-ED         PERU                           0                    NA                 0.3406834    0.0212057    0.5558838
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                 0.0005889   -0.2197907    0.1811524
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0695886   -0.2727644    0.1011535
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                 0.5064020    0.1125047    0.7254758
24 months   ki1113344-GMS-Nepal       NEPAL                          0                    NA                -0.1209532   -0.1866651   -0.0588802
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                 0.2460093    0.1725080    0.3129819
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                 0.0383505   -0.0131827    0.0872625
