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
* delta_W_mage
* delta_feducyrs
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
Birth       ki1000304b-SAS-CompFeed    INDIA                          High            12      61
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low             25      61
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium          24      61
Birth       ki1017093-NIH-Birth        BANGLADESH                     High             4      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low             14      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Medium          10      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High             6      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low             11      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium           6      23
Birth       ki1119695-PROBIT           BELARUS                        High          1042    6739
Birth       ki1119695-PROBIT           BELARUS                        Low           2198    6739
Birth       ki1119695-PROBIT           BELARUS                        Medium        3499    6739
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High          7015   12896
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low           2696   12896
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium        3185   12896
Birth       ki1135781-COHORTS          GUATEMALA                      High            97     370
Birth       ki1135781-COHORTS          GUATEMALA                      Low            155     370
Birth       ki1135781-COHORTS          GUATEMALA                      Medium         118     370
Birth       ki1135781-COHORTS          INDIA                          High           656    4879
Birth       ki1135781-COHORTS          INDIA                          Low           1602    4879
Birth       ki1135781-COHORTS          INDIA                          Medium        2621    4879
Birth       ki1135781-COHORTS          PHILIPPINES                    High          1128    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    Low            838    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium         933    2899
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High          2303    7671
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low           3026    7671
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium        2342    7671
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High             1      86
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low             84      86
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium           1      86
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
6 months    ki1000304b-SAS-CompFeed    INDIA                          High            93     411
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low            179     411
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium         139     411
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High             6      97
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low             78      97
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium          13      97
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
6 months    ki1119695-PROBIT           BELARUS                        High          1210    7664
6 months    ki1119695-PROBIT           BELARUS                        Low           2557    7664
6 months    ki1119695-PROBIT           BELARUS                        Medium        3897    7664
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High          4465    8251
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low           1717    8251
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium        2069    8251
6 months    ki1135781-COHORTS          GUATEMALA                      High           120     459
6 months    ki1135781-COHORTS          GUATEMALA                      Low            197     459
6 months    ki1135781-COHORTS          GUATEMALA                      Medium         142     459
6 months    ki1135781-COHORTS          INDIA                          High           737    5407
6 months    ki1135781-COHORTS          INDIA                          Low           1774    5407
6 months    ki1135781-COHORTS          INDIA                          Medium        2896    5407
6 months    ki1135781-COHORTS          PHILIPPINES                    High          1015    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    Low            824    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium         867    2706
6 months    ki1148112-LCNI-5           MALAWI                         High           298     813
6 months    ki1148112-LCNI-5           MALAWI                         Low            261     813
6 months    ki1148112-LCNI-5           MALAWI                         Medium         254     813
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High          2973    8298
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low           2742    8298
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium        2583    8298
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High            19     545
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low            510     545
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium          16     545
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
24 months   ki1119695-PROBIT           BELARUS                        High           251    1589
24 months   ki1119695-PROBIT           BELARUS                        Low            479    1589
24 months   ki1119695-PROBIT           BELARUS                        Medium         859    1589
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High           180     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low            114     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium         129     423
24 months   ki1135781-COHORTS          GUATEMALA                      High           134     518
24 months   ki1135781-COHORTS          GUATEMALA                      Low            224     518
24 months   ki1135781-COHORTS          GUATEMALA                      Medium         160     518
24 months   ki1135781-COHORTS          INDIA                          High           601    4166
24 months   ki1135781-COHORTS          INDIA                          Low           1264    4166
24 months   ki1135781-COHORTS          INDIA                          Medium        2301    4166
24 months   ki1135781-COHORTS          PHILIPPINES                    High           911    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    Low            748    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium         790    2449
24 months   ki1148112-LCNI-5           MALAWI                         High           214     556
24 months   ki1148112-LCNI-5           MALAWI                         Low            172     556
24 months   ki1148112-LCNI-5           MALAWI                         Medium         170     556
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High          1453    4276
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low           1505    4276
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium        1318    4276
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High            19     544
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low            506     544
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium          19     544


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
![](/tmp/b861ebe4-9e28-40e5-b82f-56bc7d936f82/8dd6e36c-8b23-4f81-b40e-e910181ad0e4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.0503350   -1.2761578   -0.8245122
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.8763262    0.6079835    1.1446688
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.1050710   -1.3097466   -0.9003953
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.8040811   -0.9995600   -0.6086023
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed           0.2045028    0.0155574    0.3934482
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.1107028   -0.1656324    0.3870380
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.9255732   -1.3325296   -0.5186168
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.8816499   -1.1807972   -0.5825026
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.2146615   -0.5117757    0.0824526
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.7770697   -2.6848139   -0.8693256
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -1.2060403   -1.4949174   -0.9171632
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.5040618   -0.5545444   -0.4535792
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -1.1343044   -1.4119591   -0.8566497
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.8752195   -0.9431020   -0.8073371
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.7123290   -0.7944945   -0.6301634
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.7505336   -0.8000729   -0.7009943
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0612819   -0.3029412    0.1803775
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           1.0228680    0.7509196    1.2948164
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.5197885   -0.7365887   -0.3029884
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.4113263    0.1387731    0.6838795
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           1.1120696    0.8799413    1.3441979
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.4465949    0.1298157    0.7633740
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.2992158   -0.1897112    0.7881427
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.5491433   -0.7981856   -0.3001011
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.4781373   -0.7173433   -0.2389314
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -0.5572717   -0.8615708   -0.2529726
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.6439965   -0.9961092   -0.2918838
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.4929897   -1.4985098    0.5125303
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.3099476   -0.4912683   -0.1286268
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.2137143   -0.3478441   -0.0795845
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.2390138    0.1139464    0.3640813
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0905593   -0.1445979    0.3257164
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed           0.0842092   -0.1696126    0.3380310
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.3005516   -0.6026552    0.0015519
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.5953089    0.5001383    0.6904796
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.3767227    0.3401447    0.4133006
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.1360471   -0.0539716    0.3260657
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.4822818   -0.5645582   -0.4000054
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.2888305   -0.3617767   -0.2158844
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.5836440    0.4640890    0.7031990
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.5529838   -0.5983047   -0.5076628
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.5855165   -1.5332971    0.3622640
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.6757452   -0.9226769   -0.4288136
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.6289445    0.2910468    0.9668421
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.9521292   -1.1680865   -0.7361720
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.2080686   -0.4712045    0.0550673
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.1023237   -0.0879342    0.2925817
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.5124250    0.2984772    0.7263727
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1774416    0.0163059    0.3385773
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.3769578   -0.5255838   -0.2283317
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.6325943   -0.8052084   -0.4599802
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.7318964   -0.9198282   -0.5439646
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.7973993   -0.9434454   -0.6513533
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.4467756   -0.6053151   -0.2882361
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.1003455   -1.3319845   -0.8687065
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.7916384    0.5445866    1.0386901
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -1.2113325   -1.3912453   -1.0314196
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.4686387   -0.6174829   -0.3197945
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.2454671   -0.3349175   -0.1560167
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.5276983   -0.5877332   -0.4676634
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed           0.1826852    0.0387325    0.3266379
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.3183292   -1.3757205   -1.2609378
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.2555901   -1.4168726   -1.0943075


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
Birth       ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.3822951   -0.7231296   -0.0414606
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.7508696   -1.2358912   -0.2658480
Birth       ki1119695-PROBIT           BELARUS                        observed             observed          -1.1877267   -1.5203042   -0.8551491
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.5149449   -0.5408131   -0.4890768
Birth       ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.2579730   -1.3972334   -1.1187126
Birth       ki1135781-COHORTS          INDIA                          observed             observed          -0.9831277   -1.0164986   -0.9497568
Birth       ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.7427251   -0.7890855   -0.6963647
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.7667149   -0.7936309   -0.7397989
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
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.7979562   -0.9920947   -0.6038177
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             observed          -1.1301031   -1.3613760   -0.8988302
6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.4389101   -0.5279432   -0.3498771
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.2083706   -0.2927992   -0.1239419
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed           0.0297622   -0.0491685    0.1086930
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0807224    0.0278917    0.1335530
6 months    ki1112895-Guatemala BSC    GUATEMALA                      observed             observed          -0.0568833   -0.1722874    0.0585208
6 months    ki1113344-GMS-Nepal        NEPAL                          observed             observed          -0.6097530   -0.6959927   -0.5235132
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.5810067    0.5014871    0.6605262
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed           0.3042510    0.2781512    0.3303508
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed           0.0582353   -0.0517741    0.1682447
6 months    ki1135781-COHORTS          INDIA                          observed             observed          -0.7006307   -0.7314213   -0.6698400
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.2938433   -0.3352064   -0.2524802
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed           0.4400246    0.3684214    0.5116278
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.5894252   -0.6168966   -0.5619537
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.3838807   -0.4868761   -0.2808854
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
24 months   ki1119695-PROBIT           BELARUS                        observed             observed           0.8061601    0.6592496    0.9530705
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -1.1809929   -1.2809380   -1.0810478
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -0.5424131   -0.6182429   -0.4665834
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -0.6386606   -0.6699072   -0.6074140
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.6099592   -0.6467541   -0.5731643
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -0.0442266   -0.1266703    0.0382171
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.2918405   -1.3244399   -1.2592411
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.2254228   -1.3138392   -1.1370064


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.0963350   -0.1093341    0.3020041
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.4789635   -0.7149538   -0.2429733
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed           0.0240154   -0.1700936    0.2181245
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.1321769   -0.2986640    0.0343101
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.2807258   -0.4334987   -0.1279529
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.1669819   -0.3992109    0.0652471
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.2980732   -0.0484602    0.6446065
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.1289332   -0.3586844    0.1008180
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.1676336   -0.2741878   -0.0610793
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           1.0262002    0.1897662    1.8626341
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           0.0183136   -0.0682545    0.1048817
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0108831   -0.0540502    0.0322840
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1236686   -0.3456670    0.0983299
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.1079082   -0.1691575   -0.0466588
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0303961   -0.0997262    0.0389340
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0161813   -0.0573116    0.0249490
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0120302   -0.2179524    0.1938920
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0487655   -0.2659593    0.1684283
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.1605640   -0.3413874    0.0202594
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.2876235   -0.5254508   -0.0497961
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0536873   -0.2410995    0.1337250
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.0954786   -0.1838974    0.3748546
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.2311455   -0.2472667    0.7095577
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.0464667   -0.1624912    0.2554246
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.1207924   -0.3214328    0.0798480
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -0.1677953   -0.4690447    0.1334541
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.1539597   -0.4163754    0.1084559
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.6371134   -1.6205279    0.3463012
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.1289626   -0.2783918    0.0204666
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed           0.0053437   -0.1078930    0.1185805
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.2092516   -0.3150514   -0.1034518
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0098369   -0.2412326    0.2215588
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.1410925   -0.3546793    0.0724943
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.3092014   -0.5929740   -0.0254287
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0143023   -0.0539314    0.0253269
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0724717   -0.0995873   -0.0453560
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0778118   -0.2461239    0.0905004
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.2183488   -0.2971643   -0.1395334
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0050128   -0.0643642    0.0543387
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.1436194   -0.2391720   -0.0480669
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0364414   -0.0716664   -0.0012163
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed           0.2016358   -0.7284311    1.1317026
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0885238   -0.2828167    0.1057692
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.1830218   -0.4530922    0.0870485
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed           0.0075061   -0.1603845    0.1753967
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.1519079   -0.3813851    0.0775693
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.0176263   -0.1429744    0.1782269
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0857233   -0.2831229    0.1116764
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0915559   -0.2000337    0.0169219
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.1801927   -0.2975454   -0.0628401
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.1132207   -0.2512358    0.0247944
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.1796827   -0.3395234   -0.0198419
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0905418   -0.2048810    0.0237973
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.1635746   -0.2878933   -0.0392559
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0320990   -0.2492316    0.1850336
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.0145217   -0.1421463    0.1711897
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.0303396   -0.1176514    0.1783305
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0737744   -0.2022288    0.0546800
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.3931935   -0.4792361   -0.3071509
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0822609   -0.1298555   -0.0346662
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.2269118   -0.3382179   -0.1156058
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed           0.0264887   -0.0240279    0.0770052
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed           0.0301673   -0.1261584    0.1864929
