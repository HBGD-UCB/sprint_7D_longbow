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

**Intervention Variable:** predfeed6

**Adjustment Set:**

unadjusted

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
![](/tmp/f71f8c33-72d9-441e-a3cb-e5d4af0d46a2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/f71f8c33-72d9-441e-a3cb-e5d4af0d46a2/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH   0                    NA                3.5486159   3.4583033   3.6389286
0-3 months     ki0047075b-MAL-ED     BANGLADESH   1                    NA                3.5616501   3.4729604   3.6503398
0-3 months     ki0047075b-MAL-ED     BRAZIL       0                    NA                4.0478427   3.9361684   4.1595169
0-3 months     ki0047075b-MAL-ED     BRAZIL       1                    NA                4.1842288   3.9325809   4.4358766
0-3 months     ki0047075b-MAL-ED     INDIA        0                    NA                3.5738245   3.4925243   3.6551246
0-3 months     ki0047075b-MAL-ED     INDIA        1                    NA                3.5624008   3.3271436   3.7976581
0-3 months     ki0047075b-MAL-ED     NEPAL        0                    NA                3.8359664   3.7507357   3.9211971
0-3 months     ki0047075b-MAL-ED     NEPAL        1                    NA                3.6938626   3.5473218   3.8404035
0-3 months     ki0047075b-MAL-ED     PERU         0                    NA                3.3030980   3.2194181   3.3867778
0-3 months     ki0047075b-MAL-ED     PERU         1                    NA                3.3717477   3.2771598   3.4663356
0-3 months     ki1000109-EE          PAKISTAN     0                    NA                2.6873656   2.5712919   2.8034393
0-3 months     ki1000109-EE          PAKISTAN     1                    NA                2.6343660   2.5164888   2.7522433
0-3 months     kiGH5241-JiVitA-3     BANGLADESH   0                    NA                3.6660172   3.6454716   3.6865627
0-3 months     kiGH5241-JiVitA-3     BANGLADESH   1                    NA                3.7330057   3.7217202   3.7442912
0-3 months     kiGH5241-JiVitA-4     BANGLADESH   0                    NA                3.5201919   3.4352389   3.6051449
0-3 months     kiGH5241-JiVitA-4     BANGLADESH   1                    NA                3.6616461   3.6285286   3.6947636
3-6 months     ki0047075b-MAL-ED     BANGLADESH   0                    NA                1.9617396   1.8900932   2.0333859
3-6 months     ki0047075b-MAL-ED     BANGLADESH   1                    NA                1.9091421   1.8398451   1.9784392
3-6 months     ki0047075b-MAL-ED     BRAZIL       0                    NA                2.1647058   2.0784176   2.2509941
3-6 months     ki0047075b-MAL-ED     BRAZIL       1                    NA                2.0643296   1.8678954   2.2607638
3-6 months     ki0047075b-MAL-ED     INDIA        0                    NA                1.8886636   1.8227391   1.9545881
3-6 months     ki0047075b-MAL-ED     INDIA        1                    NA                1.8292377   1.6653601   1.9931152
3-6 months     ki0047075b-MAL-ED     NEPAL        0                    NA                1.9751011   1.9149170   2.0352853
3-6 months     ki0047075b-MAL-ED     NEPAL        1                    NA                1.9086018   1.7518709   2.0653327
3-6 months     ki0047075b-MAL-ED     PERU         0                    NA                2.0110077   1.9247047   2.0973107
3-6 months     ki0047075b-MAL-ED     PERU         1                    NA                2.0342187   1.9326186   2.1358188
3-6 months     ki1000109-EE          PAKISTAN     0                    NA                2.0488775   1.9477119   2.1500432
3-6 months     ki1000109-EE          PAKISTAN     1                    NA                2.0061968   1.9321154   2.0802783
3-6 months     ki1113344-GMS-Nepal   NEPAL        0                    NA                1.6532466   1.5763967   1.7300966
3-6 months     ki1113344-GMS-Nepal   NEPAL        1                    NA                1.7241137   1.6784916   1.7697358
3-6 months     kiGH5241-JiVitA-3     BANGLADESH   0                    NA                1.9676017   1.9449187   1.9902847
3-6 months     kiGH5241-JiVitA-3     BANGLADESH   1                    NA                1.9072371   1.8958156   1.9186585
3-6 months     kiGH5241-JiVitA-4     BANGLADESH   0                    NA                1.9602485   1.8849639   2.0355331
3-6 months     kiGH5241-JiVitA-4     BANGLADESH   1                    NA                1.8843296   1.8513594   1.9172998
6-12 months    ki0047075b-MAL-ED     BANGLADESH   0                    NA                1.1290419   1.0911299   1.1669539
6-12 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                1.0986966   1.0648160   1.1325772
6-12 months    ki0047075b-MAL-ED     BRAZIL       0                    NA                1.3840529   1.3348618   1.4332440
6-12 months    ki0047075b-MAL-ED     BRAZIL       1                    NA                1.3975359   1.2687654   1.5263065
6-12 months    ki0047075b-MAL-ED     INDIA        0                    NA                1.1206680   1.0906806   1.1506554
6-12 months    ki0047075b-MAL-ED     INDIA        1                    NA                1.1308845   1.0275468   1.2342221
6-12 months    ki0047075b-MAL-ED     NEPAL        0                    NA                1.2301848   1.2031396   1.2572300
6-12 months    ki0047075b-MAL-ED     NEPAL        1                    NA                1.1728832   1.0912162   1.2545503
6-12 months    ki0047075b-MAL-ED     PERU         0                    NA                1.2123065   1.1656887   1.2589242
6-12 months    ki0047075b-MAL-ED     PERU         1                    NA                1.2025628   1.1576524   1.2474732
6-12 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                1.1742718   1.1338503   1.2146932
6-12 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                1.1631189   1.1406876   1.1855502
6-12 months    ki1148112-LCNI-5      MALAWI       0                    NA                1.1850352   1.0606518   1.3094187
6-12 months    ki1148112-LCNI-5      MALAWI       1                    NA                1.3658051   1.2577692   1.4738411
6-12 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                1.1167923   1.1023320   1.1312526
6-12 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                1.1040320   1.0966585   1.1114054
6-12 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                1.2068697   1.1815296   1.2322099
6-12 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                1.2007972   1.1881466   1.2134478
12-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.8501160   0.8267171   0.8735149
12-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.8418855   0.8197364   0.8640347
12-24 months   ki0047075b-MAL-ED     BRAZIL       0                    NA                0.9930220   0.9593832   1.0266608
12-24 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                0.9281741   0.8556645   1.0006838
12-24 months   ki0047075b-MAL-ED     INDIA        0                    NA                0.8851639   0.8668487   0.9034791
12-24 months   ki0047075b-MAL-ED     INDIA        1                    NA                0.8211981   0.7700568   0.8723395
12-24 months   ki0047075b-MAL-ED     NEPAL        0                    NA                0.8606795   0.8438673   0.8774918
12-24 months   ki0047075b-MAL-ED     NEPAL        1                    NA                0.8641306   0.8291974   0.8990638
12-24 months   ki0047075b-MAL-ED     PERU         0                    NA                0.8483564   0.8200204   0.8766924
12-24 months   ki0047075b-MAL-ED     PERU         1                    NA                0.8518272   0.8234288   0.8802256
12-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.8332675   0.8007698   0.8657651
12-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.8373310   0.8195603   0.8551018
12-24 months   ki1148112-LCNI-5      MALAWI       0                    NA                0.9052456   0.8493606   0.9611306
12-24 months   ki1148112-LCNI-5      MALAWI       1                    NA                0.8330056   0.7639315   0.9020797
12-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.8075967   0.7962702   0.8189233
12-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.7929484   0.7872193   0.7986776
12-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.8615346   0.8497795   0.8732896
12-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.8456038   0.8391329   0.8520746


### Parameter: E(Y)


agecat         studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH   NA                   NA                3.5553847   3.4920868   3.6186827
0-3 months     ki0047075b-MAL-ED     BRAZIL       NA                   NA                4.0688851   3.9665094   4.1712608
0-3 months     ki0047075b-MAL-ED     INDIA        NA                   NA                3.5729366   3.4957568   3.6501164
0-3 months     ki0047075b-MAL-ED     NEPAL        NA                   NA                3.8170740   3.7403102   3.8938378
0-3 months     ki0047075b-MAL-ED     PERU         NA                   NA                3.3318351   3.2689715   3.3946986
0-3 months     ki1000109-EE          PAKISTAN     NA                   NA                2.6575645   2.5739973   2.7411317
0-3 months     kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                3.7185042   3.7081620   3.7288464
0-3 months     kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                3.6386843   3.6074983   3.6698703
3-6 months     ki0047075b-MAL-ED     BANGLADESH   NA                   NA                1.9343889   1.8844588   1.9843190
3-6 months     ki0047075b-MAL-ED     BRAZIL       NA                   NA                2.1478156   2.0686357   2.2269955
3-6 months     ki0047075b-MAL-ED     INDIA        NA                   NA                1.8839095   1.8218223   1.9459968
3-6 months     ki0047075b-MAL-ED     NEPAL        NA                   NA                1.9673620   1.9110737   2.0236503
3-6 months     ki0047075b-MAL-ED     PERU         NA                   NA                2.0207669   1.9549762   2.0865576
3-6 months     ki1000109-EE          PAKISTAN     NA                   NA                2.0241201   1.9636505   2.0845898
3-6 months     ki1113344-GMS-Nepal   NEPAL        NA                   NA                1.7048001   1.6654509   1.7441494
3-6 months     kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                1.9200510   1.9095836   1.9305183
3-6 months     kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                1.8963650   1.8662030   1.9265270
6-12 months    ki0047075b-MAL-ED     BANGLADESH   NA                   NA                1.1131603   1.0877615   1.1385590
6-12 months    ki0047075b-MAL-ED     BRAZIL       NA                   NA                1.3863464   1.3400121   1.4326807
6-12 months    ki0047075b-MAL-ED     INDIA        NA                   NA                1.1214539   1.0926522   1.1502556
6-12 months    ki0047075b-MAL-ED     NEPAL        NA                   NA                1.2234287   1.1975908   1.2492667
6-12 months    ki0047075b-MAL-ED     PERU         NA                   NA                1.2081188   1.1752622   1.2409753
6-12 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                1.1659725   1.1463312   1.1856138
6-12 months    ki1148112-LCNI-5      MALAWI       NA                   NA                1.2437855   1.1489803   1.3385906
6-12 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                1.1067177   1.0999609   1.1134745
6-12 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                1.2020599   1.1906612   1.2134585
12-24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.8457372   0.8296411   0.8618334
12-24 months   ki0047075b-MAL-ED     BRAZIL       NA                   NA                0.9816245   0.9508764   1.0123725
12-24 months   ki0047075b-MAL-ED     INDIA        NA                   NA                0.8802656   0.8627612   0.8977700
12-24 months   ki0047075b-MAL-ED     NEPAL        NA                   NA                0.8610937   0.8457157   0.8764716
12-24 months   ki0047075b-MAL-ED     PERU         NA                   NA                0.8498071   0.8294861   0.8701282
12-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.8363408   0.8207398   0.8519417
12-24 months   ki1148112-LCNI-5      MALAWI       NA                   NA                0.8835736   0.8376943   0.9294529
12-24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.7961667   0.7908693   0.8014641
12-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.8490267   0.8432029   0.8548505


### Parameter: ATE


agecat         studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     BANGLADESH   1                    0                  0.0130341   -0.1135448    0.1396131
0-3 months     ki0047075b-MAL-ED     BRAZIL       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     BRAZIL       1                    0                  0.1363861   -0.1389279    0.4117001
0-3 months     ki0047075b-MAL-ED     INDIA        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     INDIA        1                    0                 -0.0114236   -0.2603326    0.2374853
0-3 months     ki0047075b-MAL-ED     NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     NEPAL        1                    0                 -0.1421038   -0.3116281    0.0274205
0-3 months     ki0047075b-MAL-ED     PERU         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     PERU         1                    0                  0.0686497   -0.0576404    0.1949398
0-3 months     ki1000109-EE          PAKISTAN     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE          PAKISTAN     1                    0                 -0.0529996   -0.2184328    0.1124337
0-3 months     kiGH5241-JiVitA-3     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3     BANGLADESH   1                    0                  0.0669885    0.0447410    0.0892361
0-3 months     kiGH5241-JiVitA-4     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4     BANGLADESH   1                    0                  0.1414542    0.0503892    0.2325193
3-6 months     ki0047075b-MAL-ED     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     BANGLADESH   1                    0                 -0.0525974   -0.1522733    0.0470785
3-6 months     ki0047075b-MAL-ED     BRAZIL       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     BRAZIL       1                    0                 -0.1003763   -0.3149271    0.1141746
3-6 months     ki0047075b-MAL-ED     INDIA        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     INDIA        1                    0                 -0.0594259   -0.2360665    0.1172146
3-6 months     ki0047075b-MAL-ED     NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     NEPAL        1                    0                 -0.0664993   -0.2343883    0.1013897
3-6 months     ki0047075b-MAL-ED     PERU         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     PERU         1                    0                  0.0232109   -0.1100962    0.1565181
3-6 months     ki1000109-EE          PAKISTAN     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE          PAKISTAN     1                    0                 -0.0426807   -0.1680703    0.0827089
3-6 months     ki1113344-GMS-Nepal   NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal   NEPAL        1                    0                  0.0708670   -0.0185046    0.1602387
3-6 months     kiGH5241-JiVitA-3     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3     BANGLADESH   1                    0                 -0.0603646   -0.0851624   -0.0355668
3-6 months     kiGH5241-JiVitA-4     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4     BANGLADESH   1                    0                 -0.0759189   -0.1583398    0.0065020
6-12 months    ki0047075b-MAL-ED     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED     BANGLADESH   1                    0                 -0.0303453   -0.0811903    0.0204998
6-12 months    ki0047075b-MAL-ED     BRAZIL       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED     BRAZIL       1                    0                  0.0134830   -0.1243634    0.1513293
6-12 months    ki0047075b-MAL-ED     INDIA        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED     INDIA        1                    0                  0.0102165   -0.0973843    0.1178172
6-12 months    ki0047075b-MAL-ED     NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED     NEPAL        1                    0                 -0.0573016   -0.1433304    0.0287272
6-12 months    ki0047075b-MAL-ED     PERU         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED     PERU         1                    0                 -0.0097437   -0.0744751    0.0549877
6-12 months    ki1113344-GMS-Nepal   NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal   NEPAL        1                    0                 -0.0111529   -0.0573811    0.0350754
6-12 months    ki1148112-LCNI-5      MALAWI       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5      MALAWI       1                    0                  0.1807699    0.0160186    0.3455212
6-12 months    kiGH5241-JiVitA-3     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3     BANGLADESH   1                    0                 -0.0127603   -0.0285625    0.0030419
6-12 months    kiGH5241-JiVitA-4     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4     BANGLADESH   1                    0                 -0.0060725   -0.0342140    0.0220690
12-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    0                 -0.0082305   -0.0404499    0.0239890
12-24 months   ki0047075b-MAL-ED     BRAZIL       0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED     BRAZIL       1                    0                 -0.0648478   -0.1447804    0.0150848
12-24 months   ki0047075b-MAL-ED     INDIA        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED     INDIA        1                    0                 -0.0639658   -0.1182878   -0.0096437
12-24 months   ki0047075b-MAL-ED     NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED     NEPAL        1                    0                  0.0034510   -0.0353172    0.0422193
12-24 months   ki0047075b-MAL-ED     PERU         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED     PERU         1                    0                  0.0034708   -0.0366465    0.0435881
12-24 months   ki1113344-GMS-Nepal   NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal   NEPAL        1                    0                  0.0040636   -0.0329756    0.0411027
12-24 months   ki1148112-LCNI-5      MALAWI       0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5      MALAWI       1                    0                 -0.0722400   -0.1610902    0.0166103
12-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    0                 -0.0146483   -0.0269410   -0.0023556
12-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    0                 -0.0159308   -0.0289442   -0.0029174
