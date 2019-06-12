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

**Intervention Variable:** enstunt

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

agecat      studyid                    country                        enstunt    n_cell       n
----------  -------------------------  -----------------------------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0             210     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     1              31     241
Birth       ki0047075b-MAL-ED          BRAZIL                         0             169     183
Birth       ki0047075b-MAL-ED          BRAZIL                         1              14     183
Birth       ki0047075b-MAL-ED          INDIA                          0             173     203
Birth       ki0047075b-MAL-ED          INDIA                          1              30     203
Birth       ki0047075b-MAL-ED          NEPAL                          0             154     168
Birth       ki0047075b-MAL-ED          NEPAL                          1              14     168
Birth       ki0047075b-MAL-ED          PERU                           0             253     279
Birth       ki0047075b-MAL-ED          PERU                           1              26     279
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0             232     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1              26     258
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             105     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              13     118
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0              77      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1              11      88
Birth       ki1000108-IRC              INDIA                          0             318     343
Birth       ki1000108-IRC              INDIA                          1              25     343
Birth       ki1000109-EE               PAKISTAN                       0               0       1
Birth       ki1000109-EE               PAKISTAN                       1               1       1
Birth       ki1000109-ResPak           PAKISTAN                       0               5       6
Birth       ki1000109-ResPak           PAKISTAN                       1               1       6
Birth       ki1000304b-SAS-CompFeed    INDIA                          0              53      61
Birth       ki1000304b-SAS-CompFeed    INDIA                          1               8      61
Birth       ki1017093-NIH-Birth        BANGLADESH                     0              27      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     1               1      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0              22      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1               1      23
Birth       ki1101329-Keneba           GAMBIA                         0            1347    1423
Birth       ki1101329-Keneba           GAMBIA                         1              76    1423
Birth       ki1114097-CMIN             BANGLADESH                     0               7       8
Birth       ki1114097-CMIN             BANGLADESH                     1               1       8
Birth       ki1114097-CMIN             BRAZIL                         0             110     111
Birth       ki1114097-CMIN             BRAZIL                         1               1     111
Birth       ki1114097-CMIN             PERU                           0              10      10
Birth       ki1114097-CMIN             PERU                           1               0      10
Birth       ki1114097-CONTENT          PERU                           0               2       2
Birth       ki1114097-CONTENT          PERU                           1               0       2
Birth       ki1119695-PROBIT           BELARUS                        0            6725    6739
Birth       ki1119695-PROBIT           BELARUS                        1              14    6739
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0           12226   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1             690   12916
Birth       ki1135781-COHORTS          GUATEMALA                      0             362     375
Birth       ki1135781-COHORTS          GUATEMALA                      1              13     375
Birth       ki1135781-COHORTS          INDIA                          0            5813    6193
Birth       ki1135781-COHORTS          INDIA                          1             380    6193
Birth       ki1135781-COHORTS          PHILIPPINES                    0            2813    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    1              86    2899
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0            6400    7687
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1            1287    7687
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0             155     185
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1              30     185
6 months    ki0047075b-MAL-ED          BANGLADESH                     0             202     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1              39     241
6 months    ki0047075b-MAL-ED          BRAZIL                         0             188     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1              21     209
6 months    ki0047075b-MAL-ED          INDIA                          0             197     236
6 months    ki0047075b-MAL-ED          INDIA                          1              39     236
6 months    ki0047075b-MAL-ED          NEPAL                          0             209     236
6 months    ki0047075b-MAL-ED          NEPAL                          1              27     236
6 months    ki0047075b-MAL-ED          PERU                           0             239     273
6 months    ki0047075b-MAL-ED          PERU                           1              34     273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0             229     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1              25     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             208     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              39     247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0             294     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1              74     368
6 months    ki1000108-IRC              INDIA                          0             360     408
6 months    ki1000108-IRC              INDIA                          1              48     408
6 months    ki1000109-EE               PAKISTAN                       0             246     376
6 months    ki1000109-EE               PAKISTAN                       1             130     376
6 months    ki1000109-ResPak           PAKISTAN                       0             173     235
6 months    ki1000109-ResPak           PAKISTAN                       1              62     235
6 months    ki1000304b-SAS-CompFeed    INDIA                          0             305     411
6 months    ki1000304b-SAS-CompFeed    INDIA                          1             106     411
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0              59      97
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1              38      97
6 months    ki1017093-NIH-Birth        BANGLADESH                     0             451     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     1              85     536
6 months    ki1017093b-PROVIDE         BANGLADESH                     0             522     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     1              60     582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0             613     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1             102     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0            1890    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             138    2028
6 months    ki1101329-Keneba           GAMBIA                         0            1893    2089
6 months    ki1101329-Keneba           GAMBIA                         1             196    2089
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0             228     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1              71     299
6 months    ki1113344-GMS-Nepal        NEPAL                          0             504     563
6 months    ki1113344-GMS-Nepal        NEPAL                          1              59     563
6 months    ki1114097-CMIN             BANGLADESH                     0             151     243
6 months    ki1114097-CMIN             BANGLADESH                     1              92     243
6 months    ki1114097-CMIN             BRAZIL                         0             104     108
6 months    ki1114097-CMIN             BRAZIL                         1               4     108
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0             747     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1             102     849
6 months    ki1114097-CMIN             PERU                           0             604     636
6 months    ki1114097-CMIN             PERU                           1              32     636
6 months    ki1114097-CONTENT          PERU                           0             197     215
6 months    ki1114097-CONTENT          PERU                           1              18     215
6 months    ki1119695-PROBIT           BELARUS                        0            7607    7664
6 months    ki1119695-PROBIT           BELARUS                        1              57    7664
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0            7414    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1             850    8264
6 months    ki1135781-COHORTS          GUATEMALA                      0             392     465
6 months    ki1135781-COHORTS          GUATEMALA                      1              73     465
6 months    ki1135781-COHORTS          INDIA                          0            6034    6850
6 months    ki1135781-COHORTS          INDIA                          1             816    6850
6 months    ki1135781-COHORTS          PHILIPPINES                    0            2549    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    1             157    2706
6 months    ki1148112-LCNI-5           MALAWI                         0             530     839
6 months    ki1148112-LCNI-5           MALAWI                         1             309     839
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0            5706    8308
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1            2602    8308
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0             922    1256
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1             334    1256
24 months   ki0047075b-MAL-ED          BANGLADESH                     0             179     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1              33     212
24 months   ki0047075b-MAL-ED          BRAZIL                         0             153     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1              16     169
24 months   ki0047075b-MAL-ED          INDIA                          0             190     227
24 months   ki0047075b-MAL-ED          INDIA                          1              37     227
24 months   ki0047075b-MAL-ED          NEPAL                          0             202     228
24 months   ki0047075b-MAL-ED          NEPAL                          1              26     228
24 months   ki0047075b-MAL-ED          PERU                           0             174     201
24 months   ki0047075b-MAL-ED          PERU                           1              27     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0             216     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              22     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             181     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              33     214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0             297     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              75     372
24 months   ki1000108-IRC              INDIA                          0             362     409
24 months   ki1000108-IRC              INDIA                          1              47     409
24 months   ki1017093-NIH-Birth        BANGLADESH                     0             354     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     1              74     428
24 months   ki1017093b-PROVIDE         BANGLADESH                     0             519     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1              59     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0             444     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              70     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               6       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0       6
24 months   ki1101329-Keneba           GAMBIA                         0            1550    1726
24 months   ki1101329-Keneba           GAMBIA                         1             176    1726
24 months   ki1113344-GMS-Nepal        NEPAL                          0             447     498
24 months   ki1113344-GMS-Nepal        NEPAL                          1              51     498
24 months   ki1114097-CMIN             BANGLADESH                     0             153     243
24 months   ki1114097-CMIN             BANGLADESH                     1              90     243
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0             450     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1             101     551
24 months   ki1114097-CMIN             PERU                           0             343     429
24 months   ki1114097-CMIN             PERU                           1              86     429
24 months   ki1114097-CONTENT          PERU                           0             147     164
24 months   ki1114097-CONTENT          PERU                           1              17     164
24 months   ki1119695-PROBIT           BELARUS                        0            1582    1589
24 months   ki1119695-PROBIT           BELARUS                        1               7    1589
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0             324     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1              99     423
24 months   ki1135781-COHORTS          GUATEMALA                      0             356     528
24 months   ki1135781-COHORTS          GUATEMALA                      1             172     528
24 months   ki1135781-COHORTS          INDIA                          0            4656    5291
24 months   ki1135781-COHORTS          INDIA                          1             635    5291
24 months   ki1135781-COHORTS          PHILIPPINES                    0            2311    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    1             138    2449
24 months   ki1148112-LCNI-5           MALAWI                         0             365     563
24 months   ki1148112-LCNI-5           MALAWI                         1             198     563
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0            2907    4282
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1            1375    4282
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0             914    1249
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1             335    1249


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

* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
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
![](/tmp/74a9c589-46d5-4543-b485-aaecd44f1f3d/7c674dc0-9d5b-413b-b322-dcd99184ec2b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.5632187   -0.9734270   -0.1530104
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed           1.1675737    0.5088633    1.8262841
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.0803670   -1.4210736   -0.7396603
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.4888436   -0.9476383   -0.0300488
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0336972   -0.1487317    0.0813373
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.2533067   -0.8735007    0.3668872
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.6958212   -0.1001227    1.4917652
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0067983   -1.3765073    1.3629108
Birth       ki1000108-IRC              INDIA                          optimal              observed           0.2613138   -0.3473058    0.8699334
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.0361811   -0.9455878    0.8732257
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed           1.7513000    1.6671921    1.8354079
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           0.5745685    0.5385363    0.6106008
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.1807231    0.0441697    0.3172764
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.3421841   -0.7901487    0.1057805
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.6903492   -0.8272620   -0.5534365
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.2530384   -0.5501079    0.0440312
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.6627162   -0.7206573   -0.6047752
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.2290756   -0.6172585    0.1591073
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1352829   -0.2857070    0.0151411
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           1.0554984    0.8825403    1.2284566
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.7887136   -0.9955080   -0.5819193
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.1453516    0.0052314    0.2854719
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           1.0555729    0.7975343    1.3136115
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           1.0331148    0.4889240    1.5773057
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.4823652    0.2167246    0.7480059
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.5155130   -0.7298117   -0.3012143
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.2323841   -0.7061583    0.2413902
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -0.6159004   -0.8289457   -0.4028551
6 months    ki1000109-ResPak           PAKISTAN                       optimal              observed           0.0158082   -0.1882842    0.2199007
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.7454949   -1.0024381   -0.4885516
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -1.0331298   -1.3439135   -0.7223462
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.4011907   -0.5166932   -0.2856883
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1531207   -0.2422920   -0.0639494
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.0544401   -0.0295896    0.1384698
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0065069   -0.0916313    0.1046450
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.1859455   -0.2829184   -0.0889727
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.0484589   -0.1732000    0.0762821
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.5840320   -0.6733877   -0.4946763
6 months    ki1114097-CMIN             BANGLADESH                     optimal              observed          -0.7642100   -0.9754392   -0.5529809
6 months    ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed          -0.0046371   -0.0876811    0.0784070
6 months    ki1114097-CMIN             PERU                           optimal              observed           0.6936649    0.6023696    0.7849602
6 months    ki1114097-CONTENT          PERU                           optimal              observed           1.0205285    0.8586466    1.1824103
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.8099912    0.6755936    0.9443888
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.2737628    0.2258025    0.3217232
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.0144331   -0.1699148    0.1987811
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.6475228   -0.6763917   -0.6186539
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.2743000   -0.3557357   -0.1928643
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.5241429    0.4347922    0.6134935
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.5427162   -0.5749719   -0.5104605
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.3110942   -0.3970190   -0.2251694
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.7636706   -0.9019544   -0.6253868
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.3875706    0.1745324    0.6006088
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.9621864   -1.1145029   -0.8098700
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.4837497   -0.6834046   -0.2840949
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.2116606    0.0966095    0.3267117
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.2711569   -0.0165679    0.5588818
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0715428   -0.0565305    0.1996161
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.4460819   -0.5605503   -0.3316135
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.7082775   -0.8059911   -0.6105639
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.8785691   -0.9852058   -0.7719325
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.8095557   -0.9122768   -0.7068346
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.5430472   -0.6427586   -0.4433358
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.7668648   -0.8309755   -0.7027540
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.0819406   -1.2719449   -0.8919363
24 months   ki1114097-CMIN             BANGLADESH                     optimal              observed          -0.7592017   -0.8925749   -0.6258285
24 months   ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed          -0.0761773   -0.1738792    0.0215246
24 months   ki1114097-CMIN             PERU                           optimal              observed           0.7334850    0.6453524    0.8216176
24 months   ki1114097-CONTENT          PERU                           optimal              observed           0.6112113    0.4677050    0.7547175
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.1411997   -0.1406617    0.4230611
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -1.0450595   -1.2197844   -0.8703347
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.4287567   -0.5177048   -0.3398086
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.5540913   -0.5838682   -0.5243143
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.5909616   -0.6284246   -0.5534985
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed           0.0989521   -0.0007004    0.1986047
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.1974301   -1.2361156   -1.1587445
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.1311049   -1.1993989   -1.0628109


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.9630705   -1.0989132   -0.8272278
Birth       ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.4038798    0.2296279    0.5781316
Birth       ki0047075b-MAL-ED          INDIA                          observed             observed          -1.0691133   -1.2078629   -0.9303637
Birth       ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.9044643   -1.0439568   -0.7649718
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.0735842   -0.1836203    0.0364518
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.0562791   -0.2000837    0.0875255
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.7932203    0.5962220    0.9902187
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.6275000   -0.9746292   -0.2803708
Birth       ki1000108-IRC              INDIA                          observed             observed          -1.0105831   -1.1973019   -0.8238643
Birth       ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.3822951   -0.7231296   -0.0414606
Birth       ki1101329-Keneba           GAMBIA                         observed             observed           1.7036191    1.6208471    1.7863911
Birth       ki1119695-PROBIT           BELARUS                        observed             observed          -1.1877267   -1.5203042   -0.8551491
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.5151425   -0.5409938   -0.4892911
Birth       ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.2627733   -1.4008778   -1.1246688
Birth       ki1135781-COHORTS          INDIA                          observed             observed          -0.9847457   -1.0145305   -0.9549609
Birth       ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.7427251   -0.7890855   -0.6963647
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.7667165   -0.7936151   -0.7398180
Birth       kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.2903784   -0.4497929   -0.1309639
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.1397960   -0.2688682   -0.0107238
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.9717225    0.8073791    1.1360658
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -0.7033969   -0.8285284   -0.5782654
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed           0.1110452   -0.0202712    0.2423616
6 months    ki0047075b-MAL-ED          PERU                           observed             observed           1.0543956    0.9326967    1.1760945
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.5420735    0.3899459    0.6942011
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5170513    0.3872178    0.6468847
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.5026766   -0.6536848   -0.3516685
6 months    ki1000108-IRC              INDIA                          observed             observed          -0.5989297   -0.7344491   -0.4634104
6 months    ki1000109-EE               PAKISTAN                       observed             observed          -0.7212766   -0.8346857   -0.6078675
6 months    ki1000109-ResPak           PAKISTAN                       observed             observed          -0.1683617   -0.3528233    0.0160999
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.7979562   -0.9920947   -0.6038177
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             observed          -1.1301031   -1.3613760   -0.8988302
6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.4389101   -0.5279432   -0.3498771
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.2083706   -0.2927992   -0.1239419
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed           0.0297622   -0.0491685    0.1086930
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0809332    0.0282644    0.1336020
6 months    ki1101329-Keneba           GAMBIA                         observed             observed          -0.1846223   -0.2354964   -0.1337483
6 months    ki1112895-Guatemala BSC    GUATEMALA                      observed             observed          -0.0840134   -0.1945572    0.0265305
6 months    ki1113344-GMS-Nepal        NEPAL                          observed             observed          -0.6047987   -0.6909649   -0.5186325
6 months    ki1114097-CMIN             BANGLADESH                     observed             observed          -0.5780453   -0.7226627   -0.4334279
6 months    ki1114097-CMIN             GUINEA-BISSAU                  observed             observed          -0.0418080   -0.1199942    0.0363782
6 months    ki1114097-CMIN             PERU                           observed             observed           0.6721017    0.5829735    0.7612299
6 months    ki1114097-CONTENT          PERU                           observed             observed           1.0684318    0.9515274    1.1853362
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.5810067    0.5014871    0.6605262
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed           0.3047138    0.2786437    0.3307839
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed           0.0489462   -0.0602343    0.1581267
6 months    ki1135781-COHORTS          INDIA                          observed             observed          -0.6908803   -0.7184601   -0.6633005
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.2938433   -0.3352064   -0.2524802
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed           0.4499285    0.3788279    0.5210291
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.5899579   -0.6174529   -0.5624628
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.3688177   -0.4396618   -0.2979735
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.8208255   -0.9429246   -0.6987264
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.4466272    0.2416144    0.6516401
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -0.9522907   -1.0676596   -0.8369219
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.3764474   -0.4898516   -0.2630431
24 months   ki0047075b-MAL-ED          PERU                           observed             observed           0.1199005   -0.0000331    0.2398341
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.4267017    0.3074751    0.5459283
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0500935   -0.0748234    0.1750103
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.5571505   -0.6585247   -0.4557763
24 months   ki1000108-IRC              INDIA                          observed             observed          -0.7458150   -0.8368180   -0.6548120
24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.9115790   -1.0095022   -0.8136559
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.8879412   -0.9708680   -0.8050144
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.6103502   -0.7050157   -0.5156847
24 months   ki1101329-Keneba           GAMBIA                         observed             observed          -0.8099290   -0.8570608   -0.7627972
24 months   ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.1315863   -1.2192240   -1.0439487
24 months   ki1114097-CMIN             BANGLADESH                     observed             observed          -0.8535391   -0.9644236   -0.7426546
24 months   ki1114097-CMIN             GUINEA-BISSAU                  observed             observed          -0.1442438   -0.2323415   -0.0561461
24 months   ki1114097-CMIN             PERU                           observed             observed           0.6477778    0.5676685    0.7278870
24 months   ki1114097-CONTENT          PERU                           observed             observed           0.5668293    0.4302437    0.7034148
24 months   ki1119695-PROBIT           BELARUS                        observed             observed           0.8061601    0.6592496    0.9530705
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -1.1809929   -1.2809380   -1.0810478
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -0.5466477   -0.6220084   -0.4712871
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -0.6073238   -0.6354743   -0.5791732
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.6099592   -0.6467541   -0.5731643
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -0.0478508   -0.1297321    0.0340305
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.2928515   -1.3253331   -1.2603698
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.2294796   -1.2885986   -1.1703606


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.3998518   -0.7799590   -0.0197447
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.7636940   -1.4002907   -0.1270973
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed           0.0112537   -0.2979562    0.3204636
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.4156207   -0.8506335    0.0193920
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0398870   -0.0798017    0.0000276
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.1970277   -0.3790769    0.7731323
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0973991   -0.6380460    0.8328442
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.6207017   -1.8697894    0.6283859
Birth       ki1000108-IRC              INDIA                          optimal              observed          -1.2718969   -1.8644676   -0.6793262
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.3461140   -0.9703054    0.2780774
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0476809   -0.0763846   -0.0189771
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -1.7622952   -2.0898293   -1.4347611
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.6958655   -0.8279475   -0.5637836
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.9205893   -1.3752690   -0.4659095
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.2943965   -0.4263142   -0.1624787
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.4896867   -0.7818332   -0.1975402
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1040003   -0.1560902   -0.0519105
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0613028   -0.4089687    0.2863632
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0045131   -0.0696650    0.0606388
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0837760   -0.1403281   -0.0272238
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed           0.0853167   -0.0707260    0.2413594
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0343064   -0.0821203    0.0135075
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0011773   -0.2189082    0.2165536
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.4910413   -1.0007688    0.0186862
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0346861   -0.2060251    0.2753972
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.0128364   -0.1529935    0.1786662
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.3665457   -0.8008663    0.0677750
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -0.1053762   -0.2707523    0.0599999
6 months    ki1000109-ResPak           PAKISTAN                       optimal              observed          -0.1841699   -0.3055192   -0.0628207
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.0524613   -0.1339751    0.0290524
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.0969733   -0.2802074    0.0862608
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.0377194   -0.1262810    0.0508422
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0552499   -0.0997985   -0.0107013
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0246779   -0.0592323    0.0098766
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0744263   -0.0085920    0.1574447
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed           0.0013232   -0.0822140    0.0848604
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.0355545   -0.0992427    0.0281338
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0207667   -0.0551089    0.0135755
6 months    ki1114097-CMIN             BANGLADESH                     optimal              observed           0.1861648    0.0339376    0.3383919
6 months    ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed          -0.0371709   -0.0674261   -0.0069157
6 months    ki1114097-CMIN             PERU                           optimal              observed          -0.0215633   -0.0431491    0.0000226
6 months    ki1114097-CONTENT          PERU                           optimal              observed           0.0479033   -0.0890661    0.1848728
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          -0.2289846   -0.3459182   -0.1120509
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.0309510   -0.0083757    0.0702777
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.0345131   -0.1197133    0.1887395
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.0433575   -0.0545416   -0.0321733
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0195433   -0.0902464    0.0511599
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.0742144   -0.1364992   -0.0119296
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0472417   -0.0655501   -0.0289333
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0577235   -0.0981141   -0.0173329
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0571549   -0.1046426   -0.0096671
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.0590566   -0.0339700    0.1520833
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed           0.0098957   -0.0939314    0.1137228
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.1073024   -0.0729389    0.2875436
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0917601   -0.1653709   -0.0181494
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.1555447   -0.1002735    0.4113630
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0214494   -0.0869249    0.0440262
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.1110686   -0.1649621   -0.0571752
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.0375375   -0.0703877   -0.0046873
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.0330099   -0.0872801    0.0212603
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0783855   -0.1478607   -0.0089103
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0673030   -0.1091510   -0.0254550
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0430642   -0.0860214   -0.0001071
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0496457   -0.2189486    0.1196572
24 months   ki1114097-CMIN             BANGLADESH                     optimal              observed          -0.0943374   -0.1829481   -0.0057267
24 months   ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed          -0.0680665   -0.1100539   -0.0260791
24 months   ki1114097-CMIN             PERU                           optimal              observed          -0.0857072   -0.1277054   -0.0437091
24 months   ki1114097-CONTENT          PERU                           optimal              observed          -0.0443820   -0.0903955    0.0016315
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.6649604    0.3792088    0.9507119
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1359334   -0.2811981    0.0093314
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1178910   -0.1733169   -0.0624652
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.0532325   -0.0639764   -0.0424885
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0189976   -0.0294910   -0.0085042
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.1468029   -0.2091943   -0.0844115
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0954214   -0.1159433   -0.0748996
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0983747   -0.1311986   -0.0655508
