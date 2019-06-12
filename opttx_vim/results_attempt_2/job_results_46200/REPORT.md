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

**Outcome Variable:** haz

## Predictor Variables

**Intervention Variable:** feducyrs

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* hhwealth_quart
* W_mhtcm
* W_gagebrth
* W_birthwt
* W_birthlen
* single
* delta_W_mage
* delta_meducyrs
* delta_hhwealth_quart
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
Birth       ki0047075b-MAL-ED          BANGLADESH                     High            52     144
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low             38     144
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium          54     144
Birth       ki0047075b-MAL-ED          INDIA                          High            38     123
Birth       ki0047075b-MAL-ED          INDIA                          Low             50     123
Birth       ki0047075b-MAL-ED          INDIA                          Medium          35     123
Birth       ki0047075b-MAL-ED          NEPAL                          High            27      67
Birth       ki0047075b-MAL-ED          NEPAL                          Low             19      67
Birth       ki0047075b-MAL-ED          NEPAL                          Medium          21      67
Birth       ki0047075b-MAL-ED          PERU                           High           116     236
Birth       ki0047075b-MAL-ED          PERU                           Low             65     236
Birth       ki0047075b-MAL-ED          PERU                           Medium          55     236
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High            35      91
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low             30      91
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium          26      91
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High            65     101
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low             29     101
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium           7     101
Birth       ki1000304b-SAS-CompFeed    INDIA                          High            34     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low             79     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium          74     187
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High             8      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low             12      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium           7      27
Birth       ki1119695-PROBIT           BELARUS                        High          2058   13416
Birth       ki1119695-PROBIT           BELARUS                        Low           5316   13416
Birth       ki1119695-PROBIT           BELARUS                        Medium        6042   13416
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High           976   13460
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low           2276   13460
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium       10208   13460
Birth       ki1135781-COHORTS          GUATEMALA                      High           155     804
Birth       ki1135781-COHORTS          GUATEMALA                      Low            355     804
Birth       ki1135781-COHORTS          GUATEMALA                      Medium         294     804
Birth       ki1135781-COHORTS          INDIA                          High           527    1354
Birth       ki1135781-COHORTS          INDIA                          Low            439    1354
Birth       ki1135781-COHORTS          INDIA                          Medium         388    1354
Birth       ki1135781-COHORTS          PHILIPPINES                    High          1027    2873
Birth       ki1135781-COHORTS          PHILIPPINES                    Low            827    2873
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium        1019    2873
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High          3844   18863
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low           8468   18863
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium        6551   18863
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High            53     451
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low            333     451
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium          65     451
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
6 months    ki1000304b-SAS-CompFeed    INDIA                          High           348    1333
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low            550    1333
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium         435    1333
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High           101     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low            132     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium         147     380
6 months    ki1017093b-PROVIDE         BANGLADESH                     High           203     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low            201     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium         179     583
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High           279     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low            223     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium         213     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High           371    2018
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low           1083    2018
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium         564    2018
6 months    ki1113344-GMS-Nepal        NEPAL                          High           136     562
6 months    ki1113344-GMS-Nepal        NEPAL                          Low            243     562
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium         183     562
6 months    ki1119695-PROBIT           BELARUS                        High          2513   15211
6 months    ki1119695-PROBIT           BELARUS                        Low           5962   15211
6 months    ki1119695-PROBIT           BELARUS                        Medium        6736   15211
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High           556    8063
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low           1404    8063
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium        6103    8063
6 months    ki1135781-COHORTS          GUATEMALA                      High           165     904
6 months    ki1135781-COHORTS          GUATEMALA                      Low            406     904
6 months    ki1135781-COHORTS          GUATEMALA                      Medium         333     904
6 months    ki1135781-COHORTS          INDIA                          High           544    1385
6 months    ki1135781-COHORTS          INDIA                          Low            450    1385
6 months    ki1135781-COHORTS          INDIA                          Medium         391    1385
6 months    ki1135781-COHORTS          PHILIPPINES                    High           891    2564
6 months    ki1135781-COHORTS          PHILIPPINES                    Low            746    2564
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium         927    2564
6 months    ki1148112-LCNI-5           MALAWI                         High           251     812
6 months    ki1148112-LCNI-5           MALAWI                         Low            290     812
6 months    ki1148112-LCNI-5           MALAWI                         Medium         271     812
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High          4279   16132
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low           6304   16132
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium        5549   16132
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High           346    2746
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low           1994    2746
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium         406    2746
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
24 months   ki1017093b-PROVIDE         BANGLADESH                     High           202     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low            196     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium         179     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High           211     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low            144     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium         159     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High             0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low              1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium           5       6
24 months   ki1113344-GMS-Nepal        NEPAL                          High           116     498
24 months   ki1113344-GMS-Nepal        NEPAL                          Low            221     498
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium         161     498
24 months   ki1119695-PROBIT           BELARUS                        High           627    3913
24 months   ki1119695-PROBIT           BELARUS                        Low           1516    3913
24 months   ki1119695-PROBIT           BELARUS                        Medium        1770    3913
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High            19     434
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low            105     434
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium         310     434
24 months   ki1135781-COHORTS          GUATEMALA                      High           177     995
24 months   ki1135781-COHORTS          GUATEMALA                      Low            464     995
24 months   ki1135781-COHORTS          GUATEMALA                      Medium         354     995
24 months   ki1135781-COHORTS          INDIA                          High           539    1380
24 months   ki1135781-COHORTS          INDIA                          Low            450    1380
24 months   ki1135781-COHORTS          INDIA                          Medium         391    1380
24 months   ki1135781-COHORTS          PHILIPPINES                    High           798    2314
24 months   ki1135781-COHORTS          PHILIPPINES                    Low            692    2314
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium         824    2314
24 months   ki1148112-LCNI-5           MALAWI                         High           173     571
24 months   ki1148112-LCNI-5           MALAWI                         Low            203     571
24 months   ki1148112-LCNI-5           MALAWI                         Medium         195     571
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High          2070    8293
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low           3379    8293
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium        2844    8293
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High           333    2694
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low           1963    2694
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium         398    2694


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
![](/tmp/a3e8528d-4780-447d-a203-578c0301a248/5f254896-f2b1-463b-9dfb-1e607e8ef021/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.3433688   -1.7050400   -0.9816977
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.6932957   -0.9156424   -0.4709490
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.6144417   -0.9350591   -0.2938244
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.9591227   -1.1431219   -0.7751236
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.6227578   -0.9165766   -0.3289390
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.8194933   -1.1108397   -0.5281468
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.2516377   -1.5177812   -0.9854941
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.5196073   -2.0510131   -0.9882015
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           1.3256284    1.1633197    1.4879370
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.4689665   -0.5474205   -0.3905124
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.2100978    0.0300785    0.3901172
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.6019135   -0.7026130   -0.5012141
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.1404219   -0.2064835   -0.0743602
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.5281006   -1.5669519   -1.4892494
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.5789386   -1.8098529   -1.3480243
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.1893032   -1.4247001   -0.9539063
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.3979663   -1.5962781   -1.1996546
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.5409985   -0.7809973   -0.3009997
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -1.3045494   -1.5188288   -1.0902699
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -1.0723355   -1.4219716   -0.7226994
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.2590245   -1.4304354   -1.0876135
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.2140708   -1.3947201   -1.0334215
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -1.7040031   -1.9109343   -1.4970719
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.8879957   -1.0168091   -0.7591823
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.0901677   -1.2031525   -0.9771828
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.4321874   -0.5380375   -0.3263373
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.1244967   -1.2956999   -0.9532935
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.2365826    0.1353766    0.3377886
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.8669010   -0.9529766   -0.7808254
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -1.6801113   -1.8228826   -1.5373399
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.7625408   -0.8525528   -0.6725289
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.9473182   -1.0202057   -0.8744306
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.6203560   -1.7543880   -1.4863240
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.1845396   -1.2279335   -1.1411457
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.3156746   -1.4192633   -1.2120859
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.5978572   -1.8174785   -1.3782358
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.9235609   -2.1911969   -1.6559250
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -1.1403168   -1.4549854   -0.8256481
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -1.5018658   -1.7091773   -1.2945544
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -1.4455571   -1.7684945   -1.1226196
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.5656308   -3.0161281   -2.1151336
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.2177343   -1.3451983   -1.0902702
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.2106696   -1.3429956   -1.0783436
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.6329191   -1.8238954   -1.4419428
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.0405144   -0.2216617    0.3026906
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -1.4955901   -2.1602544   -0.8309258
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -2.7435800   -2.8629822   -2.6241778
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -1.5541572   -1.6488579   -1.4594565
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -2.0205716   -2.0991029   -1.9420404
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.7889631   -1.9213533   -1.6565730
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.8448402   -1.8947821   -1.7948984
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.7222246   -1.8111998   -1.6332494


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.1090972   -1.2821831   -0.9360114
Birth       ki0047075b-MAL-ED          INDIA                          observed             observed          -0.8941463   -1.0718260   -0.7164667
Birth       ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.6823881   -0.9646995   -0.4000766
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.9057627   -1.0235263   -0.7879991
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.7639560   -0.9583680   -0.5695441
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.9225743   -1.1664549   -0.6786936
Birth       ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -1.3946524   -1.5833612   -1.2059436
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.1100000   -1.5086894   -0.7113106
Birth       ki1119695-PROBIT           BELARUS                        observed             observed           1.3343977    1.1746915    1.4941040
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.4982987   -0.5191445   -0.4774528
Birth       ki1135781-COHORTS          GUATEMALA                      observed             observed           0.1369030    0.0500914    0.2237146
Birth       ki1135781-COHORTS          INDIA                          observed             observed          -0.6011965   -0.6594222   -0.5429708
Birth       ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.2407379   -0.2807613   -0.2007145
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.5685983   -1.5887531   -1.5484435
Birth       kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.5193126   -1.6248757   -1.4137496
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.0801894   -1.2248166   -0.9355622
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -1.0957005   -1.2405754   -0.9508256
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.6134211   -0.7965750   -0.4302671
6 months    ki0047075b-MAL-ED          PERU                           observed             observed          -1.3230208   -1.4411177   -1.2049240
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.9833877   -1.1756113   -0.7911640
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.3177032   -1.4548809   -1.1805254
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -1.4006377   -1.4802862   -1.3209891
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             observed          -1.8986842   -2.0118892   -1.7854792
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.0871041   -1.1635539   -1.0106543
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.1986783   -1.2700937   -1.1272630
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.5442042   -0.5932639   -0.4951446
6 months    ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.3338820   -1.4121646   -1.2555993
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.1181349    0.0244298    0.2118400
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.8840215   -0.9103442   -0.8576988
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.8074115   -1.8776669   -1.7371562
6 months    ki1135781-COHORTS          INDIA                          observed             observed          -0.9755018   -1.0332483   -0.9177553
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -1.1419345   -1.1847445   -1.0991244
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed          -1.6442734   -1.7137349   -1.5748119
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.3073109   -1.3309979   -1.2836240
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.3498252   -1.3977574   -1.3018930
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.8419658   -1.9985654   -1.6853663
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -1.7871970   -1.9519446   -1.6224494
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -1.3050000   -1.4938380   -1.1161620
24 months   ki0047075b-MAL-ED          PERU                           observed             observed          -1.7560976   -1.8841319   -1.6280632
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.6331868   -1.8397539   -1.4266197
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.5456780   -2.6911200   -2.4002359
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.5861179   -1.6693668   -1.5028689
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.4295331   -1.5127726   -1.3462935
24 months   ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.8850636   -1.9697435   -1.8003837
24 months   ki1119695-PROBIT           BELARUS                        observed             observed          -0.1248692   -0.4220079    0.1722694
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -2.3650922   -2.4839447   -2.2462396
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -2.8522915   -2.9193797   -2.7852032
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -1.9321014   -1.9930806   -1.8711223
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -2.4020743   -2.4479290   -2.3562197
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -1.8678984   -1.9495904   -1.7862065
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -2.0060871   -2.0338879   -1.9782862
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.7501299   -1.7959342   -1.7043256


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.2342716   -0.0675749    0.5361182
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.2008506   -0.3936109   -0.0080904
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0679463   -0.3955203    0.2596276
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed           0.0533600   -0.1096645    0.2163845
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.1411983   -0.3592474    0.0768509
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1030810   -0.2917842    0.0856222
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.1430147   -0.3205021    0.0344726
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.4096073   -0.0949802    0.9141948
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           0.0087694   -0.0894952    0.1070339
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0293322   -0.1048382    0.0461738
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0731949   -0.2326540    0.0862643
Birth       ki1135781-COHORTS          INDIA                          optimal              observed           0.0007171   -0.0762453    0.0776795
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.1003161   -0.1538371   -0.0467950
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0404977   -0.0737154   -0.0072799
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed           0.0596260   -0.1351911    0.2544430
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.1091138   -0.0909308    0.3091584
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed           0.3022659    0.1342127    0.4703190
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0724226   -0.3047719    0.1599268
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0184715   -0.2049362    0.1679932
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.0889478   -0.1762444    0.3541400
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0586787   -0.1624829    0.0451255
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.1865669   -0.3272980   -0.0458357
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.1946811   -0.3779800   -0.0113822
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1991084   -0.3037960   -0.0944207
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.1085107   -0.1995081   -0.0175132
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1120168   -0.2062573   -0.0177763
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.2093853   -0.3578682   -0.0609024
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          -0.1184477   -0.1698746   -0.0670208
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0171205   -0.0991690    0.0649281
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1273002   -0.2531559   -0.0014445
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.2129610   -0.2856602   -0.1402618
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.1946163   -0.2547010   -0.1345316
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.0239174   -0.1308445    0.0830097
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1227713   -0.1591922   -0.0863504
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0341506   -0.1311435    0.0628423
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.2441086   -0.4411407   -0.0470766
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed           0.1363640   -0.0860615    0.3587894
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.1646832   -0.3942084    0.0648419
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.2542317   -0.4311417   -0.0773217
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.1876298   -0.4497549    0.0744954
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0199529   -0.4068298    0.4467355
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.3683836   -0.4747931   -0.2619741
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.2188635   -0.3195238   -0.1182031
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.2521445   -0.4179748   -0.0863142
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.1653837   -0.4422362    0.1114689
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.8695021   -1.5180451   -0.2209591
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1087115   -0.2154665   -0.0019564
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.3779443   -0.4555962   -0.3002924
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.3815027   -0.4466734   -0.3163319
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.0789353   -0.1866054    0.0287348
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1612468   -0.2028681   -0.1196256
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0279053   -0.1110888    0.0552782
