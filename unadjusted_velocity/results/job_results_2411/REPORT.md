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
##       y_rate_haz
## impsan -0.884849454545455 -0.7806953 -0.768773736263736 -0.763954325581395
##      0                  1          1                  1                  1
##      1                  0          0                  0                  0
##       y_rate_haz
## impsan -0.741620662921348 -0.702730655172414 -0.665787766666667 -0.6387507
##      0                  1                  1                  1          1
##      1                  0                  0                  0          0
##       y_rate_haz
## impsan -0.600329605263158 -0.597964670454545 -0.584410752808989
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## impsan -0.557028722891566 -0.485300157303371 -0.4765283 -0.458039717647059
##      0                  1                  1          1                  1
##      1                  0                  0          0                  0
##       y_rate_haz
## impsan -0.445387392857143 -0.438968284090909 -0.434524285714286
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## impsan -0.432237315789474 -0.429412235294118 -0.408935633333333
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## impsan -0.391571310344828 -0.388213144736842 -0.381898566666667
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## impsan -0.381082793103448 -0.378590840425532 -0.3650004 -0.362926534090909
##      0                  1                  1          1                  1
##      1                  0                  0          0                  0
##       y_rate_haz
## impsan -0.355431101123595 -0.341342966666667 -0.333135285714286
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## impsan -0.330616304347826 -0.32951425 -0.328090247191011
##      0                  1           1                  1
##      1                  0           0                  0
##       y_rate_haz
## impsan -0.324905659090909 -0.321065166666667 -0.317837426966292
##      0                  1                  1                  2
##      1                  0                  0                  0
##       y_rate_haz
## impsan -0.310779326086957 -0.304167 -0.300860836956522 -0.297174655172414
##      0                  1         1                  1                  1
##      1                  0         0                  0                  0
##       y_rate_haz
## impsan -0.294139516483516 -0.287454527472527 -0.285620231707317
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## impsan -0.282440785714286 -0.280243752808989 -0.279409220930233
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## impsan -0.276515454545455 -0.275198714285714 -0.2737503 -0.2636114
##      0                  1                  1          1          2
##      1                  0                  0          0          0
##       y_rate_haz
## impsan -0.260714571428571 -0.257093535714286 -0.252320352272727 -0.2433336
##      0                  1                  1                  1          1
##      1                  0                  0                  0          0
##       y_rate_haz
## impsan -0.236574333333333 -0.228979651685393 -0.224668806818182
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## impsan -0.219879759036145 -0.218851865853659 -0.218284552941176
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## impsan -0.215309224719101 -0.210288296296296 -0.203892164835165
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## impsan -0.201638797752809 -0.200305097560976 -0.19789178313253
##      0                  1                  1                 1
##      1                  0                  0                 0
##       y_rate_haz
## impsan -0.195063619565217 -0.1939064625 -0.193235505882353
##      0                  1             1                  1
##      1                  0             0                  0
##       y_rate_haz
## impsan -0.184672821428571 -0.175343329411765 -0.17046721978022
##      0                  1                  1                 1
##      1                  0                  0                 0
##       y_rate_haz
## impsan -0.161790957446808 -0.150374696629213 -0.135185333333333
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## impsan -0.132585615384615 -0.131344840909091 -0.122366034482759
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## impsan -0.119356670886076 -0.1115279 -0.1102605375 -0.107930225806452
##      0                  1          2             1                  1
##      1                  0          0             0                  0
##       y_rate_haz
## impsan -0.10645845 -0.103861902439024 -0.0946297333333333
##      0           1                  1                   1
##      1           0                  0                   0
##       y_rate_haz
## impsan -0.0901235555555556 -0.089024487804878 -0.0869048571428571
##      0                   2                  1                   1
##      1                   0                  0                   0
##       y_rate_haz
## impsan -0.0859602391304349 -0.0859602391304348 -0.0835623626373626
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## impsan -0.0832838214285714 -0.0802198681318681 -0.07604175
##      0                   1                   1           1
##      1                   0                   0           0
##       y_rate_haz
## impsan -0.0668498901098901 -0.0667683658536585 -0.0644118352941176
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## impsan -0.0587595340909091 -0.0506945 -0.0470734642857143
##      0                   1          1                   2
##      1                   0          0                   0
##       y_rate_haz
## impsan -0.0467949230769231 -0.0434524285714285 -0.0393627882352941
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## impsan -0.0345644318181818 -0.0318314302325581 -0.0289682857142857
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## impsan -0.0279693793103448 -0.0264493043478261 -0.0239232471910112
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## impsan -0.0205056404494382 -0.0187757407407407 -0.0165308152173913
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## impsan -0.0144841428571429 -0.0132246521739131 -0.0130824516129032
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## impsan -0.0100274835164836 -0.00675926666666667 -0.00661232608695652
##      0                   1                    1                    1
##      1                   0                    0                    0
##       y_rate_haz
## impsan -0.00654122580645162 -0.00330616304347826 0.00334249450549458
##      0                    1                    1                   1
##      1                    0                    0                   0
##       y_rate_haz
## impsan 0.00675926666666667 0.0202778 0.0207386590909091 0.0222561219512195
##      0                   1         1                  1                  1
##      1                   0         0                  0                  0
##       y_rate_haz
## impsan 0.0262860370370371 0.0266146125 0.0286274823529412 0.0304167
##      0                  1            1                  1         1
##      1                  0            0                  0         0
##       y_rate_haz
## impsan 0.0341760674157303 0.034961724137931 0.0413066296296296
##      0                  1                 1                  1
##      1                  0                 0                  0
##       y_rate_haz
## impsan 0.0439352333333333 0.04752609375 0.0478464943820225 0.0506945
##      0                  1             1                  1         1
##      1                  0             0                  0         0
##       y_rate_haz
## impsan 0.0528986086956521 0.0601649010989011 0.0656724204545455
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## impsan 0.0668498901098901 0.070736511627907 0.0709723 0.0878704666666666
##      0                  1                 1         1                  1
##      1                  0                 0         0                  0
##       y_rate_haz
## impsan 0.0898675227272727 0.0909004827586207 0.0990311162790698
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## impsan 0.1026563625 0.106959824175824 0.119356670886076 0.123033842696629
##      0            2                 1                 1                 1
##      1            0                 0                 0                 0
##       y_rate_haz
## impsan 0.128070315789474 0.136350724137931 0.141220392857143 0.1520835
##      0                 1                 1                 1         1
##      1                 0                 0                 0         0
##       y_rate_haz
## impsan 0.162001989130435 0.162452829545455 0.167462730337079 0.174896025
##      0                 1                 1                 1           1
##      1                 0                 0                 0           0
##       y_rate_haz
## impsan 0.180494703296703 0.1825002 0.185145130434783 0.185297137931034
##      0                 1         1                 1                 1
##      1                 0         0                 0                 0
##       y_rate_haz
## impsan 0.187968370786517 0.189259466666667 0.190104375 0.192289482758621
##      0                 1                 1           1                 1
##      1                 0                 0           0                 0
##       y_rate_haz
## impsan 0.196018733333333 0.196595743902439 0.20054967032967
##      0                 1                 1                1
##      1                 0                 0                0
##       y_rate_haz
## impsan 0.203892164835165 0.209537266666667 0.210577153846154
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_haz
## impsan 0.214706117647059 0.218376307692308 0.226270573170732 0.22812525
##      0                 1                 1                 2          2
##      1                 0                 0                 0          0
##       y_rate_haz
## impsan 0.238043739130435 0.250490470588235 0.257647341176471
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_haz
## impsan 0.261225776470588 0.2623440375 0.294139516483516 0.296748292682927
##      0                 1            1                 1                 1
##      1                 0            0                 0                 0
##       y_rate_haz
## impsan 0.300411851851852 0.300860836956522 0.304167 0.307584606741573
##      0                 1                 1        1                 1
##      1                 0                 0        0                 0
##       y_rate_haz
## impsan 0.307788035714286 0.318314302325581 0.327564461538462
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_haz
## impsan 0.332136379310345 0.340534793478261 0.360494222222222
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_haz
## impsan 0.365724607142857 0.367370532467532 0.373596423913043
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_haz
## impsan 0.386780259259259 0.418676929411765 0.422454166666667
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_haz
## impsan 0.423188869565217 0.466619829545455 0.544120966666667
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_haz
## impsan 0.545274987804878 0.640923321428571 0.686065566666667 0.722396625
##      0                 1                 1                 1           1
##      1                 0                 0                 0           0
##       y_rate_haz
## impsan 0.754920506024096 0.922989517241379
##      0                 1                 1
##      1                 0                 0
##       y_rate_haz
## impsan -0.181666865753425 -0.166587376021798 -0.158731959016393
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## impsan -0.155425994505494 -0.147069758241758 -0.137419801652893
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## impsan -0.13675083106267 -0.135462352459016 -0.135000147945205
##      0                 1                  1                  1
##      1                 0                  0                  0
##       y_rate_haz
## impsan -0.132864156593407 -0.132028532967033 -0.131063829268293
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## impsan -0.130716396694215 -0.128686038461538 -0.127500139726027
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## impsan -0.123827549180328 -0.123154573369565 -0.1216668 -0.120329802197802
##      0                  1                  1          1                  1
##      1                  0                  0          0                  0
##       y_rate_haz
## impsan -0.119823363636364 -0.116666794520548 -0.11563373553719
##      0                  1                  1                 1
##      1                  0                  0                 0
##       y_rate_haz
## impsan -0.113333457534247 -0.112409543478261 -0.107795447802198
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## impsan -0.106959824175824 -0.104427907356948 -0.104166780821918
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## impsan -0.102220057377049 -0.101110458791209 -0.100833443835616
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## impsan -0.0980647704918033 -0.0966667726027397 -0.096096717032967
##      0                   1                   1                  1
##      1                   0                   0                  0
##       y_rate_haz
## impsan -0.0958787282608696 -0.095000104109589 -0.0916667671232877
##      0                   1                  1                   1
##      1                   0                  0                   0
##       y_rate_haz
## impsan -0.0911672207084469 -0.0897541967213115 -0.0877404807692308
##      0                   1                   1                   2
##      1                   0                   0                   0
##       y_rate_haz
## impsan -0.0850993545706371 -0.0833334246575342 -0.0810009945652174
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## impsan -0.0808334219178082 -0.0806125655737705 -0.0793479130434783
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## impsan -0.0766667506849315 -0.0743705027472528 -0.0743705027472527
##      0                   1                   2                   1
##      1                   0                   0                   0
##       y_rate_haz
## impsan -0.0735348791208791 -0.0716667452054795 -0.0710280082417582
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## impsan -0.0701923846153846 -0.069356760989011 -0.0691667424657534
##      0                   1                  1                   1
##      1                   0                  0                   0
##       y_rate_haz
## impsan -0.0679610190735695 -0.0654746403269755 -0.0652967201086957
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## impsan -0.0651786428571429 -0.0644701793478261 -0.0641667369863013
##      0                   2                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## impsan -0.0639914180327869 -0.0625000684931507 -0.0620064958677686
##      0                   2                   2                   1
##      1                   0                   0                   0
##       y_rate_haz
## impsan -0.0616667342465754 -0.0614982459016394 -0.0610005247252747
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## impsan -0.0608334 -0.0591667315068493 -0.058333397260274
##      0          1                   1                  1
##      1          0                   0                  0
##       y_rate_haz
## impsan -0.0576580302197802 -0.0565119016393442 -0.055833394520548
##      0                   1                   1                  2
##      1                   0                   0                  0
##       y_rate_haz
## impsan -0.0550000602739726 -0.0545516902173913 -0.0541667260273972
##      0                   2                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## impsan -0.0540187295081967 -0.0533333917808219 -0.0527552520325203
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## impsan -0.0518086648351648 -0.0508333890410959 -0.0506945
##      0                   1                   1          1
##      1                   0                   0          0
##       y_rate_haz
## impsan -0.0500000547945205 -0.049301793956044 -0.0491667205479452
##      0                   1                  1                   2
##      1                   0                  0                   0
##       y_rate_haz
## impsan -0.0483333863013699 -0.0475000520547945 -0.0472411961852861
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## impsan -0.0464124032697548 -0.0457081557377049 -0.0433333808219178
##      0                   1                   1                   3
##      1                   0                   0                   0
##       y_rate_haz
## impsan -0.0413270380434783 -0.0400000438356164 -0.0387421382113821
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## impsan -0.0376030631868132 -0.0359318159340659 -0.0350961923076923
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## impsan -0.0349044098360656 -0.0348093024523161 -0.0338881711956522
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## impsan -0.033424945054945 -0.031666701369863 -0.0306653378746594
##      0                  1                  2                   1
##      1                  0                  0                   0
##       y_rate_haz
## impsan -0.0300824505494505 -0.0290870081967213 -0.0283333643835616
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## impsan -0.0278047396121884 -0.0267399560439561 -0.0248637874659401
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## impsan -0.0240349945504087 -0.0239696820652174 -0.0227493324099723
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## impsan -0.0215486158038147 -0.0206075203252033 -0.0175480961538462
##      0                   1                   1                   3
##      1                   0                   0                   0
##       y_rate_haz
## impsan -0.0174522049180328 -0.017404651226158 -0.0165758583106267
##      0                   1                  1                   1
##      1                   0                  0                   0
##       y_rate_haz
## impsan -0.0158768489010989 -0.0156617154471545 -0.0125000136986301
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## impsan -0.0115715706521739 -0.0108333452054794 -0.010000010958904
##      0                   1                   1                  1
##      1                   0                   0                  0
##       y_rate_haz
## impsan -0.00916667671232876 -0.00835623626373625 -0.00581740163934426
##      0                    1                    1                    1
##      1                    0                    0                    0
##       y_rate_haz
## impsan -0.00581740163934425 -0.00498634426229509 -0.00332422950819672
##      0                    1                    1                    1
##      1                    0                    0                    0
##       y_rate_haz
## impsan -0.00330616304347826 -0.000828792915531354 -0.000828792915531317 0
##      0                    1                     1                     1 2
##      1                    0                     0                     0 0
##       y_rate_haz
## impsan 0.000833334246575362 0.00166666849315069 0.00249317213114752
##      0                    1                   1                   2
##      1                    0                   0                   0
##       y_rate_haz
## impsan 0.00250687087912087 0.00333333698630137 0.00501374175824173
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## impsan 0.00584936538461537 0.00584936538461539 0.00747951639344261
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## impsan 0.00750000821917807 0.0100274835164835 0.01243189373297
##      0                   2                  1                1
##      1                   0                  0                0
##       y_rate_haz
## impsan 0.0141666821917808 0.0150000164383562 0.0150412252747253
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## impsan 0.0150826611570248 0.0157470653950954 0.0158333506849315
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## impsan 0.0167585123966942 0.0174522049180328 0.0175480961538462
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## impsan 0.0207198228882834 0.0225000246575342 0.0233333589041096
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## impsan 0.0275755796703297 0.0290870081967213 0.02940841160221
##      0                  1                  1                1
##      1                  0                  0                0
##       y_rate_haz
## impsan 0.0314085489130435 0.0348093024523161 0.0363677934782609
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## impsan 0.0376030631868132 0.0382286393442623 0.0401099340659341
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## impsan 0.0407218114754098 0.0427477945945946 0.0434524285714286
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## impsan 0.0491667205479452 0.0505563678474115 0.0533333917808219
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## impsan 0.0541667260273972 0.0545516902173913 0.0629882615803815
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## impsan 0.0666667397260274 0.0669498016304348 0.0716667452054795
##      0                  1                  1                  2
##      1                  0                  0                  0
##       y_rate_haz
## impsan 0.0743705027472527 0.0764572786885246 0.0810554917582417
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## impsan 0.159128239782016
##      0                 1
##      1                 0
##       y_rate_haz
## impsan -0.720743543478261 -0.691288636363636 -0.631477141304348
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## impsan -0.628388967032967 -0.562047717391304 -0.54148410989011
##      0                  1                  1                 1
##      1                  0                  0                 0
##       y_rate_haz
## impsan -0.51245527173913 -0.506945 -0.499230619565217 -0.4879345625
##      0                 1         1                  1             1
##      1                 0         0                  0             0
##       y_rate_haz
## impsan -0.484661703296703 -0.47608747826087 -0.469475152173913
##      0                  1                 1                  1
##      1                  0                 0                  0
##       y_rate_haz
## impsan -0.443025847826087 -0.429412235294118 -0.427839296703297
##      0                  1                  1                  3
##      1                  0                  0                  0
##       y_rate_haz
## impsan -0.424496802197802 -0.421686068181818 -0.416576543478261
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## impsan -0.413270380434783 -0.412548344827586 -0.402176366666667
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## impsan -0.401099340659341 -0.395744161290323 -0.393433402173913
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## impsan -0.391071857142857 -0.37101689010989 -0.367674395604396
##      0                  1                 1                  1
##      1                  0                 0                  0
##       y_rate_haz
## impsan -0.365647563829787 -0.361620766666667 -0.344276934065934
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## impsan -0.343840956521739 -0.33834306741573 -0.337591945054945
##      0                  1                 1                  3
##      1                  0                 0                  0
##       y_rate_haz
## impsan -0.330906956043956 -0.327824433333333 -0.317685533333333
##      0                  1                  2                  1
##      1                  0                  0                  0
##       y_rate_haz
## impsan -0.317536978021978 -0.314194483516484 -0.310851989010989 -0.304167
##      0                  1                  1                  2         1
##      1                  0                  0                  0         0
##       y_rate_haz
## impsan -0.300860836956522 -0.300824505494506 -0.300824505494505
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## impsan -0.300749393258427 -0.297695361702128 -0.297482010989011
##      0                  1                  1                  2
##      1                  0                  0                  0
##       y_rate_haz
## impsan -0.294139516483516 -0.277427043956044 -0.273129551020408
##      0                  2                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## impsan -0.270370666666667 -0.26739956043956 -0.257372076923077
##      0                  1                 1                  1
##      1                  0                 0                  0
##       y_rate_haz
## impsan -0.251268391304348 -0.248863909090909 -0.23731710989011
##      0                  1                  1                 1
##      1                  0                  0                 0
##       y_rate_haz
## impsan -0.233728326315789 -0.205221108433735 -0.203892164835165
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## impsan -0.201675945652174 -0.200620787234043 -0.197207175824176
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## impsan -0.184441691489362 -0.180494703296703 -0.178532804347826
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## impsan -0.177152208791209 -0.173809714285714 -0.17192047826087
##      0                  1                  1                 1
##      1                  0                  0                 0
##       y_rate_haz
## impsan -0.170880337078652 -0.17046721978022 -0.165909272727273
##      0                  1                 1                  1
##      1                  0                 0                  0
##       y_rate_haz
## impsan -0.165308152173913 -0.164320103448276 -0.163782230769231
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## impsan -0.158695826086957 -0.1584203125 -0.156989419354839
##      0                  1             1                  1
##      1                  0             0                  0
##       y_rate_haz
## impsan -0.155463133333333 -0.1520835 -0.150412252747253 -0.148703866666667
##      0                  1          1                  1                  1
##      1                  0          0                  0                  0
##       y_rate_haz
## impsan -0.148627056818182 -0.147177580645161 -0.142376042553191 -0.1419446
##      0                  1                  1                  1          1
##      1                  0                  0                  0          0
##       y_rate_haz
## impsan -0.139846896551724 -0.138858847826087 -0.138564966666667
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## impsan -0.137042274725275 -0.13369978021978 -0.128426066666667
##      0                  1                 1                  1
##      1                  0                 0                  0
##       y_rate_haz
## impsan -0.127888397727273 -0.127014791208791 -0.123788895348837
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## impsan -0.121012677419355 -0.116987307692308 -0.110302318681319
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## impsan -0.108148266666667 -0.105945808988764 -0.100310393617021
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## impsan -0.0980093666666666 -0.0935898461538461 -0.0933239659090909
##      0                   1                   1                   3
##      1                   0                   0                   0
##       y_rate_haz
## impsan -0.0922753820224719 -0.0883065483870968 -0.0873671170212766
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## impsan -0.0727355869565217 -0.0701923846153846 -0.0679522021276596
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## impsan -0.0629311034482759 -0.0614805638297872 -0.0601649010989011
##      0                   1                   2                   1
##      1                   0                   0                   0
##       y_rate_haz
## impsan -0.0528986086956521 -0.046794923076923 -0.0429801195652174
##      0                   1                  1                   1
##      1                   0                  0                   0
##       y_rate_haz
## impsan -0.0420656489361702 -0.0401099340659341 -0.0352193368421054
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## impsan -0.0327061290322581 -0.032706129032258 -0.031465551724138
##      0                   1                  1                  1
##      1                   0                  0                  0
##       y_rate_haz
## impsan -0.0270370666666667 -0.0267399560439561 -0.0264493043478261
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## impsan -0.0198369782608695 -0.0136704269662921 -0.0135185333333333
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## impsan -0.013369978021978 -0.0102528202247191 -0.00991848913043479
##      0                  1                   1                    1
##      1                  0                   0                    0
##       y_rate_haz
## impsan -0.00661232608695653 0 0.00661232608695652 0.00668498901098901
##      0                    1 1                   1                   1
##      1                    0 0                   0                   0
##       y_rate_haz
## impsan 0.0132246521739131 0.013369978021978 0.0165308152173913
##      0                  1                 1                  1
##      1                  0                 0                  0
##       y_rate_haz
## impsan 0.0168981666666667 0.020054967032967 0.0202777999999999
##      0                  1                 1                  1
##      1                  0                 0                  0
##       y_rate_haz
## impsan 0.0231431413043478 0.0233974615384616 0.0297554673913044
##      0                  1                  2                  1
##      1                  0                  0                  0
##       y_rate_haz
## impsan 0.0300824505494506 0.0341760674157303 0.0429801195652174
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## impsan 0.0434524285714285 0.0434524285714286 0.049592445652174
##      0                  1                  1                 1
##      1                  0                  0                 0
##       y_rate_haz
## impsan 0.0501374175824176 0.0553030909090909 0.0595109347826086
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## impsan 0.0601649010989012 0.0661232608695652 0.0675926666666667
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## impsan 0.0683521348314607 0.0701923846153846 0.0735348791208791
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## impsan 0.0802198681318681 0.0808954787234042 0.0859602391304348
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## impsan 0.0873671170212766 0.0912501 0.0935898461538462 0.115373689655172
##      0                  1         1                  1                 1
##      1                  0         0                  0                 0
##       y_rate_haz
## impsan 0.115715706521739 0.116987307692308 0.1216668 0.122961127659574
##      0                 1                 1         1                 1
##      1                 0                 0         0                 0
##       y_rate_haz
## impsan 0.127014791208791 0.129432765957447 0.130357285714286
##      0                 2                 1                 1
##      1                 0                 0                 0
##       y_rate_haz
## impsan 0.142165010869565 0.148777336956522 0.1520835 0.155389663043478
##      0                 1                 1         2                 1
##      1                 0                 0         0                 0
##       y_rate_haz
## impsan 0.155463133333333 0.156886136842105 0.165308152173913
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_haz
## impsan 0.167124725274725 0.168262595744681 0.175226641304348
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_haz
## impsan 0.186647931818182 0.190522186813187 0.195785655172414
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_haz
## impsan 0.198369782608696 0.207234659340659 0.20828827173913
##      0                 1                 1                1
##      1                 0                 0                0
##       y_rate_haz
## impsan 0.221512923913044 0.233974615384615 0.239953966666667
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_haz
## impsan 0.241349902173913 0.2534725 0.257880717391304 0.258378419354839
##      0                 1         1                 1                 1
##      1                 0         0                 0                 0
##       y_rate_haz
## impsan 0.267799206521739 0.271460870967742 0.276515454545455
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_haz
## impsan 0.277717695652174 0.304167 0.307546633333333 0.310851989010989
##      0                 1        1                 1                 1
##      1                 0        0                 0                 0
##       y_rate_haz
## impsan 0.3143059 0.321851127906977 0.324221967032967 0.340534793478261
##      0         1                 1                 2                 1
##      1         0                 0                 0                 0
##       y_rate_haz
## impsan 0.342187875 0.367674395604396 0.397756846153846 0.40004572826087
##      0           1                 1                 2                1
##      1           0                 0                 0                0
##       y_rate_haz
## impsan 0.421154307692308 0.471291725274725 0.518086648351648
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_haz
## impsan 0.528986086956522 0.621277276595745
##      0                 1                 1
##      1                 0                 0
##       y_rate_haz
## impsan -0.440285933701657 -0.431305587301587 -0.391306735135135
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## impsan -0.366644545945946 -0.360067962162162 -0.356551316666667
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## impsan -0.353759445652174 -0.346684967741935 -0.342395639344262
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## impsan -0.339263192307692 -0.328696596774193 -0.319126032786885
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## impsan -0.313978838709677 -0.310851989010989 -0.302504885245902
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## impsan -0.300824505494505 -0.297590416216216 -0.290797021978022
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## impsan -0.287545852459016 -0.280897393442623 -0.271105369565217
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## impsan -0.270742054945055 -0.269639935135135 -0.269262590163934
##      0                  3                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## impsan -0.269070807692308 -0.265938360655738 -0.262614131147541
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## impsan -0.259043324175824 -0.257113541436464 -0.256486767567568
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## impsan -0.253198475675676 -0.238988357142857 -0.238754741935484
##      0                  1                  2                  1
##      1                  0                  0                  0
##       y_rate_haz
## impsan -0.234224855614973 -0.231033950819672 -0.22812525
##      0                  1                  1           1
##      1                  0                  0           0
##       y_rate_haz
## impsan -0.227709721311475 -0.224385491803279 -0.22283892513369
##      0                  1                  1                 1
##      1                  0                  0                 0
##       y_rate_haz
## impsan -0.22272337704918 -0.222275884615385 -0.217262142857143
##      0                 1                  1                  1
##      1                 0                  0                  0
##       y_rate_haz
## impsan -0.215860451612903 -0.215383118918919 -0.213421044198895
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## impsan -0.211088573770492 -0.210450681081081 -0.202778 -0.201115885245902
##      0                  1                  1         1                  1
##      1                  0                  0         0                  0
##       y_rate_haz
## impsan -0.20054967032967 -0.199453770491803 -0.198941659459459
##      0                 1                  2                  1
##      1                 0                  0                  0
##       y_rate_haz
## impsan -0.198878423076923 -0.198369782608696 -0.197872080645161
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## impsan -0.196129540983607 -0.194601467741935 -0.194009221621622
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## impsan -0.191143196721311 -0.190522186813187 -0.190104375
##      0                  1                  1            1
##      1                  0                  0            0
##       y_rate_haz
## impsan -0.189481081967213 -0.188617525139665 -0.183801449197861
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## impsan -0.179883709677419 -0.178823456043956 -0.177152208791209
##      0                  1                  1                  2
##      1                  0                  0                  0
##       y_rate_haz
## impsan -0.17645046961326 -0.169535704918033 -0.163655070652174
##      0                 1                  1                  1
##      1                 0                  0                  0
##       y_rate_haz
## impsan -0.163128670391061 -0.160439736263736 -0.160348907608696
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## impsan -0.159645662983425 -0.159563016393443 -0.157900901639344
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## impsan -0.157097241758242 -0.156238786885246 -0.155425994505494
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## impsan -0.154604220994475 -0.152905572972973 -0.1520835 -0.151252442622951
##      0                  1                  1          1                  1
##      1                  0                  0          0                  0
##       y_rate_haz
## impsan -0.147928213114754 -0.147177580645161 -0.146266098360656
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## impsan -0.145471173913043 -0.145398510989011 -0.139001048387097
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## impsan -0.138108259459459 -0.137365741935484 -0.137042274725275
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## impsan -0.135371027472527 -0.133175821621622 -0.12988752972973
##      0                  1                  1                 2
##      1                  0                  0                 0
##       y_rate_haz
## impsan -0.129644950819672 -0.128243383783784 -0.126320721311475
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## impsan -0.125343543956044 -0.123672296703297 -0.123310945945946
##      0                  1                  2                  2
##      1                  0                  0                  0
##       y_rate_haz
## impsan -0.122346502793296 -0.122001049450549 -0.1216668 -0.12133437704918
##      0                  1                  1          1                 1
##      1                  0                  0          0                 0
##       y_rate_haz
## impsan -0.120674951086956 -0.119314127071823 -0.119021869565217
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## impsan -0.118010147540984 -0.11763364640884 -0.11531606043956
##      0                  2                 1                 1
##      1                  0                 0                 0
##       y_rate_haz
## impsan -0.113217716666667 -0.110756461956522 -0.109231243093923
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## impsan -0.106959824175824 -0.106869486486487 -0.106869486486486
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## impsan -0.105288576923077 -0.10361732967033 -0.0991483591160221
##      0                  1                 2                   1
##      1                  0                 0                   0
##       y_rate_haz
## impsan -0.0975318097826087 -0.0946297333333334 -0.0876133206521739
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## impsan -0.0871397351351351 -0.0854955891891892 -0.0843071576086957
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## impsan -0.0781193934426229 -0.0772748594594594 -0.0722606685082873
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## impsan -0.0686828709677419 -0.0668498901098901 -0.0661232608695652
##      0                   1                   1                   2
##      1                   0                   0                   0
##       y_rate_haz
## impsan -0.0621416451612903 -0.0614982459016394 -0.0595109347826087
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## impsan -0.0591435833333333 -0.0584936538461539 -0.0578578532608695
##      0                   1                   2                   1
##      1                   0                   0                   0
##       y_rate_haz
## impsan -0.0575451081081081 -0.0562047717391305 -0.0540741333333333
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## impsan -0.0539651129032258 -0.0534799120879121 -0.0531876721311475
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## impsan -0.0526126702702703 -0.051245527173913 -0.0501374175824176
##      0                   1                  1                   1
##      1                   0                  0                   0
##       y_rate_haz
## impsan -0.0498634426229508 -0.0490046833333333 -0.0482013278688525
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## impsan -0.0476802324324324 -0.0465392131147541 -0.0427477945945946
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## impsan -0.0417811813186813 -0.0411036486486486 -0.0382286393442623
##      0                   2                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## impsan -0.038020875 -0.0367674395604396 -0.0357843529411765
##      0            1                   1                   1
##      1            0                   0                   0
##       y_rate_haz
## impsan -0.034341435483871 -0.033424945054945 -0.0317536978021978
##      0                  2                  1                   1
##      1                  0                  0                   0
##       y_rate_haz
## impsan -0.0300824505494505 -0.0284112032967033 -0.0268876906077348
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## impsan -0.0247962228260869 -0.02433336 -0.0228942903225806
##      0                   1           1                   1
##      1                   0           0                   0
##       y_rate_haz
## impsan -0.0198369782608696 -0.016353064516129 -0.0100828839779006
##      0                   1                  1                   1
##      1                   0                  0                   0
##       y_rate_haz
## impsan -0.0100274835164835 -0.00981183870967743 -0.00167124725274725
##      0                   1                    1                    1
##      1                   0                    0                    0
##       y_rate_haz
## impsan 0.00332422950819672 0.00668498901098902 0.00981183870967739
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## impsan 0.0116348032786885 0.0132969180327869 0.0199453770491803
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## impsan 0.020054967032967 0.0202778 0.023269606557377 0.0242686436170213
##      0                 1         1                 1                  1
##      1                 0         0                 0                  0
##       y_rate_haz
## impsan 0.026739956043956 0.0285681712707182 0.034341435483871
##      0                 1                  1                 1
##      1                 0                  0                 0
##       y_rate_haz
## impsan 0.0396739565217391 0.0434524285714286 0.0484661703296703
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## impsan 0.0498634426229508 0.0518086648351648 0.0543762234636871
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## impsan 0.078982591160221 0.0847678524590164 0.0857045138121547
##      0                 1                  1                  1
##      1                 0                  0                  0
##       y_rate_haz
## impsan 0.0899418548387097 0.0942256467391304 0.11763364640884
##      0                  1                  1                1
##      1                  0                  0                0
##       y_rate_haz
## impsan 0.128686038461538 0.136464113513514 0.144603983606557
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_haz
## impsan 0.350961923076923
##      0                 1
##      1                 0
```




# Results Detail

## Results Plots
![](/tmp/50cf6f0c-8c7f-4ea5-855d-b1fa6946567e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/50cf6f0c-8c7f-4ea5-855d-b1fa6946567e/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





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
6-12 months    kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.0812726   -0.0862413   -0.0763039
6-12 months    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                -0.0722436   -0.0755241   -0.0689630
6-12 months    kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.0474268   -0.0562144   -0.0386392
6-12 months    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                -0.0358193   -0.0409597   -0.0306788
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
12-24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.0213332   -0.0246614   -0.0180049
12-24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                -0.0177294   -0.0198451   -0.0156137
12-24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.0163084   -0.0198359   -0.0127808
12-24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                -0.0140946   -0.0161728   -0.0120165


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
6-12 months    kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                -0.0748390   -0.0776839   -0.0719942
6-12 months    kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                -0.0383693   -0.0427362   -0.0340025
12-24 months   ki0047075b-MAL-ED       BANGLADESH    NA                   NA                -0.0178490   -0.0232486   -0.0124494
12-24 months   ki0047075b-MAL-ED       INDIA         NA                   NA                -0.0096142   -0.0146974   -0.0045309
12-24 months   ki0047075b-MAL-ED       PERU          NA                   NA                -0.0091460   -0.0161998   -0.0020923
12-24 months   ki1017093-NIH-Birth     BANGLADESH    NA                   NA                -0.0404278   -0.0450901   -0.0357656
12-24 months   ki1017093b-PROVIDE      BANGLADESH    NA                   NA                -0.0081896   -0.0120393   -0.0043400
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH    NA                   NA                -0.0057360   -0.0097810   -0.0016910
12-24 months   ki1135781-COHORTS       GUATEMALA     NA                   NA                -0.0304742   -0.0344652   -0.0264833
12-24 months   ki1135781-COHORTS       INDIA         NA                   NA                -0.0358489   -0.0377745   -0.0339233
12-24 months   ki1135781-COHORTS       PHILIPPINES   NA                   NA                -0.0657843   -0.0698589   -0.0617097
12-24 months   kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                -0.0187802   -0.0206302   -0.0169302
12-24 months   kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                -0.0145861   -0.0164603   -0.0127119


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
6-12 months    kiGH5241-JiVitA-3       BANGLADESH    1                    0                  0.0090290    0.0032902   0.0147679
6-12 months    kiGH5241-JiVitA-4       BANGLADESH    0                    0                  0.0000000    0.0000000   0.0000000
6-12 months    kiGH5241-JiVitA-4       BANGLADESH    1                    0                  0.0116075    0.0011908   0.0220242
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
12-24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    0                  0.0036037   -0.0001998   0.0074073
12-24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    0                  0.0000000    0.0000000   0.0000000
12-24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    0                  0.0022137   -0.0016806   0.0061080
