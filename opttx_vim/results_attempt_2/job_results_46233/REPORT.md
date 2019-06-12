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

**Intervention Variable:** mbmi

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* single
* brthmon
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_single
* delta_brthmon

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        mbmi             n_cell      n
----------  -------------------------  -----------------------------  --------------  -------  -----
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal weight       205    233
Birth       ki0047075b-MAL-ED          BANGLADESH                     Underweight          28    233
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal weight       167    176
Birth       ki0047075b-MAL-ED          BRAZIL                         Underweight           9    176
Birth       ki0047075b-MAL-ED          INDIA                          Normal weight       157    195
Birth       ki0047075b-MAL-ED          INDIA                          Underweight          38    195
Birth       ki0047075b-MAL-ED          NEPAL                          Normal weight       167    167
Birth       ki0047075b-MAL-ED          NEPAL                          Underweight           0    167
Birth       ki0047075b-MAL-ED          PERU                           Normal weight       264    269
Birth       ki0047075b-MAL-ED          PERU                           Underweight           5    269
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight       221    226
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight           5    226
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight       109    116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight           7    116
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal weight        23     33
Birth       ki1000304b-SAS-CompFeed    INDIA                          Underweight          10     33
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal weight        23     28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Underweight           5     28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        17     23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Underweight           6     23
Birth       ki1119695-PROBIT           BELARUS                        Normal weight      6399   6652
Birth       ki1119695-PROBIT           BELARUS                        Underweight         253   6652
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight      8573   9029
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Underweight         456   9029
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight       209    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight          32    241
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight       199    208
6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight           9    208
6 months    ki0047075b-MAL-ED          INDIA                          Normal weight       186    235
6 months    ki0047075b-MAL-ED          INDIA                          Underweight          49    235
6 months    ki0047075b-MAL-ED          NEPAL                          Normal weight       236    236
6 months    ki0047075b-MAL-ED          NEPAL                          Underweight           0    236
6 months    ki0047075b-MAL-ED          PERU                           Normal weight       267    272
6 months    ki0047075b-MAL-ED          PERU                           Underweight           5    272
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight       242    249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight           7    249
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight       233    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          14    247
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight       268    362
6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight          94    362
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight       443    536
6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight          93    536
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight       480    581
6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight         101    581
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight       648    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          67    715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight      1949   1982
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          33   1982
6 months    ki1119695-PROBIT           BELARUS                        Normal weight      6184   6431
6 months    ki1119695-PROBIT           BELARUS                        Underweight         247   6431
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight      6726   7087
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight         361   7087
6 months    ki1148112-LCNI-5           MALAWI                         Normal weight       691    836
6 months    ki1148112-LCNI-5           MALAWI                         Underweight         145    836
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight       183    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          29    212
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight       162    168
24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight           6    168
24 months   ki0047075b-MAL-ED          INDIA                          Normal weight       180    226
24 months   ki0047075b-MAL-ED          INDIA                          Underweight          46    226
24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight       228    228
24 months   ki0047075b-MAL-ED          NEPAL                          Underweight           0    228
24 months   ki0047075b-MAL-ED          PERU                           Normal weight       197    201
24 months   ki0047075b-MAL-ED          PERU                           Underweight           4    201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight       227    234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight           7    234
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight       203    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          11    214
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight       348    428
24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          80    428
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight       477    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight         100    577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight       471    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          43    514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         6      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           0      6
24 months   ki1119695-PROBIT           BELARUS                        Normal weight      1535   1580
24 months   ki1119695-PROBIT           BELARUS                        Underweight          45   1580
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight       334    359
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          25    359
24 months   ki1148112-LCNI-5           MALAWI                         Normal weight       467    561
24 months   ki1148112-LCNI-5           MALAWI                         Underweight          94    561


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
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
![](/tmp/c2c838c9-582c-422c-97f7-4ae813c943c0/8360d4aa-8e8b-4d36-bec4-ea4bba16840c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.0277559   -1.1827990   -0.8727127
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.3181545   -0.5340381    1.1703472
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.1316785   -1.4633104   -0.8000466
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0543913   -0.1690191    0.0602366
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0179195   -0.1686282    0.1327891
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           1.0860884    0.5783015    1.5938754
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.4527210   -0.9040528   -0.0013893
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.7860357   -1.4477747   -0.1242967
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.2496722   -1.0268612    0.5275169
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -1.1958705   -1.5260777   -0.8656633
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.4817650   -0.5193168   -0.4442133
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0528281   -0.2321556    0.1264994
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.9776896    0.8091006    1.1462787
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.6771137   -0.8385573   -0.5156702
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           0.9531785    0.5692482    1.3371087
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.4736100    0.0487602    0.8984599
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.8277857    0.1102405    1.5453309
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.6720742   -0.8421245   -0.5020238
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.3032666   -0.3996495   -0.2068836
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1129265   -0.2051708   -0.0206822
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.0592631   -0.0225654    0.1410916
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0857519    0.0312161    0.1402878
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.5577781    0.4872947    0.6282616
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.3144596    0.2859080    0.3430111
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.5302361    0.4520566    0.6084157
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.7601665   -0.8912902   -0.6290428
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0869210   -0.3374378    0.1635958
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.9021238   -1.0271713   -0.7770763
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.1454279   -0.2973767    0.5882324
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1417551   -0.4721004    0.1885902
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.8144224   -0.9174861   -0.7113588
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.7930481   -0.8835615   -0.7025346
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.5376115   -0.6707390   -0.4044840
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.7789975    0.6253497    0.9326453
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -1.0033958   -1.1988049   -0.8079868
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed           0.0243030   -0.0659686    0.1145747


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.9724464   -1.1091046   -0.8357881
Birth       ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.3832386    0.2044597    0.5620175
Birth       ki0047075b-MAL-ED          INDIA                          observed             observed          -1.0698974   -1.2115847   -0.9282102
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.0660967   -0.1789362    0.0467429
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.0346018   -0.1831486    0.1139451
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.7950000    0.5947353    0.9952647
Birth       ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.1627273   -0.3719320    0.0464775
Birth       ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -1.4239286   -1.7688028   -1.0790544
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.7508696   -1.2358912   -0.2658480
Birth       ki1119695-PROBIT           BELARUS                        observed             observed          -1.1835914   -1.5174542   -0.8497286
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.4900343   -0.5209436   -0.4591251
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.1397960   -0.2688682   -0.0107238
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.9644952    0.7999744    1.1290160
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -0.6987943   -0.8241325   -0.5734561
6 months    ki0047075b-MAL-ED          PERU                           observed             observed           1.0563787    0.9342938    1.1784635
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.5290428    0.3750394    0.6830463
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5170513    0.3872178    0.6468847
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.7684530   -0.9589959   -0.5779101
6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.4389101   -0.5279432   -0.3498771
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.2079891   -0.2925599   -0.1234183
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed           0.0297622   -0.0491685    0.1086930
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0775172    0.0241750    0.1308595
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.5803390    0.5051446    0.6555333
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed           0.2928094    0.2648167    0.3208020
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed           0.4515431    0.3802415    0.5228446
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.8208255   -0.9429246   -0.6987264
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.4282738    0.2252365    0.6313111
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -0.9525664   -1.0684455   -0.8366872
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.4096154    0.2902946    0.5289362
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0500935   -0.0748234    0.1750103
24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.9115790   -1.0095022   -0.8136559
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.8864991   -0.9695215   -0.8034768
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.6103502   -0.7050157   -0.5156847
24 months   ki1119695-PROBIT           BELARUS                        observed             observed           0.8069040    0.6553606    0.9584474
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -1.1810028   -1.2914599   -1.0705456
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -0.0469519   -0.1290932    0.0351895


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.0553095   -0.0725766    0.1831957
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.0650841   -0.7639024    0.8940706
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed           0.0617811   -0.2160077    0.3395698
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0117054   -0.0274262    0.0040155
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0166822   -0.0388583    0.0054938
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.2910884   -0.8185704    0.2363935
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed           0.2899938   -0.2258933    0.8058808
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.6378929   -1.2939285    0.0181427
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.5011974   -1.2777697    0.2753749
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           0.0122791   -0.0046188    0.0291770
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0082693   -0.0299984    0.0134598
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0869679   -0.2231577    0.0492219
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0131944   -0.0471932    0.0208043
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.0216806   -0.1278048    0.0844436
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           0.1032002   -0.2613133    0.4677136
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.0554328   -0.3335220    0.4443876
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.3107344   -1.0084785    0.3870096
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.0963789   -0.1542224   -0.0385354
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.1356436   -0.1891340   -0.0821531
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0950626   -0.1368995   -0.0532258
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0295008   -0.0583326   -0.0006691
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0082347   -0.0145738   -0.0018957
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.0225608   -0.0018224    0.0469441
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0216502   -0.0289925   -0.0143079
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.0786931   -0.1121000   -0.0452861
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0606590   -0.1128375   -0.0084804
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.5151948    0.2920121    0.7383774
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.0504426   -0.1147507    0.0138656
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.2641875   -0.1738746    0.7022496
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1918485   -0.1048774    0.4885744
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.0971566   -0.1511464   -0.0431668
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0934511   -0.1360032   -0.0508990
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0727387   -0.1617997    0.0163223
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.0279065   -0.0469219    0.1027349
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1776069   -0.3418860   -0.0133279
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.0712549   -0.1102730   -0.0322369
