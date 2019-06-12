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

**Intervention Variable:** meducyrs

**Adjustment Set:**

* arm
* W_mage
* feducyrs
* W_mhtcm
* W_gagebrth
* W_birthwt
* W_birthlen
* single
* impsan
* delta_W_mage
* delta_feducyrs
* delta_W_mhtcm
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_single
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        meducyrs    n_cell       n
----------  -------------------------  -----------------------------  ---------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High            75     207
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low             68     207
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium          64     207
Birth       ki0047075b-MAL-ED          BRAZIL                         High            65     190
Birth       ki0047075b-MAL-ED          BRAZIL                         Low             52     190
Birth       ki0047075b-MAL-ED          BRAZIL                         Medium          73     190
Birth       ki0047075b-MAL-ED          INDIA                          High            51     183
Birth       ki0047075b-MAL-ED          INDIA                          Low             61     183
Birth       ki0047075b-MAL-ED          INDIA                          Medium          71     183
Birth       ki0047075b-MAL-ED          NEPAL                          High            37     160
Birth       ki0047075b-MAL-ED          NEPAL                          Low             68     160
Birth       ki0047075b-MAL-ED          NEPAL                          Medium          55     160
Birth       ki0047075b-MAL-ED          PERU                           High            87     286
Birth       ki0047075b-MAL-ED          PERU                           Low             99     286
Birth       ki0047075b-MAL-ED          PERU                           Medium         100     286
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High            72     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low            133     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium          57     262
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High             4     107
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low             35     107
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium          68     107
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          High            50      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low             15      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Medium          25      90
Birth       ki1000108-IRC              INDIA                          High           113     388
Birth       ki1000108-IRC              INDIA                          Low            142     388
Birth       ki1000108-IRC              INDIA                          Medium         133     388
Birth       ki1000109-EE               PAKISTAN                       High             0       2
Birth       ki1000109-EE               PAKISTAN                       Low              2       2
Birth       ki1000109-EE               PAKISTAN                       Medium           0       2
Birth       ki1000304b-SAS-CompFeed    INDIA                          High            31     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low             86     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium          70     187
Birth       ki1017093-NIH-Birth        BANGLADESH                     High             4      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low             14      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Medium          10      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High             7      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low             12      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium           8      27
Birth       ki1119695-PROBIT           BELARUS                        High          2248   13884
Birth       ki1119695-PROBIT           BELARUS                        Low           4962   13884
Birth       ki1119695-PROBIT           BELARUS                        Medium        6674   13884
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High          7487   13810
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low           2904   13810
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium        3419   13810
Birth       ki1135781-COHORTS          GUATEMALA                      High           178     842
Birth       ki1135781-COHORTS          GUATEMALA                      Low            391     842
Birth       ki1135781-COHORTS          GUATEMALA                      Medium         273     842
Birth       ki1135781-COHORTS          INDIA                          High           678    5216
Birth       ki1135781-COHORTS          INDIA                          Low           1756    5216
Birth       ki1135781-COHORTS          INDIA                          Medium        2782    5216
Birth       ki1135781-COHORTS          PHILIPPINES                    High          1169    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    Low            900    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium         981    3050
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High          5552   19587
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low           7897   19587
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium        6138   19587
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High             8     367
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low            354     367
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium           5     367
6 months    ki0047075b-MAL-ED          BANGLADESH                     High            73     196
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low             64     196
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium          59     196
6 months    ki0047075b-MAL-ED          BRAZIL                         High            71     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Low             56     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Medium          81     208
6 months    ki0047075b-MAL-ED          INDIA                          High            59     208
6 months    ki0047075b-MAL-ED          INDIA                          Low             72     208
6 months    ki0047075b-MAL-ED          INDIA                          Medium          77     208
6 months    ki0047075b-MAL-ED          NEPAL                          High            53     221
6 months    ki0047075b-MAL-ED          NEPAL                          Low             93     221
6 months    ki0047075b-MAL-ED          NEPAL                          Medium          75     221
6 months    ki0047075b-MAL-ED          PERU                           High            81     272
6 months    ki0047075b-MAL-ED          PERU                           Low             94     272
6 months    ki0047075b-MAL-ED          PERU                           Medium          97     272
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High            70     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low            127     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium          57     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High             9     203
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low             62     203
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium         132     203
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High           157     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low            105     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium         107     369
6 months    ki1000108-IRC              INDIA                          High           123     407
6 months    ki1000108-IRC              INDIA                          Low            146     407
6 months    ki1000108-IRC              INDIA                          Medium         138     407
6 months    ki1000109-EE               PAKISTAN                       High            15     369
6 months    ki1000109-EE               PAKISTAN                       Low            321     369
6 months    ki1000109-EE               PAKISTAN                       Medium          33     369
6 months    ki1000304b-SAS-CompFeed    INDIA                          High           290    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low            597    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium         449    1336
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High            35     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low            304     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium          41     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     High           155     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low            195     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium         187     537
6 months    ki1017093b-PROVIDE         BANGLADESH                     High           203     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low            180     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium         200     583
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High           240     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low            229     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium         246     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High           512    2021
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low             74    2021
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium        1435    2021
6 months    ki1112895-Guatemala BSC    GUATEMALA                      High           117     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low             73     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium          87     277
6 months    ki1113344-GMS-Nepal        NEPAL                          High            67     560
6 months    ki1113344-GMS-Nepal        NEPAL                          Low            399     560
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium          94     560
6 months    ki1119695-PROBIT           BELARUS                        High          2657   15761
6 months    ki1119695-PROBIT           BELARUS                        Low           5644   15761
6 months    ki1119695-PROBIT           BELARUS                        Medium        7460   15761
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High          4483    8282
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low           1719    8282
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium        2080    8282
6 months    ki1135781-COHORTS          GUATEMALA                      High           185     952
6 months    ki1135781-COHORTS          GUATEMALA                      Low            449     952
6 months    ki1135781-COHORTS          GUATEMALA                      Medium         318     952
6 months    ki1135781-COHORTS          INDIA                          High           736    5413
6 months    ki1135781-COHORTS          INDIA                          Low           1777    5413
6 months    ki1135781-COHORTS          INDIA                          Medium        2900    5413
6 months    ki1135781-COHORTS          PHILIPPINES                    High          1014    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Low            826    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium         868    2708
6 months    ki1148112-LCNI-5           MALAWI                         High           298     813
6 months    ki1148112-LCNI-5           MALAWI                         Low            261     813
6 months    ki1148112-LCNI-5           MALAWI                         Medium         254     813
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High          5922   16794
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low           5622   16794
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium        5250   16794
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High            68    2036
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low           1899    2036
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium          69    2036
24 months   ki0047075b-MAL-ED          BANGLADESH                     High            64     171
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low             59     171
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium          48     171
24 months   ki0047075b-MAL-ED          BRAZIL                         High            62     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Low             42     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Medium          64     168
24 months   ki0047075b-MAL-ED          INDIA                          High            55     199
24 months   ki0047075b-MAL-ED          INDIA                          Low             69     199
24 months   ki0047075b-MAL-ED          INDIA                          Medium          75     199
24 months   ki0047075b-MAL-ED          NEPAL                          High            48     213
24 months   ki0047075b-MAL-ED          NEPAL                          Low             91     213
24 months   ki0047075b-MAL-ED          NEPAL                          Medium          74     213
24 months   ki0047075b-MAL-ED          PERU                           High            59     200
24 months   ki0047075b-MAL-ED          PERU                           Low             74     200
24 months   ki0047075b-MAL-ED          PERU                           Medium          67     200
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High            67     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low            120     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium          51     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High             7     175
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low             54     175
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium         114     175
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High           158     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low            105     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium         109     372
24 months   ki1000108-IRC              INDIA                          High           124     409
24 months   ki1000108-IRC              INDIA                          Low            146     409
24 months   ki1000108-IRC              INDIA                          Medium         139     409
24 months   ki1017093-NIH-Birth        BANGLADESH                     High           130     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low            153     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium         146     429
24 months   ki1017093b-PROVIDE         BANGLADESH                     High           201     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low            173     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium         203     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High           191     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low            146     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium         177     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High             2       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low              0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium           4       6
24 months   ki1113344-GMS-Nepal        NEPAL                          High            58     496
24 months   ki1113344-GMS-Nepal        NEPAL                          Low            350     496
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium          88     496
24 months   ki1119695-PROBIT           BELARUS                        High           664    4035
24 months   ki1119695-PROBIT           BELARUS                        Low           1408    4035
24 months   ki1119695-PROBIT           BELARUS                        Medium        1963    4035
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High           205     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low            116     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium         136     457
24 months   ki1135781-COHORTS          GUATEMALA                      High           209    1060
24 months   ki1135781-COHORTS          GUATEMALA                      Low            508    1060
24 months   ki1135781-COHORTS          GUATEMALA                      Medium         343    1060
24 months   ki1135781-COHORTS          INDIA                          High           608    4201
24 months   ki1135781-COHORTS          INDIA                          Low           1274    4201
24 months   ki1135781-COHORTS          INDIA                          Medium        2319    4201
24 months   ki1135781-COHORTS          PHILIPPINES                    High           914    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Low            744    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium         787    2445
24 months   ki1148112-LCNI-5           MALAWI                         High           220     572
24 months   ki1148112-LCNI-5           MALAWI                         Low            177     572
24 months   ki1148112-LCNI-5           MALAWI                         Medium         175     572
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High          2927    8621
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low           3004    8621
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium        2690    8621
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High            71    2006
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low           1861    2006
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium          74    2006


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
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
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
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
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
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

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
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
![](/tmp/eedd0a60-43e5-4a7e-b897-c2921e901eeb/d64b7ea8-aebd-4b6c-9b37-65f1ee2e88a3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.9493053   -1.1790228   -0.7195878
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.6196134   -0.8889068   -0.3503200
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.9549795   -1.1694091   -0.7405499
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.8211534   -1.1528361   -0.4894706
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.8345452   -1.0251927   -0.6438977
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.5201599   -0.7412752   -0.2990446
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.7980740   -1.0198246   -0.5763234
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.2349281   -0.4833744    0.0135181
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.1217787   -1.4478018   -0.7957556
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.1195018   -1.8910805   -0.3479231
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           1.3733638    1.1924732    1.5542544
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.5123570   -0.5494622   -0.4752518
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.1578788   -0.0282567    0.3440143
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.5705505   -0.6556242   -0.4854769
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.2015339   -0.2685374   -0.1345304
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.5673562   -1.6016470   -1.5330654
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.5787121   -1.6981767   -1.4592475
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.0457322   -1.2870073   -0.8044572
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.0961700   -0.1259902    0.3183302
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.4281448   -1.6382465   -1.2180430
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.3647198   -0.5986719   -0.1307677
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -1.3448767   -1.5081855   -1.1815679
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.9403452   -1.1923471   -0.6883433
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.6358517   -2.0268857   -1.2448177
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -1.1463158   -1.4074619   -0.8851697
6 months    ki1000108-IRC              INDIA                          optimal              observed          -1.3169503   -1.5297995   -1.1041012
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -2.0198717   -2.4393900   -1.6003534
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.0036569   -1.1707872   -0.8365266
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -1.6309633   -1.9956653   -1.2662612
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.1832739   -1.3331259   -1.0334220
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.9793354   -1.1011775   -0.8574934
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.0444027   -1.1599273   -0.9288780
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.4460737   -0.5533015   -0.3388459
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -1.6658085   -1.8733540   -1.4582631
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.1193565   -1.3599015   -0.8788116
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.2158708    0.1261226    0.3056190
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.8444939   -0.8817117   -0.8072761
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -1.7217120   -1.8784769   -1.5649471
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.5083573   -0.6117308   -0.4049838
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.9776053   -1.0454159   -0.9097947
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.4612240   -1.5773389   -1.3451092
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.2346820   -1.2720541   -1.1973099
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.3277625   -1.3862449   -1.2692802
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.6978004   -1.9438620   -1.4517387
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.1219524   -0.1363070    0.3802117
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.5801573   -1.7971837   -1.3631308
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -1.0418992   -1.3263922   -0.7574063
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -1.5986132   -1.8522329   -1.3449935
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -1.4300410   -1.6857580   -1.1743239
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.1537887   -2.8441101   -1.4634673
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -2.5015064   -2.6654403   -2.3375726
24 months   ki1000108-IRC              INDIA                          optimal              observed          -1.6815553   -1.8664185   -1.4966921
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.7817543   -1.9665713   -1.5969373
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.2983806   -1.4301644   -1.1665968
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.1567685   -1.2944154   -1.0191215
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.5216968   -1.7985302   -1.2448634
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.0323382   -0.1840396    0.2487159
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -2.2643797   -2.4579094   -2.0708501
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -2.6623227   -2.7974157   -2.5272297
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -1.1106617   -1.2301970   -0.9911265
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -2.0307313   -2.1076550   -1.9538075
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.7583848   -1.8870546   -1.6297149
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.8833903   -1.9271781   -1.8396024
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.7643666   -2.0355182   -1.4932151


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.0563768   -1.1943724   -0.9183812
Birth       ki0047075b-MAL-ED          BRAZIL                         observed             observed          -0.7620526   -0.9197540   -0.6043512
Birth       ki0047075b-MAL-ED          INDIA                          observed             observed          -0.9731694   -1.1192409   -0.8270979
Birth       ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.7187500   -0.8829096   -0.5545904
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.9346853   -1.0488784   -0.8204922
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.7266031   -0.8549719   -0.5982342
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.9654444   -1.1742112   -0.7566777
Birth       ki1000108-IRC              INDIA                          observed             observed          -0.3080412   -0.4687931   -0.1472894
Birth       ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -1.3946524   -1.5833612   -1.2059436
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.1100000   -1.5086894   -0.7113106
Birth       ki1119695-PROBIT           BELARUS                        observed             observed           1.3254775    1.1669293    1.4840258
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.5013671   -0.5219633   -0.4807709
Birth       ki1135781-COHORTS          GUATEMALA                      observed             observed           0.1288717    0.0445170    0.2132265
Birth       ki1135781-COHORTS          INDIA                          observed             observed          -0.6688842   -0.7003528   -0.6374156
Birth       ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.2490492   -0.2880580   -0.2100404
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.5750447   -1.5948316   -1.5552578
Birth       kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.4750409   -1.5891321   -1.3609496
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.1935544   -1.3251572   -1.0619516
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0529327   -0.0917526    0.1976180
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -1.1704327   -1.2921639   -1.0487015
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.5483560   -0.6619002   -0.4348118
6 months    ki0047075b-MAL-ED          PERU                           observed             observed          -1.3312377   -1.4396065   -1.2228689
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.0633760   -1.1911088   -0.9356432
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.2832512   -1.4141440   -1.1523584
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -1.4234508   -1.5645974   -1.2823042
6 months    ki1000108-IRC              INDIA                          observed             observed          -1.2344062   -1.3658524   -1.1029600
6 months    ki1000109-EE               PAKISTAN                       observed             observed          -2.1956098   -2.3191627   -2.0720568
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -1.4018563   -1.4810585   -1.3226541
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             observed          -1.8986842   -2.0118892   -1.7854792
6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -1.4073821   -1.4960598   -1.3187043
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.0871041   -1.1635539   -1.0106543
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.1986783   -1.2700937   -1.1272630
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.5440108   -0.5930025   -0.4950192
6 months    ki1112895-Guatemala BSC    GUATEMALA                      observed             observed          -1.5624368   -1.6783540   -1.4465196
6 months    ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.3322083   -1.4107364   -1.2536803
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.1069986    0.0122286    0.2017686
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.8916958   -0.9176814   -0.8657103
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.8103361   -1.8786415   -1.7420307
6 months    ki1135781-COHORTS          INDIA                          observed             observed          -1.0183078   -1.0495042   -0.9871113
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -1.1405724   -1.1824954   -1.0986493
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed          -1.6431488   -1.7125598   -1.5737379
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.3131339   -1.3362896   -1.2899781
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.3385142   -1.3948471   -1.2821814
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.8744152   -2.0076626   -1.7411678
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0434524   -0.1247334    0.2116382
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -1.7845980   -1.9142624   -1.6549336
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -1.2366901   -1.3594733   -1.1139070
24 months   ki0047075b-MAL-ED          PERU                           observed             observed          -1.7521250   -1.8731109   -1.6311391
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.6228361   -1.7581177   -1.4875546
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.5264286   -2.6690955   -2.3837616
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -2.5593683   -2.6601027   -2.4586339
24 months   ki1000108-IRC              INDIA                          observed             observed          -1.7824776   -1.8765600   -1.6883952
24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -2.1807945   -2.2835902   -2.0779987
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.5861179   -1.6693668   -1.5028689
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.4295331   -1.5127726   -1.3462935
24 months   ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.8849429   -1.9699639   -1.7999219
24 months   ki1119695-PROBIT           BELARUS                        observed             observed          -0.1314048   -0.4282725    0.1654630
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -2.3994530   -2.5144490   -2.2844569
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -2.8575660   -2.9223159   -2.7928162
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -1.9615163   -1.9983763   -1.9246563
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -2.3898650   -2.4346888   -2.3450412
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -1.8686713   -1.9502344   -1.7871083
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -2.0124336   -2.0401325   -1.9847347
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.7686889   -1.8213457   -1.7160321


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1070715   -0.2981508    0.0840078
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.1424392   -0.3468221    0.0619436
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.0181899   -0.1913816    0.1550019
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.1024034   -0.1689225    0.3737292
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.1001401   -0.2607158    0.0604355
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.2064431   -0.3866729   -0.0262134
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.1673704   -0.3722844    0.0375435
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.0731131   -0.2699501    0.1237239
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.2728737   -0.6156233    0.0698759
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.0095018   -0.5790397    0.5980433
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0478863   -0.1480172    0.0522446
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.0109898   -0.0198206    0.0418003
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0290071   -0.1907174    0.1327033
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.0983337   -0.1784899   -0.0181774
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0475153   -0.1011877    0.0061571
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0076885   -0.0360353    0.0206583
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed           0.1036712    0.0394508    0.1678917
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1478222   -0.3415131    0.0458687
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0432373   -0.2430214    0.1565468
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed           0.2577121    0.0833353    0.4320888
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.1836362   -0.3882808    0.0210084
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           0.0136389   -0.1306367    0.1579146
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.1230308   -0.3432885    0.0972269
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.3526005   -0.0310927    0.7362936
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.2771350   -0.4827910   -0.0714790
6 months    ki1000108-IRC              INDIA                          optimal              observed           0.0825441   -0.0994198    0.2645080
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -0.1757380   -0.5873191    0.2358430
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.3981994   -0.5379416   -0.2584573
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.2677210   -0.6171560    0.0817141
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.2241081   -0.3536655   -0.0945507
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1077686   -0.2093475   -0.0061898
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.1542756   -0.2522927   -0.0562586
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0979371   -0.1894352   -0.0064390
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed           0.1033717   -0.0534491    0.2601925
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.2128518   -0.4416793    0.0159757
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          -0.1088722   -0.1723957   -0.0453487
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0472019   -0.0744224   -0.0199815
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0886242   -0.2255344    0.0482860
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.5099504   -0.6097419   -0.4101589
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.1629671   -0.2200920   -0.1058422
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.1819248   -0.2777250   -0.0861246
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0784519   -0.1077006   -0.0492031
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0107517   -0.0240332    0.0025298
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1766148   -0.3808263    0.0275967
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0785000   -0.2946520    0.1376520
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.2044407   -0.3981304   -0.0107510
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.1947909   -0.4415416    0.0519597
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.1535118   -0.3544798    0.0474561
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.1927952   -0.4135885    0.0279982
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.3726399   -1.0550741    0.3097943
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0578619   -0.1849726    0.0692489
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.1009223   -0.2494791    0.0476345
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.3990402   -0.5535333   -0.2445470
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.2877373   -0.3968262   -0.1786484
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.2727646   -0.3837330   -0.1617962
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.3632461   -0.6244843   -0.1020078
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.1637429   -0.4084833    0.0809974
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1350732   -0.2754600    0.0053136
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1952434   -0.3137129   -0.0767739
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.8508546   -0.9687409   -0.7329682
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.3591338   -0.4242050   -0.2940625
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.1102866   -0.2161214   -0.0044517
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1290433   -0.1639416   -0.0941450
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0043223   -0.2690727    0.2604282
