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

**Intervention Variable:** predfeed6

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

agecat         studyid                    country                        predfeed6    n_cell       n
-------------  -------------------------  -----------------------------  ----------  -------  ------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0               112     233
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1               121     233
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0               148     175
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                27     175
0-3 months     ki0047075b-MAL-ED          INDIA                          0               178     193
0-3 months     ki0047075b-MAL-ED          INDIA                          1                15     193
0-3 months     ki0047075b-MAL-ED          NEPAL                          0               150     173
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                23     173
0-3 months     ki0047075b-MAL-ED          PERU                           0               150     258
0-3 months     ki0047075b-MAL-ED          PERU                           1               108     258
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0               206     209
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                 3     209
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               223     224
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1     224
0-3 months     ki1000109-EE               PAKISTAN                       0               260     594
0-3 months     ki1000109-EE               PAKISTAN                       1               334     594
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0              8676   40078
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1             31402   40078
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0               586    3610
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1              3024    3610
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0               108     225
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1               117     225
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0               173     208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                35     208
3-6 months     ki0047075b-MAL-ED          INDIA                          0               207     225
3-6 months     ki0047075b-MAL-ED          INDIA                          1                18     225
3-6 months     ki0047075b-MAL-ED          NEPAL                          0               205     232
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                27     232
3-6 months     ki0047075b-MAL-ED          PERU                           0               153     264
3-6 months     ki0047075b-MAL-ED          PERU                           1               111     264
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0               230     233
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                 3     233
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               234     236
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 2     236
3-6 months     ki1000109-EE               PAKISTAN                       0               278     662
3-6 months     ki1000109-EE               PAKISTAN                       1               384     662
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0               254     932
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1               678     932
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0              5340   25156
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1             19816   25156
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0               578    3646
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1              3068    3646
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     0               102     214
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1               112     214
6-12 months    ki0047075b-MAL-ED          BRAZIL                         0               161     194
6-12 months    ki0047075b-MAL-ED          BRAZIL                         1                33     194
6-12 months    ki0047075b-MAL-ED          INDIA                          0               204     221
6-12 months    ki0047075b-MAL-ED          INDIA                          1                17     221
6-12 months    ki0047075b-MAL-ED          NEPAL                          0               202     229
6-12 months    ki0047075b-MAL-ED          NEPAL                          1                27     229
6-12 months    ki0047075b-MAL-ED          PERU                           0               134     235
6-12 months    ki0047075b-MAL-ED          PERU                           1               101     235
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               221     224
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 3     224
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               218     220
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 2     220
6-12 months    ki1000109-EE               PAKISTAN                       0                 6       8
6-12 months    ki1000109-EE               PAKISTAN                       1                 2       8
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0               150     150
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                 0     150
6-12 months    ki1113344-GMS-Nepal        NEPAL                          0               240     938
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1               698     938
6-12 months    ki1148112-LCNI-5           MALAWI                         0                27      40
6-12 months    ki1148112-LCNI-5           MALAWI                         1                13      40
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     0              4122   19584
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1             15462   19584
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0              1174    5646
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1              4472    5646
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                95     203
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1               108     203
12-24 months   ki0047075b-MAL-ED          BRAZIL                         0               136     165
12-24 months   ki0047075b-MAL-ED          BRAZIL                         1                29     165
12-24 months   ki0047075b-MAL-ED          INDIA                          0               205     222
12-24 months   ki0047075b-MAL-ED          INDIA                          1                17     222
12-24 months   ki0047075b-MAL-ED          NEPAL                          0               198     225
12-24 months   ki0047075b-MAL-ED          NEPAL                          1                27     225
12-24 months   ki0047075b-MAL-ED          PERU                           0               110     189
12-24 months   ki0047075b-MAL-ED          PERU                           1                79     189
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               216     219
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 3     219
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               203     205
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 2     205
12-24 months   ki1113344-GMS-Nepal        NEPAL                          0               174     714
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1               540     714
12-24 months   ki1148112-LCNI-5           MALAWI                         0                21      30
12-24 months   ki1148112-LCNI-5           MALAWI                         1                 9      30
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0              2034    9258
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              7224    9258
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0              1382    6432
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1              5050    6432


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
![](/tmp/19e7d74d-87a0-406d-a927-a052294c7f83/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/19e7d74d-87a0-406d-a927-a052294c7f83/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.1130369   -0.1565585   -0.0695154
0-3 months     ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0834452   -0.1250606   -0.0418297
0-3 months     ki0047075b-MAL-ED     BRAZIL       0                    NA                 0.1889411    0.1326303    0.2452519
0-3 months     ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.2738078    0.1561897    0.3914259
0-3 months     ki0047075b-MAL-ED     INDIA        0                    NA                -0.0215058   -0.0623348    0.0193233
0-3 months     ki0047075b-MAL-ED     INDIA        1                    NA                -0.0592186   -0.1503340    0.0318968
0-3 months     ki0047075b-MAL-ED     NEPAL        0                    NA                 0.0817136    0.0423482    0.1210789
0-3 months     ki0047075b-MAL-ED     NEPAL        1                    NA                 0.0201940   -0.0439241    0.0843120
0-3 months     ki0047075b-MAL-ED     PERU         0                    NA                -0.1271103   -0.1667820   -0.0874386
0-3 months     ki0047075b-MAL-ED     PERU         1                    NA                -0.0384807   -0.0820313    0.0050699
0-3 months     ki1000109-EE          PAKISTAN     0                    NA                -0.2892077   -0.3387035   -0.2397118
0-3 months     ki1000109-EE          PAKISTAN     1                    NA                -0.3642174   -0.4192563   -0.3091786
0-3 months     kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.0381155    0.0299626    0.0462684
0-3 months     kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0819091    0.0766966    0.0871217
0-3 months     kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0242712   -0.0595734    0.0110310
0-3 months     kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0774575    0.0618642    0.0930508
3-6 months     ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.0517014   -0.0792152   -0.0241876
3-6 months     ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0711414   -0.0989048   -0.0433780
3-6 months     ki0047075b-MAL-ED     BRAZIL       0                    NA                 0.0665154    0.0270711    0.1059598
3-6 months     ki0047075b-MAL-ED     BRAZIL       1                    NA                -0.0273800   -0.1126452    0.0578853
3-6 months     ki0047075b-MAL-ED     INDIA        0                    NA                -0.0369367   -0.0673811   -0.0064923
3-6 months     ki0047075b-MAL-ED     INDIA        1                    NA                -0.0758275   -0.1462718   -0.0053832
3-6 months     ki0047075b-MAL-ED     NEPAL        0                    NA                -0.0186830   -0.0471850    0.0098189
3-6 months     ki0047075b-MAL-ED     NEPAL        1                    NA                -0.0447744   -0.1204223    0.0308736
3-6 months     ki0047075b-MAL-ED     PERU         0                    NA                -0.0033277   -0.0404787    0.0338234
3-6 months     ki0047075b-MAL-ED     PERU         1                    NA                -0.0110485   -0.0518760    0.0297790
3-6 months     ki1000109-EE          PAKISTAN     0                    NA                 0.2029001    0.1609782    0.2448221
3-6 months     ki1000109-EE          PAKISTAN     1                    NA                 0.1237963    0.0910086    0.1565840
3-6 months     ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.2039630   -0.2402300   -0.1676960
3-6 months     ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.1569603   -0.1781291   -0.1357914
3-6 months     kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.0013594   -0.0071300    0.0098488
3-6 months     kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0096314   -0.0148395   -0.0044232
3-6 months     kiGH5241-JiVitA-4     BANGLADESH   0                    NA                 0.0071575   -0.0176572    0.0319723
3-6 months     kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0157664   -0.0305502   -0.0009826
6-12 months    ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.0737992   -0.0871460   -0.0604524
6-12 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0885378   -0.1003705   -0.0767051
6-12 months    ki0047075b-MAL-ED     BRAZIL       0                    NA                 0.0067834   -0.0139950    0.0275617
6-12 months    ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.0054963   -0.0478101    0.0588027
6-12 months    ki0047075b-MAL-ED     INDIA        0                    NA                -0.0784101   -0.0912667   -0.0655534
6-12 months    ki0047075b-MAL-ED     INDIA        1                    NA                -0.0666992   -0.1103021   -0.0230963
6-12 months    ki0047075b-MAL-ED     NEPAL        0                    NA                -0.0456719   -0.0569527   -0.0343911
6-12 months    ki0047075b-MAL-ED     NEPAL        1                    NA                -0.0691079   -0.0990197   -0.0391961
6-12 months    ki0047075b-MAL-ED     PERU         0                    NA                -0.0946061   -0.1152689   -0.0739433
6-12 months    ki0047075b-MAL-ED     PERU         1                    NA                -0.1395761   -0.1593163   -0.1198358
6-12 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0433074   -0.0578883   -0.0287265
6-12 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0632649   -0.0724837   -0.0540460
6-12 months    ki1148112-LCNI-5      MALAWI       0                    NA                -0.0529763   -0.1045727   -0.0013799
6-12 months    ki1148112-LCNI-5      MALAWI       1                    NA                 0.0151695   -0.0305307    0.0608697
6-12 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0719443   -0.0771257   -0.0667629
6-12 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0763465   -0.0793717   -0.0733213
6-12 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0433428   -0.0516937   -0.0349919
6-12 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0399880   -0.0450791   -0.0348968
12-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.0520397   -0.0608635   -0.0432160
12-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0481926   -0.0557297   -0.0406556
12-24 months   ki0047075b-MAL-ED     BRAZIL       0                    NA                 0.0023702   -0.0089960    0.0137365
12-24 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                -0.0185479   -0.0438066    0.0067107
12-24 months   ki0047075b-MAL-ED     INDIA        0                    NA                -0.0090699   -0.0144593   -0.0036805
12-24 months   ki0047075b-MAL-ED     INDIA        1                    NA                -0.0302669   -0.0465504   -0.0139834
12-24 months   ki0047075b-MAL-ED     NEPAL        0                    NA                -0.0312029   -0.0366133   -0.0257926
12-24 months   ki0047075b-MAL-ED     NEPAL        1                    NA                -0.0481893   -0.0560316   -0.0403470
12-24 months   ki0047075b-MAL-ED     PERU         0                    NA                -0.0160982   -0.0251889   -0.0070075
12-24 months   ki0047075b-MAL-ED     PERU         1                    NA                -0.0297174   -0.0376491   -0.0217858
12-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0175177   -0.0276022   -0.0074331
12-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0154877   -0.0213011   -0.0096742
12-24 months   ki1148112-LCNI-5      MALAWI       0                    NA                -0.0053185   -0.0263716    0.0157345
12-24 months   ki1148112-LCNI-5      MALAWI       1                    NA                -0.0345407   -0.0639658   -0.0051157
12-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0163433   -0.0195877   -0.0130989
12-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0208264   -0.0227474   -0.0189054
12-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0097208   -0.0128691   -0.0065725
12-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0164917   -0.0186550   -0.0143284


### Parameter: E(Y)


agecat         studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH   NA                   NA                -0.0367999   -0.0692784   -0.0043215
0-3 months     ki0047075b-MAL-ED     BRAZIL       NA                   NA                 0.2024499    0.1502269    0.2546728
0-3 months     ki0047075b-MAL-ED     INDIA        NA                   NA                -0.0222752   -0.0610481    0.0164977
0-3 months     ki0047075b-MAL-ED     NEPAL        NA                   NA                 0.0735454    0.0381022    0.1089887
0-3 months     ki0047075b-MAL-ED     PERU         NA                   NA                -0.1508658   -0.1831247   -0.1186070
0-3 months     ki1000109-EE          PAKISTAN     NA                   NA                -0.3938516   -0.4364614   -0.3512419
0-3 months     kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                 0.0705623    0.0656085    0.0755161
0-3 months     kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                 0.0674700    0.0524969    0.0824432
3-6 months     ki0047075b-MAL-ED     BANGLADESH   NA                   NA                -0.0188602   -0.0422435    0.0045231
3-6 months     ki0047075b-MAL-ED     BRAZIL       NA                   NA                 0.0604904    0.0239698    0.0970111
3-6 months     ki0047075b-MAL-ED     INDIA        NA                   NA                -0.0402159   -0.0690209   -0.0114109
3-6 months     ki0047075b-MAL-ED     NEPAL        NA                   NA                -0.0217195   -0.0484207    0.0049817
3-6 months     ki0047075b-MAL-ED     PERU         NA                   NA                 0.0285063   -0.0025558    0.0595685
3-6 months     ki1000109-EE          PAKISTAN     NA                   NA                 0.0701161    0.0419135    0.0983187
3-6 months     ki1113344-GMS-Nepal   NEPAL        NA                   NA                -0.1663669   -0.1850409   -0.1476929
3-6 months     kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                -0.0035176   -0.0083841    0.0013489
3-6 months     kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                -0.0095967   -0.0234440    0.0042506
6-12 months    ki0047075b-MAL-ED     BANGLADESH   NA                   NA                -0.0810302   -0.0916713   -0.0703891
6-12 months    ki0047075b-MAL-ED     BRAZIL       NA                   NA                 0.0065644   -0.0129183    0.0260472
6-12 months    ki0047075b-MAL-ED     INDIA        NA                   NA                -0.0775092   -0.0898591   -0.0651592
6-12 months    ki0047075b-MAL-ED     NEPAL        NA                   NA                -0.0484306   -0.0591023   -0.0377589
6-12 months    ki0047075b-MAL-ED     PERU         NA                   NA                -0.0382822   -0.0523761   -0.0241883
6-12 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                -0.0623284   -0.0705747   -0.0540821
6-12 months    ki1148112-LCNI-5      MALAWI       NA                   NA                -0.0281085   -0.0675243    0.0113073
6-12 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                -0.0749683   -0.0778180   -0.0721186
6-12 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                -0.0387665   -0.0435189   -0.0340140
12-24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                -0.0177288   -0.0232009   -0.0122567
12-24 months   ki0047075b-MAL-ED     BRAZIL       NA                   NA                -0.0013016   -0.0119070    0.0093038
12-24 months   ki0047075b-MAL-ED     INDIA        NA                   NA                -0.0099239   -0.0151132   -0.0047346
12-24 months   ki0047075b-MAL-ED     NEPAL        NA                   NA                -0.0297758   -0.0348315   -0.0247201
12-24 months   ki0047075b-MAL-ED     PERU         NA                   NA                -0.0082368   -0.0151828   -0.0012908
12-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                -0.0159785   -0.0210905   -0.0108666
12-24 months   ki1148112-LCNI-5      MALAWI       NA                   NA                -0.0140852   -0.0319419    0.0037715
12-24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                -0.0189940   -0.0208299   -0.0171580
12-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                -0.0145458   -0.0165637   -0.0125280


### Parameter: ATE


agecat         studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     BANGLADESH   1                    0                  0.0295918   -0.0295518    0.0887353
0-3 months     ki0047075b-MAL-ED     BRAZIL       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     BRAZIL       1                    0                  0.0848667   -0.0452176    0.2149510
0-3 months     ki0047075b-MAL-ED     INDIA        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     INDIA        1                    0                 -0.0377128   -0.1377488    0.0623231
0-3 months     ki0047075b-MAL-ED     NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     NEPAL        1                    0                 -0.0615196   -0.1363334    0.0132942
0-3 months     ki0047075b-MAL-ED     PERU         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     PERU         1                    0                  0.0886296    0.0300457    0.1472135
0-3 months     ki1000109-EE          PAKISTAN     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE          PAKISTAN     1                    0                 -0.0750098   -0.1498806   -0.0001389
0-3 months     kiGH5241-JiVitA-3     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3     BANGLADESH   1                    0                  0.0437936    0.0351047    0.0524825
0-3 months     kiGH5241-JiVitA-4     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4     BANGLADESH   1                    0                  0.1017287    0.0633962    0.1400611
3-6 months     ki0047075b-MAL-ED     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     BANGLADESH   1                    0                 -0.0194400   -0.0587630    0.0198830
3-6 months     ki0047075b-MAL-ED     BRAZIL       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     BRAZIL       1                    0                 -0.0938954   -0.1868332   -0.0009577
3-6 months     ki0047075b-MAL-ED     INDIA        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     INDIA        1                    0                 -0.0388908   -0.1163540    0.0385724
3-6 months     ki0047075b-MAL-ED     NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     NEPAL        1                    0                 -0.0260913   -0.1069305    0.0547478
3-6 months     ki0047075b-MAL-ED     PERU         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     PERU         1                    0                 -0.0077208   -0.0582144    0.0427727
3-6 months     ki1000109-EE          PAKISTAN     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE          PAKISTAN     1                    0                 -0.0791038   -0.1340448   -0.0241629
3-6 months     ki1113344-GMS-Nepal   NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal   NEPAL        1                    0                  0.0470028    0.0050880    0.0889175
3-6 months     kiGH5241-JiVitA-3     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3     BANGLADESH   1                    0                 -0.0109908   -0.0203897   -0.0015919
3-6 months     kiGH5241-JiVitA-4     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4     BANGLADESH   1                    0                 -0.0229239   -0.0505255    0.0046776
6-12 months    ki0047075b-MAL-ED     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED     BANGLADESH   1                    0                 -0.0147386   -0.0322098    0.0027326
6-12 months    ki0047075b-MAL-ED     BRAZIL       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED     BRAZIL       1                    0                 -0.0012871   -0.0584999    0.0559258
6-12 months    ki0047075b-MAL-ED     INDIA        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED     INDIA        1                    0                  0.0117109   -0.0337067    0.0571285
6-12 months    ki0047075b-MAL-ED     NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED     NEPAL        1                    0                 -0.0234360   -0.0551847    0.0083127
6-12 months    ki0047075b-MAL-ED     PERU         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED     PERU         1                    0                 -0.0449700   -0.0766053   -0.0133346
6-12 months    ki1113344-GMS-Nepal   NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal   NEPAL        1                    0                 -0.0199575   -0.0371437   -0.0027712
6-12 months    ki1148112-LCNI-5      MALAWI       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5      MALAWI       1                    0                  0.0681458   -0.0008785    0.1371701
6-12 months    kiGH5241-JiVitA-3     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3     BANGLADESH   1                    0                 -0.0044022   -0.0100660    0.0012616
6-12 months    kiGH5241-JiVitA-4     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4     BANGLADESH   1                    0                  0.0033548   -0.0060180    0.0127276
12-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    0                  0.0038471   -0.0091411    0.0168352
12-24 months   ki0047075b-MAL-ED     BRAZIL       0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED     BRAZIL       1                    0                 -0.0209181   -0.0482123    0.0063760
12-24 months   ki0047075b-MAL-ED     INDIA        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED     INDIA        1                    0                 -0.0211971   -0.0383916   -0.0040025
12-24 months   ki0047075b-MAL-ED     NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED     NEPAL        1                    0                 -0.0169864   -0.0265780   -0.0073947
12-24 months   ki0047075b-MAL-ED     PERU         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED     PERU         1                    0                 -0.0136193   -0.0258084   -0.0014301
12-24 months   ki1113344-GMS-Nepal   NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal   NEPAL        1                    0                  0.0020300   -0.0094744    0.0135345
12-24 months   ki1148112-LCNI-5      MALAWI       0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5      MALAWI       1                    0                 -0.0292222   -0.0654032    0.0069588
12-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    0                 -0.0044831   -0.0080148   -0.0009514
12-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    0                 -0.0067709   -0.0104054   -0.0031364
