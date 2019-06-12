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

**Intervention Variable:** enwast

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* vagbrth
* single
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_vagbrth
* delta_single
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        enwast    n_cell       n
----------  -------------------------  -----------------------------  -------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0            201     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     1             40     241
Birth       ki0047075b-MAL-ED          BRAZIL                         0            177     183
Birth       ki0047075b-MAL-ED          BRAZIL                         1              6     183
Birth       ki0047075b-MAL-ED          INDIA                          0            170     203
Birth       ki0047075b-MAL-ED          INDIA                          1             33     203
Birth       ki0047075b-MAL-ED          NEPAL                          0            148     169
Birth       ki0047075b-MAL-ED          NEPAL                          1             21     169
Birth       ki0047075b-MAL-ED          PERU                           0            273     279
Birth       ki0047075b-MAL-ED          PERU                           1              6     279
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0            240     260
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1             20     260
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0            116     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              2     118
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0             74      85
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1             11      85
Birth       ki1000108-IRC              INDIA                          0            256     369
Birth       ki1000108-IRC              INDIA                          1            113     369
Birth       ki1000109-EE               PAKISTAN                       0              1       2
Birth       ki1000109-EE               PAKISTAN                       1              1       2
Birth       ki1000109-ResPak           PAKISTAN                       0              6       6
Birth       ki1000109-ResPak           PAKISTAN                       1              0       6
Birth       ki1000304b-SAS-CompFeed    INDIA                          0            155     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          1             11     166
Birth       ki1017093-NIH-Birth        BANGLADESH                     0             21      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     1              7      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0             20      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1              3      23
Birth       ki1101329-Keneba           GAMBIA                         0           1504    1537
Birth       ki1101329-Keneba           GAMBIA                         1             33    1537
Birth       ki1114097-CMIN             BANGLADESH                     0              5       8
Birth       ki1114097-CMIN             BANGLADESH                     1              3       8
Birth       ki1114097-CMIN             BRAZIL                         0            103     111
Birth       ki1114097-CMIN             BRAZIL                         1              8     111
Birth       ki1114097-CMIN             PERU                           0             10      10
Birth       ki1114097-CMIN             PERU                           1              0      10
Birth       ki1114097-CONTENT          PERU                           0              2       2
Birth       ki1114097-CONTENT          PERU                           1              0       2
Birth       ki1119695-PROBIT           BELARUS                        0          10936   13877
Birth       ki1119695-PROBIT           BELARUS                        1           2941   13877
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0          10856   13092
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1           2236   13092
Birth       ki1135781-COHORTS          GUATEMALA                      0            564     762
Birth       ki1135781-COHORTS          GUATEMALA                      1            198     762
Birth       ki1135781-COHORTS          INDIA                          0           5097    6231
Birth       ki1135781-COHORTS          INDIA                          1           1134    6231
Birth       ki1135781-COHORTS          PHILIPPINES                    0           2448    2910
Birth       ki1135781-COHORTS          PHILIPPINES                    1            462    2910
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0          14203   15745
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1           1542   15745
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0            647     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1             36     683
6 months    ki0047075b-MAL-ED          BANGLADESH                     0            188     229
6 months    ki0047075b-MAL-ED          BANGLADESH                     1             41     229
6 months    ki0047075b-MAL-ED          BRAZIL                         0            195     202
6 months    ki0047075b-MAL-ED          BRAZIL                         1              7     202
6 months    ki0047075b-MAL-ED          INDIA                          0            193     233
6 months    ki0047075b-MAL-ED          INDIA                          1             40     233
6 months    ki0047075b-MAL-ED          NEPAL                          0            205     232
6 months    ki0047075b-MAL-ED          NEPAL                          1             27     232
6 months    ki0047075b-MAL-ED          PERU                           0            261     266
6 months    ki0047075b-MAL-ED          PERU                           1              5     266
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0            236     253
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1             17     253
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0            235     238
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              3     238
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0            266     363
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1             97     363
6 months    ki1000108-IRC              INDIA                          0            256     387
6 months    ki1000108-IRC              INDIA                          1            131     387
6 months    ki1000109-EE               PAKISTAN                       0            294     326
6 months    ki1000109-EE               PAKISTAN                       1             32     326
6 months    ki1000109-ResPak           PAKISTAN                       0            183     226
6 months    ki1000109-ResPak           PAKISTAN                       1             43     226
6 months    ki1000304b-SAS-CompFeed    INDIA                          0           1074    1213
6 months    ki1000304b-SAS-CompFeed    INDIA                          1            139    1213
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0            311     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1             69     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     0            368     514
6 months    ki1017093-NIH-Birth        BANGLADESH                     1            146     514
6 months    ki1017093b-PROVIDE         BANGLADESH                     0            457     576
6 months    ki1017093b-PROVIDE         BANGLADESH                     1            119     576
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0            516     694
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1            178     694
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0           1901    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            119    2020
6 months    ki1101329-Keneba           GAMBIA                         0           2000    2078
6 months    ki1101329-Keneba           GAMBIA                         1             78    2078
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0            293     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1              6     299
6 months    ki1113344-GMS-Nepal        NEPAL                          0            470     561
6 months    ki1113344-GMS-Nepal        NEPAL                          1             91     561
6 months    ki1114097-CMIN             BANGLADESH                     0            218     232
6 months    ki1114097-CMIN             BANGLADESH                     1             14     232
6 months    ki1114097-CMIN             BRAZIL                         0             98     105
6 months    ki1114097-CMIN             BRAZIL                         1              7     105
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0            822     844
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1             22     844
6 months    ki1114097-CMIN             PERU                           0            605     637
6 months    ki1114097-CMIN             PERU                           1             32     637
6 months    ki1114097-CONTENT          PERU                           0            214     215
6 months    ki1114097-CONTENT          PERU                           1              1     215
6 months    ki1119695-PROBIT           BELARUS                        0          12721   15754
6 months    ki1119695-PROBIT           BELARUS                        1           3033   15754
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0           6622    7845
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1           1223    7845
6 months    ki1135781-COHORTS          GUATEMALA                      0            725     901
6 months    ki1135781-COHORTS          GUATEMALA                      1            176     901
6 months    ki1135781-COHORTS          INDIA                          0           5364    6508
6 months    ki1135781-COHORTS          INDIA                          1           1144    6508
6 months    ki1135781-COHORTS          PHILIPPINES                    0           2191    2593
6 months    ki1135781-COHORTS          PHILIPPINES                    1            402    2593
6 months    ki1148112-LCNI-5           MALAWI                         0            825     839
6 months    ki1148112-LCNI-5           MALAWI                         1             14     839
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0          12711   14236
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1           1525   14236
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0           4010    4410
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1            400    4410
24 months   ki0047075b-MAL-ED          BANGLADESH                     0            164     201
24 months   ki0047075b-MAL-ED          BANGLADESH                     1             37     201
24 months   ki0047075b-MAL-ED          BRAZIL                         0            157     163
24 months   ki0047075b-MAL-ED          BRAZIL                         1              6     163
24 months   ki0047075b-MAL-ED          INDIA                          0            184     224
24 months   ki0047075b-MAL-ED          INDIA                          1             40     224
24 months   ki0047075b-MAL-ED          NEPAL                          0            199     225
24 months   ki0047075b-MAL-ED          NEPAL                          1             26     225
24 months   ki0047075b-MAL-ED          PERU                           0            193     197
24 months   ki0047075b-MAL-ED          PERU                           1              4     197
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0            221     237
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1             16     237
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0            202     205
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              3     205
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0            267     365
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1             98     365
24 months   ki1000108-IRC              INDIA                          0            256     388
24 months   ki1000108-IRC              INDIA                          1            132     388
24 months   ki1017093-NIH-Birth        BANGLADESH                     0            293     409
24 months   ki1017093-NIH-Birth        BANGLADESH                     1            116     409
24 months   ki1017093b-PROVIDE         BANGLADESH                     0            451     569
24 months   ki1017093b-PROVIDE         BANGLADESH                     1            118     569
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0            363     500
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            137     500
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              5       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              1       6
24 months   ki1101329-Keneba           GAMBIA                         0           1636    1716
24 months   ki1101329-Keneba           GAMBIA                         1             80    1716
24 months   ki1113344-GMS-Nepal        NEPAL                          0            421     497
24 months   ki1113344-GMS-Nepal        NEPAL                          1             76     497
24 months   ki1114097-CMIN             BANGLADESH                     0            217     232
24 months   ki1114097-CMIN             BANGLADESH                     1             15     232
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0            527     548
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1             21     548
24 months   ki1114097-CMIN             PERU                           0            414     429
24 months   ki1114097-CMIN             PERU                           1             15     429
24 months   ki1114097-CONTENT          PERU                           0            163     164
24 months   ki1114097-CONTENT          PERU                           1              1     164
24 months   ki1119695-PROBIT           BELARUS                        0           3121    4032
24 months   ki1119695-PROBIT           BELARUS                        1            911    4032
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0            347     399
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1             52     399
24 months   ki1135781-COHORTS          GUATEMALA                      0            876    1029
24 months   ki1135781-COHORTS          GUATEMALA                      1            153    1029
24 months   ki1135781-COHORTS          INDIA                          0           4252    5071
24 months   ki1135781-COHORTS          INDIA                          1            819    5071
24 months   ki1135781-COHORTS          PHILIPPINES                    0           1989    2347
24 months   ki1135781-COHORTS          PHILIPPINES                    1            358    2347
24 months   ki1148112-LCNI-5           MALAWI                         0            569     579
24 months   ki1148112-LCNI-5           MALAWI                         1             10     579
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0           6413    7237
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1            824    7237
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0           3943    4315
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1            372    4315


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
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
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
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
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
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
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
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU

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
![](/tmp/612f4a5b-4b4a-434b-ab98-6b052ded9e86/2be34af5-85aa-4fa0-9b55-31663b20b1cf/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.7093951   -1.0388977   -0.3798926
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.3196692   -1.0102784    0.3709400
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.9222233   -1.1672515   -0.6771951
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.7171486   -1.0731426   -0.3611546
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -1.1258118   -1.5356048   -0.7160189
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.2444261   -1.0002750    0.5114228
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.8254811   -1.3065268   -0.3444355
Birth       ki1000108-IRC              INDIA                          optimal              observed           0.9650139    0.6762233    1.2538045
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.2120271   -1.3700513   -1.0540030
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.1221011   -0.8684145    0.6242123
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed           0.4995418   -0.3086561    1.3077396
Birth       ki1114097-CMIN             BRAZIL                         optimal              observed           0.1477022   -0.0505005    0.3459049
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           2.1988969    2.0197231    2.3780707
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.2392935    0.1828034    0.2957835
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.7098417    0.5624484    0.8572350
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.3103619   -0.3757515   -0.2449724
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed           0.2424960    0.1389198    0.3460722
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.0711896   -1.1225666   -1.0198126
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.1218493   -1.5284392   -0.7152593
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.0899610   -1.2500310   -0.9298909
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0327302   -0.4459122    0.3804519
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.3091599   -1.5898839   -1.0284359
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.4949200   -0.6118658   -0.3779742
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -1.0258583   -1.6462588   -0.4054577
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -1.1969900   -1.6667727   -0.7272073
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -1.3757378   -1.5386288   -1.2128467
6 months    ki1000108-IRC              INDIA                          optimal              observed          -1.1380195   -1.2942828   -0.9817561
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -2.4335781   -2.6483694   -2.2187868
6 months    ki1000109-ResPak           PAKISTAN                       optimal              observed          -1.4345159   -1.8160283   -1.0530036
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.2490805   -1.3410696   -1.1570914
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -1.8268286   -1.9508346   -1.7028226
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.3368610   -1.4790626   -1.1946594
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.0442801   -1.1581610   -0.9303992
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.1129200   -1.2106716   -1.0151685
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.4616549   -0.6161805   -0.3071293
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.8757263   -0.9226971   -0.8287554
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -1.5319252   -1.6423405   -1.4215099
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.1834219   -1.3418828   -1.0249610
6 months    ki1114097-CMIN             BANGLADESH                     optimal              observed          -1.6971555   -1.8341914   -1.5601195
6 months    ki1114097-CMIN             BRAZIL                         optimal              observed          -0.1380565   -1.2962962    1.0201831
6 months    ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed          -0.6155804   -0.8810360   -0.3501248
6 months    ki1114097-CMIN             PERU                           optimal              observed          -0.4689826   -0.7544981   -0.1834671
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.1441369    0.0166098    0.2716640
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.7725812   -0.8006520   -0.7445105
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -1.6332661   -1.7825417   -1.4839906
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.9459906   -0.9917815   -0.9001997
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -1.0660784   -1.1683432   -0.9638137
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.4755484   -1.5760379   -1.3750588
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.1178675   -1.1716996   -1.0640354
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.2405126   -1.2787403   -1.2022849
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.8451235   -2.1363614   -1.5538856
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.0913497   -0.0817152    0.2644146
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.8217947   -2.1588618   -1.4847276
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -1.5559878   -1.8128916   -1.2990840
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -1.3841224   -2.1142982   -0.6539466
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -2.6880222   -2.8519165   -2.5241278
24 months   ki1000108-IRC              INDIA                          optimal              observed          -1.7919521   -1.9186454   -1.6652588
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -2.0564419   -2.2599642   -1.8529195
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.6292529   -1.7396863   -1.5188196
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.3402862   -1.4642466   -1.2163259
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -1.5322863   -1.5830914   -1.4814813
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.6901546   -1.9145162   -1.4657930
24 months   ki1114097-CMIN             BANGLADESH                     optimal              observed          -2.7419937   -3.2023761   -2.2816114
24 months   ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed          -1.6028805   -1.8224694   -1.3832917
24 months   ki1114097-CMIN             PERU                           optimal              observed          -1.8283055   -2.2964361   -1.3601749
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0719400   -0.4124825    0.2686026
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -2.2586138   -2.3900964   -2.1271312
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -2.6829317   -2.8410878   -2.5247755
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -1.9243954   -1.9959144   -1.8528764
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -2.2657917   -2.3871889   -2.1443945
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.8642360   -1.9449126   -1.7835594
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.8467468   -1.9031180   -1.7903756
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.7335772   -1.7796959   -1.6874585


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.9434025   -1.0553995   -0.8314055
Birth       ki0047075b-MAL-ED          BRAZIL                         observed             observed          -0.6545355   -0.7954300   -0.5136410
Birth       ki0047075b-MAL-ED          INDIA                          observed             observed          -0.9670443   -1.0993703   -0.8347184
Birth       ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.6373964   -0.7808443   -0.4939486
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.8569176   -0.9598499   -0.7539853
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.6936923   -0.8141845   -0.5732001
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.8205882   -0.9953903   -0.6457861
Birth       ki1000108-IRC              INDIA                          observed             observed          -0.1140921   -0.2561277    0.0279434
Birth       ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -1.1589157   -1.2666273   -1.0512040
Birth       ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.5292857   -0.8821252   -0.1764462
Birth       ki1101329-Keneba           GAMBIA                         observed             observed           0.0442941   -0.0185771    0.1071652
Birth       ki1114097-CMIN             BRAZIL                         observed             observed           0.1770270    0.0025580    0.3514960
Birth       ki1119695-PROBIT           BELARUS                        observed             observed           1.3278057    1.1691020    1.4865095
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.3412145   -0.3591726   -0.3232564
Birth       ki1135781-COHORTS          GUATEMALA                      observed             observed           0.2220341    0.1435838    0.3004845
Birth       ki1135781-COHORTS          INDIA                          observed             observed          -0.5071369   -0.5319444   -0.4823294
Birth       ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.1490962   -0.1843045   -0.1138879
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.1673153   -1.1822647   -1.1523660
Birth       kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.1775403   -1.2476425   -1.1074380
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.1553785   -1.2731711   -1.0375858
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0784818   -0.0680282    0.2249919
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -1.2047496   -1.3231151   -1.0863842
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.5342241   -0.6451165   -0.4233318
6 months    ki0047075b-MAL-ED          PERU                           observed             observed          -1.3033145   -1.4123055   -1.1943235
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.0492984   -1.1745095   -0.9240873
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -1.4223508   -1.5654032   -1.2792984
6 months    ki1000108-IRC              INDIA                          observed             observed          -1.1884152   -1.3196342   -1.0571962
6 months    ki1000109-EE               PAKISTAN                       observed             observed          -2.0046626   -2.1248969   -1.8844282
6 months    ki1000109-ResPak           PAKISTAN                       observed             observed          -1.4026180   -1.6123162   -1.1929198
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -1.2781121   -1.3694457   -1.1867786
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             observed          -1.8986842   -2.0118892   -1.7854792
6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -1.3447001   -1.4316348   -1.2577653
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.0675376   -1.1432331   -0.9918422
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.1560014   -1.2261266   -1.0858763
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.5424220   -0.5912180   -0.4936261
6 months    ki1101329-Keneba           GAMBIA                         observed             observed          -0.8963775   -0.9433248   -0.8494302
6 months    ki1112895-Guatemala BSC    GUATEMALA                      observed             observed          -1.5619008   -1.6727702   -1.4510313
6 months    ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.3262953   -1.4042959   -1.2482948
6 months    ki1114097-CMIN             BANGLADESH                     observed             observed          -1.7090230   -1.8439050   -1.5741410
6 months    ki1114097-CMIN             BRAZIL                         observed             observed          -0.6480000   -0.8487905   -0.4472095
6 months    ki1114097-CMIN             GUINEA-BISSAU                  observed             observed          -0.5979325   -0.6732517   -0.5226132
6 months    ki1114097-CMIN             PERU                           observed             observed          -0.5132548   -0.5926717   -0.4338380
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.1076416    0.0130507    0.2022324
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.8394653   -0.8656101   -0.8133205
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.7950277   -1.8646284   -1.7254271
6 months    ki1135781-COHORTS          INDIA                          observed             observed          -0.9241887   -0.9514678   -0.8969095
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -1.0928731   -1.1347142   -1.0510321
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed          -1.6601907   -1.7297701   -1.5906113
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.1247577   -1.1475519   -1.1019635
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.2460635   -1.2827993   -1.2093277
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.8962687   -2.0241450   -1.7683923
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0696012   -0.0999839    0.2391864
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -1.8363616   -1.9636359   -1.7090873
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -1.2619556   -1.3827787   -1.1411324
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.6216878   -1.7575225   -1.4858530
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -2.5564429   -2.6570768   -2.4558090
24 months   ki1000108-IRC              INDIA                          observed             observed          -1.7623926   -1.8591106   -1.6656746
24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -2.1194886   -2.2222242   -2.0167530
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.5715641   -1.6543870   -1.4887413
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.4004800   -1.4835266   -1.3174334
24 months   ki1101329-Keneba           GAMBIA                         observed             observed          -1.5586932   -1.6085568   -1.5088295
24 months   ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.8761201   -1.9601745   -1.7920656
24 months   ki1114097-CMIN             BANGLADESH                     observed             observed          -2.4877155   -2.6168325   -2.3585986
24 months   ki1114097-CMIN             GUINEA-BISSAU                  observed             observed          -1.5673266   -1.6667006   -1.4679527
24 months   ki1114097-CMIN             PERU                           observed             observed          -1.5807226   -1.6772768   -1.4841684
24 months   ki1119695-PROBIT           BELARUS                        observed             observed          -0.1311901   -0.4268581    0.1644779
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -2.2965664   -2.4199830   -2.1731498
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -2.8596404   -2.9251693   -2.7941116
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -1.8596470   -1.8926187   -1.8266754
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -2.3603707   -2.4055731   -2.3151683
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -1.8754404   -1.9564117   -1.7944692
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.8752232   -1.9042428   -1.8462036
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.6962457   -1.7323673   -1.6601241


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.2340074   -0.5258721    0.0578574
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.3348663   -1.0225577    0.3528251
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.0448210   -0.2492549    0.1596129
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.0797522   -0.2311711    0.3906755
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed           0.2688943   -0.1246346    0.6624232
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.4492662   -1.1681852    0.2696527
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.0048929   -0.3980351    0.4078209
Birth       ki1000108-IRC              INDIA                          optimal              observed          -1.0791060   -1.3091309   -0.8490812
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed           0.0531115   -0.0269563    0.1331793
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.4071846   -1.0654820    0.2511128
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -0.4552477   -1.2481434    0.3376480
Birth       ki1114097-CMIN             BRAZIL                         optimal              observed           0.0293248   -0.2178570    0.2765066
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -0.8710912   -1.0061429   -0.7360394
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.5805079   -0.6300902   -0.5309256
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.4878076   -0.6182128   -0.3574023
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.1967750   -0.2546285   -0.1389215
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.3915922   -0.4841938   -0.2989907
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0961258   -0.1441743   -0.0480772
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0556910   -0.4442611    0.3328791
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0654175   -0.1903258    0.0594908
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.1112120   -0.3114655    0.5338896
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed           0.1044103   -0.1249955    0.3338160
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0393041   -0.0829574    0.0043492
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.2774563   -0.8936877    0.3387752
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.1476916   -0.3036658    0.5990490
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0466130   -0.1375976    0.0443716
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.0503957   -0.1479938    0.0472024
6 months    ki1000109-EE               PAKISTAN                       optimal              observed           0.4289155    0.2224684    0.6353626
6 months    ki1000109-ResPak           PAKISTAN                       optimal              observed           0.0318979   -0.2524830    0.3162789
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.0290316   -0.0621261    0.0040628
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.0718556   -0.1390949   -0.0046163
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.0078391   -0.1152248    0.0995466
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0232575   -0.1022535    0.0557385
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0430814   -0.1136805    0.0275177
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0807671   -0.2284866    0.0669523
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0206512   -0.0332178   -0.0080847
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.0299756   -0.0567567   -0.0031945
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.1428734   -0.2837382   -0.0020086
6 months    ki1114097-CMIN             BANGLADESH                     optimal              observed          -0.0118675   -0.0535040    0.0297690
6 months    ki1114097-CMIN             BRAZIL                         optimal              observed          -0.5099435   -1.6290257    0.6091388
6 months    ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed           0.0176480   -0.2311834    0.2664793
6 months    ki1114097-CMIN             PERU                           optimal              observed          -0.0442723   -0.3173988    0.2288543
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0364954   -0.1375661    0.0645754
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0668840   -0.0788793   -0.0548888
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1617616   -0.2976693   -0.0258539
6 months    ki1135781-COHORTS          INDIA                          optimal              observed           0.0218019   -0.0140318    0.0576357
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0267947   -0.1178312    0.0642418
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.1846423   -0.2751407   -0.0941440
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0068902   -0.0549016    0.0411213
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0055509   -0.0168084    0.0057067
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0511452   -0.3175107    0.2152204
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0217484   -0.0540211    0.0105243
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.0145669   -0.3105563    0.2814226
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.2940323    0.0644332    0.5236313
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.2375654   -0.9351813    0.4600506
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.1315792   -0.0063129    0.2694714
24 months   ki1000108-IRC              INDIA                          optimal              observed           0.0295595   -0.0503768    0.1094958
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.0630467   -0.2354060    0.1093125
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed           0.0576888   -0.0071193    0.1224969
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0601938   -0.1524471    0.0320595
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0264069   -0.0410270   -0.0117867
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.1859655   -0.3886773    0.0167464
24 months   ki1114097-CMIN             BANGLADESH                     optimal              observed           0.2542782   -0.1800174    0.6885738
24 months   ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed           0.0355539   -0.1550829    0.2261907
24 months   ki1114097-CMIN             PERU                           optimal              observed           0.2475829   -0.2108412    0.7060071
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0592501   -0.1547775    0.0362773
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0379526   -0.0875438    0.0116386
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1767088   -0.3211484   -0.0322691
24 months   ki1135781-COHORTS          INDIA                          optimal              observed           0.0647484    0.0029923    0.1265045
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0945790   -0.2058529    0.0166950
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.0112044   -0.0300408    0.0076320
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0284763   -0.0787993    0.0218466
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed           0.0373315    0.0065679    0.0680952
