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
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight       202     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                  55     257
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight       183     191
Birth       ki0047075b-MAL-ED          BRAZIL                         Low birth weight                   8     191
Birth       ki0047075b-MAL-ED          INDIA                          Normal or high birthweight       172     206
Birth       ki0047075b-MAL-ED          INDIA                          Low birth weight                  34     206
Birth       ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight       155     173
Birth       ki0047075b-MAL-ED          NEPAL                          Low birth weight                  18     173
Birth       ki0047075b-MAL-ED          PERU                           Normal or high birthweight       269     287
Birth       ki0047075b-MAL-ED          PERU                           Low birth weight                  18     287
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight       244     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                  18     262
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       116     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                   7     123
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight        80      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                  10      90
Birth       ki1000108-IRC              INDIA                          Normal or high birthweight       320     386
Birth       ki1000108-IRC              INDIA                          Low birth weight                  66     386
Birth       ki1000109-EE               PAKISTAN                       Normal or high birthweight         2       2
Birth       ki1000109-EE               PAKISTAN                       Low birth weight                   0       2
Birth       ki1000109-ResPak           PAKISTAN                       Normal or high birthweight         6       7
Birth       ki1000109-ResPak           PAKISTAN                       Low birth weight                   1       7
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight       147     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                  40     187
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight        21      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                   7      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight        19      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                   8      27
Birth       ki1101329-Keneba           GAMBIA                         Normal or high birthweight      1401    1541
Birth       ki1101329-Keneba           GAMBIA                         Low birth weight                 140    1541
Birth       ki1114097-CMIN             BANGLADESH                     Normal or high birthweight         5      13
Birth       ki1114097-CMIN             BANGLADESH                     Low birth weight                   8      13
Birth       ki1114097-CMIN             BRAZIL                         Normal or high birthweight       107     115
Birth       ki1114097-CMIN             BRAZIL                         Low birth weight                   8     115
Birth       ki1114097-CMIN             PERU                           Normal or high birthweight        10      10
Birth       ki1114097-CMIN             PERU                           Low birth weight                   0      10
Birth       ki1114097-CONTENT          PERU                           Normal or high birthweight         2       2
Birth       ki1114097-CONTENT          PERU                           Low birth weight                   0       2
Birth       ki1119695-PROBIT           BELARUS                        Normal or high birthweight     13884   13884
Birth       ki1119695-PROBIT           BELARUS                        Low birth weight                   0   13884
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight     11929   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                1901   13830
Birth       ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight       717     784
Birth       ki1135781-COHORTS          GUATEMALA                      Low birth weight                  67     784
Birth       ki1135781-COHORTS          INDIA                          Normal or high birthweight      5268    6638
Birth       ki1135781-COHORTS          INDIA                          Low birth weight                1370    6638
Birth       ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight      2709    3004
Birth       ki1135781-COHORTS          PHILIPPINES                    Low birth weight                 295    3004
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight     11294   19612
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                8318   19612
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight       551     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                 271     822
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
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight       327     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                  42     369
6 months    ki1000108-IRC              INDIA                          Normal or high birthweight       339     405
6 months    ki1000108-IRC              INDIA                          Low birth weight                  66     405
6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight       243     372
6 months    ki1000109-EE               PAKISTAN                       Low birth weight                 129     372
6 months    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight        15      17
6 months    ki1000109-ResPak           PAKISTAN                       Low birth weight                   2      17
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight      1003    1326
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                 323    1326
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight       118     178
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                  60     178
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight       444     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                 139     583
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight       545     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                 170     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight      1944    2011
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                  67    2011
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
6 months    ki1119695-PROBIT           BELARUS                        Normal or high birthweight     15761   15761
6 months    ki1119695-PROBIT           BELARUS                        Low birth weight                   0   15761
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight      7235    8265
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                1030    8265
6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight       703     771
6 months    ki1135781-COHORTS          GUATEMALA                      Low birth weight                  68     771
6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight      5005    6261
6 months    ki1135781-COHORTS          INDIA                          Low birth weight                1256    6261
6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight      2418    2666
6 months    ki1135781-COHORTS          PHILIPPINES                    Low birth weight                 248    2666
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight     10660   16740
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                6080   16740
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight      3004    4041
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                1037    4041
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
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight        86     137
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                  51     137
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight       438     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                 139     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight       388     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                 126     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight         6       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                   0       6
24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight      1304    1436
24 months   ki1101329-Keneba           GAMBIA                         Low birth weight                 132    1436
24 months   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight         0       1
24 months   ki1114097-CMIN             BANGLADESH                     Low birth weight                   1       1
24 months   ki1114097-CMIN             PERU                           Normal or high birthweight         3       4
24 months   ki1114097-CMIN             PERU                           Low birth weight                   1       4
24 months   ki1114097-CONTENT          PERU                           Normal or high birthweight         2       2
24 months   ki1114097-CONTENT          PERU                           Low birth weight                   0       2
24 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight      4035    4035
24 months   ki1119695-PROBIT           BELARUS                        Low birth weight                   0    4035
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight       362     455
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                  93     455
24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight       592     653
24 months   ki1135781-COHORTS          GUATEMALA                      Low birth weight                  61     653
24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight      3949    4861
24 months   ki1135781-COHORTS          INDIA                          Low birth weight                 912    4861
24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight      2194    2406
24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight                 212    2406
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight      5361    8584
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                3223    8584
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight      2955    4010
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                1055    4010


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

* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
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
![](/tmp/4727487d-8179-42e1-ba4f-8fcdbfabc580/bb1de219-0ceb-4e44-b5ae-5409d5b0857c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.7804410   -0.8975124   -0.6633696
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.6770398   -0.8261540   -0.5279257
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.8482956   -0.9892934   -0.7072977
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.5081101   -0.6431889   -0.3730313
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.8023727   -0.9030548   -0.7016906
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.5190992   -0.6488956   -0.3893027
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.8204073   -1.0185881   -0.6222266
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.8406788   -1.0577807   -0.6235769
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.1849732   -0.3521718   -0.0177747
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.1121632   -1.2247524   -0.9995739
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.2133027   -0.5994324    0.1728270
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.8356824   -1.2856371   -0.3857277
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed           0.1817501    0.1198873    0.2436128
Birth       ki1114097-CMIN             BRAZIL                         optimal              observed           0.1811928   -0.0072106    0.3695962
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.3122730   -0.3321644   -0.2923816
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.2775251    0.1952540    0.3597962
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.3592167   -0.3859899   -0.3324435
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0776857   -0.1134964   -0.0418750
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.9538293   -0.9719757   -0.9356829
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.0474808   -1.1275266   -0.9674350
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.0507282   -1.1775633   -0.9238931
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.0867195   -0.0598513    0.2332903
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.1192884   -1.2470005   -0.9915763
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.4679705   -0.5819661   -0.3539750
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -1.2336245   -1.3381347   -1.1291142
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -1.0035977   -1.1303744   -0.8768211
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.1791071   -1.3456573   -1.0125570
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -1.3080967   -1.4560218   -1.1601717
6 months    ki1000108-IRC              INDIA                          optimal              observed          -1.0886770   -1.2248663   -0.9524877
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -1.8556247   -1.9933785   -1.7178709
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.1535381   -1.2546182   -1.0524579
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.1876493   -1.3578191   -1.0174795
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.8915187   -0.9740104   -0.8090271
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.0053985   -1.0822319   -0.9285650
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.5104362   -0.5599283   -0.4609441
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.8206216   -0.8719951   -0.7692481
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.7570582   -0.7835906   -0.7305258
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -1.6329397   -1.7542112   -1.5116682
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.7927710   -0.8227776   -0.7627645
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -1.0406442   -1.0833740   -0.9979144
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.9845092   -1.0093517   -0.9596667
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.1342979   -1.1793851   -1.0892108
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.8070786   -1.9405855   -1.6735717
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0808740   -0.6253888    0.4636409
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.8048686   -1.9418736   -1.6678636
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -1.2015122   -1.3242506   -1.0787738
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -1.5783763   -1.7067381   -1.4500145
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -1.6754122   -1.9800996   -1.3707249
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.4113335   -2.6071087   -2.2155583
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -2.5025615   -2.6106462   -2.3944769
24 months   ki1000108-IRC              INDIA                          optimal              observed          -1.6727395   -1.7731164   -1.5723625
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.9425938   -2.1738669   -1.7113207
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.4385559   -1.5312035   -1.3459083
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.2573551   -1.3462057   -1.1685046
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -1.5225072   -1.5786618   -1.4663526
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -2.2902185   -2.4204676   -2.1599694
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -2.7156797   -2.8081649   -2.6231946
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -1.7547393   -1.7915418   -1.7179369
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -2.3201153   -2.3665503   -2.2736803
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.7775386   -1.8093609   -1.7457163
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.6178363   -1.6609925   -1.5746801


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.0843969   -1.2100768   -0.9587169
Birth       ki0047075b-MAL-ED          BRAZIL                         observed             observed          -0.7609424   -0.9178311   -0.6040538
Birth       ki0047075b-MAL-ED          INDIA                          observed             observed          -1.0106311   -1.1499962   -0.8712660
Birth       ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.7089017   -0.8656064   -0.5521971
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.9322300   -1.0461262   -0.8183337
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.7266031   -0.8549719   -0.5982342
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.9338211   -1.1465079   -0.7211344
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.9654444   -1.1742112   -0.7566777
Birth       ki1000108-IRC              INDIA                          observed             observed          -0.3148964   -0.4754546   -0.1543382
Birth       ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -1.3946524   -1.5833612   -1.2059436
Birth       ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.5292857   -0.8821252   -0.1764462
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.1100000   -1.5086894   -0.7113106
Birth       ki1101329-Keneba           GAMBIA                         observed             observed           0.0341467   -0.0293905    0.0976838
Birth       ki1114097-CMIN             BRAZIL                         observed             observed           0.0576522   -0.1471825    0.2624869
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.5009660   -0.5215391   -0.4803930
Birth       ki1135781-COHORTS          GUATEMALA                      observed             observed           0.1221939    0.0348987    0.2094890
Birth       ki1135781-COHORTS          INDIA                          observed             observed          -0.6698147   -0.6979800   -0.6416494
Birth       ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.2435386   -0.2827491   -0.2043282
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.5746910   -1.5944136   -1.5549684
Birth       kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.4976642   -1.5817349   -1.4135935
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.2020000   -1.3213394   -1.0826606
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0510207   -0.0930194    0.1950608
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -1.1997307   -1.3188993   -1.0805621
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.5434862   -0.6569704   -0.4300019
6 months    ki0047075b-MAL-ED          PERU                           observed             observed          -1.3189691   -1.4274339   -1.2105044
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.0633760   -1.1911088   -0.9356432
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.2288492   -1.3944872   -1.0632112
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -1.4234508   -1.5645974   -1.2823042
6 months    ki1000108-IRC              INDIA                          observed             observed          -1.2275514   -1.3590342   -1.0960687
6 months    ki1000109-EE               PAKISTAN                       observed             observed          -2.2004704   -2.3234073   -2.0775336
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -1.4032504   -1.4822018   -1.3242989
6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -1.4277434   -1.5827644   -1.2727225
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.0871041   -1.1635539   -1.0106543
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.1986783   -1.2700937   -1.1272630
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.5394360   -0.5886359   -0.4902361
6 months    ki1101329-Keneba           GAMBIA                         observed             observed          -0.9244603   -0.9755212   -0.8733993
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.8889117   -0.9149009   -0.8629224
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.7858495   -1.8598889   -1.7118102
6 months    ki1135781-COHORTS          INDIA                          observed             observed          -0.9939850   -1.0230017   -0.9649683
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -1.1372543   -1.1796249   -1.0948837
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.3133943   -1.3365653   -1.2902232
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.3509354   -1.3927945   -1.3090764
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.9389663   -2.0658782   -1.8120544
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0418343   -0.1253834    0.2090521
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -1.8287045   -1.9551251   -1.7022839
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -1.2431448   -1.3633659   -1.1229237
24 months   ki0047075b-MAL-ED          PERU                           observed             observed          -1.7473232   -1.8685873   -1.6260592
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.6228361   -1.7581177   -1.4875546
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.4518519   -2.6434682   -2.2602356
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -2.5593683   -2.6601027   -2.4586339
24 months   ki1000108-IRC              INDIA                          observed             observed          -1.7781532   -1.8722784   -1.6840279
24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -2.2364903   -2.4267511   -2.0462295
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.5861179   -1.6693668   -1.5028689
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.4295331   -1.5127726   -1.3462935
24 months   ki1101329-Keneba           GAMBIA                         observed             observed          -1.5813420   -1.6360920   -1.5265921
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -2.3941758   -2.5091458   -2.2792058
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -2.8428484   -2.9257590   -2.7599378
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -1.9000555   -1.9341618   -1.8659493
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -2.3867789   -2.4319653   -2.3415925
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -2.0136952   -2.0414244   -1.9859661
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.7517855   -1.7900153   -1.7135558


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.3039559   -0.3939485   -0.2139633
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0839026   -0.1487125   -0.0190926
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.1623355   -0.2412770   -0.0833940
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.2007916   -0.3014640   -0.1001193
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.1298573   -0.1942907   -0.0654238
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.2075039   -0.2992864   -0.1157213
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1134138   -0.2148875   -0.0119401
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.1247656   -0.2093098   -0.0402215
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.1299231   -0.2161365   -0.0437098
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.2824892   -0.3824407   -0.1825378
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.3159830   -0.5542732   -0.0776927
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.2743176   -0.5706593    0.0220241
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -0.1476034   -0.1777623   -0.1174445
Birth       ki1114097-CMIN             BRAZIL                         optimal              observed          -0.1235406   -0.2310707   -0.0160106
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1886930   -0.2004135   -0.1769726
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1553312   -0.2000616   -0.1106008
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.3105980   -0.3299355   -0.2912606
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.1658529   -0.1884635   -0.1432423
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.6208617   -0.6380056   -0.6037178
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.4501834   -0.5146488   -0.3857181
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1512718   -0.2211603   -0.0813833
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0356988   -0.0719304    0.0005329
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.0804423   -0.1358664   -0.0250183
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0755156   -0.1238326   -0.0271987
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0853447   -0.1325369   -0.0381524
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0597782   -0.1074151   -0.0121413
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0497421   -0.0994018   -0.0000823
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.1153540   -0.1710417   -0.0596664
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.1388745   -0.2070919   -0.0706570
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -0.3448458   -0.4419502   -0.2477413
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.2497123   -0.3025112   -0.1969134
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.2400942   -0.3599182   -0.1202701
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1955853   -0.2435465   -0.1476241
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.1932798   -0.2381223   -0.1484374
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0289998   -0.0404342   -0.0175655
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.1038387   -0.1260544   -0.0816229
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1318535   -0.1440512   -0.1196558
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1529098   -0.2577629   -0.0480568
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.2012139   -0.2184810   -0.1839469
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0966101   -0.1144108   -0.0788094
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.3288851   -0.3428760   -0.3148941
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.2166375   -0.2413641   -0.1919109
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1318878   -0.2117959   -0.0519796
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.1227083   -0.3870556    0.6324722
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.0238359   -0.0803355    0.0326637
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0416326   -0.0857013    0.0024361
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.1689469   -0.2601929   -0.0777010
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.0525761   -0.2037318    0.3088840
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0405184   -0.0851123    0.0040756
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0568068   -0.0902263   -0.0233872
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.1054137   -0.1517719   -0.0590555
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.2938965   -0.4439169   -0.1438760
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1475619   -0.1976328   -0.0974911
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.1721780   -0.2262841   -0.1180719
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0588348   -0.0795193   -0.0381504
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1039573   -0.1585342   -0.0493804
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1271686   -0.1862309   -0.0681064
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.1453162   -0.1631206   -0.1275118
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0666636   -0.0830832   -0.0502440
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.2361567   -0.2543377   -0.2179756
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.1339492   -0.1557166   -0.1121818
