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

**Outcome Variable:** pers_wast

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

agecat        studyid               country                        predfeed3    pers_wast   n_cell       n
------------  --------------------  -----------------------------  ----------  ----------  -------  ------
0-24 months   ki0047075b-MAL-ED     BANGLADESH                     0                    0       33     244
0-24 months   ki0047075b-MAL-ED     BANGLADESH                     0                    1        2     244
0-24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    0      199     244
0-24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    1       10     244
0-24 months   ki0047075b-MAL-ED     BRAZIL                         0                    0       98     217
0-24 months   ki0047075b-MAL-ED     BRAZIL                         0                    1        0     217
0-24 months   ki0047075b-MAL-ED     BRAZIL                         1                    0      117     217
0-24 months   ki0047075b-MAL-ED     BRAZIL                         1                    1        2     217
0-24 months   ki0047075b-MAL-ED     INDIA                          0                    0       51     238
0-24 months   ki0047075b-MAL-ED     INDIA                          0                    1        6     238
0-24 months   ki0047075b-MAL-ED     INDIA                          1                    0      166     238
0-24 months   ki0047075b-MAL-ED     INDIA                          1                    1       15     238
0-24 months   ki0047075b-MAL-ED     NEPAL                          0                    0      100     235
0-24 months   ki0047075b-MAL-ED     NEPAL                          0                    1        1     235
0-24 months   ki0047075b-MAL-ED     NEPAL                          1                    0      131     235
0-24 months   ki0047075b-MAL-ED     NEPAL                          1                    1        3     235
0-24 months   ki0047075b-MAL-ED     PERU                           0                    0       92     281
0-24 months   ki0047075b-MAL-ED     PERU                           0                    1        0     281
0-24 months   ki0047075b-MAL-ED     PERU                           1                    0      188     281
0-24 months   ki0047075b-MAL-ED     PERU                           1                    1        1     281
0-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    0      172     267
0-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1        1     267
0-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    0       93     267
0-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1        1     267
0-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    0      155     246
0-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1        0     246
0-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    0       91     246
0-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1        0     246
0-24 months   ki1000109-EE          PAKISTAN                       0                    0       40     752
0-24 months   ki1000109-EE          PAKISTAN                       0                    1       12     752
0-24 months   ki1000109-EE          PAKISTAN                       1                    0      656     752
0-24 months   ki1000109-EE          PAKISTAN                       1                    1       44     752
0-24 months   ki1113344-GMS-Nepal   NEPAL                          0                    0      134     940
0-24 months   ki1113344-GMS-Nepal   NEPAL                          0                    1       28     940
0-24 months   ki1113344-GMS-Nepal   NEPAL                          1                    0      656     940
0-24 months   ki1113344-GMS-Nepal   NEPAL                          1                    1      122     940
0-24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                    0     2512   30962
0-24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                    1      238   30962
0-24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    0    26684   30962
0-24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    1     1528   30962
0-24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    0       30     326
0-24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    1        2     326
0-24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    0      274     326
0-24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    1       20     326
0-6 months    ki0047075b-MAL-ED     BANGLADESH                     0                    0       33     244
0-6 months    ki0047075b-MAL-ED     BANGLADESH                     0                    1        2     244
0-6 months    ki0047075b-MAL-ED     BANGLADESH                     1                    0      204     244
0-6 months    ki0047075b-MAL-ED     BANGLADESH                     1                    1        5     244
0-6 months    ki0047075b-MAL-ED     BRAZIL                         0                    0       98     217
0-6 months    ki0047075b-MAL-ED     BRAZIL                         0                    1        0     217
0-6 months    ki0047075b-MAL-ED     BRAZIL                         1                    0      118     217
0-6 months    ki0047075b-MAL-ED     BRAZIL                         1                    1        1     217
0-6 months    ki0047075b-MAL-ED     INDIA                          0                    0       47     238
0-6 months    ki0047075b-MAL-ED     INDIA                          0                    1       10     238
0-6 months    ki0047075b-MAL-ED     INDIA                          1                    0      172     238
0-6 months    ki0047075b-MAL-ED     INDIA                          1                    1        9     238
0-6 months    ki0047075b-MAL-ED     NEPAL                          0                    0       98     235
0-6 months    ki0047075b-MAL-ED     NEPAL                          0                    1        3     235
0-6 months    ki0047075b-MAL-ED     NEPAL                          1                    0      132     235
0-6 months    ki0047075b-MAL-ED     NEPAL                          1                    1        2     235
0-6 months    ki0047075b-MAL-ED     PERU                           0                    0       92     281
0-6 months    ki0047075b-MAL-ED     PERU                           0                    1        0     281
0-6 months    ki0047075b-MAL-ED     PERU                           1                    0      189     281
0-6 months    ki0047075b-MAL-ED     PERU                           1                    1        0     281
0-6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0                    0      171     266
0-6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1        1     266
0-6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                    0       93     266
0-6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1        1     266
0-6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    0      155     246
0-6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1        0     246
0-6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    0       91     246
0-6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1        0     246
0-6 months    ki1000109-EE          PAKISTAN                       0                    0       40     730
0-6 months    ki1000109-EE          PAKISTAN                       0                    1       12     730
0-6 months    ki1000109-EE          PAKISTAN                       1                    0      636     730
0-6 months    ki1000109-EE          PAKISTAN                       1                    1       42     730
0-6 months    ki1113344-GMS-Nepal   NEPAL                          0                    0      128     918
0-6 months    ki1113344-GMS-Nepal   NEPAL                          0                    1       28     918
0-6 months    ki1113344-GMS-Nepal   NEPAL                          1                    0      676     918
0-6 months    ki1113344-GMS-Nepal   NEPAL                          1                    1       86     918
6-24 months   ki0047075b-MAL-ED     BANGLADESH                     0                    0       30     230
6-24 months   ki0047075b-MAL-ED     BANGLADESH                     0                    1        2     230
6-24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    0      185     230
6-24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    1       13     230
6-24 months   ki0047075b-MAL-ED     BRAZIL                         0                    0       87     197
6-24 months   ki0047075b-MAL-ED     BRAZIL                         0                    1        0     197
6-24 months   ki0047075b-MAL-ED     BRAZIL                         1                    0      108     197
6-24 months   ki0047075b-MAL-ED     BRAZIL                         1                    1        2     197
6-24 months   ki0047075b-MAL-ED     INDIA                          0                    0       47     229
6-24 months   ki0047075b-MAL-ED     INDIA                          0                    1        8     229
6-24 months   ki0047075b-MAL-ED     INDIA                          1                    0      155     229
6-24 months   ki0047075b-MAL-ED     INDIA                          1                    1       19     229
6-24 months   ki0047075b-MAL-ED     NEPAL                          0                    0       98     228
6-24 months   ki0047075b-MAL-ED     NEPAL                          0                    1        1     228
6-24 months   ki0047075b-MAL-ED     NEPAL                          1                    0      128     228
6-24 months   ki0047075b-MAL-ED     NEPAL                          1                    1        1     228
6-24 months   ki0047075b-MAL-ED     PERU                           0                    0       75     249
6-24 months   ki0047075b-MAL-ED     PERU                           0                    1        1     249
6-24 months   ki0047075b-MAL-ED     PERU                           1                    0      172     249
6-24 months   ki0047075b-MAL-ED     PERU                           1                    1        1     249
6-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    0      159     249
6-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1        1     249
6-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    0       88     249
6-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1        1     249
6-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    0      147     232
6-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1        0     232
6-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    0       85     232
6-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1        0     232
6-24 months   ki1000109-EE          PAKISTAN                       0                    0       40     734
6-24 months   ki1000109-EE          PAKISTAN                       0                    1       12     734
6-24 months   ki1000109-EE          PAKISTAN                       1                    0      608     734
6-24 months   ki1000109-EE          PAKISTAN                       1                    1       74     734
6-24 months   ki1113344-GMS-Nepal   NEPAL                          0                    0      124     918
6-24 months   ki1113344-GMS-Nepal   NEPAL                          0                    1       32     918
6-24 months   ki1113344-GMS-Nepal   NEPAL                          1                    0      610     918
6-24 months   ki1113344-GMS-Nepal   NEPAL                          1                    1      152     918
6-24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    0       28     316
6-24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    1        2     316
6-24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    0      260     316
6-24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    1       26     316


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/c61213e5-3009-4a53-b45b-847dc7bdca11/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c61213e5-3009-4a53-b45b-847dc7bdca11/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c61213e5-3009-4a53-b45b-847dc7bdca11/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c61213e5-3009-4a53-b45b-847dc7bdca11/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     INDIA        0                    NA                0.1052632   0.0254249   0.1851014
0-24 months   ki0047075b-MAL-ED     INDIA        1                    NA                0.0828729   0.0426249   0.1231209
0-24 months   ki1000109-EE          PAKISTAN     0                    NA                0.2932695   0.1489082   0.4376308
0-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.0631625   0.0377332   0.0885918
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1356327   0.0574807   0.2137848
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1552359   0.1191172   0.1913546
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0675580   0.0574483   0.0776678
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0552548   0.0510667   0.0594428
0-6 months    ki0047075b-MAL-ED     INDIA        0                    NA                0.1754386   0.0764924   0.2743848
0-6 months    ki0047075b-MAL-ED     INDIA        1                    NA                0.0497238   0.0179894   0.0814581
0-6 months    ki1000109-EE          PAKISTAN     0                    NA                0.2303381   0.0687568   0.3919194
0-6 months    ki1000109-EE          PAKISTAN     1                    NA                0.0619581   0.0362621   0.0876541
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1794872   0.0942294   0.2647449
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1128609   0.0810536   0.1446682
6-24 months   ki0047075b-MAL-ED     INDIA        0                    NA                0.1454545   0.0520757   0.2388333
6-24 months   ki0047075b-MAL-ED     INDIA        1                    NA                0.1091954   0.0627527   0.1556381
6-24 months   ki1000109-EE          PAKISTAN     0                    NA                0.2948270   0.1487220   0.4409320
6-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.1088425   0.0757864   0.1418987
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2052270   0.1166136   0.2938404
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1994551   0.1593155   0.2395946


### Parameter: E(Y)


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     INDIA        NA                   NA                0.0882353   0.0521245   0.1243460
0-24 months   ki1000109-EE          PAKISTAN     NA                   NA                0.0744681   0.0478968   0.1010394
0-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1595745   0.1264314   0.1927176
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0570377   0.0528781   0.0611972
0-6 months    ki0047075b-MAL-ED     INDIA        NA                   NA                0.0798319   0.0453258   0.1143380
0-6 months    ki1000109-EE          PAKISTAN     NA                   NA                0.0739726   0.0470855   0.1008598
0-6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1241830   0.0939798   0.1543862
6-24 months   ki0047075b-MAL-ED     INDIA        NA                   NA                0.1179039   0.0760436   0.1597643
6-24 months   ki1000109-EE          PAKISTAN     NA                   NA                0.1171662   0.0842168   0.1501157
6-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.2004357   0.1637726   0.2370989


### Parameter: RR


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED     INDIA        1                    0                 0.7872928   0.3198884   1.9376445
0-24 months   ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-EE          PAKISTAN     1                    0                 0.2153735   0.1140157   0.4068366
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    0                 1.1445308   0.6146949   2.1310585
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.8178860   0.6977910   0.9586503
0-6 months    ki0047075b-MAL-ED     INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED     INDIA        1                    0                 0.2834254   0.1209336   0.6642484
0-6 months    ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000109-EE          PAKISTAN     1                    0                 0.2689876   0.1190994   0.6075121
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    0                 0.6287964   0.3619428   1.0923960
6-24 months   ki0047075b-MAL-ED     INDIA        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED     INDIA        1                    0                 0.7507184   0.3475626   1.6215152
6-24 months   ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000109-EE          PAKISTAN     1                    0                 0.3691742   0.2064977   0.6600054
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    0                 0.9718752   0.6043531   1.5628966


### Parameter: PAR


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED     INDIA        0                    NA                -0.0170279   -0.0850350    0.0509792
0-24 months   ki1000109-EE          PAKISTAN     0                    NA                -0.2188015   -0.3550453   -0.0825577
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.0239417   -0.0468273    0.0947108
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0105204   -0.0197662   -0.0012745
0-6 months    ki0047075b-MAL-ED     INDIA        0                    NA                -0.0956067   -0.1749258   -0.0162875
0-6 months    ki1000109-EE          PAKISTAN     0                    NA                -0.1563655   -0.3083481   -0.0043828
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0553042   -0.1308730    0.0202646
6-24 months   ki0047075b-MAL-ED     INDIA        0                    NA                -0.0275506   -0.1068187    0.0517175
6-24 months   ki1000109-EE          PAKISTAN     0                    NA                -0.1776608   -0.3167979   -0.0385237
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0047913   -0.0853200    0.0757373


### Parameter: PAF


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED     INDIA        0                    NA                -0.1929825   -1.2702954    0.3731181
0-24 months   ki1000109-EE          PAKISTAN     0                    NA                -2.9381911   -5.3816014   -1.4303224
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.1500348   -0.4340521    0.4962241
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.1844464   -0.3589185   -0.0323748
0-6 months    ki0047075b-MAL-ED     INDIA        0                    NA                -1.1975993   -2.3193835   -0.4549215
0-6 months    ki1000109-EE          PAKISTAN     0                    NA                -2.1138297   -4.8847148   -0.6476474
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.4453441   -1.1933264    0.0475564
6-24 months   ki0047075b-MAL-ED     INDIA        0                    NA                -0.2336700   -1.1216072    0.2826468
6-24 months   ki1000109-EE          PAKISTAN     0                    NA                -1.5163140   -3.0889383   -0.5485282
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0239045   -0.5159128    0.3084165
