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

**Outcome Variable:** stunted

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

agecat      studyid                    country                        predfeed36    stunted   n_cell       n
----------  -------------------------  -----------------------------  -----------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                   0       95     243
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                   1       23     243
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                   0      107     243
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                   1       18     243
Birth       ki0047075b-MAL-ED          BRAZIL                         0                   0      141     185
Birth       ki0047075b-MAL-ED          BRAZIL                         0                   1       15     185
Birth       ki0047075b-MAL-ED          BRAZIL                         1                   0       25     185
Birth       ki0047075b-MAL-ED          BRAZIL                         1                   1        4     185
Birth       ki0047075b-MAL-ED          INDIA                          0                   0      155     198
Birth       ki0047075b-MAL-ED          INDIA                          0                   1       27     198
Birth       ki0047075b-MAL-ED          INDIA                          1                   0       11     198
Birth       ki0047075b-MAL-ED          INDIA                          1                   1        5     198
Birth       ki0047075b-MAL-ED          NEPAL                          0                   0      130     172
Birth       ki0047075b-MAL-ED          NEPAL                          0                   1       16     172
Birth       ki0047075b-MAL-ED          NEPAL                          1                   0       24     172
Birth       ki0047075b-MAL-ED          NEPAL                          1                   1        2     172
Birth       ki0047075b-MAL-ED          PERU                           0                   0      135     273
Birth       ki0047075b-MAL-ED          PERU                           0                   1       20     273
Birth       ki0047075b-MAL-ED          PERU                           1                   0      106     273
Birth       ki0047075b-MAL-ED          PERU                           1                   1       12     273
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      211     236
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1       22     236
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        1     236
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        2     236
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      102     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1       18     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        1     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     121
Birth       ki1000109-EE               PAKISTAN                       0                   0        0       4
Birth       ki1000109-EE               PAKISTAN                       0                   1        2       4
Birth       ki1000109-EE               PAKISTAN                       1                   0        2       4
Birth       ki1000109-EE               PAKISTAN                       1                   1        0       4
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                   0     3500   27892
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                   1     2040   27892
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                   0    15790   27892
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                   1     6562   27892
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                   0      178    1454
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                   1      112    1454
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                   0      830    1454
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                   1      334    1454
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   0       86     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   1       25     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   0      110     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   1       19     240
6 months    ki0047075b-MAL-ED          BRAZIL                         0                   0      167     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                   1        5     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                   0       36     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                   1        1     209
6 months    ki0047075b-MAL-ED          INDIA                          0                   0      176     236
6 months    ki0047075b-MAL-ED          INDIA                          0                   1       41     236
6 months    ki0047075b-MAL-ED          INDIA                          1                   0       14     236
6 months    ki0047075b-MAL-ED          INDIA                          1                   1        5     236
6 months    ki0047075b-MAL-ED          NEPAL                          0                   0      195     236
6 months    ki0047075b-MAL-ED          NEPAL                          0                   1        9     236
6 months    ki0047075b-MAL-ED          NEPAL                          1                   0       29     236
6 months    ki0047075b-MAL-ED          NEPAL                          1                   1        3     236
6 months    ki0047075b-MAL-ED          PERU                           0                   0      103     271
6 months    ki0047075b-MAL-ED          PERU                           0                   1       42     271
6 months    ki0047075b-MAL-ED          PERU                           1                   0      109     271
6 months    ki0047075b-MAL-ED          PERU                           1                   1       17     271
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      202     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1       49     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        2     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        1     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      187     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1       58     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        2     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     247
6 months    ki1000109-EE               PAKISTAN                       0                   0      166     734
6 months    ki1000109-EE               PAKISTAN                       0                   1      124     734
6 months    ki1000109-EE               PAKISTAN                       1                   0      188     734
6 months    ki1000109-EE               PAKISTAN                       1                   1      256     734
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                   0       87     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                   1       81     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                   0        0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                   1        0     168
6 months    ki1113344-GMS-Nepal        NEPAL                          0                   0      150    1052
6 months    ki1113344-GMS-Nepal        NEPAL                          0                   1       56    1052
6 months    ki1113344-GMS-Nepal        NEPAL                          1                   0      684    1052
6 months    ki1113344-GMS-Nepal        NEPAL                          1                   1      162    1052
6 months    ki1148112-LCNI-5           MALAWI                         0                   0      145     272
6 months    ki1148112-LCNI-5           MALAWI                         0                   1       80     272
6 months    ki1148112-LCNI-5           MALAWI                         1                   0       30     272
6 months    ki1148112-LCNI-5           MALAWI                         1                   1       17     272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                   0     3596   26750
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                   1     1744   26750
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   0    16428   26750
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   1     4982   26750
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                   0     1256    8342
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                   1      574    8342
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   0     4952    8342
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   1     1560    8342
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   0       50     211
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   1       44     211
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   0       64     211
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   1       53     211
24 months   ki0047075b-MAL-ED          BRAZIL                         0                   0      133     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                   1        6     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                   0       30     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                   1        0     169
24 months   ki0047075b-MAL-ED          INDIA                          0                   0      125     227
24 months   ki0047075b-MAL-ED          INDIA                          0                   1       84     227
24 months   ki0047075b-MAL-ED          INDIA                          1                   0        7     227
24 months   ki0047075b-MAL-ED          INDIA                          1                   1       11     227
24 months   ki0047075b-MAL-ED          NEPAL                          0                   0      155     228
24 months   ki0047075b-MAL-ED          NEPAL                          0                   1       43     228
24 months   ki0047075b-MAL-ED          NEPAL                          1                   0       24     228
24 months   ki0047075b-MAL-ED          NEPAL                          1                   1        6     228
24 months   ki0047075b-MAL-ED          PERU                           0                   0       62     200
24 months   ki0047075b-MAL-ED          PERU                           0                   1       44     200
24 months   ki0047075b-MAL-ED          PERU                           1                   0       65     200
24 months   ki0047075b-MAL-ED          PERU                           1                   1       29     200
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      151     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1       84     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        3     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0       59     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1      153     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        2     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     214
24 months   ki1113344-GMS-Nepal        NEPAL                          0                   0       86     912
24 months   ki1113344-GMS-Nepal        NEPAL                          0                   1       88     912
24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0      422     912
24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1      316     912
24 months   ki1148112-LCNI-5           MALAWI                         0                   0       80     189
24 months   ki1148112-LCNI-5           MALAWI                         0                   1       75     189
24 months   ki1148112-LCNI-5           MALAWI                         1                   0       17     189
24 months   ki1148112-LCNI-5           MALAWI                         1                   1       17     189
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   0     1384   13386
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   1     1416   13386
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0     5500   13386
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1     5086   13386
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   0      980    8046
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   1      760    8046
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   0     3854    8046
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   1     2452    8046


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

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/ed5cdbf4-e53f-4dda-a812-1d8a04542a98/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ed5cdbf4-e53f-4dda-a812-1d8a04542a98/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ed5cdbf4-e53f-4dda-a812-1d8a04542a98/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ed5cdbf4-e53f-4dda-a812-1d8a04542a98/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.1949153   0.1232933   0.2665372
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1440000   0.0823254   0.2056746
Birth       ki0047075b-MAL-ED     INDIA        0                    NA                0.1483516   0.0965804   0.2001228
Birth       ki0047075b-MAL-ED     INDIA        1                    NA                0.3125000   0.0848074   0.5401926
Birth       ki0047075b-MAL-ED     PERU         0                    NA                0.1290323   0.0761598   0.1819047
Birth       ki0047075b-MAL-ED     PERU         1                    NA                0.1016949   0.0470606   0.1563292
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.3682310   0.3484968   0.3879653
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.2935755   0.2839805   0.3031705
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.3862069   0.2987826   0.4736312
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.2869416   0.2462705   0.3276127
6 months    ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.2252252   0.1473518   0.3030987
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1472868   0.0860034   0.2085703
6 months    ki0047075b-MAL-ED     INDIA        0                    NA                0.1889401   0.1367451   0.2411351
6 months    ki0047075b-MAL-ED     INDIA        1                    NA                0.2631579   0.0647364   0.4615794
6 months    ki0047075b-MAL-ED     PERU         0                    NA                0.2896552   0.2156875   0.3636229
6 months    ki0047075b-MAL-ED     PERU         1                    NA                0.1349206   0.0751576   0.1946837
6 months    ki1000109-EE          PAKISTAN     0                    NA                0.4275862   0.3469512   0.5082212
6 months    ki1000109-EE          PAKISTAN     1                    NA                0.5765766   0.5114917   0.6416614
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2718447   0.1858414   0.3578480
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1914894   0.1539570   0.2290218
6 months    ki1148112-LCNI-5      MALAWI       0                    NA                0.3555556   0.2928937   0.4182174
6 months    ki1148112-LCNI-5      MALAWI       1                    NA                0.3617021   0.2240807   0.4993236
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.3265918   0.3071947   0.3459888
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.2326950   0.2231988   0.2421912
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.3136612   0.2783722   0.3489502
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.2395577   0.2231680   0.2559474
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.4680851   0.3669739   0.5691963
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.4529915   0.3625789   0.5434040
24 months   ki0047075b-MAL-ED     INDIA        0                    NA                0.4019139   0.3352973   0.4685304
24 months   ki0047075b-MAL-ED     INDIA        1                    NA                0.6111111   0.3854050   0.8368173
24 months   ki0047075b-MAL-ED     NEPAL        0                    NA                0.2171717   0.1596138   0.2747296
24 months   ki0047075b-MAL-ED     NEPAL        1                    NA                0.2000000   0.0565495   0.3434505
24 months   ki0047075b-MAL-ED     PERU         0                    NA                0.4150943   0.3210571   0.5091316
24 months   ki0047075b-MAL-ED     PERU         1                    NA                0.3085106   0.2149053   0.4021159
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.5057471   0.4005736   0.6109207
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.4281843   0.3776420   0.4787266
24 months   ki1148112-LCNI-5      MALAWI       0                    NA                0.4838710   0.4049889   0.5627530
24 months   ki1148112-LCNI-5      MALAWI       1                    NA                0.5000000   0.3314881   0.6685119
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.5057143   0.4762544   0.5351741
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.4804459   0.4647255   0.4961662
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.4367816   0.3973125   0.4762508
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.3888360   0.3685305   0.4091415


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1687243   0.1215395   0.2159090
Birth       ki0047075b-MAL-ED     INDIA        NA                   NA                0.1616162   0.1102143   0.2130180
Birth       ki0047075b-MAL-ED     PERU         NA                   NA                0.1172161   0.0789879   0.1554444
Birth       kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.3084038   0.2997331   0.3170746
Birth       kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.3067400   0.2694794   0.3440006
6 months    ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1833333   0.1342773   0.2323893
6 months    ki0047075b-MAL-ED     INDIA        NA                   NA                0.1949153   0.1442678   0.2455627
6 months    ki0047075b-MAL-ED     PERU         NA                   NA                0.2177122   0.1684866   0.2669378
6 months    ki1000109-EE          PAKISTAN     NA                   NA                0.5177112   0.4665188   0.5689035
6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.2072243   0.1725535   0.2418951
6 months    ki1148112-LCNI-5      MALAWI       NA                   NA                0.3566176   0.2995882   0.4136471
6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.2514393   0.2427410   0.2601375
6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.2558140   0.2405969   0.2710310
24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.4597156   0.3923103   0.5271210
24 months   ki0047075b-MAL-ED     INDIA        NA                   NA                0.4185022   0.3541865   0.4828179
24 months   ki0047075b-MAL-ED     NEPAL        NA                   NA                0.2149123   0.1614774   0.2683472
24 months   ki0047075b-MAL-ED     PERU         NA                   NA                0.3650000   0.2981110   0.4318890
24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.4429825   0.3973399   0.4886250
24 months   ki1148112-LCNI-5      MALAWI       NA                   NA                0.4867725   0.4153250   0.5582200
24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.4857314   0.4714029   0.5000599
24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.3992046   0.3802350   0.4181742


### Parameter: RR


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    0                 0.7387826   0.4201797   1.2989674
Birth       ki0047075b-MAL-ED     INDIA        0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED     INDIA        1                    0                 2.1064815   0.9390763   4.7251373
Birth       ki0047075b-MAL-ED     PERU         0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED     PERU         1                    0                 0.7881356   0.4010160   1.5489600
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.7972590   0.7489462   0.8486883
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.7429737   0.5699382   0.9685436
6 months    ki0047075b-MAL-ED     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    0                 0.6539535   0.3807120   1.1233035
6 months    ki0047075b-MAL-ED     INDIA        0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED     INDIA        1                    0                 1.3928113   0.6239462   3.1091194
6 months    ki0047075b-MAL-ED     PERU         0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED     PERU         1                    0                 0.4657974   0.2793492   0.7766882
6 months    ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000109-EE          PAKISTAN     1                    0                 1.3484452   1.0823856   1.6799046
6 months    ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal   NEPAL        1                    0                 0.7044073   0.4855062   1.0220047
6 months    ki1148112-LCNI-5      MALAWI       0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1148112-LCNI-5      MALAWI       1                    0                 1.0172872   0.6688622   1.5472145
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.7124950   0.6642828   0.7642064
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.7637468   0.6710319   0.8692719
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    0                 0.9677545   0.7211703   1.2986512
24 months   ki0047075b-MAL-ED     INDIA        0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED     INDIA        1                    0                 1.5205026   1.0143184   2.2792925
24 months   ki0047075b-MAL-ED     NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED     NEPAL        1                    0                 0.9209302   0.4286889   1.9783869
24 months   ki0047075b-MAL-ED     PERU         0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED     PERU         1                    0                 0.7432302   0.5089502   1.0853540
24 months   ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal   NEPAL        1                    0                 0.8466371   0.6665736   1.0753417
24 months   ki1148112-LCNI-5      MALAWI       0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1148112-LCNI-5      MALAWI       1                    0                 1.0333333   0.7106383   1.5025615
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.9500342   0.8908630   1.0131356
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.8902299   0.8068427   0.9822351


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.0261910   -0.0749164    0.0225345
Birth       ki0047075b-MAL-ED     INDIA        0                    NA                 0.0132645   -0.0066118    0.0331408
Birth       ki0047075b-MAL-ED     PERU         0                    NA                -0.0118161   -0.0447179    0.0210856
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0598272   -0.0773436   -0.0423108
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0794669   -0.1562935   -0.0026402
6 months    ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.0418919   -0.0953831    0.0115994
6 months    ki0047075b-MAL-ED     INDIA        0                    NA                 0.0059752   -0.0107434    0.0226938
6 months    ki0047075b-MAL-ED     PERU         0                    NA                -0.0719430   -0.1171046   -0.0267814
6 months    ki1000109-EE          PAKISTAN     0                    NA                 0.0901250    0.0269994    0.1532505
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0646203   -0.1401311    0.0108905
6 months    ki1148112-LCNI-5      MALAWI       0                    NA                 0.0010621   -0.0250685    0.0271927
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0751525   -0.0920928   -0.0582122
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0578472   -0.0878540   -0.0278404
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.0083695   -0.0835884    0.0668495
24 months   ki0047075b-MAL-ED     INDIA        0                    NA                 0.0165883   -0.0034748    0.0366514
24 months   ki0047075b-MAL-ED     NEPAL        0                    NA                -0.0022594   -0.0226112    0.0180923
24 months   ki0047075b-MAL-ED     PERU         0                    NA                -0.0500943   -0.1128921    0.0127034
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0627647   -0.1572310    0.0317017
24 months   ki1148112-LCNI-5      MALAWI       0                    NA                 0.0029015   -0.0305815    0.0363845
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0199829   -0.0454471    0.0054812
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0375770   -0.0706050   -0.0045490


### Parameter: PAF


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.1552294   -0.4810887    0.0989364
Birth       ki0047075b-MAL-ED     INDIA        0                    NA                 0.0820742   -0.0474702    0.1955973
Birth       ki0047075b-MAL-ED     PERU         0                    NA                -0.1008064   -0.4187704    0.1458979
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.1939898   -0.2522938   -0.1384003
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.2590691   -0.5362292   -0.0319131
6 months    ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.2285012   -0.5541768    0.0289295
6 months    ki0047075b-MAL-ED     INDIA        0                    NA                 0.0306552   -0.0588132    0.1125636
6 months    ki0047075b-MAL-ED     PERU         0                    NA                -0.3304500   -0.5508226   -0.1413925
6 months    ki1000109-EE          PAKISTAN     0                    NA                 0.1740835    0.0416058    0.2882489
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.3118375   -0.7303170    0.0054321
6 months    ki1148112-LCNI-5      MALAWI       0                    NA                 0.0029782   -0.0730552    0.0736242
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.2988893   -0.3683725   -0.2329343
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.2261302   -0.3482316   -0.1150867
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.0182057   -0.1957249    0.1329587
24 months   ki0047075b-MAL-ED     INDIA        0                    NA                 0.0396374   -0.0096750    0.0865413
24 months   ki0047075b-MAL-ED     NEPAL        0                    NA                -0.0105133   -0.1097728    0.0798683
24 months   ki0047075b-MAL-ED     PERU         0                    NA                -0.1372448   -0.3236461    0.0229067
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.1416866   -0.3766447    0.0531702
24 months   ki1148112-LCNI-5      MALAWI       0                    NA                 0.0059607   -0.0652660    0.0724250
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0411399   -0.0948965    0.0099775
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0941298   -0.1797903   -0.0146888
