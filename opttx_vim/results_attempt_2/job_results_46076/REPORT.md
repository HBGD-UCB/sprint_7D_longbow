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
![](/tmp/ed3dbd8d-9954-42ab-8233-8614b295d015/63a730e7-02c2-43bd-bb0e-f4f4e59f38a2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ed3dbd8d-9954-42ab-8233-8614b295d015/63a730e7-02c2-43bd-bb0e-f4f4e59f38a2/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat                        studyid               country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BRAZIL                         optimal              NA                0.0477509   0.0063173   0.0891845
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA                          optimal              NA                0.3487891   0.2791270   0.4184512
0-24 months (no birth wast)   ki0047075b-MAL-ED     NEPAL                          optimal              NA                0.1697448   0.0954882   0.2440015
0-24 months (no birth wast)   ki0047075b-MAL-ED     PERU                           optimal              NA                0.0563653   0.0236891   0.0890416
0-24 months (no birth wast)   ki0047075b-MAL-ED     SOUTH AFRICA                   optimal              NA                0.1445906   0.0821977   0.2069834
0-24 months (no birth wast)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.0973234   0.0363249   0.1583220
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN                       optimal              NA                0.4324002   0.3804040   0.4843964
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL                          optimal              NA                0.4827433   0.3728366   0.5926500
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH                     optimal              NA                0.1833548   0.1703685   0.1963412
0-6 months (no birth wast)    ki0047075b-MAL-ED     INDIA                          optimal              NA                0.1168335   0.0697546   0.1639123
0-6 months (no birth wast)    ki0047075b-MAL-ED     NEPAL                          optimal              NA                0.0495814   0.0064129   0.0927498
0-6 months (no birth wast)    ki0047075b-MAL-ED     SOUTH AFRICA                   optimal              NA                0.0589962   0.0147446   0.1032477
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN                       optimal              NA                0.1802769   0.1397565   0.2207974
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL                          optimal              NA                0.1494922   0.1023538   0.1966306
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH                     optimal              NA                0.0733779   0.0656537   0.0811020
6-24 months                   ki0047075b-MAL-ED     INDIA                          optimal              NA                0.3548290   0.2426538   0.4670042
6-24 months                   ki0047075b-MAL-ED     NEPAL                          optimal              NA                0.1360410   0.0691425   0.2029395
6-24 months                   ki0047075b-MAL-ED     PERU                           optimal              NA                0.0489164   0.0173945   0.0804383
6-24 months                   ki0047075b-MAL-ED     SOUTH AFRICA                   optimal              NA                0.0994776   0.0444617   0.1544935
6-24 months                   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.0796645   0.0220976   0.1372314
6-24 months                   ki1000109-EE          PAKISTAN                       optimal              NA                0.3272744   0.2778917   0.3766572
6-24 months                   ki1113344-GMS-Nepal   NEPAL                          optimal              NA                0.4039198   0.2957337   0.5121059
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH                     optimal              NA                0.1774187   0.1570982   0.1977393


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


agecat                        studyid               country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  --------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BRAZIL                         observed             optimal           1.1218934   0.5781809   2.176905
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA                          observed             optimal           1.0736233   0.9702207   1.188046
0-24 months (no birth wast)   ki0047075b-MAL-ED     NEPAL                          observed             optimal           1.1329223   0.8052463   1.593938
0-24 months (no birth wast)   ki0047075b-MAL-ED     PERU                           observed             optimal           1.1786243   0.8105242   1.713897
0-24 months (no birth wast)   ki0047075b-MAL-ED     SOUTH AFRICA                   observed             optimal           1.1065729   0.7999884   1.530652
0-24 months (no birth wast)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.2379539   0.7348123   2.085607
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN                       observed             optimal           1.0148696   0.9828431   1.047940
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL                          observed             optimal           1.1646599   0.9466381   1.432895
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH                     observed             optimal           0.9592383   0.9049207   1.016816
0-6 months (no birth wast)    ki0047075b-MAL-ED     INDIA                          observed             optimal           1.3533763   1.0462065   1.750732
0-6 months (no birth wast)    ki0047075b-MAL-ED     NEPAL                          observed             optimal           1.3040217   0.6411260   2.652322
0-6 months (no birth wast)    ki0047075b-MAL-ED     SOUTH AFRICA                   observed             optimal           0.7423470   0.4796036   1.149030
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN                       observed             optimal           1.0736170   0.9933129   1.160413
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL                          observed             optimal           1.0750681   0.8516568   1.357086
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH                     observed             optimal           1.0341036   0.9584087   1.115777
6-24 months                   ki0047075b-MAL-ED     INDIA                          observed             optimal           0.7741141   0.5949360   1.007256
6-24 months                   ki0047075b-MAL-ED     NEPAL                          observed             optimal           1.1406299   0.7777600   1.672800
6-24 months                   ki0047075b-MAL-ED     PERU                           observed             optimal           1.2204801   0.7981707   1.866232
6-24 months                   ki0047075b-MAL-ED     SOUTH AFRICA                   observed             optimal           1.4303975   0.8975936   2.279469
6-24 months                   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.3655600   0.7382176   2.526022
6-24 months                   ki1000109-EE          PAKISTAN                       observed             optimal           1.0130666   0.9719684   1.055902
6-24 months                   ki1113344-GMS-Nepal   NEPAL                          observed             optimal           1.2272894   0.9603512   1.568425
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH                     observed             optimal           0.9344137   0.8445402   1.033851


### Parameter: PAR


agecat                        studyid               country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BRAZIL                         optimal              NA                 0.0058205   -0.0259553   0.0375964
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA                          optimal              NA                 0.0256790   -0.0096188   0.0609768
0-24 months (no birth wast)   ki0047075b-MAL-ED     NEPAL                          optimal              NA                 0.0225629   -0.0355093   0.0806351
0-24 months (no birth wast)   ki0047075b-MAL-ED     PERU                           optimal              NA                 0.0100682   -0.0114009   0.0315374
0-24 months (no birth wast)   ki0047075b-MAL-ED     SOUTH AFRICA                   optimal              NA                 0.0154094   -0.0315113   0.0623301
0-24 months (no birth wast)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0231585   -0.0280303   0.0743473
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN                       optimal              NA                 0.0064296   -0.0074219   0.0202811
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL                          optimal              NA                 0.0794884   -0.0203031   0.1792799
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH                     optimal              NA                -0.0074739   -0.0181397   0.0031920
0-6 months (no birth wast)    ki0047075b-MAL-ED     INDIA                          optimal              NA                 0.0412862    0.0094413   0.0731310
0-6 months (no birth wast)    ki0047075b-MAL-ED     NEPAL                          optimal              NA                 0.0150738   -0.0207567   0.0509043
0-6 months (no birth wast)    ki0047075b-MAL-ED     SOUTH AFRICA                   optimal              NA                -0.0152005   -0.0433627   0.0129617
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN                       optimal              NA                 0.0132714   -0.0009002   0.0274431
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL                          optimal              NA                 0.0112221   -0.0236772   0.0461214
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH                     optimal              NA                 0.0025025   -0.0030758   0.0080807
6-24 months                   ki0047075b-MAL-ED     INDIA                          optimal              NA                -0.0801509   -0.1730748   0.0127731
6-24 months                   ki0047075b-MAL-ED     NEPAL                          optimal              NA                 0.0191314   -0.0331625   0.0714254
6-24 months                   ki0047075b-MAL-ED     PERU                           optimal              NA                 0.0107851   -0.0105110   0.0320812
6-24 months                   ki0047075b-MAL-ED     SOUTH AFRICA                   optimal              NA                 0.0428149   -0.0054633   0.0910931
6-24 months                   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0291221   -0.0207396   0.0789839
6-24 months                   ki1000109-EE          PAKISTAN                       optimal              NA                 0.0042764   -0.0092764   0.0178292
6-24 months                   ki1113344-GMS-Nepal   NEPAL                          optimal              NA                 0.0918067   -0.0070140   0.1906274
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH                     optimal              NA                -0.0116362   -0.0295756   0.0063031


### Parameter: PAF


agecat                        studyid               country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BRAZIL                         optimal              NA                 0.1086497   -0.7295626   0.5406322
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA                          optimal              NA                 0.0685746   -0.0306934   0.1582819
0-24 months (no birth wast)   ki0047075b-MAL-ED     NEPAL                          optimal              NA                 0.1173269   -0.2418561   0.3726231
0-24 months (no birth wast)   ki0047075b-MAL-ED     PERU                           optimal              NA                 0.1515532   -0.2337695   0.4165345
0-24 months (no birth wast)   ki0047075b-MAL-ED     SOUTH AFRICA                   optimal              NA                 0.0963090   -0.2500182   0.3466835
0-24 months (no birth wast)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.1922155   -0.3608917   0.5205234
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN                       optimal              NA                 0.0146517   -0.0174564   0.0457466
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL                          optimal              NA                 0.1413802   -0.0563699   0.3021120
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH                     optimal              NA                -0.0424938   -0.1050692   0.0165382
0-6 months (no birth wast)    ki0047075b-MAL-ED     INDIA                          optimal              NA                 0.2611072    0.0441657   0.4288104
0-6 months (no birth wast)    ki0047075b-MAL-ED     NEPAL                          optimal              NA                 0.2331416   -0.5597558   0.6229719
0-6 months (no birth wast)    ki0047075b-MAL-ED     SOUTH AFRICA                   optimal              NA                -0.3470788   -1.0850552   0.1297010
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN                       optimal              NA                 0.0685691   -0.0067321   0.1382380
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL                          optimal              NA                 0.0698263   -0.1741819   0.2631269
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH                     optimal              NA                 0.0329789   -0.0433962   0.1037635
6-24 months                   ki0047075b-MAL-ED     INDIA                          optimal              NA                -0.2917993   -0.6808530   0.0072033
6-24 months                   ki0047075b-MAL-ED     NEPAL                          optimal              NA                 0.1232915   -0.2857437   0.4021998
6-24 months                   ki0047075b-MAL-ED     PERU                           optimal              NA                 0.1806503   -0.2528649   0.4641609
6-24 months                   ki0047075b-MAL-ED     SOUTH AFRICA                   optimal              NA                 0.3008936   -0.1140899   0.5613014
6-24 months                   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.2676997   -0.3546142   0.6041207
6-24 months                   ki1000109-EE          PAKISTAN                       optimal              NA                 0.0128980   -0.0288401   0.0529429
6-24 months                   ki1113344-GMS-Nepal   NEPAL                          optimal              NA                 0.1851962   -0.0412857   0.3624179
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH                     optimal              NA                -0.0701898   -0.1840763   0.0327429
