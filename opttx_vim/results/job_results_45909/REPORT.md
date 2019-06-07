---
title: "Optimal Treatment Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowOptTX','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
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
        value: TRUE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
      maximize:
        input: checkbox
        value: TRUE
  output_directory:
    value: '~/tmp/'
editor_options: 
  chunk_output_type: console
---







## Methods
## Outcome Variable

**Outcome Variable:** ever_wasted

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

agecat                        studyid               country                        predfeed3    ever_wasted   n_cell       n
----------------------------  --------------------  -----------------------------  ----------  ------------  -------  ------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH                     1                      0      162     248
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH                     1                      1       51     248
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH                     0                      0       31     248
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH                     0                      1        4     248
0-24 months (no birth wast)   ki0047075b-MAL-ED     BRAZIL                         1                      0      113     224
0-24 months (no birth wast)   ki0047075b-MAL-ED     BRAZIL                         1                      1        7     224
0-24 months (no birth wast)   ki0047075b-MAL-ED     BRAZIL                         0                      0       99     224
0-24 months (no birth wast)   ki0047075b-MAL-ED     BRAZIL                         0                      1        5     224
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA                          1                      0      118     235
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA                          1                      1       63     235
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA                          0                      0       29     235
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA                          0                      1       25     235
0-24 months (no birth wast)   ki0047075b-MAL-ED     NEPAL                          1                      0      105     234
0-24 months (no birth wast)   ki0047075b-MAL-ED     NEPAL                          1                      1       28     234
0-24 months (no birth wast)   ki0047075b-MAL-ED     NEPAL                          0                      0       84     234
0-24 months (no birth wast)   ki0047075b-MAL-ED     NEPAL                          0                      1       17     234
0-24 months (no birth wast)   ki0047075b-MAL-ED     PERU                           1                      0      183     286
0-24 months (no birth wast)   ki0047075b-MAL-ED     PERU                           1                      1       11     286
0-24 months (no birth wast)   ki0047075b-MAL-ED     PERU                           0                      0       84     286
0-24 months (no birth wast)   ki0047075b-MAL-ED     PERU                           0                      1        8     286
0-24 months (no birth wast)   ki0047075b-MAL-ED     SOUTH AFRICA                   1                      0       79     275
0-24 months (no birth wast)   ki0047075b-MAL-ED     SOUTH AFRICA                   1                      1       16     275
0-24 months (no birth wast)   ki0047075b-MAL-ED     SOUTH AFRICA                   0                      0      152     275
0-24 months (no birth wast)   ki0047075b-MAL-ED     SOUTH AFRICA                   0                      1       28     275
0-24 months (no birth wast)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                      0       83     249
0-24 months (no birth wast)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                      1        9     249
0-24 months (no birth wast)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                      0      136     249
0-24 months (no birth wast)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                      1       21     249
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN                       1                      0      199     376
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN                       1                      1      151     376
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN                       0                      0       12     376
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN                       0                      1       14     376
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL                          1                      0      159     466
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL                          1                      1      225     466
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL                          0                      0       45     466
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL                          0                      1       37     466
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH                     1                      0     9290   12571
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH                     1                      1     1947   12571
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH                     0                      0     1070   12571
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH                     0                      1      264   12571
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH                     1                      0       25      40
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH                     1                      1       13      40
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH                     0                      0        1      40
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH                     0                      1        1      40
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH                     1                      0      196     247
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH                     1                      1       16     247
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH                     0                      0       34     247
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH                     0                      1        1     247
0-6 months (no birth wast)    ki0047075b-MAL-ED     BRAZIL                         1                      0      116     224
0-6 months (no birth wast)    ki0047075b-MAL-ED     BRAZIL                         1                      1        4     224
0-6 months (no birth wast)    ki0047075b-MAL-ED     BRAZIL                         0                      0      101     224
0-6 months (no birth wast)    ki0047075b-MAL-ED     BRAZIL                         0                      1        3     224
0-6 months (no birth wast)    ki0047075b-MAL-ED     INDIA                          1                      0      160     234
0-6 months (no birth wast)    ki0047075b-MAL-ED     INDIA                          1                      1       21     234
0-6 months (no birth wast)    ki0047075b-MAL-ED     INDIA                          0                      0       37     234
0-6 months (no birth wast)    ki0047075b-MAL-ED     INDIA                          0                      1       16     234
0-6 months (no birth wast)    ki0047075b-MAL-ED     NEPAL                          1                      0      123     232
0-6 months (no birth wast)    ki0047075b-MAL-ED     NEPAL                          1                      1       10     232
0-6 months (no birth wast)    ki0047075b-MAL-ED     NEPAL                          0                      0       94     232
0-6 months (no birth wast)    ki0047075b-MAL-ED     NEPAL                          0                      1        5     232
0-6 months (no birth wast)    ki0047075b-MAL-ED     PERU                           1                      0      190     286
0-6 months (no birth wast)    ki0047075b-MAL-ED     PERU                           1                      1        4     286
0-6 months (no birth wast)    ki0047075b-MAL-ED     PERU                           0                      0       91     286
0-6 months (no birth wast)    ki0047075b-MAL-ED     PERU                           0                      1        1     286
0-6 months (no birth wast)    ki0047075b-MAL-ED     SOUTH AFRICA                   1                      0       89     274
0-6 months (no birth wast)    ki0047075b-MAL-ED     SOUTH AFRICA                   1                      1        5     274
0-6 months (no birth wast)    ki0047075b-MAL-ED     SOUTH AFRICA                   0                      0      173     274
0-6 months (no birth wast)    ki0047075b-MAL-ED     SOUTH AFRICA                   0                      1        7     274
0-6 months (no birth wast)    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                      0       88     249
0-6 months (no birth wast)    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                      1        4     249
0-6 months (no birth wast)    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                      0      153     249
0-6 months (no birth wast)    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                      1        4     249
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN                       1                      0      285     372
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN                       1                      1       62     372
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN                       0                      0       15     372
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN                       0                      1       10     372
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL                          1                      0      315     448
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL                          1                      1       56     448
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL                          0                      0       61     448
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL                          0                      1       16     448
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH                     1                      0    10347   12467
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH                     1                      1      807   12467
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH                     0                      0     1174   12467
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH                     0                      1      139   12467
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH                     1                      0       36      40
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH                     1                      1        2      40
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH                     0                      0        2      40
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH                     0                      1        0      40
6-24 months                   ki0047075b-MAL-ED     BANGLADESH                     1                      0      163     236
6-24 months                   ki0047075b-MAL-ED     BANGLADESH                     1                      1       39     236
6-24 months                   ki0047075b-MAL-ED     BANGLADESH                     0                      0       31     236
6-24 months                   ki0047075b-MAL-ED     BANGLADESH                     0                      1        3     236
6-24 months                   ki0047075b-MAL-ED     BRAZIL                         1                      0      112     207
6-24 months                   ki0047075b-MAL-ED     BRAZIL                         1                      1        4     207
6-24 months                   ki0047075b-MAL-ED     BRAZIL                         0                      0       89     207
6-24 months                   ki0047075b-MAL-ED     BRAZIL                         0                      1        2     207
6-24 months                   ki0047075b-MAL-ED     INDIA                          1                      0      129     233
6-24 months                   ki0047075b-MAL-ED     INDIA                          1                      1       49     233
6-24 months                   ki0047075b-MAL-ED     INDIA                          0                      0       40     233
6-24 months                   ki0047075b-MAL-ED     INDIA                          0                      1       15     233
6-24 months                   ki0047075b-MAL-ED     NEPAL                          1                      0      109     232
6-24 months                   ki0047075b-MAL-ED     NEPAL                          1                      1       23     232
6-24 months                   ki0047075b-MAL-ED     NEPAL                          0                      0       87     232
6-24 months                   ki0047075b-MAL-ED     NEPAL                          0                      1       13     232
6-24 months                   ki0047075b-MAL-ED     PERU                           1                      0      173     268
6-24 months                   ki0047075b-MAL-ED     PERU                           1                      1        9     268
6-24 months                   ki0047075b-MAL-ED     PERU                           0                      0       79     268
6-24 months                   ki0047075b-MAL-ED     PERU                           0                      1        7     268
6-24 months                   ki0047075b-MAL-ED     SOUTH AFRICA                   1                      0       78     253
6-24 months                   ki0047075b-MAL-ED     SOUTH AFRICA                   1                      1       11     253
6-24 months                   ki0047075b-MAL-ED     SOUTH AFRICA                   0                      0      139     253
6-24 months                   ki0047075b-MAL-ED     SOUTH AFRICA                   0                      1       25     253
6-24 months                   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                      0       80     239
6-24 months                   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                      1        7     239
6-24 months                   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                      0      133     239
6-24 months                   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                      1       19     239
6-24 months                   ki1000109-EE          PAKISTAN                       1                      0      234     374
6-24 months                   ki1000109-EE          PAKISTAN                       1                      1      114     374
6-24 months                   ki1000109-EE          PAKISTAN                       0                      0       16     374
6-24 months                   ki1000109-EE          PAKISTAN                       0                      1       10     374
6-24 months                   ki1113344-GMS-Nepal   NEPAL                          1                      0      188     468
6-24 months                   ki1113344-GMS-Nepal   NEPAL                          1                      1      199     468
6-24 months                   ki1113344-GMS-Nepal   NEPAL                          0                      0       48     468
6-24 months                   ki1113344-GMS-Nepal   NEPAL                          0                      1       33     468
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH                     1                      0     6316    8294
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH                     1                      1     1238    8294
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH                     0                      0      603    8294
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH                     0                      1      137    8294
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH                     1                      0       28      41
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH                     1                      1       11      41
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH                     0                      0        1      41
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH                     0                      1        1      41


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/9903d577-4c77-45c5-8c4a-10ed95ee0f6d/c3834a10-d510-4350-9a01-f46de7f07163/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9903d577-4c77-45c5-8c4a-10ed95ee0f6d/c3834a10-d510-4350-9a01-f46de7f07163/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat                        studyid               country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BRAZIL                         optimal              NA                0.0483279   0.0066621   0.0899936
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA                          optimal              NA                0.3479669   0.2782860   0.4176477
0-24 months (no birth wast)   ki0047075b-MAL-ED     NEPAL                          optimal              NA                0.1619393   0.0898381   0.2340405
0-24 months (no birth wast)   ki0047075b-MAL-ED     PERU                           optimal              NA                0.0577183   0.0247314   0.0907051
0-24 months (no birth wast)   ki0047075b-MAL-ED     SOUTH AFRICA                   optimal              NA                0.1316800   0.0708948   0.1924652
0-24 months (no birth wast)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.0960691   0.0351616   0.1569765
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN                       optimal              NA                0.4498856   0.3976912   0.5020801
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL                          optimal              NA                0.4642095   0.3568569   0.5715622
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH                     optimal              NA                0.1770750   0.1651200   0.1890300
0-6 months (no birth wast)    ki0047075b-MAL-ED     INDIA                          optimal              NA                0.1162461   0.0692723   0.1632199
0-6 months (no birth wast)    ki0047075b-MAL-ED     NEPAL                          optimal              NA                0.0509848   0.0070649   0.0949048
0-6 months (no birth wast)    ki0047075b-MAL-ED     SOUTH AFRICA                   optimal              NA                0.0389705   0.0105632   0.0673779
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN                       optimal              NA                0.1803392   0.1396010   0.2210774
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL                          optimal              NA                0.1431415   0.1011735   0.1851095
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH                     optimal              NA                0.0713844   0.0652233   0.0775454
6-24 months                   ki0047075b-MAL-ED     INDIA                          optimal              NA                0.3882415   0.2801756   0.4963074
6-24 months                   ki0047075b-MAL-ED     NEPAL                          optimal              NA                0.1505241   0.0802821   0.2207661
6-24 months                   ki0047075b-MAL-ED     PERU                           optimal              NA                0.0499952   0.0181333   0.0818572
6-24 months                   ki0047075b-MAL-ED     SOUTH AFRICA                   optimal              NA                0.1125424   0.0500925   0.1749923
6-24 months                   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.0839674   0.0245075   0.1434273
6-24 months                   ki1000109-EE          PAKISTAN                       optimal              NA                0.3213558   0.2721900   0.3705216
6-24 months                   ki1113344-GMS-Nepal   NEPAL                          optimal              NA                0.4092525   0.3017172   0.5167878
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH                     optimal              NA                0.1756710   0.1553405   0.1960015


### Parameter: E(Y)


agecat                        studyid               country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BRAZIL                         observed             NA                0.0535714   0.0240181   0.0831247
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA                          observed             NA                0.3744681   0.3124566   0.4364796
0-24 months (no birth wast)   ki0047075b-MAL-ED     NEPAL                          observed             NA                0.1923077   0.1417029   0.2429125
0-24 months (no birth wast)   ki0047075b-MAL-ED     PERU                           observed             NA                0.0664336   0.0375206   0.0953465
0-24 months (no birth wast)   ki0047075b-MAL-ED     SOUTH AFRICA                   observed             NA                0.1600000   0.1165917   0.2034083
0-24 months (no birth wast)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   observed             NA                0.1204819   0.0799679   0.1609960
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN                       observed             NA                0.4388298   0.3886039   0.4890557
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL                          observed             NA                0.5622318   0.5171396   0.6073240
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH                     observed             NA                0.1758810   0.1679189   0.1838431
0-6 months (no birth wast)    ki0047075b-MAL-ED     INDIA                          observed             NA                0.1581197   0.1112720   0.2049674
0-6 months (no birth wast)    ki0047075b-MAL-ED     NEPAL                          observed             NA                0.0646552   0.0329427   0.0963676
0-6 months (no birth wast)    ki0047075b-MAL-ED     SOUTH AFRICA                   observed             NA                0.0437956   0.0195207   0.0680705
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN                       observed             NA                0.1935484   0.1533466   0.2337501
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL                          observed             NA                0.1607143   0.1266675   0.1947611
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH                     observed             NA                0.0758803   0.0704341   0.0813266
6-24 months                   ki0047075b-MAL-ED     INDIA                          observed             NA                0.2746781   0.2172425   0.3321138
6-24 months                   ki0047075b-MAL-ED     NEPAL                          observed             NA                0.1551724   0.1084814   0.2018634
6-24 months                   ki0047075b-MAL-ED     PERU                           observed             NA                0.0597015   0.0312819   0.0881211
6-24 months                   ki0047075b-MAL-ED     SOUTH AFRICA                   observed             NA                0.1422925   0.0991596   0.1854254
6-24 months                   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   observed             NA                0.1087866   0.0692283   0.1483450
6-24 months                   ki1000109-EE          PAKISTAN                       observed             NA                0.3315508   0.2837756   0.3793260
6-24 months                   ki1113344-GMS-Nepal   NEPAL                          observed             NA                0.4957265   0.4503800   0.5410730
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH                     observed             NA                0.1657825   0.1564932   0.1750718


### Parameter: RR


agecat                        studyid               country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BRAZIL                         observed             optimal           1.1084998   0.5743827   2.1392912
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA                          observed             optimal           1.0761602   0.9722564   1.1911680
0-24 months (no birth wast)   ki0047075b-MAL-ED     NEPAL                          observed             optimal           1.1875296   0.8363487   1.6861707
0-24 months (no birth wast)   ki0047075b-MAL-ED     PERU                           observed             optimal           1.1509972   0.7960192   1.6642746
0-24 months (no birth wast)   ki0047075b-MAL-ED     SOUTH AFRICA                   observed             optimal           1.2150670   0.8545446   1.7276897
0-24 months (no birth wast)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.2541177   0.7397214   2.1262212
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN                       observed             optimal           0.9754252   0.9364966   1.0159720
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL                          observed             optimal           1.2111594   0.9804935   1.4960906
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH                     observed             optimal           0.9932571   0.9420882   1.0472051
0-6 months (no birth wast)    ki0047075b-MAL-ED     INDIA                          observed             optimal           1.3602147   1.0508290   1.7606899
0-6 months (no birth wast)    ki0047075b-MAL-ED     NEPAL                          observed             optimal           1.2681254   0.6285313   2.5585712
0-6 months (no birth wast)    ki0047075b-MAL-ED     SOUTH AFRICA                   observed             optimal           1.1238133   0.7029809   1.7965729
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN                       observed             optimal           1.0732464   0.9913771   1.1618765
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL                          observed             optimal           1.1227652   0.9203755   1.3696604
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH                     observed             optimal           1.0629824   1.0172367   1.1107852
6-24 months                   ki0047075b-MAL-ED     INDIA                          observed             optimal           0.7074929   0.5688024   0.8800002
6-24 months                   ki0047075b-MAL-ED     NEPAL                          observed             optimal           1.0308806   0.7327356   1.4503387
6-24 months                   ki0047075b-MAL-ED     PERU                           observed             optimal           1.1941444   0.7853651   1.8156915
6-24 months                   ki0047075b-MAL-ED     SOUTH AFRICA                   observed             optimal           1.2643453   0.8043780   1.9873356
6-24 months                   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.2955821   0.7093587   2.3662683
6-24 months                   ki1000109-EE          PAKISTAN                       observed             optimal           1.0317249   0.9828887   1.0829877
6-24 months                   ki1113344-GMS-Nepal   NEPAL                          observed             optimal           1.2112975   0.9525175   1.5403828
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH                     observed             optimal           0.9437102   0.8521825   1.0450684


### Parameter: PAR


agecat                        studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BRAZIL                         optimal              NA                 0.0052436   -0.0266352    0.0371223
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA                          optimal              NA                 0.0265012   -0.0087931    0.0617955
0-24 months (no birth wast)   ki0047075b-MAL-ED     NEPAL                          optimal              NA                 0.0303684   -0.0267033    0.0874402
0-24 months (no birth wast)   ki0047075b-MAL-ED     PERU                           optimal              NA                 0.0087153   -0.0128899    0.0303205
0-24 months (no birth wast)   ki0047075b-MAL-ED     SOUTH AFRICA                   optimal              NA                 0.0283200   -0.0180392    0.0746792
0-24 months (no birth wast)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0244129   -0.0267305    0.0755562
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN                       optimal              NA                -0.0110559   -0.0292456    0.0071339
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL                          optimal              NA                 0.0980222    0.0001896    0.1958548
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH                     optimal              NA                -0.0011940   -0.0105565    0.0081685
0-6 months (no birth wast)    ki0047075b-MAL-ED     INDIA                          optimal              NA                 0.0418736    0.0100855    0.0736616
0-6 months (no birth wast)    ki0047075b-MAL-ED     NEPAL                          optimal              NA                 0.0136703   -0.0226547    0.0499953
0-6 months (no birth wast)    ki0047075b-MAL-ED     SOUTH AFRICA                   optimal              NA                 0.0048251   -0.0136321    0.0232823
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN                       optimal              NA                 0.0132092   -0.0012305    0.0276489
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL                          optimal              NA                 0.0175728   -0.0110526    0.0461982
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH                     optimal              NA                 0.0044960    0.0013578    0.0076341
6-24 months                   ki0047075b-MAL-ED     INDIA                          optimal              NA                -0.1135634   -0.1979977   -0.0291290
6-24 months                   ki0047075b-MAL-ED     NEPAL                          optimal              NA                 0.0046483   -0.0466845    0.0559811
6-24 months                   ki0047075b-MAL-ED     PERU                           optimal              NA                 0.0097063   -0.0117022    0.0311148
6-24 months                   ki0047075b-MAL-ED     SOUTH AFRICA                   optimal              NA                 0.0297501   -0.0215649    0.0810650
6-24 months                   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0248192   -0.0264280    0.0760665
6-24 months                   ki1000109-EE          PAKISTAN                       optimal              NA                 0.0101950   -0.0054265    0.0258165
6-24 months                   ki1113344-GMS-Nepal   NEPAL                          optimal              NA                 0.0864740   -0.0116792    0.1846272
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH                     optimal              NA                -0.0098885   -0.0278113    0.0080343


### Parameter: PAF


agecat                        studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BRAZIL                         optimal              NA                 0.0978799   -0.7409995    0.5325555
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA                          optimal              NA                 0.0707703   -0.0285353    0.1604879
0-24 months (no birth wast)   ki0047075b-MAL-ED     NEPAL                          optimal              NA                 0.1579158   -0.1956735    0.4069402
0-24 months (no birth wast)   ki0047075b-MAL-ED     PERU                           optimal              NA                 0.1311881   -0.2562511    0.3991376
0-24 months (no birth wast)   ki0047075b-MAL-ED     SOUTH AFRICA                   optimal              NA                 0.1770001   -0.1702140    0.4211924
0-24 months (no birth wast)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.2026267   -0.3518603    0.5296821
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN                       optimal              NA                -0.0251939   -0.0678095    0.0157209
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL                          optimal              NA                 0.1743449   -0.0198946    0.3315913
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH                     optimal              NA                -0.0067887   -0.0614717    0.0450772
0-6 months (no birth wast)    ki0047075b-MAL-ED     INDIA                          optimal              NA                 0.2648219    0.0483704    0.4320408
0-6 months (no birth wast)    ki0047075b-MAL-ED     NEPAL                          optimal              NA                 0.2114345   -0.5910107    0.6091569
0-6 months (no birth wast)    ki0047075b-MAL-ED     SOUTH AFRICA                   optimal              NA                 0.1101725   -0.4225139    0.4433847
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN                       optimal              NA                 0.0682475   -0.0086979    0.1393233
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL                          optimal              NA                 0.1093419   -0.0865131    0.2698920
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH                     optimal              NA                 0.0592506    0.0169447    0.0997359
6-24 months                   ki0047075b-MAL-ED     INDIA                          optimal              NA                -0.4134417   -0.7580797   -0.1363634
6-24 months                   ki0047075b-MAL-ED     NEPAL                          optimal              NA                 0.0299555   -0.3647488    0.3105059
6-24 months                   ki0047075b-MAL-ED     PERU                           optimal              NA                 0.1625803   -0.2732931    0.4492457
6-24 months                   ki0047075b-MAL-ED     SOUTH AFRICA                   optimal              NA                 0.2090768   -0.2431966    0.4968137
6-24 months                   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.2281462   -0.4097241    0.5773937
6-24 months                   ki1000109-EE          PAKISTAN                       optimal              NA                 0.0307494   -0.0174092    0.0766285
6-24 months                   ki1113344-GMS-Nepal   NEPAL                          optimal              NA                 0.1744389   -0.0498495    0.3508107
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH                     optimal              NA                -0.0596473   -0.1734576    0.0431248
