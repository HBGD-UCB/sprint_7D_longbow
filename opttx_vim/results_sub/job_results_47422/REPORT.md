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

**Intervention Variable:** exclfeed36

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* vagbrth
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nrooms
* W_nchldlt5
* month
* brthmon
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_vagbrth
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_W_nchldlt5
* delta_month
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

agecat      studyid                    country                        exclfeed36    n_cell       n
----------  -------------------------  -----------------------------  -----------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                 58     230
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                172     230
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 12     177
Birth       ki0047075b-MAL-ED          BRAZIL                         0                165     177
Birth       ki0047075b-MAL-ED          INDIA                          1                  5     195
Birth       ki0047075b-MAL-ED          INDIA                          0                190     195
Birth       ki0047075b-MAL-ED          NEPAL                          1                 11     167
Birth       ki0047075b-MAL-ED          NEPAL                          0                156     167
Birth       ki0047075b-MAL-ED          PERU                           1                 15     266
Birth       ki0047075b-MAL-ED          PERU                           0                251     266
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0     234
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                234     234
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1     116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                115     116
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                  3       3
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                  0       3
Birth       ki1000108-IRC              INDIA                          1                  0       3
Birth       ki1000108-IRC              INDIA                          0                  3       3
Birth       ki1000109-EE               PAKISTAN                       1                  0       1
Birth       ki1000109-EE               PAKISTAN                       0                  1       1
Birth       ki1101329-Keneba           GAMBIA                         1                345    1202
Birth       ki1101329-Keneba           GAMBIA                         0                857    1202
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               9175   11319
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0               2144   11319
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                491     602
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                111     602
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 63     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                177     240
6 months    ki0047075b-MAL-ED          BRAZIL                         1                 17     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                192     209
6 months    ki0047075b-MAL-ED          INDIA                          1                  7     236
6 months    ki0047075b-MAL-ED          INDIA                          0                229     236
6 months    ki0047075b-MAL-ED          NEPAL                          1                 15     236
6 months    ki0047075b-MAL-ED          NEPAL                          0                221     236
6 months    ki0047075b-MAL-ED          PERU                           1                 16     271
6 months    ki0047075b-MAL-ED          PERU                           0                255     271
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                254     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                246     247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  9       9
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  0       9
6 months    ki1000108-IRC              INDIA                          1                  0       4
6 months    ki1000108-IRC              INDIA                          0                  4       4
6 months    ki1000109-EE               PAKISTAN                       1                224     371
6 months    ki1000109-EE               PAKISTAN                       0                147     371
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                168     168
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                140     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                442     582
6 months    ki1101329-Keneba           GAMBIA                         1                507    1790
6 months    ki1101329-Keneba           GAMBIA                         0               1283    1790
6 months    ki1113344-GMS-Nepal        NEPAL                          1                423     526
6 months    ki1113344-GMS-Nepal        NEPAL                          0                103     526
6 months    ki1148112-LCNI-5           MALAWI                         1                 47     272
6 months    ki1148112-LCNI-5           MALAWI                         0                225     272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1              10654   13353
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0               2699   13353
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               3242    4172
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                930    4172
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 58     211
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                153     211
24 months   ki0047075b-MAL-ED          BRAZIL                         1                 16     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                153     169
24 months   ki0047075b-MAL-ED          INDIA                          1                  6     227
24 months   ki0047075b-MAL-ED          INDIA                          0                221     227
24 months   ki0047075b-MAL-ED          NEPAL                          1                 14     228
24 months   ki0047075b-MAL-ED          NEPAL                          0                214     228
24 months   ki0047075b-MAL-ED          PERU                           1                 12     200
24 months   ki0047075b-MAL-ED          PERU                           0                188     200
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                238     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                213     214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  9       9
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  0       9
24 months   ki1000108-IRC              INDIA                          1                  0       4
24 months   ki1000108-IRC              INDIA                          0                  4       4
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                148     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                428     576
24 months   ki1101329-Keneba           GAMBIA                         1                424    1395
24 months   ki1101329-Keneba           GAMBIA                         0                971    1395
24 months   ki1113344-GMS-Nepal        NEPAL                          1                368     455
24 months   ki1113344-GMS-Nepal        NEPAL                          0                 87     455
24 months   ki1148112-LCNI-5           MALAWI                         1                 34     184
24 months   ki1148112-LCNI-5           MALAWI                         0                150     184
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               5266    6672
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               1406    6672
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               3127    4009
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                882    4009


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/ead86ebb-47f5-4f49-92ca-943c8313fed1/be7f3711-37f7-4e8e-9546-49b645ec7a93/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   optimal              observed          -0.8592894   -1.1191558   -0.5994229
Birth       ki0047075b-MAL-ED     BRAZIL       optimal              observed           0.2390772   -0.1753303    0.6534846
Birth       ki0047075b-MAL-ED     INDIA        optimal              observed          -0.5070538   -1.2805370    0.2664294
Birth       ki0047075b-MAL-ED     NEPAL        optimal              observed          -0.5257996   -0.9475022   -0.1040971
Birth       ki0047075b-MAL-ED     PERU         optimal              observed           0.3785914   -0.0337286    0.7909115
Birth       ki1101329-Keneba      GAMBIA       optimal              observed           1.7334410    1.5659498    1.9009322
Birth       kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -0.7379011   -0.7627876   -0.7130146
Birth       kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -0.3373939   -0.4543812   -0.2204066
6 months    ki0047075b-MAL-ED     BANGLADESH   optimal              observed          -0.1338415   -0.3364867    0.0688036
6 months    ki0047075b-MAL-ED     BRAZIL       optimal              observed           1.4409283    0.9164622    1.9653945
6 months    ki0047075b-MAL-ED     INDIA        optimal              observed          -1.1054233   -1.4639223   -0.7469243
6 months    ki0047075b-MAL-ED     NEPAL        optimal              observed           0.2517512   -0.2570115    0.7605138
6 months    ki0047075b-MAL-ED     PERU         optimal              observed           1.2014516    0.6710623    1.7318409
6 months    ki1000109-EE          PAKISTAN     optimal              observed          -0.5152646   -0.6543496   -0.3761796
6 months    ki1017093b-PROVIDE    BANGLADESH   optimal              observed           0.0117302   -0.1516208    0.1750812
6 months    ki1101329-Keneba      GAMBIA       optimal              observed           0.0035036   -0.1030209    0.1100281
6 months    ki1113344-GMS-Nepal   NEPAL        optimal              observed          -0.5694137   -0.6699022   -0.4689252
6 months    ki1148112-LCNI-5      MALAWI       optimal              observed           0.5802647    0.3417385    0.8187909
6 months    kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -0.5504447   -0.5741859   -0.5267035
6 months    kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -0.3459997   -0.3936808   -0.2983186
24 months   ki0047075b-MAL-ED     BANGLADESH   optimal              observed          -0.7546863   -0.8948244   -0.6145482
24 months   ki0047075b-MAL-ED     BRAZIL       optimal              observed           0.7979589    0.2015440    1.3943738
24 months   ki0047075b-MAL-ED     INDIA        optimal              observed          -0.9941399   -1.1637147   -0.8245652
24 months   ki0047075b-MAL-ED     NEPAL        optimal              observed          -0.5736045   -0.9433918   -0.2038172
24 months   ki0047075b-MAL-ED     PERU         optimal              observed          -0.0325893   -0.2468696    0.1816909
24 months   ki1017093b-PROVIDE    BANGLADESH   optimal              observed          -0.8038055   -0.9579698   -0.6496412
24 months   ki1101329-Keneba      GAMBIA       optimal              observed          -0.7381678   -0.8286890   -0.6476466
24 months   ki1113344-GMS-Nepal   NEPAL        optimal              observed          -1.0696965   -1.1686433   -0.9707497
24 months   ki1148112-LCNI-5      MALAWI       optimal              observed          -0.1743742   -0.3868991    0.0381507
24 months   kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -1.2895130   -1.3406964   -1.2383296
24 months   kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -1.1982797   -1.2551401   -1.1414193


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   observed             observed          -0.9773043   -1.1153078   -0.8393008
Birth       ki0047075b-MAL-ED     BRAZIL       observed             observed           0.3837288    0.2059602    0.5614974
Birth       ki0047075b-MAL-ED     INDIA        observed             observed          -1.0816410   -1.2241126   -0.9391694
Birth       ki0047075b-MAL-ED     NEPAL        observed             observed          -0.9126946   -1.0520834   -0.7733058
Birth       ki0047075b-MAL-ED     PERU         observed             observed          -0.0602256   -0.1729666    0.0525155
Birth       ki1101329-Keneba      GAMBIA       observed             observed           1.7015141    1.6127308    1.7902975
Birth       kiGH5241-JiVitA-3     BANGLADESH   observed             observed          -0.7445605   -0.7677110   -0.7214100
Birth       kiGH5241-JiVitA-4     BANGLADESH   observed             observed          -0.3861794   -0.4712311   -0.3011277
6 months    ki0047075b-MAL-ED     BANGLADESH   observed             observed          -0.1400243   -0.2696346   -0.0104140
6 months    ki0047075b-MAL-ED     BRAZIL       observed             observed           0.9717225    0.8073791    1.1360658
6 months    ki0047075b-MAL-ED     INDIA        observed             observed          -0.7033969   -0.8285284   -0.5782654
6 months    ki0047075b-MAL-ED     NEPAL        observed             observed           0.1110452   -0.0202712    0.2423616
6 months    ki0047075b-MAL-ED     PERU         observed             observed           1.0562362    0.9338834    1.1785889
6 months    ki1000109-EE          PAKISTAN     observed             observed          -0.7256065   -0.8395859   -0.6116270
6 months    ki1017093b-PROVIDE    BANGLADESH   observed             observed          -0.2083706   -0.2927992   -0.1239419
6 months    ki1101329-Keneba      GAMBIA       observed             observed          -0.2009677   -0.2562623   -0.1456731
6 months    ki1113344-GMS-Nepal   NEPAL        observed             observed          -0.6007161   -0.6897580   -0.5116742
6 months    ki1148112-LCNI-5      MALAWI       observed             observed           0.3927574    0.2737700    0.5117448
6 months    kiGH5241-JiVitA-3     BANGLADESH   observed             observed          -0.5834618   -0.6054534   -0.5614701
6 months    kiGH5241-JiVitA-4     BANGLADESH   observed             observed          -0.3973178   -0.4385298   -0.3561058
24 months   ki0047075b-MAL-ED     BANGLADESH   observed             observed          -0.8227962   -0.9454140   -0.7001785
24 months   ki0047075b-MAL-ED     BRAZIL       observed             observed           0.4466272    0.2416144    0.6516401
24 months   ki0047075b-MAL-ED     INDIA        observed             observed          -0.9522907   -1.0676596   -0.8369219
24 months   ki0047075b-MAL-ED     NEPAL        observed             observed          -0.3764474   -0.4898516   -0.2630431
24 months   ki0047075b-MAL-ED     PERU         observed             observed           0.1302000    0.0113848    0.2490152
24 months   ki1017093b-PROVIDE    BANGLADESH   observed             observed          -0.8896181   -0.9727493   -0.8064868
24 months   ki1101329-Keneba      GAMBIA       observed             observed          -0.7973955   -0.8498696   -0.7449213
24 months   ki1113344-GMS-Nepal   NEPAL        observed             observed          -1.1186923   -1.2105469   -1.0268377
24 months   ki1148112-LCNI-5      MALAWI       observed             observed          -0.0771196   -0.2204715    0.0662323
24 months   kiGH5241-JiVitA-3     BANGLADESH   observed             observed          -1.3246418   -1.3519597   -1.2973238
24 months   kiGH5241-JiVitA-4     BANGLADESH   observed             observed          -1.2418558   -1.2769820   -1.2067296


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   optimal              observed          -0.1180150   -0.3495003    0.1134703
Birth       ki0047075b-MAL-ED     BRAZIL       optimal              observed           0.1446516   -0.2328833    0.5221866
Birth       ki0047075b-MAL-ED     INDIA        optimal              observed          -0.5745872   -1.3441792    0.1950048
Birth       ki0047075b-MAL-ED     NEPAL        optimal              observed          -0.3868950   -0.8028703    0.0290803
Birth       ki0047075b-MAL-ED     PERU         optimal              observed          -0.4388170   -0.8459783   -0.0316557
Birth       ki1101329-Keneba      GAMBIA       optimal              observed          -0.0319269   -0.1684616    0.1046078
Birth       kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -0.0066594   -0.0162748    0.0029561
Birth       kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -0.0487855   -0.1431284    0.0455574
6 months    ki0047075b-MAL-ED     BANGLADESH   optimal              observed          -0.0061828   -0.1760084    0.1636428
6 months    ki0047075b-MAL-ED     BRAZIL       optimal              observed          -0.4692058   -0.9771450    0.0387333
6 months    ki0047075b-MAL-ED     INDIA        optimal              observed           0.4020264    0.0386597    0.7653930
6 months    ki0047075b-MAL-ED     NEPAL        optimal              observed          -0.1407060   -0.6326424    0.3512304
6 months    ki0047075b-MAL-ED     PERU         optimal              observed          -0.1452155   -0.6676306    0.3771997
6 months    ki1000109-EE          PAKISTAN     optimal              observed          -0.2103419   -0.3059588   -0.1147249
6 months    ki1017093b-PROVIDE    BANGLADESH   optimal              observed          -0.2201008   -0.3653509   -0.0748507
6 months    ki1101329-Keneba      GAMBIA       optimal              observed          -0.2044713   -0.2934888   -0.1154537
6 months    ki1113344-GMS-Nepal   NEPAL        optimal              observed          -0.0313024   -0.0739591    0.0113542
6 months    ki1148112-LCNI-5      MALAWI       optimal              observed          -0.1875074   -0.3917363    0.0167216
6 months    kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -0.0330170   -0.0435595   -0.0224746
6 months    kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -0.0513181   -0.0724439   -0.0301923
24 months   ki0047075b-MAL-ED     BANGLADESH   optimal              observed          -0.0681099   -0.1470850    0.0108651
24 months   ki0047075b-MAL-ED     BRAZIL       optimal              observed          -0.3513317   -0.9122120    0.2095486
24 months   ki0047075b-MAL-ED     INDIA        optimal              observed           0.0418492   -0.0901624    0.1738608
24 months   ki0047075b-MAL-ED     NEPAL        optimal              observed           0.1971571   -0.1610213    0.5553355
24 months   ki0047075b-MAL-ED     PERU         optimal              observed           0.1627893   -0.0415004    0.3670791
24 months   ki1017093b-PROVIDE    BANGLADESH   optimal              observed          -0.0858126   -0.2195810    0.0479558
24 months   ki1101329-Keneba      GAMBIA       optimal              observed          -0.0592276   -0.1336392    0.0151839
24 months   ki1113344-GMS-Nepal   NEPAL        optimal              observed          -0.0489958   -0.1008027    0.0028111
24 months   ki1148112-LCNI-5      MALAWI       optimal              observed           0.0972546   -0.0382980    0.2328072
24 months   kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -0.0351288   -0.0788511    0.0085935
24 months   kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -0.0435761   -0.0870856   -0.0000666
