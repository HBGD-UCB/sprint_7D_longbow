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
![](/tmp/3b057501-9b97-435f-96ec-695d377308c6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/3b057501-9b97-435f-96ec-695d377308c6/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH    0                    NA                3.6146776   3.4329889   3.7963662
0-3 months     ki0047075b-MAL-ED       BANGLADESH    1                    NA                3.5633488   3.4968095   3.6298881
0-3 months     ki0047075b-MAL-ED       INDIA         0                    NA                3.5686613   3.4598261   3.6774965
0-3 months     ki0047075b-MAL-ED       INDIA         1                    NA                3.5581551   3.4500301   3.6662801
0-3 months     ki0047075b-MAL-ED       PERU          0                    NA                3.3303252   3.2595055   3.4011449
0-3 months     ki0047075b-MAL-ED       PERU          1                    NA                3.3524765   3.2091310   3.4958219
0-3 months     ki1017093-NIH-Birth     BANGLADESH    0                    NA                3.2990840   3.2324405   3.3657275
0-3 months     ki1017093-NIH-Birth     BANGLADESH    1                    NA                3.3350210   3.2406401   3.4294019
0-3 months     ki1017093b-PROVIDE      BANGLADESH    0                    NA                3.4135306   3.2658982   3.5611630
0-3 months     ki1017093b-PROVIDE      BANGLADESH    1                    NA                3.4859847   3.4455565   3.5264130
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                3.2550506   3.1543877   3.3557135
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                3.3134525   3.2720014   3.3549036
0-3 months     ki1135781-COHORTS       GUATEMALA     0                    NA                2.6498928   2.5918960   2.7078896
0-3 months     ki1135781-COHORTS       GUATEMALA     1                    NA                2.6189067   2.4395843   2.7982291
0-3 months     ki1135781-COHORTS       INDIA         0                    NA                3.5001136   3.4787205   3.5215066
0-3 months     ki1135781-COHORTS       INDIA         1                    NA                3.5875823   3.5603464   3.6148181
0-3 months     kiGH5241-JiVitA-3       BANGLADESH    0                    NA                3.6863250   3.6697528   3.7028972
0-3 months     kiGH5241-JiVitA-3       BANGLADESH    1                    NA                3.7332320   3.7215925   3.7448714
0-3 months     kiGH5241-JiVitA-4       BANGLADESH    0                    NA                3.6122761   3.5458499   3.6787023
0-3 months     kiGH5241-JiVitA-4       BANGLADESH    1                    NA                3.6462866   3.6107893   3.6817838
3-6 months     ki0047075b-MAL-ED       BANGLADESH    0                    NA                1.8165982   1.7021017   1.9310947
3-6 months     ki0047075b-MAL-ED       BANGLADESH    1                    NA                1.9499893   1.8960058   2.0039728
3-6 months     ki0047075b-MAL-ED       INDIA         0                    NA                1.8643717   1.7815779   1.9471654
3-6 months     ki0047075b-MAL-ED       INDIA         1                    NA                1.8953711   1.8060981   1.9846440
3-6 months     ki0047075b-MAL-ED       PERU          0                    NA                2.0521496   1.9764783   2.1278209
3-6 months     ki0047075b-MAL-ED       PERU          1                    NA                1.9206171   1.7899784   2.0512559
3-6 months     ki1017093-NIH-Birth     BANGLADESH    0                    NA                1.8189448   1.7602643   1.8776254
3-6 months     ki1017093-NIH-Birth     BANGLADESH    1                    NA                1.8552555   1.7728284   1.9376825
3-6 months     ki1017093b-PROVIDE      BANGLADESH    0                    NA                1.8974301   1.7793713   2.0154889
3-6 months     ki1017093b-PROVIDE      BANGLADESH    1                    NA                1.9694929   1.9331893   2.0057965
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                2.0882905   1.9837467   2.1928344
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                1.9909411   1.9526659   2.0292164
3-6 months     ki1114097-CONTENT       PERU          0                    NA                1.9969515   1.8006964   2.1932065
3-6 months     ki1114097-CONTENT       PERU          1                    NA                2.0902904   2.0409885   2.1395922
3-6 months     ki1135781-COHORTS       GUATEMALA     0                    NA                1.7490522   1.7086996   1.7894049
3-6 months     ki1135781-COHORTS       GUATEMALA     1                    NA                1.7971907   1.7032865   1.8910950
3-6 months     ki1135781-COHORTS       INDIA         0                    NA                1.8311816   1.8134779   1.8488852
3-6 months     ki1135781-COHORTS       INDIA         1                    NA                1.9005768   1.8778511   1.9233024
3-6 months     kiGH5241-JiVitA-3       BANGLADESH    0                    NA                1.9059773   1.8866417   1.9253129
3-6 months     kiGH5241-JiVitA-3       BANGLADESH    1                    NA                1.9258639   1.9139644   1.9377634
3-6 months     kiGH5241-JiVitA-4       BANGLADESH    0                    NA                1.8940420   1.8313824   1.9567015
3-6 months     kiGH5241-JiVitA-4       BANGLADESH    1                    NA                1.9001009   1.8660802   1.9341217
6-12 months    ki0047075b-MAL-ED       BANGLADESH    0                    NA                1.1031410   1.0513111   1.1549708
6-12 months    ki0047075b-MAL-ED       BANGLADESH    1                    NA                1.1165215   1.0887402   1.1443028
6-12 months    ki0047075b-MAL-ED       INDIA         0                    NA                1.0904031   1.0526510   1.1281552
6-12 months    ki0047075b-MAL-ED       INDIA         1                    NA                1.1582540   1.1159127   1.2005953
6-12 months    ki0047075b-MAL-ED       PERU          0                    NA                1.2100428   1.1704520   1.2496336
6-12 months    ki0047075b-MAL-ED       PERU          1                    NA                1.2020103   1.1446720   1.2593485
6-12 months    ki1017093-NIH-Birth     BANGLADESH    0                    NA                1.1464664   1.1195713   1.1733615
6-12 months    ki1017093-NIH-Birth     BANGLADESH    1                    NA                1.2018011   1.1629803   1.2406218
6-12 months    ki1017093b-PROVIDE      BANGLADESH    0                    NA                1.0571325   0.9792890   1.1349759
6-12 months    ki1017093b-PROVIDE      BANGLADESH    1                    NA                1.1790957   1.1614856   1.1967058
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                1.2255602   1.1848066   1.2663138
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                1.2302321   1.2109868   1.2494774
6-12 months    ki1114097-CONTENT       PERU          0                    NA                1.2638166   1.1609602   1.3666729
6-12 months    ki1114097-CONTENT       PERU          1                    NA                1.3036712   1.2734068   1.3339357
6-12 months    ki1135781-COHORTS       GUATEMALA     0                    NA                1.0074384   0.9858118   1.0290650
6-12 months    ki1135781-COHORTS       GUATEMALA     1                    NA                1.0733504   1.0198740   1.1268269
6-12 months    ki1135781-COHORTS       INDIA         0                    NA                1.0658196   1.0530629   1.0785763
6-12 months    ki1135781-COHORTS       INDIA         1                    NA                1.1103147   1.0957239   1.1249055
6-12 months    ki1135781-COHORTS       PHILIPPINES   0                    NA                1.0345038   1.0144444   1.0545632
6-12 months    ki1135781-COHORTS       PHILIPPINES   1                    NA                1.1579247   1.1031013   1.2127480
6-12 months    kiGH5241-JiVitA-3       BANGLADESH    0                    NA                1.0842042   1.0725440   1.0958644
6-12 months    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                1.1160766   1.1083023   1.1238509
6-12 months    kiGH5241-JiVitA-4       BANGLADESH    0                    NA                1.1756324   1.1550072   1.1962576
6-12 months    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                1.2108985   1.1988022   1.2229948
12-24 months   ki0047075b-MAL-ED       BANGLADESH    0                    NA                0.8471345   0.7964712   0.8977978
12-24 months   ki0047075b-MAL-ED       BANGLADESH    1                    NA                0.8457790   0.8291553   0.8624026
12-24 months   ki0047075b-MAL-ED       INDIA         0                    NA                0.8720521   0.8481181   0.8959860
12-24 months   ki0047075b-MAL-ED       INDIA         1                    NA                0.8926387   0.8683416   0.9169357
12-24 months   ki0047075b-MAL-ED       PERU          0                    NA                0.8440705   0.8199502   0.8681908
12-24 months   ki0047075b-MAL-ED       PERU          1                    NA                0.8558003   0.8145588   0.8970418
12-24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.7490974   0.7301356   0.7680591
12-24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.7546868   0.7318287   0.7775448
12-24 months   ki1017093b-PROVIDE      BANGLADESH    0                    NA                0.8007761   0.7284136   0.8731387
12-24 months   ki1017093b-PROVIDE      BANGLADESH    1                    NA                0.8594662   0.8473243   0.8716081
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                0.8683312   0.8415568   0.8951057
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                0.8770097   0.8638153   0.8902041
12-24 months   ki1135781-COHORTS       GUATEMALA     0                    NA                0.7746739   0.7621718   0.7871761
12-24 months   ki1135781-COHORTS       GUATEMALA     1                    NA                0.8160474   0.7818235   0.8502713
12-24 months   ki1135781-COHORTS       INDIA         0                    NA                0.7923050   0.7847604   0.7998497
12-24 months   ki1135781-COHORTS       INDIA         1                    NA                0.8605119   0.8515774   0.8694464
12-24 months   ki1135781-COHORTS       PHILIPPINES   0                    NA                0.6688535   0.6563882   0.6813187
12-24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                0.7379931   0.7060659   0.7699204
12-24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.7771110   0.7676490   0.7865730
12-24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.8046069   0.7985716   0.8106422
12-24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.8331790   0.8232068   0.8431512
12-24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.8538302   0.8477820   0.8598783


### Parameter: E(Y)


agecat         studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH    NA                   NA                3.5715787   3.5085237   3.6346338
0-3 months     ki0047075b-MAL-ED       INDIA         NA                   NA                3.5636532   3.4868354   3.6404709
0-3 months     ki0047075b-MAL-ED       PERU          NA                   NA                3.3357751   3.2717728   3.3997775
0-3 months     ki1017093-NIH-Birth     BANGLADESH    NA                   NA                3.3129255   3.2581305   3.3677204
0-3 months     ki1017093b-PROVIDE      BANGLADESH    NA                   NA                3.4826706   3.4434873   3.5218539
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH    NA                   NA                3.3065332   3.2680709   3.3449955
0-3 months     ki1135781-COHORTS       GUATEMALA     NA                   NA                2.6469683   2.5917793   2.7021572
0-3 months     ki1135781-COHORTS       INDIA         NA                   NA                3.5326234   3.5157525   3.5494943
0-3 months     kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                3.7184254   3.7080855   3.7287653
0-3 months     kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                3.6386177   3.6075243   3.6697112
3-6 months     ki0047075b-MAL-ED       BANGLADESH    NA                   NA                1.9280462   1.8787523   1.9773401
3-6 months     ki0047075b-MAL-ED       INDIA         NA                   NA                1.8786477   1.8179085   1.9393869
3-6 months     ki0047075b-MAL-ED       PERU          NA                   NA                2.0202782   1.9544261   2.0861304
3-6 months     ki1017093-NIH-Birth     BANGLADESH    NA                   NA                1.8326915   1.7846731   1.8807099
3-6 months     ki1017093b-PROVIDE      BANGLADESH    NA                   NA                1.9662173   1.9311292   2.0013054
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH    NA                   NA                2.0027540   1.9667312   2.0387768
3-6 months     ki1114097-CONTENT       PERU          NA                   NA                2.0841841   2.0362519   2.1321163
3-6 months     ki1135781-COHORTS       GUATEMALA     NA                   NA                1.7541195   1.7166655   1.7915734
3-6 months     ki1135781-COHORTS       INDIA         NA                   NA                1.8572103   1.8432112   1.8712094
3-6 months     kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                1.9202048   1.9097374   1.9306722
3-6 months     kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                1.8987567   1.8688242   1.9286892
6-12 months    ki0047075b-MAL-ED       BANGLADESH    NA                   NA                1.1143928   1.0896103   1.1391753
6-12 months    ki0047075b-MAL-ED       INDIA         NA                   NA                1.1214380   1.0928994   1.1499767
6-12 months    ki0047075b-MAL-ED       PERU          NA                   NA                1.2081918   1.1749797   1.2414040
6-12 months    ki1017093-NIH-Birth     BANGLADESH    NA                   NA                1.1679344   1.1454934   1.1903754
6-12 months    ki1017093b-PROVIDE      BANGLADESH    NA                   NA                1.1737150   1.1564064   1.1910236
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH    NA                   NA                1.2296139   1.2120656   1.2471621
6-12 months    ki1114097-CONTENT       PERU          NA                   NA                1.3010517   1.2719491   1.3301542
6-12 months    ki1135781-COHORTS       GUATEMALA     NA                   NA                1.0143216   0.9941032   1.0345401
6-12 months    ki1135781-COHORTS       INDIA         NA                   NA                1.0832753   1.0736142   1.0929363
6-12 months    ki1135781-COHORTS       PHILIPPINES   NA                   NA                1.0498206   1.0308068   1.0688345
6-12 months    kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                1.1069118   1.1001686   1.1136550
6-12 months    kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                1.2031561   1.1927695   1.2135427
12-24 months   ki0047075b-MAL-ED       BANGLADESH    NA                   NA                0.8459764   0.8299714   0.8619814
12-24 months   ki0047075b-MAL-ED       INDIA         NA                   NA                0.8815607   0.8644247   0.8986966
12-24 months   ki0047075b-MAL-ED       PERU          NA                   NA                0.8469084   0.8260658   0.8677509
12-24 months   ki1017093-NIH-Birth     BANGLADESH    NA                   NA                0.7513013   0.7366996   0.7659029
12-24 months   ki1017093b-PROVIDE      BANGLADESH    NA                   NA                0.8575399   0.8455203   0.8695594
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH    NA                   NA                0.8757546   0.8638195   0.8876896
12-24 months   ki1135781-COHORTS       GUATEMALA     NA                   NA                0.7787104   0.7669110   0.7905098
12-24 months   ki1135781-COHORTS       INDIA         NA                   NA                0.8192911   0.8134060   0.8251761
12-24 months   ki1135781-COHORTS       PHILIPPINES   NA                   NA                0.6772522   0.6655435   0.6889610
12-24 months   kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                0.7965889   0.7912788   0.8018990
12-24 months   kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                0.8492623   0.8438054   0.8547191


### Parameter: ATE


agecat         studyid                 country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH    0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     ki0047075b-MAL-ED       BANGLADESH    1                    0                 -0.0513288   -0.2448184   0.1421609
0-3 months     ki0047075b-MAL-ED       INDIA         0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     ki0047075b-MAL-ED       INDIA         1                    0                 -0.0105062   -0.1639211   0.1429087
0-3 months     ki0047075b-MAL-ED       PERU          0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     ki0047075b-MAL-ED       PERU          1                    0                  0.0221512   -0.1377342   0.1820366
0-3 months     ki1017093-NIH-Birth     BANGLADESH    0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     ki1017093-NIH-Birth     BANGLADESH    1                    0                  0.0359370   -0.0796014   0.1514754
0-3 months     ki1017093b-PROVIDE      BANGLADESH    0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     ki1017093b-PROVIDE      BANGLADESH    1                    0                  0.0724541   -0.0806137   0.2255220
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH    0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH    1                    0                  0.0584019   -0.0504613   0.1672652
0-3 months     ki1135781-COHORTS       GUATEMALA     0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     ki1135781-COHORTS       GUATEMALA     1                    0                 -0.0309861   -0.2194540   0.1574819
0-3 months     ki1135781-COHORTS       INDIA         0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     ki1135781-COHORTS       INDIA         1                    0                  0.0874687    0.0528356   0.1221018
0-3 months     kiGH5241-JiVitA-3       BANGLADESH    0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     kiGH5241-JiVitA-3       BANGLADESH    1                    0                  0.0469070    0.0284577   0.0653562
0-3 months     kiGH5241-JiVitA-4       BANGLADESH    0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     kiGH5241-JiVitA-4       BANGLADESH    1                    0                  0.0340105   -0.0419387   0.1099596
3-6 months     ki0047075b-MAL-ED       BANGLADESH    0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     ki0047075b-MAL-ED       BANGLADESH    1                    0                  0.1333911    0.0068065   0.2599757
3-6 months     ki0047075b-MAL-ED       INDIA         0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     ki0047075b-MAL-ED       INDIA         1                    0                  0.0309994   -0.0907564   0.1527551
3-6 months     ki0047075b-MAL-ED       PERU          0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     ki0047075b-MAL-ED       PERU          1                    0                 -0.1315324   -0.2825047   0.0194398
3-6 months     ki1017093-NIH-Birth     BANGLADESH    0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     ki1017093-NIH-Birth     BANGLADESH    1                    0                  0.0363106   -0.0648705   0.1374918
3-6 months     ki1017093b-PROVIDE      BANGLADESH    0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     ki1017093b-PROVIDE      BANGLADESH    1                    0                  0.0720628   -0.0514517   0.1955773
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH    0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH    1                    0                 -0.0973494   -0.2086796   0.0139808
3-6 months     ki1114097-CONTENT       PERU          0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     ki1114097-CONTENT       PERU          1                    0                  0.0933389   -0.1090140   0.2956918
3-6 months     ki1135781-COHORTS       GUATEMALA     0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     ki1135781-COHORTS       GUATEMALA     1                    0                  0.0481385   -0.0540689   0.1503458
3-6 months     ki1135781-COHORTS       INDIA         0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     ki1135781-COHORTS       INDIA         1                    0                  0.0693952    0.0405877   0.0982027
3-6 months     kiGH5241-JiVitA-3       BANGLADESH    0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     kiGH5241-JiVitA-3       BANGLADESH    1                    0                  0.0198866   -0.0020835   0.0418566
3-6 months     kiGH5241-JiVitA-4       BANGLADESH    0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     kiGH5241-JiVitA-4       BANGLADESH    1                    0                  0.0060590   -0.0651569   0.0772748
6-12 months    ki0047075b-MAL-ED       BANGLADESH    0                    0                  0.0000000    0.0000000   0.0000000
6-12 months    ki0047075b-MAL-ED       BANGLADESH    1                    0                  0.0133805   -0.0454254   0.0721865
6-12 months    ki0047075b-MAL-ED       INDIA         0                    0                  0.0000000    0.0000000   0.0000000
6-12 months    ki0047075b-MAL-ED       INDIA         1                    0                  0.0678509    0.0111234   0.1245784
6-12 months    ki0047075b-MAL-ED       PERU          0                    0                  0.0000000    0.0000000   0.0000000
6-12 months    ki0047075b-MAL-ED       PERU          1                    0                 -0.0080326   -0.0777112   0.0616460
6-12 months    ki1017093-NIH-Birth     BANGLADESH    0                    0                  0.0000000    0.0000000   0.0000000
6-12 months    ki1017093-NIH-Birth     BANGLADESH    1                    0                  0.0553347    0.0081077   0.1025618
6-12 months    ki1017093b-PROVIDE      BANGLADESH    0                    0                  0.0000000    0.0000000   0.0000000
6-12 months    ki1017093b-PROVIDE      BANGLADESH    1                    0                  0.1219633    0.0421527   0.2017738
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH    0                    0                  0.0000000    0.0000000   0.0000000
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH    1                    0                  0.0046719   -0.0403974   0.0497411
6-12 months    ki1114097-CONTENT       PERU          0                    0                  0.0000000    0.0000000   0.0000000
6-12 months    ki1114097-CONTENT       PERU          1                    0                  0.0398547   -0.0673618   0.1470711
6-12 months    ki1135781-COHORTS       GUATEMALA     0                    0                  0.0000000    0.0000000   0.0000000
6-12 months    ki1135781-COHORTS       GUATEMALA     1                    0                  0.0659121    0.0082281   0.1235960
6-12 months    ki1135781-COHORTS       INDIA         0                    0                  0.0000000    0.0000000   0.0000000
6-12 months    ki1135781-COHORTS       INDIA         1                    0                  0.0444951    0.0251141   0.0638761
6-12 months    ki1135781-COHORTS       PHILIPPINES   0                    0                  0.0000000    0.0000000   0.0000000
6-12 months    ki1135781-COHORTS       PHILIPPINES   1                    0                  0.1234209    0.0650430   0.1817988
6-12 months    kiGH5241-JiVitA-3       BANGLADESH    0                    0                  0.0000000    0.0000000   0.0000000
6-12 months    kiGH5241-JiVitA-3       BANGLADESH    1                    0                  0.0318725    0.0183554   0.0453895
6-12 months    kiGH5241-JiVitA-4       BANGLADESH    0                    0                  0.0000000    0.0000000   0.0000000
6-12 months    kiGH5241-JiVitA-4       BANGLADESH    1                    0                  0.0352661    0.0110410   0.0594913
12-24 months   ki0047075b-MAL-ED       BANGLADESH    0                    0                  0.0000000    0.0000000   0.0000000
12-24 months   ki0047075b-MAL-ED       BANGLADESH    1                    0                 -0.0013555   -0.0546764   0.0519654
12-24 months   ki0047075b-MAL-ED       INDIA         0                    0                  0.0000000    0.0000000   0.0000000
12-24 months   ki0047075b-MAL-ED       INDIA         1                    0                  0.0205866   -0.0135188   0.0546920
12-24 months   ki0047075b-MAL-ED       PERU          0                    0                  0.0000000    0.0000000   0.0000000
12-24 months   ki0047075b-MAL-ED       PERU          1                    0                  0.0117298   -0.0360473   0.0595068
12-24 months   ki1017093-NIH-Birth     BANGLADESH    0                    0                  0.0000000    0.0000000   0.0000000
12-24 months   ki1017093-NIH-Birth     BANGLADESH    1                    0                  0.0055894   -0.0241097   0.0352885
12-24 months   ki1017093b-PROVIDE      BANGLADESH    0                    0                  0.0000000    0.0000000   0.0000000
12-24 months   ki1017093b-PROVIDE      BANGLADESH    1                    0                  0.0586901   -0.0146841   0.1320642
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    0                  0.0000000    0.0000000   0.0000000
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    0                  0.0086785   -0.0211705   0.0385275
12-24 months   ki1135781-COHORTS       GUATEMALA     0                    0                  0.0000000    0.0000000   0.0000000
12-24 months   ki1135781-COHORTS       GUATEMALA     1                    0                  0.0413734    0.0049375   0.0778094
12-24 months   ki1135781-COHORTS       INDIA         0                    0                  0.0000000    0.0000000   0.0000000
12-24 months   ki1135781-COHORTS       INDIA         1                    0                  0.0682069    0.0565129   0.0799008
12-24 months   ki1135781-COHORTS       PHILIPPINES   0                    0                  0.0000000    0.0000000   0.0000000
12-24 months   ki1135781-COHORTS       PHILIPPINES   1                    0                  0.0691397    0.0348653   0.1034140
12-24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    0                  0.0000000    0.0000000   0.0000000
12-24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    0                  0.0274959    0.0166810   0.0383107
12-24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    0                  0.0000000    0.0000000   0.0000000
12-24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    0                  0.0206512    0.0095808   0.0317216
