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

**Intervention Variable:** fage

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_fhtcm
* single
* brthmon
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_fhtcm
* delta_single
* delta_brthmon

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        fage       n_cell      n
----------  -------------------------  -----------------------------  --------  -------  -----
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=38           65    140
Birth       ki0047075b-MAL-ED          BANGLADESH                     <32            25    140
Birth       ki0047075b-MAL-ED          BANGLADESH                     [32-38)        50    140
Birth       ki0047075b-MAL-ED          BRAZIL                         >=38           25     65
Birth       ki0047075b-MAL-ED          BRAZIL                         <32            16     65
Birth       ki0047075b-MAL-ED          BRAZIL                         [32-38)        24     65
Birth       ki0047075b-MAL-ED          INDIA                          >=38           26    128
Birth       ki0047075b-MAL-ED          INDIA                          <32            43    128
Birth       ki0047075b-MAL-ED          INDIA                          [32-38)        59    128
Birth       ki0047075b-MAL-ED          NEPAL                          >=38           13     59
Birth       ki0047075b-MAL-ED          NEPAL                          <32             9     59
Birth       ki0047075b-MAL-ED          NEPAL                          [32-38)        37     59
Birth       ki0047075b-MAL-ED          PERU                           >=38           27     78
Birth       ki0047075b-MAL-ED          PERU                           <32            26     78
Birth       ki0047075b-MAL-ED          PERU                           [32-38)        25     78
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=38           52     75
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <32             8     75
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)        15     75
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           20     44
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32             6     44
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        18     44
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=38            1     61
Birth       ki1000304b-SAS-CompFeed    INDIA                          <32            51     61
Birth       ki1000304b-SAS-CompFeed    INDIA                          [32-38)         9     61
Birth       ki1119695-PROBIT           BELARUS                        >=38          298   6485
Birth       ki1119695-PROBIT           BELARUS                        <32          5164   6485
Birth       ki1119695-PROBIT           BELARUS                        [32-38)      1023   6485
Birth       ki1135781-COHORTS          GUATEMALA                      >=38          107    362
Birth       ki1135781-COHORTS          GUATEMALA                      <32           171    362
Birth       ki1135781-COHORTS          GUATEMALA                      [32-38)        84    362
Birth       ki1135781-COHORTS          PHILIPPINES                    >=38          303   2797
Birth       ki1135781-COHORTS          PHILIPPINES                    <32          1981   2797
Birth       ki1135781-COHORTS          PHILIPPINES                    [32-38)       513   2797
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38           69    150
6 months    ki0047075b-MAL-ED          BANGLADESH                     <32            30    150
6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)        51    150
6 months    ki0047075b-MAL-ED          BRAZIL                         >=38           30     79
6 months    ki0047075b-MAL-ED          BRAZIL                         <32            18     79
6 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)        31     79
6 months    ki0047075b-MAL-ED          INDIA                          >=38           36    161
6 months    ki0047075b-MAL-ED          INDIA                          <32            53    161
6 months    ki0047075b-MAL-ED          INDIA                          [32-38)        72    161
6 months    ki0047075b-MAL-ED          NEPAL                          >=38           17     79
6 months    ki0047075b-MAL-ED          NEPAL                          <32            15     79
6 months    ki0047075b-MAL-ED          NEPAL                          [32-38)        47     79
6 months    ki0047075b-MAL-ED          PERU                           >=38           27     83
6 months    ki0047075b-MAL-ED          PERU                           <32            28     83
6 months    ki0047075b-MAL-ED          PERU                           [32-38)        28     83
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38           64     89
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32             9     89
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)        16     89
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           48    100
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32            15    100
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        37    100
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38            9    409
6 months    ki1000304b-SAS-CompFeed    INDIA                          <32           346    409
6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)        54    409
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38           11     97
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32            64     97
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)        22     97
6 months    ki1119695-PROBIT           BELARUS                        >=38          340   7364
6 months    ki1119695-PROBIT           BELARUS                        <32          5895   7364
6 months    ki1119695-PROBIT           BELARUS                        [32-38)      1129   7364
6 months    ki1135781-COHORTS          GUATEMALA                      >=38          129    445
6 months    ki1135781-COHORTS          GUATEMALA                      <32           203    445
6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)       113    445
6 months    ki1135781-COHORTS          PHILIPPINES                    >=38          299   2622
6 months    ki1135781-COHORTS          PHILIPPINES                    <32          1828   2622
6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)       495   2622
6 months    ki1148112-LCNI-5           MALAWI                         >=38           26    106
6 months    ki1148112-LCNI-5           MALAWI                         <32            56    106
6 months    ki1148112-LCNI-5           MALAWI                         [32-38)        24    106
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38           69    151
24 months   ki0047075b-MAL-ED          BANGLADESH                     <32            30    151
24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)        52    151
24 months   ki0047075b-MAL-ED          BRAZIL                         >=38           30     79
24 months   ki0047075b-MAL-ED          BRAZIL                         <32            18     79
24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)        31     79
24 months   ki0047075b-MAL-ED          INDIA                          >=38           36    161
24 months   ki0047075b-MAL-ED          INDIA                          <32            53    161
24 months   ki0047075b-MAL-ED          INDIA                          [32-38)        72    161
24 months   ki0047075b-MAL-ED          NEPAL                          >=38           17     79
24 months   ki0047075b-MAL-ED          NEPAL                          <32            15     79
24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)        47     79
24 months   ki0047075b-MAL-ED          PERU                           >=38           26     79
24 months   ki0047075b-MAL-ED          PERU                           <32            27     79
24 months   ki0047075b-MAL-ED          PERU                           [32-38)        26     79
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38           65     89
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32             8     89
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)        16     89
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           48    100
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32            15    100
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        37    100
24 months   ki1119695-PROBIT           BELARUS                        >=38           76   1552
24 months   ki1119695-PROBIT           BELARUS                        <32          1233   1552
24 months   ki1119695-PROBIT           BELARUS                        [32-38)       243   1552
24 months   ki1135781-COHORTS          GUATEMALA                      >=38          135    500
24 months   ki1135781-COHORTS          GUATEMALA                      <32           238    500
24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)       127    500
24 months   ki1135781-COHORTS          PHILIPPINES                    >=38          271   2376
24 months   ki1135781-COHORTS          PHILIPPINES                    <32          1670   2376
24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)       435   2376
24 months   ki1148112-LCNI-5           MALAWI                         >=38           21     74
24 months   ki1148112-LCNI-5           MALAWI                         <32            37     74
24 months   ki1148112-LCNI-5           MALAWI                         [32-38)        16     74


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/a0eac043-d3fc-41df-92b1-9e68940f4336/40db645d-d137-4791-9b34-55a91682c334/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.8375582   -1.1863937   -0.4887228
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.6011428    0.1986286    1.0036569
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.8326970   -1.1441498   -0.5212442
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.7678464   -1.1017633   -0.4339295
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed           0.1990462   -0.0787354    0.4768278
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0698006   -0.4392437    0.2996424
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.7341582    0.1539031    1.3144132
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -1.2078713   -1.5379772   -0.8777655
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -1.1197942   -1.3658852   -0.8737032
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.8143984   -1.0433349   -0.5854619
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.1749034   -0.0775560    0.4273627
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.4778325   -0.0400634    0.9957284
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.7367117   -1.1816624   -0.2917609
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.1846334   -0.4837714    0.1145045
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           1.3094769    0.7367989    1.8821550
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.3777189   -0.3472583    1.1026961
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.5654100    0.1854459    0.9453741
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.8131638   -1.0145982   -0.6117294
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -1.4969042   -2.1726614   -0.8211470
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.7016717    0.5924459    0.8108975
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.2034015   -0.0851073    0.4919104
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.3102141   -0.4667921   -0.1536361
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.3666528    0.1234670    0.6098387
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.7870973   -1.0013864   -0.5728082
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.5302394   -0.1811181    1.2415970
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.8323967   -1.0980541   -0.5667393
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.0727300   -0.2957847    0.4412446
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.2312336   -0.0103794    0.4728467
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0720236   -0.4364952    0.2924481
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.3258744    0.0613577    0.5903912
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.8272145    0.6602266    0.9942023
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.2753520   -0.4389452   -0.1117588
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.6564785   -0.7780955   -0.5348614
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed           0.1478947   -0.3241263    0.6199158


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.0282143   -1.1991720   -0.8572566
Birth       ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.4923077    0.1981785    0.7864369
Birth       ki0047075b-MAL-ED          INDIA                          observed             observed          -1.1116406   -1.2776411   -0.9456401
Birth       ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.7467797   -0.9945570   -0.4990023
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.0162821   -0.2170871    0.1845230
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.1318667   -0.1289649    0.3926982
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.7968182    0.4398380    1.1537983
Birth       ki1119695-PROBIT           BELARUS                        observed             observed          -1.1836484   -1.5179968   -0.8493001
Birth       ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.2578729   -1.4000444   -1.1157015
Birth       ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.7309760   -0.7780724   -0.6838797
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.1977833   -0.3606366   -0.0349301
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.9393882    0.6572880    1.2214884
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -0.7206832   -0.8692329   -0.5721336
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed           0.1778270   -0.0614697    0.4171237
6 months    ki0047075b-MAL-ED          PERU                           observed             observed           1.0140361    0.7785203    1.2495520
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.5153558    0.2512666    0.7794450
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5034500    0.2959923    0.7109077
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.7967726   -0.9975479   -0.5959974
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             observed          -1.1301031   -1.3613760   -0.8988302
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.5809777    0.5017906    0.6601649
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed           0.0505393   -0.0593404    0.1604190
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.2878032   -0.3296319   -0.2459745
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed           0.5058491    0.3128980    0.6988001
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.8861589   -1.0281048   -0.7442131
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.5441139    0.2074310    0.8807969
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -0.8977019   -1.0295625   -0.7658412
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.2838608   -0.4798646   -0.0878569
24 months   ki0047075b-MAL-ED          PERU                           observed             observed           0.1203797   -0.0839887    0.3247482
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.4538202    0.2465091    0.6611314
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0766500   -0.1115307    0.2648307
24 months   ki1119695-PROBIT           BELARUS                        observed             observed           0.8058559    0.6588680    0.9528438
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -0.5407800   -0.6184091   -0.4631509
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.6087584   -0.6459824   -0.5715345
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -0.1982432   -0.4246666    0.0281801


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1906560   -0.4924324    0.1111203
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.1088351   -0.5004139    0.2827437
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.2789436   -0.5528611   -0.0050261
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.0210668   -0.1802649    0.2223984
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.2153283   -0.4678394    0.0371828
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.2016673   -0.0678969    0.4712315
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0626600   -0.5303934    0.6557134
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           0.0242229   -0.0590560    0.1075018
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1380787   -0.3501864    0.0740289
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed           0.0834223   -0.1397176    0.3065622
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.3726867   -0.6100532   -0.1353202
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.4615557    0.0348608    0.8882505
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed           0.0160285   -0.3937590    0.4258159
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.3624605    0.0927950    0.6321259
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.2954408   -0.7508883    0.1600067
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.1376369   -0.4872815    0.7625554
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0619600   -0.4221696    0.2982496
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed           0.0163912   -0.0148577    0.0476400
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed           0.3668011   -0.2403438    0.9739460
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          -0.1206940   -0.2151599   -0.0262281
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1528622   -0.4161320    0.1104077
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed           0.0224109   -0.1303497    0.1751714
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.1391962   -0.1086159    0.3870084
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0990616   -0.2799373    0.0818141
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.0138745   -0.6224994    0.6502484
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.0653052   -0.3249540    0.1943436
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.3565907   -0.6758132   -0.0373683
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.1108539   -0.3492453    0.1275376
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.5258438    0.1487291    0.9029584
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.2492244   -0.4465318   -0.0519171
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0213586   -0.1523242    0.1096070
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.2654280   -0.4203506   -0.1105054
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed           0.0477201   -0.0682192    0.1636593
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.3461380   -0.7411536    0.0488776
