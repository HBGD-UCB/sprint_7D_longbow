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
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight        54      61
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                   7      61
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
Birth       ki1119695-PROBIT           BELARUS                        Normal or high birthweight      6739    6739
Birth       ki1119695-PROBIT           BELARUS                        Low birth weight                   0    6739
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight     11614   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                1302   12916
Birth       ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight       337     375
Birth       ki1135781-COHORTS          GUATEMALA                      Low birth weight                  38     375
Birth       ki1135781-COHORTS          INDIA                          Normal or high birthweight      5178    6193
Birth       ki1135781-COHORTS          INDIA                          Low birth weight                1015    6193
Birth       ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight      2688    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    Low birth weight                 211    2899
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight      5228    7687
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                2459    7687
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight       150     185
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                  35     185
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
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight       325     410
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                  85     410
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
6 months    ki1119695-PROBIT           BELARUS                        Normal or high birthweight      7664    7664
6 months    ki1119695-PROBIT           BELARUS                        Low birth weight                   0    7664
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight      7202    8234
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                1032    8234
6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight       334     377
6 months    ki1135781-COHORTS          GUATEMALA                      Low birth weight                  43     377
6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight      5000    6252
6 months    ki1135781-COHORTS          INDIA                          Low birth weight                1252    6252
6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight      2416    2664
6 months    ki1135781-COHORTS          PHILIPPINES                    Low birth weight                 248    2664
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight      5077    8274
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                3197    8274
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight       811    1052
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                 241    1052
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
24 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight      1589    1589
24 months   ki1119695-PROBIT           BELARUS                        Low birth weight                   0    1589
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight       330     421
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                  91     421
24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight       270     311
24 months   ki1135781-COHORTS          GUATEMALA                      Low birth weight                  41     311
24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight      3911    4821
24 months   ki1135781-COHORTS          INDIA                          Low birth weight                 910    4821
24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight      2195    2410
24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight                 215    2410
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight      2575    4256
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                1681    4256
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight       803    1058
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                 255    1058


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
![](/tmp/f8eed7b2-9a50-476d-9f22-9ba37650af59/0c38e140-083b-4962-b878-683c7b5feb6a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.8043606   -0.9493684   -0.6593529
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.9269113   -1.0727697   -0.7810529
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.8270801   -0.9663749   -0.6877853
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0176544   -0.1283377    0.0930289
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.0290568   -0.1146390    0.1727527
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.8390138    0.6451441    1.0328834
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.4731914   -0.8373623   -0.1090204
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.7670502   -0.9604393   -0.5736612
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.1592176   -0.4427831    0.1243478
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.2534923   -1.6553042   -0.8516804
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.3051379   -0.6642568    0.0539810
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed           1.7516478    1.6668726    1.8364231
Birth       ki1114097-CMIN             BRAZIL                         optimal              observed          -0.0399522   -0.2418811    0.1619767
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.2975882   -0.3224992   -0.2726773
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -1.1132155   -1.2511834   -0.9752476
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.7516636   -0.7812374   -0.7220897
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.6151425   -0.6606010   -0.5696841
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.4241073   -0.4517308   -0.3964839
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0907804   -0.2616993    0.0801385
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0162076   -0.1762229    0.1438077
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.9957843    0.8278195    1.1637491
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.6446583   -0.7825608   -0.5067557
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.1817312    0.0449545    0.3185078
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           1.0845787    0.9593364    1.2098210
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.1123422   -0.4778329    0.2531485
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.5730155    0.3714102    0.7746208
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.4470272   -0.6099283   -0.2841262
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.5719806   -0.8779456   -0.2660157
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -0.8247380   -0.9952023   -0.6542736
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.6975981   -0.9711704   -0.4240258
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.3856564   -0.5527276   -0.2185852
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0951876   -0.1902743   -0.0001008
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.1192060    0.0306244    0.2077876
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1013720    0.0475697    0.1551743
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.1419435   -0.2111729   -0.0727141
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.3329410    0.3049853    0.3608966
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.1440953    0.0168402    0.2713505
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.5678983   -0.5989151   -0.5368815
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.2600932   -0.3038211   -0.2163654
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.4529346   -0.4871386   -0.4187306
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.2632758   -0.3513135   -0.1752381
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.7030294   -0.8426025   -0.5634562
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.1903314   -0.3735634   -0.0070995
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.8880930   -1.0107929   -0.7653931
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.2939133   -0.4287309   -0.1590956
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.1468485    0.0299983    0.2636987
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.4445685    0.3215698    0.5675672
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0093240   -0.1862054    0.2048534
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.4611125   -0.5669940   -0.3552311
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.6416893   -0.7388761   -0.5445025
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.6963210   -0.9054952   -0.4871468
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.7551345   -0.8497250   -0.6605441
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.4860209   -0.5955502   -0.3764916
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.7708944   -0.8245700   -0.7172188
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -1.1628532   -1.3264522   -0.9992543
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.4136932   -0.5115424   -0.3158440
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.4982118   -0.5305059   -0.4659177
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.5638122   -0.6021580   -0.5254665
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.1395187   -1.1803471   -1.0986902
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.1271187   -1.2043728   -1.0498646


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
Birth       ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.3822951   -0.7231296   -0.0414606
Birth       ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -1.4239286   -1.7688028   -1.0790544
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.7508696   -1.2358912   -0.2658480
Birth       ki1101329-Keneba           GAMBIA                         observed             observed           1.7036191    1.6208471    1.7863911
Birth       ki1114097-CMIN             BRAZIL                         observed             observed          -0.1332432   -0.3441055    0.0776190
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.5151425   -0.5409938   -0.4892911
Birth       ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.2627733   -1.4008778   -1.1246688
Birth       ki1135781-COHORTS          INDIA                          observed             observed          -0.9847457   -1.0145305   -0.9549609
Birth       ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.7427251   -0.7890855   -0.6963647
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.7667165   -0.7936151   -0.7398180
Birth       kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.2903784   -0.4497929   -0.1309639
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
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.7963659   -0.9948085   -0.5979232
6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.4834785   -0.6351316   -0.3318253
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.2083706   -0.2927992   -0.1239419
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed           0.0297622   -0.0491685    0.1086930
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0834996    0.0305909    0.1364083
6 months    ki1101329-Keneba           GAMBIA                         observed             observed          -0.1860451   -0.2417939   -0.1302962
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed           0.3026397    0.2765488    0.3287305
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed           0.0915915   -0.0288197    0.2120028
6 months    ki1135781-COHORTS          INDIA                          observed             observed          -0.6934213   -0.7223635   -0.6644791
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.2923874   -0.3342162   -0.2505585
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.5911264   -0.6186969   -0.5635560
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.3515399   -0.4294193   -0.2736606
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
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -0.5277492   -0.6241314   -0.4313670
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -0.5945219   -0.6240625   -0.5649813
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.6076846   -0.6447204   -0.5706489
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.2941142   -1.3265665   -1.2616619
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.2411815   -1.3067468   -1.1756162


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1587099   -0.2248266   -0.0925932
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.1422020   -0.2169847   -0.0674193
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0773842   -0.1316589   -0.0231094
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0559298   -0.0889002   -0.0229595
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0853359   -0.1332723   -0.0373995
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0457934   -0.1136432    0.0220563
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.1543086   -0.2816374   -0.0269799
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.2435329   -0.3324124   -0.1546534
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.2230774   -0.3483160   -0.0978388
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.1704363   -0.3873756    0.0465030
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.4457317   -0.8503717   -0.0410917
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0480287   -0.0785674   -0.0174900
Birth       ki1114097-CMIN             BRAZIL                         optimal              observed          -0.0932910   -0.1795672   -0.0070149
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.2175542   -0.2307537   -0.2043547
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1495578   -0.2125484   -0.0865673
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.2330821   -0.2504453   -0.2157189
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.1275826   -0.1471627   -0.1080024
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.3426092   -0.3611023   -0.3241161
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.1995980   -0.2947104   -0.1044855
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1176044   -0.2320183   -0.0031906
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0240618   -0.0634938    0.0153702
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.0485877   -0.1064589    0.0092834
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0308723   -0.0735099    0.0117652
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0263380   -0.0632601    0.0105842
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.6544157    0.2905325    1.0182989
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0165737   -0.0597570    0.0266096
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0556494   -0.1296832    0.0183844
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.0250103   -0.2712368    0.2212161
6 months    ki1000109-EE               PAKISTAN                       optimal              observed           0.1034614   -0.0304448    0.2373676
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.0987678   -0.2294438    0.0319083
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.0978221   -0.2199216    0.0242775
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1131830   -0.1640230   -0.0623430
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0894438   -0.1367881   -0.0420994
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0178724   -0.0277632   -0.0079816
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0441016   -0.0855312   -0.0026720
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0303013   -0.0411263   -0.0194763
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0525038   -0.0972251   -0.0077825
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.1255230   -0.1416173   -0.1094288
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0322942   -0.0465826   -0.0180057
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1381918   -0.1577671   -0.1186165
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0882641   -0.1280091   -0.0485191
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1018745   -0.1664419   -0.0373071
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.6369587    0.4306479    0.8432694
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.0531798   -0.1232340    0.0168745
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0611999   -0.1530290    0.0306293
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0232121   -0.0743280    0.0279037
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0178668   -0.0480329    0.0122994
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1389631    0.0203534    0.2575727
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0960380   -0.1368481   -0.0552280
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.1021272   -0.1489292   -0.0553253
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.1693837   -0.3132995   -0.0254678
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1328066   -0.1820987   -0.0835146
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.1243293   -0.1774520   -0.0712066
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0284957   -0.0465145   -0.0104769
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0184294   -0.1540336    0.1171747
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1140560   -0.1630560   -0.0650560
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.0963101   -0.1110480   -0.0815722
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0438724   -0.0567318   -0.0310130
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1545955   -0.1794525   -0.1297386
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.1140628   -0.1519030   -0.0762225
