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
![](/tmp/9be437eb-7a8c-4bb4-99f6-f2e890272862/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/9be437eb-7a8c-4bb4-99f6-f2e890272862/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH   0                    NA                3.5173801   3.4352712   3.5994890
0-3 months     ki0047075b-MAL-ED     BANGLADESH   1                    NA                3.5429967   3.4609115   3.6250819
0-3 months     ki0047075b-MAL-ED     BRAZIL       0                    NA                4.0474880   3.9359327   4.1590434
0-3 months     ki0047075b-MAL-ED     BRAZIL       1                    NA                4.1862059   3.9359412   4.4364707
0-3 months     ki0047075b-MAL-ED     INDIA        0                    NA                3.5742994   3.4934292   3.6551696
0-3 months     ki0047075b-MAL-ED     INDIA        1                    NA                3.6018150   3.3967739   3.8068560
0-3 months     ki0047075b-MAL-ED     NEPAL        0                    NA                3.8344867   3.7497321   3.9192412
0-3 months     ki0047075b-MAL-ED     NEPAL        1                    NA                3.7034143   3.5556502   3.8511783
0-3 months     ki0047075b-MAL-ED     PERU         0                    NA                3.3891377   3.3108306   3.4674448
0-3 months     ki0047075b-MAL-ED     PERU         1                    NA                3.5459677   3.4626806   3.6292548
0-3 months     ki1000109-EE          PAKISTAN     0                    NA                2.7751612   2.6771654   2.8731571
0-3 months     ki1000109-EE          PAKISTAN     1                    NA                2.6820101   2.5789142   2.7851060
0-3 months     kiGH5241-JiVitA-3     BANGLADESH   0                    NA                3.6558643   3.6390988   3.6726299
0-3 months     kiGH5241-JiVitA-3     BANGLADESH   1                    NA                3.7420532   3.7310860   3.7530205
0-3 months     kiGH5241-JiVitA-4     BANGLADESH   0                    NA                3.5219622   3.4505670   3.5933574
0-3 months     kiGH5241-JiVitA-4     BANGLADESH   1                    NA                3.6635308   3.6307894   3.6962722
3-6 months     ki0047075b-MAL-ED     BANGLADESH   0                    NA                1.7870640   1.7297711   1.8443570
3-6 months     ki0047075b-MAL-ED     BANGLADESH   1                    NA                1.7691220   1.7131311   1.8251129
3-6 months     ki0047075b-MAL-ED     BRAZIL       0                    NA                2.1646904   2.0784049   2.2509759
3-6 months     ki0047075b-MAL-ED     BRAZIL       1                    NA                2.0644055   1.8680040   2.2608070
3-6 months     ki0047075b-MAL-ED     INDIA        0                    NA                1.8886636   1.8227391   1.9545881
3-6 months     ki0047075b-MAL-ED     INDIA        1                    NA                1.8292377   1.6653601   1.9931152
3-6 months     ki0047075b-MAL-ED     NEPAL        0                    NA                1.9740592   1.9139709   2.0341475
3-6 months     ki0047075b-MAL-ED     NEPAL        1                    NA                1.9165320   1.7625721   2.0704919
3-6 months     ki0047075b-MAL-ED     PERU         0                    NA                1.9439198   1.8668595   2.0209801
3-6 months     ki0047075b-MAL-ED     PERU         1                    NA                1.9120301   1.8299997   1.9940606
3-6 months     ki1000109-EE          PAKISTAN     0                    NA                2.2819006   2.2017372   2.3620640
3-6 months     ki1000109-EE          PAKISTAN     1                    NA                2.1141116   2.0496273   2.1785960
3-6 months     ki1113344-GMS-Nepal   NEPAL        0                    NA                1.6147236   1.5403624   1.6890848
3-6 months     ki1113344-GMS-Nepal   NEPAL        1                    NA                1.7193994   1.6743029   1.7644959
3-6 months     kiGH5241-JiVitA-3     BANGLADESH   0                    NA                1.9290431   1.9108763   1.9472099
3-6 months     kiGH5241-JiVitA-3     BANGLADESH   1                    NA                1.9080588   1.8969035   1.9192141
3-6 months     kiGH5241-JiVitA-4     BANGLADESH   0                    NA                1.9551951   1.8939237   2.0164664
3-6 months     kiGH5241-JiVitA-4     BANGLADESH   1                    NA                1.8856825   1.8533917   1.9179733
6-12 months    ki0047075b-MAL-ED     BANGLADESH   0                    NA                1.1200690   1.0875884   1.1525496
6-12 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                1.0966746   1.0667530   1.1265962
6-12 months    ki0047075b-MAL-ED     BRAZIL       0                    NA                1.3839743   1.3348400   1.4331087
6-12 months    ki0047075b-MAL-ED     BRAZIL       1                    NA                1.3979175   1.2708078   1.5250272
6-12 months    ki0047075b-MAL-ED     INDIA        0                    NA                1.1206414   1.0906653   1.1506175
6-12 months    ki0047075b-MAL-ED     INDIA        1                    NA                1.1310767   1.0284433   1.2337100
6-12 months    ki0047075b-MAL-ED     NEPAL        0                    NA                1.2295157   1.2028728   1.2561586
6-12 months    ki0047075b-MAL-ED     NEPAL        1                    NA                1.1779917   1.1068264   1.2491569
6-12 months    ki0047075b-MAL-ED     PERU         0                    NA                1.0859449   1.0399136   1.1319761
6-12 months    ki0047075b-MAL-ED     PERU         1                    NA                0.9937315   0.9492474   1.0382157
6-12 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                1.2142421   1.1798952   1.2485890
6-12 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                1.1669573   1.1449794   1.1889351
6-12 months    ki1148112-LCNI-5      MALAWI       0                    NA                1.1280693   1.0041832   1.2519554
6-12 months    ki1148112-LCNI-5      MALAWI       1                    NA                1.1747204   1.0670414   1.2823994
6-12 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                1.1141109   1.1019970   1.1262249
6-12 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                1.1045591   1.0973556   1.1117625
6-12 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                1.1904096   1.1701931   1.2106260
6-12 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                1.2006589   1.1883718   1.2129459
12-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.8214244   0.7993641   0.8434848
12-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.8187689   0.7982787   0.8392591
12-24 months   ki0047075b-MAL-ED     BRAZIL       0                    NA                0.9933254   0.9603310   1.0263197
12-24 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                0.9277146   0.8625531   0.9928760
12-24 months   ki0047075b-MAL-ED     INDIA        0                    NA                0.8852575   0.8669853   0.9035297
12-24 months   ki0047075b-MAL-ED     INDIA        1                    NA                0.8200841   0.7677023   0.8724659
12-24 months   ki0047075b-MAL-ED     NEPAL        0                    NA                0.8607716   0.8439821   0.8775611
12-24 months   ki0047075b-MAL-ED     NEPAL        1                    NA                0.8634553   0.8299674   0.8969432
12-24 months   ki0047075b-MAL-ED     PERU         0                    NA                0.7812585   0.7530667   0.8094503
12-24 months   ki0047075b-MAL-ED     PERU         1                    NA                0.7279257   0.7003892   0.7554621
12-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.8329469   0.8010451   0.8648488
12-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.8370320   0.8194126   0.8546514
12-24 months   ki1148112-LCNI-5      MALAWI       0                    NA                0.9052456   0.8493606   0.9611306
12-24 months   ki1148112-LCNI-5      MALAWI       1                    NA                0.8330056   0.7639315   0.9020797
12-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.8061739   0.7966926   0.8156553
12-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.7926546   0.7870647   0.7982445
12-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.8678439   0.8586452   0.8770426
12-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.8456975   0.8394362   0.8519588


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
0-3 months     ki0047075b-MAL-ED     BANGLADESH   1                    0                  0.0256166   -0.0860011    0.1372343
0-3 months     ki0047075b-MAL-ED     BRAZIL       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     BRAZIL       1                    0                  0.1387179   -0.1347862    0.4122220
0-3 months     ki0047075b-MAL-ED     INDIA        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     INDIA        1                    0                  0.0275156   -0.1916179    0.2466491
0-3 months     ki0047075b-MAL-ED     NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     NEPAL        1                    0                 -0.1310724   -0.3000291    0.0378843
0-3 months     ki0047075b-MAL-ED     PERU         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     PERU         1                    0                  0.1568300    0.0404905    0.2731695
0-3 months     ki1000109-EE          PAKISTAN     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE          PAKISTAN     1                    0                 -0.0931512   -0.2356454    0.0493431
0-3 months     kiGH5241-JiVitA-3     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3     BANGLADESH   1                    0                  0.0861889    0.0680734    0.1043044
0-3 months     kiGH5241-JiVitA-4     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4     BANGLADESH   1                    0                  0.1415686    0.0632005    0.2199367
3-6 months     ki0047075b-MAL-ED     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     BANGLADESH   1                    0                 -0.0179420   -0.0941781    0.0582940
3-6 months     ki0047075b-MAL-ED     BRAZIL       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     BRAZIL       1                    0                 -0.1002849   -0.3147932    0.1142233
3-6 months     ki0047075b-MAL-ED     INDIA        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     INDIA        1                    0                 -0.0594259   -0.2360665    0.1172146
3-6 months     ki0047075b-MAL-ED     NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     NEPAL        1                    0                 -0.0575272   -0.2221828    0.1071284
3-6 months     ki0047075b-MAL-ED     PERU         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     PERU         1                    0                 -0.0318897   -0.1420012    0.0782219
3-6 months     ki1000109-EE          PAKISTAN     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE          PAKISTAN     1                    0                 -0.1677889   -0.2677565   -0.0678214
3-6 months     ki1113344-GMS-Nepal   NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal   NEPAL        1                    0                  0.1046758    0.0182730    0.1910786
3-6 months     kiGH5241-JiVitA-3     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3     BANGLADESH   1                    0                 -0.0209843   -0.0411065   -0.0008622
3-6 months     kiGH5241-JiVitA-4     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4     BANGLADESH   1                    0                 -0.0695126   -0.1359531   -0.0030720
6-12 months    ki0047075b-MAL-ED     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED     BANGLADESH   1                    0                 -0.0233944   -0.0658411    0.0190524
6-12 months    ki0047075b-MAL-ED     BRAZIL       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED     BRAZIL       1                    0                  0.0139431   -0.1219125    0.1497988
6-12 months    ki0047075b-MAL-ED     INDIA        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED     INDIA        1                    0                  0.0104353   -0.0964303    0.1173009
6-12 months    ki0047075b-MAL-ED     NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED     NEPAL        1                    0                 -0.0515240   -0.1257892    0.0227411
6-12 months    ki0047075b-MAL-ED     PERU         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED     PERU         1                    0                 -0.0922133   -0.1623563   -0.0220704
6-12 months    ki1113344-GMS-Nepal   NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal   NEPAL        1                    0                 -0.0472848   -0.0879583   -0.0066113
6-12 months    ki1148112-LCNI-5      MALAWI       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5      MALAWI       1                    0                  0.0466511   -0.1276532    0.2209554
6-12 months    kiGH5241-JiVitA-3     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3     BANGLADESH   1                    0                 -0.0095518   -0.0229022    0.0037985
6-12 months    kiGH5241-JiVitA-4     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4     BANGLADESH   1                    0                  0.0102493   -0.0123372    0.0328358
12-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    0                 -0.0026555   -0.0324085    0.0270975
12-24 months   ki0047075b-MAL-ED     BRAZIL       0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED     BRAZIL       1                    0                 -0.0656108   -0.1377399    0.0065183
12-24 months   ki0047075b-MAL-ED     INDIA        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED     INDIA        1                    0                 -0.0651734   -0.1205729   -0.0097739
12-24 months   ki0047075b-MAL-ED     NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED     NEPAL        1                    0                  0.0026837   -0.0345214    0.0398887
12-24 months   ki0047075b-MAL-ED     PERU         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED     PERU         1                    0                 -0.0533328   -0.0969282   -0.0097375
12-24 months   ki1113344-GMS-Nepal   NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal   NEPAL        1                    0                  0.0040851   -0.0320523    0.0402224
12-24 months   ki1148112-LCNI-5      MALAWI       0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5      MALAWI       1                    0                 -0.0722400   -0.1610902    0.0166103
12-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    0                 -0.0135193   -0.0239253   -0.0031133
12-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    0                 -0.0221464   -0.0326417   -0.0116512
