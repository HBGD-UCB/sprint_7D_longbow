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

**Outcome Variable:** stunted

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

agecat      studyid                    country                        single    stunted   n_cell       n
----------  -------------------------  -----------------------------  -------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               0      210     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               1       47     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     1               0        0     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     1               1        0     257
Birth       ki0047075b-MAL-ED          BRAZIL                         0               0      151     191
Birth       ki0047075b-MAL-ED          BRAZIL                         0               1       15     191
Birth       ki0047075b-MAL-ED          BRAZIL                         1               0       19     191
Birth       ki0047075b-MAL-ED          BRAZIL                         1               1        6     191
Birth       ki0047075b-MAL-ED          INDIA                          0               0      173     205
Birth       ki0047075b-MAL-ED          INDIA                          0               1       32     205
Birth       ki0047075b-MAL-ED          INDIA                          1               0        0     205
Birth       ki0047075b-MAL-ED          INDIA                          1               1        0     205
Birth       ki0047075b-MAL-ED          NEPAL                          0               0      155     173
Birth       ki0047075b-MAL-ED          NEPAL                          0               1       18     173
Birth       ki0047075b-MAL-ED          NEPAL                          1               0        0     173
Birth       ki0047075b-MAL-ED          NEPAL                          1               1        0     173
Birth       ki0047075b-MAL-ED          PERU                           0               0      226     287
Birth       ki0047075b-MAL-ED          PERU                           0               1       27     287
Birth       ki0047075b-MAL-ED          PERU                           1               0       27     287
Birth       ki0047075b-MAL-ED          PERU                           1               1        7     287
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0               0      133     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0               1       13     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1               0      101     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1               1       15     262
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               0      100     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               1       17     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0        5     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        1     123
Birth       ki1119695-PROBIT           BELARUS                        0               0    13312   13884
Birth       ki1119695-PROBIT           BELARUS                        0               1       31   13884
Birth       ki1119695-PROBIT           BELARUS                        1               0      539   13884
Birth       ki1119695-PROBIT           BELARUS                        1               1        2   13884
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0               0    11582   13772
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0               1     1320   13772
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1               0      763   13772
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1               1      107   13772
Birth       ki1135781-COHORTS          GUATEMALA                      0               0      679     767
Birth       ki1135781-COHORTS          GUATEMALA                      0               1       40     767
Birth       ki1135781-COHORTS          GUATEMALA                      1               0       43     767
Birth       ki1135781-COHORTS          GUATEMALA                      1               1        5     767
Birth       ki1135781-COHORTS          INDIA                          0               0     4206    4778
Birth       ki1135781-COHORTS          INDIA                          0               1      565    4778
Birth       ki1135781-COHORTS          INDIA                          1               0        7    4778
Birth       ki1135781-COHORTS          INDIA                          1               1        0    4778
Birth       ki1135781-COHORTS          PHILIPPINES                    0               0     2760    3010
Birth       ki1135781-COHORTS          PHILIPPINES                    0               1      176    3010
Birth       ki1135781-COHORTS          PHILIPPINES                    1               0       68    3010
Birth       ki1135781-COHORTS          PHILIPPINES                    1               1        6    3010
6 months    ki0047075b-MAL-ED          BANGLADESH                     0               0      196     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     0               1       45     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1               0        0     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1               1        0     241
6 months    ki0047075b-MAL-ED          BRAZIL                         0               0      175     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0               1        4     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1               0       28     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1               1        2     209
6 months    ki0047075b-MAL-ED          INDIA                          0               0      190     234
6 months    ki0047075b-MAL-ED          INDIA                          0               1       44     234
6 months    ki0047075b-MAL-ED          INDIA                          1               0        0     234
6 months    ki0047075b-MAL-ED          INDIA                          1               1        0     234
6 months    ki0047075b-MAL-ED          NEPAL                          0               0      224     236
6 months    ki0047075b-MAL-ED          NEPAL                          0               1       12     236
6 months    ki0047075b-MAL-ED          NEPAL                          1               0        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          1               1        0     236
6 months    ki0047075b-MAL-ED          PERU                           0               0      192     273
6 months    ki0047075b-MAL-ED          PERU                           0               1       48     273
6 months    ki0047075b-MAL-ED          PERU                           1               0       21     273
6 months    ki0047075b-MAL-ED          PERU                           1               1       12     273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               0      121     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               1       19     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1               0       83     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1               1       31     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               0      183     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               1       56     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0        6     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        2     247
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               0     1654    2013
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1      181    2013
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0      164    2013
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1       14    2013
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0               0      173     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0               1       75     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1               0       18     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1               1       11     277
6 months    ki1119695-PROBIT           BELARUS                        0               0    14188   15761
6 months    ki1119695-PROBIT           BELARUS                        0               1      930   15761
6 months    ki1119695-PROBIT           BELARUS                        1               0      585   15761
6 months    ki1119695-PROBIT           BELARUS                        1               1       58   15761
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0               0     6498    8265
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0               1     1277    8265
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1               0      393    8265
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1               1       97    8265
6 months    ki1135781-COHORTS          GUATEMALA                      0               0      499     893
6 months    ki1135781-COHORTS          GUATEMALA                      0               1      327     893
6 months    ki1135781-COHORTS          GUATEMALA                      1               0       30     893
6 months    ki1135781-COHORTS          GUATEMALA                      1               1       37     893
6 months    ki1135781-COHORTS          INDIA                          0               0     3991    4971
6 months    ki1135781-COHORTS          INDIA                          0               1      971    4971
6 months    ki1135781-COHORTS          INDIA                          1               0        7    4971
6 months    ki1135781-COHORTS          INDIA                          1               1        2    4971
6 months    ki1135781-COHORTS          PHILIPPINES                    0               0     2055    2676
6 months    ki1135781-COHORTS          PHILIPPINES                    0               1      553    2676
6 months    ki1135781-COHORTS          PHILIPPINES                    1               0       54    2676
6 months    ki1135781-COHORTS          PHILIPPINES                    1               1       14    2676
24 months   ki0047075b-MAL-ED          BANGLADESH                     0               0      114     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0               1       98     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1               0        0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1               1        0     212
24 months   ki0047075b-MAL-ED          BRAZIL                         0               0      145     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0               1        3     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1               0       18     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1               1        3     169
24 months   ki0047075b-MAL-ED          INDIA                          0               0      131     225
24 months   ki0047075b-MAL-ED          INDIA                          0               1       94     225
24 months   ki0047075b-MAL-ED          INDIA                          1               0        0     225
24 months   ki0047075b-MAL-ED          INDIA                          1               1        0     225
24 months   ki0047075b-MAL-ED          NEPAL                          0               0      179     228
24 months   ki0047075b-MAL-ED          NEPAL                          0               1       49     228
24 months   ki0047075b-MAL-ED          NEPAL                          1               0        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          1               1        0     228
24 months   ki0047075b-MAL-ED          PERU                           0               0      111     201
24 months   ki0047075b-MAL-ED          PERU                           0               1       65     201
24 months   ki0047075b-MAL-ED          PERU                           1               0       16     201
24 months   ki0047075b-MAL-ED          PERU                           1               1        9     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               0       85     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               1       46     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1               0       69     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1               1       38     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               0       61     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               1      147     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        6     214
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               0        5       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        0       6
24 months   ki1119695-PROBIT           BELARUS                        0               0     3559    4035
24 months   ki1119695-PROBIT           BELARUS                        0               1      331    4035
24 months   ki1119695-PROBIT           BELARUS                        1               0      132    4035
24 months   ki1119695-PROBIT           BELARUS                        1               1       13    4035
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0               0      150     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0               1      263     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1               0        9     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1               1       34     456
24 months   ki1135781-COHORTS          GUATEMALA                      0               0      198    1013
24 months   ki1135781-COHORTS          GUATEMALA                      0               1      728    1013
24 months   ki1135781-COHORTS          GUATEMALA                      1               0       11    1013
24 months   ki1135781-COHORTS          GUATEMALA                      1               1       76    1013
24 months   ki1135781-COHORTS          INDIA                          0               0     1900    3756
24 months   ki1135781-COHORTS          INDIA                          0               1     1847    3756
24 months   ki1135781-COHORTS          INDIA                          1               0        3    3756
24 months   ki1135781-COHORTS          INDIA                          1               1        6    3756
24 months   ki1135781-COHORTS          PHILIPPINES                    0               0      895    2416
24 months   ki1135781-COHORTS          PHILIPPINES                    0               1     1462    2416
24 months   ki1135781-COHORTS          PHILIPPINES                    1               0       24    2416
24 months   ki1135781-COHORTS          PHILIPPINES                    1               1       35    2416


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
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/9c54e02a-0335-4776-8843-00ea3cb647d6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9c54e02a-0335-4776-8843-00ea3cb647d6/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/9c54e02a-0335-4776-8843-00ea3cb647d6/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/9c54e02a-0335-4776-8843-00ea3cb647d6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BRAZIL                         0                    NA                0.0903614   0.0466334   0.1340895
Birth       ki0047075b-MAL-ED          BRAZIL                         1                    NA                0.2400000   0.0721465   0.4078535
Birth       ki0047075b-MAL-ED          PERU                           0                    NA                0.1067194   0.0686074   0.1448313
Birth       ki0047075b-MAL-ED          PERU                           1                    NA                0.2058824   0.0697321   0.3420326
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.0890773   0.0430090   0.1351457
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.1300706   0.0693556   0.1907855
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1022711   0.0970596   0.1074827
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1010390   0.0833928   0.1186853
Birth       ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0556328   0.0388678   0.0723978
Birth       ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1041667   0.0176920   0.1906413
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0599455   0.0513574   0.0685336
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.0810811   0.0188793   0.1432829
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                0.2021104   0.1515199   0.2527009
6 months    ki0047075b-MAL-ED          PERU                           1                    NA                0.3253098   0.1920891   0.4585306
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.1182193   0.0640862   0.1723524
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.2535112   0.1760567   0.3309657
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0986024   0.0849637   0.1122411
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0785974   0.0397494   0.1174454
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.3063217   0.2493063   0.3633370
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                0.6104309   0.4929030   0.7279588
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.0622375   0.0482830   0.0761919
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                0.0286312   0.0185203   0.0387422
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1641045   0.1559246   0.1722845
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1669067   0.1419394   0.1918740
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                0.3972339   0.3645116   0.4299563
6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                0.3561268   0.3207156   0.3915381
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.2115788   0.1958675   0.2272901
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.4922145   0.3892113   0.5952177
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.3693182   0.2978389   0.4407975
24 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.3600000   0.1713737   0.5486263
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.3103274   0.2343358   0.3863191
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.2917721   0.2106727   0.3728716
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                0.0851898   0.0545038   0.1158757
24 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.0941721   0.0526594   0.1356848
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.6368039   0.5903712   0.6832365
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.7906977   0.6689718   0.9124235
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.7871410   0.7608648   0.8134173
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.8354757   0.7661335   0.9048178
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.6195417   0.5999270   0.6391564
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.9115925   0.8753259   0.9478590


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.1099476   0.0654669   0.1544284
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                0.1184669   0.0810142   0.1559196
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1068702   0.0693890   0.1443514
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1036160   0.0985259   0.1087061
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0586701   0.0420278   0.0753124
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0604651   0.0519489   0.0689813
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.2197802   0.1705687   0.2689917
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1968504   0.1478551   0.2458457
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0968703   0.0839461   0.1097946
6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.3104693   0.2558835   0.3650551
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0626864   0.0488489   0.0765239
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1662432   0.1582164   0.1742700
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4076148   0.3753675   0.4398620
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2118834   0.1963977   0.2273691
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.3681592   0.3013164   0.4350020
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3529412   0.2921001   0.4137823
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0852540   0.0554439   0.1150642
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.6513158   0.6075279   0.6951037
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7936821   0.7687506   0.8186137
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6196192   0.6002567   0.6389817


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BRAZIL                         0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED          BRAZIL                         1                    0                 2.6560000   1.1346616   6.2171277
Birth       ki0047075b-MAL-ED          PERU                           0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED          PERU                           1                    0                 1.9291939   0.9098576   4.0905180
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 1.4601981   0.7292978   2.9236047
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 0.9879527   0.8238472   1.1847470
Birth       ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      1                    0                 1.8723958   0.7741873   4.5284469
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    0                 1.3525799   0.6197717   2.9518485
6 months    ki0047075b-MAL-ED          PERU                           0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          PERU                           1                    0                 1.6095647   0.9990351   2.5932007
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 2.1444145   1.2438040   3.6971369
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.7971145   0.4774160   1.3308972
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    0                 1.9927775   1.5237149   2.6062369
6 months    ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1119695-PROBIT           BELARUS                        1                    0                 0.4600320   0.3219715   0.6572924
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.0170755   0.8693536   1.1898985
6 months    ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      1                    0                 0.8965167   0.7912359   1.0158060
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                 2.3263887   1.8634039   2.9044076
24 months   ki0047075b-MAL-ED          PERU                           0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          PERU                           1                    0                 0.9747692   0.5575963   1.7040556
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 0.9402075   0.6499158   1.3601610
24 months   ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1119695-PROBIT           BELARUS                        1                    0                 1.1054394   0.6493308   1.8819318
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.2416659   1.0471916   1.4722562
24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                 1.0614053   0.9707274   1.1605537
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 1.4713981   1.3991431   1.5473846


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0195862   -0.0042246   0.0433970
Birth       ki0047075b-MAL-ED          PERU                           0                    NA                 0.0117475   -0.0054086   0.0289037
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0177929   -0.0159933   0.0515791
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0013449   -0.0000762   0.0027661
Birth       ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0030373   -0.0025377   0.0086123
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0005196   -0.0010285   0.0020678
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                 0.0176698   -0.0033236   0.0386631
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0786311    0.0345028   0.1227594
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0017320   -0.0053950   0.0019309
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.0041476   -0.0153408   0.0236361
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0004489   -0.0005382   0.0014360
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0021386    0.0000508   0.0042265
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0103809    0.0013475   0.0194142
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0003046   -0.0023464   0.0029557
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                -0.0011590   -0.0262516   0.0239336
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0426138   -0.0082145   0.0934421
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0000643   -0.0015889   0.0017174
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0145119    0.0015502   0.0274736
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0065411   -0.0001110   0.0131933
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0000775   -0.0030251   0.0031802


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.1781411   -0.0569878   0.3609652
Birth       ki0047075b-MAL-ED          PERU                           0                    NA                 0.0991630   -0.0549019   0.2307272
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.1664905   -0.2115292   0.4265611
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0129799   -0.0008123   0.0265820
Birth       ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0517694   -0.0470659   0.1412754
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0085936   -0.0173182   0.0338454
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                 0.0803976   -0.0192070   0.1702680
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.3994460    0.1432567   0.5790278
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0178799   -0.0563366   0.0191768
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.0133593   -0.0513705   0.0741039
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0071612   -0.0089235   0.0229896
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0128646    0.0002452   0.0253247
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0254673    0.0031379   0.0472965
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0014377   -0.0111532   0.0138719
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                -0.0031480   -0.0736742   0.0627455
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.1207390   -0.0354878   0.2533955
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0007537   -0.0189645   0.0200904
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0222809    0.0020242   0.0421265
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0082415   -0.0001988   0.0166105
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0001251   -0.0048947   0.0051199
