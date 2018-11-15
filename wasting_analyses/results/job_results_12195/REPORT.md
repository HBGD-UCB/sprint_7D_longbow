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

**Outcome Variable:** swasted

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

agecat      studyid                    country                        single    swasted   n_cell       n
----------  -------------------------  -----------------------------  -------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               0      233     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               1        8     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     1               0        0     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     1               1        0     241
Birth       ki0047075b-MAL-ED          BRAZIL                         0               0      159     183
Birth       ki0047075b-MAL-ED          BRAZIL                         0               1        0     183
Birth       ki0047075b-MAL-ED          BRAZIL                         1               0       24     183
Birth       ki0047075b-MAL-ED          BRAZIL                         1               1        0     183
Birth       ki0047075b-MAL-ED          INDIA                          0               0      195     202
Birth       ki0047075b-MAL-ED          INDIA                          0               1        7     202
Birth       ki0047075b-MAL-ED          INDIA                          1               0        0     202
Birth       ki0047075b-MAL-ED          INDIA                          1               1        0     202
Birth       ki0047075b-MAL-ED          NEPAL                          0               0      164     168
Birth       ki0047075b-MAL-ED          NEPAL                          0               1        4     168
Birth       ki0047075b-MAL-ED          NEPAL                          1               0        0     168
Birth       ki0047075b-MAL-ED          NEPAL                          1               1        0     168
Birth       ki0047075b-MAL-ED          PERU                           0               0      247     279
Birth       ki0047075b-MAL-ED          PERU                           0               1        0     279
Birth       ki0047075b-MAL-ED          PERU                           1               0       32     279
Birth       ki0047075b-MAL-ED          PERU                           1               1        0     279
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0               0      145     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0               1        0     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1               0      111     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1               1        2     258
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               0      111     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               1        1     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0        6     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        0     118
Birth       ki1119695-PROBIT           BELARUS                        0               0    12418   13824
Birth       ki1119695-PROBIT           BELARUS                        0               1      868   13824
Birth       ki1119695-PROBIT           BELARUS                        1               0      495   13824
Birth       ki1119695-PROBIT           BELARUS                        1               1       43   13824
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0               0    11340   12863
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0               1      724   12863
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1               0      735   12863
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1               1       64   12863
Birth       ki1135781-COHORTS          GUATEMALA                      0               0      602     691
Birth       ki1135781-COHORTS          GUATEMALA                      0               1       52     691
Birth       ki1135781-COHORTS          GUATEMALA                      1               0       35     691
Birth       ki1135781-COHORTS          GUATEMALA                      1               1        2     691
Birth       ki1135781-COHORTS          INDIA                          0               0     4242    4463
Birth       ki1135781-COHORTS          INDIA                          0               1      214    4463
Birth       ki1135781-COHORTS          INDIA                          1               0        7    4463
Birth       ki1135781-COHORTS          INDIA                          1               1        0    4463
Birth       ki1135781-COHORTS          PHILIPPINES                    0               0     2674    2860
Birth       ki1135781-COHORTS          PHILIPPINES                    0               1      115    2860
Birth       ki1135781-COHORTS          PHILIPPINES                    1               0       66    2860
Birth       ki1135781-COHORTS          PHILIPPINES                    1               1        5    2860
6 months    ki0047075b-MAL-ED          BANGLADESH                     0               0      239     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     0               1        2     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1               0        0     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1               1        0     241
6 months    ki0047075b-MAL-ED          BRAZIL                         0               0      179     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0               1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1               0       30     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1               1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          0               0      229     234
6 months    ki0047075b-MAL-ED          INDIA                          0               1        5     234
6 months    ki0047075b-MAL-ED          INDIA                          1               0        0     234
6 months    ki0047075b-MAL-ED          INDIA                          1               1        0     234
6 months    ki0047075b-MAL-ED          NEPAL                          0               0      236     236
6 months    ki0047075b-MAL-ED          NEPAL                          0               1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          1               0        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          1               1        0     236
6 months    ki0047075b-MAL-ED          PERU                           0               0      240     273
6 months    ki0047075b-MAL-ED          PERU                           0               1        0     273
6 months    ki0047075b-MAL-ED          PERU                           1               0       33     273
6 months    ki0047075b-MAL-ED          PERU                           1               1        0     273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               0      138     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               1        2     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1               0      113     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1               1        1     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               0      239     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0        8     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        0     247
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               0     1825    2012
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1        9    2012
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0      175    2012
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        3    2012
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0               0      248     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0               1        0     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1               0       29     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1               1        0     277
6 months    ki1119695-PROBIT           BELARUS                        0               0    15098   15757
6 months    ki1119695-PROBIT           BELARUS                        0               1       16   15757
6 months    ki1119695-PROBIT           BELARUS                        1               0      643   15757
6 months    ki1119695-PROBIT           BELARUS                        1               1        0   15757
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0               0     7673    8234
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0               1       73    8234
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1               0      483    8234
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1               1        5    8234
6 months    ki1135781-COHORTS          GUATEMALA                      0               0      822     894
6 months    ki1135781-COHORTS          GUATEMALA                      0               1        5     894
6 months    ki1135781-COHORTS          GUATEMALA                      1               0       66     894
6 months    ki1135781-COHORTS          GUATEMALA                      1               1        1     894
6 months    ki1135781-COHORTS          INDIA                          0               0     4802    4964
6 months    ki1135781-COHORTS          INDIA                          0               1      153    4964
6 months    ki1135781-COHORTS          INDIA                          1               0        9    4964
6 months    ki1135781-COHORTS          INDIA                          1               1        0    4964
6 months    ki1135781-COHORTS          PHILIPPINES                    0               0     2573    2674
6 months    ki1135781-COHORTS          PHILIPPINES                    0               1       33    2674
6 months    ki1135781-COHORTS          PHILIPPINES                    1               0       67    2674
6 months    ki1135781-COHORTS          PHILIPPINES                    1               1        1    2674
24 months   ki0047075b-MAL-ED          BANGLADESH                     0               0      212     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0               1        0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1               0        0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1               1        0     212
24 months   ki0047075b-MAL-ED          BRAZIL                         0               0      148     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0               1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1               0       20     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1               1        1     169
24 months   ki0047075b-MAL-ED          INDIA                          0               0      223     225
24 months   ki0047075b-MAL-ED          INDIA                          0               1        2     225
24 months   ki0047075b-MAL-ED          INDIA                          1               0        0     225
24 months   ki0047075b-MAL-ED          INDIA                          1               1        0     225
24 months   ki0047075b-MAL-ED          NEPAL                          0               0      228     228
24 months   ki0047075b-MAL-ED          NEPAL                          0               1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          1               0        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          1               1        0     228
24 months   ki0047075b-MAL-ED          PERU                           0               0      175     201
24 months   ki0047075b-MAL-ED          PERU                           0               1        1     201
24 months   ki0047075b-MAL-ED          PERU                           1               0       25     201
24 months   ki0047075b-MAL-ED          PERU                           1               1        0     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               0      131     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1               0      107     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1               1        0     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               0      208     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0        6     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        0     214
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               0        6       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        0       6
24 months   ki1119695-PROBIT           BELARUS                        0               0     3826    3971
24 months   ki1119695-PROBIT           BELARUS                        0               1        3    3971
24 months   ki1119695-PROBIT           BELARUS                        1               0      141    3971
24 months   ki1119695-PROBIT           BELARUS                        1               1        1    3971
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0               0      350     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0               1       29     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1               0       42     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1               1        1     422
24 months   ki1135781-COHORTS          GUATEMALA                      0               0      928    1021
24 months   ki1135781-COHORTS          GUATEMALA                      0               1        4    1021
24 months   ki1135781-COHORTS          GUATEMALA                      1               0       89    1021
24 months   ki1135781-COHORTS          GUATEMALA                      1               1        0    1021
24 months   ki1135781-COHORTS          INDIA                          0               0     3676    3726
24 months   ki1135781-COHORTS          INDIA                          0               1       41    3726
24 months   ki1135781-COHORTS          INDIA                          1               0        9    3726
24 months   ki1135781-COHORTS          INDIA                          1               1        0    3726
24 months   ki1135781-COHORTS          PHILIPPINES                    0               0     2336    2420
24 months   ki1135781-COHORTS          PHILIPPINES                    0               1       25    2420
24 months   ki1135781-COHORTS          PHILIPPINES                    1               0       59    2420
24 months   ki1135781-COHORTS          PHILIPPINES                    1               1        0    2420


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/e3429c37-cec8-4afc-a8a0-cac9ad8f1fef/b077d765-1667-4655-b50e-6cdfa5747c12/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e3429c37-cec8-4afc-a8a0-cac9ad8f1fef/b077d765-1667-4655-b50e-6cdfa5747c12/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e3429c37-cec8-4afc-a8a0-cac9ad8f1fef/b077d765-1667-4655-b50e-6cdfa5747c12/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e3429c37-cec8-4afc-a8a0-cac9ad8f1fef/b077d765-1667-4655-b50e-6cdfa5747c12/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat     studyid              country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  -------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth      ki1119695-PROBIT     BELARUS       0                    NA                0.0653319   0.0318672   0.0987967
Birth      ki1119695-PROBIT     BELARUS       1                    NA                0.0799257   0.0458755   0.1139758
Birth      ki1126311-ZVITAMBO   ZIMBABWE      0                    NA                0.0600133   0.0557748   0.0642517
Birth      ki1126311-ZVITAMBO   ZIMBABWE      1                    NA                0.0801001   0.0612776   0.0989227
Birth      ki1135781-COHORTS    PHILIPPINES   0                    NA                0.0412334   0.0338530   0.0486138
Birth      ki1135781-COHORTS    PHILIPPINES   1                    NA                0.0704225   0.0108983   0.1299467
6 months   ki1126311-ZVITAMBO   ZIMBABWE      0                    NA                0.0094242   0.0072724   0.0115760
6 months   ki1126311-ZVITAMBO   ZIMBABWE      1                    NA                0.0102459   0.0013107   0.0191811


### Parameter: E(Y)


agecat     studyid              country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  -------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth      ki1119695-PROBIT     BELARUS       NA                   NA                0.0658999   0.0328405   0.0989593
Birth      ki1126311-ZVITAMBO   ZIMBABWE      NA                   NA                0.0612610   0.0571166   0.0654053
Birth      ki1135781-COHORTS    PHILIPPINES   NA                   NA                0.0419580   0.0346088   0.0493073
6 months   ki1126311-ZVITAMBO   ZIMBABWE      NA                   NA                0.0094729   0.0073805   0.0115653


### Parameter: RR


agecat     studyid              country       intervention_level   baseline_level    estimate    ci_lower   ci_upper
---------  -------------------  ------------  -------------------  ---------------  ---------  ----------  ---------
Birth      ki1119695-PROBIT     BELARUS       0                    0                 1.000000   1.0000000   1.000000
Birth      ki1119695-PROBIT     BELARUS       1                    0                 1.223378   0.8333627   1.795921
Birth      ki1126311-ZVITAMBO   ZIMBABWE      0                    0                 1.000000   1.0000000   1.000000
Birth      ki1126311-ZVITAMBO   ZIMBABWE      1                    0                 1.334707   1.0442934   1.705884
Birth      ki1135781-COHORTS    PHILIPPINES   0                    0                 1.000000   1.0000000   1.000000
Birth      ki1135781-COHORTS    PHILIPPINES   1                    0                 1.707900   0.7198423   4.052167
6 months   ki1126311-ZVITAMBO   ZIMBABWE      0                    0                 1.000000   1.0000000   1.000000
6 months   ki1126311-ZVITAMBO   ZIMBABWE      1                    0                 1.087188   0.4413692   2.677982


### Parameter: PAR


agecat     studyid              country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------  -------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
Birth      ki1119695-PROBIT     BELARUS       0                    NA                0.0005680   -0.0004853   0.0016212
Birth      ki1126311-ZVITAMBO   ZIMBABWE      0                    NA                0.0012477    0.0000463   0.0024491
Birth      ki1135781-COHORTS    PHILIPPINES   0                    NA                0.0007246   -0.0007737   0.0022229
6 months   ki1126311-ZVITAMBO   ZIMBABWE      0                    NA                0.0000487   -0.0004960   0.0005934


### Parameter: PAF


agecat     studyid              country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------  -------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
Birth      ki1119695-PROBIT     BELARUS       0                    NA                0.0086185   -0.0095864   0.0264950
Birth      ki1126311-ZVITAMBO   ZIMBABWE      0                    NA                0.0203673    0.0006018   0.0397418
Birth      ki1135781-COHORTS    PHILIPPINES   0                    NA                0.0172702   -0.0189741   0.0522254
6 months   ki1126311-ZVITAMBO   ZIMBABWE      0                    NA                0.0051408   -0.0540439   0.0610022
