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

**Intervention Variable:** hdlvry

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* W_nrooms
* brthmon
* W_parity
* impsan
* delta_W_mage
* delta_meducyrs
* delta_W_nrooms
* delta_brthmon
* delta_W_parity
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        hdlvry    n_cell      n
----------  -------------------------  -----------------------------  -------  -------  -----
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0             90     90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1              0     90
Birth       ki1000108-IRC              INDIA                          0            381    388
Birth       ki1000108-IRC              INDIA                          1              7    388
Birth       ki1000109-EE               PAKISTAN                       0              2      2
Birth       ki1000109-EE               PAKISTAN                       1              0      2
Birth       ki1000304b-SAS-CompFeed    INDIA                          0             11    180
Birth       ki1000304b-SAS-CompFeed    INDIA                          1            169    180
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0             22     27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1              5     27
Birth       ki1135781-COHORTS          INDIA                          0           2938   4694
Birth       ki1135781-COHORTS          INDIA                          1           1756   4694
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0             11    300
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1            289    300
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0             47    820
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1            773    820
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0            358    366
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1              8    366
6 months    ki1000108-IRC              INDIA                          0            399    407
6 months    ki1000108-IRC              INDIA                          1              8    407
6 months    ki1000109-EE               PAKISTAN                       0            248    370
6 months    ki1000109-EE               PAKISTAN                       1            122    370
6 months    ki1000304b-SAS-CompFeed    INDIA                          0            147   1091
6 months    ki1000304b-SAS-CompFeed    INDIA                          1            944   1091
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0             76    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1            304    380
6 months    ki1017093b-PROVIDE         BANGLADESH                     0            433    583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1            150    583
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0            554    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1            161    715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0           1889   1921
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             32   1921
6 months    ki1113344-GMS-Nepal        NEPAL                          0            129    527
6 months    ki1113344-GMS-Nepal        NEPAL                          1            398    527
6 months    ki1135781-COHORTS          INDIA                          0           2900   4699
6 months    ki1135781-COHORTS          INDIA                          1           1799   4699
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0             39    332
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1            293    332
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0           1081   4038
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1           2957   4038
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0            361    369
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              8    369
24 months   ki1000108-IRC              INDIA                          0            401    409
24 months   ki1000108-IRC              INDIA                          1              8    409
24 months   ki1017093b-PROVIDE         BANGLADESH                     0            432    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1            145    577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0            391    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            123    514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              6      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              0      6
24 months   ki1113344-GMS-Nepal        NEPAL                          0            120    467
24 months   ki1113344-GMS-Nepal        NEPAL                          1            347    467
24 months   ki1135781-COHORTS          INDIA                          0           2233   3559
24 months   ki1135781-COHORTS          INDIA                          1           1326   3559
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0             35    291
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1            256    291
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0           1033   4005
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1           2972   4005


The following strata were considered:

* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
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
![](/tmp/f86a379c-e790-4c2e-af61-caf03eb7354a/1f5165e4-f8f5-4587-8a0b-7970894c2193/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.6069330   -1.2999412    0.0860751
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.4239206   -1.6163897   -1.2314515
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.0298595   -2.3925966    0.3328775
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.6181263   -0.6664234   -0.5698292
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.3300965   -1.4809102   -1.1792827
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.2322369   -1.5313004   -0.9331735
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.9590669   -1.7774676   -0.1406662
6 months    ki1000108-IRC              INDIA                          optimal              observed          -1.2276829   -1.3618869   -1.0934789
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -2.0513029   -2.2283064   -1.8742993
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.3806808   -1.4763014   -1.2850602
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -1.7779110   -2.0076811   -1.5481408
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.0196748   -1.1077457   -0.9316039
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.0865053   -1.1936902   -0.9793204
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.6397338   -0.7361351   -0.5433325
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.2224094   -1.3659845   -1.0788343
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.9441963   -0.9893024   -0.8990903
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.1577614   -1.5413400   -0.7741827
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.2428954   -1.3194618   -1.1663290
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -2.6495123   -3.1857043   -2.1133203
24 months   ki1000108-IRC              INDIA                          optimal              observed          -1.7708355   -1.8662523   -1.6754187
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.5439115   -1.6408298   -1.4469931
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.3476176   -1.4787195   -1.2165156
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.7371991   -1.8900614   -1.5843368
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -1.8428738   -1.8956462   -1.7901015
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -2.0126526   -2.3265678   -1.6987373
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.6195520   -1.6912475   -1.5478565


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          observed             observed          -0.3080412   -0.4687931   -0.1472894
Birth       ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -1.3976667   -1.5639119   -1.2314214
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.1100000   -1.5086894   -0.7113106
Birth       ki1135781-COHORTS          INDIA                          observed             observed          -0.6762420   -0.7093108   -0.6431732
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.3381333   -1.4898513   -1.1864153
Birth       kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.4966707   -1.5808284   -1.4125130
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -1.4189572   -1.5607165   -1.2771979
6 months    ki1000108-IRC              INDIA                          observed             observed          -1.2344062   -1.3658524   -1.1029600
6 months    ki1000109-EE               PAKISTAN                       observed             observed          -2.2011622   -2.3246467   -2.0776776
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -1.4699588   -1.5446559   -1.3952616
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             observed          -1.8986842   -2.0118892   -1.7854792
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.0871041   -1.1635539   -1.0106543
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.1986783   -1.2700937   -1.1272630
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.5440573   -0.5945614   -0.4935533
6 months    ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.3111986   -1.3908744   -1.2315228
6 months    ki1135781-COHORTS          INDIA                          observed             observed          -1.0458076   -1.0793244   -1.0122908
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.2787349   -1.4248268   -1.1326431
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.3481303   -1.3904710   -1.3057895
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -2.5615989   -2.6621298   -2.4610681
24 months   ki1000108-IRC              INDIA                          observed             observed          -1.7824776   -1.8765600   -1.6883952
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.5861179   -1.6693668   -1.5028689
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.4295331   -1.5127726   -1.3462935
24 months   ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.8686046   -1.9550497   -1.7821594
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -2.0097359   -2.0499675   -1.9695043
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -2.1549141   -2.2975185   -2.0123097
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.7500225   -1.7884190   -1.7116259


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          optimal              observed           0.2988918   -0.3943774    0.9921610
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed           0.0262539   -0.1007241    0.1532319
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0801405   -1.3272533    1.1669724
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.0581157   -0.0915819   -0.0246494
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0080369   -0.0293255    0.0132517
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.2644338   -0.5568995    0.0280319
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.4598903   -1.2708473    0.3510667
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.0067233   -0.0197729    0.0063263
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -0.1498593   -0.2870231   -0.0126955
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.0892779   -0.2099935    0.0314376
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.1207732   -0.3329558    0.0914093
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0674293   -0.1131612   -0.0216973
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.1121730   -0.1914877   -0.0328583
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0956765    0.0107713    0.1805816
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0887892   -0.2161441    0.0385657
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.1016113   -0.1320265   -0.0711961
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1209736   -0.4470535    0.2051064
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.1052349   -0.1697154   -0.0407543
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.0879134   -0.4423876    0.6182144
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.0116421   -0.0258967    0.0026125
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0422064   -0.0898774    0.0054646
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0819155   -0.1764013    0.0125703
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.1314055   -0.2582927   -0.0045182
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.1668621   -0.2040347   -0.1296895
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1422615   -0.4083904    0.1238674
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.1304705   -0.1914871   -0.0694538
