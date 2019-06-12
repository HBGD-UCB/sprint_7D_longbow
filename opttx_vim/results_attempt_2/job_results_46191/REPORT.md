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
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal weight       216     246
Birth       ki0047075b-MAL-ED          BANGLADESH                     Underweight          30     246
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal weight       175     184
Birth       ki0047075b-MAL-ED          BRAZIL                         Underweight           9     184
Birth       ki0047075b-MAL-ED          INDIA                          Normal weight       159     198
Birth       ki0047075b-MAL-ED          INDIA                          Underweight          39     198
Birth       ki0047075b-MAL-ED          NEPAL                          Normal weight       172     172
Birth       ki0047075b-MAL-ED          NEPAL                          Underweight           0     172
Birth       ki0047075b-MAL-ED          PERU                           Normal weight       271     276
Birth       ki0047075b-MAL-ED          PERU                           Underweight           5     276
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight       223     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight           5     228
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight       114     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight           7     121
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal weight        91     130
Birth       ki1000304b-SAS-CompFeed    INDIA                          Underweight          39     130
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal weight        23      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Underweight           5      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        21      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Underweight           6      27
Birth       ki1119695-PROBIT           BELARUS                        Normal weight     13200   13723
Birth       ki1119695-PROBIT           BELARUS                        Underweight         523   13723
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight      9124    9634
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Underweight         510    9634
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
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight       922    1227
6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight         305    1227
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight       444     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight          93     537
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight       481     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight         101     582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight       648     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          67     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight      1949    1983
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          34    1983
6 months    ki1119695-PROBIT           BELARUS                        Normal weight     12522   13027
6 months    ki1119695-PROBIT           BELARUS                        Underweight         505   13027
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight      6747    7109
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight         362    7109
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
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight       349     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          80     429
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight       476     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight         100     576
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight       471     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          43     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         6       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           0       6
24 months   ki1119695-PROBIT           BELARUS                        Normal weight      3863    4005
24 months   ki1119695-PROBIT           BELARUS                        Underweight         142    4005
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight       352     377
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          25     377
24 months   ki1148112-LCNI-5           MALAWI                         Normal weight       482     577
24 months   ki1148112-LCNI-5           MALAWI                         Underweight          95     577


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
![](/tmp/a496b10b-e3d3-4411-836e-090ca84adf3e/82755971-0ca8-45be-9e26-b0681bffb673/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.9192104   -1.0868009   -0.7516199
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.7210052   -0.8857770   -0.5562335
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.9646004   -1.1186065   -0.8105942
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.9241876   -1.0376890   -0.8106861
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.7574771   -0.9084921   -0.6064620
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.8870101   -1.1106970   -0.6633233
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.3583856   -1.5977658   -1.1190055
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.7928311   -1.2540834   -0.3315787
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.0441625   -1.5625644   -0.5257606
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           1.3362510    1.1716365    1.5008656
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.4598483   -0.4899048   -0.4297919
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.1618902   -1.2880793   -1.0357011
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.0743157   -0.0747881    0.2234195
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.3362232   -1.5217162   -1.1507303
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -1.3132541   -1.4220049   -1.2045034
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -1.0465204   -1.1776551   -0.9153857
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.3427583   -1.4668365   -1.2186801
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.3291537   -1.4244882   -1.2338191
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.3438170   -1.4394641   -1.2481698
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.0309730   -1.1165099   -0.9454361
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.1612175   -1.2352981   -1.0871369
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.6153463   -0.6644883   -0.5662044
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.1375558    0.0262440    0.2488676
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.8871595   -0.9313871   -0.8429319
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.7045439   -1.7982282   -1.6108596
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.8652648   -1.9963165   -1.7342132
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.0637404   -0.1047561    0.2322369
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.7764718   -1.9944032   -1.5585404
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -1.5916918   -1.7299262   -1.4534573
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.9598351   -3.1371494   -2.7825207
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -2.0747088   -2.1886233   -1.9607943
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.5056640   -1.6083090   -1.4030190
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.4016822   -1.4912904   -1.3120739
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.2163119   -0.7142286    0.2816048
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -2.2206005   -2.5653707   -1.8758303
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.8753879   -1.9878490   -1.7629269


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.0455285   -1.1715695   -0.9194875
Birth       ki0047075b-MAL-ED          BRAZIL                         observed             observed          -0.7397283   -0.8996215   -0.5798350
Birth       ki0047075b-MAL-ED          INDIA                          observed             observed          -1.0200505   -1.1624932   -0.8776078
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.9386232   -1.0507144   -0.8265319
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.6921930   -0.8218578   -0.5625282
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.9267769   -1.1425813   -0.7109724
Birth       ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -1.4803846   -1.6742160   -1.2865532
Birth       ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.5292857   -0.8821252   -0.1764462
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.1100000   -1.5086894   -0.7113106
Birth       ki1119695-PROBIT           BELARUS                        observed             observed           1.3263412    1.1672322    1.4854501
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.4772566   -0.5017796   -0.4527336
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.2056777   -1.3231497   -1.0882058
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0532131   -0.0914567    0.1978830
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -1.2148369   -1.3332371   -1.0964367
6 months    ki0047075b-MAL-ED          PERU                           observed             observed          -1.3272488   -1.4359649   -1.2185326
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.0728012   -1.2026830   -0.9429194
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.3601215   -1.4821830   -1.2380600
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -1.4072209   -1.4983514   -1.3160903
6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -1.4073821   -1.4960598   -1.3187043
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.0848568   -1.1613109   -1.0084028
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.1986783   -1.2700937   -1.1272630
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.5405711   -0.5899965   -0.4911457
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.1153731    0.0222128    0.2085334
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.9008757   -0.9285733   -0.8731780
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed          -1.6577751   -1.7275296   -1.5880207
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.9431132   -2.0691678   -1.8170586
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0418452   -0.1263708    0.2100613
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -1.8439159   -1.9704751   -1.7173568
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.6220299   -1.7590593   -1.4850005
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.6058879   -2.7403043   -2.4714714
24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -2.1807945   -2.2835902   -2.0779987
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.5839236   -1.6672059   -1.5006413
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.4295331   -1.5127726   -1.3462935
24 months   ki1119695-PROBIT           BELARUS                        observed             observed          -0.1322181   -0.4300523    0.1656161
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -2.4135279   -2.5366872   -2.2903685
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -1.8744367   -1.9556750   -1.7931984


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1263181   -0.2696308    0.0169946
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0187230   -0.0521145    0.0146685
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.0554502   -0.1347867    0.0238864
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0144356   -0.0327834    0.0039122
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.0652841   -0.0146942    0.1452624
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0397667   -0.0867087    0.0071752
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.1219990   -0.3502992    0.1063012
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed           0.2635453   -0.2417521    0.7688428
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0658375   -0.2429757    0.1113008
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0099099   -0.0433077    0.0234879
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0174083   -0.0358530    0.0010364
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0437876   -0.0893553    0.0017801
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0211025   -0.0460547    0.0038496
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed           0.1213864   -0.0185061    0.2612789
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0139946   -0.0382928    0.0103035
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0262808   -0.0520102   -0.0005515
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0173632   -0.0532847    0.0185584
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.0780672   -0.1178212   -0.0383132
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.0635651   -0.1078571   -0.0192731
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0538838   -0.0877782   -0.0199895
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0374609   -0.0634684   -0.0114533
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0747752    0.0444072    0.1051433
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0221827   -0.0883079    0.0439425
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0137162   -0.0486670    0.0212347
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.0467688   -0.0109080    0.1044456
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0778484   -0.1377715   -0.0179253
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0218951   -0.0665363    0.0227461
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.0674442   -0.2409283    0.1060400
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0303382   -0.0589507   -0.0017256
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.3539472    0.1976646    0.5102298
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.1060857   -0.1567689   -0.0554026
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0782596   -0.1406078   -0.0159114
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0278509   -0.0658555    0.0101537
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.0840938   -0.3843621    0.5525497
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1929273   -0.5255412    0.1396866
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed           0.0009512   -0.0758479    0.0777502
