---
title: "Risk Factor Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowRiskFactors','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
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
      W: ['apgar1', 'apgar5', 'gagebrth', 'mage', 'meducyrs', 'sexn']
      A: ['parity_cat']
      Y: ['haz01']
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
        value: TRUE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
  output_directory:
    value: ''
editor_options: 
  chunk_output_type: console
---







## Methods
## Outcome Variable

**Outcome Variable:** y_rate_haz

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

agecat         studyid                    country                        exclfeed36    n_cell       n
-------------  -------------------------  -----------------------------  -----------  -------  ------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0                180     242
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                 62     242
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0                167     180
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                 13     180
0-3 months     ki0047075b-MAL-ED          INDIA                          0                195     200
0-3 months     ki0047075b-MAL-ED          INDIA                          1                  5     200
0-3 months     ki0047075b-MAL-ED          NEPAL                          0                163     175
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                 12     175
0-3 months     ki0047075b-MAL-ED          PERU                           0                254     269
0-3 months     ki0047075b-MAL-ED          PERU                           1                 15     269
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                229     229
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0     229
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                228     229
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1     229
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                  0       2
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                  2       2
0-3 months     ki1000108-IRC              INDIA                          0                  4       4
0-3 months     ki1000108-IRC              INDIA                          1                  0       4
0-3 months     ki1000109-EE               PAKISTAN                       0                252     594
0-3 months     ki1000109-EE               PAKISTAN                       1                342     594
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                459     628
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                169     628
0-3 months     ki1101329-Keneba           GAMBIA                         0                790    1116
0-3 months     ki1101329-Keneba           GAMBIA                         1                326    1116
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0               6042   30184
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1              24142   30184
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                572    3370
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1               2798    3370
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                169     230
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                 61     230
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0                191     208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                 17     208
3-6 months     ki0047075b-MAL-ED          INDIA                          0                222     229
3-6 months     ki0047075b-MAL-ED          INDIA                          1                  7     229
3-6 months     ki0047075b-MAL-ED          NEPAL                          0                219     233
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                 14     233
3-6 months     ki0047075b-MAL-ED          PERU                           0                250     266
3-6 months     ki0047075b-MAL-ED          PERU                           1                 16     266
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                241     241
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0     241
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                238     239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1     239
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                  0       6
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                  6       6
3-6 months     ki1000108-IRC              INDIA                          0                  4       4
3-6 months     ki1000108-IRC              INDIA                          1                  0       4
3-6 months     ki1000109-EE               PAKISTAN                       0                264     662
3-6 months     ki1000109-EE               PAKISTAN                       1                398     662
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                436     573
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                137     573
3-6 months     ki1101329-Keneba           GAMBIA                         0                929    1266
3-6 months     ki1101329-Keneba           GAMBIA                         1                337    1266
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                184     918
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                734     918
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0               4116   20626
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1              16510   20626
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                582    3602
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1               3020    3602
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     0                162     219
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                 57     219
6-12 months    ki0047075b-MAL-ED          BRAZIL                         0                177     194
6-12 months    ki0047075b-MAL-ED          BRAZIL                         1                 17     194
6-12 months    ki0047075b-MAL-ED          INDIA                          0                218     224
6-12 months    ki0047075b-MAL-ED          INDIA                          1                  6     224
6-12 months    ki0047075b-MAL-ED          NEPAL                          0                217     230
6-12 months    ki0047075b-MAL-ED          NEPAL                          1                 13     230
6-12 months    ki0047075b-MAL-ED          PERU                           0                222     237
6-12 months    ki0047075b-MAL-ED          PERU                           1                 15     237
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                232     232
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0     232
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                222     223
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1     223
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  0       9
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  9       9
6-12 months    ki1000108-IRC              INDIA                          0                  4       4
6-12 months    ki1000108-IRC              INDIA                          1                  0       4
6-12 months    ki1000109-EE               PAKISTAN                       0                  6       8
6-12 months    ki1000109-EE               PAKISTAN                       1                  2       8
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                150     150
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  0     150
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                418     545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                127     545
6-12 months    ki1101329-Keneba           GAMBIA                         0                840    1166
6-12 months    ki1101329-Keneba           GAMBIA                         1                326    1166
6-12 months    ki1113344-GMS-Nepal        NEPAL                          0                184     930
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1                746     930
6-12 months    ki1148112-LCNI-5           MALAWI                         0                 27      40
6-12 months    ki1148112-LCNI-5           MALAWI                         1                 13      40
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     0               3128   15508
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1              12380   15508
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0               1190    5612
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1               4422    5612
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                149     205
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 56     205
12-24 months   ki0047075b-MAL-ED          BRAZIL                         0                149     165
12-24 months   ki0047075b-MAL-ED          BRAZIL                         1                 16     165
12-24 months   ki0047075b-MAL-ED          INDIA                          0                219     225
12-24 months   ki0047075b-MAL-ED          INDIA                          1                  6     225
12-24 months   ki0047075b-MAL-ED          NEPAL                          0                213     226
12-24 months   ki0047075b-MAL-ED          NEPAL                          1                 13     226
12-24 months   ki0047075b-MAL-ED          PERU                           0                180     191
12-24 months   ki0047075b-MAL-ED          PERU                           1                 11     191
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                230     230
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0     230
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                206     207
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1     207
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  0       7
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  7       7
12-24 months   ki1000108-IRC              INDIA                          0                  4       4
12-24 months   ki1000108-IRC              INDIA                          1                  0       4
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                341     457
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                116     457
12-24 months   ki1101329-Keneba           GAMBIA                         0                742    1045
12-24 months   ki1101329-Keneba           GAMBIA                         1                303    1045
12-24 months   ki1113344-GMS-Nepal        NEPAL                          0                124     684
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1                560     684
12-24 months   ki1148112-LCNI-5           MALAWI                         0                 21      30
12-24 months   ki1148112-LCNI-5           MALAWI                         1                  9      30
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               1484    7244
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               5760    7244
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               1390    6222
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               4832    6222


The following strata were considered:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 12-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 12-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 12-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 3-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-12 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-12 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12-24 months, studyid: ki1000108-IRC, country: INDIA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/b1f6df0d-9aac-4db5-a692-8badf09f61af/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/b1f6df0d-9aac-4db5-a692-8badf09f61af/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.0524765   -0.0885426   -0.0164105
0-3 months     ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0054809   -0.0681673    0.0572055
0-3 months     ki0047075b-MAL-ED     BRAZIL       0                    NA                 0.1800184    0.1275599    0.2324769
0-3 months     ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.3180867    0.1451462    0.4910271
0-3 months     ki0047075b-MAL-ED     INDIA        0                    NA                -0.0240354   -0.0624725    0.0144017
0-3 months     ki0047075b-MAL-ED     INDIA        1                    NA                -0.0804111   -0.3634633    0.2026411
0-3 months     ki0047075b-MAL-ED     NEPAL        0                    NA                 0.0772700    0.0404218    0.1141182
0-3 months     ki0047075b-MAL-ED     NEPAL        1                    NA                 0.0386039   -0.0634843    0.1406921
0-3 months     ki0047075b-MAL-ED     PERU         0                    NA                -0.1619246   -0.1960737   -0.1277756
0-3 months     ki0047075b-MAL-ED     PERU         1                    NA                -0.1024592   -0.1974830   -0.0074354
0-3 months     ki1000109-EE          PAKISTAN     0                    NA                -0.2953260   -0.3493159   -0.2413361
0-3 months     ki1000109-EE          PAKISTAN     1                    NA                -0.3733496   -0.4307621   -0.3159371
0-3 months     ki1017093b-PROVIDE    BANGLADESH   0                    NA                -0.0416998   -0.0622577   -0.0211418
0-3 months     ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.0426186   -0.0688733   -0.0163638
0-3 months     ki1101329-Keneba      GAMBIA       0                    NA                -0.2810037   -0.3121134   -0.2498940
0-3 months     ki1101329-Keneba      GAMBIA       1                    NA                -0.2129677   -0.2573872   -0.1685482
0-3 months     kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.0340887    0.0244462    0.0437312
0-3 months     kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0744117    0.0684863    0.0803371
0-3 months     kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0016264   -0.0351038    0.0318510
0-3 months     kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0760315    0.0601523    0.0919108
3-6 months     ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.0138353   -0.0388270    0.0111563
3-6 months     ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0417362   -0.0929291    0.0094566
3-6 months     ki0047075b-MAL-ED     BRAZIL       0                    NA                 0.0581940    0.0200579    0.0963301
3-6 months     ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.0688552   -0.0487012    0.1864116
3-6 months     ki0047075b-MAL-ED     INDIA        0                    NA                -0.0409254   -0.0700583   -0.0117925
3-6 months     ki0047075b-MAL-ED     INDIA        1                    NA                -0.0147452   -0.1112534    0.0817630
3-6 months     ki0047075b-MAL-ED     NEPAL        0                    NA                -0.0238813   -0.0513564    0.0035937
3-6 months     ki0047075b-MAL-ED     NEPAL        1                    NA                 0.0165140   -0.0870054    0.1200335
3-6 months     ki0047075b-MAL-ED     PERU         0                    NA                 0.0289988   -0.0033275    0.0613250
3-6 months     ki0047075b-MAL-ED     PERU         1                    NA                 0.0124420   -0.0979258    0.1228098
3-6 months     ki1000109-EE          PAKISTAN     0                    NA                 0.0865126    0.0402102    0.1328149
3-6 months     ki1000109-EE          PAKISTAN     1                    NA                 0.0562242    0.0223297    0.0901187
3-6 months     ki1017093b-PROVIDE    BANGLADESH   0                    NA                -0.0308837   -0.0487990   -0.0129684
3-6 months     ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.0116831   -0.0371461    0.0137798
3-6 months     ki1101329-Keneba      GAMBIA       0                    NA                -0.0200157   -0.0425073    0.0024758
3-6 months     ki1101329-Keneba      GAMBIA       1                    NA                -0.0815013   -0.1122572   -0.0507455
3-6 months     ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.1816787   -0.2242393   -0.1391181
3-6 months     ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.1640975   -0.1845394   -0.1436556
3-6 months     kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.0015717   -0.0083061    0.0114495
3-6 months     kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0107055   -0.0164670   -0.0049441
3-6 months     kiGH5241-JiVitA-4     BANGLADESH   0                    NA                 0.0088488   -0.0156163    0.0333139
3-6 months     kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0163487   -0.0313161   -0.0013813
6-12 months    ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.0772706   -0.0898623   -0.0646789
6-12 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0908360   -0.1084517   -0.0732203
6-12 months    ki0047075b-MAL-ED     BRAZIL       0                    NA                 0.0113011   -0.0091747    0.0317770
6-12 months    ki0047075b-MAL-ED     BRAZIL       1                    NA                -0.0366876   -0.0897669    0.0163917
6-12 months    ki0047075b-MAL-ED     INDIA        0                    NA                -0.0767295   -0.0890750   -0.0643840
6-12 months    ki0047075b-MAL-ED     INDIA        1                    NA                -0.1119296   -0.1834664   -0.0403929
6-12 months    ki0047075b-MAL-ED     NEPAL        0                    NA                -0.0484357   -0.0594086   -0.0374628
6-12 months    ki0047075b-MAL-ED     NEPAL        1                    NA                -0.0706439   -0.1016459   -0.0396419
6-12 months    ki0047075b-MAL-ED     PERU         0                    NA                -0.0385021   -0.0529990   -0.0240051
6-12 months    ki0047075b-MAL-ED     PERU         1                    NA                -0.0197502   -0.0705127    0.0310122
6-12 months    ki1017093b-PROVIDE    BANGLADESH   0                    NA                -0.0604210   -0.0682837   -0.0525582
6-12 months    ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.0698369   -0.0845177   -0.0551561
6-12 months    ki1101329-Keneba      GAMBIA       0                    NA                -0.0654488   -0.0747133   -0.0561842
6-12 months    ki1101329-Keneba      GAMBIA       1                    NA                -0.0470703   -0.0602595   -0.0338811
6-12 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0445396   -0.0567033   -0.0323759
6-12 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0648454   -0.0734193   -0.0562715
6-12 months    ki1148112-LCNI-5      MALAWI       0                    NA                -0.0700506   -0.1197936   -0.0203077
6-12 months    ki1148112-LCNI-5      MALAWI       1                    NA                -0.0459789   -0.0881540   -0.0038039
6-12 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0664138   -0.0723384   -0.0604893
6-12 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0737297   -0.0769410   -0.0705184
6-12 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0483489   -0.0573207   -0.0393772
6-12 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0403386   -0.0455579   -0.0351193
12-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.0170417   -0.0234740   -0.0106094
12-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0194800   -0.0293454   -0.0096147
12-24 months   ki0047075b-MAL-ED     BRAZIL       0                    NA                -0.0000911   -0.0112340    0.0110518
12-24 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                -0.0099276   -0.0407177    0.0208624
12-24 months   ki0047075b-MAL-ED     INDIA        0                    NA                -0.0089657   -0.0141515   -0.0037799
12-24 months   ki0047075b-MAL-ED     INDIA        1                    NA                -0.0433752   -0.0661093   -0.0206411
12-24 months   ki0047075b-MAL-ED     NEPAL        0                    NA                -0.0297125   -0.0349966   -0.0244285
12-24 months   ki0047075b-MAL-ED     NEPAL        1                    NA                -0.0263365   -0.0384547   -0.0142182
12-24 months   ki0047075b-MAL-ED     PERU         0                    NA                -0.0083017   -0.0156701   -0.0009332
12-24 months   ki0047075b-MAL-ED     PERU         1                    NA                -0.0221284   -0.0382655   -0.0059913
12-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                -0.0071977   -0.0114768   -0.0029186
12-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.0105678   -0.0162928   -0.0048429
12-24 months   ki1101329-Keneba      GAMBIA       0                    NA                -0.0199802   -0.0245689   -0.0153916
12-24 months   ki1101329-Keneba      GAMBIA       1                    NA                -0.0195405   -0.0259953   -0.0130858
12-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0156071   -0.0243208   -0.0068933
12-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0171345   -0.0226268   -0.0116422
12-24 months   ki1148112-LCNI-5      MALAWI       0                    NA                -0.0053185   -0.0263716    0.0157345
12-24 months   ki1148112-LCNI-5      MALAWI       1                    NA                -0.0345407   -0.0639658   -0.0051157
12-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0174214   -0.0212939   -0.0135490
12-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0210202   -0.0231699   -0.0188705
12-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0095289   -0.0130049   -0.0060528
12-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0168559   -0.0190596   -0.0146521


### Parameter: E(Y)


agecat         studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH   NA                   NA                -0.0342392   -0.0665521   -0.0019264
0-3 months     ki0047075b-MAL-ED     BRAZIL       NA                   NA                 0.1928587    0.1409027    0.2448147
0-3 months     ki0047075b-MAL-ED     INDIA        NA                   NA                -0.0254448   -0.0636028    0.0127132
0-3 months     ki0047075b-MAL-ED     NEPAL        NA                   NA                 0.0746202    0.0395269    0.1097135
0-3 months     ki0047075b-MAL-ED     PERU         NA                   NA                -0.1586062   -0.1913606   -0.1258518
0-3 months     ki1000109-EE          PAKISTAN     NA                   NA                -0.3938516   -0.4364614   -0.3512419
0-3 months     ki1017093b-PROVIDE    BANGLADESH   NA                   NA                -0.0416284   -0.0597402   -0.0235165
0-3 months     ki1101329-Keneba      GAMBIA       NA                   NA                -0.2844332   -0.3106302   -0.2582362
0-3 months     kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                 0.0651938    0.0595783    0.0708094
0-3 months     kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                 0.0642202    0.0489852    0.0794552
3-6 months     ki0047075b-MAL-ED     BANGLADESH   NA                   NA                -0.0212379   -0.0443179    0.0018421
3-6 months     ki0047075b-MAL-ED     BRAZIL       NA                   NA                 0.0604904    0.0239698    0.0970111
3-6 months     ki0047075b-MAL-ED     INDIA        NA                   NA                -0.0401251   -0.0685271   -0.0117231
3-6 months     ki0047075b-MAL-ED     NEPAL        NA                   NA                -0.0214542   -0.0480456    0.0051373
3-6 months     ki0047075b-MAL-ED     PERU         NA                   NA                 0.0280549   -0.0030513    0.0591612
3-6 months     ki1000109-EE          PAKISTAN     NA                   NA                 0.0701161    0.0419135    0.0983187
3-6 months     ki1017093b-PROVIDE    BANGLADESH   NA                   NA                -0.0262004   -0.0425541   -0.0098466
3-6 months     ki1101329-Keneba      GAMBIA       NA                   NA                -0.0181994   -0.0377516    0.0013528
3-6 months     ki1113344-GMS-Nepal   NEPAL        NA                   NA                -0.1671388   -0.1860153   -0.1482623
3-6 months     kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                -0.0050971   -0.0104963    0.0003021
3-6 months     kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                -0.0093314   -0.0232659    0.0046030
6-12 months    ki0047075b-MAL-ED     BANGLADESH   NA                   NA                -0.0808013   -0.0912137   -0.0703889
6-12 months    ki0047075b-MAL-ED     BRAZIL       NA                   NA                 0.0065644   -0.0129183    0.0260472
6-12 months    ki0047075b-MAL-ED     INDIA        NA                   NA                -0.0776724   -0.0898619   -0.0654829
6-12 months    ki0047075b-MAL-ED     NEPAL        NA                   NA                -0.0488126   -0.0594641   -0.0381610
6-12 months    ki0047075b-MAL-ED     PERU         NA                   NA                -0.0373127   -0.0513600   -0.0232653
6-12 months    ki1017093b-PROVIDE    BANGLADESH   NA                   NA                -0.0626151   -0.0695574   -0.0556729
6-12 months    ki1101329-Keneba      GAMBIA       NA                   NA                -0.0616584   -0.0698107   -0.0535060
6-12 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                -0.0626340   -0.0709302   -0.0543379
6-12 months    ki1148112-LCNI-5      MALAWI       NA                   NA                -0.0281085   -0.0675243    0.0113073
6-12 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                -0.0720156   -0.0751021   -0.0689290
6-12 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                -0.0387210   -0.0435056   -0.0339363
12-24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                -0.0177078   -0.0231267   -0.0122889
12-24 months   ki0047075b-MAL-ED     BRAZIL       NA                   NA                -0.0013016   -0.0119070    0.0093038
12-24 months   ki0047075b-MAL-ED     INDIA        NA                   NA                -0.0098833   -0.0150187   -0.0047479
12-24 months   ki0047075b-MAL-ED     NEPAL        NA                   NA                -0.0295113   -0.0345712   -0.0244514
12-24 months   ki0047075b-MAL-ED     PERU         NA                   NA                -0.0092560   -0.0162726   -0.0022393
12-24 months   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                -0.0080793   -0.0119248   -0.0042338
12-24 months   ki1101329-Keneba      GAMBIA       NA                   NA                -0.0198482   -0.0237984   -0.0158981
12-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                -0.0170788   -0.0222320   -0.0119257
12-24 months   ki1148112-LCNI-5      MALAWI       NA                   NA                -0.0140852   -0.0319419    0.0037715
12-24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                -0.0193591   -0.0213957   -0.0173226
12-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                -0.0147196   -0.0167684   -0.0126707


### Parameter: ATE


agecat         studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     BANGLADESH   1                    0                  0.0469956   -0.0247069    0.1186982
0-3 months     ki0047075b-MAL-ED     BRAZIL       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     BRAZIL       1                    0                  0.1380683   -0.0428221    0.3189587
0-3 months     ki0047075b-MAL-ED     INDIA        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     INDIA        1                    0                 -0.0563757   -0.3420257    0.2292744
0-3 months     ki0047075b-MAL-ED     NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     NEPAL        1                    0                 -0.0386661   -0.1470322    0.0697001
0-3 months     ki0047075b-MAL-ED     PERU         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     PERU         1                    0                  0.0594654   -0.0412286    0.1601595
0-3 months     ki1000109-EE          PAKISTAN     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE          PAKISTAN     1                    0                 -0.0780236   -0.1568945    0.0008473
0-3 months     ki1017093b-PROVIDE    BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE    BANGLADESH   1                    0                 -0.0009188   -0.0307825    0.0289449
0-3 months     ki1101329-Keneba      GAMBIA       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba      GAMBIA       1                    0                  0.0680360    0.0142846    0.1217875
0-3 months     kiGH5241-JiVitA-3     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3     BANGLADESH   1                    0                  0.0403230    0.0299516    0.0506944
0-3 months     kiGH5241-JiVitA-4     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4     BANGLADESH   1                    0                  0.0776580    0.0407376    0.1145783
3-6 months     ki0047075b-MAL-ED     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     BANGLADESH   1                    0                 -0.0279009   -0.0844808    0.0286790
3-6 months     ki0047075b-MAL-ED     BRAZIL       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     BRAZIL       1                    0                  0.0106612   -0.1130408    0.1343632
3-6 months     ki0047075b-MAL-ED     INDIA        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     INDIA        1                    0                  0.0261802   -0.0746293    0.1269897
3-6 months     ki0047075b-MAL-ED     NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     NEPAL        1                    0                  0.0403954   -0.0667081    0.1474989
3-6 months     ki0047075b-MAL-ED     PERU         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     PERU         1                    0                 -0.0165567   -0.1315444    0.0984309
3-6 months     ki1000109-EE          PAKISTAN     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE          PAKISTAN     1                    0                 -0.0302883   -0.0873440    0.0267673
3-6 months     ki1017093b-PROVIDE    BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE    BANGLADESH   1                    0                  0.0192005   -0.0083582    0.0467593
3-6 months     ki1101329-Keneba      GAMBIA       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba      GAMBIA       1                    0                 -0.0614856   -0.0974883   -0.0254830
3-6 months     ki1113344-GMS-Nepal   NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal   NEPAL        1                    0                  0.0175812   -0.0296316    0.0647941
3-6 months     kiGH5241-JiVitA-3     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3     BANGLADESH   1                    0                 -0.0122772   -0.0231616   -0.0013929
3-6 months     kiGH5241-JiVitA-4     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4     BANGLADESH   1                    0                 -0.0251975   -0.0530243    0.0026293
6-12 months    ki0047075b-MAL-ED     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED     BANGLADESH   1                    0                 -0.0135654   -0.0352169    0.0080861
6-12 months    ki0047075b-MAL-ED     BRAZIL       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED     BRAZIL       1                    0                 -0.0479888   -0.1053208    0.0093432
6-12 months    ki0047075b-MAL-ED     INDIA        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED     INDIA        1                    0                 -0.0352001   -0.1077943    0.0373941
6-12 months    ki0047075b-MAL-ED     NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED     NEPAL        1                    0                 -0.0222082   -0.0549848    0.0105684
6-12 months    ki0047075b-MAL-ED     PERU         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED     PERU         1                    0                  0.0187518   -0.0338058    0.0713095
6-12 months    ki1017093b-PROVIDE    BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE    BANGLADESH   1                    0                 -0.0094159   -0.0260675    0.0072356
6-12 months    ki1101329-Keneba      GAMBIA       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1101329-Keneba      GAMBIA       1                    0                  0.0183785    0.0028482    0.0339087
6-12 months    ki1113344-GMS-Nepal   NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal   NEPAL        1                    0                 -0.0203058   -0.0341023   -0.0065093
6-12 months    ki1148112-LCNI-5      MALAWI       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5      MALAWI       1                    0                  0.0240717   -0.0417418    0.0898852
6-12 months    kiGH5241-JiVitA-3     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3     BANGLADESH   1                    0                 -0.0073159   -0.0136389   -0.0009929
6-12 months    kiGH5241-JiVitA-4     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4     BANGLADESH   1                    0                  0.0080103   -0.0020596    0.0180803
12-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    0                 -0.0024384   -0.0141688    0.0092921
12-24 months   ki0047075b-MAL-ED     BRAZIL       0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED     BRAZIL       1                    0                 -0.0098366   -0.0425184    0.0228452
12-24 months   ki0047075b-MAL-ED     INDIA        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED     INDIA        1                    0                 -0.0344095   -0.0577275   -0.0110914
12-24 months   ki0047075b-MAL-ED     NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED     NEPAL        1                    0                  0.0033761   -0.0098471    0.0165992
12-24 months   ki0047075b-MAL-ED     PERU         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED     PERU         1                    0                 -0.0138267   -0.0316100    0.0039565
12-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    0                 -0.0033702   -0.0095844    0.0028440
12-24 months   ki1101329-Keneba      GAMBIA       0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1101329-Keneba      GAMBIA       1                    0                  0.0004397   -0.0070706    0.0079500
12-24 months   ki1113344-GMS-Nepal   NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal   NEPAL        1                    0                 -0.0015274   -0.0118028    0.0087480
12-24 months   ki1148112-LCNI-5      MALAWI       0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5      MALAWI       1                    0                 -0.0292222   -0.0654032    0.0069588
12-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    0                 -0.0035988   -0.0078464    0.0006488
12-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    0                 -0.0073270   -0.0112571   -0.0033968
