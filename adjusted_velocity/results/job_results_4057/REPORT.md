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

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_nrooms
* W_nchldlt5
* W_parity
* impfloor
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_nrooms
* delta_W_nchldlt5
* delta_W_parity
* delta_impfloor
* delta_safeh20

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
![](/tmp/b4b848da-b8ac-4d9d-b7c3-f1a8afe6b280/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/b4b848da-b8ac-4d9d-b7c3-f1a8afe6b280/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH    0                    NA                -0.0565943   -0.1406604    0.0274718
0-3 months     ki0047075b-MAL-ED       BANGLADESH    1                    NA                -0.0379350   -0.0715997   -0.0042704
0-3 months     ki0047075b-MAL-ED       INDIA         0                    NA                 0.0874312    0.0340103    0.1408521
0-3 months     ki0047075b-MAL-ED       INDIA         1                    NA                 0.1080116    0.0556915    0.1603316
0-3 months     ki0047075b-MAL-ED       PERU          0                    NA                -0.1402001   -0.1741633   -0.1062369
0-3 months     ki0047075b-MAL-ED       PERU          1                    NA                -0.0885545   -0.1342321   -0.0428769
0-3 months     ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.1208348   -0.1537006   -0.0879690
0-3 months     ki1017093-NIH-Birth     BANGLADESH    1                    NA                -0.1163746   -0.1622922   -0.0704570
0-3 months     ki1017093b-PROVIDE      BANGLADESH    0                    NA                -0.0344027   -0.0749564    0.0061509
0-3 months     ki1017093b-PROVIDE      BANGLADESH    1                    NA                -0.0407532   -0.0594079   -0.0220984
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                -0.1239712   -0.1557464   -0.0921959
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                -0.1196638   -0.1393892   -0.0999384
0-3 months     ki1135781-COHORTS       GUATEMALA     0                    NA                -0.5158008   -0.5444848   -0.4871169
0-3 months     ki1135781-COHORTS       GUATEMALA     1                    NA                -0.4639148   -0.5099171   -0.4179124
0-3 months     ki1135781-COHORTS       INDIA         0                    NA                -0.0782581   -0.0883143   -0.0682019
0-3 months     ki1135781-COHORTS       INDIA         1                    NA                -0.0535213   -0.0661007   -0.0409418
0-3 months     kiGH5241-JiVitA-3       BANGLADESH    0                    NA                 0.0662645    0.0582998    0.0742292
0-3 months     kiGH5241-JiVitA-3       BANGLADESH    1                    NA                 0.0744062    0.0689507    0.0798617
0-3 months     kiGH5241-JiVitA-4       BANGLADESH    0                    NA                 0.0566353    0.0259016    0.0873690
0-3 months     kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.0738996    0.0569978    0.0908014
3-6 months     ki0047075b-MAL-ED       BANGLADESH    0                    NA                -0.0700737   -0.1202154   -0.0199321
3-6 months     ki0047075b-MAL-ED       BANGLADESH    1                    NA                -0.0132258   -0.0385902    0.0121386
3-6 months     ki0047075b-MAL-ED       INDIA         0                    NA                -0.0849392   -0.1223190   -0.0475595
3-6 months     ki0047075b-MAL-ED       INDIA         1                    NA                -0.0798342   -0.1201871   -0.0394813
3-6 months     ki0047075b-MAL-ED       PERU          0                    NA                 0.0311713   -0.0026781    0.0650206
3-6 months     ki0047075b-MAL-ED       PERU          1                    NA                -0.1576625   -0.2027690   -0.1125559
3-6 months     ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.0530637   -0.0786356   -0.0274918
3-6 months     ki1017093-NIH-Birth     BANGLADESH    1                    NA                -0.0462085   -0.0800784   -0.0123386
3-6 months     ki1017093b-PROVIDE      BANGLADESH    0                    NA                -0.0779650   -0.1038796   -0.0520503
3-6 months     ki1017093b-PROVIDE      BANGLADESH    1                    NA                -0.0260994   -0.0431450   -0.0090539
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                 0.0662145    0.0349811    0.0974479
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                 0.0191180    0.0018833    0.0363528
3-6 months     ki1114097-CONTENT       PERU          0                    NA                 0.0523731   -0.0207024    0.1254485
3-6 months     ki1114097-CONTENT       PERU          1                    NA                 0.0157090   -0.0074611    0.0388792
3-6 months     ki1135781-COHORTS       GUATEMALA     0                    NA                -0.0970926   -0.1157503   -0.0784349
3-6 months     ki1135781-COHORTS       GUATEMALA     1                    NA                -0.0129746   -0.0289923    0.0030432
3-6 months     ki1135781-COHORTS       INDIA         0                    NA                -0.0704812   -0.0783575   -0.0626050
3-6 months     ki1135781-COHORTS       INDIA         1                    NA                -0.0532613   -0.0626761   -0.0438464
3-6 months     kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.0033449   -0.0113122    0.0046224
3-6 months     kiGH5241-JiVitA-3       BANGLADESH    1                    NA                -0.0028755   -0.0084509    0.0026999
3-6 months     kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.0168689   -0.0428584    0.0091206
3-6 months     kiGH5241-JiVitA-4       BANGLADESH    1                    NA                -0.0102268   -0.0257315    0.0052780
6-12 months    ki0047075b-MAL-ED       BANGLADESH    0                    NA                -0.1096716   -0.1252052   -0.0941380
6-12 months    ki0047075b-MAL-ED       BANGLADESH    1                    NA                -0.0803606   -0.0919118   -0.0688093
6-12 months    ki0047075b-MAL-ED       INDIA         0                    NA                -0.0987471   -0.1125010   -0.0849932
6-12 months    ki0047075b-MAL-ED       INDIA         1                    NA                -0.0706477   -0.0855497   -0.0557457
6-12 months    ki0047075b-MAL-ED       PERU          0                    NA                -0.0324003   -0.0487521   -0.0160486
6-12 months    ki0047075b-MAL-ED       PERU          1                    NA                 0.0108585   -0.0077162    0.0294331
6-12 months    ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.0593547   -0.0704009   -0.0483084
6-12 months    ki1017093-NIH-Birth     BANGLADESH    1                    NA                -0.0432177   -0.0594223   -0.0270131
6-12 months    ki1017093b-PROVIDE      BANGLADESH    0                    NA                -0.1039648   -0.1331420   -0.0747876
6-12 months    ki1017093b-PROVIDE      BANGLADESH    1                    NA                -0.0604796   -0.0675676   -0.0533917
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                -0.0443304   -0.0562082   -0.0324525
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                -0.0307497   -0.0387105   -0.0227889
6-12 months    ki1114097-CONTENT       PERU          0                    NA                -0.0181769   -0.0516796    0.0153257
6-12 months    ki1114097-CONTENT       PERU          1                    NA                -0.0219670   -0.0350008   -0.0089332
6-12 months    ki1135781-COHORTS       GUATEMALA     0                    NA                -0.1130523   -0.1218223   -0.1042823
6-12 months    ki1135781-COHORTS       GUATEMALA     1                    NA                -0.1290029   -0.1381557   -0.1198501
6-12 months    ki1135781-COHORTS       INDIA         0                    NA                -0.0997680   -0.1048504   -0.0946857
6-12 months    ki1135781-COHORTS       INDIA         1                    NA                -0.0966708   -0.1023366   -0.0910051
6-12 months    ki1135781-COHORTS       PHILIPPINES   0                    NA                -0.1110331   -0.1193028   -0.1027635
6-12 months    ki1135781-COHORTS       PHILIPPINES   1                    NA                -0.0607697   -0.0763510   -0.0451884
6-12 months    kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.0776187   -0.0818764   -0.0733609
6-12 months    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                -0.0737711   -0.0770085   -0.0705338
6-12 months    kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.0483876   -0.0567475   -0.0400277
6-12 months    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                -0.0364413   -0.0415566   -0.0313259
12-24 months   ki0047075b-MAL-ED       BANGLADESH    0                    NA                -0.0050979   -0.0128761    0.0026803
12-24 months   ki0047075b-MAL-ED       BANGLADESH    1                    NA                -0.0164221   -0.0219095   -0.0109348
12-24 months   ki0047075b-MAL-ED       INDIA         0                    NA                -0.0085447   -0.0148663   -0.0022232
12-24 months   ki0047075b-MAL-ED       INDIA         1                    NA                -0.0054661   -0.0116804    0.0007482
12-24 months   ki0047075b-MAL-ED       PERU          0                    NA                -0.0103519   -0.0183953   -0.0023085
12-24 months   ki0047075b-MAL-ED       PERU          1                    NA                -0.0053675   -0.0198809    0.0091459
12-24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.0465213   -0.0525659   -0.0404767
12-24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                -0.0584095   -0.0656935   -0.0511256
12-24 months   ki1017093b-PROVIDE      BANGLADESH    0                    NA                -0.0176574   -0.0387489    0.0034340
12-24 months   ki1017093b-PROVIDE      BANGLADESH    1                    NA                -0.0078896   -0.0118004   -0.0039788
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                -0.0249684   -0.0300709   -0.0198659
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                -0.0063430   -0.0106956   -0.0019904
12-24 months   ki1135781-COHORTS       GUATEMALA     0                    NA                -0.0306173   -0.0347360   -0.0264986
12-24 months   ki1135781-COHORTS       GUATEMALA     1                    NA                 0.0039139   -0.0001247    0.0079526
12-24 months   ki1135781-COHORTS       INDIA         0                    NA                -0.0404787   -0.0428372   -0.0381203
12-24 months   ki1135781-COHORTS       INDIA         1                    NA                -0.0303475   -0.0330424   -0.0276526
12-24 months   ki1135781-COHORTS       PHILIPPINES   0                    NA                -0.0671270   -0.0714020   -0.0628520
12-24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                -0.0636371   -0.0706804   -0.0565937
12-24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.0202365   -0.0229233   -0.0175498
12-24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                -0.0177207   -0.0197646   -0.0156767
12-24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.0148959   -0.0181343   -0.0116574
12-24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                -0.0141913   -0.0162570   -0.0121256


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


agecat         studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH    0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       BANGLADESH    1                    0                  0.0186593   -0.0717515    0.1090701
0-3 months     ki0047075b-MAL-ED       INDIA         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       INDIA         1                    0                  0.0205804   -0.0587398    0.0999006
0-3 months     ki0047075b-MAL-ED       PERU          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       PERU          1                    0                  0.0516456   -0.0050225    0.1083137
0-3 months     ki1017093-NIH-Birth     BANGLADESH    0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth     BANGLADESH    1                    0                  0.0044602   -0.0518127    0.0607331
0-3 months     ki1017093b-PROVIDE      BANGLADESH    0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE      BANGLADESH    1                    0                 -0.0063505   -0.0506788    0.0379778
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH    0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH    1                    0                  0.0043074   -0.0330912    0.0417060
0-3 months     ki1135781-COHORTS       GUATEMALA     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS       GUATEMALA     1                    0                  0.0518860   -0.0003142    0.1040863
0-3 months     ki1135781-COHORTS       INDIA         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS       INDIA         1                    0                  0.0247368    0.0088612    0.0406124
0-3 months     kiGH5241-JiVitA-3       BANGLADESH    0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3       BANGLADESH    1                    0                  0.0081417   -0.0005757    0.0168591
0-3 months     kiGH5241-JiVitA-4       BANGLADESH    0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4       BANGLADESH    1                    0                  0.0172643   -0.0180348    0.0525634
3-6 months     ki0047075b-MAL-ED       BANGLADESH    0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       BANGLADESH    1                    0                  0.0568479    0.0010541    0.1126418
3-6 months     ki0047075b-MAL-ED       INDIA         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       INDIA         1                    0                  0.0051050   -0.0504879    0.0606980
3-6 months     ki0047075b-MAL-ED       PERU          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       PERU          1                    0                 -0.1888337   -0.2452416   -0.1324259
3-6 months     ki1017093-NIH-Birth     BANGLADESH    0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth     BANGLADESH    1                    0                  0.0068552   -0.0333112    0.0470216
3-6 months     ki1017093b-PROVIDE      BANGLADESH    0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE      BANGLADESH    1                    0                  0.0518656    0.0208773    0.0828538
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH    0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH    1                    0                 -0.0470965   -0.0814906   -0.0127024
3-6 months     ki1114097-CONTENT       PERU          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CONTENT       PERU          1                    0                 -0.0366640   -0.1135749    0.0402468
3-6 months     ki1135781-COHORTS       GUATEMALA     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS       GUATEMALA     1                    0                  0.0841180    0.0622192    0.1060168
3-6 months     ki1135781-COHORTS       INDIA         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS       INDIA         1                    0                  0.0172200    0.0050603    0.0293796
3-6 months     kiGH5241-JiVitA-3       BANGLADESH    0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3       BANGLADESH    1                    0                  0.0004694   -0.0089568    0.0098955
3-6 months     kiGH5241-JiVitA-4       BANGLADESH    0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4       BANGLADESH    1                    0                  0.0066421   -0.0234755    0.0367597
6-12 months    ki0047075b-MAL-ED       BANGLADESH    0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       BANGLADESH    1                    0                  0.0293110    0.0100688    0.0485533
6-12 months    ki0047075b-MAL-ED       INDIA         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       INDIA         1                    0                  0.0280994    0.0102009    0.0459979
6-12 months    ki0047075b-MAL-ED       PERU          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       PERU          1                    0                  0.0432588    0.0184066    0.0681109
6-12 months    ki1017093-NIH-Birth     BANGLADESH    0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth     BANGLADESH    1                    0                  0.0161370   -0.0033948    0.0356688
6-12 months    ki1017093b-PROVIDE      BANGLADESH    0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE      BANGLADESH    1                    0                  0.0434852    0.0134854    0.0734850
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH    0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH    1                    0                  0.0135807   -0.0006791    0.0278405
6-12 months    ki1114097-CONTENT       PERU          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CONTENT       PERU          1                    0                 -0.0037901   -0.0397479    0.0321678
6-12 months    ki1135781-COHORTS       GUATEMALA     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS       GUATEMALA     1                    0                 -0.0159506   -0.0285742   -0.0033271
6-12 months    ki1135781-COHORTS       INDIA         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS       INDIA         1                    0                  0.0030972   -0.0044000    0.0105944
6-12 months    ki1135781-COHORTS       PHILIPPINES   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS       PHILIPPINES   1                    0                  0.0502634    0.0326283    0.0678985
6-12 months    kiGH5241-JiVitA-3       BANGLADESH    0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3       BANGLADESH    1                    0                  0.0038475   -0.0012501    0.0089452
6-12 months    kiGH5241-JiVitA-4       BANGLADESH    0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4       BANGLADESH    1                    0                  0.0119464    0.0018959    0.0219968
12-24 months   ki0047075b-MAL-ED       BANGLADESH    0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       BANGLADESH    1                    0                 -0.0113242   -0.0194009   -0.0032475
12-24 months   ki0047075b-MAL-ED       INDIA         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       INDIA         1                    0                  0.0030786   -0.0047420    0.0108993
12-24 months   ki0047075b-MAL-ED       PERU          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       PERU          1                    0                  0.0049844   -0.0115841    0.0215530
12-24 months   ki1017093-NIH-Birth     BANGLADESH    0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093-NIH-Birth     BANGLADESH    1                    0                 -0.0118882   -0.0215669   -0.0022096
12-24 months   ki1017093b-PROVIDE      BANGLADESH    0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE      BANGLADESH    1                    0                  0.0097678   -0.0116819    0.0312175
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    0                  0.0186254    0.0119252    0.0253256
12-24 months   ki1135781-COHORTS       GUATEMALA     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS       GUATEMALA     1                    0                  0.0345312    0.0290472    0.0400152
12-24 months   ki1135781-COHORTS       INDIA         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS       INDIA         1                    0                  0.0101312    0.0066080    0.0136545
12-24 months   ki1135781-COHORTS       PHILIPPINES   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS       PHILIPPINES   1                    0                  0.0034899   -0.0045313    0.0115112
12-24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    0                  0.0025159   -0.0006572    0.0056889
12-24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    0                  0.0007046   -0.0029396    0.0043487
