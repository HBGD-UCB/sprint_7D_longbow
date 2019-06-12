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

**Intervention Variable:** hfoodsec

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* vagbrth
* W_nrooms
* W_nchldlt5
* brthmon
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_vagbrth
* delta_W_nrooms
* delta_W_nchldlt5
* delta_brthmon
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                 country        hfoodsec                n_cell      n
----------  ----------------------  -------------  ---------------------  -------  -----
Birth       ki0047075b-MAL-ED       BANGLADESH     Food Secure                151    178
Birth       ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure         3    178
Birth       ki0047075b-MAL-ED       BANGLADESH     Food Insecure               24    178
Birth       ki0047075b-MAL-ED       BRAZIL         Food Secure                  0    102
Birth       ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure        11    102
Birth       ki0047075b-MAL-ED       BRAZIL         Food Insecure               91    102
Birth       ki0047075b-MAL-ED       INDIA          Food Secure                151    167
Birth       ki0047075b-MAL-ED       INDIA          Mildly Food Insecure         2    167
Birth       ki0047075b-MAL-ED       INDIA          Food Insecure               14    167
Birth       ki0047075b-MAL-ED       NEPAL          Food Secure                 75     96
Birth       ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure         9     96
Birth       ki0047075b-MAL-ED       NEPAL          Food Insecure               12     96
Birth       ki0047075b-MAL-ED       PERU           Food Secure                 26    105
Birth       ki0047075b-MAL-ED       PERU           Mildly Food Insecure        24    105
Birth       ki0047075b-MAL-ED       PERU           Food Insecure               55    105
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                106    193
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure        17    193
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure               70    193
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Secure                  3     28
Birth       ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure        21     28
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Insecure                4     28
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                 14     23
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure         6     23
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                3     23
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Secure               2478   5069
Birth       kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure      1688   5069
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Insecure              903   5069
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Secure                 95    183
Birth       kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure        61    183
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Insecure               27    183
6 months    ki0047075b-MAL-ED       BANGLADESH     Food Secure                160    193
6 months    ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure         4    193
6 months    ki0047075b-MAL-ED       BANGLADESH     Food Insecure               29    193
6 months    ki0047075b-MAL-ED       BRAZIL         Food Secure                  3    129
6 months    ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure        11    129
6 months    ki0047075b-MAL-ED       BRAZIL         Food Insecure              115    129
6 months    ki0047075b-MAL-ED       INDIA          Food Secure                190    212
6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure         5    212
6 months    ki0047075b-MAL-ED       INDIA          Food Insecure               17    212
6 months    ki0047075b-MAL-ED       NEPAL          Food Secure                 94    128
6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure        15    128
6 months    ki0047075b-MAL-ED       NEPAL          Food Insecure               19    128
6 months    ki0047075b-MAL-ED       PERU           Food Secure                 27    111
6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure        28    111
6 months    ki0047075b-MAL-ED       PERU           Food Insecure               56    111
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                129    228
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure        18    228
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure               81    228
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure                 80    536
6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure       416    536
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure               40    536
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                427    715
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       204    715
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure               84    715
6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                395    545
6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure        76    545
6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure               74    545
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure               4181   8303
6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure      2754   8303
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure             1368   8303
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure                636   1241
6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure       432   1241
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure              173   1241
24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                161    194
24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure         4    194
24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure               29    194
24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                  3    129
24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure        11    129
24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure              115    129
24 months   ki0047075b-MAL-ED       INDIA          Food Secure                190    212
24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure         5    212
24 months   ki0047075b-MAL-ED       INDIA          Food Insecure               17    212
24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                 94    128
24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure        15    128
24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure               19    128
24 months   ki0047075b-MAL-ED       PERU           Food Secure                 26    107
24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure        27    107
24 months   ki0047075b-MAL-ED       PERU           Food Insecure               54    107
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                129    228
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure        18    228
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure               81    228
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                 68    428
24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure       327    428
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure               33    428
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                334    514
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       124    514
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure               56    514
24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                348    487
24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure        69    487
24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure               70    487
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure               1941   4069
24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure      1369   4069
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure              759   4069
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                654   1236
24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure       421   1236
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure              161   1236


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/19c7d61d-bfa8-4257-b3bb-1e83623fe15e/80cfbfb2-37c5-4a28-b3e1-d2fc4ddb95c1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                 country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       NEPAL          optimal              observed          -1.0409059   -1.5727874   -0.5090243
Birth       ki0047075b-MAL-ED       PERU           optimal              observed          -0.1376293   -0.3925321    0.1172735
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   optimal              observed           0.1514985   -0.1528814    0.4558785
Birth       kiGH5241-JiVitA-3       BANGLADESH     optimal              observed          -0.6861432   -0.7341446   -0.6381418
Birth       kiGH5241-JiVitA-4       BANGLADESH     optimal              observed          -0.3289208   -0.5806219   -0.0772198
6 months    ki0047075b-MAL-ED       INDIA          optimal              observed          -0.9938179   -1.2723612   -0.7152746
6 months    ki0047075b-MAL-ED       NEPAL          optimal              observed          -0.0483935   -0.6727345    0.5759475
6 months    ki0047075b-MAL-ED       PERU           optimal              observed           1.0605282    0.6936985    1.4273579
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   optimal              observed           0.4733429   -0.0270911    0.9737769
6 months    ki1017093-NIH-Birth     BANGLADESH     optimal              observed          -0.3977855   -0.5982152   -0.1973558
6 months    ki1017093c-NIH-Crypto   BANGLADESH     optimal              observed           0.1267037   -0.0003722    0.2537796
6 months    ki1113344-GMS-Nepal     NEPAL          optimal              observed          -0.5290326   -0.7576151   -0.3004501
6 months    kiGH5241-JiVitA-3       BANGLADESH     optimal              observed          -0.5652531   -0.6054392   -0.5250670
6 months    kiGH5241-JiVitA-4       BANGLADESH     optimal              observed          -0.3773814   -0.5567480   -0.1980148
24 months   ki0047075b-MAL-ED       INDIA          optimal              observed          -1.0848356   -1.4886529   -0.6810184
24 months   ki0047075b-MAL-ED       NEPAL          optimal              observed          -0.3111815   -0.5925737   -0.0297893
24 months   ki0047075b-MAL-ED       PERU           optimal              observed           0.2233202   -0.0444490    0.4910894
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   optimal              observed           0.5453614    0.3334165    0.7573062
24 months   ki1017093-NIH-Birth     BANGLADESH     optimal              observed          -0.9197353   -1.1209768   -0.7184938
24 months   ki1017093c-NIH-Crypto   BANGLADESH     optimal              observed          -0.4210357   -0.5928482   -0.2492231
24 months   ki1113344-GMS-Nepal     NEPAL          optimal              observed          -1.1814242   -1.4777797   -0.8850686
24 months   kiGH5241-JiVitA-3       BANGLADESH     optimal              observed          -1.3035061   -1.3573217   -1.2496904
24 months   kiGH5241-JiVitA-4       BANGLADESH     optimal              observed          -1.2623030   -1.3889784   -1.1356275


### Parameter: E(Y)


agecat      studyid                 country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       NEPAL          observed             observed          -0.9503125   -1.1412124   -0.7594126
Birth       ki0047075b-MAL-ED       PERU           observed             observed          -0.0395238   -0.2249300    0.1458824
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   observed             observed           0.0036788   -0.1626160    0.1699735
Birth       kiGH5241-JiVitA-3       BANGLADESH     observed             observed          -0.7378181   -0.7714138   -0.7042224
Birth       kiGH5241-JiVitA-4       BANGLADESH     observed             observed          -0.2849727   -0.4444441   -0.1255013
6 months    ki0047075b-MAL-ED       INDIA          observed             observed          -0.7155110   -0.8495147   -0.5815073
6 months    ki0047075b-MAL-ED       NEPAL          observed             observed           0.1289063   -0.0638567    0.3216692
6 months    ki0047075b-MAL-ED       PERU           observed             observed           0.9790991    0.7644567    1.1937415
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   observed             observed           0.5422442    0.3806254    0.7038629
6 months    ki1017093-NIH-Birth     BANGLADESH     observed             observed          -0.4389101   -0.5279432   -0.3498771
6 months    ki1017093c-NIH-Crypto   BANGLADESH     observed             observed           0.0297622   -0.0491685    0.1086930
6 months    ki1113344-GMS-Nepal     NEPAL          observed             observed          -0.6028654   -0.6902793   -0.5154516
6 months    kiGH5241-JiVitA-3       BANGLADESH     observed             observed          -0.5900795   -0.6175675   -0.5625915
6 months    kiGH5241-JiVitA-4       BANGLADESH     observed             observed          -0.3630258   -0.4340802   -0.2919714
24 months   ki0047075b-MAL-ED       INDIA          observed             observed          -0.9595519   -1.0781202   -0.8409836
24 months   ki0047075b-MAL-ED       NEPAL          observed             observed          -0.2757812   -0.4379560   -0.1136065
24 months   ki0047075b-MAL-ED       PERU           observed             observed           0.0979907   -0.0798724    0.2758537
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   observed             observed           0.4264693    0.3032402    0.5496984
24 months   ki1017093-NIH-Birth     BANGLADESH     observed             observed          -0.9115790   -1.0095022   -0.8136559
24 months   ki1017093c-NIH-Crypto   BANGLADESH     observed             observed          -0.6103502   -0.7050157   -0.5156847
24 months   ki1113344-GMS-Nepal     NEPAL          observed             observed          -1.1257803   -1.2146168   -1.0369438
24 months   kiGH5241-JiVitA-3       BANGLADESH     observed             observed          -1.2943917   -1.3273407   -1.2614428
24 months   kiGH5241-JiVitA-4       BANGLADESH     observed             observed          -1.2268123   -1.2868189   -1.1668056


### Parameter: PAR


agecat      studyid                 country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       NEPAL          optimal              observed           0.0905934   -0.4300522    0.6112390
Birth       ki0047075b-MAL-ED       PERU           optimal              observed           0.0981055   -0.1079199    0.3041309
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   optimal              observed          -0.1478198   -0.4598784    0.1642389
Birth       kiGH5241-JiVitA-3       BANGLADESH     optimal              observed          -0.0516749   -0.0859830   -0.0173668
Birth       kiGH5241-JiVitA-4       BANGLADESH     optimal              observed           0.0439482   -0.1974610    0.2853573
6 months    ki0047075b-MAL-ED       INDIA          optimal              observed           0.2783069    0.0256271    0.5309867
6 months    ki0047075b-MAL-ED       NEPAL          optimal              observed           0.1772998   -0.3858591    0.7404587
6 months    ki0047075b-MAL-ED       PERU           optimal              observed          -0.0814291   -0.3823724    0.2195141
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   optimal              observed           0.0689012   -0.4107057    0.5485082
6 months    ki1017093-NIH-Birth     BANGLADESH     optimal              observed          -0.0411246   -0.2254069    0.1431576
6 months    ki1017093c-NIH-Crypto   BANGLADESH     optimal              observed          -0.0969415   -0.1928300   -0.0010530
6 months    ki1113344-GMS-Nepal     NEPAL          optimal              observed          -0.0738328   -0.2906689    0.1430033
6 months    kiGH5241-JiVitA-3       BANGLADESH     optimal              observed          -0.0248264   -0.0510773    0.0014245
6 months    kiGH5241-JiVitA-4       BANGLADESH     optimal              observed           0.0143556   -0.1508335    0.1795447
24 months   ki0047075b-MAL-ED       INDIA          optimal              observed           0.1252837   -0.2579915    0.5085590
24 months   ki0047075b-MAL-ED       NEPAL          optimal              observed           0.0354003   -0.1736560    0.2444565
24 months   ki0047075b-MAL-ED       PERU           optimal              observed          -0.1253295   -0.3895286    0.1388695
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   optimal              observed          -0.1188921   -0.2895025    0.0517184
24 months   ki1017093-NIH-Birth     BANGLADESH     optimal              observed           0.0081563   -0.1759021    0.1922147
24 months   ki1017093c-NIH-Crypto   BANGLADESH     optimal              observed          -0.1893145   -0.3399303   -0.0386987
24 months   ki1113344-GMS-Nepal     NEPAL          optimal              observed           0.0556439   -0.2216845    0.3329723
24 months   kiGH5241-JiVitA-3       BANGLADESH     optimal              observed           0.0091143   -0.0327170    0.0509457
24 months   kiGH5241-JiVitA-4       BANGLADESH     optimal              observed           0.0354907   -0.0740488    0.1450302
