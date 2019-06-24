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

**Intervention Variable:** feducyrs

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* W_mhtcm
* W_gagebrth
* W_birthwt
* W_birthlen
* single
* delta_W_mage
* delta_meducyrs
* delta_W_mhtcm
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_single

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        feducyrs    n_cell       n
----------  -------------------------  -----------------------------  ---------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High            49     134
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low             35     134
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium          50     134
Birth       ki0047075b-MAL-ED          INDIA                          High            38     121
Birth       ki0047075b-MAL-ED          INDIA                          Low             48     121
Birth       ki0047075b-MAL-ED          INDIA                          Medium          35     121
Birth       ki0047075b-MAL-ED          NEPAL                          High            27      64
Birth       ki0047075b-MAL-ED          NEPAL                          Low             18      64
Birth       ki0047075b-MAL-ED          NEPAL                          Medium          19      64
Birth       ki0047075b-MAL-ED          PERU                           High           112     230
Birth       ki0047075b-MAL-ED          PERU                           Low             63     230
Birth       ki0047075b-MAL-ED          PERU                           Medium          55     230
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High            35      91
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low             30      91
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium          26      91
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High            63      96
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low             27      96
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium           6      96
Birth       ki1000304b-SAS-CompFeed    INDIA                          High            33     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low             68     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium          65     166
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High             7      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low             11      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium           5      23
Birth       ki1119695-PROBIT           BELARUS                        High          2050   13359
Birth       ki1119695-PROBIT           BELARUS                        Low           5294   13359
Birth       ki1119695-PROBIT           BELARUS                        Medium        6015   13359
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High           914   12572
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low           2090   12572
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium        9568   12572
Birth       ki1135781-COHORTS          GUATEMALA                      High           136     718
Birth       ki1135781-COHORTS          GUATEMALA                      Low            311     718
Birth       ki1135781-COHORTS          GUATEMALA                      Medium         271     718
Birth       ki1135781-COHORTS          INDIA                          High           507    1291
Birth       ki1135781-COHORTS          INDIA                          Low            414    1291
Birth       ki1135781-COHORTS          INDIA                          Medium         370    1291
Birth       ki1135781-COHORTS          PHILIPPINES                    High           994    2728
Birth       ki1135781-COHORTS          PHILIPPINES                    Low            773    2728
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium         961    2728
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High          3267   15127
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low           6675   15127
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium        5185   15127
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High            44     379
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low            280     379
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium          55     379
6 months    ki0047075b-MAL-ED          BANGLADESH                     High            50     132
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low             36     132
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium          46     132
6 months    ki0047075b-MAL-ED          INDIA                          High            43     138
6 months    ki0047075b-MAL-ED          INDIA                          Low             54     138
6 months    ki0047075b-MAL-ED          INDIA                          Medium          41     138
6 months    ki0047075b-MAL-ED          NEPAL                          High            40      95
6 months    ki0047075b-MAL-ED          NEPAL                          Low             27      95
6 months    ki0047075b-MAL-ED          NEPAL                          Medium          28      95
6 months    ki0047075b-MAL-ED          PERU                           High           107     224
6 months    ki0047075b-MAL-ED          PERU                           Low             60     224
6 months    ki0047075b-MAL-ED          PERU                           Medium          57     224
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High            33      92
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low             35      92
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium          24      92
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High           127     201
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low             55     201
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium          19     201
6 months    ki1000304b-SAS-CompFeed    INDIA                          High           349    1331
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low            548    1331
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium         434    1331
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High           101     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low            132     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium         147     380
6 months    ki1017093b-PROVIDE         BANGLADESH                     High           203     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low            200     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium         179     582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High           279     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low            223     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium         213     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High           371    2017
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low           1082    2017
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium         564    2017
6 months    ki1113344-GMS-Nepal        NEPAL                          High           136     562
6 months    ki1113344-GMS-Nepal        NEPAL                          Low            243     562
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium         183     562
6 months    ki1119695-PROBIT           BELARUS                        High          2512   15207
6 months    ki1119695-PROBIT           BELARUS                        Low           5958   15207
6 months    ki1119695-PROBIT           BELARUS                        Medium        6737   15207
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High           552    8032
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low           1398    8032
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium        6082    8032
6 months    ki1135781-COHORTS          GUATEMALA                      High           165     905
6 months    ki1135781-COHORTS          GUATEMALA                      Low            406     905
6 months    ki1135781-COHORTS          GUATEMALA                      Medium         334     905
6 months    ki1135781-COHORTS          INDIA                          High           544    1385
6 months    ki1135781-COHORTS          INDIA                          Low            450    1385
6 months    ki1135781-COHORTS          INDIA                          Medium         391    1385
6 months    ki1135781-COHORTS          PHILIPPINES                    High           892    2562
6 months    ki1135781-COHORTS          PHILIPPINES                    Low            744    2562
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium         926    2562
6 months    ki1148112-LCNI-5           MALAWI                         High           251     812
6 months    ki1148112-LCNI-5           MALAWI                         Low            290     812
6 months    ki1148112-LCNI-5           MALAWI                         Medium         271     812
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High          4271   16105
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low           6291   16105
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium        5543   16105
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High           346    2746
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low           1995    2746
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium         405    2746
24 months   ki0047075b-MAL-ED          BANGLADESH                     High            40     117
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low             35     117
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium          42     117
24 months   ki0047075b-MAL-ED          INDIA                          High            42     132
24 months   ki0047075b-MAL-ED          INDIA                          Low             51     132
24 months   ki0047075b-MAL-ED          INDIA                          Medium          39     132
24 months   ki0047075b-MAL-ED          NEPAL                          High            38      91
24 months   ki0047075b-MAL-ED          NEPAL                          Low             27      91
24 months   ki0047075b-MAL-ED          NEPAL                          Medium          26      91
24 months   ki0047075b-MAL-ED          PERU                           High            77     164
24 months   ki0047075b-MAL-ED          PERU                           Low             44     164
24 months   ki0047075b-MAL-ED          PERU                           Medium          43     164
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High            34      91
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low             34      91
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium          23      91
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High           114     177
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low             47     177
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium          16     177
24 months   ki1017093b-PROVIDE         BANGLADESH                     High           202     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low            197     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium         179     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High           211     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low            144     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium         159     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High             0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low              1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium           5       6
24 months   ki1113344-GMS-Nepal        NEPAL                          High           116     497
24 months   ki1113344-GMS-Nepal        NEPAL                          Low            220     497
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium         161     497
24 months   ki1119695-PROBIT           BELARUS                        High           620    3852
24 months   ki1119695-PROBIT           BELARUS                        Low           1488    3852
24 months   ki1119695-PROBIT           BELARUS                        Medium        1744    3852
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High            13     400
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low            100     400
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium         287     400
24 months   ki1135781-COHORTS          GUATEMALA                      High           178    1002
24 months   ki1135781-COHORTS          GUATEMALA                      Low            465    1002
24 months   ki1135781-COHORTS          GUATEMALA                      Medium         359    1002
24 months   ki1135781-COHORTS          INDIA                          High           536    1370
24 months   ki1135781-COHORTS          INDIA                          Low            448    1370
24 months   ki1135781-COHORTS          INDIA                          Medium         386    1370
24 months   ki1135781-COHORTS          PHILIPPINES                    High           798    2319
24 months   ki1135781-COHORTS          PHILIPPINES                    Low            693    2319
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium         828    2319
24 months   ki1148112-LCNI-5           MALAWI                         High           170     555
24 months   ki1148112-LCNI-5           MALAWI                         Low            194     555
24 months   ki1148112-LCNI-5           MALAWI                         Medium         191     555
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High          2055    8264
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low           3371    8264
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium        2838    8264
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High           333    2683
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low           1955    2683
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium         395    2683


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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
![](/tmp/fae2ef58-fc53-463e-b633-05ea42eca976/7d716d03-9346-4390-a77a-7a2c14acce60/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.7378177   -1.0508674   -0.4247681
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.7816216   -1.1280918   -0.4351514
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.3349011   -0.8191356    0.1493334
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.3614197   -0.5933930   -0.1294464
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.5263903    0.1261768    0.9266038
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           1.1071259    0.2756432    1.9386085
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.4029282   -0.8861945    0.0803380
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.7401059   -1.5726958    0.0924839
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -1.1342012   -1.3295845   -0.9388179
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.5688286   -0.6406713   -0.4969858
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -1.0952768   -1.2829717   -0.9075820
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.9492834   -1.0567543   -0.8418125
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.6081973   -0.6922268   -0.5241678
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.7169441   -0.7535259   -0.6803623
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.4870582   -0.7442160   -0.2299003
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.5220035   -0.7499444   -0.2940625
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.8278019   -1.0544259   -0.6011779
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.1885936   -0.1961725    0.5733598
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           1.2360544    0.9569771    1.5151316
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.6237396    0.2118353    1.0356440
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           1.0673187    0.6287646    1.5058729
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.5789834   -0.7312222   -0.4267445
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -1.1213549   -1.3181115   -0.9245983
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0454304   -0.1934712    0.1026105
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.1157615   -0.0073937    0.2389167
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1968448    0.0819078    0.3117818
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.5872230   -0.7466424   -0.4278036
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.5648519    0.5040562    0.6256476
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.2585321    0.1719969    0.3450673
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.2815967    0.1100325    0.4531609
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.6711965   -0.7777183   -0.5646747
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.2622713   -0.3347134   -0.1898293
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.5262809    0.3923694    0.6601925
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.5586057   -0.5960491   -0.5211622
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.4774966   -0.5619318   -0.3930614
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.1162025   -1.4064223   -0.8259827
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.1160162   -1.3187826   -0.9132498
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.2604678   -0.5306891    0.0097536
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.3087806    0.1070953    0.5104659
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.6013756    0.2303182    0.9724331
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1852474   -0.2020457    0.5725406
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.7731636   -0.9118846   -0.6344426
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.4610182   -0.6209933   -0.3010430
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.0131090   -1.1759589   -0.8502591
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.6962860    0.5752572    0.8173148
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -1.3451036   -1.6744125   -1.0157947
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.2310865   -0.3326069   -0.1295661
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.4586340   -0.5403030   -0.3769650
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.5378967   -0.5971919   -0.4786014
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.0027561   -0.1404724    0.1349603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.3305632   -1.3740603   -1.2870660
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.2102516   -1.3313526   -1.0891506


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.9578358   -1.1387078   -0.7769639
Birth       ki0047075b-MAL-ED          INDIA                          observed             observed          -0.9940496   -1.1654347   -0.8226645
Birth       ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.6120312   -0.8275323   -0.3965302
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.0617391   -0.1779184    0.0544402
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.1956044   -0.0084906    0.3996994
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.7337500    0.5184571    0.9490429
Birth       ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.2697590   -0.5399211    0.0004030
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.7508696   -1.2358912   -0.2658480
Birth       ki1119695-PROBIT           BELARUS                        observed             observed          -1.1411895   -1.3517005   -0.9306784
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.5089119   -0.5350685   -0.4827552
Birth       ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.0475905   -1.1510656   -0.9441155
Birth       ki1135781-COHORTS          INDIA                          observed             observed          -1.0020759   -1.0646599   -0.9394920
Birth       ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.7218585   -0.7694262   -0.6742908
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.7212256   -0.7411702   -0.7012810
Birth       kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.3724538   -0.4743874   -0.2705203
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.3053662   -0.4828374   -0.1278949
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -0.7164734   -0.8860809   -0.5468660
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed           0.0313158   -0.1673661    0.2299977
6 months    ki0047075b-MAL-ED          PERU                           observed             observed           1.0866741    0.9521834    1.2211648
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.3830435    0.1435272    0.6225598
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5218823    0.3795317    0.6642328
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.6641059   -0.8040033   -0.5242086
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             observed          -1.0121579   -1.1280429   -0.8962729
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.2083706   -0.2927992   -0.1239419
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed           0.0297622   -0.0491685    0.1086930
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0791782    0.0263777    0.1319787
6 months    ki1113344-GMS-Nepal        NEPAL                          observed             observed          -0.6041489   -0.6904591   -0.5178387
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.5783110    0.5188487    0.6377732
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed           0.3096296    0.2832594    0.3359998
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed           0.1987403    0.1250477    0.2724329
6 months    ki1135781-COHORTS          INDIA                          observed             observed          -0.6502599   -0.7103477   -0.5901722
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.2839930   -0.3263706   -0.2416154
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed           0.4414655    0.3698299    0.5131012
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.5904964   -0.6106039   -0.5703890
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.3829461   -0.4315670   -0.3343252
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.9032479   -1.0730238   -0.7334719
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -0.9451515   -1.0860650   -0.8042380
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.4668132   -0.6466833   -0.2869431
24 months   ki0047075b-MAL-ED          PERU                           observed             observed           0.1412500    0.0103684    0.2721316
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.3713736    0.1781064    0.5646408
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.1027966   -0.0354562    0.2410495
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.8879412   -0.9708680   -0.8050144
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.6103502   -0.7050157   -0.5156847
24 months   ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.1284909   -1.2160945   -1.0408874
24 months   ki1119695-PROBIT           BELARUS                        observed             observed           0.6836046    0.5719211    0.7952881
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -1.1874750   -1.2917540   -1.0831960
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -0.2662176   -0.3220630   -0.2103721
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -0.6051533   -0.6581071   -0.5521995
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.6155714   -0.6532287   -0.5779140
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -0.0443964   -0.1269881    0.0381953
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.2984354   -1.3225016   -1.2743692
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.2260902   -1.2680212   -1.1841592


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.2200181   -0.4734776    0.0334415
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.2124280   -0.5027938    0.0779379
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.2771301   -0.6398569    0.0855966
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed           0.2996805    0.1108361    0.4885250
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.3307859   -0.6644445    0.0028727
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.3733759   -1.1890652    0.4423135
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed           0.1331692   -0.2100220    0.4763603
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0107636   -0.7230310    0.7015037
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0069883   -0.0637662    0.0497897
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.0599167   -0.0067614    0.1265947
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.0476863   -0.0978788    0.1932514
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.0527925   -0.1406421    0.0350572
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.1136612   -0.1834158   -0.0439067
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0042815   -0.0349782    0.0264152
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed           0.1146043   -0.1105518    0.3397604
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.2166373    0.0069347    0.4263399
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed           0.1113285   -0.0915622    0.3142191
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.1572778   -0.4721061    0.1575504
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.1493803   -0.3870369    0.0882764
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.2406961   -0.5733766    0.0919843
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.5454365   -0.9675472   -0.1233258
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.0851226   -0.1166572   -0.0535880
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed           0.1091970   -0.0579991    0.2763932
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1629402   -0.2821016   -0.0437788
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0859993   -0.1842767    0.0122782
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1176666   -0.2160166   -0.0193165
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0169259   -0.1531914    0.1193396
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.0134591   -0.0109409    0.0378590
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.0510975   -0.0308834    0.1330783
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0828563   -0.2329074    0.0671948
6 months    ki1135781-COHORTS          INDIA                          optimal              observed           0.0209366   -0.0650195    0.1068927
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0217216   -0.0827584    0.0393152
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.0848154   -0.1909089    0.0212781
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0318908   -0.0630401   -0.0007414
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed           0.0945505    0.0268237    0.1622774
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.2129546   -0.0244870    0.4503963
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed           0.1708647   -0.0107800    0.3525093
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.2063454   -0.4280197    0.0153289
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.1675306   -0.3580679    0.0230066
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.2300020   -0.5049380    0.0449340
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0824508   -0.4573422    0.2924406
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1147776   -0.2276115   -0.0019436
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.1493320   -0.2759811   -0.0226829
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.1153819   -0.2503804    0.0196165
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0126814   -0.1039555    0.0785928
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.1576286   -0.1650661    0.4803233
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0351310   -0.1189844    0.0487223
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.1465193   -0.2120492   -0.0809894
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0776747   -0.1273750   -0.0279744
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.0416403   -0.1591931    0.0759124
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed           0.0321278   -0.0044634    0.0687190
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0158386   -0.1267789    0.0951016
