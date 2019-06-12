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
* W_mwtkg
* W_gagebrth
* W_birthwt
* W_birthlen
* single
* delta_W_mage
* delta_meducyrs
* delta_W_mhtcm
* delta_W_mwtkg
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
Birth       ki1000304b-SAS-CompFeed    INDIA                          High            11      61
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low             23      61
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium          27      61
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High             7      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low             11      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium           5      23
Birth       ki1119695-PROBIT           BELARUS                        High           973    6491
Birth       ki1119695-PROBIT           BELARUS                        Low           2265    6491
Birth       ki1119695-PROBIT           BELARUS                        Medium        3253    6491
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High           914   12572
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low           2090   12572
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium        9568   12572
Birth       ki1135781-COHORTS          GUATEMALA                      High            93     354
Birth       ki1135781-COHORTS          GUATEMALA                      Low            117     354
Birth       ki1135781-COHORTS          GUATEMALA                      Medium         144     354
Birth       ki1135781-COHORTS          INDIA                          High           507    1291
Birth       ki1135781-COHORTS          INDIA                          Low            414    1291
Birth       ki1135781-COHORTS          INDIA                          Medium         370    1291
Birth       ki1135781-COHORTS          PHILIPPINES                    High           994    2728
Birth       ki1135781-COHORTS          PHILIPPINES                    Low            773    2728
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium         961    2728
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High          1646    7414
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low           3260    7414
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium        2508    7414
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High            15      96
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low             70      96
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium          11      96
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
6 months    ki1000304b-SAS-CompFeed    INDIA                          High           113     409
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low            161     409
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium         135     409
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High            29      97
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low             28      97
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium          40      97
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
6 months    ki1119695-PROBIT           BELARUS                        High          1169    7376
6 months    ki1119695-PROBIT           BELARUS                        Low           2571    7376
6 months    ki1119695-PROBIT           BELARUS                        Medium        3636    7376
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High           552    8032
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low           1398    8032
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium        6082    8032
6 months    ki1135781-COHORTS          GUATEMALA                      High           109     430
6 months    ki1135781-COHORTS          GUATEMALA                      Low            140     430
6 months    ki1135781-COHORTS          GUATEMALA                      Medium         181     430
6 months    ki1135781-COHORTS          INDIA                          High           544    1385
6 months    ki1135781-COHORTS          INDIA                          Low            450    1385
6 months    ki1135781-COHORTS          INDIA                          Medium         391    1385
6 months    ki1135781-COHORTS          PHILIPPINES                    High           892    2562
6 months    ki1135781-COHORTS          PHILIPPINES                    Low            744    2562
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium         926    2562
6 months    ki1148112-LCNI-5           MALAWI                         High           251     812
6 months    ki1148112-LCNI-5           MALAWI                         Low            290     812
6 months    ki1148112-LCNI-5           MALAWI                         Medium         271     812
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High          2107    7968
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low           3081    7968
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium        2780    7968
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High            97     692
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low            489     692
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium         106     692
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
24 months   ki1119695-PROBIT           BELARUS                        High           266    1550
24 months   ki1119695-PROBIT           BELARUS                        Low            511    1550
24 months   ki1119695-PROBIT           BELARUS                        Medium         773    1550
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High            13     400
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low            100     400
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium         287     400
24 months   ki1135781-COHORTS          GUATEMALA                      High           123     476
24 months   ki1135781-COHORTS          GUATEMALA                      Low            164     476
24 months   ki1135781-COHORTS          GUATEMALA                      Medium         189     476
24 months   ki1135781-COHORTS          INDIA                          High           536    1370
24 months   ki1135781-COHORTS          INDIA                          Low            448    1370
24 months   ki1135781-COHORTS          INDIA                          Medium         386    1370
24 months   ki1135781-COHORTS          PHILIPPINES                    High           798    2319
24 months   ki1135781-COHORTS          PHILIPPINES                    Low            693    2319
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium         828    2319
24 months   ki1148112-LCNI-5           MALAWI                         High           170     555
24 months   ki1148112-LCNI-5           MALAWI                         Low            194     555
24 months   ki1148112-LCNI-5           MALAWI                         Medium         191     555
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High          1026    4112
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low           1685    4112
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium        1401    4112
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High            96     688
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low            489     688
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium         103     688


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
![](/tmp/9a4cf14a-1e1a-40f9-bc25-a1f3cf038485/2ce3548b-b210-48a5-870b-0e97e7b16fef/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.7315551   -1.0390732   -0.4240371
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.8161531   -1.1533306   -0.4789756
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.2304223   -0.6967381    0.2358934
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.3116472   -0.5472674   -0.0760270
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.3930315    0.0551186    0.7309444
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.5486410   -0.1336251    1.2309071
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.4746524   -0.9826230    0.0333182
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.9391814   -1.6778414   -0.2005214
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -1.3179738   -1.7516277   -0.8843200
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.5419072   -0.6082485   -0.4755658
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -1.2790884   -1.4873365   -1.0708402
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.9378145   -1.0420439   -0.8335851
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.6285983   -0.7117386   -0.5454580
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.7373062   -0.7883032   -0.6863093
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed           0.0586386   -0.5516231    0.6689003
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.2653247   -0.6623546    0.1317053
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.7051804   -0.9648620   -0.4454987
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.1031767   -0.2672184    0.4735718
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           1.2843753    1.0136198    1.5551308
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.5798848    0.1618059    0.9979637
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           1.1826617    0.7090574    1.6562659
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.6548166   -0.8487892   -0.4608440
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.9203269   -1.2199439   -0.6207098
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1064079   -0.2587645    0.0459487
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.0566624   -0.0718490    0.1851739
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0906035   -0.0192570    0.2004640
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.4591031   -0.6254859   -0.2927204
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.5684931    0.4727120    0.6642743
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.2612249    0.1944910    0.3279587
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.2665857    0.0240090    0.5091625
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.6403455   -0.7440771   -0.5366139
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.2605093   -0.3332625   -0.1877561
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.3816924    0.2487406    0.5146442
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.5511345   -0.5990998   -0.5031691
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.4660854   -0.6664252   -0.2657455
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.9308036   -1.1672063   -0.6944009
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.0568635   -1.2719413   -0.8417857
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.3511573   -0.6019463   -0.1003683
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.2775933    0.0677129    0.4874738
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.6003123    0.2758910    0.9247337
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1709006   -0.1363591    0.4781603
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.7501640   -0.8917302   -0.6085979
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.5848552   -0.7451683   -0.4245421
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.0525254   -1.2136253   -0.8914256
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.8625176    0.6315741    1.0934610
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -1.4803850   -1.7791071   -1.1816629
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.4401606   -0.5950632   -0.2852581
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.4601337   -0.5413043   -0.3789632
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.5361979   -0.5957976   -0.4765983
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed           0.0161734   -0.1338153    0.1661621
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.2932522   -1.3530478   -1.2334565
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.0934127   -1.2806202   -0.9062052


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.9578358   -1.1387078   -0.7769639
Birth       ki0047075b-MAL-ED          INDIA                          observed             observed          -0.9940496   -1.1654347   -0.8226645
Birth       ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.6120312   -0.8275323   -0.3965302
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.0617391   -0.1779184    0.0544402
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.1956044   -0.0084906    0.3996994
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.7337500    0.5184571    0.9490429
Birth       ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.3822951   -0.7231296   -0.0414606
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.7508696   -1.2358912   -0.2658480
Birth       ki1119695-PROBIT           BELARUS                        observed             observed          -1.1831551   -1.5177071   -0.8486032
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.5089119   -0.5350685   -0.4827552
Birth       ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.2529096   -1.3965458   -1.1092734
Birth       ki1135781-COHORTS          INDIA                          observed             observed          -1.0020759   -1.0646599   -0.9394920
Birth       ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.7218585   -0.7694262   -0.6742908
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.7613663   -0.7883371   -0.7343956
Birth       kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.3590625   -0.5552416   -0.1628834
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.3053662   -0.4828374   -0.1278949
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -0.7164734   -0.8860809   -0.5468660
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed           0.0313158   -0.1673661    0.2299977
6 months    ki0047075b-MAL-ED          PERU                           observed             observed           1.0866741    0.9521834    1.2211648
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.3830435    0.1435272    0.6225598
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5218823    0.3795317    0.6642328
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.7967726   -0.9975479   -0.5959974
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             observed          -1.1301031   -1.3613760   -0.8988302
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.2083706   -0.2927992   -0.1239419
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed           0.0297622   -0.0491685    0.1086930
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0791782    0.0263777    0.1319787
6 months    ki1113344-GMS-Nepal        NEPAL                          observed             observed          -0.6041489   -0.6904591   -0.5178387
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.5801322    0.5014864    0.6587780
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed           0.3096296    0.2832594    0.3359998
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed           0.0599767   -0.0530855    0.1730390
6 months    ki1135781-COHORTS          INDIA                          observed             observed          -0.6502599   -0.7103477   -0.5901722
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.2839930   -0.3263706   -0.2416154
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed           0.4414655    0.3698299    0.5131012
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.5841253   -0.6124955   -0.5557550
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.3467486   -0.4420683   -0.2514288
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.9032479   -1.0730238   -0.7334719
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -0.9451515   -1.0860650   -0.8042380
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.4668132   -0.6466833   -0.2869431
24 months   ki0047075b-MAL-ED          PERU                           observed             observed           0.1412500    0.0103684    0.2721316
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.3713736    0.1781064    0.5646408
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.1027966   -0.0354562    0.2410495
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.8879412   -0.9708680   -0.8050144
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.6103502   -0.7050157   -0.5156847
24 months   ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.1284909   -1.2160945   -1.0408874
24 months   ki1119695-PROBIT           BELARUS                        observed             observed           0.8047151    0.6577163    0.9517138
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -1.1874750   -1.2917540   -1.0831960
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -0.5397689   -0.6191954   -0.4603424
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -0.6051533   -0.6581071   -0.5521995
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.6155714   -0.6532287   -0.5779140
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -0.0443964   -0.1269881    0.0381953
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.2924368   -1.3266477   -1.2582259
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.2319622   -1.3178241   -1.1461003


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.2262807   -0.4734502    0.0208888
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.1778965   -0.4588792    0.1030862
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.3816089   -0.7521864   -0.0110314
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed           0.2499080    0.0558062    0.4440099
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.1974271   -0.5014258    0.1065716
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1851090   -0.5021360    0.8723540
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed           0.0923573   -0.2041768    0.3888914
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.1883118   -0.5300125    0.9066361
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           0.1348187   -0.0042406    0.2738780
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.0329953   -0.0280343    0.0940248
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.0261788   -0.1318130    0.1841706
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.0642614   -0.1526291    0.0241063
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0932602   -0.1623937   -0.0241267
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0240601   -0.0680105    0.0198903
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.4177011   -0.9900739    0.1546717
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0400415   -0.3476736    0.2675906
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.0112930   -0.2263790    0.2037929
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0718609   -0.3730184    0.2292966
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.1977012   -0.4257231    0.0303206
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.1968413   -0.5381206    0.1444379
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.6607794   -1.1126601   -0.2088987
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.1419560   -0.1717801   -0.1121318
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.2097762   -0.5185851    0.0990326
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1019627   -0.2252285    0.0213032
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0269002   -0.1292821    0.0754817
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0114253   -0.1083396    0.0854890
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.1450457   -0.2825377   -0.0075537
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.0116391   -0.0381046    0.0613827
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.0484047   -0.0121054    0.1089148
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.2066090   -0.4138306    0.0006126
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.0099144   -0.0944806    0.0746518
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0234837   -0.0847229    0.0377555
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.0597731   -0.0443070    0.1638533
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0329908   -0.0732668    0.0072852
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed           0.1193368   -0.0507603    0.2894339
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.0275557   -0.1867075    0.2418189
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed           0.1117120   -0.0688615    0.2922855
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.1156559   -0.3254778    0.0941661
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.1363433   -0.3335011    0.0608144
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.2289387   -0.4836168    0.0257394
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0681040   -0.3534514    0.2172435
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1377772   -0.2482595   -0.0272948
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0254950   -0.1557583    0.1047683
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0759655   -0.2080410    0.0561100
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0578025   -0.1634956    0.0478906
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.2929100    0.0004128    0.5854072
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0996083   -0.2346752    0.0354586
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.1450195   -0.2102105   -0.0798286
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0793734   -0.1290082   -0.0297387
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.0605698   -0.1814463    0.0603067
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed           0.0008154   -0.0477198    0.0493506
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.1385496   -0.3116715    0.0345724
