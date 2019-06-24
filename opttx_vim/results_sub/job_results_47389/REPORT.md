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
Birth       ki1000304b-SAS-CompFeed    INDIA                          0             141     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          1              25     166
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
Birth       ki1119695-PROBIT           BELARUS                        0           13798   13824
Birth       ki1119695-PROBIT           BELARUS                        1              26   13824
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0           12226   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1             690   12916
Birth       ki1135781-COHORTS          GUATEMALA                      0             732     756
Birth       ki1135781-COHORTS          GUATEMALA                      1              24     756
Birth       ki1135781-COHORTS          INDIA                          0            5813    6193
Birth       ki1135781-COHORTS          INDIA                          1             380    6193
Birth       ki1135781-COHORTS          PHILIPPINES                    0            2813    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    1              86    2899
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0           13242   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1            2467   15709
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0             575     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1             108     683
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
6 months    ki1000304b-SAS-CompFeed    INDIA                          0             969    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          1             365    1334
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0             232     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1             148     380
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
6 months    ki1119695-PROBIT           BELARUS                        0           15627   15757
6 months    ki1119695-PROBIT           BELARUS                        1             130   15757
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0            7414    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1             850    8264
6 months    ki1135781-COHORTS          GUATEMALA                      0             809     963
6 months    ki1135781-COHORTS          GUATEMALA                      1             154     963
6 months    ki1135781-COHORTS          INDIA                          0            6034    6850
6 months    ki1135781-COHORTS          INDIA                          1             816    6850
6 months    ki1135781-COHORTS          PHILIPPINES                    0            2549    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    1             157    2706
6 months    ki1148112-LCNI-5           MALAWI                         0             530     839
6 months    ki1148112-LCNI-5           MALAWI                         1             309     839
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0           11717   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1            5067   16784
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0            3473    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1            1360    4833
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
24 months   ki1119695-PROBIT           BELARUS                        0            3960    3971
24 months   ki1119695-PROBIT           BELARUS                        1              11    3971
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0             324     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1              99     423
24 months   ki1135781-COHORTS          GUATEMALA                      0             744    1082
24 months   ki1135781-COHORTS          GUATEMALA                      1             338    1082
24 months   ki1135781-COHORTS          INDIA                          0            4656    5291
24 months   ki1135781-COHORTS          INDIA                          1             635    5291
24 months   ki1135781-COHORTS          PHILIPPINES                    0            2311    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    1             138    2449
24 months   ki1148112-LCNI-5           MALAWI                         0             365     563
24 months   ki1148112-LCNI-5           MALAWI                         1             198     563
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0            5933    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1            2670    8603
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0            3380    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1            1355    4735


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
![](/tmp/46f6ab24-5b66-4293-9592-50ed4519c359/c225575a-53d1-4935-9010-a09a05f33c82/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.5539522   -0.9923653   -0.1155390
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed           1.0932738    0.3571494    1.8293982
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.0364410   -1.3644509   -0.7084310
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.5575515   -1.0245321   -0.0905708
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0330371   -0.1477397    0.0816655
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.4950717   -1.0495526    0.0594092
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.6732734   -0.1991873    1.5457341
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0698054   -1.4659132    1.3263024
Birth       ki1000108-IRC              INDIA                          optimal              observed           0.2968121   -0.3293146    0.9229388
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.3020747   -0.8014229    0.1972736
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed           1.7323787    1.6491078    1.8156495
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           0.5472599    0.5157687    0.5787510
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.1747260    0.0363716    0.3130804
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.3437877   -0.9333315    0.2457562
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.6888790   -0.8257472   -0.5520108
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.2667541   -0.5674192    0.0339109
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.6187901   -0.6631322   -0.5744480
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.3075352   -0.4458370   -0.1692334
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.3117563   -0.4467632   -0.1767495
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           1.0537640    0.8809315    1.2265964
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.7859725   -0.9166950   -0.6552501
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.1460452    0.0070331    0.2850574
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           1.1800690    0.9239304    1.4362076
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           1.0485702    0.5024920    1.5946485
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.6068907    0.2949205    0.9188608
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.4643831   -0.6320281   -0.2967381
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.4126784   -0.8762269    0.0508700
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -0.6425114   -0.8545113   -0.4305114
6 months    ki1000109-ResPak           PAKISTAN                       optimal              observed           0.0195884   -0.1841807    0.2233575
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.6097647   -0.7420587   -0.4774707
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.9420810   -1.1087018   -0.7754601
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.4784303   -0.5747341   -0.3821265
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1748864   -0.2732007   -0.0765721
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.0531171   -0.0310952    0.1373294
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0482828   -0.0798283    0.1763938
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.1660837   -0.2647931   -0.0673744
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.0434292   -0.1686972    0.0818389
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.5195920   -0.6244993   -0.4146847
6 months    ki1114097-CMIN             BANGLADESH                     optimal              observed          -0.5725008   -0.7812372   -0.3637644
6 months    ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed          -0.0048496   -0.0878182    0.0781191
6 months    ki1114097-CMIN             PERU                           optimal              observed           0.6938132    0.6025175    0.7851088
6 months    ki1114097-CONTENT          PERU                           optimal              observed           1.0377192    0.8535935    1.2218450
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.5714042    0.4931052    0.6497032
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.2811842    0.2347574    0.3276110
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.2302221    0.1535042    0.3069401
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.6477200   -0.6765930   -0.6188469
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.2907924   -0.3637577   -0.2178270
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.5222196    0.4341258    0.6103134
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.5499611   -0.5728459   -0.5270762
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.3461867   -0.3898335   -0.3025399
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.7560351   -0.8926802   -0.6193900
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.4749194    0.2576268    0.6922119
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.8246720   -1.0044545   -0.6448894
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.4237015   -0.5420800   -0.3053230
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.2198439    0.1080677    0.3316202
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.3597876    0.1418398    0.5777354
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0208259   -0.1575650    0.1159133
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.4493239   -0.5634491   -0.3351988
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.7106334   -0.8082628   -0.6130040
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.8826609   -0.9873601   -0.7779617
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.8527702   -0.9424061   -0.7631342
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.5469682   -0.6464685   -0.4474678
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.7874258   -0.8369840   -0.7378677
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.0827868   -1.2174226   -0.9481509
24 months   ki1114097-CMIN             BANGLADESH                     optimal              observed          -0.7666359   -0.8994807   -0.6337911
24 months   ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed          -0.0769599   -0.1746506    0.0207307
24 months   ki1114097-CMIN             PERU                           optimal              observed           0.7338790    0.6457559    0.8220022
24 months   ki1114097-CONTENT          PERU                           optimal              observed           0.6108550    0.4670270    0.7546830
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.8399493    0.6390723    1.0408263
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -1.1885101   -1.3736584   -1.0033618
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1895820   -0.2526974   -0.1264667
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.5540764   -0.5838513   -0.5243015
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.5902848   -0.6277838   -0.5527858
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed           0.0988561   -0.0009824    0.1986947
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.2011656   -1.2279330   -1.1743981
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.1355658   -1.1722322   -1.0988994


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
Birth       ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.2697590   -0.5399211    0.0004030
Birth       ki1101329-Keneba           GAMBIA                         observed             observed           1.7036191    1.6208471    1.7863911
Birth       ki1119695-PROBIT           BELARUS                        observed             observed          -1.1463469   -1.3562674   -0.9364264
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.5151425   -0.5409938   -0.4892911
Birth       ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.0621429   -1.1631387   -0.9611471
Birth       ki1135781-COHORTS          INDIA                          observed             observed          -0.9847457   -1.0145305   -0.9549609
Birth       ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.7427251   -0.7890855   -0.6963647
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.7240996   -0.7439385   -0.7042607
Birth       kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.3683163   -0.4490504   -0.2875821
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
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.6657084   -0.8024377   -0.5289791
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             observed          -1.0121579   -1.1280429   -0.8962729
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
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.5789633    0.5190130    0.6389137
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed           0.3047138    0.2786437    0.3307839
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed           0.1940810    0.1226351    0.2655269
6 months    ki1135781-COHORTS          INDIA                          observed             observed          -0.6908803   -0.7184601   -0.6633005
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.2938433   -0.3352064   -0.2524802
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed           0.4499285    0.3788279    0.5210291
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.5935161   -0.6130518   -0.5739805
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.3898055   -0.4270507   -0.3525603
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
24 months   ki1119695-PROBIT           BELARUS                        observed             observed           0.6863435    0.5745700    0.7981170
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -1.1809929   -1.2809380   -1.0810478
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -0.2815804   -0.3354498   -0.2277110
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -0.6073238   -0.6354743   -0.5791732
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.6099592   -0.6467541   -0.5731643
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -0.0478508   -0.1297321    0.0340305
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.2978031   -1.3210763   -1.2745298
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.2231088   -1.2549632   -1.1912543


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.4091184   -0.8158175   -0.0024193
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.6893940   -1.4004196    0.0216316
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.0326723   -0.3217413    0.2563966
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.3469128   -0.7923222    0.0984965
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0405471   -0.0802927   -0.0008016
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.4387926   -0.0793408    0.9569260
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1199469   -0.6986878    0.9385816
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.5576946   -1.8364149    0.7210257
Birth       ki1000108-IRC              INDIA                          optimal              observed          -1.3073952   -1.9168079   -0.6979825
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed           0.0323156   -0.4313216    0.4959529
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0287596   -0.0544200   -0.0030991
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -1.6936068   -1.9071781   -1.4800355
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.6898685   -0.8237360   -0.5560010
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.7183552   -1.2991581   -0.1375523
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.2958667   -0.4277660   -0.1639675
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.4759709   -0.7714641   -0.1804778
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1053094   -0.1445821   -0.0660367
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0607810   -0.1764955    0.0549334
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.1719603    0.0708994    0.2730213
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0820415   -0.1381023   -0.0259806
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed           0.0825756    0.0057759    0.1593754
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0350001   -0.0827938    0.0127937
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.1256734   -0.3431006    0.0917539
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.5064967   -1.0190446    0.0060512
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0898394   -0.3622661    0.1825873
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0382935   -0.1249391    0.0483520
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.1862513   -0.6151355    0.2426329
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -0.0787652   -0.2426964    0.0851659
6 months    ki1000109-ResPak           PAKISTAN                       optimal              observed          -0.1879501   -0.3085150   -0.0673852
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.0559437   -0.1029771   -0.0089103
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.0700769   -0.1777534    0.0375995
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed           0.0395201   -0.0303716    0.1094118
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0334842   -0.0893772    0.0224089
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0233549   -0.0582600    0.0115503
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0326504   -0.0844013    0.1497022
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0185386   -0.1017269    0.0646497
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.0405842   -0.1044453    0.0232768
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0852067   -0.1596544   -0.0107590
6 months    ki1114097-CMIN             BANGLADESH                     optimal              observed          -0.0055444   -0.1517474    0.1406585
6 months    ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed          -0.0369584   -0.0671507   -0.0067662
6 months    ki1114097-CMIN             PERU                           optimal              observed          -0.0217115   -0.0434524    0.0000294
6 months    ki1114097-CONTENT          PERU                           optimal              observed           0.0307126   -0.1330059    0.1944310
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.0075591   -0.0554407    0.0705590
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.0235296   -0.0147806    0.0618398
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0361411   -0.0690034   -0.0032788
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.0431603   -0.0543336   -0.0319871
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0030509   -0.0646770    0.0585752
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.0722911   -0.1299017   -0.0146804
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0435551   -0.0551973   -0.0319128
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0436188   -0.0671071   -0.0201305
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0647904   -0.1116086   -0.0179721
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0282922   -0.0925714    0.0359871
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.1276188   -0.2665571    0.0113196
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.0472541   -0.0520923    0.1466006
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0999434   -0.1757317   -0.0241552
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.0669141   -0.1180038    0.2518319
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0709193   -0.0095660    0.1514047
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.1078266   -0.1610834   -0.0545698
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.0351816   -0.0678092   -0.0025540
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.0289181   -0.0778722    0.0200359
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0351710   -0.0739406    0.0035985
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0633820   -0.1049196   -0.0218444
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0225031   -0.0393731   -0.0056332
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0487996   -0.1574803    0.0598811
24 months   ki1114097-CMIN             BANGLADESH                     optimal              observed          -0.0869032   -0.1747933    0.0009869
24 months   ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed          -0.0672839   -0.1092158   -0.0253520
24 months   ki1114097-CMIN             PERU                           optimal              observed          -0.0861013   -0.1279953   -0.0442072
24 months   ki1114097-CONTENT          PERU                           optimal              observed          -0.0440257   -0.0895712    0.0015197
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.1536058   -0.3449435    0.0377319
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.0075172   -0.1397399    0.1547743
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0919984   -0.1295696   -0.0544272
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.0532473   -0.0639850   -0.0425097
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0196744   -0.0301609   -0.0091878
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.1467069   -0.2093223   -0.0840916
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0966375   -0.1116922   -0.0815828
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0875430   -0.1079605   -0.0671254
