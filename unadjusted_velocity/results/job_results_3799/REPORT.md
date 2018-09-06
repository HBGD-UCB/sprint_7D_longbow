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

**Intervention Variable:** impsan

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                 country                        impsan    n_cell       n
-------------  ----------------------  -----------------------------  -------  -------  ------
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     0             38     237
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     1            199     237
0-3 months     ki0047075b-MAL-ED       BRAZIL                         0              4     174
0-3 months     ki0047075b-MAL-ED       BRAZIL                         1            170     174
0-3 months     ki0047075b-MAL-ED       INDIA                          0            101     193
0-3 months     ki0047075b-MAL-ED       INDIA                          1             92     193
0-3 months     ki0047075b-MAL-ED       NEPAL                          0              1     174
0-3 months     ki0047075b-MAL-ED       NEPAL                          1            173     174
0-3 months     ki0047075b-MAL-ED       PERU                           0            190     252
0-3 months     ki0047075b-MAL-ED       PERU                           1             62     252
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0            209     211
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   1              2     211
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            217     217
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     217
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     0            348     566
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     1            218     566
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     0             29     634
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     1            605     634
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     0             84     709
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     1            625     709
0-3 months     ki1114097-CONTENT       PERU                           0              4      29
0-3 months     ki1114097-CONTENT       PERU                           1             25      29
0-3 months     ki1135781-COHORTS       GUATEMALA                      0            403     445
0-3 months     ki1135781-COHORTS       GUATEMALA                      1             42     445
0-3 months     ki1135781-COHORTS       INDIA                          0           2928    4660
0-3 months     ki1135781-COHORTS       INDIA                          1           1732    4660
0-3 months     kiGH5241-JiVitA-3       BANGLADESH                     0          12644   40056
0-3 months     kiGH5241-JiVitA-3       BANGLADESH                     1          27412   40056
0-3 months     kiGH5241-JiVitA-4       BANGLADESH                     0            814    3610
0-3 months     kiGH5241-JiVitA-4       BANGLADESH                     1           2796    3610
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     0             38     231
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     1            193     231
3-6 months     ki0047075b-MAL-ED       BRAZIL                         0              4     208
3-6 months     ki0047075b-MAL-ED       BRAZIL                         1            204     208
3-6 months     ki0047075b-MAL-ED       INDIA                          0            123     228
3-6 months     ki0047075b-MAL-ED       INDIA                          1            105     228
3-6 months     ki0047075b-MAL-ED       NEPAL                          0              1     233
3-6 months     ki0047075b-MAL-ED       NEPAL                          1            232     233
3-6 months     ki0047075b-MAL-ED       PERU                           0            197     260
3-6 months     ki0047075b-MAL-ED       PERU                           1             63     260
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0            231     235
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   1              4     235
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            231     231
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     231
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     0            325     523
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     1            198     523
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     0             26     572
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     1            546     572
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     0             83     684
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     1            601     684
3-6 months     ki1114097-CONTENT       PERU                           0             14     214
3-6 months     ki1114097-CONTENT       PERU                           1            200     214
3-6 months     ki1135781-COHORTS       GUATEMALA                      0            493     551
3-6 months     ki1135781-COHORTS       GUATEMALA                      1             58     551
3-6 months     ki1135781-COHORTS       INDIA                          0           2949    4719
3-6 months     ki1135781-COHORTS       INDIA                          1           1770    4719
3-6 months     kiGH5241-JiVitA-3       BANGLADESH                     0           7154   25140
3-6 months     kiGH5241-JiVitA-3       BANGLADESH                     1          17986   25140
3-6 months     kiGH5241-JiVitA-4       BANGLADESH                     0            816    3678
3-6 months     kiGH5241-JiVitA-4       BANGLADESH                     1           2862    3678
6-12 months    ki0047075b-MAL-ED       BANGLADESH                     0             35     220
6-12 months    ki0047075b-MAL-ED       BANGLADESH                     1            185     220
6-12 months    ki0047075b-MAL-ED       BRAZIL                         0              4     194
6-12 months    ki0047075b-MAL-ED       BRAZIL                         1            190     194
6-12 months    ki0047075b-MAL-ED       INDIA                          0            121     223
6-12 months    ki0047075b-MAL-ED       INDIA                          1            102     223
6-12 months    ki0047075b-MAL-ED       NEPAL                          0              1     230
6-12 months    ki0047075b-MAL-ED       NEPAL                          1            229     230
6-12 months    ki0047075b-MAL-ED       PERU                           0            177     230
6-12 months    ki0047075b-MAL-ED       PERU                           1             53     230
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0            224     228
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1              4     228
6-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            217     217
6-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     217
6-12 months    ki1017093-NIH-Birth     BANGLADESH                     0            295     482
6-12 months    ki1017093-NIH-Birth     BANGLADESH                     1            187     482
6-12 months    ki1017093b-PROVIDE      BANGLADESH                     0             24     544
6-12 months    ki1017093b-PROVIDE      BANGLADESH                     1            520     544
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     0             88     665
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     1            577     665
6-12 months    ki1114097-CONTENT       PERU                           0             14     213
6-12 months    ki1114097-CONTENT       PERU                           1            199     213
6-12 months    ki1135781-COHORTS       GUATEMALA                      0            566     632
6-12 months    ki1135781-COHORTS       GUATEMALA                      1             66     632
6-12 months    ki1135781-COHORTS       INDIA                          0           2322    3821
6-12 months    ki1135781-COHORTS       INDIA                          1           1499    3821
6-12 months    ki1135781-COHORTS       PHILIPPINES                    0            854     975
6-12 months    ki1135781-COHORTS       PHILIPPINES                    1            121     975
6-12 months    ki1148112-LCNI-5        MALAWI                         0            425     428
6-12 months    ki1148112-LCNI-5        MALAWI                         1              3     428
6-12 months    kiGH5241-JiVitA-3       BANGLADESH                     0           5650   19649
6-12 months    kiGH5241-JiVitA-3       BANGLADESH                     1          13999   19649
6-12 months    kiGH5241-JiVitA-4       BANGLADESH                     0           1366    6222
6-12 months    kiGH5241-JiVitA-4       BANGLADESH                     1           4856    6222
12-24 months   ki0047075b-MAL-ED       BANGLADESH                     0             30     206
12-24 months   ki0047075b-MAL-ED       BANGLADESH                     1            176     206
12-24 months   ki0047075b-MAL-ED       BRAZIL                         0              3     165
12-24 months   ki0047075b-MAL-ED       BRAZIL                         1            162     165
12-24 months   ki0047075b-MAL-ED       INDIA                          0            120     223
12-24 months   ki0047075b-MAL-ED       INDIA                          1            103     223
12-24 months   ki0047075b-MAL-ED       NEPAL                          0              1     226
12-24 months   ki0047075b-MAL-ED       NEPAL                          1            225     226
12-24 months   ki0047075b-MAL-ED       PERU                           0            141     186
12-24 months   ki0047075b-MAL-ED       PERU                           1             45     186
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0            223     227
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1              4     227
12-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            200     200
12-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     200
12-24 months   ki1017093-NIH-Birth     BANGLADESH                     0            255     421
12-24 months   ki1017093-NIH-Birth     BANGLADESH                     1            166     421
12-24 months   ki1017093b-PROVIDE      BANGLADESH                     0             15     457
12-24 months   ki1017093b-PROVIDE      BANGLADESH                     1            442     457
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0             70     484
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1            414     484
12-24 months   ki1114097-CONTENT       PERU                           0              2      38
12-24 months   ki1114097-CONTENT       PERU                           1             36      38
12-24 months   ki1135781-COHORTS       GUATEMALA                      0            666     738
12-24 months   ki1135781-COHORTS       GUATEMALA                      1             72     738
12-24 months   ki1135781-COHORTS       INDIA                          0           1917    3172
12-24 months   ki1135781-COHORTS       INDIA                          1           1255    3172
12-24 months   ki1135781-COHORTS       PHILIPPINES                    0            810     922
12-24 months   ki1135781-COHORTS       PHILIPPINES                    1            112     922
12-24 months   ki1148112-LCNI-5        MALAWI                         0            304     306
12-24 months   ki1148112-LCNI-5        MALAWI                         1              2     306
12-24 months   kiGH5241-JiVitA-3       BANGLADESH                     0           2707    9283
12-24 months   kiGH5241-JiVitA-3       BANGLADESH                     1           6576    9283
12-24 months   kiGH5241-JiVitA-4       BANGLADESH                     0           1576    7125
12-24 months   kiGH5241-JiVitA-4       BANGLADESH                     1           5549    7125


The following strata were considered:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-3 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-3 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 12-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 12-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
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
* agecat: 3-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 3-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-12 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-12 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-12 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-12 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-12 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-12 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/d39d54d9-84b9-49e0-9e54-0aab46a81f50/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/d39d54d9-84b9-49e0-9e54-0aab46a81f50/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH    0                    NA                 0.0046643   -0.0876843    0.0970129
0-3 months     ki0047075b-MAL-ED       BANGLADESH    1                    NA                -0.0353669   -0.0691862   -0.0015477
0-3 months     ki0047075b-MAL-ED       INDIA         0                    NA                -0.0277024   -0.0823421    0.0269372
0-3 months     ki0047075b-MAL-ED       INDIA         1                    NA                -0.0296843   -0.0832070    0.0238385
0-3 months     ki0047075b-MAL-ED       PERU          0                    NA                -0.1460483   -0.1823824   -0.1097142
0-3 months     ki0047075b-MAL-ED       PERU          1                    NA                -0.1509719   -0.2240073   -0.0779366
0-3 months     ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.1202054   -0.1531684   -0.0872424
0-3 months     ki1017093-NIH-Birth     BANGLADESH    1                    NA                -0.1173783   -0.1635024   -0.0712541
0-3 months     ki1017093b-PROVIDE      BANGLADESH    0                    NA                -0.0630714   -0.1381746    0.0120318
0-3 months     ki1017093b-PROVIDE      BANGLADESH    1                    NA                -0.0402714   -0.0589456   -0.0215972
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                -0.1286356   -0.1739533   -0.0833178
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                -0.1196297   -0.1395085   -0.0997510
0-3 months     ki1135781-COHORTS       GUATEMALA     0                    NA                -0.5165997   -0.5458142   -0.4873853
0-3 months     ki1135781-COHORTS       GUATEMALA     1                    NA                -0.5446682   -0.6375998   -0.4517366
0-3 months     ki1135781-COHORTS       INDIA         0                    NA                -0.0820427   -0.0925055   -0.0715798
0-3 months     ki1135781-COHORTS       INDIA         1                    NA                -0.0484212   -0.0617537   -0.0350888
0-3 months     kiGH5241-JiVitA-3       BANGLADESH    0                    NA                 0.0554173    0.0471426    0.0636919
0-3 months     kiGH5241-JiVitA-3       BANGLADESH    1                    NA                 0.0775056    0.0720121    0.0829992
0-3 months     kiGH5241-JiVitA-4       BANGLADESH    0                    NA                 0.0481490    0.0149225    0.0813754
0-3 months     kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.0732407    0.0563678    0.0901135
3-6 months     ki0047075b-MAL-ED       BANGLADESH    0                    NA                -0.0705036   -0.1225505   -0.0184567
3-6 months     ki0047075b-MAL-ED       BANGLADESH    1                    NA                -0.0130737   -0.0385628    0.0124154
3-6 months     ki0047075b-MAL-ED       INDIA         0                    NA                -0.0498856   -0.0881372   -0.0116341
3-6 months     ki0047075b-MAL-ED       INDIA         1                    NA                -0.0337684   -0.0752917    0.0077549
3-6 months     ki0047075b-MAL-ED       PERU          0                    NA                 0.0445323    0.0089468    0.0801179
3-6 months     ki0047075b-MAL-ED       PERU          1                    NA                -0.0215090   -0.0835820    0.0405640
3-6 months     ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.0545640   -0.0816565   -0.0274714
3-6 months     ki1017093-NIH-Birth     BANGLADESH    1                    NA                -0.0448877   -0.0827259   -0.0070496
3-6 months     ki1017093b-PROVIDE      BANGLADESH    0                    NA                -0.0492258   -0.1013838    0.0029321
3-6 months     ki1017093b-PROVIDE      BANGLADESH    1                    NA                -0.0258183   -0.0428750   -0.0087615
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                 0.0689090    0.0196429    0.1181751
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                 0.0191622    0.0015470    0.0367773
3-6 months     ki1114097-CONTENT       PERU          0                    NA                -0.0163506   -0.1069275    0.0742262
3-6 months     ki1114097-CONTENT       PERU          1                    NA                 0.0147937   -0.0084011    0.0379886
3-6 months     ki1135781-COHORTS       GUATEMALA     0                    NA                -0.0991294   -0.1184209   -0.0798380
3-6 months     ki1135781-COHORTS       GUATEMALA     1                    NA                -0.0834351   -0.1281638   -0.0387064
3-6 months     ki1135781-COHORTS       INDIA         0                    NA                -0.0721335   -0.0803110   -0.0639561
3-6 months     ki1135781-COHORTS       INDIA         1                    NA                -0.0480776   -0.0585274   -0.0376277
3-6 months     kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.0079069   -0.0167507    0.0009369
3-6 months     kiGH5241-JiVitA-3       BANGLADESH    1                    NA                -0.0016481   -0.0072205    0.0039244
3-6 months     kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.0100629   -0.0391643    0.0190384
3-6 months     kiGH5241-JiVitA-4       BANGLADESH    1                    NA                -0.0085003   -0.0240692    0.0070686
6-12 months    ki0047075b-MAL-ED       BANGLADESH    0                    NA                -0.0853107   -0.1063948   -0.0642266
6-12 months    ki0047075b-MAL-ED       BANGLADESH    1                    NA                -0.0798745   -0.0915338   -0.0682152
6-12 months    ki0047075b-MAL-ED       INDIA         0                    NA                -0.0900757   -0.1061618   -0.0739897
6-12 months    ki0047075b-MAL-ED       INDIA         1                    NA                -0.0625273   -0.0808620   -0.0441926
6-12 months    ki0047075b-MAL-ED       PERU          0                    NA                -0.0373909   -0.0542763   -0.0205056
6-12 months    ki0047075b-MAL-ED       PERU          1                    NA                -0.0413468   -0.0666513   -0.0160423
6-12 months    ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.0599766   -0.0710714   -0.0488818
6-12 months    ki1017093-NIH-Birth     BANGLADESH    1                    NA                -0.0422456   -0.0585232   -0.0259680
6-12 months    ki1017093b-PROVIDE      BANGLADESH    0                    NA                -0.1039607   -0.1336010   -0.0743204
6-12 months    ki1017093b-PROVIDE      BANGLADESH    1                    NA                -0.0604799   -0.0675688   -0.0533909
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                -0.0338022   -0.0510101   -0.0165942
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                -0.0304361   -0.0384631   -0.0224090
6-12 months    ki1114097-CONTENT       PERU          0                    NA                -0.0331395   -0.0746973    0.0084184
6-12 months    ki1114097-CONTENT       PERU          1                    NA                -0.0219855   -0.0350190   -0.0089519
6-12 months    ki1135781-COHORTS       GUATEMALA     0                    NA                -0.1122145   -0.1211620   -0.1032670
6-12 months    ki1135781-COHORTS       GUATEMALA     1                    NA                -0.0884209   -0.1104219   -0.0664199
6-12 months    ki1135781-COHORTS       INDIA         0                    NA                -0.0999142   -0.1052811   -0.0945474
6-12 months    ki1135781-COHORTS       INDIA         1                    NA                -0.0905874   -0.0966340   -0.0845408
6-12 months    ki1135781-COHORTS       PHILIPPINES   0                    NA                -0.1114584   -0.1198567   -0.1030601
6-12 months    ki1135781-COHORTS       PHILIPPINES   1                    NA                -0.0709755   -0.0944305   -0.0475206
6-12 months    kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.0812871   -0.0862571   -0.0763172
6-12 months    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                -0.0722631   -0.0755396   -0.0689867
6-12 months    kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.0472782   -0.0560477   -0.0385088
6-12 months    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                -0.0358785   -0.0410188   -0.0307381
12-24 months   ki0047075b-MAL-ED       BANGLADESH    0                    NA                -0.0226191   -0.0378762   -0.0073620
12-24 months   ki0047075b-MAL-ED       BANGLADESH    1                    NA                -0.0170359   -0.0227874   -0.0112845
12-24 months   ki0047075b-MAL-ED       INDIA         0                    NA                -0.0109315   -0.0180451   -0.0038179
12-24 months   ki0047075b-MAL-ED       INDIA         1                    NA                -0.0080794   -0.0153092   -0.0008496
12-24 months   ki0047075b-MAL-ED       PERU          0                    NA                -0.0103697   -0.0184237   -0.0023158
12-24 months   ki0047075b-MAL-ED       PERU          1                    NA                -0.0053118   -0.0198560    0.0092324
12-24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.0394301   -0.0455211   -0.0333390
12-24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                -0.0419606   -0.0491835   -0.0347376
12-24 months   ki1017093b-PROVIDE      BANGLADESH    0                    NA                -0.0180876   -0.0391636    0.0029884
12-24 months   ki1017093b-PROVIDE      BANGLADESH    1                    NA                -0.0078537   -0.0117654   -0.0039421
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                -0.0056147   -0.0151274    0.0038980
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                -0.0057565   -0.0102036   -0.0013095
12-24 months   ki1135781-COHORTS       GUATEMALA     0                    NA                -0.0313244   -0.0355640   -0.0270848
12-24 months   ki1135781-COHORTS       GUATEMALA     1                    NA                -0.0226104   -0.0340927   -0.0111281
12-24 months   ki1135781-COHORTS       INDIA         0                    NA                -0.0408670   -0.0433834   -0.0383507
12-24 months   ki1135781-COHORTS       INDIA         1                    NA                -0.0281838   -0.0311190   -0.0252486
12-24 months   ki1135781-COHORTS       PHILIPPINES   0                    NA                -0.0672603   -0.0716134   -0.0629072
12-24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                -0.0551098   -0.0664911   -0.0437284
12-24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.0214325   -0.0247531   -0.0181118
12-24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                -0.0177387   -0.0198521   -0.0156252
12-24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.0164225   -0.0199737   -0.0128713
12-24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                -0.0140806   -0.0161636   -0.0119976


### Parameter: E(Y)


agecat         studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH    NA                   NA                -0.0289484   -0.0610285    0.0031317
0-3 months     ki0047075b-MAL-ED       INDIA         NA                   NA                -0.0286471   -0.0669690    0.0096747
0-3 months     ki0047075b-MAL-ED       PERU          NA                   NA                -0.1472597   -0.1800229   -0.1144965
0-3 months     ki1017093-NIH-Birth     BANGLADESH    NA                   NA                -0.1191165   -0.1460676   -0.0921654
0-3 months     ki1017093b-PROVIDE      BANGLADESH    NA                   NA                -0.0413143   -0.0594662   -0.0231624
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH    NA                   NA                -0.1206967   -0.1390256   -0.1023678
0-3 months     ki1135781-COHORTS       GUATEMALA     NA                   NA                -0.5192489   -0.5471325   -0.4913653
0-3 months     ki1135781-COHORTS       INDIA         NA                   NA                -0.0695465   -0.0777922   -0.0613008
0-3 months     kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                 0.0705333    0.0655816    0.0754850
0-3 months     kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                 0.0675829    0.0526455    0.0825202
3-6 months     ki0047075b-MAL-ED       BANGLADESH    NA                   NA                -0.0225211   -0.0456381    0.0005960
3-6 months     ki0047075b-MAL-ED       INDIA         NA                   NA                -0.0424632   -0.0706163   -0.0143101
3-6 months     ki0047075b-MAL-ED       PERU          NA                   NA                 0.0285300   -0.0025360    0.0595960
3-6 months     ki1017093-NIH-Birth     BANGLADESH    NA                   NA                -0.0509007   -0.0730097   -0.0287917
3-6 months     ki1017093b-PROVIDE      BANGLADESH    NA                   NA                -0.0268823   -0.0433403   -0.0104242
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH    NA                   NA                 0.0251987    0.0085620    0.0418354
3-6 months     ki1114097-CONTENT       PERU          NA                   NA                 0.0127563   -0.0097402    0.0352528
3-6 months     ki1135781-COHORTS       GUATEMALA     NA                   NA                -0.0974774   -0.1153733   -0.0795815
3-6 months     ki1135781-COHORTS       INDIA         NA                   NA                -0.0631107   -0.0695595   -0.0566618
3-6 months     kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                -0.0034291   -0.0082978    0.0014395
3-6 months     kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                -0.0088470   -0.0225757    0.0048816
6-12 months    ki0047075b-MAL-ED       BANGLADESH    NA                   NA                -0.0807393   -0.0911050   -0.0703737
6-12 months    ki0047075b-MAL-ED       INDIA         NA                   NA                -0.0774751   -0.0897132   -0.0652370
6-12 months    ki0047075b-MAL-ED       PERU          NA                   NA                -0.0383025   -0.0525468   -0.0240581
6-12 months    ki1017093-NIH-Birth     BANGLADESH    NA                   NA                -0.0530976   -0.0624028   -0.0437924
6-12 months    ki1017093b-PROVIDE      BANGLADESH    NA                   NA                -0.0623982   -0.0693401   -0.0554562
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH    NA                   NA                -0.0308815   -0.0382096   -0.0235534
6-12 months    ki1114097-CONTENT       PERU          NA                   NA                -0.0227186   -0.0352036   -0.0102335
6-12 months    ki1135781-COHORTS       GUATEMALA     NA                   NA                -0.1097297   -0.1180850   -0.1013744
6-12 months    ki1135781-COHORTS       INDIA         NA                   NA                -0.0962553   -0.1002907   -0.0922198
6-12 months    ki1135781-COHORTS       PHILIPPINES   NA                   NA                -0.1064344   -0.1143897   -0.0984791
6-12 months    kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                -0.0748580   -0.0777005   -0.0720154
6-12 months    kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                -0.0383812   -0.0427453   -0.0340172
12-24 months   ki0047075b-MAL-ED       BANGLADESH    NA                   NA                -0.0178490   -0.0232486   -0.0124494
12-24 months   ki0047075b-MAL-ED       INDIA         NA                   NA                -0.0096142   -0.0146974   -0.0045309
12-24 months   ki0047075b-MAL-ED       PERU          NA                   NA                -0.0091460   -0.0161998   -0.0020923
12-24 months   ki1017093-NIH-Birth     BANGLADESH    NA                   NA                -0.0404278   -0.0450901   -0.0357656
12-24 months   ki1017093b-PROVIDE      BANGLADESH    NA                   NA                -0.0081896   -0.0120393   -0.0043400
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH    NA                   NA                -0.0057360   -0.0097810   -0.0016910
12-24 months   ki1135781-COHORTS       GUATEMALA     NA                   NA                -0.0304742   -0.0344652   -0.0264833
12-24 months   ki1135781-COHORTS       INDIA         NA                   NA                -0.0358489   -0.0377745   -0.0339233
12-24 months   ki1135781-COHORTS       PHILIPPINES   NA                   NA                -0.0657843   -0.0698589   -0.0617097
12-24 months   kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                -0.0188158   -0.0206625   -0.0169692
12-24 months   kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                -0.0145986   -0.0164791   -0.0127182


### Parameter: ATE


agecat         studyid                 country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH    0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     ki0047075b-MAL-ED       BANGLADESH    1                    0                 -0.0400312   -0.1383776   0.0583151
0-3 months     ki0047075b-MAL-ED       INDIA         0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     ki0047075b-MAL-ED       INDIA         1                    0                 -0.0019819   -0.0784683   0.0745046
0-3 months     ki0047075b-MAL-ED       PERU          0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     ki0047075b-MAL-ED       PERU          1                    0                 -0.0049237   -0.0864977   0.0766504
0-3 months     ki1017093-NIH-Birth     BANGLADESH    0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     ki1017093-NIH-Birth     BANGLADESH    1                    0                  0.0028271   -0.0538650   0.0595192
0-3 months     ki1017093b-PROVIDE      BANGLADESH    0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     ki1017093b-PROVIDE      BANGLADESH    1                    0                  0.0228000   -0.0545900   0.1001901
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH    0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH    1                    0                  0.0090059   -0.0404801   0.0584918
0-3 months     ki1135781-COHORTS       GUATEMALA     0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     ki1135781-COHORTS       GUATEMALA     1                    0                 -0.0280685   -0.1254839   0.0693470
0-3 months     ki1135781-COHORTS       INDIA         0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     ki1135781-COHORTS       INDIA         1                    0                  0.0336214    0.0166737   0.0505692
0-3 months     kiGH5241-JiVitA-3       BANGLADESH    0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     kiGH5241-JiVitA-3       BANGLADESH    1                    0                  0.0220883    0.0129581   0.0312186
0-3 months     kiGH5241-JiVitA-4       BANGLADESH    0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     kiGH5241-JiVitA-4       BANGLADESH    1                    0                  0.0250917   -0.0125268   0.0627102
3-6 months     ki0047075b-MAL-ED       BANGLADESH    0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     ki0047075b-MAL-ED       BANGLADESH    1                    0                  0.0574299   -0.0005233   0.1153831
3-6 months     ki0047075b-MAL-ED       INDIA         0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     ki0047075b-MAL-ED       INDIA         1                    0                  0.0161172   -0.0403395   0.0725740
3-6 months     ki0047075b-MAL-ED       PERU          0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     ki0047075b-MAL-ED       PERU          1                    0                 -0.0660413   -0.1375912   0.0055086
3-6 months     ki1017093-NIH-Birth     BANGLADESH    0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     ki1017093-NIH-Birth     BANGLADESH    1                    0                  0.0096762   -0.0368612   0.0562137
3-6 months     ki1017093b-PROVIDE      BANGLADESH    0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     ki1017093b-PROVIDE      BANGLADESH    1                    0                  0.0234076   -0.0314685   0.0782837
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH    0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH    1                    0                 -0.0497469   -0.1020675   0.0025738
3-6 months     ki1114097-CONTENT       PERU          0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     ki1114097-CONTENT       PERU          1                    0                  0.0311444   -0.0623552   0.1246439
3-6 months     ki1135781-COHORTS       GUATEMALA     0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     ki1135781-COHORTS       GUATEMALA     1                    0                  0.0156943   -0.0330173   0.0644059
3-6 months     ki1135781-COHORTS       INDIA         0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     ki1135781-COHORTS       INDIA         1                    0                  0.0240560    0.0107868   0.0373251
3-6 months     kiGH5241-JiVitA-3       BANGLADESH    0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     kiGH5241-JiVitA-3       BANGLADESH    1                    0                  0.0062588   -0.0038460   0.0163637
3-6 months     kiGH5241-JiVitA-4       BANGLADESH    0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     kiGH5241-JiVitA-4       BANGLADESH    1                    0                  0.0015626   -0.0314374   0.0345626
6-12 months    ki0047075b-MAL-ED       BANGLADESH    0                    0                  0.0000000    0.0000000   0.0000000
6-12 months    ki0047075b-MAL-ED       BANGLADESH    1                    0                  0.0054362   -0.0186569   0.0295293
6-12 months    ki0047075b-MAL-ED       INDIA         0                    0                  0.0000000    0.0000000   0.0000000
6-12 months    ki0047075b-MAL-ED       INDIA         1                    0                  0.0275484    0.0031574   0.0519394
6-12 months    ki0047075b-MAL-ED       PERU          0                    0                  0.0000000    0.0000000   0.0000000
6-12 months    ki0047075b-MAL-ED       PERU          1                    0                 -0.0039559   -0.0343769   0.0264650
6-12 months    ki1017093-NIH-Birth     BANGLADESH    0                    0                  0.0000000    0.0000000   0.0000000
6-12 months    ki1017093-NIH-Birth     BANGLADESH    1                    0                  0.0177310   -0.0019681   0.0374302
6-12 months    ki1017093b-PROVIDE      BANGLADESH    0                    0                  0.0000000    0.0000000   0.0000000
6-12 months    ki1017093b-PROVIDE      BANGLADESH    1                    0                  0.0434808    0.0130045   0.0739571
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH    0                    0                  0.0000000    0.0000000   0.0000000
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH    1                    0                  0.0033661   -0.0156219   0.0223541
6-12 months    ki1114097-CONTENT       PERU          0                    0                  0.0000000    0.0000000   0.0000000
6-12 months    ki1114097-CONTENT       PERU          1                    0                  0.0111540   -0.0323997   0.0547078
6-12 months    ki1135781-COHORTS       GUATEMALA     0                    0                  0.0000000    0.0000000   0.0000000
6-12 months    ki1135781-COHORTS       GUATEMALA     1                    0                  0.0237936    0.0000427   0.0475444
6-12 months    ki1135781-COHORTS       INDIA         0                    0                  0.0000000    0.0000000   0.0000000
6-12 months    ki1135781-COHORTS       INDIA         1                    0                  0.0093268    0.0012420   0.0174117
6-12 months    ki1135781-COHORTS       PHILIPPINES   0                    0                  0.0000000    0.0000000   0.0000000
6-12 months    ki1135781-COHORTS       PHILIPPINES   1                    0                  0.0404829    0.0155697   0.0653960
6-12 months    kiGH5241-JiVitA-3       BANGLADESH    0                    0                  0.0000000    0.0000000   0.0000000
6-12 months    kiGH5241-JiVitA-3       BANGLADESH    1                    0                  0.0090240    0.0032863   0.0147616
6-12 months    kiGH5241-JiVitA-4       BANGLADESH    0                    0                  0.0000000    0.0000000   0.0000000
6-12 months    kiGH5241-JiVitA-4       BANGLADESH    1                    0                  0.0113998    0.0009950   0.0218046
12-24 months   ki0047075b-MAL-ED       BANGLADESH    0                    0                  0.0000000    0.0000000   0.0000000
12-24 months   ki0047075b-MAL-ED       BANGLADESH    1                    0                  0.0055831   -0.0107220   0.0218883
12-24 months   ki0047075b-MAL-ED       INDIA         0                    0                  0.0000000    0.0000000   0.0000000
12-24 months   ki0047075b-MAL-ED       INDIA         1                    0                  0.0028521   -0.0072906   0.0129948
12-24 months   ki0047075b-MAL-ED       PERU          0                    0                  0.0000000    0.0000000   0.0000000
12-24 months   ki0047075b-MAL-ED       PERU          1                    0                  0.0050580   -0.0115673   0.0216833
12-24 months   ki1017093-NIH-Birth     BANGLADESH    0                    0                  0.0000000    0.0000000   0.0000000
12-24 months   ki1017093-NIH-Birth     BANGLADESH    1                    0                 -0.0025305   -0.0119789   0.0069179
12-24 months   ki1017093b-PROVIDE      BANGLADESH    0                    0                  0.0000000    0.0000000   0.0000000
12-24 months   ki1017093b-PROVIDE      BANGLADESH    1                    0                  0.0102339   -0.0112021   0.0316698
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    0                  0.0000000    0.0000000   0.0000000
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    0                 -0.0001418   -0.0106427   0.0103590
12-24 months   ki1135781-COHORTS       GUATEMALA     0                    0                  0.0000000    0.0000000   0.0000000
12-24 months   ki1135781-COHORTS       GUATEMALA     1                    0                  0.0087140   -0.0035260   0.0209540
12-24 months   ki1135781-COHORTS       INDIA         0                    0                  0.0000000    0.0000000   0.0000000
12-24 months   ki1135781-COHORTS       INDIA         1                    0                  0.0126833    0.0088170   0.0165495
12-24 months   ki1135781-COHORTS       PHILIPPINES   0                    0                  0.0000000    0.0000000   0.0000000
12-24 months   ki1135781-COHORTS       PHILIPPINES   1                    0                  0.0121505   -0.0000349   0.0243359
12-24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    0                  0.0000000    0.0000000   0.0000000
12-24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    0                  0.0036938   -0.0001043   0.0074919
12-24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    0                  0.0000000    0.0000000   0.0000000
12-24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    0                  0.0023419   -0.0015745   0.0062583
