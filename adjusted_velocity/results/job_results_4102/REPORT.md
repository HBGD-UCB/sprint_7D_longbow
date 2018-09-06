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

**Outcome Variable:** y_rate_len

## Predictor Variables

**Intervention Variable:** predfeed36

**Adjustment Set:**

* arm
* sex
* month
* brthmon
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

agecat         studyid                    country                        predfeed36    n_cell       n
-------------  -------------------------  -----------------------------  -----------  -------  ------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0                115     242
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                127     242
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0                151     180
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                 29     180
0-3 months     ki0047075b-MAL-ED          INDIA                          0                184     200
0-3 months     ki0047075b-MAL-ED          INDIA                          1                 16     200
0-3 months     ki0047075b-MAL-ED          NEPAL                          0                148     175
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                 27     175
0-3 months     ki0047075b-MAL-ED          PERU                           0                149     269
0-3 months     ki0047075b-MAL-ED          PERU                           1                120     269
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                226     229
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                  3     229
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                228     229
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1     229
0-3 months     ki1000109-EE               PAKISTAN                       0                252     594
0-3 months     ki1000109-EE               PAKISTAN                       1                342     594
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0               5998   30184
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1              24186   30184
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                566    3370
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1               2804    3370
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                107     230
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                123     230
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0                171     208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                 37     208
3-6 months     ki0047075b-MAL-ED          INDIA                          0                210     229
3-6 months     ki0047075b-MAL-ED          INDIA                          1                 19     229
3-6 months     ki0047075b-MAL-ED          NEPAL                          0                202     233
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                 31     233
3-6 months     ki0047075b-MAL-ED          PERU                           0                142     266
3-6 months     ki0047075b-MAL-ED          PERU                           1                124     266
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                238     241
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                  3     241
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                237     239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  2     239
3-6 months     ki1000109-EE               PAKISTAN                       0                264     662
3-6 months     ki1000109-EE               PAKISTAN                       1                398     662
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                184     918
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                734     918
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0               4080   20626
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1              16546   20626
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                576    3602
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1               3026    3602
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     0                101     219
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                118     219
6-12 months    ki0047075b-MAL-ED          BRAZIL                         0                160     194
6-12 months    ki0047075b-MAL-ED          BRAZIL                         1                 34     194
6-12 months    ki0047075b-MAL-ED          INDIA                          0                206     224
6-12 months    ki0047075b-MAL-ED          INDIA                          1                 18     224
6-12 months    ki0047075b-MAL-ED          NEPAL                          0                201     230
6-12 months    ki0047075b-MAL-ED          NEPAL                          1                 29     230
6-12 months    ki0047075b-MAL-ED          PERU                           0                124     237
6-12 months    ki0047075b-MAL-ED          PERU                           1                113     237
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                229     232
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  3     232
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                221     223
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  2     223
6-12 months    ki1000109-EE               PAKISTAN                       0                  6       8
6-12 months    ki1000109-EE               PAKISTAN                       1                  2       8
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                150     150
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  0     150
6-12 months    ki1113344-GMS-Nepal        NEPAL                          0                184     930
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1                746     930
6-12 months    ki1148112-LCNI-5           MALAWI                         0                 27      40
6-12 months    ki1148112-LCNI-5           MALAWI                         1                 13      40
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     0               3100   15508
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1              12408   15508
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0               1172    5612
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1               4440    5612
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 92     205
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                113     205
12-24 months   ki0047075b-MAL-ED          BRAZIL                         0                135     165
12-24 months   ki0047075b-MAL-ED          BRAZIL                         1                 30     165
12-24 months   ki0047075b-MAL-ED          INDIA                          0                207     225
12-24 months   ki0047075b-MAL-ED          INDIA                          1                 18     225
12-24 months   ki0047075b-MAL-ED          NEPAL                          0                197     226
12-24 months   ki0047075b-MAL-ED          NEPAL                          1                 29     226
12-24 months   ki0047075b-MAL-ED          PERU                           0                103     191
12-24 months   ki0047075b-MAL-ED          PERU                           1                 88     191
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                227     230
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  3     230
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                205     207
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  2     207
12-24 months   ki1113344-GMS-Nepal        NEPAL                          0                124     684
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1                560     684
12-24 months   ki1148112-LCNI-5           MALAWI                         0                 21      30
12-24 months   ki1148112-LCNI-5           MALAWI                         1                  9      30
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               1474    7244
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               5770    7244
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               1366    6222
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               4856    6222


The following strata were considered:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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
* agecat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
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
* agecat: 6-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-12 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-12 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/7b1faf53-eeb5-4f93-b70e-f4c9ea1efb1d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/7b1faf53-eeb5-4f93-b70e-f4c9ea1efb1d/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH   0                    NA                3.7025313   3.6178059   3.7872567
0-3 months     ki0047075b-MAL-ED     BANGLADESH   1                    NA                3.6835169   3.6027732   3.7642607
0-3 months     ki0047075b-MAL-ED     BRAZIL       0                    NA                4.0223573   3.9108668   4.1338477
0-3 months     ki0047075b-MAL-ED     BRAZIL       1                    NA                4.1999747   3.9625777   4.4373717
0-3 months     ki0047075b-MAL-ED     INDIA        0                    NA                3.5633212   3.4831838   3.6434587
0-3 months     ki0047075b-MAL-ED     INDIA        1                    NA                3.5964183   3.3807361   3.8121006
0-3 months     ki0047075b-MAL-ED     NEPAL        0                    NA                3.8233385   3.7394027   3.9072743
0-3 months     ki0047075b-MAL-ED     NEPAL        1                    NA                3.8031351   3.6466157   3.9596544
0-3 months     ki0047075b-MAL-ED     PERU         0                    NA                3.4190593   3.3318487   3.5062699
0-3 months     ki0047075b-MAL-ED     PERU         1                    NA                3.5748715   3.4838904   3.6658526
0-3 months     ki1000109-EE          PAKISTAN     0                    NA                2.7897429   2.6881965   2.8912894
0-3 months     ki1000109-EE          PAKISTAN     1                    NA                2.6961263   2.5921223   2.8001303
0-3 months     kiGH5241-JiVitA-3     BANGLADESH   0                    NA                3.6367564   3.6174180   3.6560949
0-3 months     kiGH5241-JiVitA-3     BANGLADESH   1                    NA                3.7143466   3.7021502   3.7265431
0-3 months     kiGH5241-JiVitA-4     BANGLADESH   0                    NA                3.5354100   3.4573132   3.6135069
0-3 months     kiGH5241-JiVitA-4     BANGLADESH   1                    NA                3.6511922   3.6178539   3.6845304
3-6 months     ki0047075b-MAL-ED     BANGLADESH   0                    NA                1.8891720   1.8293050   1.9490389
3-6 months     ki0047075b-MAL-ED     BANGLADESH   1                    NA                1.8865883   1.8284961   1.9446804
3-6 months     ki0047075b-MAL-ED     BRAZIL       0                    NA                2.1628084   2.0798017   2.2458151
3-6 months     ki0047075b-MAL-ED     BRAZIL       1                    NA                2.0898459   1.9346619   2.2450299
3-6 months     ki0047075b-MAL-ED     INDIA        0                    NA                1.8898024   1.8248974   1.9547074
3-6 months     ki0047075b-MAL-ED     INDIA        1                    NA                1.8112256   1.6593276   1.9631235
3-6 months     ki0047075b-MAL-ED     NEPAL        0                    NA                1.9756633   1.9152486   2.0360779
3-6 months     ki0047075b-MAL-ED     NEPAL        1                    NA                1.8237534   1.6935070   1.9539998
3-6 months     ki0047075b-MAL-ED     PERU         0                    NA                1.9882438   1.8971429   2.0793446
3-6 months     ki0047075b-MAL-ED     PERU         1                    NA                2.0554862   1.9604692   2.1505032
3-6 months     ki1000109-EE          PAKISTAN     0                    NA                2.1830204   2.0985033   2.2675376
3-6 months     ki1000109-EE          PAKISTAN     1                    NA                2.0396297   1.9721696   2.1070897
3-6 months     ki1113344-GMS-Nepal   NEPAL        0                    NA                1.6817331   1.6145346   1.7489316
3-6 months     ki1113344-GMS-Nepal   NEPAL        1                    NA                1.7127474   1.6710683   1.7544264
3-6 months     kiGH5241-JiVitA-3     BANGLADESH   0                    NA                1.9191522   1.8989889   1.9393154
3-6 months     kiGH5241-JiVitA-3     BANGLADESH   1                    NA                1.8987573   1.8863817   1.9111328
3-6 months     kiGH5241-JiVitA-4     BANGLADESH   0                    NA                1.9361242   1.8771272   1.9951212
3-6 months     kiGH5241-JiVitA-4     BANGLADESH   1                    NA                1.8845310   1.8519975   1.9170645
6-12 months    ki0047075b-MAL-ED     BANGLADESH   0                    NA                1.2407860   1.2064272   1.2751448
6-12 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                1.1803034   1.1480498   1.2125570
6-12 months    ki0047075b-MAL-ED     BRAZIL       0                    NA                1.3825236   1.3331742   1.4318730
6-12 months    ki0047075b-MAL-ED     BRAZIL       1                    NA                1.4043305   1.2803905   1.5282705
6-12 months    ki0047075b-MAL-ED     INDIA        0                    NA                1.1217871   1.0922425   1.1513318
6-12 months    ki0047075b-MAL-ED     INDIA        1                    NA                1.1126856   1.0090193   1.2163518
6-12 months    ki0047075b-MAL-ED     NEPAL        0                    NA                1.2290251   1.2020548   1.2559955
6-12 months    ki0047075b-MAL-ED     NEPAL        1                    NA                1.1768413   1.0955990   1.2580836
6-12 months    ki0047075b-MAL-ED     PERU         0                    NA                1.2263365   1.1796784   1.2729947
6-12 months    ki0047075b-MAL-ED     PERU         1                    NA                1.1925015   1.1496678   1.2353352
6-12 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                1.1850535   1.1546036   1.2155035
6-12 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                1.1596985   1.1390839   1.1803130
6-12 months    ki1148112-LCNI-5      MALAWI       0                    NA                1.1312222   1.0068894   1.2555550
6-12 months    ki1148112-LCNI-5      MALAWI       1                    NA                1.1762933   1.0660259   1.2865607
6-12 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                1.1273062   1.1133523   1.1412602
6-12 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                1.1103803   1.1027462   1.1180144
6-12 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                1.1698500   1.1496197   1.1900803
6-12 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                1.1990389   1.1866791   1.2113987
12-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.8445298   0.8217580   0.8673015
12-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.8330793   0.8126772   0.8534814
12-24 months   ki0047075b-MAL-ED     BRAZIL       0                    NA                0.9932777   0.9599476   1.0266078
12-24 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                0.9305637   0.8646770   0.9964504
12-24 months   ki0047075b-MAL-ED     INDIA        0                    NA                0.8861740   0.8680946   0.9042533
12-24 months   ki0047075b-MAL-ED     INDIA        1                    NA                0.8136673   0.7629786   0.8643560
12-24 months   ki0047075b-MAL-ED     NEPAL        0                    NA                0.8613822   0.8444397   0.8783247
12-24 months   ki0047075b-MAL-ED     NEPAL        1                    NA                0.8639234   0.8312701   0.8965768
12-24 months   ki0047075b-MAL-ED     PERU         0                    NA                0.8391194   0.8083238   0.8699150
12-24 months   ki0047075b-MAL-ED     PERU         1                    NA                0.8547933   0.8286203   0.8809663
12-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.8400386   0.8141223   0.8659549
12-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.8349884   0.8181031   0.8518737
12-24 months   ki1148112-LCNI-5      MALAWI       0                    NA                0.9052456   0.8493606   0.9611306
12-24 months   ki1148112-LCNI-5      MALAWI       1                    NA                0.8330056   0.7639315   0.9020797
12-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.8109767   0.7997269   0.8222265
12-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.7935405   0.7873315   0.7997495
12-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.8690399   0.8594894   0.8785905
12-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.8455611   0.8392589   0.8518633


### Parameter: E(Y)


agecat         studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH   NA                   NA                3.5623222   3.4990175   3.6256270
0-3 months     ki0047075b-MAL-ED     BRAZIL       NA                   NA                4.0509714   3.9492443   4.1526985
0-3 months     ki0047075b-MAL-ED     INDIA        NA                   NA                3.5655176   3.4893722   3.6416631
0-3 months     ki0047075b-MAL-ED     NEPAL        NA                   NA                3.8204935   3.7444190   3.8965681
0-3 months     ki0047075b-MAL-ED     PERU         NA                   NA                3.3154855   3.2518148   3.3791562
0-3 months     ki1000109-EE          PAKISTAN     NA                   NA                2.6575645   2.5739973   2.7411317
0-3 months     kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                3.6935220   3.6819690   3.7050750
0-3 months     kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                3.6272120   3.5957777   3.6586463
3-6 months     ki0047075b-MAL-ED     BANGLADESH   NA                   NA                1.9302352   1.8809143   1.9795560
3-6 months     ki0047075b-MAL-ED     BRAZIL       NA                   NA                2.1478156   2.0686357   2.2269955
3-6 months     ki0047075b-MAL-ED     INDIA        NA                   NA                1.8837264   1.8224393   1.9450135
3-6 months     ki0047075b-MAL-ED     NEPAL        NA                   NA                1.9680995   1.9120346   2.0241643
3-6 months     ki0047075b-MAL-ED     PERU         NA                   NA                2.0195897   1.9536580   2.0855214
3-6 months     ki1000109-EE          PAKISTAN     NA                   NA                2.0241201   1.9636505   2.0845898
3-6 months     ki1113344-GMS-Nepal   NEPAL        NA                   NA                1.7041512   1.6643719   1.7439304
3-6 months     kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                1.9109679   1.8993348   1.9226010
3-6 months     kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                1.8963017   1.8659335   1.9266699
6-12 months    ki0047075b-MAL-ED     BANGLADESH   NA                   NA                1.1143347   1.0894390   1.1392304
6-12 months    ki0047075b-MAL-ED     BRAZIL       NA                   NA                1.3863464   1.3400121   1.4326807
6-12 months    ki0047075b-MAL-ED     INDIA        NA                   NA                1.1210558   1.0926349   1.1494766
6-12 months    ki0047075b-MAL-ED     NEPAL        NA                   NA                1.2224454   1.1966480   1.2482429
6-12 months    ki0047075b-MAL-ED     PERU         NA                   NA                1.2102315   1.1775158   1.2429472
6-12 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                1.1652836   1.1455437   1.1850235
6-12 months    ki1148112-LCNI-5      MALAWI       NA                   NA                1.2437855   1.1489803   1.3385906
6-12 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                1.1137217   1.1063529   1.1210904
6-12 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                1.2021162   1.1906438   1.2135885
12-24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.8466791   0.8306555   0.8627027
12-24 months   ki0047075b-MAL-ED     BRAZIL       NA                   NA                0.9816245   0.9508764   1.0123725
12-24 months   ki0047075b-MAL-ED     INDIA        NA                   NA                0.8803730   0.8630530   0.8976931
12-24 months   ki0047075b-MAL-ED     NEPAL        NA                   NA                0.8617083   0.8463512   0.8770654
12-24 months   ki0047075b-MAL-ED     PERU         NA                   NA                0.8463453   0.8256453   0.8670453
12-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.8352708   0.8193000   0.8512417
12-24 months   ki1148112-LCNI-5      MALAWI       NA                   NA                0.8835736   0.8376943   0.9294529
12-24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.7961751   0.7903156   0.8020346
12-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.8490566   0.8431830   0.8549302


### Parameter: ATE


agecat         studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     BANGLADESH   1                    0                 -0.0190143   -0.1346778    0.0966491
0-3 months     ki0047075b-MAL-ED     BRAZIL       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     BRAZIL       1                    0                  0.1776174   -0.0839937    0.4392286
0-3 months     ki0047075b-MAL-ED     INDIA        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     INDIA        1                    0                  0.0330971   -0.1961623    0.2623565
0-3 months     ki0047075b-MAL-ED     NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     NEPAL        1                    0                 -0.0202034   -0.1952270    0.1548202
0-3 months     ki0047075b-MAL-ED     PERU         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     PERU         1                    0                  0.1558122    0.0261735    0.2854508
0-3 months     ki1000109-EE          PAKISTAN     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE          PAKISTAN     1                    0                 -0.0936167   -0.2373392    0.0501059
0-3 months     kiGH5241-JiVitA-3     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3     BANGLADESH   1                    0                  0.0775902    0.0565823    0.0985981
0-3 months     kiGH5241-JiVitA-4     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4     BANGLADESH   1                    0                  0.1157822    0.0309326    0.2006317
3-6 months     ki0047075b-MAL-ED     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     BANGLADESH   1                    0                 -0.0025837   -0.0815106    0.0763432
3-6 months     ki0047075b-MAL-ED     BRAZIL       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     BRAZIL       1                    0                 -0.0729625   -0.2361210    0.0901960
3-6 months     ki0047075b-MAL-ED     INDIA        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     INDIA        1                    0                 -0.0785768   -0.2431303    0.0859767
3-6 months     ki0047075b-MAL-ED     NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     NEPAL        1                    0                 -0.1519098   -0.2954877   -0.0083320
3-6 months     ki0047075b-MAL-ED     PERU         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     PERU         1                    0                  0.0672424   -0.0643366    0.1988214
3-6 months     ki1000109-EE          PAKISTAN     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE          PAKISTAN     1                    0                 -0.1433908   -0.2514979   -0.0352836
3-6 months     ki1113344-GMS-Nepal   NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal   NEPAL        1                    0                  0.0310143   -0.0427285    0.1047571
3-6 months     kiGH5241-JiVitA-3     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3     BANGLADESH   1                    0                 -0.0203949   -0.0426991    0.0019093
3-6 months     kiGH5241-JiVitA-4     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4     BANGLADESH   1                    0                 -0.0515932   -0.1163449    0.0131585
6-12 months    ki0047075b-MAL-ED     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED     BANGLADESH   1                    0                 -0.0604826   -0.1108070   -0.0101582
6-12 months    ki0047075b-MAL-ED     BRAZIL       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED     BRAZIL       1                    0                  0.0218069   -0.1111526    0.1547664
6-12 months    ki0047075b-MAL-ED     INDIA        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED     INDIA        1                    0                 -0.0091016   -0.1168956    0.0986925
6-12 months    ki0047075b-MAL-ED     NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED     NEPAL        1                    0                 -0.0521838   -0.1377854    0.0334177
6-12 months    ki0047075b-MAL-ED     PERU         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED     PERU         1                    0                 -0.0338351   -0.0954161    0.0277460
6-12 months    ki1113344-GMS-Nepal   NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal   NEPAL        1                    0                 -0.0253551   -0.0595912    0.0088810
6-12 months    ki1148112-LCNI-5      MALAWI       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5      MALAWI       1                    0                  0.0450711   -0.1305905    0.2207327
6-12 months    kiGH5241-JiVitA-3     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3     BANGLADESH   1                    0                 -0.0169259   -0.0318107   -0.0020411
6-12 months    kiGH5241-JiVitA-4     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4     BANGLADESH   1                    0                  0.0291889    0.0064651    0.0519128
12-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    0                 -0.0114504   -0.0419213    0.0190204
12-24 months   ki0047075b-MAL-ED     BRAZIL       0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED     BRAZIL       1                    0                 -0.0627140   -0.1352453    0.0098173
12-24 months   ki0047075b-MAL-ED     INDIA        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED     INDIA        1                    0                 -0.0725067   -0.1262582   -0.0187552
12-24 months   ki0047075b-MAL-ED     NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED     NEPAL        1                    0                  0.0025412   -0.0342261    0.0393085
12-24 months   ki0047075b-MAL-ED     PERU         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED     PERU         1                    0                  0.0156739   -0.0244712    0.0558190
12-24 months   ki1113344-GMS-Nepal   NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal   NEPAL        1                    0                 -0.0050502   -0.0357106    0.0256101
12-24 months   ki1148112-LCNI-5      MALAWI       0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5      MALAWI       1                    0                 -0.0722400   -0.1610902    0.0166103
12-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    0                 -0.0174361   -0.0297347   -0.0051375
12-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    0                 -0.0234788   -0.0342389   -0.0127188
