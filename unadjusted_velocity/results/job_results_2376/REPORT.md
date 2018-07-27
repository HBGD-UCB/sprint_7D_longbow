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
      W: []
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
        value: FALSE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
  output_directory:
    value: ''

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
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     0            348     566
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     1            218     566
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     0             29     634
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     1            605     634
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     0             84     709
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     1            625     709
0-3 months     kiGH5241-JiVitA-3       BANGLADESH                     0           6322   20028
0-3 months     kiGH5241-JiVitA-3       BANGLADESH                     1          13706   20028
0-3 months     kiGH5241-JiVitA-4       BANGLADESH                     0            407    1805
0-3 months     kiGH5241-JiVitA-4       BANGLADESH                     1           1398    1805
0-3 months     ki0047075b-MAL-ED       BRAZIL                         0              4     174
0-3 months     ki0047075b-MAL-ED       BRAZIL                         1            170     174
0-3 months     ki1135781-COHORTS       GUATEMALA                      0            403     445
0-3 months     ki1135781-COHORTS       GUATEMALA                      1             42     445
0-3 months     ki0047075b-MAL-ED       INDIA                          0            101     193
0-3 months     ki0047075b-MAL-ED       INDIA                          1             92     193
0-3 months     ki1135781-COHORTS       INDIA                          0           2928    4660
0-3 months     ki1135781-COHORTS       INDIA                          1           1732    4660
0-3 months     ki0047075b-MAL-ED       NEPAL                          0              1     174
0-3 months     ki0047075b-MAL-ED       NEPAL                          1            173     174
0-3 months     ki0047075b-MAL-ED       PERU                           0            190     252
0-3 months     ki0047075b-MAL-ED       PERU                           1             62     252
0-3 months     ki1114097-CONTENT       PERU                           0              4      29
0-3 months     ki1114097-CONTENT       PERU                           1             25      29
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0            209     211
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   1              2     211
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            217     217
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     0             38     231
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     1            193     231
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     0            325     523
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     1            198     523
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     0             26     572
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     1            546     572
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     0             83     684
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     1            601     684
3-6 months     kiGH5241-JiVitA-3       BANGLADESH                     0           3577   12570
3-6 months     kiGH5241-JiVitA-3       BANGLADESH                     1           8993   12570
3-6 months     kiGH5241-JiVitA-4       BANGLADESH                     0            408    1839
3-6 months     kiGH5241-JiVitA-4       BANGLADESH                     1           1431    1839
3-6 months     ki0047075b-MAL-ED       BRAZIL                         0              4     208
3-6 months     ki0047075b-MAL-ED       BRAZIL                         1            204     208
3-6 months     ki1135781-COHORTS       GUATEMALA                      0            493     551
3-6 months     ki1135781-COHORTS       GUATEMALA                      1             58     551
3-6 months     ki0047075b-MAL-ED       INDIA                          0            123     228
3-6 months     ki0047075b-MAL-ED       INDIA                          1            105     228
3-6 months     ki1135781-COHORTS       INDIA                          0           2949    4719
3-6 months     ki1135781-COHORTS       INDIA                          1           1770    4719
3-6 months     ki0047075b-MAL-ED       NEPAL                          0              1     233
3-6 months     ki0047075b-MAL-ED       NEPAL                          1            232     233
3-6 months     ki0047075b-MAL-ED       PERU                           0            197     260
3-6 months     ki0047075b-MAL-ED       PERU                           1             63     260
3-6 months     ki1114097-CONTENT       PERU                           0             14     214
3-6 months     ki1114097-CONTENT       PERU                           1            200     214
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0            231     235
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   1              4     235
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            231     231
6-12 months    ki0047075b-MAL-ED       BANGLADESH                     0             35     220
6-12 months    ki0047075b-MAL-ED       BANGLADESH                     1            185     220
6-12 months    ki1017093-NIH-Birth     BANGLADESH                     0            295     482
6-12 months    ki1017093-NIH-Birth     BANGLADESH                     1            187     482
6-12 months    ki1017093b-PROVIDE      BANGLADESH                     0             24     544
6-12 months    ki1017093b-PROVIDE      BANGLADESH                     1            520     544
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     0             88     665
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     1            577     665
6-12 months    kiGH5241-JiVitA-3       BANGLADESH                     0           2826    9831
6-12 months    kiGH5241-JiVitA-3       BANGLADESH                     1           7005    9831
6-12 months    kiGH5241-JiVitA-4       BANGLADESH                     0            694    3159
6-12 months    kiGH5241-JiVitA-4       BANGLADESH                     1           2465    3159
6-12 months    ki0047075b-MAL-ED       BRAZIL                         0              4     194
6-12 months    ki0047075b-MAL-ED       BRAZIL                         1            190     194
6-12 months    ki1135781-COHORTS       GUATEMALA                      0            566     632
6-12 months    ki1135781-COHORTS       GUATEMALA                      1             66     632
6-12 months    ki0047075b-MAL-ED       INDIA                          0            121     223
6-12 months    ki0047075b-MAL-ED       INDIA                          1            102     223
6-12 months    ki1135781-COHORTS       INDIA                          0           2322    3821
6-12 months    ki1135781-COHORTS       INDIA                          1           1499    3821
6-12 months    ki1148112-LCNI-5        MALAWI                         0            425     428
6-12 months    ki1148112-LCNI-5        MALAWI                         1              3     428
6-12 months    ki0047075b-MAL-ED       NEPAL                          0              1     230
6-12 months    ki0047075b-MAL-ED       NEPAL                          1            229     230
6-12 months    ki0047075b-MAL-ED       PERU                           0            177     230
6-12 months    ki0047075b-MAL-ED       PERU                           1             53     230
6-12 months    ki1114097-CONTENT       PERU                           0             14     213
6-12 months    ki1114097-CONTENT       PERU                           1            199     213
6-12 months    ki1135781-COHORTS       PHILIPPINES                    0            854     975
6-12 months    ki1135781-COHORTS       PHILIPPINES                    1            121     975
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0            224     228
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1              4     228
6-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            217     217
12-24 months   ki0047075b-MAL-ED       BANGLADESH                     0             30     206
12-24 months   ki0047075b-MAL-ED       BANGLADESH                     1            176     206
12-24 months   ki1017093-NIH-Birth     BANGLADESH                     0            255     421
12-24 months   ki1017093-NIH-Birth     BANGLADESH                     1            166     421
12-24 months   ki1017093b-PROVIDE      BANGLADESH                     0             15     457
12-24 months   ki1017093b-PROVIDE      BANGLADESH                     1            442     457
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0             70     484
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1            414     484
12-24 months   kiGH5241-JiVitA-3       BANGLADESH                     0           1355    4647
12-24 months   kiGH5241-JiVitA-3       BANGLADESH                     1           3292    4647
12-24 months   kiGH5241-JiVitA-4       BANGLADESH                     0            807    3635
12-24 months   kiGH5241-JiVitA-4       BANGLADESH                     1           2828    3635
12-24 months   ki0047075b-MAL-ED       BRAZIL                         0              3     165
12-24 months   ki0047075b-MAL-ED       BRAZIL                         1            162     165
12-24 months   ki1135781-COHORTS       GUATEMALA                      0            666     738
12-24 months   ki1135781-COHORTS       GUATEMALA                      1             72     738
12-24 months   ki0047075b-MAL-ED       INDIA                          0            120     223
12-24 months   ki0047075b-MAL-ED       INDIA                          1            103     223
12-24 months   ki1135781-COHORTS       INDIA                          0           1917    3172
12-24 months   ki1135781-COHORTS       INDIA                          1           1255    3172
12-24 months   ki1148112-LCNI-5        MALAWI                         0            304     306
12-24 months   ki1148112-LCNI-5        MALAWI                         1              2     306
12-24 months   ki0047075b-MAL-ED       NEPAL                          0              1     226
12-24 months   ki0047075b-MAL-ED       NEPAL                          1            225     226
12-24 months   ki0047075b-MAL-ED       PERU                           0            141     186
12-24 months   ki0047075b-MAL-ED       PERU                           1             45     186
12-24 months   ki1114097-CONTENT       PERU                           0              2      38
12-24 months   ki1114097-CONTENT       PERU                           1             36      38
12-24 months   ki1135781-COHORTS       PHILIPPINES                    0            810     922
12-24 months   ki1135781-COHORTS       PHILIPPINES                    1            112     922
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0            223     227
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1              4     227
12-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            200     200


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
* agecat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-12 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
##       y_rate_len
## impsan 1.65909272727273 1.76841279069767 1.9210547368421 2.091148125
##      0                1                1               1           1
##      1                0                0               0           0
##       y_rate_len
## impsan 2.129169 2.20120855263158 2.20604637362637 2.26435433333333
##      0        1                1                1                1
##      1        0                0                0                0
##       y_rate_len
## impsan 2.37739724137931 2.40131842105263 2.42650078651685 2.433336
##      0                1                1                1        1
##      1                0                0                0        0
##       y_rate_len
## impsan 2.46067685393258 2.46230428571428 2.48863909090909 2.534725
##      0                1                1                1        1
##      1                0                0                0        0
##       y_rate_len
## impsan 2.56320505617978 2.56526385542169 2.61225776470588 2.66146125
##      0                1                1                1          1
##      1                0                0                0          0
##       y_rate_len
## impsan 2.67956642857143 2.68572989361702 2.77129933333333 2.79117952941176
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_len
## impsan 2.82440785714286 2.82946046511628 2.85391259259259 2.86274823529412
##      0                2                1                1                1
##      1                0                0                0                0
##       y_rate_len
## impsan 2.89329585365854 2.89682857142857 2.90648466666667 2.93914179775281
##      0                2                1                1                1
##      1                0                0                0                0
##       y_rate_len
## impsan 2.96562825 2.97174655172414 2.97407733333333 3.00411851851852
##      0          1                1                1                1
##      1          0                0                0                0
##       y_rate_len
## impsan 3.00749393258427 3.04167 3.07546633333333 3.07623443181818
##      0                1       3                2                1
##      1                0       0                0                0
##       y_rate_len
## impsan 3.07745435294118 3.10779326086956 3.11159344827586 3.14085489130435
##      0                2                2                1                1
##      1                0                0                0                0
##       y_rate_len
## impsan 3.14194483516483 3.14194483516484 3.14419820224719 3.14655517241379
##      0                1                1                3                2
##      1                0                0                0                0
##       y_rate_len
## impsan 3.14777476744186 3.1529506097561 3.15432444444444 3.16017662337662
##      0                1               1                1                1
##      1                0               0                0                0
##       y_rate_len
## impsan 3.17837426966292 3.17992772727273 3.20697815217391 3.20879472527473
##      0                1                2                1                2
##      1                0                0                0                0
##       y_rate_len
## impsan 3.24221967032967 3.244448 3.24672640449438 3.25893214285714
##      0                1        1                1                6
##      1                0        0                0                0
##       y_rate_len
## impsan 3.26979525 3.27564461538461 3.27564461538462 3.27824433333333
##      0          1                1                1                1
##      1          0                0                0                0
##       y_rate_len
## impsan 3.28362102272727 3.29216047058824 3.29819638554217 3.30453037037037
##      0                1                1                2                1
##      1                0                0                0                0
##       y_rate_len
## impsan 3.30616304347826 3.31204066666667 3.33841829268293 3.34925460674157
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_len
## impsan 3.35274988636364 3.35632551724138 3.37963333333333 3.383857875
##      0                1                1                2           1
##      1                0                0                0           0
##       y_rate_len
## impsan 3.39761010638298 3.40534793478261 3.4093443956044 3.41760674157303
##      0                1                1               1                2
##      1                0                0               0                0
##       y_rate_len
## impsan 3.42187875 3.4341435483871 3.4547362962963 3.46519367088608
##      0          3               1               1                2
##      1          0               0               0                0
##       y_rate_len
## impsan 3.47062346153846 3.47147119565217 3.48102233333333 3.48679243902439
##      0                1                1                2                1
##      1                0                0                0                0
##       y_rate_len
## impsan 3.53682558139535 3.53759445652174 3.54265094117647 3.548615
##      0                1                1                1        3
##      1                0                0                0        0
##       y_rate_len
## impsan 3.56013647727273 3.56097951219512 3.56496806451613 3.57843529411765
##      0                1                1                1                2
##      1                0                0                0                0
##       y_rate_len
## impsan 3.58241133333333 3.59470090909091 3.6010575862069 3.611983125
##      0                1                1               1           1
##      1                0                0               0           0
##       y_rate_len
## impsan 3.61620766666667 3.62103571428571 3.62266314606741 3.63677934782609
##      0                1                2                1                1
##      1                0                0                0                0
##       y_rate_len
## impsan 3.650004 3.66382977272727 3.67674395604396 3.69839420454546
##      0        1                1                3                1
##      1        0                0                0                0
##       y_rate_len
## impsan 3.70935365853659 3.71759666666667 3.73596423913043 3.74359384615385
##      0                1                1                1                4
##      1                0                0                0                0
##       y_rate_len
## impsan 3.74644719512195 3.75514814814815 3.75936741573034 3.76120483870968
##      0                1                2                1                1
##      1                0                0                0                0
##       y_rate_len
## impsan 3.76902586956522 3.78354073170732 3.79354348314607 3.8020875
##      0                1                2                1         2
##      1                0                0                0         0
##       y_rate_len
## impsan 3.81044373626374 3.81082793103448 3.81898566666667 3.8277195505618
##      0                2                1                1               1
##      1                0                0                0               0
##       y_rate_len
## impsan 3.83514913043478 3.83665193181818 3.840108375 3.84386868131868
##      0                1                1           1                1
##      1                0                0           0                0
##       y_rate_len
## impsan 3.852782 3.86471011764706 3.87121636363636 3.88657833333333
##      0        1                1                1                1
##      1        0                0                0                0
##       y_rate_len
## impsan 3.89050813953488 3.91571310344828 3.92037466666667 3.93024775280899
##      0                1                2                2                1
##      1                0                0                0                0
##       y_rate_len
## impsan 3.93433402173913 3.94414351648352 3.98313928571429 3.98563655172414
##      0                1                2                1                1
##      1                0                0                0                0
##       y_rate_len
## impsan 3.98796733333333 4.00219736842105 4.0319811627907 4.04403852272727
##      0                1                1               1                1
##      1                0                0               0                0
##       y_rate_len
## impsan 4.05556 4.0778432967033 4.07941623529412 4.11520058823529
##      0       2               1                1                1
##      1       0               0                0                0
##       y_rate_len
## impsan 4.12548344827586 4.15447609756098 4.16576543478261 4.17811813186813
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_len
## impsan 4.18229625 4.20365629213483 4.22255364705882 4.23188869565217
##      0          1                1                1                1
##      1          0                0                0                0
##       y_rate_len
## impsan 4.24496802197802 4.26495032608696 4.31842037037037 4.33107358695652
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_len
## impsan 4.34524285714286 4.39352333333333 4.41766357142857 4.43025847826087
##      0                2                1                1                1
##      1                0                0                0                0
##       y_rate_len
## impsan 4.44288876404494 4.4512243902439 4.49008428571428 4.50617777777778
##      0                1               1                1                1
##      1                0               0                0                0
##       y_rate_len
## impsan 4.50882847058824 4.562505 4.73532715909091 4.83735469879518
##      0                1        1                1                1
##      1                0        0                0                0
##       y_rate_len
## impsan 4.83902045454545 4.90046833333333 5.24425862068966
##      0                1                1                1
##      1                0                0                0
##       y_rate_len
## impsan 0.31666701369863 0.331517166212534 0.335170247933884
##      0                1                 1                 1
##      1                0                 0                 0
##       y_rate_len
## impsan 0.385445785123966 0.395664390243902 0.397820599455041
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_len
## impsan 0.451236758241758 0.475000520547945 0.476305467032967
##      0                 1                 1                 2
##      1                 0                 0                 0
##       y_rate_len
## impsan 0.482013278688524 0.491667205479452 0.495924456521739
##      0                 2                 1                 2
##      1                 0                 0                 0
##       y_rate_len
## impsan 0.500000547945205 0.501374175824176 0.512455271739131
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_len
## impsan 0.53333391780822 0.550000602739726 0.566667287671233
##      0                1                 2                 1
##      1                0                 0                 0
##       y_rate_len
## impsan 0.568224065934066 0.568224065934067 0.575000630136987
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_len
## impsan 0.576580302197803 0.580155040871935 0.581740163934426
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_len
## impsan 0.58333397260274 0.584936538461538 0.586547933884297
##      0                3                 4                 1
##      1                0                 0                 0
##       y_rate_len
## impsan 0.590050737704919 0.603306446280992 0.616667342465754
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_len
## impsan 0.631603606557377 0.638170544959128 0.641667369863014
##      0                 1                 2                 1
##      1                 0                 0                 0
##       y_rate_len
## impsan 0.643430192307692 0.644701793478261 0.646458474114441
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_len
## impsan 0.64822475409836 0.650000712328767 0.661232608695652
##      0                1                 1                 3
##      1                0                 0                 0
##       y_rate_len
## impsan 0.666667397260274 0.668498901098901 0.673156475409837
##      0                 3                 2                 1
##      1                 0                 0                 0
##       y_rate_len
## impsan 0.683334082191781 0.685211373626374 0.689777622950819
##      0                 2                 2                 1
##      1                 0                 0                 0
##       y_rate_len
## impsan 0.69356760989011 0.698088196721312 0.699331329639889
##      0                1                 3                 1
##      1                0                 0                 0
##       y_rate_len
## impsan 0.700000767123288 0.701923846153847 0.708334109589041
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_len
## impsan 0.710825054347826 0.716667452054794 0.721049836512262
##      0                 1                 2                 2
##      1                 0                 0                 0
##       y_rate_len
## impsan 0.725000794520548 0.728995289256198 0.729337765667576
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_len
## impsan 0.733334136986301 0.735348791208791 0.741870731707317
##      0                 1                 2                 1
##      1                 0                 0                 0
##       y_rate_len
## impsan 0.743886684782609 0.747951639344262 0.750000821917808
##      0                 1                 1                 8
##      1                 0                 0                 0
##       y_rate_len
## impsan 0.752061263736264 0.756262213114754 0.758334164383562 0.7604175
##      0                 3                 1                 1         1
##      1                 0                 0                 0         0
##       y_rate_len
## impsan 0.762489482288829 0.766667506849315 0.768773736263736
##      0                 1                 2                 1
##      1                 0                 0                 0
##       y_rate_len
## impsan 0.776948315217392 0.777129972527472 0.779065340599454
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_len
## impsan 0.783334191780822 0.785486208791209 0.787353269754768
##      0                 1                 1                 2
##      1                 0                 0                 0
##       y_rate_len
## impsan 0.789504508196721 0.793479130434782 0.793479130434783
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_len
## impsan 0.795641198910081 0.797815081967213 0.800000876712328
##      0                 1                 1                 2
##      1                 0                 0                 0
##       y_rate_len
## impsan 0.803929128065395 0.806125655737705 0.807814796747967
##      0                 1                 3                 1
##      1                 0                 0                 0
##       y_rate_len
## impsan 0.808334219178082 0.810554917582418 0.812217057220708
##      0                 1                 2                 1
##      1                 0                 0                 0
##       y_rate_len
## impsan 0.816667561643835 0.82430081300813 0.827267390109891
##      0                 2                1                 1
##      1                 0                0                 0
##       y_rate_len
## impsan 0.83105737704918 0.833334246575342 0.835623626373626
##      0                5                 2                 3
##      1                0                 0                 0
##       y_rate_len
## impsan 0.842567867036011 0.843979862637362 0.845368773841962
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_len
## impsan 0.852336098901099 0.855989098360656 0.859602391304348
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_len
## impsan 0.866667616438357 0.869048571428572 0.8714426446281
##      0                 1                 2               1
##      1                 0                 0               0
##       y_rate_len
## impsan 0.873758861788617 0.876270581717452 0.889231393442623
##      0                 1                 1                 2
##      1                 0                 0                 0
##       y_rate_len
## impsan 0.891667643835617 0.89411728021978 0.90428027027027
##      0                 3                1                1
##      1                 0                0                0
##       y_rate_len
## impsan 0.909194836956522 0.910829752747253 0.916667671232877
##      0                 1                 2                 2
##      1                 0                 0                 0
##       y_rate_len
## impsan 0.919185989010989 0.932666767955801 0.933334356164384
##      0                 1                 1                 2
##      1                 0                 0                 0
##       y_rate_len
## impsan 0.935898461538462 0.961399782016348 0.961399782016349
##      0                 2                 1                 1
##      1                 0                 0                 0
##       y_rate_len
## impsan 0.964026557377049 0.966667726027397 0.969687711171662
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_len
## impsan 0.972337131147541 0.975318097826087 0.980647704918033
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_len
## impsan 0.983334410958904 0.983583505434783 0.986035879120879
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_len
## impsan 0.988752231404958 0.991848913043478 0.997268852459016
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_len
## impsan 1.00000109589041 1.00274835164835 1.01941528610354 1.02500112328767
##      0                1                4                1                1
##      1                0                0                0                0
##       y_rate_len
## impsan 1.03599114441417 1.05833449315069 1.06666783561644 1.06914286103542
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_len
## impsan 1.08037459016393 1.08631071428571 1.10833454794521 1.12500123287671
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_len
## impsan 1.13333457534247 1.38408416893733
##      0                1                1
##      1                0                0
##       y_rate_len
## impsan 0.345644318181818 0.39673956521739 0.661232608695652
##      0                 1                1                 1
##      1                 0                0                 0
##       y_rate_len
## impsan 0.675926666666667 0.727355869565216 0.735348791208792
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_len
## impsan 0.925725652173912 0.935898461538461 0.991848913043478
##      0                 1                 1                 4
##      1                 0                 0                 0
##       y_rate_len
## impsan 1.00274835164835 1.01389 1.0361732967033 1.04659612903226
##      0                3       1               1                1
##      1                0       0               0                0
##       y_rate_len
## impsan 1.06959824175824 1.07353058823529 1.1001785106383 1.12409543478261
##      0                3                1               1                1
##      1                0                0               0                0
##       y_rate_len
## impsan 1.13644813186813 1.14907533333333 1.15373689655173 1.16198629213483
##      0                2                1                1                1
##      1                0                0                0                0
##       y_rate_len
## impsan 1.17519068181818 1.19021869565217 1.25634195652174 1.27014791208791
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_len
## impsan 1.28426066666667 1.29432765957447 1.29869056179775 1.30357285714286
##      0                2                1                1                1
##      1                0                0                0                0
##       y_rate_len
## impsan 1.3224652173913 1.3369978021978 1.35185333333333 1.36564775510204
##      0               2              11                1                1
##      1               0               0                0                0
##       y_rate_len
## impsan 1.36704269662921 1.37042274725275 1.40384769230769 1.419446
##      0                1                2                4        1
##      1                0                0                0        0
##       y_rate_len
## impsan 1.45471173913044 1.46586506024096 1.48703866666667 1.520835
##      0                1                1                1        1
##      1                0                0                0        0
##       y_rate_len
## impsan 1.53754747252747 1.53831586206896 1.55389663043478 1.56989419354839
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_len
## impsan 1.60087894736842 1.60439736263736 1.61790957446808 1.622224
##      0                1                2                3        1
##      1                0                0                0        0
##       y_rate_len
## impsan 1.6353064516129 1.63782230769231 1.65308152173913 1.65602033333333
##      0               1                1                5                1
##      1               0                0                0                0
##       y_rate_len
## impsan 1.67124725274725 1.68262595744681 1.68981666666667 1.69365715909091
##      0                5                2                4                1
##      1                0                0                0                0
##       y_rate_len
## impsan 1.70071870967742 1.7046721978022 1.70880337078652 1.710939375
##      0                1               1                1           1
##      1                0               0                0           0
##       y_rate_len
## impsan 1.7192047826087 1.72822159090909 1.73809714285714 1.76613096774193
##      0               2                4                3                1
##      1               0                0                0                0
##       y_rate_len
## impsan 1.76841279069767 1.77970053191489 1.78304793103448 1.78532804347826
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_len
## impsan 1.79735045454546 1.80494703296703 1.81800965517241 1.825002
##      0                1                2                2        1
##      1                0                0                0        0
##       y_rate_len
## impsan 1.84550764044944 1.87677510638298 1.9138597752809 1.91757456521739
##      0                2                1               1                1
##      1                0                0               0                0
##       y_rate_len
## impsan 1.92105473684211 1.93864681318681 1.9414914893617 1.96018733333333
##      0                1                3               1                2
##      1                0                0               0                0
##       y_rate_len
## impsan 1.96236774193548 1.97384968085106 1.98221191011236 1.98369782608696
##      0                2                1                1                8
##      1                0                0                0                0
##       y_rate_len
## impsan 2.0054967032967 2.01675945652174 2.02778 2.04982108695652
##      0              10                1       2                1
##      1               0                0       0                0
##       y_rate_len
## impsan 2.05056404494382 2.07234659340659 2.07386590909091 2.0828827173913
##      0                2                4                1               1
##      1                0                0                0               0
##       y_rate_len
## impsan 2.09537266666667 2.11594434782609 2.13564063829787 2.13919648351649
##      0                2                3                1                2
##      1                0                0                0                0
##       y_rate_len
## impsan 2.16762689655173 2.18206760869565 2.20035702127659 2.20604637362637
##      0                1                2                1                1
##      1                0                0                0                0
##       y_rate_len
## impsan 2.21212363636364 2.21862988235294 2.23947131868132 2.24123052631579
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_len
## impsan 2.26507340425532 2.27289626373626 2.2812525 2.29815066666667
##      0                3                2         1                1
##      1                0                0         0                0
##       y_rate_len
## impsan 2.31431413043478 2.33974615384615 2.36574333333333 2.38043739130435
##      0                5                4                3                1
##      1                0                0                0                0
##       y_rate_len
## impsan 2.41349902173913 2.44732068965517 2.45295967741935 2.48566580645161
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_len
## impsan 2.51268391304348 2.54574554347826 2.57880717391304 2.62689681818182
##      0                1                2                1                1
##      1                0                0                0                0
##       y_rate_len
## impsan 2.64493043478261 2.6739956043956 2.67399560439561 2.68798744186047
##      0                2               4                1                1
##      1                0               0                0                0
##       y_rate_len
## impsan 2.70370666666667 2.71105369565217 2.76515454545455 2.80769538461538
##      0                2                1                1                2
##      1                0                0                0                0
##       y_rate_len
## impsan 2.87454527472528 2.97554673913043 3.00824505494505 3.07509494505495
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_len
## impsan 3.17110276595745
##      0                1
##      1                0
##       y_rate_len
## impsan 0.321869841269841 0.328829189189189 0.336096132596685
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_len
## impsan 0.361712108108109 0.405556000000001 0.457885806451614
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_len
## impsan 0.460360864864864 0.495924456521739 0.498634426229508
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_len
## impsan 0.501374175824176 0.515255573770493 0.523298064516129
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_len
## impsan 0.534799120879121 0.562047717391304 0.568224065934067
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_len
## impsan 0.588710322580644 0.598361311475409 0.60164901098901
##      0                 1                 1                1
##      1                 0                 0                0
##       y_rate_len
## impsan 0.601649010989011 0.618361483516484 0.631603606557377
##      0                 1                 1                 2
##      1                 0                 0                 0
##       y_rate_len
## impsan 0.635073956043957 0.654122580645161 0.657658378378378
##      0                 1                 1                 2
##      1                 0                 0                 0
##       y_rate_len
## impsan 0.664845901639344 0.668498901098901 0.67219226519337
##      0                 2                 2                1
##      1                 0                 0                0
##       y_rate_len
## impsan 0.681467049180327 0.690541297297295 0.690541297297298
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_len
## impsan 0.701923846153847 0.718636318681318 0.723424216216217
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_len
## impsan 0.764572786885245 0.768773736263736 0.793479130434782
##      0                 1                 1                 2
##      1                 0                 0                 0
##       y_rate_len
## impsan 0.797815081967213 0.802198681318681 0.813280748663102
##      0                 2                 1                 2
##      1                 0                 0                 0
##       y_rate_len
## impsan 0.817653225806452 0.818911153846155 0.822072972972973
##      0                 2                 1                 2
##      1                 0                 0                 0
##       y_rate_len
## impsan 0.83105737704918 0.835623626373626 0.840240331491713
##      0               10                 2                 2
##      1                0                 0                 0
##       y_rate_len
## impsan 0.845811978609626 0.849628491620112 0.85035935483871
##      0                 1                 2                1
##      1                 0                 0                0
##       y_rate_len
## impsan 0.854955891891892 0.859602391304348 0.864299672131148
##      0                 1                 2                 2
##      1                 0                 0                 0
##       y_rate_len
## impsan 0.869048571428572 0.883065483870969 0.897541967213116
##      0                 3                 1                 1
##      1                 0                 0                 0
##       y_rate_len
## impsan 0.902473516483515 0.902473516483517 0.907459558011051
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_len
## impsan 0.915771612903226 0.92072172972973 0.925725652173912
##      0                 1                1                 2
##      1                 0                0                 0
##       y_rate_len
## impsan 0.935898461538461 0.941069171270717 0.948477741935483
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_len
## impsan 0.953604648648648 0.964026557377049 0.969323406593406
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_len
## impsan 0.975318097826086 0.981183870967742 0.986487567567568
##      0                 1                 1                 5
##      1                 0                 0                 0
##       y_rate_len
## impsan 0.991848913043478 0.997268852459016 1.00274835164835
##      0                 1                 6                8
##      1                 0                 0                0
##       y_rate_len
## impsan 1.00828839779006 1.00837972826087 1.01389 1.01937048648649
##      0                3                1       1                3
##      1                0                0       0                0
##       y_rate_len
## impsan 1.03051114754098 1.0361732967033 1.04768633333333 1.05225340540541
##      0                1               1                1                1
##      1                0               0                0                0
##       y_rate_len
## impsan 1.05353932960894 1.06959824175824 1.08513632432432 1.09103380434783
##      0                1                1                2                2
##      1                0                0                0                0
##       y_rate_len
## impsan 1.10302318681319 1.10911723756906 1.11801924324324 1.11973565934066
##      0                1                2                1                1
##      1                0                0                0                0
##       y_rate_len
## impsan 1.13644813186813 1.14471451612903 1.14714411428571 1.14907533333333
##      0                3                4                1                1
##      1                0                0                0                0
##       y_rate_len
## impsan 1.15090216216216 1.15715706521739 1.16348032786885 1.16987307692308
##      0                3                5                6                6
##      1                0                0                0                0
##       y_rate_len
## impsan 1.17368788043478 1.18287166666667 1.19021869565217 1.20329802197802
##      0                1                2                1                1
##      1                0                0                0                0
##       y_rate_len
## impsan 1.216668 1.22328032608696 1.22647983870968 1.22996491803279
##      0        1                2                1                1
##      1        0                0                0                0
##       y_rate_len
## impsan 1.23618673796791 1.23672296703297 1.24355569060774 1.25634195652174
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_len
## impsan 1.26320721311475 1.27553903225806 1.2771653038674 1.28940358695652
##      0                2                3               1                1
##      1                0                0               0                0
##       y_rate_len
## impsan 1.29432765957447 1.29644950819672 1.30357285714286 1.30824516129032
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_len
## impsan 1.31531675675676 1.32969180327869 1.3369978021978 1.34631295081967
##      0                1                1               4                1
##      1                0                0               0                0
##       y_rate_len
## impsan 1.35185333333333 1.35940558659218 1.37042274725275 1.38858847826087
##      0                1                1                2                1
##      1                0                0                0                0
##       y_rate_len
## impsan 1.41160375690608 1.42941868852459 1.43727263736264 1.43906967741935
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_len
## impsan 1.45471173913043 1.46266098360656 1.50412252747253 1.50448193548387
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_len
## impsan 1.51243259668508 1.54604220994475 1.56238786885246 1.61126302702703
##      0                2                1                1                1
##      1                0                0                0                0
##       y_rate_len
## impsan 2.20604637362637
##      0                1
##      1                0
```




# Results Detail

## Results Plots
![](/tmp/7b880f6d-03d1-4df7-a0a8-0e555438e077/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/7b880f6d-03d1-4df7-a0a8-0e555438e077/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





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
6-12 months    kiGH5241-JiVitA-3       BANGLADESH    0                    NA                1.0842249   1.0725683   1.0958814
6-12 months    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                1.1161417   1.1083585   1.1239249
6-12 months    kiGH5241-JiVitA-4       BANGLADESH    0                    NA                1.1752075   1.1545229   1.1958921
6-12 months    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                1.2110302   1.1989314   1.2231291
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
12-24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.7773443   0.7678711   0.7868175
12-24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.8046727   0.7986304   0.8107150
12-24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.8334509   0.8235927   0.8433091
12-24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.8537280   0.8476842   0.8597717


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
6-12 months    kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                1.1069669   1.1002186   1.1137153
6-12 months    kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                1.2031603   1.1927643   1.2135564
12-24 months   ki0047075b-MAL-ED       BANGLADESH    NA                   NA                0.8459764   0.8299714   0.8619814
12-24 months   ki0047075b-MAL-ED       INDIA         NA                   NA                0.8815607   0.8644247   0.8986966
12-24 months   ki0047075b-MAL-ED       PERU          NA                   NA                0.8469084   0.8260658   0.8677509
12-24 months   ki1017093-NIH-Birth     BANGLADESH    NA                   NA                0.7513013   0.7366996   0.7659029
12-24 months   ki1017093b-PROVIDE      BANGLADESH    NA                   NA                0.8575399   0.8455203   0.8695594
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH    NA                   NA                0.8757546   0.8638195   0.8876896
12-24 months   ki1135781-COHORTS       GUATEMALA     NA                   NA                0.7787104   0.7669110   0.7905098
12-24 months   ki1135781-COHORTS       INDIA         NA                   NA                0.8192911   0.8134060   0.8251761
12-24 months   ki1135781-COHORTS       PHILIPPINES   NA                   NA                0.6772522   0.6655435   0.6889610
12-24 months   kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                0.7967041   0.7913867   0.8020215
12-24 months   kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                0.8492263   0.8437928   0.8546597


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
6-12 months    kiGH5241-JiVitA-3       BANGLADESH    1                    0                  0.0319169    0.0183985   0.0454352
6-12 months    kiGH5241-JiVitA-4       BANGLADESH    0                    0                  0.0000000    0.0000000   0.0000000
6-12 months    kiGH5241-JiVitA-4       BANGLADESH    1                    0                  0.0358227    0.0115516   0.0600939
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
12-24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    0                  0.0273284    0.0165044   0.0381524
12-24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    0                  0.0000000    0.0000000   0.0000000
12-24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    0                  0.0202771    0.0092873   0.0312669
