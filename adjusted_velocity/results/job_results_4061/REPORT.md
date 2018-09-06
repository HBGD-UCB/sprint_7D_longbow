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

**Intervention Variable:** predfeed3

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

agecat         studyid               country                        predfeed3    n_cell       n
-------------  --------------------  -----------------------------  ----------  -------  ------
0-3 months     ki0047075b-MAL-ED     BANGLADESH                     0                35     239
0-3 months     ki0047075b-MAL-ED     BANGLADESH                     1               204     239
0-3 months     ki0047075b-MAL-ED     BRAZIL                         0                80     180
0-3 months     ki0047075b-MAL-ED     BRAZIL                         1               100     180
0-3 months     ki0047075b-MAL-ED     INDIA                          0                46     199
0-3 months     ki0047075b-MAL-ED     INDIA                          1               153     199
0-3 months     ki0047075b-MAL-ED     NEPAL                          0                73     175
0-3 months     ki0047075b-MAL-ED     NEPAL                          1               102     175
0-3 months     ki0047075b-MAL-ED     PERU                           0                89     268
0-3 months     ki0047075b-MAL-ED     PERU                           1               179     268
0-3 months     ki0047075b-MAL-ED     SOUTH AFRICA                   0               140     226
0-3 months     ki0047075b-MAL-ED     SOUTH AFRICA                   1                86     226
0-3 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0               145     224
0-3 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                79     224
0-3 months     ki1000109-EE          PAKISTAN                       0                32     592
0-3 months     ki1000109-EE          PAKISTAN                       1               560     592
0-3 months     kiGH5241-JiVitA-3     BANGLADESH                     0              4246   39314
0-3 months     kiGH5241-JiVitA-3     BANGLADESH                     1             35068   39314
0-3 months     kiGH5241-JiVitA-4     BANGLADESH                     0                20     242
0-3 months     kiGH5241-JiVitA-4     BANGLADESH                     1               222     242
3-6 months     ki0047075b-MAL-ED     BANGLADESH                     0                33     227
3-6 months     ki0047075b-MAL-ED     BANGLADESH                     1               194     227
3-6 months     ki0047075b-MAL-ED     BRAZIL                         0                92     208
3-6 months     ki0047075b-MAL-ED     BRAZIL                         1               116     208
3-6 months     ki0047075b-MAL-ED     INDIA                          0                53     229
3-6 months     ki0047075b-MAL-ED     INDIA                          1               176     229
3-6 months     ki0047075b-MAL-ED     NEPAL                          0               101     232
3-6 months     ki0047075b-MAL-ED     NEPAL                          1               131     232
3-6 months     ki0047075b-MAL-ED     PERU                           0                84     265
3-6 months     ki0047075b-MAL-ED     PERU                           1               181     265
3-6 months     ki0047075b-MAL-ED     SOUTH AFRICA                   0               150     235
3-6 months     ki0047075b-MAL-ED     SOUTH AFRICA                   1                85     235
3-6 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0               144     233
3-6 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                89     233
3-6 months     ki1000109-EE          PAKISTAN                       0                44     660
3-6 months     ki1000109-EE          PAKISTAN                       1               616     660
3-6 months     ki1113344-GMS-Nepal   NEPAL                          0               150     878
3-6 months     ki1113344-GMS-Nepal   NEPAL                          1               728     878
3-6 months     kiGH5241-JiVitA-3     BANGLADESH                     0              2360   24630
3-6 months     kiGH5241-JiVitA-3     BANGLADESH                     1             22270   24630
3-6 months     kiGH5241-JiVitA-4     BANGLADESH                     0                 2      46
3-6 months     kiGH5241-JiVitA-4     BANGLADESH                     1                44      46
6-12 months    ki0047075b-MAL-ED     BANGLADESH                     0                31     216
6-12 months    ki0047075b-MAL-ED     BANGLADESH                     1               185     216
6-12 months    ki0047075b-MAL-ED     BRAZIL                         0                84     194
6-12 months    ki0047075b-MAL-ED     BRAZIL                         1               110     194
6-12 months    ki0047075b-MAL-ED     INDIA                          0                53     223
6-12 months    ki0047075b-MAL-ED     INDIA                          1               170     223
6-12 months    ki0047075b-MAL-ED     NEPAL                          0                99     227
6-12 months    ki0047075b-MAL-ED     NEPAL                          1               128     227
6-12 months    ki0047075b-MAL-ED     PERU                           0                72     236
6-12 months    ki0047075b-MAL-ED     PERU                           1               164     236
6-12 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0               144     226
6-12 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                82     226
6-12 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0               136     217
6-12 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                81     217
6-12 months    ki1000109-EE          PAKISTAN                       0                 2       8
6-12 months    ki1000109-EE          PAKISTAN                       1                 6       8
6-12 months    ki1113344-GMS-Nepal   NEPAL                          0               130     786
6-12 months    ki1113344-GMS-Nepal   NEPAL                          1               656     786
6-12 months    kiGH5241-JiVitA-3     BANGLADESH                     0              1828   19180
6-12 months    kiGH5241-JiVitA-3     BANGLADESH                     1             17352   19180
6-12 months    kiGH5241-JiVitA-4     BANGLADESH                     0                 2      36
6-12 months    kiGH5241-JiVitA-4     BANGLADESH                     1                34      36
12-24 months   ki0047075b-MAL-ED     BANGLADESH                     0                29     202
12-24 months   ki0047075b-MAL-ED     BANGLADESH                     1               173     202
12-24 months   ki0047075b-MAL-ED     BRAZIL                         0                69     165
12-24 months   ki0047075b-MAL-ED     BRAZIL                         1                96     165
12-24 months   ki0047075b-MAL-ED     INDIA                          0                54     223
12-24 months   ki0047075b-MAL-ED     INDIA                          1               169     223
12-24 months   ki0047075b-MAL-ED     NEPAL                          0                97     223
12-24 months   ki0047075b-MAL-ED     NEPAL                          1               126     223
12-24 months   ki0047075b-MAL-ED     PERU                           0                59     190
12-24 months   ki0047075b-MAL-ED     PERU                           1               131     190
12-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0               146     224
12-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                78     224
12-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0               126     203
12-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                77     203
12-24 months   ki1113344-GMS-Nepal   NEPAL                          0               102     624
12-24 months   ki1113344-GMS-Nepal   NEPAL                          1               522     624
12-24 months   kiGH5241-JiVitA-3     BANGLADESH                     0               944    9050
12-24 months   kiGH5241-JiVitA-3     BANGLADESH                     1              8106    9050
12-24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                16     212
12-24 months   kiGH5241-JiVitA-4     BANGLADESH                     1               196     212


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
* agecat: 6-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-12 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 3-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/b1258e34-4b8f-47bf-8df4-73df322c844d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/b1258e34-4b8f-47bf-8df4-73df322c844d/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH                     0                    NA                -0.1283741   -0.2038362   -0.0529119
0-3 months     ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.0154722   -0.0507163    0.0197718
0-3 months     ki0047075b-MAL-ED     BRAZIL                         0                    NA                 0.1816206    0.1069382    0.2563030
0-3 months     ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.2018499    0.1330364    0.2706635
0-3 months     ki0047075b-MAL-ED     INDIA                          0                    NA                -0.0295851   -0.1018372    0.0426669
0-3 months     ki0047075b-MAL-ED     INDIA                          1                    NA                -0.0363961   -0.0791494    0.0063571
0-3 months     ki0047075b-MAL-ED     NEPAL                          0                    NA                 0.1093176    0.0634619    0.1551733
0-3 months     ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.0526396    0.0130657    0.0922135
0-3 months     ki0047075b-MAL-ED     PERU                           0                    NA                -0.2102254   -0.2674451   -0.1530056
0-3 months     ki0047075b-MAL-ED     PERU                           1                    NA                -0.1316153   -0.1674857   -0.0957450
0-3 months     ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                -0.0908976   -0.1473028   -0.0344924
0-3 months     ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                -0.1171212   -0.1888264   -0.0454160
0-3 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0483786   -0.0946605   -0.0020967
0-3 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1700679    0.1146163    0.2255194
0-3 months     ki1000109-EE          PAKISTAN                       0                    NA                -0.3641828   -0.4914754   -0.2368903
0-3 months     ki1000109-EE          PAKISTAN                       1                    NA                -0.3962610   -0.4408274   -0.3516945
0-3 months     kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                 0.0347511    0.0241718    0.0453305
0-3 months     kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0773262    0.0722335    0.0824188
0-3 months     kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                 0.8151961    0.7671065    0.8632857
0-3 months     kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                 0.1302837    0.0832171    0.1773504
3-6 months     ki0047075b-MAL-ED     BANGLADESH                     0                    NA                 0.0308584   -0.0241064    0.0858233
3-6 months     ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.0288017   -0.0538159   -0.0037875
3-6 months     ki0047075b-MAL-ED     BRAZIL                         0                    NA                 0.1177994    0.0754838    0.1601150
3-6 months     ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.0151884   -0.0243178    0.0546945
3-6 months     ki0047075b-MAL-ED     INDIA                          0                    NA                -0.0486519   -0.0998585    0.0025547
3-6 months     ki0047075b-MAL-ED     INDIA                          1                    NA                -0.0383614   -0.0674125   -0.0093103
3-6 months     ki0047075b-MAL-ED     NEPAL                          0                    NA                 0.0364959    0.0031546    0.0698372
3-6 months     ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.0415056   -0.0710538   -0.0119574
3-6 months     ki0047075b-MAL-ED     PERU                           0                    NA                 0.0724243    0.0156474    0.1292013
3-6 months     ki0047075b-MAL-ED     PERU                           1                    NA                 0.0078787   -0.0281302    0.0438876
3-6 months     ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                 0.0059063   -0.0417337    0.0535464
3-6 months     ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                -0.0170997   -0.0809397    0.0467403
3-6 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0084384   -0.0480631    0.0311864
3-6 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0462648   -0.0942036    0.0016739
3-6 months     ki1000109-EE          PAKISTAN                       0                    NA                -0.0096865   -0.1059733    0.0866004
3-6 months     ki1000109-EE          PAKISTAN                       1                    NA                 0.0747449    0.0458090    0.1036808
3-6 months     ki1113344-GMS-Nepal   NEPAL                          0                    NA                -0.1974501   -0.2451402   -0.1497600
3-6 months     ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.1594054   -0.1804189   -0.1383920
3-6 months     kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                 0.0113407    0.0000556    0.0226258
3-6 months     kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -0.0075111   -0.0125116   -0.0025106
6-12 months    ki0047075b-MAL-ED     BANGLADESH                     0                    NA                -0.1001525   -0.1179572   -0.0823477
6-12 months    ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.0835879   -0.0942954   -0.0728804
6-12 months    ki0047075b-MAL-ED     BRAZIL                         0                    NA                 0.0007871   -0.0323705    0.0339447
6-12 months    ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.0109762   -0.0122175    0.0341699
6-12 months    ki0047075b-MAL-ED     INDIA                          0                    NA                 0.0368604    0.0119297    0.0617912
6-12 months    ki0047075b-MAL-ED     INDIA                          1                    NA                -0.0780125   -0.0913080   -0.0647171
6-12 months    ki0047075b-MAL-ED     NEPAL                          0                    NA                -0.0313842   -0.0474827   -0.0152858
6-12 months    ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.0453935   -0.0586491   -0.0321380
6-12 months    ki0047075b-MAL-ED     PERU                           0                    NA                -0.1512813   -0.1776107   -0.1249520
6-12 months    ki0047075b-MAL-ED     PERU                           1                    NA                -0.0566949   -0.0734909   -0.0398989
6-12 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                -0.0524931   -0.0724310   -0.0325552
6-12 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                -0.0498920   -0.0731654   -0.0266187
6-12 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1255001   -0.1448941   -0.1061061
6-12 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1232083   -0.1509663   -0.0954503
6-12 months    ki1113344-GMS-Nepal   NEPAL                          0                    NA                -0.0468412   -0.0667098   -0.0269727
6-12 months    ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0672179   -0.0775306   -0.0569051
6-12 months    kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                -0.0857739   -0.0924371   -0.0791106
6-12 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -0.0755014   -0.0784287   -0.0725742
12-24 months   ki0047075b-MAL-ED     BANGLADESH                     0                    NA                -0.0084363   -0.0219706    0.0050981
12-24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.0193612   -0.0251607   -0.0135617
12-24 months   ki0047075b-MAL-ED     BRAZIL                         0                    NA                -0.0018781   -0.0144724    0.0107162
12-24 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.0006083   -0.0132999    0.0120832
12-24 months   ki0047075b-MAL-ED     INDIA                          0                    NA                 0.0018427   -0.0064700    0.0101554
12-24 months   ki0047075b-MAL-ED     INDIA                          1                    NA                -0.0134631   -0.0195913   -0.0073349
12-24 months   ki0047075b-MAL-ED     NEPAL                          0                    NA                -0.0323636   -0.0392044   -0.0255227
12-24 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.0346066   -0.0411792   -0.0280340
12-24 months   ki0047075b-MAL-ED     PERU                           0                    NA                -0.0047780   -0.0179340    0.0083780
12-24 months   ki0047075b-MAL-ED     PERU                           1                    NA                -0.0109486   -0.0187977   -0.0030994
12-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                -0.0125416   -0.0220694   -0.0030138
12-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                -0.0205203   -0.0332221   -0.0078185
12-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0410148   -0.0501706   -0.0318590
12-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0490790   -0.0584754   -0.0396827
12-24 months   ki1113344-GMS-Nepal   NEPAL                          0                    NA                -0.0231577   -0.0349066   -0.0114087
12-24 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0144326   -0.0205872   -0.0082780
12-24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                -0.0074773   -0.0109722   -0.0039824
12-24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -0.0199804   -0.0218983   -0.0180625
12-24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                 0.0034714   -0.0171669    0.0241097
12-24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -0.0099925   -0.0183987   -0.0015862


### Parameter: E(Y)


agecat         studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                -0.0320043   -0.0644701    0.0004615
0-3 months     ki0047075b-MAL-ED     BRAZIL                         NA                   NA                 0.1928587    0.1409027    0.2448147
0-3 months     ki0047075b-MAL-ED     INDIA                          NA                   NA                -0.0255097   -0.0638598    0.0128403
0-3 months     ki0047075b-MAL-ED     NEPAL                          NA                   NA                 0.0746202    0.0395269    0.1097135
0-3 months     ki0047075b-MAL-ED     PERU                           NA                   NA                -0.1578735   -0.1906434   -0.1251037
0-3 months     ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                -0.1008775   -0.1453661   -0.0563889
0-3 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0485757   -0.0876660   -0.0094853
0-3 months     ki1000109-EE          PAKISTAN                       NA                   NA                -0.3945273   -0.4372606   -0.3517940
0-3 months     kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                 0.0707032    0.0657297    0.0756767
0-3 months     kiGH5241-JiVitA-4     BANGLADESH                     NA                   NA                 0.1109539    0.0661941    0.1557138
3-6 months     ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                -0.0200415   -0.0431395    0.0030565
3-6 months     ki0047075b-MAL-ED     BRAZIL                         NA                   NA                 0.0604904    0.0239698    0.0970111
3-6 months     ki0047075b-MAL-ED     INDIA                          NA                   NA                -0.0401251   -0.0685271   -0.0117231
3-6 months     ki0047075b-MAL-ED     NEPAL                          NA                   NA                -0.0225157   -0.0491401    0.0041087
3-6 months     ki0047075b-MAL-ED     PERU                           NA                   NA                 0.0283266   -0.0028926    0.0595459
3-6 months     ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                -0.0024150   -0.0406234    0.0357934
3-6 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0727901   -0.1056963   -0.0398840
3-6 months     ki1000109-EE          PAKISTAN                       NA                   NA                 0.0708495    0.0425982    0.0991009
3-6 months     ki1113344-GMS-Nepal   NEPAL                          NA                   NA                -0.1660455   -0.1856196   -0.1464714
3-6 months     kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                -0.0042530   -0.0091354    0.0006295
6-12 months    ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                -0.0807371   -0.0912604   -0.0702138
6-12 months    ki0047075b-MAL-ED     BRAZIL                         NA                   NA                 0.0065644   -0.0129183    0.0260472
6-12 months    ki0047075b-MAL-ED     INDIA                          NA                   NA                -0.0777727   -0.0900154   -0.0655300
6-12 months    ki0047075b-MAL-ED     NEPAL                          NA                   NA                -0.0486002   -0.0592412   -0.0379593
6-12 months    ki0047075b-MAL-ED     PERU                           NA                   NA                -0.0374212   -0.0515266   -0.0233158
6-12 months    ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                -0.0517337   -0.0693851   -0.0340823
6-12 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1246447   -0.1406180   -0.1086713
6-12 months    ki1113344-GMS-Nepal   NEPAL                          NA                   NA                -0.0638477   -0.0730913   -0.0546041
6-12 months    kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                -0.0753247   -0.0782379   -0.0724114
12-24 months   ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                -0.0181403   -0.0236170   -0.0126636
12-24 months   ki0047075b-MAL-ED     BRAZIL                         NA                   NA                -0.0013016   -0.0119070    0.0093038
12-24 months   ki0047075b-MAL-ED     INDIA                          NA                   NA                -0.0097570   -0.0149006   -0.0046135
12-24 months   ki0047075b-MAL-ED     NEPAL                          NA                   NA                -0.0295235   -0.0345942   -0.0244528
12-24 months   ki0047075b-MAL-ED     PERU                           NA                   NA                -0.0090124   -0.0160498   -0.0019751
12-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                -0.0153199   -0.0229604   -0.0076795
12-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0396040   -0.0475364   -0.0316716
12-24 months   ki1113344-GMS-Nepal   NEPAL                          NA                   NA                -0.0158588   -0.0213657   -0.0103518
12-24 months   kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                -0.0189244   -0.0207907   -0.0170581
12-24 months   kiGH5241-JiVitA-4     BANGLADESH                     NA                   NA                -0.0089754   -0.0170317   -0.0009191


### Parameter: ATE


agecat         studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     BANGLADESH                     1                    0                  0.1129018    0.0296654    0.1961382
0-3 months     ki0047075b-MAL-ED     BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     BRAZIL                         1                    0                  0.0202293   -0.0786231    0.1190817
0-3 months     ki0047075b-MAL-ED     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     INDIA                          1                    0                 -0.0068110   -0.0908681    0.0772462
0-3 months     ki0047075b-MAL-ED     NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     NEPAL                          1                    0                 -0.0566780   -0.1077990   -0.0055569
0-3 months     ki0047075b-MAL-ED     PERU                           0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     PERU                           1                    0                  0.0786100    0.0144487    0.1427714
0-3 months     ki0047075b-MAL-ED     SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     SOUTH AFRICA                   1                    0                 -0.0262236   -0.1171993    0.0647521
0-3 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    0                  0.2184465    0.1453482    0.2915447
0-3 months     ki1000109-EE          PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE          PAKISTAN                       1                    0                 -0.0320781   -0.1668854    0.1027291
0-3 months     kiGH5241-JiVitA-3     BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3     BANGLADESH                     1                    0                  0.0425751    0.0314787    0.0536714
0-3 months     kiGH5241-JiVitA-4     BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4     BANGLADESH                     1                    0                 -0.6849124   -0.7575225   -0.6123023
3-6 months     ki0047075b-MAL-ED     BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     BANGLADESH                     1                    0                 -0.0596601   -0.1198216    0.0005013
3-6 months     ki0047075b-MAL-ED     BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     BRAZIL                         1                    0                 -0.1026111   -0.1527834   -0.0524387
3-6 months     ki0047075b-MAL-ED     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     INDIA                          1                    0                  0.0102905   -0.0424680    0.0630490
3-6 months     ki0047075b-MAL-ED     NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     NEPAL                          1                    0                 -0.0780015   -0.1168537   -0.0391493
3-6 months     ki0047075b-MAL-ED     PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     PERU                           1                    0                 -0.0645456   -0.1305734    0.0014821
3-6 months     ki0047075b-MAL-ED     SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     SOUTH AFRICA                   1                    0                 -0.0230060   -0.1026623    0.0566502
3-6 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0378265   -0.1007692    0.0251163
3-6 months     ki1000109-EE          PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE          PAKISTAN                       1                    0                  0.0844314   -0.0152943    0.1841571
3-6 months     ki1113344-GMS-Nepal   NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal   NEPAL                          1                    0                  0.0380447   -0.0135587    0.0896481
3-6 months     kiGH5241-JiVitA-3     BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3     BANGLADESH                     1                    0                 -0.0188518   -0.0306545   -0.0070491
6-12 months    ki0047075b-MAL-ED     BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED     BANGLADESH                     1                    0                  0.0165646   -0.0037681    0.0368973
6-12 months    ki0047075b-MAL-ED     BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED     BRAZIL                         1                    0                  0.0101891   -0.0302753    0.0506536
6-12 months    ki0047075b-MAL-ED     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED     INDIA                          1                    0                 -0.1148730   -0.1433721   -0.0863739
6-12 months    ki0047075b-MAL-ED     NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED     NEPAL                          1                    0                 -0.0140093   -0.0349369    0.0069182
6-12 months    ki0047075b-MAL-ED     PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED     PERU                           1                    0                  0.0945864    0.0623417    0.1268311
6-12 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                    0                  0.0026011   -0.0222100    0.0274121
6-12 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0022918   -0.0315680    0.0361517
6-12 months    ki1113344-GMS-Nepal   NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal   NEPAL                          1                    0                 -0.0203766   -0.0427619    0.0020086
6-12 months    kiGH5241-JiVitA-3     BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    0                  0.0102724    0.0034289    0.0171159
12-24 months   ki0047075b-MAL-ED     BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    0                 -0.0109249   -0.0254852    0.0036353
12-24 months   ki0047075b-MAL-ED     BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED     BRAZIL                         1                    0                  0.0012698   -0.0137170    0.0162566
12-24 months   ki0047075b-MAL-ED     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED     INDIA                          1                    0                 -0.0153059   -0.0256181   -0.0049936
12-24 months   ki0047075b-MAL-ED     NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED     NEPAL                          1                    0                 -0.0022430   -0.0117610    0.0072750
12-24 months   ki0047075b-MAL-ED     PERU                           0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED     PERU                           1                    0                 -0.0061706   -0.0211577    0.0088165
12-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    0                 -0.0079787   -0.0238568    0.0078995
12-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0080642   -0.0184160    0.0022875
12-24 months   ki1113344-GMS-Nepal   NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal   NEPAL                          1                    0                  0.0087251   -0.0045376    0.0219878
12-24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    0                 -0.0125031   -0.0163852   -0.0086210
12-24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    0                 -0.0134639   -0.0351618    0.0082339
