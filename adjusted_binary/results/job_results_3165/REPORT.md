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

**Outcome Variable:** sstunted

## Predictor Variables

**Intervention Variable:** single

**Adjustment Set:**

* arm
* W_mage
* W_fage
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* delta_W_mage
* delta_W_fage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        single    sstunted   n_cell       n
----------  -------------------------  -----------------------------  -------  ---------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                0      248     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                1        9     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                0        0     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                1        0     257
Birth       ki0047075b-MAL-ED          BRAZIL                         0                0      160     191
Birth       ki0047075b-MAL-ED          BRAZIL                         0                1        6     191
Birth       ki0047075b-MAL-ED          BRAZIL                         1                0       23     191
Birth       ki0047075b-MAL-ED          BRAZIL                         1                1        2     191
Birth       ki0047075b-MAL-ED          INDIA                          0                0      198     205
Birth       ki0047075b-MAL-ED          INDIA                          0                1        7     205
Birth       ki0047075b-MAL-ED          INDIA                          1                0        0     205
Birth       ki0047075b-MAL-ED          INDIA                          1                1        0     205
Birth       ki0047075b-MAL-ED          NEPAL                          0                0      167     173
Birth       ki0047075b-MAL-ED          NEPAL                          0                1        6     173
Birth       ki0047075b-MAL-ED          NEPAL                          1                0        0     173
Birth       ki0047075b-MAL-ED          NEPAL                          1                1        0     173
Birth       ki0047075b-MAL-ED          PERU                           0                0      247     287
Birth       ki0047075b-MAL-ED          PERU                           0                1        6     287
Birth       ki0047075b-MAL-ED          PERU                           1                0       32     287
Birth       ki0047075b-MAL-ED          PERU                           1                1        2     287
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                0      146     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                1        0     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                0      114     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        2     262
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                0      111     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                1        6     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0        6     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1        0     123
Birth       ki1119695-PROBIT           BELARUS                        0                0    13338   13884
Birth       ki1119695-PROBIT           BELARUS                        0                1        5   13884
Birth       ki1119695-PROBIT           BELARUS                        1                0      541   13884
Birth       ki1119695-PROBIT           BELARUS                        1                1        0   13884
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                0    12496   13772
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                1      406   13772
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                0      838   13772
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                1       32   13772
Birth       ki1135781-COHORTS          GUATEMALA                      0                0      712     767
Birth       ki1135781-COHORTS          GUATEMALA                      0                1        7     767
Birth       ki1135781-COHORTS          GUATEMALA                      1                0       46     767
Birth       ki1135781-COHORTS          GUATEMALA                      1                1        2     767
Birth       ki1135781-COHORTS          INDIA                          0                0     4630    4778
Birth       ki1135781-COHORTS          INDIA                          0                1      141    4778
Birth       ki1135781-COHORTS          INDIA                          1                0        7    4778
Birth       ki1135781-COHORTS          INDIA                          1                1        0    4778
Birth       ki1135781-COHORTS          PHILIPPINES                    0                0     2893    3010
Birth       ki1135781-COHORTS          PHILIPPINES                    0                1       43    3010
Birth       ki1135781-COHORTS          PHILIPPINES                    1                0       72    3010
Birth       ki1135781-COHORTS          PHILIPPINES                    1                1        2    3010
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                0      233     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                1        8     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                0        0     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                1        0     241
6 months    ki0047075b-MAL-ED          BRAZIL                         0                0      179     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                0       30     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          0                0      225     234
6 months    ki0047075b-MAL-ED          INDIA                          0                1        9     234
6 months    ki0047075b-MAL-ED          INDIA                          1                0        0     234
6 months    ki0047075b-MAL-ED          INDIA                          1                1        0     234
6 months    ki0047075b-MAL-ED          NEPAL                          0                0      235     236
6 months    ki0047075b-MAL-ED          NEPAL                          0                1        1     236
6 months    ki0047075b-MAL-ED          NEPAL                          1                0        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          1                1        0     236
6 months    ki0047075b-MAL-ED          PERU                           0                0      231     273
6 months    ki0047075b-MAL-ED          PERU                           0                1        9     273
6 months    ki0047075b-MAL-ED          PERU                           1                0       30     273
6 months    ki0047075b-MAL-ED          PERU                           1                1        3     273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                0      139     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                1        1     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                0      109     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        5     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                0      225     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                1       14     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0        8     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1        0     247
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0     1818    2013
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1       17    2013
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0      176    2013
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        2    2013
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                0      230     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                1       18     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                0       22     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                1        7     277
6 months    ki1119695-PROBIT           BELARUS                        0                0    14893   15761
6 months    ki1119695-PROBIT           BELARUS                        0                1      225   15761
6 months    ki1119695-PROBIT           BELARUS                        1                0      625   15761
6 months    ki1119695-PROBIT           BELARUS                        1                1       18   15761
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                0     7466    8265
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                1      309    8265
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                0      454    8265
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                1       36    8265
6 months    ki1135781-COHORTS          GUATEMALA                      0                0      724     893
6 months    ki1135781-COHORTS          GUATEMALA                      0                1      102     893
6 months    ki1135781-COHORTS          GUATEMALA                      1                0       53     893
6 months    ki1135781-COHORTS          GUATEMALA                      1                1       14     893
6 months    ki1135781-COHORTS          INDIA                          0                0     4720    4971
6 months    ki1135781-COHORTS          INDIA                          0                1      242    4971
6 months    ki1135781-COHORTS          INDIA                          1                0        9    4971
6 months    ki1135781-COHORTS          INDIA                          1                1        0    4971
6 months    ki1135781-COHORTS          PHILIPPINES                    0                0     2482    2676
6 months    ki1135781-COHORTS          PHILIPPINES                    0                1      126    2676
6 months    ki1135781-COHORTS          PHILIPPINES                    1                0       64    2676
6 months    ki1135781-COHORTS          PHILIPPINES                    1                1        4    2676
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                0      186     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                1       26     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                0        0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                1        0     212
24 months   ki0047075b-MAL-ED          BRAZIL                         0                0      148     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                0       20     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                1        1     169
24 months   ki0047075b-MAL-ED          INDIA                          0                0      197     225
24 months   ki0047075b-MAL-ED          INDIA                          0                1       28     225
24 months   ki0047075b-MAL-ED          INDIA                          1                0        0     225
24 months   ki0047075b-MAL-ED          INDIA                          1                1        0     225
24 months   ki0047075b-MAL-ED          NEPAL                          0                0      221     228
24 months   ki0047075b-MAL-ED          NEPAL                          0                1        7     228
24 months   ki0047075b-MAL-ED          NEPAL                          1                0        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          1                1        0     228
24 months   ki0047075b-MAL-ED          PERU                           0                0      165     201
24 months   ki0047075b-MAL-ED          PERU                           0                1       11     201
24 months   ki0047075b-MAL-ED          PERU                           1                0       21     201
24 months   ki0047075b-MAL-ED          PERU                           1                1        4     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                0      120     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                1       11     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       92     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                1       15     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                0      142     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                1       66     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0        3     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1        3     214
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0        5       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        0       6
24 months   ki1119695-PROBIT           BELARUS                        0                0     3827    4035
24 months   ki1119695-PROBIT           BELARUS                        0                1       63    4035
24 months   ki1119695-PROBIT           BELARUS                        1                0      143    4035
24 months   ki1119695-PROBIT           BELARUS                        1                1        2    4035
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                0      302     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                1      111     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                0       24     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                1       19     456
24 months   ki1135781-COHORTS          GUATEMALA                      0                0      536    1013
24 months   ki1135781-COHORTS          GUATEMALA                      0                1      390    1013
24 months   ki1135781-COHORTS          GUATEMALA                      1                0       44    1013
24 months   ki1135781-COHORTS          GUATEMALA                      1                1       43    1013
24 months   ki1135781-COHORTS          INDIA                          0                0     2972    3756
24 months   ki1135781-COHORTS          INDIA                          0                1      775    3756
24 months   ki1135781-COHORTS          INDIA                          1                0        6    3756
24 months   ki1135781-COHORTS          INDIA                          1                1        3    3756
24 months   ki1135781-COHORTS          PHILIPPINES                    0                0     1684    2416
24 months   ki1135781-COHORTS          PHILIPPINES                    0                1      673    2416
24 months   ki1135781-COHORTS          PHILIPPINES                    1                0       46    2416
24 months   ki1135781-COHORTS          PHILIPPINES                    1                1       13    2416


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
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/6d8a3740-5458-46ef-a97a-269fb0f99214/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6d8a3740-5458-46ef-a97a-269fb0f99214/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6d8a3740-5458-46ef-a97a-269fb0f99214/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6d8a3740-5458-46ef-a97a-269fb0f99214/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                0.0314212   0.0284138   0.0344286
Birth       ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                0.0283305   0.0185609   0.0381000
6 months    ki1112895-Guatemala BSC   GUATEMALA      0                    NA                0.0725806   0.0402320   0.1049293
6 months    ki1112895-Guatemala BSC   GUATEMALA      1                    NA                0.2413793   0.0853534   0.3974052
6 months    ki1119695-PROBIT          BELARUS        0                    NA                0.0149152   0.0096825   0.0201480
6 months    ki1119695-PROBIT          BELARUS        1                    NA                0.0139100   0.0007185   0.0271016
6 months    ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                0.0397843   0.0354583   0.0441104
6 months    ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                0.0986055   0.0781538   0.1190572
6 months    ki1135781-COHORTS         GUATEMALA      0                    NA                0.1230908   0.1006473   0.1455343
6 months    ki1135781-COHORTS         GUATEMALA      1                    NA                0.2166951   0.1203889   0.3130013
24 months   ki0047075b-MAL-ED         SOUTH AFRICA   0                    NA                0.0849567   0.0382724   0.1316411
24 months   ki0047075b-MAL-ED         SOUTH AFRICA   1                    NA                0.1580178   0.0934991   0.2225365
24 months   ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                0.2684037   0.2257311   0.3110763
24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                0.4421600   0.2969720   0.5873481
24 months   ki1135781-COHORTS         GUATEMALA      0                    NA                0.4260883   0.3952117   0.4569650
24 months   ki1135781-COHORTS         GUATEMALA      1                    NA                0.6982408   0.6679870   0.7284945
24 months   ki1135781-COHORTS         PHILIPPINES    0                    NA                0.2856080   0.2673167   0.3038993
24 months   ki1135781-COHORTS         PHILIPPINES    1                    NA                0.2239709   0.1469433   0.3009985


### Parameter: E(Y)


agecat      studyid                   country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO        ZIMBABWE       NA                   NA                0.0318037   0.0288729   0.0347345
6 months    ki1112895-Guatemala BSC   GUATEMALA      NA                   NA                0.0902527   0.0564475   0.1240580
6 months    ki1119695-PROBIT          BELARUS        NA                   NA                0.0154178   0.0100323   0.0208033
6 months    ki1126311-ZVITAMBO        ZIMBABWE       NA                   NA                0.0417423   0.0374303   0.0460543
6 months    ki1135781-COHORTS         GUATEMALA      NA                   NA                0.1298992   0.1078368   0.1519617
24 months   ki0047075b-MAL-ED         SOUTH AFRICA   NA                   NA                0.1092437   0.0695290   0.1489584
24 months   ki1126311-ZVITAMBO        ZIMBABWE       NA                   NA                0.2850877   0.2436059   0.3265696
24 months   ki1135781-COHORTS         GUATEMALA      NA                   NA                0.4274432   0.3969638   0.4579226
24 months   ki1135781-COHORTS         PHILIPPINES    NA                   NA                0.2839404   0.2659568   0.3019240


### Parameter: RR


agecat      studyid                   country        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ------------------------  -------------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1126311-ZVITAMBO        ZIMBABWE       0                    0                 1.0000000   1.0000000   1.000000
Birth       ki1126311-ZVITAMBO        ZIMBABWE       1                    0                 0.9016353   0.6305767   1.289211
6 months    ki1112895-Guatemala BSC   GUATEMALA      0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1112895-Guatemala BSC   GUATEMALA      1                    0                 3.3256705   1.5166712   7.292342
6 months    ki1119695-PROBIT          BELARUS        0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1119695-PROBIT          BELARUS        1                    0                 0.9326053   0.3483225   2.496975
6 months    ki1126311-ZVITAMBO        ZIMBABWE       0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1126311-ZVITAMBO        ZIMBABWE       1                    0                 2.4785016   1.9631465   3.129145
6 months    ki1135781-COHORTS         GUATEMALA      0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS         GUATEMALA      1                    0                 1.7604493   1.0895976   2.844336
24 months   ki0047075b-MAL-ED         SOUTH AFRICA   0                    0                 1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED         SOUTH AFRICA   1                    0                 1.8599798   0.9470743   3.652855
24 months   ki1126311-ZVITAMBO        ZIMBABWE       0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    0                 1.6473696   1.1453298   2.369472
24 months   ki1135781-COHORTS         GUATEMALA      0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS         GUATEMALA      1                    0                 1.6387231   1.5127979   1.775130
24 months   ki1135781-COHORTS         PHILIPPINES    0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS         PHILIPPINES    1                    0                 0.7841899   0.5527589   1.112517


### Parameter: PAR


agecat      studyid                   country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                 0.0003825   -0.0004254   0.0011904
6 months    ki1112895-Guatemala BSC   GUATEMALA      0                    NA                 0.0176721   -0.0000894   0.0354335
6 months    ki1119695-PROBIT          BELARUS        0                    NA                 0.0005026   -0.0001161   0.0011212
6 months    ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                 0.0019580    0.0005788   0.0033372
6 months    ki1135781-COHORTS         GUATEMALA      0                    NA                 0.0068084   -0.0007907   0.0144075
24 months   ki0047075b-MAL-ED         SOUTH AFRICA   0                    NA                 0.0242870   -0.0116324   0.0602063
24 months   ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                 0.0166841    0.0014687   0.0318994
24 months   ki1135781-COHORTS         GUATEMALA      0                    NA                 0.0013549   -0.0069010   0.0096109
24 months   ki1135781-COHORTS         PHILIPPINES    0                    NA                -0.0016676   -0.0045382   0.0012030


### Parameter: PAF


agecat      studyid                   country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                 0.0120258   -0.0136838   0.0370833
6 months    ki1112895-Guatemala BSC   GUATEMALA      0                    NA                 0.1958065   -0.0121457   0.3610334
6 months    ki1119695-PROBIT          BELARUS        0                    NA                 0.0325967   -0.0064443   0.0701232
6 months    ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                 0.0469060    0.0136714   0.0790208
6 months    ki1135781-COHORTS         GUATEMALA      0                    NA                 0.0524130   -0.0074974   0.1087608
24 months   ki0047075b-MAL-ED         SOUTH AFRICA   0                    NA                 0.2223191   -0.1722012   0.4840582
24 months   ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                 0.0585225    0.0038289   0.1102133
24 months   ki1135781-COHORTS         GUATEMALA      0                    NA                 0.0031698   -0.0163146   0.0222807
24 months   ki1135781-COHORTS         PHILIPPINES    0                    NA                -0.0058731   -0.0160302   0.0041825
