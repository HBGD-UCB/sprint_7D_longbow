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

unadjusted

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
![](/tmp/09c21202-4acd-4054-a131-272338b89a72/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/09c21202-4acd-4054-a131-272338b89a72/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH   0                    NA                3.5607532   3.4686348   3.6528717
0-3 months     ki0047075b-MAL-ED     BANGLADESH   1                    NA                3.5637430   3.4766051   3.6508808
0-3 months     ki0047075b-MAL-ED     BRAZIL       0                    NA                4.0224428   3.9108008   4.1340848
0-3 months     ki0047075b-MAL-ED     BRAZIL       1                    NA                4.1995167   3.9602365   4.4387969
0-3 months     ki0047075b-MAL-ED     INDIA        0                    NA                3.5631690   3.4828179   3.6435201
0-3 months     ki0047075b-MAL-ED     INDIA        1                    NA                3.5925269   3.3646673   3.8203865
0-3 months     ki0047075b-MAL-ED     NEPAL        0                    NA                3.8251279   3.7400462   3.9102096
0-3 months     ki0047075b-MAL-ED     NEPAL        1                    NA                3.7950902   3.6353713   3.9548091
0-3 months     ki0047075b-MAL-ED     PERU         0                    NA                3.2778896   3.1903210   3.3654582
0-3 months     ki0047075b-MAL-ED     PERU         1                    NA                3.3621671   3.2703924   3.4539418
0-3 months     ki1000109-EE          PAKISTAN     0                    NA                2.6883206   2.5700483   2.8065928
0-3 months     ki1000109-EE          PAKISTAN     1                    NA                2.6349021   2.5189519   2.7508523
0-3 months     kiGH5241-JiVitA-3     BANGLADESH   0                    NA                3.6413564   3.6173162   3.6653965
0-3 months     kiGH5241-JiVitA-3     BANGLADESH   1                    NA                3.7064588   3.6940000   3.7189177
0-3 months     kiGH5241-JiVitA-4     BANGLADESH   0                    NA                3.5159550   3.4311318   3.6007781
0-3 months     kiGH5241-JiVitA-4     BANGLADESH   1                    NA                3.6496697   3.6161984   3.6831411
3-6 months     ki0047075b-MAL-ED     BANGLADESH   0                    NA                1.9376358   1.8652508   2.0100209
3-6 months     ki0047075b-MAL-ED     BANGLADESH   1                    NA                1.9237972   1.8564346   1.9911597
3-6 months     ki0047075b-MAL-ED     BRAZIL       0                    NA                2.1627820   2.0760368   2.2495272
3-6 months     ki0047075b-MAL-ED     BRAZIL       1                    NA                2.0786464   1.8868122   2.2704807
3-6 months     ki0047075b-MAL-ED     INDIA        0                    NA                1.8906820   1.8255396   1.9558244
3-6 months     ki0047075b-MAL-ED     INDIA        1                    NA                1.8068487   1.6458094   1.9678880
3-6 months     ki0047075b-MAL-ED     NEPAL        0                    NA                1.9774254   1.9168497   2.0380010
3-6 months     ki0047075b-MAL-ED     NEPAL        1                    NA                1.9073310   1.7616016   2.0530603
3-6 months     ki0047075b-MAL-ED     PERU         0                    NA                1.9882617   1.8971310   2.0793925
3-6 months     ki0047075b-MAL-ED     PERU         1                    NA                2.0554652   1.9603982   2.1505322
3-6 months     ki1000109-EE          PAKISTAN     0                    NA                2.0636050   1.9614125   2.1657975
3-6 months     ki1000109-EE          PAKISTAN     1                    NA                1.9979292   1.9238473   2.0720110
3-6 months     ki1113344-GMS-Nepal   NEPAL        0                    NA                1.6776697   1.5827244   1.7726151
3-6 months     ki1113344-GMS-Nepal   NEPAL        1                    NA                1.7107896   1.6671274   1.7544517
3-6 months     kiGH5241-JiVitA-3     BANGLADESH   0                    NA                1.9625575   1.9365850   1.9885300
3-6 months     kiGH5241-JiVitA-3     BANGLADESH   1                    NA                1.8982467   1.8855581   1.9109353
3-6 months     kiGH5241-JiVitA-4     BANGLADESH   0                    NA                1.9613680   1.8864837   2.0362523
3-6 months     kiGH5241-JiVitA-4     BANGLADESH   1                    NA                1.8839163   1.8506700   1.9171626
6-12 months    ki0047075b-MAL-ED     BANGLADESH   0                    NA                1.1313931   1.0949479   1.1678383
6-12 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                1.0997339   1.0658717   1.1335961
6-12 months    ki0047075b-MAL-ED     BRAZIL       0                    NA                1.3825781   1.3331650   1.4319912
6-12 months    ki0047075b-MAL-ED     BRAZIL       1                    NA                1.4040796   1.2784560   1.5297031
6-12 months    ki0047075b-MAL-ED     INDIA        0                    NA                1.1217969   1.0922521   1.1513416
6-12 months    ki0047075b-MAL-ED     INDIA        1                    NA                1.1125742   1.0089097   1.2162388
6-12 months    ki0047075b-MAL-ED     NEPAL        0                    NA                1.2290258   1.2020554   1.2559963
6-12 months    ki0047075b-MAL-ED     NEPAL        1                    NA                1.1768365   1.0955921   1.2580808
6-12 months    ki0047075b-MAL-ED     PERU         0                    NA                1.2211484   1.1731468   1.2691500
6-12 months    ki0047075b-MAL-ED     PERU         1                    NA                1.1982519   1.1543860   1.2421179
6-12 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                1.1765878   1.1281587   1.2250168
6-12 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                1.1624954   1.1409896   1.1840013
6-12 months    ki1148112-LCNI-5      MALAWI       0                    NA                1.1850352   1.0606518   1.3094187
6-12 months    ki1148112-LCNI-5      MALAWI       1                    NA                1.3658051   1.2577692   1.4738411
6-12 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                1.1270421   1.1104496   1.1436346
6-12 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                1.1103937   1.1025588   1.1182286
6-12 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                1.2066878   1.1813941   1.2319816
6-12 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                1.2009094   1.1881455   1.2136733
12-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.8544529   0.8302599   0.8786458
12-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.8403500   0.8190425   0.8616574
12-24 months   ki0047075b-MAL-ED     BRAZIL       0                    NA                0.9935070   0.9596325   1.0273815
12-24 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                0.9281531   0.8580604   0.9982458
12-24 months   ki0047075b-MAL-ED     INDIA        0                    NA                0.8860667   0.8679522   0.9041812
12-24 months   ki0047075b-MAL-ED     INDIA        1                    NA                0.8148959   0.7651213   0.8646704
12-24 months   ki0047075b-MAL-ED     NEPAL        0                    NA                0.8613854   0.8444407   0.8783300
12-24 months   ki0047075b-MAL-ED     NEPAL        1                    NA                0.8639020   0.8311486   0.8966554
12-24 months   ki0047075b-MAL-ED     PERU         0                    NA                0.8390005   0.8079944   0.8700067
12-24 months   ki0047075b-MAL-ED     PERU         1                    NA                0.8549420   0.8285699   0.8813140
12-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.8368090   0.7967643   0.8768537
12-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.8349302   0.8175550   0.8523055
12-24 months   ki1148112-LCNI-5      MALAWI       0                    NA                0.9052456   0.8493606   0.9611306
12-24 months   ki1148112-LCNI-5      MALAWI       1                    NA                0.8330056   0.7639315   0.9020797
12-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.8070518   0.7935400   0.8205636
12-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.7933965   0.7870206   0.7997724
12-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.8619198   0.8501208   0.8737187
12-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.8454382   0.8389257   0.8519507


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
0-3 months     ki0047075b-MAL-ED     BANGLADESH   1                    0                  0.0029898   -0.1238125    0.1297920
0-3 months     ki0047075b-MAL-ED     BRAZIL       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     BRAZIL       1                    0                  0.1770739   -0.0869696    0.4411174
0-3 months     ki0047075b-MAL-ED     INDIA        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     INDIA        1                    0                  0.0293579   -0.2122540    0.2709698
0-3 months     ki0047075b-MAL-ED     NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     NEPAL        1                    0                 -0.0300377   -0.2110046    0.1509292
0-3 months     ki0047075b-MAL-ED     PERU         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     PERU         1                    0                  0.0842775   -0.0425722    0.2111272
0-3 months     ki1000109-EE          PAKISTAN     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE          PAKISTAN     1                    0                 -0.0534185   -0.2190469    0.1122099
0-3 months     kiGH5241-JiVitA-3     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3     BANGLADESH   1                    0                  0.0651025    0.0392957    0.0909093
0-3 months     kiGH5241-JiVitA-4     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4     BANGLADESH   1                    0                  0.1337148    0.0425823    0.2248472
3-6 months     ki0047075b-MAL-ED     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     BANGLADESH   1                    0                 -0.0138386   -0.1127189    0.0850417
3-6 months     ki0047075b-MAL-ED     BRAZIL       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     BRAZIL       1                    0                 -0.0841356   -0.2946709    0.1263998
3-6 months     ki0047075b-MAL-ED     INDIA        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     INDIA        1                    0                 -0.0838333   -0.2575492    0.0898826
3-6 months     ki0047075b-MAL-ED     NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     NEPAL        1                    0                 -0.0700944   -0.2279122    0.0877234
3-6 months     ki0047075b-MAL-ED     PERU         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     PERU         1                    0                  0.0672035   -0.0644876    0.1988946
3-6 months     ki1000109-EE          PAKISTAN     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE          PAKISTAN     1                    0                 -0.0656759   -0.1918956    0.0605439
3-6 months     ki1113344-GMS-Nepal   NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal   NEPAL        1                    0                  0.0331198   -0.0713838    0.1376234
3-6 months     kiGH5241-JiVitA-3     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3     BANGLADESH   1                    0                 -0.0643108   -0.0926710   -0.0359506
3-6 months     kiGH5241-JiVitA-4     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4     BANGLADESH   1                    0                 -0.0774517   -0.1595491    0.0046456
6-12 months    ki0047075b-MAL-ED     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED     BANGLADESH   1                    0                 -0.0316592   -0.0814076    0.0180892
6-12 months    ki0047075b-MAL-ED     BRAZIL       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED     BRAZIL       1                    0                  0.0215014   -0.1134909    0.1564937
6-12 months    ki0047075b-MAL-ED     INDIA        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED     INDIA        1                    0                 -0.0092226   -0.1170152    0.0985699
6-12 months    ki0047075b-MAL-ED     NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED     NEPAL        1                    0                 -0.0521894   -0.1377934    0.0334146
6-12 months    ki0047075b-MAL-ED     PERU         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED     PERU         1                    0                 -0.0228965   -0.0879224    0.0421295
6-12 months    ki1113344-GMS-Nepal   NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal   NEPAL        1                    0                 -0.0140923   -0.0670817    0.0388970
6-12 months    ki1148112-LCNI-5      MALAWI       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5      MALAWI       1                    0                  0.1807699    0.0160186    0.3455212
6-12 months    kiGH5241-JiVitA-3     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3     BANGLADESH   1                    0                 -0.0166484   -0.0343391    0.0010423
6-12 months    kiGH5241-JiVitA-4     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4     BANGLADESH   1                    0                 -0.0057784   -0.0339331    0.0223763
12-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    0                 -0.0141029   -0.0463412    0.0181354
12-24 months   ki0047075b-MAL-ED     BRAZIL       0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED     BRAZIL       1                    0                 -0.0653539   -0.1432029    0.0124951
12-24 months   ki0047075b-MAL-ED     INDIA        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED     INDIA        1                    0                 -0.0711709   -0.1241392   -0.0182025
12-24 months   ki0047075b-MAL-ED     NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED     NEPAL        1                    0                  0.0025166   -0.0343602    0.0393935
12-24 months   ki0047075b-MAL-ED     PERU         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED     PERU         1                    0                  0.0159414   -0.0247632    0.0566460
12-24 months   ki1113344-GMS-Nepal   NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal   NEPAL        1                    0                 -0.0018788   -0.0455305    0.0417730
12-24 months   ki1148112-LCNI-5      MALAWI       0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5      MALAWI       1                    0                 -0.0722400   -0.1610902    0.0166103
12-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    0                 -0.0136553   -0.0283952    0.0010845
12-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    0                 -0.0164816   -0.0295199   -0.0034434
