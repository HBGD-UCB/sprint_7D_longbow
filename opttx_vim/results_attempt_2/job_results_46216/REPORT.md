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
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                 62     243
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                181     243
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 13     185
Birth       ki0047075b-MAL-ED          BRAZIL                         0                172     185
Birth       ki0047075b-MAL-ED          INDIA                          1                  5     198
Birth       ki0047075b-MAL-ED          INDIA                          0                193     198
Birth       ki0047075b-MAL-ED          NEPAL                          1                 11     172
Birth       ki0047075b-MAL-ED          NEPAL                          0                161     172
Birth       ki0047075b-MAL-ED          PERU                           1                 15     273
Birth       ki0047075b-MAL-ED          PERU                           0                258     273
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0     236
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                236     236
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                120     121
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                  3       3
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                  0       3
Birth       ki1000108-IRC              INDIA                          1                  0       4
Birth       ki1000108-IRC              INDIA                          0                  4       4
Birth       ki1000109-EE               PAKISTAN                       1                  1       2
Birth       ki1000109-EE               PAKISTAN                       0                  1       2
Birth       ki1101329-Keneba           GAMBIA                         1                363    1252
Birth       ki1101329-Keneba           GAMBIA                         0                889    1252
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1              11155   13946
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0               2791   13946
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                580     727
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                147     727
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
6 months    ki1000109-EE               PAKISTAN                       1                222     367
6 months    ki1000109-EE               PAKISTAN                       0                145     367
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1              10685   13375
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0               2690   13375
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               3243    4171
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                928    4171
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
24 months   ki1101329-Keneba           GAMBIA                         1                424    1394
24 months   ki1101329-Keneba           GAMBIA                         0                970    1394
24 months   ki1113344-GMS-Nepal        NEPAL                          1                369     456
24 months   ki1113344-GMS-Nepal        NEPAL                          0                 87     456
24 months   ki1148112-LCNI-5           MALAWI                         1                 34     189
24 months   ki1148112-LCNI-5           MALAWI                         0                155     189
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               5283    6693
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               1410    6693
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               3140    4023
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                883    4023


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
![](/tmp/05c4563d-7d69-4052-8106-49e5663fc788/3f5d0ccb-77d9-4cb4-84a1-0f95a4035583/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   optimal              observed          -0.8768509   -1.0634616   -0.6902401
Birth       ki0047075b-MAL-ED     BRAZIL       optimal              observed          -1.0163017   -1.5742052   -0.4583982
Birth       ki0047075b-MAL-ED     INDIA        optimal              observed          -1.0145727   -1.1567131   -0.8724322
Birth       ki0047075b-MAL-ED     NEPAL        optimal              observed          -0.0560741   -0.3240304    0.2118822
Birth       ki0047075b-MAL-ED     PERU         optimal              observed          -1.1576480   -1.2917124   -1.0235836
Birth       ki1101329-Keneba      GAMBIA       optimal              observed          -0.0520471   -0.1515672    0.0474731
Birth       kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -1.5159737   -1.5393989   -1.4925486
Birth       kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -1.4928236   -1.5835910   -1.4020562
6 months    ki0047075b-MAL-ED     BANGLADESH   optimal              observed          -1.3788511   -1.6007771   -1.1569252
6 months    ki0047075b-MAL-ED     BRAZIL       optimal              observed           0.4891530   -0.1572388    1.1355448
6 months    ki0047075b-MAL-ED     INDIA        optimal              observed          -1.7030207   -2.0909858   -1.3150557
6 months    ki0047075b-MAL-ED     NEPAL        optimal              observed          -0.2488944   -0.5399800    0.0421912
6 months    ki0047075b-MAL-ED     PERU         optimal              observed          -1.4232041   -1.5439916   -1.3024167
6 months    ki1000109-EE          PAKISTAN     optimal              observed          -1.9166675   -2.1119549   -1.7213800
6 months    ki1017093b-PROVIDE    BANGLADESH   optimal              observed          -1.1760973   -1.3063367   -1.0458579
6 months    ki1101329-Keneba      GAMBIA       optimal              observed          -0.9333545   -1.0154974   -0.8512116
6 months    ki1113344-GMS-Nepal   NEPAL        optimal              observed          -1.2334788   -1.3318819   -1.1350757
6 months    ki1148112-LCNI-5      MALAWI       optimal              observed          -1.5607911   -1.7917899   -1.3297924
6 months    kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -1.2835077   -1.3100427   -1.2569726
6 months    kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -1.3186593   -1.3645286   -1.2727899
24 months   ki0047075b-MAL-ED     BANGLADESH   optimal              observed          -1.8931367   -2.0359166   -1.7503568
24 months   ki0047075b-MAL-ED     BRAZIL       optimal              observed          -0.1144035   -0.4100462    0.1812392
24 months   ki0047075b-MAL-ED     INDIA        optimal              observed          -1.8212516   -1.9466719   -1.6958313
24 months   ki0047075b-MAL-ED     NEPAL        optimal              observed          -1.2788160   -1.6869203   -0.8707117
24 months   ki0047075b-MAL-ED     PERU         optimal              observed          -1.9352808   -2.2464073   -1.6241544
24 months   ki1017093b-PROVIDE    BANGLADESH   optimal              observed          -1.5089994   -1.6237555   -1.3942434
24 months   ki1101329-Keneba      GAMBIA       optimal              observed          -1.5271582   -1.6174564   -1.4368599
24 months   ki1113344-GMS-Nepal   NEPAL        optimal              observed          -1.9195151   -2.0723216   -1.7667087
24 months   ki1148112-LCNI-5      MALAWI       optimal              observed          -2.0214531   -2.2244879   -1.8184183
24 months   kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -1.9676947   -2.0157839   -1.9196056
24 months   kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -1.7728380   -1.8183483   -1.7273277


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   observed             observed          -1.0414815   -1.1687478   -0.9142151
Birth       ki0047075b-MAL-ED     BRAZIL       observed             observed          -0.7350811   -0.8943683   -0.5757938
Birth       ki0047075b-MAL-ED     INDIA        observed             observed          -1.0235354   -1.1657122   -0.8813585
Birth       ki0047075b-MAL-ED     NEPAL        observed             observed          -0.7052907   -0.8627483   -0.5478331
Birth       ki0047075b-MAL-ED     PERU         observed             observed          -0.9231136   -1.0355489   -0.8106782
Birth       ki1101329-Keneba      GAMBIA       observed             observed           0.0325958   -0.0384289    0.1036205
Birth       kiGH5241-JiVitA-3     BANGLADESH   observed             observed          -1.5333680   -1.5553430   -1.5113930
Birth       kiGH5241-JiVitA-4     BANGLADESH   observed             observed          -1.5200688   -1.6064560   -1.4336815
6 months    ki0047075b-MAL-ED     BANGLADESH   observed             observed          -1.2006806   -1.3182323   -1.0831288
6 months    ki0047075b-MAL-ED     BRAZIL       observed             observed           0.0510207   -0.0930194    0.1950608
6 months    ki0047075b-MAL-ED     INDIA        observed             observed          -1.2203672   -1.3387619   -1.1019726
6 months    ki0047075b-MAL-ED     NEPAL        observed             observed          -0.5610593   -0.6737915   -0.4483272
6 months    ki0047075b-MAL-ED     PERU         observed             observed          -1.3173678   -1.4250795   -1.2096560
6 months    ki1000109-EE          PAKISTAN     observed             observed          -2.2009401   -2.3240630   -2.0778171
6 months    ki1017093b-PROVIDE    BANGLADESH   observed             observed          -1.0807417   -1.1562973   -1.0051861
6 months    ki1101329-Keneba      GAMBIA       observed             observed          -0.9355822   -0.9858754   -0.8852889
6 months    ki1113344-GMS-Nepal   NEPAL        observed             observed          -1.3150063   -1.3948049   -1.2352077
6 months    ki1148112-LCNI-5      MALAWI       observed             observed          -1.6395956   -1.7592633   -1.5199278
6 months    kiGH5241-JiVitA-3     BANGLADESH   observed             observed          -1.3121772   -1.3366725   -1.2876819
6 months    kiGH5241-JiVitA-4     BANGLADESH   observed             observed          -1.3602409   -1.3996637   -1.3208182
24 months   ki0047075b-MAL-ED     BANGLADESH   observed             observed          -1.9363270   -2.0622735   -1.8103806
24 months   ki0047075b-MAL-ED     BRAZIL       observed             observed           0.0418343   -0.1253834    0.2090521
24 months   ki0047075b-MAL-ED     INDIA        observed             observed          -1.8458150   -1.9718703   -1.7197596
24 months   ki0047075b-MAL-ED     NEPAL        observed             observed          -1.2752193   -1.3954783   -1.1549603
24 months   ki0047075b-MAL-ED     PERU         observed             observed          -1.7430000   -1.8632412   -1.6227588
24 months   ki1017093b-PROVIDE    BANGLADESH   observed             observed          -1.5859375   -1.6693304   -1.5025446
24 months   ki1101329-Keneba      GAMBIA       observed             observed          -1.5825269   -1.6378553   -1.5271985
24 months   ki1113344-GMS-Nepal   NEPAL        observed             observed          -1.8785563   -1.9657607   -1.7913519
24 months   ki1148112-LCNI-5      MALAWI       observed             observed          -1.9605820   -2.1001715   -1.8209925
24 months   kiGH5241-JiVitA-3     BANGLADESH   observed             observed          -1.9946153   -2.0246928   -1.9645378
24 months   kiGH5241-JiVitA-4     BANGLADESH   observed             observed          -1.7766542   -1.8163158   -1.7369927


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   optimal              observed          -0.1646306   -0.3191372   -0.0101240
Birth       ki0047075b-MAL-ED     BRAZIL       optimal              observed           0.2812206   -0.2457996    0.8082407
Birth       ki0047075b-MAL-ED     INDIA        optimal              observed          -0.0089627   -0.0418369    0.0239115
Birth       ki0047075b-MAL-ED     NEPAL        optimal              observed          -0.6492166   -0.9405396   -0.3578937
Birth       ki0047075b-MAL-ED     PERU         optimal              observed           0.2345345    0.1388346    0.3302343
Birth       ki1101329-Keneba      GAMBIA       optimal              observed           0.0846429    0.0187214    0.1505644
Birth       kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -0.0173942   -0.0262414   -0.0085471
Birth       kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -0.0272452   -0.0654518    0.0109615
6 months    ki0047075b-MAL-ED     BANGLADESH   optimal              observed           0.1781706    0.0037573    0.3525838
6 months    ki0047075b-MAL-ED     BRAZIL       optimal              observed          -0.4381323   -1.0487151    0.1724505
6 months    ki0047075b-MAL-ED     INDIA        optimal              observed           0.4826535    0.1090052    0.8563018
6 months    ki0047075b-MAL-ED     NEPAL        optimal              observed          -0.3121649   -0.5882413   -0.0360885
6 months    ki0047075b-MAL-ED     PERU         optimal              observed           0.1058364    0.0435420    0.1681308
6 months    ki1000109-EE          PAKISTAN     optimal              observed          -0.2842726   -0.4380385   -0.1305067
6 months    ki1017093b-PROVIDE    BANGLADESH   optimal              observed           0.0953556   -0.0046714    0.1953826
6 months    ki1101329-Keneba      GAMBIA       optimal              observed          -0.0022276   -0.0701397    0.0656844
6 months    ki1113344-GMS-Nepal   NEPAL        optimal              observed          -0.0815275   -0.1532271   -0.0098280
6 months    ki1148112-LCNI-5      MALAWI       optimal              observed          -0.0788045   -0.2651989    0.1075900
6 months    kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -0.0286695   -0.0408481   -0.0164909
6 months    kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -0.0415817   -0.0717336   -0.0114298
24 months   ki0047075b-MAL-ED     BANGLADESH   optimal              observed          -0.0431903   -0.1253004    0.0389197
24 months   ki0047075b-MAL-ED     BRAZIL       optimal              observed           0.1562378   -0.0837721    0.3962477
24 months   ki0047075b-MAL-ED     INDIA        optimal              observed          -0.0245634   -0.0564663    0.0073395
24 months   ki0047075b-MAL-ED     NEPAL        optimal              observed           0.0035967   -0.3912580    0.3984513
24 months   ki0047075b-MAL-ED     PERU         optimal              observed           0.1922808   -0.0938905    0.4784522
24 months   ki1017093b-PROVIDE    BANGLADESH   optimal              observed          -0.0769381   -0.1519346   -0.0019415
24 months   ki1101329-Keneba      GAMBIA       optimal              observed          -0.0553688   -0.1324779    0.0217404
24 months   ki1113344-GMS-Nepal   NEPAL        optimal              observed           0.0409588   -0.0873993    0.1693169
24 months   ki1148112-LCNI-5      MALAWI       optimal              observed           0.0608711   -0.1054129    0.2271551
24 months   kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -0.0269205   -0.0628012    0.0089602
24 months   kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -0.0038163   -0.0291874    0.0215549
