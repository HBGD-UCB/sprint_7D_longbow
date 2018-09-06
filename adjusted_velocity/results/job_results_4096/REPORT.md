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
![](/tmp/3e445635-2ea2-4510-85c5-9ccfab88972d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/3e445635-2ea2-4510-85c5-9ccfab88972d/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH    0                    NA                3.3460498   3.2210225   3.4710771
0-3 months     ki0047075b-MAL-ED       BANGLADESH    1                    NA                3.5553712   3.4916602   3.6190822
0-3 months     ki0047075b-MAL-ED       INDIA         0                    NA                3.7773961   3.6791854   3.8756068
0-3 months     ki0047075b-MAL-ED       INDIA         1                    NA                3.8075534   3.7114126   3.9036942
0-3 months     ki0047075b-MAL-ED       PERU          0                    NA                3.3524802   3.2849930   3.4199674
0-3 months     ki0047075b-MAL-ED       PERU          1                    NA                3.5688306   3.4710399   3.6666212
0-3 months     ki1017093-NIH-Birth     BANGLADESH    0                    NA                3.2724062   3.2103289   3.3344835
0-3 months     ki1017093-NIH-Birth     BANGLADESH    1                    NA                3.2302068   3.1493463   3.3110673
0-3 months     ki1017093b-PROVIDE      BANGLADESH    0                    NA                3.3661149   3.2779664   3.4542634
0-3 months     ki1017093b-PROVIDE      BANGLADESH    1                    NA                3.4853350   3.4451695   3.5255004
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                3.2569476   3.1886408   3.3252543
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                3.3135874   3.2724741   3.3547007
0-3 months     ki1135781-COHORTS       GUATEMALA     0                    NA                2.6574330   2.6004429   2.7144231
0-3 months     ki1135781-COHORTS       GUATEMALA     1                    NA                2.8407761   2.7698039   2.9117482
0-3 months     ki1135781-COHORTS       INDIA         0                    NA                3.5080242   3.4876794   3.5283690
0-3 months     ki1135781-COHORTS       INDIA         1                    NA                3.5741468   3.5489810   3.5993125
0-3 months     kiGH5241-JiVitA-3       BANGLADESH    0                    NA                3.7085322   3.6926914   3.7243730
0-3 months     kiGH5241-JiVitA-3       BANGLADESH    1                    NA                3.7276895   3.7162244   3.7391545
0-3 months     kiGH5241-JiVitA-4       BANGLADESH    0                    NA                3.6195081   3.5579135   3.6811027
0-3 months     kiGH5241-JiVitA-4       BANGLADESH    1                    NA                3.6497793   3.6144197   3.6851390
3-6 months     ki0047075b-MAL-ED       BANGLADESH    0                    NA                1.9600318   1.8887148   2.0313488
3-6 months     ki0047075b-MAL-ED       BANGLADESH    1                    NA                1.9552518   1.9032298   2.0072739
3-6 months     ki0047075b-MAL-ED       INDIA         0                    NA                1.7055484   1.6296895   1.7814074
3-6 months     ki0047075b-MAL-ED       INDIA         1                    NA                1.6992184   1.6198157   1.7786211
3-6 months     ki0047075b-MAL-ED       PERU          0                    NA                2.0189534   1.9474257   2.0904811
3-6 months     ki0047075b-MAL-ED       PERU          1                    NA                1.5606179   1.4722487   1.6489871
3-6 months     ki1017093-NIH-Birth     BANGLADESH    0                    NA                1.8191343   1.7641733   1.8740954
3-6 months     ki1017093-NIH-Birth     BANGLADESH    1                    NA                1.8353587   1.7630792   1.9076382
3-6 months     ki1017093b-PROVIDE      BANGLADESH    0                    NA                1.8109159   1.6979136   1.9239182
3-6 months     ki1017093b-PROVIDE      BANGLADESH    1                    NA                1.9693009   1.9329993   2.0056025
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                2.0733937   2.0075907   2.1391967
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                1.9898130   1.9520094   2.0276165
3-6 months     ki1114097-CONTENT       PERU          0                    NA                2.1274947   1.9729307   2.2820587
3-6 months     ki1114097-CONTENT       PERU          1                    NA                2.0922795   2.0429894   2.1415695
3-6 months     ki1135781-COHORTS       GUATEMALA     0                    NA                1.7526720   1.7135470   1.7917970
3-6 months     ki1135781-COHORTS       GUATEMALA     1                    NA                1.8381035   1.8015247   1.8746822
3-6 months     ki1135781-COHORTS       INDIA         0                    NA                1.8368674   1.8198947   1.8538401
3-6 months     ki1135781-COHORTS       INDIA         1                    NA                1.8861860   1.8658913   1.9064806
3-6 months     kiGH5241-JiVitA-3       BANGLADESH    0                    NA                1.9141922   1.8969278   1.9314565
3-6 months     kiGH5241-JiVitA-3       BANGLADESH    1                    NA                1.9225107   1.9106121   1.9344093
3-6 months     kiGH5241-JiVitA-4       BANGLADESH    0                    NA                1.8804323   1.8238987   1.9369659
3-6 months     kiGH5241-JiVitA-4       BANGLADESH    1                    NA                1.8970578   1.8632809   1.9308346
6-12 months    ki0047075b-MAL-ED       BANGLADESH    0                    NA                1.0262673   0.9863038   1.0662309
6-12 months    ki0047075b-MAL-ED       BANGLADESH    1                    NA                1.1142594   1.0867242   1.1417947
6-12 months    ki0047075b-MAL-ED       INDIA         0                    NA                1.0739759   1.0391250   1.1088268
6-12 months    ki0047075b-MAL-ED       INDIA         1                    NA                1.1436133   1.1052232   1.1820034
6-12 months    ki0047075b-MAL-ED       PERU          0                    NA                1.2096514   1.1716922   1.2476106
6-12 months    ki0047075b-MAL-ED       PERU          1                    NA                1.1788640   1.1383057   1.2194222
6-12 months    ki1017093-NIH-Birth     BANGLADESH    0                    NA                1.1464830   1.1195963   1.1733697
6-12 months    ki1017093-NIH-Birth     BANGLADESH    1                    NA                1.2017960   1.1629993   1.2405926
6-12 months    ki1017093b-PROVIDE      BANGLADESH    0                    NA                1.0571333   0.9793079   1.1349586
6-12 months    ki1017093b-PROVIDE      BANGLADESH    1                    NA                1.1790957   1.1614857   1.1967057
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                1.2026915   1.1762868   1.2290961
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                1.2294511   1.2104033   1.2484989
6-12 months    ki1114097-CONTENT       PERU          0                    NA                1.2286480   1.1494891   1.3078068
6-12 months    ki1114097-CONTENT       PERU          1                    NA                1.3032713   1.2730219   1.3335208
6-12 months    ki1135781-COHORTS       GUATEMALA     0                    NA                1.0051068   0.9839006   1.0263131
6-12 months    ki1135781-COHORTS       GUATEMALA     1                    NA                0.9741680   0.9518943   0.9964417
6-12 months    ki1135781-COHORTS       INDIA         0                    NA                1.0677014   1.0556570   1.0797458
6-12 months    ki1135781-COHORTS       INDIA         1                    NA                1.0904937   1.0768216   1.1041658
6-12 months    ki1135781-COHORTS       PHILIPPINES   0                    NA                1.0367393   1.0171369   1.0563417
6-12 months    ki1135781-COHORTS       PHILIPPINES   1                    NA                1.1835552   1.1516407   1.2154697
6-12 months    kiGH5241-JiVitA-3       BANGLADESH    0                    NA                1.0929439   1.0830270   1.1028607
6-12 months    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                1.1110334   1.1033570   1.1187097
6-12 months    kiGH5241-JiVitA-4       BANGLADESH    0                    NA                1.1704568   1.1510654   1.1898481
6-12 months    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                1.2090803   1.1970534   1.2211072
12-24 months   ki0047075b-MAL-ED       BANGLADESH    0                    NA                0.8747828   0.8316661   0.9178995
12-24 months   ki0047075b-MAL-ED       BANGLADESH    1                    NA                0.8466012   0.8300699   0.8631325
12-24 months   ki0047075b-MAL-ED       INDIA         0                    NA                0.8864714   0.8641172   0.9088256
12-24 months   ki0047075b-MAL-ED       INDIA         1                    NA                0.9128981   0.8904676   0.9353286
12-24 months   ki0047075b-MAL-ED       PERU          0                    NA                0.8657198   0.8426415   0.8887980
12-24 months   ki0047075b-MAL-ED       PERU          1                    NA                1.0250242   0.9965857   1.0534627
12-24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.7298455   0.7113276   0.7483634
12-24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.7104703   0.6881246   0.7328160
12-24 months   ki1017093b-PROVIDE      BANGLADESH    0                    NA                0.8008217   0.7284963   0.8731470
12-24 months   ki1017093b-PROVIDE      BANGLADESH    1                    NA                0.8594633   0.8473251   0.8716015
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                0.8049270   0.7891965   0.8206575
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                0.8753902   0.8624028   0.8883776
12-24 months   ki1135781-COHORTS       GUATEMALA     0                    NA                0.7770276   0.7648239   0.7892313
12-24 months   ki1135781-COHORTS       GUATEMALA     1                    NA                0.9737036   0.9601000   0.9873073
12-24 months   ki1135781-COHORTS       INDIA         0                    NA                0.7954258   0.7883829   0.8024687
12-24 months   ki1135781-COHORTS       INDIA         1                    NA                0.8459317   0.8379213   0.8539422
12-24 months   ki1135781-COHORTS       PHILIPPINES   0                    NA                0.6702055   0.6579865   0.6824246
12-24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                0.7207514   0.7025510   0.7389518
12-24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.7784669   0.7706612   0.7862727
12-24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.8026069   0.7967823   0.8084314
12-24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.8386640   0.8295163   0.8478118
12-24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.8529500   0.8469664   0.8589337


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


agecat         studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH    0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       BANGLADESH    1                    0                  0.2093214    0.0763168    0.3423260
0-3 months     ki0047075b-MAL-ED       INDIA         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       INDIA         1                    0                  0.0301573   -0.1148629    0.1751775
0-3 months     ki0047075b-MAL-ED       PERU          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       PERU          1                    0                  0.2163503    0.0969227    0.3357779
0-3 months     ki1017093-NIH-Birth     BANGLADESH    0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth     BANGLADESH    1                    0                 -0.0421994   -0.1382810    0.0538822
0-3 months     ki1017093b-PROVIDE      BANGLADESH    0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE      BANGLADESH    1                    0                  0.1192201    0.0249430    0.2134972
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH    0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH    1                    0                  0.0566398   -0.0230833    0.1363629
0-3 months     ki1135781-COHORTS       GUATEMALA     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS       GUATEMALA     1                    0                  0.1833431    0.0924179    0.2742683
0-3 months     ki1135781-COHORTS       INDIA         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS       INDIA         1                    0                  0.0661225    0.0346667    0.0975784
0-3 months     kiGH5241-JiVitA-3       BANGLADESH    0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3       BANGLADESH    1                    0                  0.0191573    0.0019248    0.0363897
0-3 months     kiGH5241-JiVitA-4       BANGLADESH    0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4       BANGLADESH    1                    0                  0.0302713   -0.0409210    0.1014635
3-6 months     ki0047075b-MAL-ED       BANGLADESH    0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       BANGLADESH    1                    0                 -0.0047799   -0.0897923    0.0802324
3-6 months     ki0047075b-MAL-ED       INDIA         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       INDIA         1                    0                 -0.0063301   -0.1151409    0.1024807
3-6 months     ki0047075b-MAL-ED       PERU          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       PERU          1                    0                 -0.4583355   -0.5737944   -0.3428766
3-6 months     ki1017093-NIH-Birth     BANGLADESH    0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth     BANGLADESH    1                    0                  0.0162244   -0.0694615    0.1019103
3-6 months     ki1017093b-PROVIDE      BANGLADESH    0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE      BANGLADESH    1                    0                  0.1583850    0.0396561    0.2771138
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH    0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH    1                    0                 -0.0835808   -0.1593269   -0.0078346
3-6 months     ki1114097-CONTENT       PERU          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CONTENT       PERU          1                    0                 -0.0352153   -0.1977209    0.1272904
3-6 months     ki1135781-COHORTS       GUATEMALA     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS       GUATEMALA     1                    0                  0.0854314    0.0365808    0.1342821
3-6 months     ki1135781-COHORTS       INDIA         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS       INDIA         1                    0                  0.0493186    0.0232994    0.0753378
3-6 months     kiGH5241-JiVitA-3       BANGLADESH    0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3       BANGLADESH    1                    0                  0.0083185   -0.0119353    0.0285723
3-6 months     kiGH5241-JiVitA-4       BANGLADESH    0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4       BANGLADESH    1                    0                  0.0166255   -0.0488231    0.0820741
6-12 months    ki0047075b-MAL-ED       BANGLADESH    0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       BANGLADESH    1                    0                  0.0879921    0.0398423    0.1361419
6-12 months    ki0047075b-MAL-ED       INDIA         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       INDIA         1                    0                  0.0696373    0.0209882    0.1182864
6-12 months    ki0047075b-MAL-ED       PERU          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       PERU          1                    0                 -0.0307874   -0.0858825    0.0243076
6-12 months    ki1017093-NIH-Birth     BANGLADESH    0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth     BANGLADESH    1                    0                  0.0553130    0.0081226    0.1025034
6-12 months    ki1017093b-PROVIDE      BANGLADESH    0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE      BANGLADESH    1                    0                  0.1219624    0.0421707    0.2017541
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH    0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH    1                    0                  0.0267596   -0.0056482    0.0591675
6-12 months    ki1114097-CONTENT       PERU          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CONTENT       PERU          1                    0                  0.0746234   -0.0098587    0.1591055
6-12 months    ki1135781-COHORTS       GUATEMALA     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS       GUATEMALA     1                    0                 -0.0309388   -0.0615812   -0.0002965
6-12 months    ki1135781-COHORTS       INDIA         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS       INDIA         1                    0                  0.0227923    0.0048929    0.0406917
6-12 months    ki1135781-COHORTS       PHILIPPINES   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS       PHILIPPINES   1                    0                  0.1468159    0.1098218    0.1838101
6-12 months    kiGH5241-JiVitA-3       BANGLADESH    0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3       BANGLADESH    1                    0                  0.0180895    0.0061313    0.0300477
6-12 months    kiGH5241-JiVitA-4       BANGLADESH    0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4       BANGLADESH    1                    0                  0.0386236    0.0154355    0.0618116
12-24 months   ki0047075b-MAL-ED       BANGLADESH    0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       BANGLADESH    1                    0                 -0.0281815   -0.0743241    0.0179610
12-24 months   ki0047075b-MAL-ED       INDIA         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       INDIA         1                    0                  0.0264267   -0.0049161    0.0577694
12-24 months   ki0047075b-MAL-ED       PERU          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       PERU          1                    0                  0.1593044    0.1205417    0.1980671
12-24 months   ki1017093-NIH-Birth     BANGLADESH    0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093-NIH-Birth     BANGLADESH    1                    0                 -0.0193752   -0.0486233    0.0098728
12-24 months   ki1017093b-PROVIDE      BANGLADESH    0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE      BANGLADESH    1                    0                  0.0586416   -0.0146793    0.1319625
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    0                  0.0704632    0.0500337    0.0908927
12-24 months   ki1135781-COHORTS       GUATEMALA     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS       GUATEMALA     1                    0                  0.1966760    0.1781477    0.2152043
12-24 months   ki1135781-COHORTS       INDIA         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS       INDIA         1                    0                  0.0505060    0.0401041    0.0609078
12-24 months   ki1135781-COHORTS       PHILIPPINES   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS       PHILIPPINES   1                    0                  0.0505458    0.0292637    0.0718280
12-24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    0                  0.0241399    0.0149918    0.0332880
12-24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    0                  0.0142860    0.0039213    0.0246506
