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
Birth       ki1119695-PROBIT           BELARUS                        0          13286   13824
Birth       ki1119695-PROBIT           BELARUS                        1            538   13824
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0          12064   12863
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1            799   12863
Birth       ki1135781-COHORTS          GUATEMALA                      0            654     691
Birth       ki1135781-COHORTS          GUATEMALA                      1             37     691
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
6 months    ki1119695-PROBIT           BELARUS                        0          15114   15757
6 months    ki1119695-PROBIT           BELARUS                        1            643   15757
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0           7746    8234
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1            488    8234
6 months    ki1135781-COHORTS          GUATEMALA                      0            827     894
6 months    ki1135781-COHORTS          GUATEMALA                      1             67     894
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
24 months   ki1119695-PROBIT           BELARUS                        0           3829    3971
24 months   ki1119695-PROBIT           BELARUS                        1            142    3971
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0            379     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1             43     422
24 months   ki1135781-COHORTS          GUATEMALA                      0            932    1021
24 months   ki1135781-COHORTS          GUATEMALA                      1             89    1021
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
![](/tmp/10c2c292-8ee3-4270-8180-157984835e3d/85e52d81-ab59-459d-8af5-b74194101c83/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.4947994    0.0360559    0.9535430
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.2749824   -0.5823844    0.0324196
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.0786792   -0.2071150    0.3644735
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.6093884    0.2118388    1.0069380
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -1.1589774   -1.3271574   -0.9907973
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.5097879   -0.5366148   -0.4829610
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -1.0737696   -1.6359569   -0.5115822
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -1.0676925   -1.1081026   -1.0272824
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.3189294   -0.3907682   -0.2470905
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           1.0034115    0.8281581    1.1786649
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           1.0542569    0.9112575    1.1972563
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.5836324    0.2252769    0.9419878
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0658058   -0.7335469    0.6019353
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0204375   -0.1284927    0.1693676
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.0349732   -0.1562743    0.0863280
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.5647678    0.5045027    0.6250329
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.3023533    0.2715681    0.3331385
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.0642071   -0.3782078    0.5066220
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.7098964   -0.7430301   -0.6767627
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.2375811   -0.2914796   -0.1836825
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.4565349    0.0227881    0.8902818
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0658299   -0.2898223    0.1581626
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.4229492    0.2167131    0.6291853
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0709279   -0.0537010    0.1955567
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.6909792    0.5731833    0.8087751
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.9916125   -1.2042173   -0.7790076
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.3362773   -0.6360297   -0.0365249
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -1.3240587   -1.3462915   -1.3018258
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.8144530   -0.8499528   -0.7789532


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.4038798    0.2296279    0.5781316
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.0735842   -0.1836203    0.0364518
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.0562791   -0.2000837    0.0875255
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.7932203    0.5962220    0.9902187
Birth       ki1119695-PROBIT           BELARUS                        observed             observed          -1.1463469   -1.3562674   -0.9364264
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.5145122   -0.5404077   -0.4886167
Birth       ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.0552243   -1.1617873   -0.9486614
Birth       ki1135781-COHORTS          INDIA                          observed             observed          -0.9765068   -1.0113301   -0.9416835
Birth       ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.7377902   -0.7844819   -0.6910986
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.9717225    0.8073791    1.1360658
6 months    ki0047075b-MAL-ED          PERU                           observed             observed           1.0543956    0.9326967    1.1760945
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.5420735    0.3899459    0.6942011
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5170513    0.3872178    0.6468847
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0797577    0.0268998    0.1326156
6 months    ki1112895-Guatemala BSC    GUATEMALA                      observed             observed          -0.0568833   -0.1722874    0.0585208
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.5789633    0.5190130    0.6389137
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed           0.3050103    0.2788985    0.3311222
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed           0.1920134    0.1173734    0.2666534
6 months    ki1135781-COHORTS          INDIA                          observed             observed          -0.7104795   -0.7428008   -0.6781581
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.2936948   -0.3352840   -0.2521057
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.4466272    0.2416144    0.6516401
24 months   ki0047075b-MAL-ED          PERU                           observed             observed           0.1199005   -0.0000331    0.2398341
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.4267017    0.3074751    0.5459283
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0500935   -0.0748234    0.1750103
24 months   ki1119695-PROBIT           BELARUS                        observed             observed           0.6863435    0.5745700    0.7981170
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -1.1781043   -1.2781256   -1.0780830
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -0.2796964   -0.3351582   -0.2242346
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -0.6594122   -0.6925753   -0.6262491
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.6100579   -0.6471813   -0.5729344


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0909196   -0.5266671    0.3448278
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed           0.2013982   -0.0757463    0.4785426
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.1349583   -0.3702564    0.1003397
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1838320   -0.2380720    0.6057359
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           0.0126304   -0.1015982    0.1268591
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0047243   -0.0118793    0.0024308
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.0185452   -0.5331690    0.5702595
Birth       ki1135781-COHORTS          INDIA                          optimal              observed           0.0911856    0.0590083    0.1233630
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.4188608   -0.4814415   -0.3562802
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0316890   -0.1042608    0.0408827
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           0.0001387   -0.1120154    0.1122928
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0415589   -0.3433449    0.2602271
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.5828570   -0.0749210    1.2406351
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0593202   -0.0768797    0.1955202
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.0219101   -0.0633154    0.0194952
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.0141955   -0.0025619    0.0309529
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.0026570   -0.0143811    0.0196951
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.1278063   -0.3031676    0.5587803
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.0005831   -0.0018978    0.0007317
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0561138   -0.0921491   -0.0200784
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0099077   -0.4200189    0.4002034
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.1857304   -0.0046890    0.3761498
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.0037525   -0.1714297    0.1789347
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0208344   -0.0516224    0.0099536
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0046357   -0.0192747    0.0100033
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1864918   -0.4015190    0.0285355
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.0565809   -0.2309749    0.3441368
24 months   ki1135781-COHORTS          INDIA                          optimal              observed           0.6646464    0.6307044    0.6985884
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed           0.2043952    0.1746358    0.2341545
