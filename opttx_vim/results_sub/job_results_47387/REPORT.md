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

**Intervention Variable:** birthwt

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

agecat      studyid                    country                        birthwt                       n_cell       n
----------  -------------------------  -----------------------------  ---------------------------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight       202     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                  39     241
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight       179     183
Birth       ki0047075b-MAL-ED          BRAZIL                         Low birth weight                   4     183
Birth       ki0047075b-MAL-ED          INDIA                          Normal or high birthweight       171     203
Birth       ki0047075b-MAL-ED          INDIA                          Low birth weight                  32     203
Birth       ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight       155     168
Birth       ki0047075b-MAL-ED          NEPAL                          Low birth weight                  13     168
Birth       ki0047075b-MAL-ED          PERU                           Normal or high birthweight       265     279
Birth       ki0047075b-MAL-ED          PERU                           Low birth weight                  14     279
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight       244     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                  14     258
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       113     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                   5     118
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight        79      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                   9      88
Birth       ki1000108-IRC              INDIA                          Normal or high birthweight       296     343
Birth       ki1000108-IRC              INDIA                          Low birth weight                  47     343
Birth       ki1000109-EE               PAKISTAN                       Normal or high birthweight         1       1
Birth       ki1000109-EE               PAKISTAN                       Low birth weight                   0       1
Birth       ki1000109-ResPak           PAKISTAN                       Normal or high birthweight         6       6
Birth       ki1000109-ResPak           PAKISTAN                       Low birth weight                   0       6
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight       143     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                  23     166
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight        21      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                   7      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight        18      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                   5      23
Birth       ki1101329-Keneba           GAMBIA                         Normal or high birthweight      1297    1423
Birth       ki1101329-Keneba           GAMBIA                         Low birth weight                 126    1423
Birth       ki1114097-CMIN             BANGLADESH                     Normal or high birthweight         5       8
Birth       ki1114097-CMIN             BANGLADESH                     Low birth weight                   3       8
Birth       ki1114097-CMIN             BRAZIL                         Normal or high birthweight       106     111
Birth       ki1114097-CMIN             BRAZIL                         Low birth weight                   5     111
Birth       ki1114097-CMIN             PERU                           Normal or high birthweight        10      10
Birth       ki1114097-CMIN             PERU                           Low birth weight                   0      10
Birth       ki1114097-CONTENT          PERU                           Normal or high birthweight         2       2
Birth       ki1114097-CONTENT          PERU                           Low birth weight                   0       2
Birth       ki1119695-PROBIT           BELARUS                        Normal or high birthweight     13824   13824
Birth       ki1119695-PROBIT           BELARUS                        Low birth weight                   0   13824
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight     11614   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                1302   12916
Birth       ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight       702     756
Birth       ki1135781-COHORTS          GUATEMALA                      Low birth weight                  54     756
Birth       ki1135781-COHORTS          INDIA                          Normal or high birthweight      5178    6193
Birth       ki1135781-COHORTS          INDIA                          Low birth weight                1015    6193
Birth       ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight      2688    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    Low birth weight                 211    2899
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight     11038   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                4671   15709
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight       534     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                 149     683
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight       187     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                  48     235
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight       199     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Low birth weight                  10     209
6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight       193     229
6 months    ki0047075b-MAL-ED          INDIA                          Low birth weight                  36     229
6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight       208     229
6 months    ki0047075b-MAL-ED          NEPAL                          Low birth weight                  21     229
6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight       253     270
6 months    ki0047075b-MAL-ED          PERU                           Low birth weight                  17     270
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight       238     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                  16     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       120     126
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                   6     126
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight       325     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                  43     368
6 months    ki1000108-IRC              INDIA                          Normal or high birthweight       338     406
6 months    ki1000108-IRC              INDIA                          Low birth weight                  68     406
6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight       244     376
6 months    ki1000109-EE               PAKISTAN                       Low birth weight                 132     376
6 months    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight        15      17
6 months    ki1000109-ResPak           PAKISTAN                       Low birth weight                   2      17
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight      1001    1324
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                 323    1324
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight       118     178
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                  60     178
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight       443     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                 139     582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight       545     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                 170     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight      1943    2010
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                  67    2010
6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight      1571    1725
6 months    ki1101329-Keneba           GAMBIA                         Low birth weight                 154    1725
6 months    ki1114097-CMIN             BANGLADESH                     Normal or high birthweight         0       1
6 months    ki1114097-CMIN             BANGLADESH                     Low birth weight                   1       1
6 months    ki1114097-CMIN             BRAZIL                         Normal or high birthweight       100     104
6 months    ki1114097-CMIN             BRAZIL                         Low birth weight                   4     104
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Normal or high birthweight         1       2
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Low birth weight                   1       2
6 months    ki1114097-CMIN             PERU                           Normal or high birthweight        13      14
6 months    ki1114097-CMIN             PERU                           Low birth weight                   1      14
6 months    ki1114097-CONTENT          PERU                           Normal or high birthweight         2       2
6 months    ki1114097-CONTENT          PERU                           Low birth weight                   0       2
6 months    ki1119695-PROBIT           BELARUS                        Normal or high birthweight     15757   15757
6 months    ki1119695-PROBIT           BELARUS                        Low birth weight                   0   15757
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight      7202    8234
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                1032    8234
6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight       704     774
6 months    ki1135781-COHORTS          GUATEMALA                      Low birth weight                  70     774
6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight      5000    6252
6 months    ki1135781-COHORTS          INDIA                          Low birth weight                1252    6252
6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight      2416    2664
6 months    ki1135781-COHORTS          PHILIPPINES                    Low birth weight                 248    2664
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight     10636   16712
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                6076   16712
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight      3005    4045
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                1040    4045
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight       165     208
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                  43     208
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight       161     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Low birth weight                   8     169
24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight       185     220
24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight                  35     220
24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight       201     221
24 months   ki0047075b-MAL-ED          NEPAL                          Low birth weight                  20     221
24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight       186     198
24 months   ki0047075b-MAL-ED          PERU                           Low birth weight                  12     198
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight       224     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                  14     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       103     108
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                   5     108
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight       329     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                  43     372
24 months   ki1000108-IRC              INDIA                          Normal or high birthweight       339     407
24 months   ki1000108-IRC              INDIA                          Low birth weight                  68     407
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight        85     136
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                  51     136
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight       439     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                 139     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight       388     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                 126     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight         6       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                   0       6
24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight      1303    1436
24 months   ki1101329-Keneba           GAMBIA                         Low birth weight                 133    1436
24 months   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight         0       1
24 months   ki1114097-CMIN             BANGLADESH                     Low birth weight                   1       1
24 months   ki1114097-CMIN             PERU                           Normal or high birthweight         3       4
24 months   ki1114097-CMIN             PERU                           Low birth weight                   1       4
24 months   ki1114097-CONTENT          PERU                           Normal or high birthweight         2       2
24 months   ki1114097-CONTENT          PERU                           Low birth weight                   0       2
24 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight      3971    3971
24 months   ki1119695-PROBIT           BELARUS                        Low birth weight                   0    3971
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight       330     421
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                  91     421
24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight       595     657
24 months   ki1135781-COHORTS          GUATEMALA                      Low birth weight                  62     657
24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight      3911    4821
24 months   ki1135781-COHORTS          INDIA                          Low birth weight                 910    4821
24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight      2195    2410
24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight                 215    2410
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight      5340    8555
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                3215    8555
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight      2944    3997
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                1053    3997


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
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
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
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
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

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS

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
![](/tmp/8c6ac570-6663-4be8-946f-548ca001c049/4004038d-57ab-4bce-b230-998ae34f388f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.8023971   -0.9467470   -0.6580472
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.9250420   -1.0706055   -0.7794786
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.8285004   -0.9680582   -0.6889426
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0179405   -0.1286091    0.0927282
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.0284976   -0.1155268    0.1725219
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.8409150    0.6471283    1.0347017
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.4728608   -0.8358759   -0.1098456
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.7639365   -0.9570163   -0.5708568
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed           0.0178830   -0.2106023    0.2463683
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.2696252   -1.6708642   -0.8683861
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.2966442   -0.6534712    0.0601829
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed           1.7519870    1.6672171    1.8367570
Birth       ki1114097-CMIN             BRAZIL                         optimal              observed          -0.0415603   -0.2439749    0.1608543
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.2973328   -0.3222422   -0.2724235
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.9338492   -1.0378752   -0.8298232
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.7520000   -0.7815778   -0.7224221
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.6153842   -0.6608670   -0.5699014
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.3915739   -0.4114222   -0.3717255
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.1131921   -0.1956601   -0.0307240
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0061103   -0.1644355    0.1522150
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           1.0199088    0.8504262    1.1893913
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.6497259   -0.7887977   -0.5106540
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.1794271    0.0425158    0.3163383
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           1.0837131    0.9583806    1.2090456
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.3496695   -0.2670039    0.9663430
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.5739844    0.3719451    0.7760236
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.4366567   -0.5978520   -0.2754614
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.4723352   -0.8046502   -0.1400201
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -0.8005635   -0.9678958   -0.6332312
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.5671349   -0.7269102   -0.4073595
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.3570006   -0.5289296   -0.1850715
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0963743   -0.1912455   -0.0015030
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.1205464    0.0322936    0.2087993
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1013956    0.0475909    0.1552003
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.1693548   -0.2277860   -0.1109236
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.3335611    0.3056883    0.3614340
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.2388224    0.1565881    0.3210568
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.5689373   -0.6000231   -0.5378516
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.2603597   -0.3040438   -0.2166755
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.4633423   -0.4869452   -0.4397394
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.2935817   -0.3438426   -0.2433209
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.7124851   -0.8535108   -0.5714595
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0526391   -0.4193789    0.3141006
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.8909758   -1.0098815   -0.7720700
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.4169273   -0.5740233   -0.2598312
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.1473640    0.0312646    0.2634634
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.4467857    0.3239480    0.5696234
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1040908   -0.5562143    0.7643960
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.4625617   -0.5685019   -0.3566215
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.6378836   -0.7355158   -0.5402513
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.7099619   -0.9176291   -0.5022947
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.7535757   -0.8489197   -0.6582317
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.4759599   -0.5852499   -0.3666699
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.7708805   -0.8245666   -0.7171944
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -1.2899410   -1.4637969   -1.1160852
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1558413   -0.2243420   -0.0873405
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.4982714   -0.5305754   -0.4659674
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.5635645   -0.6019137   -0.5252153
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.1484361   -1.1768495   -1.1200228
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.1441578   -1.1835806   -1.1047351


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.9630705   -1.0989132   -0.8272278
Birth       ki0047075b-MAL-ED          INDIA                          observed             observed          -1.0691133   -1.2078629   -0.9303637
Birth       ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.9044643   -1.0439568   -0.7649718
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.0735842   -0.1836203    0.0364518
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.0562791   -0.2000837    0.0875255
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.7932203    0.5962220    0.9902187
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.6275000   -0.9746292   -0.2803708
Birth       ki1000108-IRC              INDIA                          observed             observed          -1.0105831   -1.1973019   -0.8238643
Birth       ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.2697590   -0.5399211    0.0004030
Birth       ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -1.4239286   -1.7688028   -1.0790544
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.7508696   -1.2358912   -0.2658480
Birth       ki1101329-Keneba           GAMBIA                         observed             observed           1.7036191    1.6208471    1.7863911
Birth       ki1114097-CMIN             BRAZIL                         observed             observed          -0.1332432   -0.3441055    0.0776190
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.5151425   -0.5409938   -0.4892911
Birth       ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.0621429   -1.1631387   -0.9611471
Birth       ki1135781-COHORTS          INDIA                          observed             observed          -0.9847457   -1.0145305   -0.9549609
Birth       ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.7427251   -0.7890855   -0.6963647
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.7240996   -0.7439385   -0.7042607
Birth       kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.3683163   -0.4490504   -0.2875821
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.1338121   -0.2652080   -0.0024161
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.9717225    0.8073791    1.1360658
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -0.6932460   -0.8209323   -0.5655596
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed           0.1508588    0.0202182    0.2814994
6 months    ki0047075b-MAL-ED          PERU                           observed             observed           1.0582407    0.9356446    1.1808369
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.5420735    0.3899459    0.6942011
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5564418    0.3598819    0.7530017
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.5026766   -0.6536848   -0.3516685
6 months    ki1000108-IRC              INDIA                          observed             observed          -0.5969910   -0.7330855   -0.4608964
6 months    ki1000109-EE               PAKISTAN                       observed             observed          -0.7212766   -0.8346857   -0.6078675
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.6671261   -0.8034351   -0.5308171
6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.4834785   -0.6351316   -0.3318253
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.2083706   -0.2927992   -0.1239419
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed           0.0297622   -0.0491685    0.1086930
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0834996    0.0305909    0.1364083
6 months    ki1101329-Keneba           GAMBIA                         observed             observed          -0.1860451   -0.2417939   -0.1302962
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed           0.3026397    0.2765488    0.3287305
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed           0.2009690    0.1225187    0.2794193
6 months    ki1135781-COHORTS          INDIA                          observed             observed          -0.6934213   -0.7223635   -0.6644791
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.2923874   -0.3342162   -0.2505585
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.5938700   -0.6133922   -0.5743478
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.3785933   -0.4212191   -0.3359676
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.8049038   -0.9274507   -0.6823570
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.4466272    0.2416144    0.6516401
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -0.9412727   -1.0590315   -0.8235140
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.3551131   -0.4698546   -0.2403717
24 months   ki0047075b-MAL-ED          PERU                           observed             observed           0.1236364    0.0020411    0.2452316
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.4267017    0.3074751    0.5459283
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.1482870   -0.0231847    0.3197588
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.5571505   -0.6585247   -0.4557763
24 months   ki1000108-IRC              INDIA                          observed             observed          -0.7438165   -0.8351658   -0.6524673
24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.8657047   -1.0392127   -0.6921966
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.8879412   -0.9708680   -0.8050144
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.6103502   -0.7050157   -0.5156847
24 months   ki1101329-Keneba           GAMBIA                         observed             observed          -0.7993901   -0.8507049   -0.7480753
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -1.1812827   -1.2816565   -1.0809088
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -0.2281431   -0.2964243   -0.1598619
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -0.5945219   -0.6240625   -0.5649813
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.6076846   -0.6447204   -0.5706489
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.2994962   -1.3226572   -1.2763352
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.2443883   -1.2783802   -1.2103964


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1606734   -0.2271898   -0.0941571
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.1440713   -0.2196458   -0.0684967
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0759639   -0.1294563   -0.0224715
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0556438   -0.0887946   -0.0224929
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0847766   -0.1329492   -0.0366041
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0476946   -0.1157166    0.0203274
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.1546392   -0.2821948   -0.0270837
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.2466466   -0.3355037   -0.1577894
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.2876420   -0.3624923   -0.2127918
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.1543034   -0.3669973    0.0583905
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.4542254   -0.8617719   -0.0466789
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0483679   -0.0790002   -0.0177356
Birth       ki1114097-CMIN             BRAZIL                         optimal              observed          -0.0916830   -0.1773351   -0.0060308
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.2178096   -0.2310046   -0.2046147
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1282937   -0.1714491   -0.0851383
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.2327457   -0.2501084   -0.2153830
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.1273409   -0.1469593   -0.1077224
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.3325257   -0.3455014   -0.3195500
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.2551242   -0.3099807   -0.2002677
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1277018   -0.2362499   -0.0191537
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0481863   -0.1080245    0.0116520
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.0435201   -0.1128773    0.0258371
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0285683   -0.0721033    0.0149667
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0254724   -0.0638996    0.0129548
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.1924040   -0.3988168    0.7836248
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0175426   -0.0615116    0.0264264
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0660199   -0.1348452    0.0028054
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.1246558   -0.3938608    0.1445492
6 months    ki1000109-EE               PAKISTAN                       optimal              observed           0.0792869   -0.0514480    0.2100219
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.0999913   -0.1514419   -0.0485406
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.1264779   -0.2434138   -0.0095420
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1119963   -0.1625881   -0.0614045
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0907842   -0.1372945   -0.0442740
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0178960   -0.0278073   -0.0079847
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0166902   -0.0341700    0.0007895
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0309215   -0.0416014   -0.0202416
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0378535   -0.0628258   -0.0128811
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.1244840   -0.1406625   -0.1083054
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0320277   -0.0463304   -0.0177251
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1305277   -0.1438610   -0.1171944
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0850116   -0.1078070   -0.0622162
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0924187   -0.1567462   -0.0280912
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.4992664    0.1297226    0.8688102
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.0502970   -0.1186847    0.0180908
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.0618141   -0.0540111    0.1776394
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0237276   -0.0760541    0.0285989
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0200840   -0.0503860    0.0102180
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0441962   -0.5741798    0.6625722
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0945888   -0.1354129   -0.0537648
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.1059330   -0.1525415   -0.0593244
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.1557428   -0.2992964   -0.0121892
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1343655   -0.1840495   -0.0846815
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.1343903   -0.1885340   -0.0802465
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0285096   -0.0464436   -0.0105756
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.1086584   -0.0348640    0.2521808
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0723018   -0.1019150   -0.0426886
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.0962505   -0.1109966   -0.0815044
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0441202   -0.0569979   -0.0312424
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1510601   -0.1682971   -0.1338230
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.1002305   -0.1218460   -0.0786149
