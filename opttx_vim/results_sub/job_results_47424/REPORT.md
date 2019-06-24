---
title: "Optimal Treatment Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowOptTX','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
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
      Y: ['haz']
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
      maximize:
        input: checkbox
        value: TRUE
  output_directory:
    value: '~/tmp/'
editor_options: 
  chunk_output_type: console
---







## Methods
## Outcome Variable

**Outcome Variable:** whz

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

agecat      studyid                   country                        earlybf    n_cell       n
----------  ------------------------  -----------------------------  --------  -------  ------
Birth       ki0047075b-MAL-ED         BANGLADESH                     1             152     240
Birth       ki0047075b-MAL-ED         BANGLADESH                     0              88     240
Birth       ki0047075b-MAL-ED         BRAZIL                         1              79     183
Birth       ki0047075b-MAL-ED         BRAZIL                         0             104     183
Birth       ki0047075b-MAL-ED         INDIA                          1             123     202
Birth       ki0047075b-MAL-ED         INDIA                          0              79     202
Birth       ki0047075b-MAL-ED         NEPAL                          1              77     168
Birth       ki0047075b-MAL-ED         NEPAL                          0              91     168
Birth       ki0047075b-MAL-ED         PERU                           1             211     279
Birth       ki0047075b-MAL-ED         PERU                           0              68     279
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1             154     245
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0              91     245
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             108     118
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              10     118
Birth       ki1000109-EE              PAKISTAN                       1               1       1
Birth       ki1000109-EE              PAKISTAN                       0               0       1
Birth       ki1000304b-SAS-CompFeed   INDIA                          1              13     158
Birth       ki1000304b-SAS-CompFeed   INDIA                          0             145     158
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     1              19      23
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     0               4      23
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1            6141   11513
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       0            5372   11513
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1              93   15648
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0           15555   15648
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1             475     683
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0             208     683
6 months    ki0047075b-MAL-ED         BANGLADESH                     1             147     240
6 months    ki0047075b-MAL-ED         BANGLADESH                     0              93     240
6 months    ki0047075b-MAL-ED         BRAZIL                         1              95     209
6 months    ki0047075b-MAL-ED         BRAZIL                         0             114     209
6 months    ki0047075b-MAL-ED         INDIA                          1             140     236
6 months    ki0047075b-MAL-ED         INDIA                          0              96     236
6 months    ki0047075b-MAL-ED         NEPAL                          1              96     236
6 months    ki0047075b-MAL-ED         NEPAL                          0             140     236
6 months    ki0047075b-MAL-ED         PERU                           1             202     273
6 months    ki0047075b-MAL-ED         PERU                           0              71     273
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1             156     250
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0              94     250
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             205     247
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              42     247
6 months    ki1000109-EE              PAKISTAN                       1              69     376
6 months    ki1000109-EE              PAKISTAN                       0             307     376
6 months    ki1000304b-SAS-CompFeed   INDIA                          1              97    1334
6 months    ki1000304b-SAS-CompFeed   INDIA                          0            1237    1334
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1             619     715
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0              96     715
6 months    ki1113344-GMS-Nepal       NEPAL                          1             151     510
6 months    ki1113344-GMS-Nepal       NEPAL                          0             359     510
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1            3951    7339
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0            3388    7339
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1              36   16784
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0           16748   16784
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1            3095    4833
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0            1738    4833
24 months   ki0047075b-MAL-ED         BANGLADESH                     1             128     211
24 months   ki0047075b-MAL-ED         BANGLADESH                     0              83     211
24 months   ki0047075b-MAL-ED         BRAZIL                         1              80     169
24 months   ki0047075b-MAL-ED         BRAZIL                         0              89     169
24 months   ki0047075b-MAL-ED         INDIA                          1             134     227
24 months   ki0047075b-MAL-ED         INDIA                          0              93     227
24 months   ki0047075b-MAL-ED         NEPAL                          1              95     228
24 months   ki0047075b-MAL-ED         NEPAL                          0             133     228
24 months   ki0047075b-MAL-ED         PERU                           1             149     201
24 months   ki0047075b-MAL-ED         PERU                           0              52     201
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1             144     235
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0              91     235
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             180     214
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              34     214
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1             443     514
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0              71     514
24 months   ki1113344-GMS-Nepal       NEPAL                          1             136     454
24 months   ki1113344-GMS-Nepal       NEPAL                          0             318     454
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1             198     370
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0             172     370
24 months   kiGH5241-JiVitA-3         BANGLADESH                     1               1    8603
24 months   kiGH5241-JiVitA-3         BANGLADESH                     0            8602    8603
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1            3031    4735
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0            1704    4735


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

* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
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
![](/tmp/57afaacc-9d9a-4992-8c35-810cf1caac96/b5f5fd62-588c-4215-80fa-a10b7f808255/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     optimal              observed          -0.8850396   -1.0711365   -0.6989428
Birth       ki0047075b-MAL-ED         BRAZIL                         optimal              observed           0.5581591    0.3380072    0.7783111
Birth       ki0047075b-MAL-ED         INDIA                          optimal              observed          -1.0069881   -1.1838574   -0.8301189
Birth       ki0047075b-MAL-ED         NEPAL                          optimal              observed          -0.8519304   -1.0321526   -0.6717083
Birth       ki0047075b-MAL-ED         PERU                           optimal              observed           0.1380764   -0.0899360    0.3660888
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              observed           0.0450008   -0.1271334    0.2171350
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.6225949    0.3172057    0.9279840
Birth       ki1000304b-SAS-CompFeed   INDIA                          optimal              observed          -0.2058954   -0.9242553    0.5124645
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       optimal              observed          -0.4591691   -0.4949453   -0.4233929
Birth       kiGH5241-JiVitA-3         BANGLADESH                     optimal              observed           0.4055800    0.2773721    0.5337879
Birth       kiGH5241-JiVitA-4         BANGLADESH                     optimal              observed          -0.3661831   -0.4736225   -0.2587438
6 months    ki0047075b-MAL-ED         BANGLADESH                     optimal              observed          -0.0907066   -0.2547668    0.0733536
6 months    ki0047075b-MAL-ED         BRAZIL                         optimal              observed           1.1381281    0.9221646    1.3540916
6 months    ki0047075b-MAL-ED         INDIA                          optimal              observed          -0.6216267   -0.8117593   -0.4314941
6 months    ki0047075b-MAL-ED         NEPAL                          optimal              observed           0.1912513    0.0252873    0.3572152
6 months    ki0047075b-MAL-ED         PERU                           optimal              observed           1.2798173    1.0649912    1.4946434
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              observed           0.4733583    0.2648849    0.6818316
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.4952955    0.1688418    0.8217491
6 months    ki1000109-EE              PAKISTAN                       optimal              observed          -0.7495252   -0.9869417   -0.5121088
6 months    ki1000304b-SAS-CompFeed   INDIA                          optimal              observed          -0.7970268   -0.9459939   -0.6480598
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     optimal              observed           0.0067611   -0.1118586    0.1253808
6 months    ki1113344-GMS-Nepal       NEPAL                          optimal              observed          -0.4535978   -0.6346895   -0.2725062
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       optimal              observed           0.3099821    0.2712145    0.3487497
6 months    kiGH5241-JiVitA-3         BANGLADESH                     optimal              observed          -0.6134251   -0.6360858   -0.5907643
6 months    kiGH5241-JiVitA-4         BANGLADESH                     optimal              observed          -0.3843611   -0.4403251   -0.3283970
24 months   ki0047075b-MAL-ED         BANGLADESH                     optimal              observed          -0.8116605   -0.9818597   -0.6414612
24 months   ki0047075b-MAL-ED         BRAZIL                         optimal              observed           0.5913376    0.3130557    0.8696195
24 months   ki0047075b-MAL-ED         INDIA                          optimal              observed          -0.9043436   -1.0759878   -0.7326994
24 months   ki0047075b-MAL-ED         NEPAL                          optimal              observed          -0.2914840   -0.4367669   -0.1462012
24 months   ki0047075b-MAL-ED         PERU                           optimal              observed           0.2274766    0.0312318    0.4237214
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              observed           0.2308636    0.0803811    0.3813462
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0800481   -0.0544657    0.2145619
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     optimal              observed          -0.3615571   -0.6290127   -0.0941015
24 months   ki1113344-GMS-Nepal       NEPAL                          optimal              observed          -1.0594069   -1.2269815   -0.8918323
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       optimal              observed          -1.1328122   -1.2836452   -0.9819791
24 months   kiGH5241-JiVitA-4         BANGLADESH                     optimal              observed          -1.2124320   -1.2619243   -1.1629396


### Parameter: E(Y)


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     observed             observed          -0.9606667   -1.0969945   -0.8243389
Birth       ki0047075b-MAL-ED         BRAZIL                         observed             observed           0.4038798    0.2296279    0.5781316
Birth       ki0047075b-MAL-ED         INDIA                          observed             observed          -1.0653960   -1.2046419   -0.9261502
Birth       ki0047075b-MAL-ED         NEPAL                          observed             observed          -0.9044643   -1.0439568   -0.7649718
Birth       ki0047075b-MAL-ED         PERU                           observed             observed          -0.0735842   -0.1836203    0.0364518
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   observed             observed          -0.0415102   -0.1884529    0.1054324
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   observed             observed           0.7932203    0.5962220    0.9902187
Birth       ki1000304b-SAS-CompFeed   INDIA                          observed             observed          -0.2577848   -0.5195618    0.0039922
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       observed             observed          -0.5258212   -0.5533316   -0.4983109
Birth       kiGH5241-JiVitA-3         BANGLADESH                     observed             observed          -0.7240919   -0.7439633   -0.7042204
Birth       kiGH5241-JiVitA-4         BANGLADESH                     observed             observed          -0.3683163   -0.4490504   -0.2875821
6 months    ki0047075b-MAL-ED         BANGLADESH                     observed             observed          -0.1337535   -0.2628178   -0.0046891
6 months    ki0047075b-MAL-ED         BRAZIL                         observed             observed           0.9717225    0.8073791    1.1360658
6 months    ki0047075b-MAL-ED         INDIA                          observed             observed          -0.7033969   -0.8285284   -0.5782654
6 months    ki0047075b-MAL-ED         NEPAL                          observed             observed           0.1110452   -0.0202712    0.2423616
6 months    ki0047075b-MAL-ED         PERU                           observed             observed           1.0543956    0.9326967    1.1760945
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   observed             observed           0.5499200    0.3963965    0.7034435
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5170513    0.3872178    0.6468847
6 months    ki1000109-EE              PAKISTAN                       observed             observed          -0.7212766   -0.8346857   -0.6078675
6 months    ki1000304b-SAS-CompFeed   INDIA                          observed             observed          -0.6657084   -0.8024377   -0.5289791
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     observed             observed           0.0297622   -0.0491685    0.1086930
6 months    ki1113344-GMS-Nepal       NEPAL                          observed             observed          -0.5853922   -0.6772967   -0.4934876
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       observed             observed           0.3021399    0.2744461    0.3298338
6 months    kiGH5241-JiVitA-3         BANGLADESH                     observed             observed          -0.5935161   -0.6130518   -0.5739805
6 months    kiGH5241-JiVitA-4         BANGLADESH                     observed             observed          -0.3898055   -0.4270507   -0.3525603
24 months   ki0047075b-MAL-ED         BANGLADESH                     observed             observed          -0.8157109   -0.9379759   -0.6934459
24 months   ki0047075b-MAL-ED         BRAZIL                         observed             observed           0.4466272    0.2416144    0.6516401
24 months   ki0047075b-MAL-ED         INDIA                          observed             observed          -0.9522907   -1.0676596   -0.8369219
24 months   ki0047075b-MAL-ED         NEPAL                          observed             observed          -0.3764474   -0.4898516   -0.2630431
24 months   ki0047075b-MAL-ED         PERU                           observed             observed           0.1199005   -0.0000331    0.2398341
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   observed             observed           0.4331915    0.3126798    0.5537032
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0500935   -0.0748234    0.1750103
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     observed             observed          -0.6103502   -0.7050157   -0.5156847
24 months   ki1113344-GMS-Nepal       NEPAL                          observed             observed          -1.1298678   -1.2212513   -1.0384844
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       observed             observed          -1.1963784   -1.3049250   -1.0878318
24 months   kiGH5241-JiVitA-4         BANGLADESH                     observed             observed          -1.2231088   -1.2549632   -1.1912543


### Parameter: PAR


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     optimal              observed          -0.0756270   -0.2108255    0.0595715
Birth       ki0047075b-MAL-ED         BRAZIL                         optimal              observed          -0.1542793   -0.3235408    0.0149821
Birth       ki0047075b-MAL-ED         INDIA                          optimal              observed          -0.0584079   -0.1706139    0.0537980
Birth       ki0047075b-MAL-ED         NEPAL                          optimal              observed          -0.0525339   -0.1697747    0.0647070
Birth       ki0047075b-MAL-ED         PERU                           optimal              observed          -0.2116606   -0.4099687   -0.0133525
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              observed          -0.0865110   -0.2058396    0.0328177
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1706255   -0.1021822    0.4434332
Birth       ki1000304b-SAS-CompFeed   INDIA                          optimal              observed          -0.0518894   -0.5588981    0.4551193
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       optimal              observed          -0.0666521   -0.0903837   -0.0429205
Birth       kiGH5241-JiVitA-3         BANGLADESH                     optimal              observed          -1.1296719   -1.2596328   -0.9997110
Birth       kiGH5241-JiVitA-4         BANGLADESH                     optimal              observed          -0.0021331   -0.0757780    0.0715118
6 months    ki0047075b-MAL-ED         BANGLADESH                     optimal              observed          -0.0430469   -0.1460792    0.0599854
6 months    ki0047075b-MAL-ED         BRAZIL                         optimal              observed          -0.1664056   -0.3367616    0.0039504
6 months    ki0047075b-MAL-ED         INDIA                          optimal              observed          -0.0817702   -0.2335747    0.0700344
6 months    ki0047075b-MAL-ED         NEPAL                          optimal              observed          -0.0802061   -0.1885857    0.0281735
6 months    ki0047075b-MAL-ED         PERU                           optimal              observed          -0.2254217   -0.3976441   -0.0531992
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              observed           0.0765617   -0.0901405    0.2432640
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0217558   -0.2720076    0.3155192
6 months    ki1000109-EE              PAKISTAN                       optimal              observed           0.0282486   -0.1886684    0.2451656
6 months    ki1000304b-SAS-CompFeed   INDIA                          optimal              observed           0.1313185   -0.0700344    0.3326713
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     optimal              observed           0.0230011   -0.0617972    0.1077994
6 months    ki1113344-GMS-Nepal       NEPAL                          optimal              observed          -0.1317943   -0.2831367    0.0195481
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       optimal              observed          -0.0078421   -0.0353550    0.0196707
6 months    kiGH5241-JiVitA-3         BANGLADESH                     optimal              observed           0.0199089    0.0034059    0.0364119
6 months    kiGH5241-JiVitA-4         BANGLADESH                     optimal              observed          -0.0054444   -0.0425225    0.0316336
24 months   ki0047075b-MAL-ED         BANGLADESH                     optimal              observed          -0.0040505   -0.1105717    0.1024708
24 months   ki0047075b-MAL-ED         BRAZIL                         optimal              observed          -0.1447104   -0.3446141    0.0551934
24 months   ki0047075b-MAL-ED         INDIA                          optimal              observed          -0.0479471   -0.1852778    0.0893835
24 months   ki0047075b-MAL-ED         NEPAL                          optimal              observed          -0.0849633   -0.1808250    0.0108984
24 months   ki0047075b-MAL-ED         PERU                           optimal              observed          -0.1075761   -0.2897066    0.0745544
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              observed           0.2023279    0.0903503    0.3143055
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0299546   -0.0870713    0.0271621
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     optimal              observed          -0.2487931   -0.4952051   -0.0023811
24 months   ki1113344-GMS-Nepal       NEPAL                          optimal              observed          -0.0704610   -0.2147395    0.0738176
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       optimal              observed          -0.0635662   -0.1714914    0.0443590
24 months   kiGH5241-JiVitA-4         BANGLADESH                     optimal              observed          -0.0106768   -0.0490807    0.0277271
