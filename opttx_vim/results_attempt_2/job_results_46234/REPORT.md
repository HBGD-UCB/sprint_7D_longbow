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

**Intervention Variable:** single

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* delta_W_mage
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
Birth       ki0047075b-MAL-ED          BANGLADESH                     0            241     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     1              0     241
Birth       ki0047075b-MAL-ED          BRAZIL                         0            159     183
Birth       ki0047075b-MAL-ED          BRAZIL                         1             24     183
Birth       ki0047075b-MAL-ED          INDIA                          0            202     202
Birth       ki0047075b-MAL-ED          INDIA                          1              0     202
Birth       ki0047075b-MAL-ED          NEPAL                          0            168     168
Birth       ki0047075b-MAL-ED          NEPAL                          1              0     168
Birth       ki0047075b-MAL-ED          PERU                           0            247     279
Birth       ki0047075b-MAL-ED          PERU                           1             32     279
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0            145     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1            113     258
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0            112     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              6     118
Birth       ki1119695-PROBIT           BELARUS                        0           6501    6739
Birth       ki1119695-PROBIT           BELARUS                        1            238    6739
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0          12064   12863
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1            799   12863
Birth       ki1135781-COHORTS          GUATEMALA                      0            314     338
Birth       ki1135781-COHORTS          GUATEMALA                      1             24     338
Birth       ki1135781-COHORTS          INDIA                          0           4456    4463
Birth       ki1135781-COHORTS          INDIA                          1              7    4463
Birth       ki1135781-COHORTS          PHILIPPINES                    0           2789    2860
Birth       ki1135781-COHORTS          PHILIPPINES                    1             71    2860
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
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0           1834    2012
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            178    2012
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0            248     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1             29     277
6 months    ki1119695-PROBIT           BELARUS                        0           7384    7664
6 months    ki1119695-PROBIT           BELARUS                        1            280    7664
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0           7746    8234
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1            488    8234
6 months    ki1135781-COHORTS          GUATEMALA                      0            389     428
6 months    ki1135781-COHORTS          GUATEMALA                      1             39     428
6 months    ki1135781-COHORTS          INDIA                          0           4955    4964
6 months    ki1135781-COHORTS          INDIA                          1              9    4964
6 months    ki1135781-COHORTS          PHILIPPINES                    0           2606    2674
6 months    ki1135781-COHORTS          PHILIPPINES                    1             68    2674
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
24 months   ki1119695-PROBIT           BELARUS                        0           1548    1589
24 months   ki1119695-PROBIT           BELARUS                        1             41    1589
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0            379     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1             43     422
24 months   ki1135781-COHORTS          GUATEMALA                      0            438     491
24 months   ki1135781-COHORTS          GUATEMALA                      1             53     491
24 months   ki1135781-COHORTS          INDIA                          0           3717    3726
24 months   ki1135781-COHORTS          INDIA                          1              9    3726
24 months   ki1135781-COHORTS          PHILIPPINES                    0           2361    2420
24 months   ki1135781-COHORTS          PHILIPPINES                    1             59    2420


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
![](/tmp/22c2a85e-51ed-4190-af8a-2095e19d79c3/fd037e12-0e8c-42b5-95e8-da9be643568e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.1425006   -0.2547337    0.5397349
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.3125725   -0.5211955   -0.1039496
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.1076556   -0.1456233    0.3609345
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.8169893    0.0796047    1.5543739
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -1.2808575   -1.5337271   -1.0279879
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.5320966   -0.5710685   -0.4931247
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.8192216   -1.3574339   -0.2810093
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -1.1829184   -1.2226057   -1.1432310
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.4145555   -0.4840326   -0.3450784
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           1.0067718    0.8302896    1.1832539
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           1.0406930    0.9048626    1.1765233
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.3140118    0.1086672    0.5193565
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0490673   -0.6752099    0.5770752
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0521250   -0.0727563    0.1770063
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.0330507   -0.1542955    0.0881941
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.4005193    0.2874811    0.5135575
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.3074397    0.2728377    0.3420417
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.4540012   -0.2005608    1.1085631
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.7098996   -0.7430332   -0.6767659
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.2722563   -0.3202590   -0.2242536
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.6926521    0.1338607    1.2514435
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.2498333    0.0538737    0.4457930
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.4069574    0.1951409    0.6187739
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0709764   -0.0537001    0.1956528
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.7676885    0.6301502    0.9052267
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -1.0003504   -1.2122067   -0.7884942
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.5412641   -0.8103665   -0.2721617
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.8007846   -0.8433059   -0.7582632
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.5858105   -0.6298803   -0.5417407


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.4038798    0.2296279    0.5781316
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.0735842   -0.1836203    0.0364518
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.0562791   -0.2000837    0.0875255
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.7932203    0.5962220    0.9902187
Birth       ki1119695-PROBIT           BELARUS                        observed             observed          -1.1877267   -1.5203042   -0.8551491
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.5145122   -0.5404077   -0.4886167
Birth       ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.2727219   -1.4189899   -1.1264539
Birth       ki1135781-COHORTS          INDIA                          observed             observed          -0.9765068   -1.0113301   -0.9416835
Birth       ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.7377902   -0.7844819   -0.6910986
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.9717225    0.8073791    1.1360658
6 months    ki0047075b-MAL-ED          PERU                           observed             observed           1.0543956    0.9326967    1.1760945
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.5420735    0.3899459    0.6942011
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5170513    0.3872178    0.6468847
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0797577    0.0268998    0.1326156
6 months    ki1112895-Guatemala BSC    GUATEMALA                      observed             observed          -0.0568833   -0.1722874    0.0585208
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.5810067    0.5014871    0.6605262
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed           0.3050103    0.2788985    0.3311222
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed           0.0547430   -0.0597692    0.1692552
6 months    ki1135781-COHORTS          INDIA                          observed             observed          -0.7104795   -0.7428008   -0.6781581
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.2936948   -0.3352840   -0.2521057
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.4466272    0.2416144    0.6516401
24 months   ki0047075b-MAL-ED          PERU                           observed             observed           0.1199005   -0.0000331    0.2398341
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.4267017    0.3074751    0.5459283
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0500935   -0.0748234    0.1750103
24 months   ki1119695-PROBIT           BELARUS                        observed             observed           0.8061601    0.6592496    0.9530705
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -1.1781043   -1.2781256   -1.0780830
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -0.5514053   -0.6290269   -0.4737837
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -0.6594122   -0.6925753   -0.6262491
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.6100579   -0.6471813   -0.5729344


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.2613792   -0.1035936    0.6263520
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed           0.2389883    0.0529682    0.4250084
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.1639347   -0.3671794    0.0393100
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0237689   -0.7583731    0.7108353
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           0.0931308   -0.0875003    0.2737619
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.0175844   -0.0111937    0.0463626
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.4535003   -0.9772614    0.0702607
Birth       ki1135781-COHORTS          INDIA                          optimal              observed           0.2064115    0.1752917    0.2375314
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.3232347   -0.3895626   -0.2569067
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0350493   -0.1071599    0.0370613
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           0.0137026   -0.0710529    0.0984582
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.2280617    0.0624512    0.3936722
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.5661186   -0.0515944    1.1838316
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0276327   -0.0853305    0.1405959
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.0238325   -0.0652712    0.0176061
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.1804874    0.0791833    0.2817914
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0024294   -0.0253932    0.0205343
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.3992582   -1.0344940    0.2359776
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.0005799   -0.0018941    0.0007343
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0214385   -0.0473975    0.0045205
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.2460249   -0.7600084    0.2679587
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.1299329   -0.3055553    0.0456896
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.0197443   -0.1554350    0.1949235
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0208829   -0.0522231    0.0104573
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.0384716   -0.1070881    0.1840313
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1777538   -0.3896073    0.0340996
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0101412   -0.2673629    0.2470805
24 months   ki1135781-COHORTS          INDIA                          optimal              observed           0.1413723    0.0925146    0.1902300
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0242473   -0.0492327    0.0007381
