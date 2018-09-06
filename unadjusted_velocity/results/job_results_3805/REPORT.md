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
![](/tmp/668bb333-a179-4983-bc3e-579c4ebb74b0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/668bb333-a179-4983-bc3e-579c4ebb74b0/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.0419590   -0.0897856    0.0058677
0-3 months     ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0272489   -0.0709811    0.0164833
0-3 months     ki0047075b-MAL-ED     BRAZIL       0                    NA                 0.1756933    0.1187922    0.2325945
0-3 months     ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.2822368    0.1599761    0.4044974
0-3 months     ki0047075b-MAL-ED     INDIA        0                    NA                -0.0250300   -0.0653710    0.0153111
0-3 months     ki0047075b-MAL-ED     INDIA        1                    NA                -0.0302153   -0.1410121    0.0805814
0-3 months     ki0047075b-MAL-ED     NEPAL        0                    NA                 0.0775639    0.0380542    0.1170737
0-3 months     ki0047075b-MAL-ED     NEPAL        1                    NA                 0.0584843   -0.0107188    0.1276873
0-3 months     ki0047075b-MAL-ED     PERU         0                    NA                -0.1793999   -0.2245312   -0.1342687
0-3 months     ki0047075b-MAL-ED     PERU         1                    NA                -0.1327872   -0.1798215   -0.0857530
0-3 months     ki1000109-EE          PAKISTAN     0                    NA                -0.3682845   -0.4260295   -0.3105395
0-3 months     ki1000109-EE          PAKISTAN     1                    NA                -0.4126906   -0.4730866   -0.3522946
0-3 months     kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.0319317    0.0201111    0.0437522
0-3 months     kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0734427    0.0674051    0.0794803
0-3 months     kiGH5241-JiVitA-4     BANGLADESH   0                    NA                 0.0098021   -0.0317494    0.0513535
0-3 months     kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0752047    0.0590906    0.0913188
3-6 months     ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.0187426   -0.0523822    0.0148969
3-6 months     ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0234086   -0.0551247    0.0083074
3-6 months     ki0047075b-MAL-ED     BRAZIL       0                    NA                 0.0675009    0.0275094    0.1074924
3-6 months     ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.0280904   -0.0605468    0.1167277
3-6 months     ki0047075b-MAL-ED     INDIA        0                    NA                -0.0363736   -0.0665165   -0.0062307
3-6 months     ki0047075b-MAL-ED     INDIA        1                    NA                -0.0815890   -0.1577929   -0.0053851
3-6 months     ki0047075b-MAL-ED     NEPAL        0                    NA                -0.0172393   -0.0459889    0.0115104
3-6 months     ki0047075b-MAL-ED     NEPAL        1                    NA                -0.0489190   -0.1177853    0.0199473
3-6 months     ki0047075b-MAL-ED     PERU         0                    NA                 0.0140097   -0.0288141    0.0568336
3-6 months     ki0047075b-MAL-ED     PERU         1                    NA                 0.0441390   -0.0009453    0.0892233
3-6 months     ki1000109-EE          PAKISTAN     0                    NA                 0.0883633    0.0405627    0.1361640
3-6 months     ki1000109-EE          PAKISTAN     1                    NA                 0.0580124    0.0235438    0.0924810
3-6 months     ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.1787657   -0.2247591   -0.1327723
3-6 months     ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.1642241   -0.1848149   -0.1436333
3-6 months     kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.0194746    0.0072844    0.0316647
3-6 months     kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0111561   -0.0170092   -0.0053031
3-6 months     kiGH5241-JiVitA-4     BANGLADESH   0                    NA                 0.0240668   -0.0100909    0.0582245
3-6 months     kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0156888   -0.0309885   -0.0003890
6-12 months    ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.0726061   -0.0879669   -0.0572453
6-12 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0878159   -0.1018548   -0.0737770
6-12 months    ki0047075b-MAL-ED     BRAZIL       0                    NA                 0.0060922   -0.0147716    0.0269560
6-12 months    ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.0087867   -0.0433425    0.0609159
6-12 months    ki0047075b-MAL-ED     INDIA        0                    NA                -0.0779771   -0.0906696   -0.0652846
6-12 months    ki0047075b-MAL-ED     INDIA        1                    NA                -0.0741849   -0.1178601   -0.0305097
6-12 months    ki0047075b-MAL-ED     NEPAL        0                    NA                -0.0460812   -0.0573420   -0.0348204
6-12 months    ki0047075b-MAL-ED     NEPAL        1                    NA                -0.0677437   -0.0992125   -0.0362749
6-12 months    ki0047075b-MAL-ED     PERU         0                    NA                -0.0298245   -0.0506363   -0.0090127
6-12 months    ki0047075b-MAL-ED     PERU         1                    NA                -0.0455298   -0.0640243   -0.0270352
6-12 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0547249   -0.0749464   -0.0345035
6-12 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0645848   -0.0736341   -0.0555355
6-12 months    ki1148112-LCNI-5      MALAWI       0                    NA                -0.0513798   -0.1030379    0.0002783
6-12 months    ki1148112-LCNI-5      MALAWI       1                    NA                 0.0202243   -0.0261296    0.0665782
6-12 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0636588   -0.0706691   -0.0566484
6-12 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0741034   -0.0773761   -0.0708307
6-12 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0347819   -0.0456085   -0.0239554
6-12 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0397607   -0.0450816   -0.0344399
12-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.0152965   -0.0237706   -0.0068225
12-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0196710   -0.0266531   -0.0126889
12-24 months   ki0047075b-MAL-ED     BRAZIL       0                    NA                 0.0029597   -0.0086191    0.0145385
12-24 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                -0.0204772   -0.0455686    0.0046142
12-24 months   ki0047075b-MAL-ED     INDIA        0                    NA                -0.0086568   -0.0140022   -0.0033115
12-24 months   ki0047075b-MAL-ED     INDIA        1                    NA                -0.0239876   -0.0411798   -0.0067954
12-24 months   ki0047075b-MAL-ED     NEPAL        0                    NA                -0.0301693   -0.0356925   -0.0246460
12-24 months   ki0047075b-MAL-ED     NEPAL        1                    NA                -0.0250418   -0.0370459   -0.0130377
12-24 months   ki0047075b-MAL-ED     PERU         0                    NA                -0.0090398   -0.0195986    0.0015191
12-24 months   ki0047075b-MAL-ED     PERU         1                    NA                -0.0095090   -0.0184080   -0.0006100
12-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0169971   -0.0297496   -0.0042445
12-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0170969   -0.0227222   -0.0114717
12-24 months   ki1148112-LCNI-5      MALAWI       0                    NA                -0.0053185   -0.0263716    0.0157345
12-24 months   ki1148112-LCNI-5      MALAWI       1                    NA                -0.0345407   -0.0639658   -0.0051157
12-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0127494   -0.0175879   -0.0079109
12-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0210477   -0.0232675   -0.0188278
12-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0075978   -0.0119622   -0.0032334
12-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0167229   -0.0189781   -0.0144678


### Parameter: E(Y)


agecat         studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH   NA                   NA                -0.0342392   -0.0665521   -0.0019264
0-3 months     ki0047075b-MAL-ED     BRAZIL       NA                   NA                 0.1928587    0.1409027    0.2448147
0-3 months     ki0047075b-MAL-ED     INDIA        NA                   NA                -0.0254448   -0.0636028    0.0127132
0-3 months     ki0047075b-MAL-ED     NEPAL        NA                   NA                 0.0746202    0.0395269    0.1097135
0-3 months     ki0047075b-MAL-ED     PERU         NA                   NA                -0.1586062   -0.1913606   -0.1258518
0-3 months     ki1000109-EE          PAKISTAN     NA                   NA                -0.3938516   -0.4364614   -0.3512419
0-3 months     kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                 0.0651938    0.0595783    0.0708094
0-3 months     kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                 0.0642202    0.0489852    0.0794552
3-6 months     ki0047075b-MAL-ED     BANGLADESH   NA                   NA                -0.0212379   -0.0443179    0.0018421
3-6 months     ki0047075b-MAL-ED     BRAZIL       NA                   NA                 0.0604904    0.0239698    0.0970111
3-6 months     ki0047075b-MAL-ED     INDIA        NA                   NA                -0.0401251   -0.0685271   -0.0117231
3-6 months     ki0047075b-MAL-ED     NEPAL        NA                   NA                -0.0214542   -0.0480456    0.0051373
3-6 months     ki0047075b-MAL-ED     PERU         NA                   NA                 0.0280549   -0.0030513    0.0591612
3-6 months     ki1000109-EE          PAKISTAN     NA                   NA                 0.0701161    0.0419135    0.0983187
3-6 months     ki1113344-GMS-Nepal   NEPAL        NA                   NA                -0.1671388   -0.1860153   -0.1482623
3-6 months     kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                -0.0050971   -0.0104963    0.0003021
3-6 months     kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                -0.0093314   -0.0232659    0.0046030
6-12 months    ki0047075b-MAL-ED     BANGLADESH   NA                   NA                -0.0808013   -0.0912137   -0.0703889
6-12 months    ki0047075b-MAL-ED     BRAZIL       NA                   NA                 0.0065644   -0.0129183    0.0260472
6-12 months    ki0047075b-MAL-ED     INDIA        NA                   NA                -0.0776724   -0.0898619   -0.0654829
6-12 months    ki0047075b-MAL-ED     NEPAL        NA                   NA                -0.0488126   -0.0594641   -0.0381610
6-12 months    ki0047075b-MAL-ED     PERU         NA                   NA                -0.0373127   -0.0513600   -0.0232653
6-12 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                -0.0626340   -0.0709302   -0.0543379
6-12 months    ki1148112-LCNI-5      MALAWI       NA                   NA                -0.0281085   -0.0675243    0.0113073
6-12 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                -0.0720156   -0.0751021   -0.0689290
6-12 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                -0.0387210   -0.0435056   -0.0339363
12-24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                -0.0177078   -0.0231267   -0.0122889
12-24 months   ki0047075b-MAL-ED     BRAZIL       NA                   NA                -0.0013016   -0.0119070    0.0093038
12-24 months   ki0047075b-MAL-ED     INDIA        NA                   NA                -0.0098833   -0.0150187   -0.0047479
12-24 months   ki0047075b-MAL-ED     NEPAL        NA                   NA                -0.0295113   -0.0345712   -0.0244514
12-24 months   ki0047075b-MAL-ED     PERU         NA                   NA                -0.0092560   -0.0162726   -0.0022393
12-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                -0.0170788   -0.0222320   -0.0119257
12-24 months   ki1148112-LCNI-5      MALAWI       NA                   NA                -0.0140852   -0.0319419    0.0037715
12-24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                -0.0193591   -0.0213957   -0.0173226
12-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                -0.0147196   -0.0167684   -0.0126707


### Parameter: ATE


agecat         studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     BANGLADESH   1                    0                  0.0147100   -0.0500966    0.0795167
0-3 months     ki0047075b-MAL-ED     BRAZIL       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     BRAZIL       1                    0                  0.1065434   -0.0283099    0.2413967
0-3 months     ki0047075b-MAL-ED     INDIA        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     INDIA        1                    0                 -0.0051854   -0.1230977    0.1127270
0-3 months     ki0047075b-MAL-ED     NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     NEPAL        1                    0                 -0.0190797   -0.0987671    0.0606077
0-3 months     ki0047075b-MAL-ED     PERU         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     PERU         1                    0                  0.0466127   -0.0185721    0.1117975
0-3 months     ki1000109-EE          PAKISTAN     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE          PAKISTAN     1                    0                 -0.0444060   -0.1279653    0.0391533
0-3 months     kiGH5241-JiVitA-3     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3     BANGLADESH   1                    0                  0.0415110    0.0288471    0.0541750
0-3 months     kiGH5241-JiVitA-4     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4     BANGLADESH   1                    0                  0.0654026    0.0208853    0.1099200
3-6 months     ki0047075b-MAL-ED     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     BANGLADESH   1                    0                 -0.0046660   -0.0508994    0.0415674
3-6 months     ki0047075b-MAL-ED     BRAZIL       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     BRAZIL       1                    0                 -0.0394105   -0.1366518    0.0578309
3-6 months     ki0047075b-MAL-ED     INDIA        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     INDIA        1                    0                 -0.0452154   -0.1271644    0.0367335
3-6 months     ki0047075b-MAL-ED     NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     NEPAL        1                    0                 -0.0316798   -0.1063062    0.0429467
3-6 months     ki0047075b-MAL-ED     PERU         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     PERU         1                    0                  0.0301292   -0.0320518    0.0923102
3-6 months     ki1000109-EE          PAKISTAN     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE          PAKISTAN     1                    0                 -0.0303509   -0.0892830    0.0285811
3-6 months     ki1113344-GMS-Nepal   NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal   NEPAL        1                    0                  0.0145416   -0.0358506    0.0649338
3-6 months     kiGH5241-JiVitA-3     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3     BANGLADESH   1                    0                 -0.0306307   -0.0438616   -0.0173998
3-6 months     kiGH5241-JiVitA-4     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4     BANGLADESH   1                    0                 -0.0397556   -0.0773258   -0.0021854
6-12 months    ki0047075b-MAL-ED     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED     BANGLADESH   1                    0                 -0.0152098   -0.0360195    0.0055999
6-12 months    ki0047075b-MAL-ED     BRAZIL       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED     BRAZIL       1                    0                  0.0026945   -0.0534549    0.0588439
6-12 months    ki0047075b-MAL-ED     INDIA        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED     INDIA        1                    0                  0.0037922   -0.0416899    0.0492743
6-12 months    ki0047075b-MAL-ED     NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED     NEPAL        1                    0                 -0.0216625   -0.0550854    0.0117605
6-12 months    ki0047075b-MAL-ED     PERU         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED     PERU         1                    0                 -0.0157052   -0.0435473    0.0121368
6-12 months    ki1113344-GMS-Nepal   NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal   NEPAL        1                    0                 -0.0098599   -0.0320138    0.0122941
6-12 months    ki1148112-LCNI-5      MALAWI       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5      MALAWI       1                    0                  0.0716041    0.0021977    0.1410105
6-12 months    kiGH5241-JiVitA-3     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3     BANGLADESH   1                    0                 -0.0104446   -0.0179143   -0.0029749
6-12 months    kiGH5241-JiVitA-4     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4     BANGLADESH   1                    0                 -0.0049788   -0.0170331    0.0070755
12-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    0                 -0.0043744   -0.0153544    0.0066055
12-24 months   ki0047075b-MAL-ED     BRAZIL       0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED     BRAZIL       1                    0                 -0.0234369   -0.0510710    0.0041973
12-24 months   ki0047075b-MAL-ED     INDIA        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED     INDIA        1                    0                 -0.0153308   -0.0333348    0.0026732
12-24 months   ki0047075b-MAL-ED     NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED     NEPAL        1                    0                  0.0051275   -0.0080863    0.0183412
12-24 months   ki0047075b-MAL-ED     PERU         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED     PERU         1                    0                 -0.0004693   -0.0142780    0.0133395
12-24 months   ki1113344-GMS-Nepal   NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal   NEPAL        1                    0                 -0.0000999   -0.0140380    0.0138383
12-24 months   ki1148112-LCNI-5      MALAWI       0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5      MALAWI       1                    0                 -0.0292222   -0.0654032    0.0069588
12-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    0                 -0.0082982   -0.0135977   -0.0029988
12-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    0                 -0.0091251   -0.0139280   -0.0043222
