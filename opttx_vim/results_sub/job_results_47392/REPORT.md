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
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0             86     88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1              2     88
Birth       ki1000108-IRC              INDIA                          0            337    343
Birth       ki1000108-IRC              INDIA                          1              6    343
Birth       ki1000109-EE               PAKISTAN                       0              1      1
Birth       ki1000109-EE               PAKISTAN                       1              0      1
Birth       ki1000304b-SAS-CompFeed    INDIA                          0              6    160
Birth       ki1000304b-SAS-CompFeed    INDIA                          1            154    160
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0             19     23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1              4     23
Birth       ki1135781-COHORTS          INDIA                          0           2763   4389
Birth       ki1135781-COHORTS          INDIA                          1           1626   4389
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0              8    263
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1            255    263
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0             43    681
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1            638    681
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0            357    365
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1              8    365
6 months    ki1000108-IRC              INDIA                          0            400    408
6 months    ki1000108-IRC              INDIA                          1              8    408
6 months    ki1000109-EE               PAKISTAN                       0            252    374
6 months    ki1000109-EE               PAKISTAN                       1            122    374
6 months    ki1000304b-SAS-CompFeed    INDIA                          0            147   1088
6 months    ki1000304b-SAS-CompFeed    INDIA                          1            941   1088
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0             76    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1            304    380
6 months    ki1017093b-PROVIDE         BANGLADESH                     0            433    582
6 months    ki1017093b-PROVIDE         BANGLADESH                     1            149    582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0            554    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1            161    715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0           1888   1920
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             32   1920
6 months    ki1113344-GMS-Nepal        NEPAL                          0            129    527
6 months    ki1113344-GMS-Nepal        NEPAL                          1            398    527
6 months    ki1135781-COHORTS          INDIA                          0           2896   4694
6 months    ki1135781-COHORTS          INDIA                          1           1798   4694
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0             39    334
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1            295    334
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0           1082   4042
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1           2960   4042
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0            361    369
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              8    369
24 months   ki1000108-IRC              INDIA                          0            401    409
24 months   ki1000108-IRC              INDIA                          1              8    409
24 months   ki1017093b-PROVIDE         BANGLADESH                     0            432    578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1            146    578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0            391    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            123    514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              6      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              0      6
24 months   ki1113344-GMS-Nepal        NEPAL                          0            120    466
24 months   ki1113344-GMS-Nepal        NEPAL                          1            346    466
24 months   ki1135781-COHORTS          INDIA                          0           2214   3533
24 months   ki1135781-COHORTS          INDIA                          1           1319   3533
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0             34    289
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1            255    289
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0           1032   3993
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1           2961   3993


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
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Error in while (go <= 0) { : missing value where TRUE/FALSE needed
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/293fb6b9-b597-4954-8e0a-bef8990d44a3/7204e5f5-1140-40de-943b-d71047adea0b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.9922026   -1.1808146   -0.8035905
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.9745790   -1.0256643   -0.9234937
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1541183   -0.8110474    0.5028109
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.4169262   -0.8322173   -0.0016350
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.3369709   -1.0414858    0.3675440
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.9085940   -1.0792244   -0.7379635
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -0.6884252   -0.8315440   -0.5453063
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.5482190   -0.6566426   -0.4397954
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.8181592   -1.0872663   -0.5490521
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0976314   -0.2269680    0.0317051
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.0518811   -0.0376734    0.1414356
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0529628   -0.2124447    0.3183703
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.5110348   -0.6891338   -0.3329358
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.6475211   -0.6935579   -0.6014844
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.5044534   -0.8626829   -0.1462239
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.2695965   -0.3516626   -0.1875303
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.3151749   -0.8894166    0.2590669
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.7382897   -0.8311208   -0.6454586
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.8691648   -0.9721255   -0.7662042
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.5063372   -0.6618596   -0.3508148
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.1121904   -1.2819973   -0.9423835
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.5385726   -0.5832764   -0.4938688
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.1296091   -1.6758675   -0.5833506
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.1908053   -1.2575850   -1.1240256


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          observed             observed          -1.0105831   -1.1973019   -0.8238643
Birth       ki1135781-COHORTS          INDIA                          observed             observed          -0.9755867   -1.0106993   -0.9404741
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.8162738   -0.9311489   -0.7013987
Birth       kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.3701909   -0.4509242   -0.2894576
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.5045068   -0.6566169   -0.3523968
6 months    ki1000108-IRC              INDIA                          observed             observed          -0.5989297   -0.7344491   -0.4634104
6 months    ki1000109-EE               PAKISTAN                       observed             observed          -0.7158824   -0.8295258   -0.6022389
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.6734421   -0.8121314   -0.5347528
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             observed          -1.0121579   -1.1280429   -0.8962729
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.2083706   -0.2927992   -0.1239419
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed           0.0297622   -0.0491685    0.1086930
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0688763    0.0147308    0.1230218
6 months    ki1113344-GMS-Nepal        NEPAL                          observed             observed          -0.6002688   -0.6889771   -0.5115605
6 months    ki1135781-COHORTS          INDIA                          observed             observed          -0.7160077   -0.7492815   -0.6827338
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.6044910   -0.7122040   -0.4967781
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.3760651   -0.4191017   -0.3330285
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.5436992   -0.6434110   -0.4439874
24 months   ki1000108-IRC              INDIA                          observed             observed          -0.7458150   -0.8368180   -0.6548120
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.8879412   -0.9708680   -0.8050144
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.6103502   -0.7050157   -0.5156847
24 months   ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.1197461   -1.2105714   -1.0289207
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -0.6520577   -0.6860033   -0.6181122
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.2989273   -1.4377964   -1.1600583
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.2421463   -1.2763113   -1.2079812


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.0183805   -0.0513024    0.0145413
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.0010077   -0.0371351    0.0351197
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.6621555   -1.3329156    0.0086046
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed           0.0467353   -0.3495702    0.4430407
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.1675360   -0.8722780    0.5372061
6 months    ki1000108-IRC              INDIA                          optimal              observed           0.3096642    0.2045128    0.4148156
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -0.0274572   -0.1035619    0.0486475
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.1252231   -0.2649123    0.0144661
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.1939987   -0.4417300    0.0537326
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1107391   -0.2112124   -0.0102658
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0221189   -0.0673415    0.0231037
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0159135   -0.2471509    0.2789778
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0892341   -0.2438269    0.0653588
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.0684866   -0.1015484   -0.0354247
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1000376   -0.4257672    0.2256920
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.1064686   -0.1730842   -0.0398530
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.2285243   -0.7982537    0.3412050
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.0075253   -0.0174258    0.0023752
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0187763   -0.0826303    0.0450776
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.1040130   -0.2179478    0.0099217
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0075557   -0.1414861    0.1263748
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.1134852   -0.1436333   -0.0833370
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1693183   -0.6655922    0.3269556
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0513410   -0.1064340    0.0037521
