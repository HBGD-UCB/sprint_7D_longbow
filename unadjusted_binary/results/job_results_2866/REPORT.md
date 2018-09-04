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

**Outcome Variable:** sstunted

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

agecat      studyid                    country                        predfeed36    sstunted   n_cell       n
----------  -------------------------  -----------------------------  -----------  ---------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                    0      113     243
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                    1        5     243
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    0      123     243
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    1        2     243
Birth       ki0047075b-MAL-ED          BRAZIL                         0                    0      150     185
Birth       ki0047075b-MAL-ED          BRAZIL                         0                    1        6     185
Birth       ki0047075b-MAL-ED          BRAZIL                         1                    0       27     185
Birth       ki0047075b-MAL-ED          BRAZIL                         1                    1        2     185
Birth       ki0047075b-MAL-ED          INDIA                          0                    0      177     198
Birth       ki0047075b-MAL-ED          INDIA                          0                    1        5     198
Birth       ki0047075b-MAL-ED          INDIA                          1                    0       14     198
Birth       ki0047075b-MAL-ED          INDIA                          1                    1        2     198
Birth       ki0047075b-MAL-ED          NEPAL                          0                    0      141     172
Birth       ki0047075b-MAL-ED          NEPAL                          0                    1        5     172
Birth       ki0047075b-MAL-ED          NEPAL                          1                    0       25     172
Birth       ki0047075b-MAL-ED          NEPAL                          1                    1        1     172
Birth       ki0047075b-MAL-ED          PERU                           0                    0      151     273
Birth       ki0047075b-MAL-ED          PERU                           0                    1        4     273
Birth       ki0047075b-MAL-ED          PERU                           1                    0      116     273
Birth       ki0047075b-MAL-ED          PERU                           1                    1        2     273
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      232     236
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1        1     236
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        3     236
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        0     236
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0      114     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1        6     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        1     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        0     121
Birth       ki1000109-EE               PAKISTAN                       0                    0        2       4
Birth       ki1000109-EE               PAKISTAN                       0                    1        0       4
Birth       ki1000109-EE               PAKISTAN                       1                    0        2       4
Birth       ki1000109-EE               PAKISTAN                       1                    1        0       4
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    0     4810   27892
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    1      730   27892
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    0    20428   27892
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    1     1924   27892
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    0      258    1454
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    1       32    1454
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    0     1082    1454
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    1       82    1454
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0      107     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    1        4     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0      125     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    1        4     240
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    0      172     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                    0       37     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                    1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          0                    0      211     236
6 months    ki0047075b-MAL-ED          INDIA                          0                    1        6     236
6 months    ki0047075b-MAL-ED          INDIA                          1                    0       16     236
6 months    ki0047075b-MAL-ED          INDIA                          1                    1        3     236
6 months    ki0047075b-MAL-ED          NEPAL                          0                    0      204     236
6 months    ki0047075b-MAL-ED          NEPAL                          0                    1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          1                    0       31     236
6 months    ki0047075b-MAL-ED          NEPAL                          1                    1        1     236
6 months    ki0047075b-MAL-ED          PERU                           0                    0      137     271
6 months    ki0047075b-MAL-ED          PERU                           0                    1        8     271
6 months    ki0047075b-MAL-ED          PERU                           1                    0      123     271
6 months    ki0047075b-MAL-ED          PERU                           1                    1        3     271
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      245     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1        6     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        3     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        0     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0      231     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1       14     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        2     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        0     247
6 months    ki1000109-EE               PAKISTAN                       0                    0      238     734
6 months    ki1000109-EE               PAKISTAN                       0                    1       52     734
6 months    ki1000109-EE               PAKISTAN                       1                    0      314     734
6 months    ki1000109-EE               PAKISTAN                       1                    1      130     734
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0      140     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    1       28     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0        0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    1        0     168
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0      192    1052
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    1       14    1052
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0      824    1052
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1       22    1052
6 months    ki1148112-LCNI-5           MALAWI                         0                    0      208     272
6 months    ki1148112-LCNI-5           MALAWI                         0                    1       17     272
6 months    ki1148112-LCNI-5           MALAWI                         1                    0       44     272
6 months    ki1148112-LCNI-5           MALAWI                         1                    1        3     272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0     4772   26750
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    1      568   26750
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0    20366   26750
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1     1044   26750
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0     1652    8342
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    1      178    8342
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0     6220    8342
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    1      292    8342
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0       87     211
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    1        7     211
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0       99     211
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1       18     211
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0      138     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    1        1     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0       30     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1        0     169
24 months   ki0047075b-MAL-ED          INDIA                          0                    0      186     227
24 months   ki0047075b-MAL-ED          INDIA                          0                    1       23     227
24 months   ki0047075b-MAL-ED          INDIA                          1                    0       13     227
24 months   ki0047075b-MAL-ED          INDIA                          1                    1        5     227
24 months   ki0047075b-MAL-ED          NEPAL                          0                    0      193     228
24 months   ki0047075b-MAL-ED          NEPAL                          0                    1        5     228
24 months   ki0047075b-MAL-ED          NEPAL                          1                    0       28     228
24 months   ki0047075b-MAL-ED          NEPAL                          1                    1        2     228
24 months   ki0047075b-MAL-ED          PERU                           0                    0       96     200
24 months   ki0047075b-MAL-ED          PERU                           0                    1       10     200
24 months   ki0047075b-MAL-ED          PERU                           1                    0       90     200
24 months   ki0047075b-MAL-ED          PERU                           1                    1        4     200
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      209     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1       26     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        3     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        0     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0      143     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1       69     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        2     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        0     214
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0      144     912
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    1       30     912
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0      670     912
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1       68     912
24 months   ki1148112-LCNI-5           MALAWI                         0                    0      135     189
24 months   ki1148112-LCNI-5           MALAWI                         0                    1       20     189
24 months   ki1148112-LCNI-5           MALAWI                         1                    0       30     189
24 months   ki1148112-LCNI-5           MALAWI                         1                    1        4     189
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0     2304   13386
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    1      496   13386
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0     9056   13386
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1     1530   13386
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0     1516    8046
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    1      224    8046
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0     5758    8046
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1      548    8046


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
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
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
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
![](/tmp/dcfb5da4-9fbe-48df-a5fe-84d763c74110/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/dcfb5da4-9fbe-48df-a5fe-84d763c74110/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/dcfb5da4-9fbe-48df-a5fe-84d763c74110/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/dcfb5da4-9fbe-48df-a5fe-84d763c74110/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1317690   0.1172539   0.1462840
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0860773   0.0806368   0.0915178
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1103448   0.0473588   0.1733308
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0704467   0.0449760   0.0959175
6 months    ki1000109-EE          PAKISTAN     0                    NA                0.1793103   0.1167861   0.2418346
6 months    ki1000109-EE          PAKISTAN     1                    NA                0.2927928   0.2328527   0.3527329
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.0679612   0.0193104   0.1166120
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0260047   0.0108239   0.0411856
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1063670   0.0935971   0.1191370
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0487623   0.0447166   0.0528080
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0972678   0.0773314   0.1172041
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0448403   0.0366401   0.0530405
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.0744681   0.0212699   0.1276662
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1538462   0.0883140   0.2193784
24 months   ki0047075b-MAL-ED     INDIA        0                    NA                0.1100478   0.0675264   0.1525693
24 months   ki0047075b-MAL-ED     INDIA        1                    NA                0.2777778   0.0704036   0.4851520
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1724138   0.0929521   0.2518755
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0921409   0.0625984   0.1216834
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1771429   0.1543354   0.1999503
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.1445305   0.1340107   0.1550504
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1287356   0.1050596   0.1524117
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0869014   0.0751917   0.0986111


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0951527   0.0900508   0.1002546
Birth       kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0784044   0.0544827   0.1023261
6 months    ki1000109-EE          PAKISTAN     NA                   NA                0.2479564   0.2037162   0.2921966
6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.0342205   0.0186698   0.0497713
6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0602617   0.0561000   0.0644233
6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0563414   0.0484727   0.0642101
24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1184834   0.0747732   0.1621936
24 months   ki0047075b-MAL-ED     INDIA        NA                   NA                0.1233480   0.0804760   0.1662200
24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1074561   0.0790002   0.1359121
24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.1513522   0.1415495   0.1611548
24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0959483   0.0853397   0.1065568


### Parameter: RR


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.6532442   0.5735524   0.7440088
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.6384235   0.3244165   1.2563622
6 months    ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000109-EE          PAKISTAN     1                    0                 1.6328829   1.0898063   2.4465875
6 months    ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal   NEPAL        1                    0                 0.3826410   0.1519244   0.9637304
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.4584339   0.3971876   0.5291244
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.4609986   0.3520199   0.6037149
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    0                 2.0659341   0.8992928   4.7460443
24 months   ki0047075b-MAL-ED     INDIA        0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED     INDIA        1                    0                 2.5241546   1.0890364   5.8504530
24 months   ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal   NEPAL        1                    0                 0.5344173   0.3048268   0.9369318
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.8158981   0.7064699   0.9422760
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.6750374   0.5390676   0.8453031


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0366162   -0.0492722   -0.0239602
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0319404   -0.0863517    0.0224708
6 months    ki1000109-EE          PAKISTAN     0                    NA                 0.0686461    0.0159450    0.1213471
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0337406   -0.0747500    0.0072687
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0461054   -0.0567448   -0.0354659
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0409264   -0.0576201   -0.0242326
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0440153   -0.0030916    0.0911223
24 months   ki0047075b-MAL-ED     INDIA        0                    NA                 0.0133002   -0.0044953    0.0310956
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0649577   -0.1336202    0.0037049
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0257907   -0.0452218   -0.0063596
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0327873   -0.0533054   -0.0122693


### Parameter: PAF


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.3848152   -0.5218548   -0.2601158
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.4073805   -1.2886339    0.1345405
6 months    ki1000109-EE          PAKISTAN     0                    NA                 0.2768473    0.0338221    0.4587437
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.9859763   -2.4978023   -0.1275942
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.7650858   -0.9376424   -0.6078962
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.7263992   -1.0441557   -0.4580368
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.3714894   -0.1458350    0.6552509
24 months   ki0047075b-MAL-ED     INDIA        0                    NA                 0.1078264   -0.0444316    0.2378881
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.6045039   -1.3710031   -0.0857990
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.1704019   -0.3051140   -0.0495946
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.3417188   -0.5747088   -0.1432014
