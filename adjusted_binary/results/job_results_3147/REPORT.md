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
![](/tmp/012ff871-b150-4e51-a85e-0a58cac0404a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/012ff871-b150-4e51-a85e-0a58cac0404a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/012ff871-b150-4e51-a85e-0a58cac0404a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/012ff871-b150-4e51-a85e-0a58cac0404a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.1962481   0.1250318   0.2674644
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1430842   0.0816620   0.2045064
Birth       ki0047075b-MAL-ED     INDIA        0                    NA                0.1483516   0.0965804   0.2001228
Birth       ki0047075b-MAL-ED     INDIA        1                    NA                0.3125000   0.0848074   0.5401926
Birth       ki0047075b-MAL-ED     PERU         0                    NA                0.1287548   0.0761917   0.1813179
Birth       ki0047075b-MAL-ED     PERU         1                    NA                0.1019713   0.0476765   0.1562661
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.3083832   0.2997138   0.3170527
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.3083887   0.2997182   0.3170593
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.3069005   0.2696341   0.3441668
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.3066996   0.2694405   0.3439587
6 months    ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.2247921   0.1481182   0.3014660
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1456233   0.0847180   0.2065287
6 months    ki0047075b-MAL-ED     INDIA        0                    NA                0.1889401   0.1367451   0.2411351
6 months    ki0047075b-MAL-ED     INDIA        1                    NA                0.2631579   0.0647364   0.4615794
6 months    ki0047075b-MAL-ED     PERU         0                    NA                0.2853912   0.2120272   0.3587552
6 months    ki0047075b-MAL-ED     PERU         1                    NA                0.1379537   0.0785155   0.1973919
6 months    ki1000109-EE          PAKISTAN     0                    NA                0.4027036   0.3445837   0.4608235
6 months    ki1000109-EE          PAKISTAN     1                    NA                0.5800796   0.5256959   0.6344633
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2725229   0.1865216   0.3585242
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1913017   0.1538380   0.2287654
6 months    ki1148112-LCNI-5      MALAWI       0                    NA                0.3557268   0.2931262   0.4183275
6 months    ki1148112-LCNI-5      MALAWI       1                    NA                0.3684943   0.2330634   0.5039252
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.2825211   0.2684652   0.2965771
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.2423636   0.2333145   0.2514127
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.2719026   0.2449611   0.2988440
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.2450729   0.2293482   0.2607976
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.4626092   0.3716490   0.5535695
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.4604985   0.3787835   0.5422135
24 months   ki0047075b-MAL-ED     INDIA        0                    NA                0.4019139   0.3352973   0.4685304
24 months   ki0047075b-MAL-ED     INDIA        1                    NA                0.6111111   0.3854050   0.8368173
24 months   ki0047075b-MAL-ED     NEPAL        0                    NA                0.2171717   0.1596138   0.2747296
24 months   ki0047075b-MAL-ED     NEPAL        1                    NA                0.2000000   0.0565495   0.3434505
24 months   ki0047075b-MAL-ED     PERU         0                    NA                0.4152117   0.3280538   0.5023697
24 months   ki0047075b-MAL-ED     PERU         1                    NA                0.3605800   0.2738552   0.4473049
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.3731736   0.2814706   0.4648767
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.4221386   0.3722798   0.4719975
24 months   ki1148112-LCNI-5      MALAWI       0                    NA                0.4847593   0.4060436   0.5634750
24 months   ki1148112-LCNI-5      MALAWI       1                    NA                0.5294568   0.3655399   0.6933738
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.4636663   0.4407453   0.4865873
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.4838933   0.4688364   0.4989501
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.3936787   0.3625203   0.4248371
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.3936004   0.3738492   0.4133516


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
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    0                 0.7290983   0.4167017   1.2756951
Birth       ki0047075b-MAL-ED     INDIA        0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED     INDIA        1                    0                 2.1064815   0.9390763   4.7251373
Birth       ki0047075b-MAL-ED     PERU         0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED     PERU         1                    0                 0.7919808   0.4064872   1.5430586
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    0                 1.0000179   0.9999627   1.0000731
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.9993456   0.9982279   1.0004645
6 months    ki0047075b-MAL-ED     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    0                 0.6478135   0.3783918   1.1090680
6 months    ki0047075b-MAL-ED     INDIA        0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED     INDIA        1                    0                 1.3928113   0.6239462   3.1091194
6 months    ki0047075b-MAL-ED     PERU         0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED     PERU         1                    0                 0.4833846   0.2933516   0.7965208
6 months    ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000109-EE          PAKISTAN     1                    0                 1.4404628   1.2428488   1.6694976
6 months    ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal   NEPAL        1                    0                 0.7019656   0.4845012   1.0170370
6 months    ki1148112-LCNI-5      MALAWI       0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1148112-LCNI-5      MALAWI       1                    0                 1.0358911   0.6894076   1.5565110
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.8578600   0.8132775   0.9048864
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.9013261   0.8097635   1.0032419
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    0                 0.9954373   0.7839436   1.2639881
24 months   ki0047075b-MAL-ED     INDIA        0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED     INDIA        1                    0                 1.5205026   1.0143184   2.2792925
24 months   ki0047075b-MAL-ED     NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED     NEPAL        1                    0                 0.9209302   0.4286889   1.9783869
24 months   ki0047075b-MAL-ED     PERU         0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED     PERU         1                    0                 0.8684245   0.6371421   1.1836624
24 months   ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal   NEPAL        1                    0                 1.1312124   0.8637268   1.4815349
24 months   ki1148112-LCNI-5      MALAWI       0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1148112-LCNI-5      MALAWI       1                    0                 1.0922057   0.7707109   1.5478088
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    0                 1.0436239   0.9909053   1.0991473
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.9998011   0.9187830   1.0879634


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.0275238   -0.0757388    0.0206912
Birth       ki0047075b-MAL-ED     INDIA        0                    NA                 0.0132645   -0.0066118    0.0331408
Birth       ki0047075b-MAL-ED     PERU         0                    NA                -0.0115387   -0.0440197    0.0209424
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.0000206    0.0000075    0.0000337
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0001605   -0.0004332    0.0001123
6 months    ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.0414587   -0.0938745    0.0109571
6 months    ki0047075b-MAL-ED     INDIA        0                    NA                 0.0059752   -0.0107434    0.0226938
6 months    ki0047075b-MAL-ED     PERU         0                    NA                -0.0676790   -0.1121331   -0.0232250
6 months    ki1000109-EE          PAKISTAN     0                    NA                 0.1150076    0.0741900    0.1558251
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0652986   -0.1406784    0.0100813
6 months    ki1148112-LCNI-5      MALAWI       0                    NA                 0.0008908   -0.0251625    0.0269442
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0310819   -0.0424260   -0.0197378
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0160886   -0.0376805    0.0055032
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.0028936   -0.0640745    0.0582873
24 months   ki0047075b-MAL-ED     INDIA        0                    NA                 0.0165883   -0.0034748    0.0366514
24 months   ki0047075b-MAL-ED     NEPAL        0                    NA                -0.0022594   -0.0226112    0.0180923
24 months   ki0047075b-MAL-ED     PERU         0                    NA                -0.0502117   -0.1068906    0.0064672
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.0698088   -0.0119901    0.1516078
24 months   ki1148112-LCNI-5      MALAWI       0                    NA                 0.0020132   -0.0312214    0.0352478
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.0220650    0.0032423    0.0408878
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                 0.0055259   -0.0198282    0.0308800


### Parameter: PAF


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.1631291   -0.4850322    0.0889966
Birth       ki0047075b-MAL-ED     INDIA        0                    NA                 0.0820742   -0.0474702    0.1955973
Birth       ki0047075b-MAL-ED     PERU         0                    NA                -0.0984391   -0.4119205    0.1454416
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.0000668    0.0000244    0.0001092
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0005231   -0.0014140    0.0003670
6 months    ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.2261385   -0.5454316    0.0271872
6 months    ki0047075b-MAL-ED     INDIA        0                    NA                 0.0306552   -0.0588132    0.1125636
6 months    ki0047075b-MAL-ED     PERU         0                    NA                -0.3108646   -0.5274696   -0.1249757
6 months    ki1000109-EE          PAKISTAN     0                    NA                 0.2221462    0.1410887    0.2955541
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.3151105   -0.7323812    0.0016540
6 months    ki1148112-LCNI-5      MALAWI       0                    NA                 0.0024980   -0.0733001    0.0729431
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.1236159   -0.1700131   -0.0790585
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0628919   -0.1506548    0.0181771
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.0062943   -0.1485854    0.1183692
24 months   ki0047075b-MAL-ED     INDIA        0                    NA                 0.0396374   -0.0096750    0.0865413
24 months   ki0047075b-MAL-ED     NEPAL        0                    NA                -0.0105133   -0.1097728    0.0798683
24 months   ki0047075b-MAL-ED     PERU         0                    NA                -0.1375664   -0.3066207    0.0096152
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.1575882   -0.0487693    0.3233425
24 months   ki1148112-LCNI-5      MALAWI       0                    NA                 0.0041358   -0.0665356    0.0701244
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.0454264    0.0059422    0.0833423
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                 0.0138423   -0.0517394    0.0753346
