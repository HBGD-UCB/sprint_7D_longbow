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
Birth       ki0047075b-MAL-ED          BANGLADESH                     High            72     195
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low             63     195
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium          60     195
Birth       ki0047075b-MAL-ED          BRAZIL                         High            63     182
Birth       ki0047075b-MAL-ED          BRAZIL                         Low             51     182
Birth       ki0047075b-MAL-ED          BRAZIL                         Medium          68     182
Birth       ki0047075b-MAL-ED          INDIA                          High            51     180
Birth       ki0047075b-MAL-ED          INDIA                          Low             60     180
Birth       ki0047075b-MAL-ED          INDIA                          Medium          69     180
Birth       ki0047075b-MAL-ED          NEPAL                          High            37     155
Birth       ki0047075b-MAL-ED          NEPAL                          Low             65     155
Birth       ki0047075b-MAL-ED          NEPAL                          Medium          53     155
Birth       ki0047075b-MAL-ED          PERU                           High            82     278
Birth       ki0047075b-MAL-ED          PERU                           Low             98     278
Birth       ki0047075b-MAL-ED          PERU                           Medium          98     278
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High            72     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low            129     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium          57     258
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High             4     103
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low             34     103
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium          65     103
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          High            48      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low             16      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Medium          24      88
Birth       ki1000108-IRC              INDIA                          High           101     343
Birth       ki1000108-IRC              INDIA                          Low            126     343
Birth       ki1000108-IRC              INDIA                          Medium         116     343
Birth       ki1000109-EE               PAKISTAN                       High             0       1
Birth       ki1000109-EE               PAKISTAN                       Low              1       1
Birth       ki1000109-EE               PAKISTAN                       Medium           0       1
Birth       ki1000304b-SAS-CompFeed    INDIA                          High            29     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low             74     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium          63     166
Birth       ki1017093-NIH-Birth        BANGLADESH                     High             4      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low             14      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Medium          10      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High             6      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low             11      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium           6      23
Birth       ki1119695-PROBIT           BELARUS                        High          2240   13824
Birth       ki1119695-PROBIT           BELARUS                        Low           4942   13824
Birth       ki1119695-PROBIT           BELARUS                        Medium        6642   13824
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High          7015   12896
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low           2696   12896
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium        3185   12896
Birth       ki1135781-COHORTS          GUATEMALA                      High           157     748
Birth       ki1135781-COHORTS          GUATEMALA                      Low            344     748
Birth       ki1135781-COHORTS          GUATEMALA                      Medium         247     748
Birth       ki1135781-COHORTS          INDIA                          High           656    4879
Birth       ki1135781-COHORTS          INDIA                          Low           1602    4879
Birth       ki1135781-COHORTS          INDIA                          Medium        2621    4879
Birth       ki1135781-COHORTS          PHILIPPINES                    High          1128    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    Low            838    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium         933    2899
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High          4648   15685
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low           6207   15685
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium        4830   15685
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High             4     300
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low            293     300
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium           3     300
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
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High           157     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low            104     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium         107     368
6 months    ki1000108-IRC              INDIA                          High           124     408
6 months    ki1000108-IRC              INDIA                          Low            145     408
6 months    ki1000108-IRC              INDIA                          Medium         139     408
6 months    ki1000109-EE               PAKISTAN                       High            15     373
6 months    ki1000109-EE               PAKISTAN                       Low            325     373
6 months    ki1000109-EE               PAKISTAN                       Medium          33     373
6 months    ki1000304b-SAS-CompFeed    INDIA                          High           289    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low            596    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium         449    1334
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High            35     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low            304     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium          41     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     High           155     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low            194     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium         187     536
6 months    ki1017093b-PROVIDE         BANGLADESH                     High           203     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low            180     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium         199     582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High           240     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low            229     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium         246     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High           512    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low             74    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium        1434    2020
6 months    ki1112895-Guatemala BSC    GUATEMALA                      High           117     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low             73     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium          87     277
6 months    ki1113344-GMS-Nepal        NEPAL                          High            67     560
6 months    ki1113344-GMS-Nepal        NEPAL                          Low            399     560
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium          94     560
6 months    ki1119695-PROBIT           BELARUS                        High          2656   15757
6 months    ki1119695-PROBIT           BELARUS                        Low           5642   15757
6 months    ki1119695-PROBIT           BELARUS                        Medium        7459   15757
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High          4465    8251
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low           1717    8251
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium        2069    8251
6 months    ki1135781-COHORTS          GUATEMALA                      High           185     953
6 months    ki1135781-COHORTS          GUATEMALA                      Low            449     953
6 months    ki1135781-COHORTS          GUATEMALA                      Medium         319     953
6 months    ki1135781-COHORTS          INDIA                          High           737    5407
6 months    ki1135781-COHORTS          INDIA                          Low           1774    5407
6 months    ki1135781-COHORTS          INDIA                          Medium        2896    5407
6 months    ki1135781-COHORTS          PHILIPPINES                    High          1015    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    Low            824    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium         867    2706
6 months    ki1148112-LCNI-5           MALAWI                         High           298     813
6 months    ki1148112-LCNI-5           MALAWI                         Low            261     813
6 months    ki1148112-LCNI-5           MALAWI                         Medium         254     813
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High          5909   16767
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low           5612   16767
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium        5246   16767
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High            68    2038
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low           1901    2038
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium          69    2038
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
24 months   ki1017093-NIH-Birth        BANGLADESH                     High           130     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low            152     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium         146     428
24 months   ki1017093b-PROVIDE         BANGLADESH                     High           201     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low            173     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium         204     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High           191     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low            146     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium         177     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High             2       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low              0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium           4       6
24 months   ki1113344-GMS-Nepal        NEPAL                          High            58     495
24 months   ki1113344-GMS-Nepal        NEPAL                          Low            350     495
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium          87     495
24 months   ki1119695-PROBIT           BELARUS                        High           654    3971
24 months   ki1119695-PROBIT           BELARUS                        Low           1381    3971
24 months   ki1119695-PROBIT           BELARUS                        Medium        1936    3971
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High           180     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low            114     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium         129     423
24 months   ki1135781-COHORTS          GUATEMALA                      High           209    1068
24 months   ki1135781-COHORTS          GUATEMALA                      Low            512    1068
24 months   ki1135781-COHORTS          GUATEMALA                      Medium         347    1068
24 months   ki1135781-COHORTS          INDIA                          High           601    4166
24 months   ki1135781-COHORTS          INDIA                          Low           1264    4166
24 months   ki1135781-COHORTS          INDIA                          Medium        2301    4166
24 months   ki1135781-COHORTS          PHILIPPINES                    High           911    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    Low            748    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium         790    2449
24 months   ki1148112-LCNI-5           MALAWI                         High           214     556
24 months   ki1148112-LCNI-5           MALAWI                         Low            172     556
24 months   ki1148112-LCNI-5           MALAWI                         Medium         170     556
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High          2912    8592
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low           2999    8592
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium        2681    8592
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High            71    2000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low           1855    2000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium          74    2000


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
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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
![](/tmp/1e487828-a97f-4fa0-838e-a3ad291821c5/970d58df-b398-4c3a-af6e-1354774b751d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.9923259   -1.2211524   -0.7634993
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.7044302    0.3813687    1.0274916
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.9793514   -1.1998432   -0.7588597
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.7499032   -0.9603392   -0.5394671
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed           0.1410610   -0.0700469    0.3521688
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.0435812   -0.2054799    0.2926422
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.5323957   -1.0165419   -0.0482496
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.9413406   -1.2383697   -0.6443115
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.1412077   -0.4474541    0.1650387
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.1940881   -2.6567306    0.2685543
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -1.1272587   -1.3194933   -0.9350241
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.4963455   -0.5514779   -0.4412131
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -1.0078691   -1.2442460   -0.7714922
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.8947767   -0.9648215   -0.8247320
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.6892398   -0.7771652   -0.6013143
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.7271931   -0.7619768   -0.6924094
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1597734   -0.4066007    0.0870540
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           1.0175091    0.7505644    1.2844539
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.5005982   -0.7532683   -0.2479281
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.4035829    0.1329191    0.6742466
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           0.9854845    0.7517263    1.2192427
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.3625490    0.0621571    0.6629409
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.5038744   -0.0053347    1.0130835
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.4030117   -0.7004446   -0.1055787
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.4488892   -0.6938524   -0.2039260
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -0.6758027   -0.9396058   -0.4119995
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.6270466   -0.8030411   -0.4510520
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.8920419   -1.2395447   -0.5445391
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.2850341   -0.4675698   -0.1024985
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1429618   -0.2756012   -0.0103224
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.1314120   -0.0011486    0.2639726
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1908246   -0.0454642    0.4271134
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed           0.0010060   -0.2176148    0.2196269
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.2011662   -0.5048084    0.1024760
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.5843427    0.5142633    0.6544222
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.3742162    0.3375351    0.4108974
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.3107510    0.1896869    0.4318151
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.4830200   -0.5645496   -0.4014903
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.2815672   -0.3552934   -0.2078409
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.5846662    0.4624949    0.7068375
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.5622636   -0.5959721   -0.5285551
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.2856617   -0.5920306    0.0207072
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.6949085   -0.9448967   -0.4449203
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.6378009    0.2982707    0.9773312
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.8509915   -1.0677667   -0.6342163
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.1270843   -0.3985291    0.1443606
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.2577115    0.0571652    0.4582578
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.5013839    0.2709033    0.7318645
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1781225    0.0178513    0.3383937
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.3812997   -0.5319295   -0.2306699
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.6720361   -0.8298030   -0.5142693
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.7516021   -0.9353901   -0.5678141
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.7533901   -0.8979682   -0.6088119
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.4038749   -0.5635228   -0.2442270
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.0195779   -1.2954303   -0.7437254
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.7512724    0.5943942    0.9081507
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -1.2512333   -1.4356945   -1.0667721
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.2335506   -0.3473352   -0.1197659
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.2654668   -0.3550779   -0.1758557
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.5331849   -0.5956121   -0.4707576
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed           0.1825501    0.0390549    0.3260453
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.3173657   -1.3583088   -1.2764225
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.1601643   -1.3760048   -0.9443238


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.9540000   -1.1046669   -0.8033331
Birth       ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.3973626    0.2226221    0.5721032
Birth       ki0047075b-MAL-ED          INDIA                          observed             observed          -1.0810556   -1.2311524   -0.9309587
Birth       ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.9362581   -1.0768107   -0.7957054
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.0762230   -0.1865335    0.0340875
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.0562791   -0.2000837    0.0875255
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.6275000   -0.9746292   -0.2803708
Birth       ki1000108-IRC              INDIA                          observed             observed          -1.0105831   -1.1973019   -0.8238643
Birth       ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.2697590   -0.5399211    0.0004030
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.7508696   -1.2358912   -0.2658480
Birth       ki1119695-PROBIT           BELARUS                        observed             observed          -1.1463469   -1.3562674   -0.9364264
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.5149449   -0.5408131   -0.4890768
Birth       ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.0590508   -1.1604735   -0.9576281
Birth       ki1135781-COHORTS          INDIA                          observed             observed          -0.9831277   -1.0164986   -0.9497568
Birth       ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.7427251   -0.7890855   -0.6963647
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.7242308   -0.7440729   -0.7043887
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.0733121   -0.2158688    0.0692446
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.9741026    0.8090337    1.1391714
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -0.6803526   -0.8157896   -0.5449155
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed           0.1237029   -0.0091418    0.2565476
6 months    ki0047075b-MAL-ED          PERU                           observed             observed           1.0583824    0.9364872    1.1802775
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.5420735    0.3899459    0.6942011
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5303612    0.3888640    0.6718585
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.5026766   -0.6536848   -0.3516685
6 months    ki1000108-IRC              INDIA                          observed             observed          -0.5989297   -0.7344491   -0.4634104
6 months    ki1000109-EE               PAKISTAN                       observed             observed          -0.7250670   -0.8391902   -0.6109438
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.6657084   -0.8024377   -0.5289791
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             observed          -1.0121579   -1.1280429   -0.8962729
6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.4389101   -0.5279432   -0.3498771
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.2083706   -0.2927992   -0.1239419
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed           0.0297622   -0.0491685    0.1086930
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0807224    0.0278917    0.1335530
6 months    ki1112895-Guatemala BSC    GUATEMALA                      observed             observed          -0.0568833   -0.1722874    0.0585208
6 months    ki1113344-GMS-Nepal        NEPAL                          observed             observed          -0.6097530   -0.6959927   -0.5235132
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.5789633    0.5190130    0.6389137
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed           0.3042510    0.2781512    0.3303508
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed           0.1972718    0.1253735    0.2691700
6 months    ki1135781-COHORTS          INDIA                          observed             observed          -0.7006307   -0.7314213   -0.6698400
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.2938433   -0.3352064   -0.2524802
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed           0.4400246    0.3684214    0.5116278
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.5932740   -0.6128028   -0.5737451
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.3995412   -0.4558989   -0.3431835
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.7642690   -0.9008595   -0.6276785
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.4459226    0.2396905    0.6521548
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -0.9446231   -1.0689273   -0.8203189
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.3599765   -0.4780748   -0.2418783
24 months   ki0047075b-MAL-ED          PERU                           observed             observed           0.1199500   -0.0005848    0.2404848
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.4267017    0.3074751    0.5459283
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0858857   -0.0532969    0.2250684
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.5571505   -0.6585247   -0.4557763
24 months   ki1000108-IRC              INDIA                          observed             observed          -0.7458150   -0.8368180   -0.6548120
24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.9115790   -1.0095022   -0.8136559
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.8879412   -0.9708680   -0.8050144
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.6103502   -0.7050157   -0.5156847
24 months   ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.1324444   -1.2201925   -1.0446964
24 months   ki1119695-PROBIT           BELARUS                        observed             observed           0.6863435    0.5745700    0.7981170
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -1.1809929   -1.2809380   -1.0810478
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -0.2765075   -0.3306839   -0.2223311
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -0.6386606   -0.6699072   -0.6074140
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.6099592   -0.6467541   -0.5731643
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -0.0442266   -0.1266703    0.0382171
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.2974744   -1.3207756   -1.2741732
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.2263000   -1.2784771   -1.1741229


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.0383259   -0.1724148    0.2490666
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.3070675   -0.5719322   -0.0422029
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.1017041   -0.3107158    0.1073075
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.1863549   -0.3590880   -0.0136218
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.2172840   -0.3865391   -0.0480289
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0998602   -0.3223177    0.1225972
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0951043   -0.4598496    0.2696411
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.0692425   -0.2973243    0.1588393
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.1285513   -0.3455099    0.0884073
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.4432186   -0.7648622    1.6512993
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0190882   -0.0773074    0.0391310
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0185994   -0.0673394    0.0301405
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0511817   -0.2595227    0.1571593
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.0883510   -0.1516904   -0.0250116
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0534853   -0.1275355    0.0205649
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed           0.0029623   -0.0258864    0.0318110
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.0864613   -0.1194200    0.2923426
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0434066   -0.2667534    0.1799403
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.1797544   -0.3765727    0.0170639
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.2798800   -0.5163826   -0.0433774
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           0.0728979   -0.1179387    0.2637344
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.1795245   -0.0895096    0.4485586
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0264868   -0.4806215    0.5335952
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0996650   -0.3365595    0.1372296
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.1500405   -0.3524010    0.0523200
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -0.0492644   -0.3092850    0.2107563
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.0386618   -0.1203054    0.0429817
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.1201160   -0.4552882    0.2150561
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.1538760   -0.3047608   -0.0029912
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0654088   -0.1779496    0.0471320
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.1016498   -0.2102664    0.0069668
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1101022   -0.3434807    0.1232763
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.0578893   -0.2479389    0.1321603
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.4085868   -0.6981468   -0.1190267
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0053794   -0.0440503    0.0332914
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0699652   -0.0969128   -0.0430176
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1134792   -0.2186250   -0.0083334
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.2176107   -0.2954777   -0.1397437
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0122761   -0.0715762    0.0470240
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.1446416   -0.2426627   -0.0466205
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0310104   -0.0592215   -0.0027993
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.1138795   -0.4137290    0.1859700
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0693605   -0.2647815    0.1260606
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.1918783   -0.4640177    0.0802611
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.0936316   -0.2582558    0.0709926
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.2328922   -0.4680964    0.0023119
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.1377615   -0.3034774    0.0279544
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0746822   -0.2786551    0.1292907
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0922368   -0.2003743    0.0159008
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.1758508   -0.2947673   -0.0569344
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.0737789   -0.2056271    0.0580694
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.1599769   -0.3151736   -0.0047802
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1345511   -0.2468664   -0.0222358
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.2064753   -0.3308040   -0.0821466
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.1128666   -0.3733456    0.1476124
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0649290   -0.1743369    0.0444790
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.0702404   -0.0772215    0.2177023
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0429569   -0.1378706    0.0519568
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.3731938   -0.4593021   -0.2870855
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0767743   -0.1272618   -0.0262868
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.2267767   -0.3367007   -0.1168527
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed           0.0198913   -0.0143253    0.0541078
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0661357   -0.2788056    0.1465342
