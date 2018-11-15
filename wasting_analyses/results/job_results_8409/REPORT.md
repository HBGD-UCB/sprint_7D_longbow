---
title: "Risk Factor Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowRiskFactors','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
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
      W: ['apgar1', 'apgar5', 'gagebrth', 'mage', 'meducyrs', 'sexn']
      A: ['parity_cat']
      Y: ['haz01']
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
        value: TRUE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
  output_directory:
    value: ''
editor_options: 
  chunk_output_type: console
---







## Methods
## Outcome Variable

**Outcome Variable:** pers_wast

## Predictor Variables

**Intervention Variable:** single

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        single    pers_wast   n_cell       n
------------  -------------------------  -----------------------------  -------  ----------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 0      235     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 1       13     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 0        0     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 1        0     248
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                 0      185     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                 1        1     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                 0       30     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                 1        1     217
0-24 months   ki0047075b-MAL-ED          INDIA                          0                 0      218     239
0-24 months   ki0047075b-MAL-ED          INDIA                          0                 1       21     239
0-24 months   ki0047075b-MAL-ED          INDIA                          1                 0        0     239
0-24 months   ki0047075b-MAL-ED          INDIA                          1                 1        0     239
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                 0      234     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                 1        4     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                 0        0     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                 1        0     238
0-24 months   ki0047075b-MAL-ED          PERU                           0                 0      249     284
0-24 months   ki0047075b-MAL-ED          PERU                           0                 1        1     284
0-24 months   ki0047075b-MAL-ED          PERU                           1                 0       34     284
0-24 months   ki0047075b-MAL-ED          PERU                           1                 1        0     284
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0      154     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        1     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0      117     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        1     273
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0      244     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1        0     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0        9     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        0     253
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 0     1896    2148
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 1       53    2148
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0      194    2148
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1        5    2148
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                 0      221     251
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                 1        3     251
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                 0       26     251
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                 1        1     251
0-24 months   ki1119695-PROBIT           BELARUS                        0                 0    15755   16581
0-24 months   ki1119695-PROBIT           BELARUS                        0                 1      149   16581
0-24 months   ki1119695-PROBIT           BELARUS                        1                 0      667   16581
0-24 months   ki1119695-PROBIT           BELARUS                        1                 1       10   16581
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                 0     8563    9295
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                 1      154    9295
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                 0      568    9295
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                 1       10    9295
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                 0      880     990
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                 1       30     990
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                 0       76     990
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                 1        4     990
0-24 months   ki1135781-COHORTS          INDIA                          0                 0     3707    4127
0-24 months   ki1135781-COHORTS          INDIA                          0                 1      413    4127
0-24 months   ki1135781-COHORTS          INDIA                          1                 0        7    4127
0-24 months   ki1135781-COHORTS          INDIA                          1                 1        0    4127
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                 0     2571    2778
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                 1      136    2778
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                 0       63    2778
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                 1        8    2778
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                 0      241     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                 1        7     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 0        0     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 1        0     248
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                 0      186     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                 1        0     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                 0       30     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                 1        1     217
0-6 months    ki0047075b-MAL-ED          INDIA                          0                 0      219     238
0-6 months    ki0047075b-MAL-ED          INDIA                          0                 1       19     238
0-6 months    ki0047075b-MAL-ED          INDIA                          1                 0        0     238
0-6 months    ki0047075b-MAL-ED          INDIA                          1                 1        0     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                 0      232     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                 1        5     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                 0        0     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                 1        0     237
0-6 months    ki0047075b-MAL-ED          PERU                           0                 0      250     284
0-6 months    ki0047075b-MAL-ED          PERU                           0                 1        0     284
0-6 months    ki0047075b-MAL-ED          PERU                           1                 0       34     284
0-6 months    ki0047075b-MAL-ED          PERU                           1                 1        0     284
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0      152     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        2     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0      117     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        0     271
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0      244     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1        0     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0        9     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        0     253
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 0     1814    2044
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 1       45    2044
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0      178    2044
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1        7    2044
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 0      217     234
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 1       17     234
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 0        0     234
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 1        0     234
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                 0      169     197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                 1        1     197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                 0       26     197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                 1        1     197
6-24 months   ki0047075b-MAL-ED          INDIA                          0                 0      202     229
6-24 months   ki0047075b-MAL-ED          INDIA                          0                 1       27     229
6-24 months   ki0047075b-MAL-ED          INDIA                          1                 0        0     229
6-24 months   ki0047075b-MAL-ED          INDIA                          1                 1        0     229
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                 0      229     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                 1        2     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                 0        0     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                 1        0     231
6-24 months   ki0047075b-MAL-ED          PERU                           0                 0      218     251
6-24 months   ki0047075b-MAL-ED          PERU                           0                 1        2     251
6-24 months   ki0047075b-MAL-ED          PERU                           1                 0       31     251
6-24 months   ki0047075b-MAL-ED          PERU                           1                 1        0     251
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0      141     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        1     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0      112     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        1     255
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0      230     238
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1        0     238
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0        8     238
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        0     238
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 0     1466    1696
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 1       76    1696
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0      146    1696
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1        8    1696
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                 0      192     217
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                 1        2     217
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                 0       22     217
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                 1        1     217
6-24 months   ki1119695-PROBIT           BELARUS                        0                 0     6810    7097
6-24 months   ki1119695-PROBIT           BELARUS                        0                 1        2    7097
6-24 months   ki1119695-PROBIT           BELARUS                        1                 0      285    7097
6-24 months   ki1119695-PROBIT           BELARUS                        1                 1        0    7097
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                 0     1988    2223
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                 1       90    2223
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                 0      140    2223
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                 1        5    2223
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                 0      782     889
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                 1       35     889
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                 0       67     889
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                 1        5     889
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                 0     2361    2609
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                 1      186    2609
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                 0       55    2609
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                 1        7    2609


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/3fb7903b-23a7-4844-8106-e21fdb5b0ab9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3fb7903b-23a7-4844-8106-e21fdb5b0ab9/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3fb7903b-23a7-4844-8106-e21fdb5b0ab9/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3fb7903b-23a7-4844-8106-e21fdb5b0ab9/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0271934   0.0199709   0.0344159
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0251256   0.0033758   0.0468754
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                0.0093687   0.0050895   0.0136480
0-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.0147710   0.0048345   0.0247076
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0176666   0.0149010   0.0204323
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0173010   0.0066705   0.0279315
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0502401   0.0420098   0.0584704
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1126761   0.0391140   0.1862381
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0242066   0.0172184   0.0311947
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0378378   0.0103364   0.0653393
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0492866   0.0384792   0.0600941
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0519481   0.0168877   0.0870084
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0433109   0.0345569   0.0520649
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0344828   0.0047769   0.0641887
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0428397   0.0289466   0.0567327
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.0694444   0.0106933   0.1281956
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0730271   0.0629208   0.0831334
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1129032   0.0341127   0.1916938


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0270019   0.0201456   0.0338581
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0095893   0.0052864   0.0138922
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0176439   0.0149673   0.0203205
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0518359   0.0435904   0.0600814
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0254403   0.0186125   0.0322681
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0495283   0.0391993   0.0598573
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0427350   0.0343253   0.0511448
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0449944   0.0313604   0.0586284
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0739747   0.0639298   0.0840196


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.9239594   0.3736040   2.285042
0-24 months   ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT           BELARUS                        1                    0                 1.5766360   0.8540925   2.910435
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 0.9793062   0.5194511   1.846258
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 2.2427506   1.1440794   4.396487
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.5631231   0.7150723   3.416933
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.0539986   0.5183789   2.143053
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 0.7961686   0.3286345   1.928843
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                 1.6210317   0.6550910   4.011266
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 1.5460458   0.7590039   3.149203


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0001916   -0.0023149   0.0019318
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0002206   -0.0001379   0.0005791
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0000227   -0.0007058   0.0006603
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0015957   -0.0003313   0.0035227
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0012338   -0.0013401   0.0038076
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0002417   -0.0030899   0.0035732
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0005758   -0.0025979   0.0014462
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0021547   -0.0027580   0.0070674
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0009476   -0.0009544   0.0028497


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0070947   -0.0888621   0.0685324
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0230024   -0.0154335   0.0599834
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0012885   -0.0407595   0.0366855
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0307844   -0.0068119   0.0669768
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0484959   -0.0573614   0.1437553
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0048793   -0.0647048   0.0699156
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0134745   -0.0618414   0.0326893
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0478886   -0.0668156   0.1502598
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0128100   -0.0131890   0.0381418
