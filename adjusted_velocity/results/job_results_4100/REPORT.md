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
![](/tmp/d2602d3d-cb5a-4c70-83b9-c9650c07c0be/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/d2602d3d-cb5a-4c70-83b9-c9650c07c0be/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid               country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  --------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH                     0                    NA                3.4277461   3.3165994   3.5388927
0-3 months     ki0047075b-MAL-ED     BANGLADESH                     1                    NA                3.5924992   3.5269493   3.6580491
0-3 months     ki0047075b-MAL-ED     BRAZIL                         0                    NA                4.0344846   3.8812504   4.1877189
0-3 months     ki0047075b-MAL-ED     BRAZIL                         1                    NA                4.0641706   3.9295104   4.1988308
0-3 months     ki0047075b-MAL-ED     INDIA                          0                    NA                3.9177715   3.7906977   4.0448452
0-3 months     ki0047075b-MAL-ED     INDIA                          1                    NA                3.5951006   3.5095223   3.6806789
0-3 months     ki0047075b-MAL-ED     NEPAL                          0                    NA                3.9064737   3.7874168   4.0255306
0-3 months     ki0047075b-MAL-ED     NEPAL                          1                    NA                3.7589673   3.6624770   3.8554576
0-3 months     ki0047075b-MAL-ED     PERU                           0                    NA                3.2344034   3.1113222   3.3574846
0-3 months     ki0047075b-MAL-ED     PERU                           1                    NA                3.3580193   3.2855866   3.4304520
0-3 months     ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                3.4728433   3.3568257   3.5888610
0-3 months     ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                3.3994612   3.2592633   3.5396591
0-3 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                3.4765438   3.3858561   3.5672316
0-3 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                3.9325539   3.8354599   4.0296479
0-3 months     ki1000109-EE          PAKISTAN                       0                    NA                2.4474650   2.2582632   2.6366669
0-3 months     ki1000109-EE          PAKISTAN                       1                    NA                2.6534549   2.5668204   2.7400894
0-3 months     kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                3.6633183   3.6415306   3.6851060
0-3 months     kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                3.7311701   3.7204969   3.7418434
0-3 months     kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                3.6698323   3.4271225   3.9125422
0-3 months     kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                3.8090393   3.7098102   3.9082684
3-6 months     ki0047075b-MAL-ED     BANGLADESH                     0                    NA                2.0444738   1.9224005   2.1665471
3-6 months     ki0047075b-MAL-ED     BANGLADESH                     1                    NA                1.9143097   1.8609542   1.9676652
3-6 months     ki0047075b-MAL-ED     BRAZIL                         0                    NA                2.2792700   2.1821181   2.3764219
3-6 months     ki0047075b-MAL-ED     BRAZIL                         1                    NA                2.0433045   1.9583001   2.1283089
3-6 months     ki0047075b-MAL-ED     INDIA                          0                    NA                1.6662382   1.5493644   1.7831120
3-6 months     ki0047075b-MAL-ED     INDIA                          1                    NA                1.8687601   1.8032260   1.9342942
3-6 months     ki0047075b-MAL-ED     NEPAL                          0                    NA                2.0535303   1.9712501   2.1358105
3-6 months     ki0047075b-MAL-ED     NEPAL                          1                    NA                1.8727484   1.8046035   1.9408933
3-6 months     ki0047075b-MAL-ED     PERU                           0                    NA                2.1207110   1.9987779   2.2426441
3-6 months     ki0047075b-MAL-ED     PERU                           1                    NA                1.9737403   1.8965206   2.0509600
3-6 months     ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                1.9978800   1.8969163   2.0988438
3-6 months     ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                1.9376178   1.8014237   2.0738120
3-6 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                1.8880705   1.8057621   1.9703788
3-6 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                1.7287774   1.6297740   1.8277807
3-6 months     ki1000109-EE          PAKISTAN                       0                    NA                1.9392571   1.6840887   2.1944254
3-6 months     ki1000109-EE          PAKISTAN                       1                    NA                2.0313873   1.9690533   2.0937212
3-6 months     ki1113344-GMS-Nepal   NEPAL                          0                    NA                1.6422563   1.5444343   1.7400783
3-6 months     ki1113344-GMS-Nepal   NEPAL                          1                    NA                1.7186510   1.6740844   1.7632175
3-6 months     kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                1.9822278   1.9591464   2.0053093
3-6 months     kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                1.9121197   1.9014117   1.9228277
6-12 months    ki0047075b-MAL-ED     BANGLADESH                     0                    NA                1.1381378   1.0836316   1.1926440
6-12 months    ki0047075b-MAL-ED     BANGLADESH                     1                    NA                1.1097416   1.0840593   1.1354239
6-12 months    ki0047075b-MAL-ED     BRAZIL                         0                    NA                1.3818022   1.3233048   1.4402997
6-12 months    ki0047075b-MAL-ED     BRAZIL                         1                    NA                1.3891853   1.3406796   1.4376910
6-12 months    ki0047075b-MAL-ED     INDIA                          0                    NA                1.1602214   1.1216037   1.1988390
6-12 months    ki0047075b-MAL-ED     INDIA                          1                    NA                1.0960589   1.0673479   1.1247699
6-12 months    ki0047075b-MAL-ED     NEPAL                          0                    NA                1.2325712   1.1971740   1.2679685
6-12 months    ki0047075b-MAL-ED     NEPAL                          1                    NA                1.2151576   1.1842751   1.2460400
6-12 months    ki0047075b-MAL-ED     PERU                           0                    NA                1.1829568   1.1205519   1.2453617
6-12 months    ki0047075b-MAL-ED     PERU                           1                    NA                1.2216366   1.1832614   1.2600119
6-12 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                1.2369277   1.1877744   1.2860810
6-12 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                1.3302289   1.2714795   1.3889784
6-12 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                1.0168654   0.9754181   1.0583127
6-12 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                1.0745517   1.0200165   1.1290869
6-12 months    ki1113344-GMS-Nepal   NEPAL                          0                    NA                1.1980080   1.1550893   1.2409267
6-12 months    ki1113344-GMS-Nepal   NEPAL                          1                    NA                1.1560528   1.1317852   1.1803203
6-12 months    kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                1.0883433   1.0729291   1.1037575
6-12 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                1.1060095   1.0990252   1.1129939
12-24 months   ki0047075b-MAL-ED     BANGLADESH                     0                    NA                0.8457295   0.8129842   0.8784748
12-24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                0.8455234   0.8287706   0.8622762
12-24 months   ki0047075b-MAL-ED     BRAZIL                         0                    NA                0.9948011   0.9526147   1.0369875
12-24 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                0.9721530   0.9311130   1.0131929
12-24 months   ki0047075b-MAL-ED     INDIA                          0                    NA                0.7813520   0.7541352   0.8085689
12-24 months   ki0047075b-MAL-ED     INDIA                          1                    NA                0.8469600   0.8270887   0.8668314
12-24 months   ki0047075b-MAL-ED     NEPAL                          0                    NA                0.9047569   0.8840727   0.9254410
12-24 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                0.8685804   0.8504901   0.8866706
12-24 months   ki0047075b-MAL-ED     PERU                           0                    NA                0.8614649   0.8306804   0.8922493
12-24 months   ki0047075b-MAL-ED     PERU                           1                    NA                0.8405906   0.8187262   0.8624550
12-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                0.8808888   0.8520683   0.9097093
12-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                0.8528162   0.8175509   0.8880815
12-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7614849   0.7313607   0.7916090
12-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7402521   0.7088934   0.7716107
12-24 months   ki1113344-GMS-Nepal   NEPAL                          0                    NA                0.8197256   0.7911888   0.8482624
12-24 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                0.8398662   0.8216869   0.8580456
12-24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                0.8191010   0.8094982   0.8287037
12-24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                0.7938924   0.7883493   0.7994356
12-24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                0.8202136   0.7873366   0.8530906
12-24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                0.8501841   0.8266174   0.8737509


### Parameter: E(Y)


agecat         studyid               country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  --------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                3.5678222   3.5043711   3.6312732
0-3 months     ki0047075b-MAL-ED     BRAZIL                         NA                   NA                4.0509714   3.9492443   4.1526985
0-3 months     ki0047075b-MAL-ED     INDIA                          NA                   NA                3.5659922   3.4894688   3.6425155
0-3 months     ki0047075b-MAL-ED     NEPAL                          NA                   NA                3.8204935   3.7444190   3.8965681
0-3 months     ki0047075b-MAL-ED     PERU                           NA                   NA                3.3169678   3.2532502   3.3806854
0-3 months     ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                3.4449056   3.3547788   3.5350324
0-3 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                3.4805903   3.4021811   3.5589994
0-3 months     ki1000109-EE          PAKISTAN                       NA                   NA                2.6551376   2.5714235   2.7388517
0-3 months     kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                3.7192245   3.7088675   3.7295816
0-3 months     kiGH5241-JiVitA-4     BANGLADESH                     NA                   NA                3.7971810   3.7001091   3.8942529
3-6 months     ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                1.9332346   1.8839439   1.9825252
3-6 months     ki0047075b-MAL-ED     BRAZIL                         NA                   NA                2.1478156   2.0686357   2.2269955
3-6 months     ki0047075b-MAL-ED     INDIA                          NA                   NA                1.8837264   1.8224393   1.9450135
3-6 months     ki0047075b-MAL-ED     NEPAL                          NA                   NA                1.9656096   1.9095163   2.0217030
3-6 months     ki0047075b-MAL-ED     PERU                           NA                   NA                2.0203240   1.9541588   2.0864891
3-6 months     ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                1.9760831   1.8948819   2.0572842
3-6 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.8266539   1.7572406   1.8960671
3-6 months     ki1000109-EE          PAKISTAN                       NA                   NA                2.0252445   1.9646316   2.0858574
3-6 months     ki1113344-GMS-Nepal   NEPAL                          NA                   NA                1.7053522   1.6641174   1.7465871
3-6 months     kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                1.9187609   1.9082629   1.9292589
6-12 months    ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                1.1145925   1.0894523   1.1397328
6-12 months    ki0047075b-MAL-ED     BRAZIL                         NA                   NA                1.3863464   1.3400121   1.4326807
6-12 months    ki0047075b-MAL-ED     INDIA                          NA                   NA                1.1209771   1.0924290   1.1495253
6-12 months    ki0047075b-MAL-ED     NEPAL                          NA                   NA                1.2232375   1.1973421   1.2491328
6-12 months    ki0047075b-MAL-ED     PERU                           NA                   NA                1.2098360   1.1769906   1.2426814
6-12 months    ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                1.1945255   1.1527026   1.2363484
6-12 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.0005581   0.9627597   1.0383564
6-12 months    ki1113344-GMS-Nepal   NEPAL                          NA                   NA                1.1629820   1.1410485   1.1849155
6-12 months    kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                1.1059670   1.0990549   1.1128791
12-24 months   ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                0.8451111   0.8289738   0.8612484
12-24 months   ki0047075b-MAL-ED     BRAZIL                         NA                   NA                0.9816245   0.9508764   1.0123725
12-24 months   ki0047075b-MAL-ED     INDIA                          NA                   NA                0.8811230   0.8637093   0.8985366
12-24 months   ki0047075b-MAL-ED     NEPAL                          NA                   NA                0.8619667   0.8466720   0.8772613
12-24 months   ki0047075b-MAL-ED     PERU                           NA                   NA                0.8468739   0.8260907   0.8676570
12-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                0.8711135   0.8486025   0.8936245
12-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7650096   0.7411815   0.7888377
12-24 months   ki1113344-GMS-Nepal   NEPAL                          NA                   NA                0.8364607   0.8197402   0.8531812
12-24 months   kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                0.7963475   0.7909428   0.8017521
12-24 months   kiGH5241-JiVitA-4     BANGLADESH                     NA                   NA                0.8491878   0.8267526   0.8716231


### Parameter: ATE


agecat         studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     BANGLADESH                     1                    0                  0.1647531    0.0495921    0.2799141
0-3 months     ki0047075b-MAL-ED     BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     BRAZIL                         1                    0                  0.0296860   -0.1732773    0.2326493
0-3 months     ki0047075b-MAL-ED     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     INDIA                          1                    0                 -0.3226709   -0.4773199   -0.1680218
0-3 months     ki0047075b-MAL-ED     NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     NEPAL                          1                    0                 -0.1475064   -0.3002220    0.0052091
0-3 months     ki0047075b-MAL-ED     PERU                           0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     PERU                           1                    0                  0.1236159   -0.0191968    0.2664287
0-3 months     ki0047075b-MAL-ED     SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     SOUTH AFRICA                   1                    0                 -0.0733822   -0.2543026    0.1075383
0-3 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    0                  0.4560100    0.3238577    0.5881624
0-3 months     ki1000109-EE          PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE          PAKISTAN                       1                    0                  0.2059899   -0.0011651    0.4131449
0-3 months     kiGH5241-JiVitA-3     BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3     BANGLADESH                     1                    0                  0.0678518    0.0447029    0.0910008
0-3 months     kiGH5241-JiVitA-4     BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4     BANGLADESH                     1                    0                  0.1392070   -0.1066878    0.3851017
3-6 months     ki0047075b-MAL-ED     BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     BANGLADESH                     1                    0                 -0.1301641   -0.2634359    0.0031077
3-6 months     ki0047075b-MAL-ED     BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     BRAZIL                         1                    0                 -0.2359655   -0.3534058   -0.1185252
3-6 months     ki0047075b-MAL-ED     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     INDIA                          1                    0                  0.2025219    0.0680767    0.3369671
3-6 months     ki0047075b-MAL-ED     NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     NEPAL                          1                    0                 -0.1807819   -0.2874244   -0.0741395
3-6 months     ki0047075b-MAL-ED     PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     PERU                           1                    0                 -0.1469707   -0.2907267   -0.0032146
3-6 months     ki0047075b-MAL-ED     SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     SOUTH AFRICA                   1                    0                 -0.0602622   -0.2297984    0.1092740
3-6 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.1592931   -0.2801364   -0.0384498
3-6 months     ki1000109-EE          PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE          PAKISTAN                       1                    0                  0.0921302   -0.1707279    0.3549882
3-6 months     ki1113344-GMS-Nepal   NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal   NEPAL                          1                    0                  0.0763947   -0.0300051    0.1827945
3-6 months     kiGH5241-JiVitA-3     BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3     BANGLADESH                     1                    0                 -0.0701081   -0.0944712   -0.0457450
6-12 months    ki0047075b-MAL-ED     BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED     BANGLADESH                     1                    0                 -0.0283962   -0.0845697    0.0277774
6-12 months    ki0047075b-MAL-ED     BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED     BRAZIL                         1                    0                  0.0073830   -0.0464795    0.0612456
6-12 months    ki0047075b-MAL-ED     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED     INDIA                          1                    0                 -0.0641625   -0.1071134   -0.0212116
6-12 months    ki0047075b-MAL-ED     NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED     NEPAL                          1                    0                 -0.0174137   -0.0593061    0.0244788
6-12 months    ki0047075b-MAL-ED     PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED     PERU                           1                    0                  0.0386798   -0.0345802    0.1119399
6-12 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                    0                  0.0933012    0.0248284    0.1617741
6-12 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0576863   -0.0015734    0.1169460
6-12 months    ki1113344-GMS-Nepal   NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal   NEPAL                          1                    0                 -0.0419552   -0.0904657    0.0065553
6-12 months    kiGH5241-JiVitA-3     BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    0                  0.0176662    0.0017285    0.0336040
12-24 months   ki0047075b-MAL-ED     BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    0                 -0.0002061   -0.0344007    0.0339885
12-24 months   ki0047075b-MAL-ED     BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED     BRAZIL                         1                    0                 -0.0226481   -0.0793386    0.0340423
12-24 months   ki0047075b-MAL-ED     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED     INDIA                          1                    0                  0.0656080    0.0310847    0.1001313
12-24 months   ki0047075b-MAL-ED     NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED     NEPAL                          1                    0                 -0.0361765   -0.0639902   -0.0083628
12-24 months   ki0047075b-MAL-ED     PERU                           0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED     PERU                           1                    0                 -0.0208742   -0.0527978    0.0110494
12-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    0                 -0.0280726   -0.0736167    0.0174715
12-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0212328   -0.0625405    0.0200749
12-24 months   ki1113344-GMS-Nepal   NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal   NEPAL                          1                    0                  0.0201406   -0.0117946    0.0520758
12-24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    0                 -0.0252085   -0.0359674   -0.0144497
12-24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    0                  0.0299705   -0.0091837    0.0691248
