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

**Intervention Variable:** impsan

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_nrooms
* W_nchldlt5
* W_parity
* impfloor
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_nrooms
* delta_W_nchldlt5
* delta_W_parity
* delta_impfloor
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                 country                        impsan    n_cell       n
----------  ----------------------  -----------------------------  -------  -------  ------
Birth       ki0047075b-MAL-ED       BANGLADESH                     1            197     234
Birth       ki0047075b-MAL-ED       BANGLADESH                     0             37     234
Birth       ki0047075b-MAL-ED       BRAZIL                         1            170     174
Birth       ki0047075b-MAL-ED       BRAZIL                         0              4     174
Birth       ki0047075b-MAL-ED       INDIA                          1             92     190
Birth       ki0047075b-MAL-ED       INDIA                          0             98     190
Birth       ki0047075b-MAL-ED       NEPAL                          1            170     171
Birth       ki0047075b-MAL-ED       NEPAL                          0              1     171
Birth       ki0047075b-MAL-ED       PERU                           1             62     250
Birth       ki0047075b-MAL-ED       PERU                           0            188     250
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   1              2     213
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0            211     213
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     113
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            113     113
Birth       ki1017093-NIH-Birth     BANGLADESH                     1              9      28
Birth       ki1017093-NIH-Birth     BANGLADESH                     0             19      28
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     1             25      27
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0              2      27
Birth       ki1114097-CONTENT       PERU                           1              1       2
Birth       ki1114097-CONTENT       PERU                           0              1       2
Birth       ki1135781-COHORTS       GUATEMALA                      1             45     491
Birth       ki1135781-COHORTS       GUATEMALA                      0            446     491
Birth       ki1135781-COHORTS       INDIA                          1           1767    4776
Birth       ki1135781-COHORTS       INDIA                          0           3009    4776
Birth       ki1135781-COHORTS       PHILIPPINES                    1            178    1191
Birth       ki1135781-COHORTS       PHILIPPINES                    0           1013    1191
Birth       kiGH5241-JiVitA-3       BANGLADESH                     1          13187   19592
Birth       kiGH5241-JiVitA-3       BANGLADESH                     0           6405   19592
Birth       kiGH5241-JiVitA-4       BANGLADESH                     1            606     822
Birth       kiGH5241-JiVitA-4       BANGLADESH                     0            216     822
6 months    ki0047075b-MAL-ED       BANGLADESH                     1            202     240
6 months    ki0047075b-MAL-ED       BANGLADESH                     0             38     240
6 months    ki0047075b-MAL-ED       BRAZIL                         1            205     209
6 months    ki0047075b-MAL-ED       BRAZIL                         0              4     209
6 months    ki0047075b-MAL-ED       INDIA                          1            108     233
6 months    ki0047075b-MAL-ED       INDIA                          0            125     233
6 months    ki0047075b-MAL-ED       NEPAL                          1            235     236
6 months    ki0047075b-MAL-ED       NEPAL                          0              1     236
6 months    ki0047075b-MAL-ED       PERU                           1             65     263
6 months    ki0047075b-MAL-ED       PERU                           0            198     263
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1              4     244
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0            240     244
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     238
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            238     238
6 months    ki1017093-NIH-Birth     BANGLADESH                     1            205     537
6 months    ki1017093-NIH-Birth     BANGLADESH                     0            332     537
6 months    ki1017093b-PROVIDE      BANGLADESH                     1            555     581
6 months    ki1017093b-PROVIDE      BANGLADESH                     0             26     581
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1            615     704
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0             89     704
6 months    ki1114097-CONTENT       PERU                           1            201     215
6 months    ki1114097-CONTENT       PERU                           0             14     215
6 months    ki1135781-COHORTS       GUATEMALA                      1             67     658
6 months    ki1135781-COHORTS       GUATEMALA                      0            591     658
6 months    ki1135781-COHORTS       INDIA                          1           1881    4971
6 months    ki1135781-COHORTS       INDIA                          0           3090    4971
6 months    ki1135781-COHORTS       PHILIPPINES                    1            143    1083
6 months    ki1135781-COHORTS       PHILIPPINES                    0            940    1083
6 months    ki1148112-LCNI-5        MALAWI                         1              3     812
6 months    ki1148112-LCNI-5        MALAWI                         0            809     812
6 months    kiGH5241-JiVitA-3       BANGLADESH                     1          12038   16800
6 months    kiGH5241-JiVitA-3       BANGLADESH                     0           4762   16800
6 months    kiGH5241-JiVitA-4       BANGLADESH                     1           3734    4825
6 months    kiGH5241-JiVitA-4       BANGLADESH                     0           1091    4825
24 months   ki0047075b-MAL-ED       BANGLADESH                     1            181     212
24 months   ki0047075b-MAL-ED       BANGLADESH                     0             31     212
24 months   ki0047075b-MAL-ED       BRAZIL                         1            166     169
24 months   ki0047075b-MAL-ED       BRAZIL                         0              3     169
24 months   ki0047075b-MAL-ED       INDIA                          1            104     225
24 months   ki0047075b-MAL-ED       INDIA                          0            121     225
24 months   ki0047075b-MAL-ED       NEPAL                          1            227     228
24 months   ki0047075b-MAL-ED       NEPAL                          0              1     228
24 months   ki0047075b-MAL-ED       PERU                           1             47     196
24 months   ki0047075b-MAL-ED       PERU                           0            149     196
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1              4     235
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0            231     235
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     207
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            207     207
24 months   ki1017093-NIH-Birth     BANGLADESH                     1            170     429
24 months   ki1017093-NIH-Birth     BANGLADESH                     0            259     429
24 months   ki1017093b-PROVIDE      BANGLADESH                     1            552     576
24 months   ki1017093b-PROVIDE      BANGLADESH                     0             24     576
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1            433     503
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0             70     503
24 months   ki1114097-CONTENT       PERU                           1            151     164
24 months   ki1114097-CONTENT       PERU                           0             13     164
24 months   ki1135781-COHORTS       GUATEMALA                      1             77     896
24 months   ki1135781-COHORTS       GUATEMALA                      0            819     896
24 months   ki1135781-COHORTS       INDIA                          1           1471    3754
24 months   ki1135781-COHORTS       INDIA                          0           2283    3754
24 months   ki1135781-COHORTS       PHILIPPINES                    1            126     990
24 months   ki1135781-COHORTS       PHILIPPINES                    0            864     990
24 months   ki1148112-LCNI-5        MALAWI                         1              2     572
24 months   ki1148112-LCNI-5        MALAWI                         0            570     572
24 months   kiGH5241-JiVitA-3       BANGLADESH                     1           6111    8622
24 months   kiGH5241-JiVitA-3       BANGLADESH                     0           2511    8622
24 months   kiGH5241-JiVitA-4       BANGLADESH                     1           3683    4747
24 months   kiGH5241-JiVitA-4       BANGLADESH                     0           1064    4747


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
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/a03b52c4-7e80-4c58-9c77-50b9e48642db/ef956906-41b8-40e7-bd27-b5a490462007/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH    optimal              observed          -0.9489028   -1.2585507   -0.6392549
Birth       ki0047075b-MAL-ED       INDIA         optimal              observed          -1.0114584   -1.2298387   -0.7930782
Birth       ki0047075b-MAL-ED       PERU          optimal              observed          -0.7338076   -0.8837958   -0.5838193
Birth       ki1017093-NIH-Birth     BANGLADESH    optimal              observed          -0.6242438   -1.0792191   -0.1692685
Birth       ki1135781-COHORTS       GUATEMALA     optimal              observed          -0.0162095   -0.2902957    0.2578767
Birth       ki1135781-COHORTS       INDIA         optimal              observed          -0.5405054   -0.5967731   -0.4842377
Birth       ki1135781-COHORTS       PHILIPPINES   optimal              observed           0.0440416   -0.1058970    0.1939801
Birth       kiGH5241-JiVitA-3       BANGLADESH    optimal              observed          -1.5492164   -1.5727118   -1.5257209
Birth       kiGH5241-JiVitA-4       BANGLADESH    optimal              observed          -1.4807814   -1.5972692   -1.3642937
6 months    ki0047075b-MAL-ED       BANGLADESH    optimal              observed          -1.4005753   -1.6192800   -1.1818706
6 months    ki0047075b-MAL-ED       INDIA         optimal              observed          -1.3389810   -1.5139272   -1.1640347
6 months    ki0047075b-MAL-ED       PERU          optimal              observed          -1.3042875   -1.4295655   -1.1790096
6 months    ki1017093-NIH-Birth     BANGLADESH    optimal              observed          -1.2971973   -1.4389966   -1.1553980
6 months    ki1017093b-PROVIDE      BANGLADESH    optimal              observed          -1.0810150   -1.1589933   -1.0030368
6 months    ki1017093c-NIH-Crypto   BANGLADESH    optimal              observed          -1.2156891   -1.4150060   -1.0163722
6 months    ki1114097-CONTENT       PERU          optimal              observed          -0.2973040   -0.4770083   -0.1175997
6 months    ki1135781-COHORTS       GUATEMALA     optimal              observed          -1.6218824   -1.8071819   -1.4365829
6 months    ki1135781-COHORTS       INDIA         optimal              observed          -0.8518689   -0.9059200   -0.7978177
6 months    ki1135781-COHORTS       PHILIPPINES   optimal              observed          -0.6556594   -0.8339688   -0.4773500
6 months    kiGH5241-JiVitA-3       BANGLADESH    optimal              observed          -1.2829810   -1.3086126   -1.2573494
6 months    kiGH5241-JiVitA-4       BANGLADESH    optimal              observed          -1.3404114   -1.3894586   -1.2913643
24 months   ki0047075b-MAL-ED       BANGLADESH    optimal              observed          -1.8722823   -2.0903677   -1.6541970
24 months   ki0047075b-MAL-ED       INDIA         optimal              observed          -1.7002691   -1.8695733   -1.5309649
24 months   ki0047075b-MAL-ED       PERU          optimal              observed          -1.8644461   -2.0828098   -1.6460825
24 months   ki1017093-NIH-Birth     BANGLADESH    optimal              observed          -2.0421575   -2.2099449   -1.8743702
24 months   ki1017093b-PROVIDE      BANGLADESH    optimal              observed          -1.5635297   -1.6477975   -1.4792619
24 months   ki1017093c-NIH-Crypto   BANGLADESH    optimal              observed          -1.5310190   -1.7515450   -1.3104930
24 months   ki1114097-CONTENT       PERU          optimal              observed          -0.6542191   -0.8334293   -0.4750089
24 months   ki1135781-COHORTS       GUATEMALA     optimal              observed          -2.5501990   -2.7607138   -2.3396843
24 months   ki1135781-COHORTS       INDIA         optimal              observed          -1.7047283   -1.7679249   -1.6415317
24 months   ki1135781-COHORTS       PHILIPPINES   optimal              observed          -1.6788614   -1.8559500   -1.5017729
24 months   kiGH5241-JiVitA-3       BANGLADESH    optimal              observed          -1.9611848   -1.9931358   -1.9292338
24 months   kiGH5241-JiVitA-4       BANGLADESH    optimal              observed          -1.7266804   -1.7676843   -1.6856764


### Parameter: E(Y)


agecat      studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH    observed             observed          -1.0229487   -1.1509575   -0.8949400
Birth       ki0047075b-MAL-ED       INDIA         observed             observed          -0.9912632   -1.1342711   -0.8482552
Birth       ki0047075b-MAL-ED       PERU          observed             observed          -0.9430000   -1.0581275   -0.8278725
Birth       ki1017093-NIH-Birth     BANGLADESH    observed             observed          -0.5292857   -0.8821252   -0.1764462
Birth       ki1135781-COHORTS       GUATEMALA     observed             observed          -0.0275356   -0.1359303    0.0808590
Birth       ki1135781-COHORTS       INDIA         observed             observed          -0.6777115   -0.7106054   -0.6448175
Birth       ki1135781-COHORTS       PHILIPPINES   observed             observed          -0.3137364   -0.3764483   -0.2510244
Birth       kiGH5241-JiVitA-3       BANGLADESH    observed             observed          -1.5751797   -1.5949356   -1.5554237
Birth       kiGH5241-JiVitA-4       BANGLADESH    observed             observed          -1.4976642   -1.5817349   -1.4135935
6 months    ki0047075b-MAL-ED       BANGLADESH    observed             observed          -1.2033681   -1.3212429   -1.0854932
6 months    ki0047075b-MAL-ED       INDIA         observed             observed          -1.2137196   -1.3330761   -1.0943631
6 months    ki0047075b-MAL-ED       PERU          observed             observed          -1.3210330   -1.4311040   -1.2109619
6 months    ki1017093-NIH-Birth     BANGLADESH    observed             observed          -1.4073821   -1.4960598   -1.3187043
6 months    ki1017093b-PROVIDE      BANGLADESH    observed             observed          -1.0925674   -1.1686395   -1.0164954
6 months    ki1017093c-NIH-Crypto   BANGLADESH    observed             observed          -1.2031037   -1.2749632   -1.1312442
6 months    ki1114097-CONTENT       PERU          observed             observed          -0.3139217   -0.4868486   -0.1409948
6 months    ki1135781-COHORTS       GUATEMALA     observed             observed          -1.8789210   -1.9609921   -1.7968498
6 months    ki1135781-COHORTS       INDIA         observed             observed          -1.0414424   -1.0741113   -1.0087734
6 months    ki1135781-COHORTS       PHILIPPINES   observed             observed          -1.1942936   -1.2608624   -1.1277248
6 months    kiGH5241-JiVitA-3       BANGLADESH    observed             observed          -1.3134804   -1.3366079   -1.2903528
6 months    kiGH5241-JiVitA-4       BANGLADESH    observed             observed          -1.3440477   -1.3813060   -1.3067894
24 months   ki0047075b-MAL-ED       BANGLADESH    observed             observed          -1.9431132   -2.0691678   -1.8170586
24 months   ki0047075b-MAL-ED       INDIA         observed             observed          -1.8372222   -1.9638017   -1.7106427
24 months   ki0047075b-MAL-ED       PERU          observed             observed          -1.7514286   -1.8732727   -1.6295845
24 months   ki1017093-NIH-Birth     BANGLADESH    observed             observed          -2.1807945   -2.2835902   -2.0779987
24 months   ki1017093b-PROVIDE      BANGLADESH    observed             observed          -1.5853993   -1.6687810   -1.5020176
24 months   ki1017093c-NIH-Crypto   BANGLADESH    observed             observed          -1.4297217   -1.5139732   -1.3454701
24 months   ki1114097-CONTENT       PERU          observed             observed          -0.6962195   -0.8674103   -0.5250287
24 months   ki1135781-COHORTS       GUATEMALA     observed             observed          -2.8674777   -2.9383136   -2.7966417
24 months   ki1135781-COHORTS       INDIA         observed             observed          -2.0003783   -2.0396528   -1.9611037
24 months   ki1135781-COHORTS       PHILIPPINES   observed             observed          -2.5681010   -2.6370882   -2.4991138
24 months   kiGH5241-JiVitA-3       BANGLADESH    observed             observed          -2.0126943   -2.0403978   -1.9849907
24 months   kiGH5241-JiVitA-4       BANGLADESH    observed             observed          -1.7578934   -1.7933205   -1.7224663


### Parameter: PAR


agecat      studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH    optimal              observed          -0.0740459   -0.3617612    0.2136693
Birth       ki0047075b-MAL-ED       INDIA         optimal              observed           0.0201953   -0.1250372    0.1654277
Birth       ki0047075b-MAL-ED       PERU          optimal              observed          -0.2091924   -0.3481012   -0.0702837
Birth       ki1017093-NIH-Birth     BANGLADESH    optimal              observed           0.0949581   -0.3644289    0.5543451
Birth       ki1135781-COHORTS       GUATEMALA     optimal              observed          -0.0113261   -0.2663037    0.2436514
Birth       ki1135781-COHORTS       INDIA         optimal              observed          -0.1372061   -0.1832719   -0.0911403
Birth       ki1135781-COHORTS       PHILIPPINES   optimal              observed          -0.3577779   -0.5006012   -0.2149546
Birth       kiGH5241-JiVitA-3       BANGLADESH    optimal              observed          -0.0259633   -0.0383259   -0.0136007
Birth       kiGH5241-JiVitA-4       BANGLADESH    optimal              observed          -0.0168828   -0.0979116    0.0641460
6 months    ki0047075b-MAL-ED       BANGLADESH    optimal              observed           0.1972072   -0.0009122    0.3953267
6 months    ki0047075b-MAL-ED       INDIA         optimal              observed           0.1252614    0.0031902    0.2473326
6 months    ki0047075b-MAL-ED       PERU          optimal              observed          -0.0167454   -0.0829093    0.0494185
6 months    ki1017093-NIH-Birth     BANGLADESH    optimal              observed          -0.1101848   -0.2211107    0.0007412
6 months    ki1017093b-PROVIDE      BANGLADESH    optimal              observed          -0.0115524   -0.0275396    0.0044348
6 months    ki1017093c-NIH-Crypto   BANGLADESH    optimal              observed           0.0125854   -0.1713029    0.1964737
6 months    ki1114097-CONTENT       PERU          optimal              observed          -0.0166177   -0.0593153    0.0260799
6 months    ki1135781-COHORTS       GUATEMALA     optimal              observed          -0.2570386   -0.4355719   -0.0785053
6 months    ki1135781-COHORTS       INDIA         optimal              observed          -0.1895735   -0.2342628   -0.1448841
6 months    ki1135781-COHORTS       PHILIPPINES   optimal              observed          -0.5386343   -0.7079532   -0.3693153
6 months    kiGH5241-JiVitA-3       BANGLADESH    optimal              observed          -0.0304994   -0.0413626   -0.0196362
6 months    kiGH5241-JiVitA-4       BANGLADESH    optimal              observed          -0.0036362   -0.0349668    0.0276944
24 months   ki0047075b-MAL-ED       BANGLADESH    optimal              observed          -0.0708309   -0.2661614    0.1244997
24 months   ki0047075b-MAL-ED       INDIA         optimal              observed          -0.1369531   -0.2711826   -0.0027237
24 months   ki0047075b-MAL-ED       PERU          optimal              observed           0.1130176   -0.0765674    0.3026025
24 months   ki1017093-NIH-Birth     BANGLADESH    optimal              observed          -0.1386369   -0.2626688   -0.0146051
24 months   ki1017093b-PROVIDE      BANGLADESH    optimal              observed          -0.0218696   -0.0430496   -0.0006896
24 months   ki1017093c-NIH-Crypto   BANGLADESH    optimal              observed           0.1012973   -0.1028287    0.3054233
24 months   ki1114097-CONTENT       PERU          optimal              observed          -0.0420004   -0.0886643    0.0046635
24 months   ki1135781-COHORTS       GUATEMALA     optimal              observed          -0.3172787   -0.5236374   -0.1109199
24 months   ki1135781-COHORTS       INDIA         optimal              observed          -0.2956500   -0.3480284   -0.2432715
24 months   ki1135781-COHORTS       PHILIPPINES   optimal              observed          -0.8892396   -1.0606819   -0.7177973
24 months   kiGH5241-JiVitA-3       BANGLADESH    optimal              observed          -0.0515095   -0.0673224   -0.0356966
24 months   kiGH5241-JiVitA-4       BANGLADESH    optimal              observed          -0.0312130   -0.0490392   -0.0133869
