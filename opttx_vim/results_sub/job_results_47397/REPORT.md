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
* W_fage
* meducyrs
* feducyrs
* single
* brthmon
* delta_W_mage
* delta_W_fage
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

agecat      studyid                    country                        mbmi             n_cell       n
----------  -------------------------  -----------------------------  --------------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal weight       205     233
Birth       ki0047075b-MAL-ED          BANGLADESH                     Underweight          28     233
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal weight       167     176
Birth       ki0047075b-MAL-ED          BRAZIL                         Underweight           9     176
Birth       ki0047075b-MAL-ED          INDIA                          Normal weight       157     195
Birth       ki0047075b-MAL-ED          INDIA                          Underweight          38     195
Birth       ki0047075b-MAL-ED          NEPAL                          Normal weight       167     167
Birth       ki0047075b-MAL-ED          NEPAL                          Underweight           0     167
Birth       ki0047075b-MAL-ED          PERU                           Normal weight       264     269
Birth       ki0047075b-MAL-ED          PERU                           Underweight           5     269
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight       221     226
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight           5     226
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight       109     116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight           7     116
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal weight        77     110
Birth       ki1000304b-SAS-CompFeed    INDIA                          Underweight          33     110
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal weight        23      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Underweight           5      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        17      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Underweight           6      23
Birth       ki1119695-PROBIT           BELARUS                        Normal weight     13143   13664
Birth       ki1119695-PROBIT           BELARUS                        Underweight         521   13664
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight      8573    9029
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Underweight         456    9029
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight       209     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight          32     241
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight       199     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight           9     208
6 months    ki0047075b-MAL-ED          INDIA                          Normal weight       186     235
6 months    ki0047075b-MAL-ED          INDIA                          Underweight          49     235
6 months    ki0047075b-MAL-ED          NEPAL                          Normal weight       236     236
6 months    ki0047075b-MAL-ED          NEPAL                          Underweight           0     236
6 months    ki0047075b-MAL-ED          PERU                           Normal weight       267     272
6 months    ki0047075b-MAL-ED          PERU                           Underweight           5     272
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight       242     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight           7     249
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight       233     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          14     247
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight       921    1225
6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight         304    1225
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight       443     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight          93     536
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight       480     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight         101     581
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight       648     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          67     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight      1949    1982
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          33    1982
6 months    ki1119695-PROBIT           BELARUS                        Normal weight     12519   13024
6 months    ki1119695-PROBIT           BELARUS                        Underweight         505   13024
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight      6726    7087
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight         361    7087
6 months    ki1148112-LCNI-5           MALAWI                         Normal weight       691     836
6 months    ki1148112-LCNI-5           MALAWI                         Underweight         145     836
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight       183     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          29     212
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight       162     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight           6     168
24 months   ki0047075b-MAL-ED          INDIA                          Normal weight       180     226
24 months   ki0047075b-MAL-ED          INDIA                          Underweight          46     226
24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight       228     228
24 months   ki0047075b-MAL-ED          NEPAL                          Underweight           0     228
24 months   ki0047075b-MAL-ED          PERU                           Normal weight       197     201
24 months   ki0047075b-MAL-ED          PERU                           Underweight           4     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight       227     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight           7     234
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight       203     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          11     214
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight       348     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          80     428
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight       477     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight         100     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight       471     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          43     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         6       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           0       6
24 months   ki1119695-PROBIT           BELARUS                        Normal weight      3800    3941
24 months   ki1119695-PROBIT           BELARUS                        Underweight         141    3941
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight       334     359
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          25     359
24 months   ki1148112-LCNI-5           MALAWI                         Normal weight       467     561
24 months   ki1148112-LCNI-5           MALAWI                         Underweight          94     561


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
![](/tmp/c640e2fb-f02a-4cd8-bfb4-d6c8af2d7cb0/0e4d9636-aaa6-410b-aa2e-d589534e8c3c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.9405909   -1.0982698   -0.7829119
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.0951922   -0.6667195    0.8571038
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.1357464   -1.4768621   -0.7946307
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0544064   -0.1690329    0.0602201
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0179825   -0.1686879    0.1327229
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           1.1125275    0.7165340    1.5085210
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.2703469   -0.5770181    0.0363243
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.7816095   -1.4526904   -0.1105285
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0895082   -0.8851916    0.7061752
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -1.1443603   -1.3560095   -0.9327111
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.4699464   -0.5117298   -0.4281630
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0510942   -0.1814154    0.0792271
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.9765678    0.8079871    1.1451484
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.6130726   -0.7434510   -0.4826943
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           0.8765153    0.7531167    0.9999139
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.3773053    0.2167173    0.5378933
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.8483491    0.2173947    1.4793034
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.5438225   -0.6770585   -0.4105864
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.3260778   -0.4240175   -0.2281380
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1132662   -0.2050951   -0.0214373
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.0968366    0.0006832    0.1929900
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0851446    0.0306063    0.1396829
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.5730923    0.4862973    0.6598874
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.3139192    0.2853648    0.3424736
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.5290580    0.4505878    0.6075283
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.7168034   -0.8969515   -0.5366552
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.3076049   -0.9800102    1.5952199
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.9289175   -1.0575318   -0.8003032
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.3927316   -0.2250187    1.0104819
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1940661   -0.4539297    0.0657975
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.8153230   -0.9183000   -0.7123461
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.7929163   -0.8827616   -0.7030711
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.6145703   -0.7528091   -0.4763314
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.6760536    0.5155426    0.8365646
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -1.0556279   -1.3563317   -0.7549241
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed           0.0279236   -0.0620050    0.1178523


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.9724464   -1.1091046   -0.8357881
Birth       ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.3832386    0.2044597    0.5620175
Birth       ki0047075b-MAL-ED          INDIA                          observed             observed          -1.0698974   -1.2115847   -0.9282102
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.0660967   -0.1789362    0.0467429
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.0346018   -0.1831486    0.1139451
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.7950000    0.5947353    0.9952647
Birth       ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.1601818   -0.3763991    0.0560355
Birth       ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -1.4239286   -1.7688028   -1.0790544
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.7508696   -1.2358912   -0.2658480
Birth       ki1119695-PROBIT           BELARUS                        observed             observed          -1.1441269   -1.3547476   -0.9335062
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.4900343   -0.5209436   -0.4591251
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.1397960   -0.2688682   -0.0107238
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.9644952    0.7999744    1.1290160
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -0.6987943   -0.8241325   -0.5734561
6 months    ki0047075b-MAL-ED          PERU                           observed             observed           1.0563787    0.9342938    1.1784635
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.5290428    0.3750394    0.6830463
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5170513    0.3872178    0.6468847
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.6441020   -0.7710827   -0.5171213
6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.4389101   -0.5279432   -0.3498771
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.2079891   -0.2925599   -0.1234183
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed           0.0297622   -0.0491685    0.1086930
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0775172    0.0241750    0.1308595
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.5829956    0.5247249    0.6412663
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
24 months   ki1119695-PROBIT           BELARUS                        observed             observed           0.6869754    0.5725638    0.8013869
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -1.1810028   -1.2914599   -1.0705456
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -0.0469519   -0.1290932    0.0351895


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0318555   -0.1299961    0.0662851
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.2880465   -0.4532735    1.0293665
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed           0.0658490   -0.2210225    0.3527205
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0116902   -0.0277449    0.0043644
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0166192   -0.0387987    0.0055602
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.3175275   -0.7439674    0.1089124
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed           0.1101651   -0.0754877    0.2958178
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.6423191   -1.3120344    0.0273963
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.6613614   -1.4505390    0.1278163
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           0.0002334   -0.0079695    0.0084364
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0200879   -0.0479676    0.0077917
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0887018   -0.1582302   -0.0191734
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0120726   -0.0461234    0.0219783
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.0857217   -0.1629058   -0.0085376
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           0.1798634    0.1098101    0.2499166
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.1517375    0.0729097    0.2305653
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.3312978   -0.9448137    0.2822181
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.1002796   -0.1316405   -0.0689187
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.1128323   -0.1665188   -0.0591459
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0947229   -0.1361366   -0.0533091
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0670744   -0.1212321   -0.0129167
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0076273   -0.0138757   -0.0013790
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.0099033   -0.0459502    0.0657567
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0211098   -0.0283522   -0.0138674
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.0775150   -0.1114107   -0.0436192
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1040221   -0.2380325    0.0299883
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.1206689   -1.1340940    1.3754319
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.0236488   -0.0985820    0.0512843
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.0168838   -0.5944167    0.6281842
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.2441596    0.0149423    0.4733768
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.0962560   -0.1503651   -0.0421469
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0935828   -0.1355457   -0.0516199
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.0042201   -0.0879720    0.0964121
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.0109217   -0.0760168    0.0978603
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1253748   -0.3989286    0.1481789
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.0748755   -0.1136859   -0.0360651
