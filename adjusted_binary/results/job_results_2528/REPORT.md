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

agecat      studyid                   country                        earlybf    stunted   n_cell       n
----------  ------------------------  -----------------------------  --------  --------  -------  ------
Birth       ki0047075b-MAL-ED         BANGLADESH                     0                0       75     256
Birth       ki0047075b-MAL-ED         BANGLADESH                     0                1       22     256
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                0      134     256
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                1       25     256
6 months    ki0047075b-MAL-ED         BANGLADESH                     0                0       72     240
6 months    ki0047075b-MAL-ED         BANGLADESH                     0                1       21     240
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                0      123     240
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                1       24     240
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                0       47     211
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                1       36     211
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                0       67     211
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                1       61     211
Birth       ki0047075b-MAL-ED         BRAZIL                         0                0       94     191
Birth       ki0047075b-MAL-ED         BRAZIL                         0                1       14     191
Birth       ki0047075b-MAL-ED         BRAZIL                         1                0       76     191
Birth       ki0047075b-MAL-ED         BRAZIL                         1                1        7     191
6 months    ki0047075b-MAL-ED         BRAZIL                         0                0      110     209
6 months    ki0047075b-MAL-ED         BRAZIL                         0                1        4     209
6 months    ki0047075b-MAL-ED         BRAZIL                         1                0       93     209
6 months    ki0047075b-MAL-ED         BRAZIL                         1                1        2     209
24 months   ki0047075b-MAL-ED         BRAZIL                         0                0       85     169
24 months   ki0047075b-MAL-ED         BRAZIL                         0                1        4     169
24 months   ki0047075b-MAL-ED         BRAZIL                         1                0       78     169
24 months   ki0047075b-MAL-ED         BRAZIL                         1                1        2     169
Birth       ki0047075b-MAL-ED         INDIA                          0                0       66     205
Birth       ki0047075b-MAL-ED         INDIA                          0                1       15     205
Birth       ki0047075b-MAL-ED         INDIA                          1                0      106     205
Birth       ki0047075b-MAL-ED         INDIA                          1                1       18     205
6 months    ki0047075b-MAL-ED         INDIA                          0                0       76     236
6 months    ki0047075b-MAL-ED         INDIA                          0                1       20     236
6 months    ki0047075b-MAL-ED         INDIA                          1                0      114     236
6 months    ki0047075b-MAL-ED         INDIA                          1                1       26     236
24 months   ki0047075b-MAL-ED         INDIA                          0                0       55     227
24 months   ki0047075b-MAL-ED         INDIA                          0                1       38     227
24 months   ki0047075b-MAL-ED         INDIA                          1                0       77     227
24 months   ki0047075b-MAL-ED         INDIA                          1                1       57     227
6 months    ki0047075b-MAL-ED         NEPAL                          0                0      132     236
6 months    ki0047075b-MAL-ED         NEPAL                          0                1        8     236
6 months    ki0047075b-MAL-ED         NEPAL                          1                0       92     236
6 months    ki0047075b-MAL-ED         NEPAL                          1                1        4     236
24 months   ki0047075b-MAL-ED         NEPAL                          0                0      106     228
24 months   ki0047075b-MAL-ED         NEPAL                          0                1       27     228
24 months   ki0047075b-MAL-ED         NEPAL                          1                0       73     228
24 months   ki0047075b-MAL-ED         NEPAL                          1                1       22     228
Birth       ki0047075b-MAL-ED         NEPAL                          0                0       83     173
Birth       ki0047075b-MAL-ED         NEPAL                          0                1       11     173
Birth       ki0047075b-MAL-ED         NEPAL                          1                0       72     173
Birth       ki0047075b-MAL-ED         NEPAL                          1                1        7     173
Birth       ki0047075b-MAL-ED         PERU                           0                0       61     287
Birth       ki0047075b-MAL-ED         PERU                           0                1       12     287
Birth       ki0047075b-MAL-ED         PERU                           1                0      192     287
Birth       ki0047075b-MAL-ED         PERU                           1                1       22     287
6 months    ki0047075b-MAL-ED         PERU                           0                0       56     273
6 months    ki0047075b-MAL-ED         PERU                           0                1       15     273
6 months    ki0047075b-MAL-ED         PERU                           1                0      157     273
6 months    ki0047075b-MAL-ED         PERU                           1                1       45     273
24 months   ki0047075b-MAL-ED         PERU                           0                0       39     201
24 months   ki0047075b-MAL-ED         PERU                           0                1       13     201
24 months   ki0047075b-MAL-ED         PERU                           1                0       88     201
24 months   ki0047075b-MAL-ED         PERU                           1                1       61     201
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0                0       78     247
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0                1       14     247
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1                0      143     247
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1                1       12     247
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                0       75     250
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                1       19     250
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                0      126     250
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                1       30     250
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                0       63     235
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                1       28     235
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                0       90     235
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                1       54     235
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                0        9     123
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                1        3     123
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                0       96     123
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                1       15     123
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                0       28     247
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                1       14     247
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                0      161     247
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                1       44     247
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                0        8     214
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                1       26     214
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                0       53     214
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                1      127     214
6 months    ki1000109-EE              PAKISTAN                       0                0      147     372
6 months    ki1000109-EE              PAKISTAN                       0                1      157     372
6 months    ki1000109-EE              PAKISTAN                       1                0       32     372
6 months    ki1000109-EE              PAKISTAN                       1                1       36     372
Birth       ki1000109-EE              PAKISTAN                       0                0        1       2
Birth       ki1000109-EE              PAKISTAN                       0                1        0       2
Birth       ki1000109-EE              PAKISTAN                       1                0        0       2
Birth       ki1000109-EE              PAKISTAN                       1                1        1       2
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                0      881    1336
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                1      357    1336
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                0       75    1336
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                1       23    1336
Birth       ki1000304b-SAS-CompFeed   INDIA                          0                0      122     177
Birth       ki1000304b-SAS-CompFeed   INDIA                          0                1       41     177
Birth       ki1000304b-SAS-CompFeed   INDIA                          1                0       13     177
Birth       ki1000304b-SAS-CompFeed   INDIA                          1                1        1     177
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     0                0        4      27
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     0                1        0      27
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     1                0       18      27
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     1                1        5      27
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                0       84     715
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                1       12     715
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                0      481     715
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                1      138     715
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                0       62     514
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                1        9     514
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                0      320     514
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                1      123     514
6 months    ki1113344-GMS-Nepal       NEPAL                          0                0      280     510
6 months    ki1113344-GMS-Nepal       NEPAL                          0                1       79     510
6 months    ki1113344-GMS-Nepal       NEPAL                          1                0      125     510
6 months    ki1113344-GMS-Nepal       NEPAL                          1                1       26     510
24 months   ki1113344-GMS-Nepal       NEPAL                          0                0      155     455
24 months   ki1113344-GMS-Nepal       NEPAL                          0                1      164     455
24 months   ki1113344-GMS-Nepal       NEPAL                          1                0       97     455
24 months   ki1113344-GMS-Nepal       NEPAL                          1                1       39     455
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       0                0     5157   12319
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       0                1      629   12319
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1                0     5894   12319
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1                1      639   12319
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                0     2791    7365
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                1      606    7365
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                0     3341    7365
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                1      627    7365
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                0       65     399
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                1      120     399
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                0       75     399
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                1      139     399
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                0    13148   19541
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                1     6181   19541
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                0       76   19541
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                1      136   19541
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                0    12570   16811
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                1     4206   16811
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                0       15   16811
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                1       20   16811
24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                0     4395    8632
24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                1     4236    8632
24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                0        1    8632
24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                1        0    8632
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                0     1055    4752
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                1      655    4752
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                0     1833    4752
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                1     1209    4752
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                0     1282    4831
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                1      455    4831
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                0     2329    4831
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                1      765    4831
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0                0      174     822
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0                1       82     822
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                0      401     822
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                1      165     822


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

* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
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
![](/tmp/2805fe4b-35d9-4773-804e-3e2ded2e8b36/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/2805fe4b-35d9-4773-804e-3e2ded2e8b36/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/2805fe4b-35d9-4773-804e-3e2ded2e8b36/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/2805fe4b-35d9-4773-804e-3e2ded2e8b36/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.1836186   0.1360953   0.2311420
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.1835761   0.1360618   0.2310904
Birth       ki0047075b-MAL-ED         BRAZIL                         0                    NA                0.1105172   0.0659257   0.1551087
Birth       ki0047075b-MAL-ED         BRAZIL                         1                    NA                0.1090104   0.0649176   0.1531032
Birth       ki0047075b-MAL-ED         INDIA                          0                    NA                0.1610801   0.1106202   0.2115400
Birth       ki0047075b-MAL-ED         INDIA                          1                    NA                0.1608901   0.1104836   0.2112965
Birth       ki0047075b-MAL-ED         NEPAL                          0                    NA                0.1073759   0.0613935   0.1533583
Birth       ki0047075b-MAL-ED         NEPAL                          1                    NA                0.1034792   0.0580083   0.1489502
Birth       ki0047075b-MAL-ED         PERU                           0                    NA                0.1197723   0.0822038   0.1573408
Birth       ki0047075b-MAL-ED         PERU                           1                    NA                0.1176999   0.0804632   0.1549366
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                0.1080122   0.0695146   0.1465098
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                0.1049896   0.0667347   0.1432445
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                0.1029228   0.0975571   0.1082886
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                0.1029080   0.0975430   0.1082730
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                0.3232676   0.3156078   0.3309275
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                0.3223945   0.3147556   0.3300333
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                0.3005288   0.2649548   0.3361027
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                0.3004671   0.2649008   0.3360333
6 months    ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.6516907   0.5674976   0.7358838
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.3860262   0.3188986   0.4531538
6 months    ki0047075b-MAL-ED         INDIA                          0                    NA                0.2016104   0.1364267   0.2667941
6 months    ki0047075b-MAL-ED         INDIA                          1                    NA                0.1890434   0.1316736   0.2464132
6 months    ki0047075b-MAL-ED         PERU                           0                    NA                0.1890626   0.1062190   0.2719062
6 months    ki0047075b-MAL-ED         PERU                           1                    NA                0.2323286   0.1781965   0.2864606
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                0.1255935   0.0512075   0.1999794
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                0.1782635   0.1182623   0.2382647
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.3123675   0.1831158   0.4416191
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2173137   0.1622344   0.2723930
6 months    ki1000109-EE              PAKISTAN                       0                    NA                0.5188440   0.4646728   0.5730152
6 months    ki1000109-EE              PAKISTAN                       1                    NA                0.5801102   0.4935542   0.6666663
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                0.2857433   0.2694778   0.3020088
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                0.4391652   0.3923285   0.4860018
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                0.3477079   0.3020637   0.3933520
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                0.2276284   0.1954651   0.2597917
6 months    ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.2051923   0.1634366   0.2469479
6 months    ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.1119500   0.0603481   0.1635520
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                0.1643902   0.1529365   0.1758440
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                0.1630698   0.1524155   0.1737241
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                0.2508701   0.2427364   0.2590038
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                0.9712017   0.9624793   0.9799241
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                0.2546510   0.2329598   0.2763422
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                0.2434707   0.2268760   0.2600655
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.4086870   0.3198258   0.4975482
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.4941688   0.4186539   0.5696838
24 months   ki0047075b-MAL-ED         INDIA                          0                    NA                0.4086081   0.3143406   0.5028757
24 months   ki0047075b-MAL-ED         INDIA                          1                    NA                0.4251262   0.3442892   0.5059632
24 months   ki0047075b-MAL-ED         NEPAL                          0                    NA                0.2021232   0.1357999   0.2684464
24 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                0.2333486   0.1556090   0.3110882
24 months   ki0047075b-MAL-ED         PERU                           0                    NA                0.2656398   0.1636297   0.3676500
24 months   ki0047075b-MAL-ED         PERU                           1                    NA                0.4022929   0.3243637   0.4802221
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                0.3045555   0.2319803   0.3771307
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                0.3815711   0.3115472   0.4515950
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.9600492   0.8724255   1.0476729
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7314198   0.6665766   0.7962629
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                0.2626409   0.2210743   0.3042076
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                0.2785215   0.2384122   0.3186308
24 months   ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.4937866   0.4410271   0.5465461
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.2190766   0.1571645   0.2809888
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                0.5778582   0.5216884   0.6340281
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                0.6185494   0.5650763   0.6720224
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                0.3841679   0.3597318   0.4086040
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                0.3939865   0.3736788   0.4142943


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
6 months    kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                0.2513830   0.2432594   0.2595066
6 months    kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                0.2525357   0.2384780   0.2665934
24 months   ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.4597156   0.3923103   0.5271210
24 months   ki0047075b-MAL-ED         INDIA                          NA                   NA                0.4185022   0.3541865   0.4828179
24 months   ki0047075b-MAL-ED         NEPAL                          NA                   NA                0.2149123   0.1614774   0.2683472
24 months   ki0047075b-MAL-ED         PERU                           NA                   NA                0.3681592   0.3013164   0.4350020
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                0.3489362   0.2878666   0.4100058
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7149533   0.6543278   0.7755787
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                0.2568093   0.2190047   0.2946140
24 months   ki1113344-GMS-Nepal       NEPAL                          NA                   NA                0.4461538   0.4004285   0.4918792
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                0.6491228   0.6022363   0.6960093
24 months   kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                0.3922559   0.3752678   0.4092440


### Parameter: RR


agecat      studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                    0                 0.9997683   0.9994127   1.0001241
Birth       ki0047075b-MAL-ED         BRAZIL                         0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED         BRAZIL                         1                    0                 0.9863660   0.9650412   1.0081620
Birth       ki0047075b-MAL-ED         INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED         INDIA                          1                    0                 0.9988201   0.9950087   1.0026461
Birth       ki0047075b-MAL-ED         NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED         NEPAL                          1                    0                 0.9637098   0.9061022   1.0249799
Birth       ki0047075b-MAL-ED         PERU                           0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED         PERU                           1                    0                 0.9826972   0.9664489   0.9992187
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0                 0.9720162   0.9413321   1.0037005
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1                    0                 0.9998554   0.9997762   0.9999346
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    0                 0.9972989   0.9972178   0.9973801
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                    0                 0.9997946   0.9992249   1.0003648
6 months    ki0047075b-MAL-ED         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    0                 0.5923457   0.4672132   0.7509922
6 months    ki0047075b-MAL-ED         INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED         INDIA                          1                    0                 0.9376672   0.6554225   1.3414550
6 months    ki0047075b-MAL-ED         PERU                           0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED         PERU                           1                    0                 1.2288447   0.7790931   1.9382269
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0                 1.4193694   0.7274146   2.7695476
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0                 0.6956989   0.4377243   1.1057117
6 months    ki1000109-EE              PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000109-EE              PAKISTAN                       1                    0                 1.1180822   0.9436208   1.3247988
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    0                 1.5369219   1.4052663   1.6809120
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                    0                 0.6546541   0.5506618   0.7782854
6 months    ki1113344-GMS-Nepal       NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal       NEPAL                          1                    0                 0.5455859   0.3292029   0.9041961
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                    0                 0.9919677   0.9055355   1.0866497
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    0                 3.8713327   3.7444564   4.0025080
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    0                 0.9560956   0.8618456   1.0606527
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    0                 1.2091621   0.9684702   1.5096727
24 months   ki0047075b-MAL-ED         INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         INDIA                          1                    0                 1.0404252   0.7832052   1.3821214
24 months   ki0047075b-MAL-ED         NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         NEPAL                          1                    0                 1.1544872   0.7442914   1.7907509
24 months   ki0047075b-MAL-ED         PERU                           0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         PERU                           1                    0                 1.5144299   1.0067191   2.2781907
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0                 1.2528787   0.9447502   1.6615029
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0                 0.7618565   0.6704985   0.8656624
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    0                 1.0604650   0.8743142   1.2862493
24 months   ki1113344-GMS-Nepal       NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    0                 0.4436666   0.3281899   0.5997749
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    0                 1.0704172   0.9627175   1.1901653
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    0                 1.0255582   0.9505953   1.1064326


### Parameter: PAR


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -0.0000249   -0.0000638    0.0000141
Birth       ki0047075b-MAL-ED         BRAZIL                         0                    NA                -0.0005696   -0.0015218    0.0003827
Birth       ki0047075b-MAL-ED         INDIA                          0                    NA                -0.0001045   -0.0004683    0.0002593
Birth       ki0047075b-MAL-ED         NEPAL                          0                    NA                -0.0033297   -0.0091969    0.0025375
Birth       ki0047075b-MAL-ED         PERU                           0                    NA                -0.0013054   -0.0025394   -0.0000714
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -0.0027490   -0.0059942    0.0004962
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                 0.0000076    0.0000035    0.0000117
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                 0.0000014    0.0000006    0.0000021
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -0.0000422   -0.0001592    0.0000748
6 months    ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -0.4641907   -0.5360586   -0.3923228
6 months    ki0047075b-MAL-ED         INDIA                          0                    NA                -0.0066951   -0.0477701    0.0343799
6 months    ki0047075b-MAL-ED         PERU                           0                    NA                 0.0307176   -0.0360176    0.0974528
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                 0.0704065    0.0120398    0.1287733
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0775496   -0.1898759    0.0347766
6 months    ki1000109-EE              PAKISTAN                       0                    NA                -0.0000268   -0.0200486    0.0199950
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -0.0013122   -0.0045952    0.0019709
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                -0.1379176   -0.1800445   -0.0957908
6 months    ki1113344-GMS-Nepal       NEPAL                          0                    NA                 0.0006901   -0.0207877    0.0221678
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                 0.0030232   -0.0049830    0.0110294
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                 0.0005129    0.0001647    0.0008611
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -0.0021153   -0.0186386    0.0144079
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                 0.0510286   -0.0075602    0.1096175
24 months   ki0047075b-MAL-ED         INDIA                          0                    NA                 0.0098941   -0.0597342    0.0795223
24 months   ki0047075b-MAL-ED         NEPAL                          0                    NA                 0.0127891   -0.0273924    0.0529706
24 months   ki0047075b-MAL-ED         PERU                           0                    NA                 0.1025194    0.0123857    0.1926531
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                 0.0443807   -0.0127513    0.1015127
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.2450960   -0.3324865   -0.1577054
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                -0.0058316   -0.0479414    0.0362782
24 months   ki1113344-GMS-Nepal       NEPAL                          0                    NA                -0.0476328   -0.0754482   -0.0198173
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                 0.0712646    0.0372406    0.1052885
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                 0.0080880   -0.0107721    0.0269481


### Parameter: PAF


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -0.0001354   -0.0003460    0.0000751
Birth       ki0047075b-MAL-ED         BRAZIL                         0                    NA                -0.0051803   -0.0139105    0.0034748
Birth       ki0047075b-MAL-ED         INDIA                          0                    NA                -0.0006492   -0.0029055    0.0016019
Birth       ki0047075b-MAL-ED         NEPAL                          0                    NA                -0.0320020   -0.0918341    0.0245513
Birth       ki0047075b-MAL-ED         PERU                           0                    NA                -0.0110192   -0.0218005   -0.0003517
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -0.0261159   -0.0588623    0.0056178
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                 0.0000738    0.0000340    0.0001135
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                 0.0000043    0.0000020    0.0000066
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -0.0001403   -0.0005294    0.0002486
6 months    ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -2.4756838   -3.3520461   -1.7757927
6 months    ki0047075b-MAL-ED         INDIA                          0                    NA                -0.0343489   -0.2683240    0.1564635
6 months    ki0047075b-MAL-ED         PERU                           0                    NA                 0.1397652   -0.2265823    0.3966944
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                 0.3592170   -0.0339598    0.6028832
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.3302545   -0.9027222    0.0699761
6 months    ki1000109-EE              PAKISTAN                       0                    NA                -0.0000516   -0.0393973    0.0378046
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -0.0046133   -0.0163809    0.0070180
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                -0.6574074   -0.9161166   -0.4336285
6 months    ki1113344-GMS-Nepal       NEPAL                          0                    NA                 0.0033517   -0.1066462    0.1024161
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                 0.0180583   -0.0309177    0.0647075
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                 0.0020404    0.0006521    0.0034267
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -0.0083763   -0.0759769    0.0549772
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                 0.1110004   -0.0270399    0.2304874
24 months   ki0047075b-MAL-ED         INDIA                          0                    NA                 0.0236416   -0.1577493    0.1766130
24 months   ki0047075b-MAL-ED         NEPAL                          0                    NA                 0.0595085   -0.1477530    0.2293427
24 months   ki0047075b-MAL-ED         PERU                           0                    NA                 0.2784648   -0.0074398    0.4832316
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                 0.1271885   -0.0480407    0.2731200
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.3428139   -0.4848269   -0.2143835
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                -0.0227078   -0.2024075    0.1301358
24 months   ki1113344-GMS-Nepal       NEPAL                          0                    NA                -0.1067631   -0.1722682   -0.0449183
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                 0.1097860    0.0556904    0.1607826
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                 0.0206192   -0.0286013    0.0674844
