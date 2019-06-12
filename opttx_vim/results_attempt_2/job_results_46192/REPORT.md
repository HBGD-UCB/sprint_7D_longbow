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

agecat      studyid                    country                        single    n_cell       n
----------  -------------------------  -----------------------------  -------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0            257     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     1              0     257
Birth       ki0047075b-MAL-ED          BRAZIL                         0            166     191
Birth       ki0047075b-MAL-ED          BRAZIL                         1             25     191
Birth       ki0047075b-MAL-ED          INDIA                          0            205     205
Birth       ki0047075b-MAL-ED          INDIA                          1              0     205
Birth       ki0047075b-MAL-ED          NEPAL                          0            173     173
Birth       ki0047075b-MAL-ED          NEPAL                          1              0     173
Birth       ki0047075b-MAL-ED          PERU                           0            253     287
Birth       ki0047075b-MAL-ED          PERU                           1             34     287
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0            146     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1            116     262
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0            117     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              6     123
Birth       ki1119695-PROBIT           BELARUS                        0          13343   13884
Birth       ki1119695-PROBIT           BELARUS                        1            541   13884
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0          12902   13772
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1            870   13772
Birth       ki1135781-COHORTS          GUATEMALA                      0            719     767
Birth       ki1135781-COHORTS          GUATEMALA                      1             48     767
Birth       ki1135781-COHORTS          INDIA                          0           4771    4778
Birth       ki1135781-COHORTS          INDIA                          1              7    4778
Birth       ki1135781-COHORTS          PHILIPPINES                    0           2936    3010
Birth       ki1135781-COHORTS          PHILIPPINES                    1             74    3010
6 months    ki0047075b-MAL-ED          BANGLADESH                     0            241     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1              0     241
6 months    ki0047075b-MAL-ED          BRAZIL                         0            179     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1             30     209
6 months    ki0047075b-MAL-ED          INDIA                          0            234     234
6 months    ki0047075b-MAL-ED          INDIA                          1              0     234
6 months    ki0047075b-MAL-ED          NEPAL                          0            236     236
6 months    ki0047075b-MAL-ED          NEPAL                          1              0     236
6 months    ki0047075b-MAL-ED          PERU                           0            240     273
6 months    ki0047075b-MAL-ED          PERU                           1             33     273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0            140     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1            114     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0            239     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              8     247
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0           1835    2013
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            178    2013
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0            248     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1             29     277
6 months    ki1119695-PROBIT           BELARUS                        0          15118   15761
6 months    ki1119695-PROBIT           BELARUS                        1            643   15761
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0           7775    8265
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1            490    8265
6 months    ki1135781-COHORTS          GUATEMALA                      0            826     893
6 months    ki1135781-COHORTS          GUATEMALA                      1             67     893
6 months    ki1135781-COHORTS          INDIA                          0           4962    4971
6 months    ki1135781-COHORTS          INDIA                          1              9    4971
6 months    ki1135781-COHORTS          PHILIPPINES                    0           2608    2676
6 months    ki1135781-COHORTS          PHILIPPINES                    1             68    2676
24 months   ki0047075b-MAL-ED          BANGLADESH                     0            212     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1              0     212
24 months   ki0047075b-MAL-ED          BRAZIL                         0            148     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1             21     169
24 months   ki0047075b-MAL-ED          INDIA                          0            225     225
24 months   ki0047075b-MAL-ED          INDIA                          1              0     225
24 months   ki0047075b-MAL-ED          NEPAL                          0            228     228
24 months   ki0047075b-MAL-ED          NEPAL                          1              0     228
24 months   ki0047075b-MAL-ED          PERU                           0            176     201
24 months   ki0047075b-MAL-ED          PERU                           1             25     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0            131     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1            107     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0            208     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              6     214
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              6       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              0       6
24 months   ki1119695-PROBIT           BELARUS                        0           3890    4035
24 months   ki1119695-PROBIT           BELARUS                        1            145    4035
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0            413     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1             43     456
24 months   ki1135781-COHORTS          GUATEMALA                      0            926    1013
24 months   ki1135781-COHORTS          GUATEMALA                      1             87    1013
24 months   ki1135781-COHORTS          INDIA                          0           3747    3756
24 months   ki1135781-COHORTS          INDIA                          1              9    3756
24 months   ki1135781-COHORTS          PHILIPPINES                    0           2357    2416
24 months   ki1135781-COHORTS          PHILIPPINES                    1             59    2416


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
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/18260abe-ef10-4c60-9f81-2899cbba804d/74eca109-d9bf-4329-a79f-178140bd0203/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.6893295   -0.8558044   -0.5228545
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.9316817   -1.0766627   -0.7867007
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.9793386   -1.1878878   -0.7707895
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.0605279   -1.2850773   -0.8359784
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           1.3222386    1.1567293    1.4877480
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.5176074   -0.5713258   -0.4638891
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0169346   -0.3012012    0.2673320
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.8265374   -0.8623889   -0.7906858
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.1586220   -0.1990200   -0.1182239
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.2238011   -0.0730732    0.5206754
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -1.4037479   -1.5339973   -1.2734984
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.9248101   -1.1316444   -0.7179759
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.3540263   -1.4794027   -1.2286499
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.5266925   -0.6848897   -0.3684954
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -1.4985462   -1.6210886   -1.3760038
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.0947104    0.0037718    0.1856489
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.8806939   -0.9090795   -0.8523083
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -1.7680821   -1.8402670   -1.6958972
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -1.1130426   -1.1484874   -1.0775977
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.9938445   -1.0596539   -0.9280350
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.1611126   -0.0812403    0.4034655
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -1.7226876   -1.8480426   -1.5973326
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -1.5719261   -1.7828324   -1.3610198
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.5934836   -2.7303114   -2.4566558
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.1049258   -0.3460779    0.1362263
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -2.4076250   -2.5498582   -2.2653918
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -2.8723233   -3.0550679   -2.6895787
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -2.5630480   -2.6098481   -2.5162479
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.7663410   -0.8924280   -0.6402540


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BRAZIL                         observed             observed          -0.7609424   -0.9178311   -0.6040538
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.9322300   -1.0461262   -0.8183337
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.7266031   -0.8549719   -0.5982342
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.9338211   -1.1465079   -0.7211344
Birth       ki1119695-PROBIT           BELARUS                        observed             observed           1.3254775    1.1669293    1.4840258
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.5014820   -0.5220753   -0.4808887
Birth       ki1135781-COHORTS          GUATEMALA                      observed             observed           0.1511213    0.0632481    0.2389944
Birth       ki1135781-COHORTS          INDIA                          observed             observed          -0.6774424   -0.7103357   -0.6445492
Birth       ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.2465548   -0.2856502   -0.2074594
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0510207   -0.0930194    0.1950608
6 months    ki0047075b-MAL-ED          PERU                           observed             observed          -1.3268010   -1.4351217   -1.2184802
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.0633760   -1.1911088   -0.9356432
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.3601215   -1.4821830   -1.2380600
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.5457721   -0.5948454   -0.4966988
6 months    ki1112895-Guatemala BSC    GUATEMALA                      observed             observed          -1.5624368   -1.6783540   -1.4465196
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.1069986    0.0122286    0.2017686
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.8906213   -0.9166407   -0.8646018
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.8089474   -1.8800645   -1.7378303
6 months    ki1135781-COHORTS          INDIA                          observed             observed          -1.0418789   -1.0745363   -1.0092215
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -1.1414425   -1.1836656   -1.0992193
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0418343   -0.1253834    0.2090521
24 months   ki0047075b-MAL-ED          PERU                           observed             observed          -1.7500995   -1.8705474   -1.6296516
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.6228361   -1.7581177   -1.4875546
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.6058879   -2.7403043   -2.4714714
24 months   ki1119695-PROBIT           BELARUS                        observed             observed          -0.1314048   -0.4282725    0.1654630
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -2.3925000   -2.5069364   -2.2780636
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -2.8644028   -2.9307312   -2.7980743
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -2.0008573   -2.0401168   -1.9615978
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -2.3962210   -2.4413335   -2.3511085


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0716129   -0.1357529   -0.0074730
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0005483   -0.0979036    0.0968070
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.2527356    0.0951818    0.4102894
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1267067    0.0090550    0.2443585
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           0.0032389   -0.0138574    0.0203352
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.0161255   -0.0330125    0.0652634
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.1680559   -0.0991828    0.4352945
Birth       ki1135781-COHORTS          INDIA                          optimal              observed           0.1490949    0.1035842    0.1946057
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0879328   -0.1267342   -0.0491315
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.1727803   -0.4264513    0.0808907
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           0.0769469   -0.0052569    0.1591506
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.1385659   -0.3201851    0.0430534
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0060951   -0.0203492    0.0081589
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0190795   -0.1701657    0.1320066
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.0638906   -0.1094019   -0.0183794
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.0122882   -0.0426342    0.0672107
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0099274   -0.0214677    0.0016129
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0408653   -0.0655410   -0.0161896
6 months    ki1135781-COHORTS          INDIA                          optimal              observed           0.0711637    0.0257587    0.1165686
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.1475980   -0.2179143   -0.0772817
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.1192783   -0.3362253    0.0976688
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0274119   -0.0782142    0.0233903
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0509100   -0.2253073    0.1234873
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0124043   -0.0320057    0.0071972
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0264790   -0.2060929    0.1531350
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.0151250   -0.0629513    0.0932013
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.0079206   -0.1651113    0.1809524
24 months   ki1135781-COHORTS          INDIA                          optimal              observed           0.5621907    0.5044937    0.6198877
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -1.6298800   -1.7608435   -1.4989165
