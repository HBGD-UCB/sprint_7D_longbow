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

unadjusted

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
![](/tmp/65544feb-805e-42de-b1c0-09c11a5eb955/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/65544feb-805e-42de-b1c0-09c11a5eb955/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/65544feb-805e-42de-b1c0-09c11a5eb955/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/65544feb-805e-42de-b1c0-09c11a5eb955/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     INDIA        0                    NA                0.1052632   0.0254249   0.1851014
0-24 months   ki0047075b-MAL-ED     INDIA        1                    NA                0.0828729   0.0426249   0.1231209
0-24 months   ki1000109-EE          PAKISTAN     0                    NA                0.2307692   0.0686043   0.3929342
0-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.0628571   0.0373963   0.0883180
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1728395   0.0904097   0.2552694
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1568123   0.1206390   0.1929856
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0865455   0.0701678   0.1029231
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0541613   0.0499010   0.0584217
0-6 months    ki0047075b-MAL-ED     INDIA        0                    NA                0.1754386   0.0764924   0.2743848
0-6 months    ki0047075b-MAL-ED     INDIA        1                    NA                0.0497238   0.0179894   0.0814581
0-6 months    ki1000109-EE          PAKISTAN     0                    NA                0.2307692   0.0685978   0.3929407
0-6 months    ki1000109-EE          PAKISTAN     1                    NA                0.0619469   0.0362508   0.0876430
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1794872   0.0942294   0.2647449
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1128609   0.0810536   0.1446682
6-24 months   ki0047075b-MAL-ED     INDIA        0                    NA                0.1454545   0.0520757   0.2388333
6-24 months   ki0047075b-MAL-ED     INDIA        1                    NA                0.1091954   0.0627527   0.1556381
6-24 months   ki1000109-EE          PAKISTAN     0                    NA                0.2307692   0.0685990   0.3929395
6-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.1085044   0.0754487   0.1415601
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2051282   0.1154193   0.2948371
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1994751   0.1593061   0.2396441


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
0-24 months   ki1000109-EE          PAKISTAN     1                    0                 0.2723810   0.1210378   0.6129602
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    0                 0.9072714   0.5341448   1.5410453
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.6258139   0.5102555   0.7675431
0-6 months    ki0047075b-MAL-ED     INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED     INDIA        1                    0                 0.2834254   0.1209336   0.6642484
0-6 months    ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000109-EE          PAKISTAN     1                    0                 0.2684366   0.1186976   0.6070737
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    0                 0.6287964   0.3619428   1.0923960
6-24 months   ki0047075b-MAL-ED     INDIA        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED     INDIA        1                    0                 0.7507184   0.3475626   1.6215152
6-24 months   ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000109-EE          PAKISTAN     1                    0                 0.4701857   0.2185896   1.0113682
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    0                 0.9724409   0.6008487   1.5738428


### Parameter: PAR


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED     INDIA        0                    NA                -0.0170279   -0.0850350    0.0509792
0-24 months   ki1000109-EE          PAKISTAN     0                    NA                -0.1563011   -0.3091626   -0.0034397
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0132650   -0.0877711    0.0612410
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0295078   -0.0448874   -0.0141282
0-6 months    ki0047075b-MAL-ED     INDIA        0                    NA                -0.0956067   -0.1749258   -0.0162875
0-6 months    ki1000109-EE          PAKISTAN     0                    NA                -0.1567966   -0.3093604   -0.0042328
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0553042   -0.1308730    0.0202646
6-24 months   ki0047075b-MAL-ED     INDIA        0                    NA                -0.0275506   -0.1068187    0.0517175
6-24 months   ki1000109-EE          PAKISTAN     0                    NA                -0.1136030   -0.2674163    0.0402103
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0046925   -0.0862812    0.0768962


### Parameter: PAF


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED     INDIA        0                    NA                -0.1929825   -1.2702954    0.3731181
0-24 months   ki1000109-EE          PAKISTAN     0                    NA                -2.0989011   -4.8765151   -0.6341638
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0831276   -0.6665403    0.2960474
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.5173388   -0.8104979   -0.2716486
0-6 months    ki0047075b-MAL-ED     INDIA        0                    NA                -1.1975993   -2.3193835   -0.4549215
0-6 months    ki1000109-EE          PAKISTAN     0                    NA                -2.1196581   -4.9019108   -0.6490027
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.4453441   -1.1933264    0.0475564
6-24 months   ki0047075b-MAL-ED     INDIA        0                    NA                -0.2336700   -1.1216072    0.2826468
6-24 months   ki1000109-EE          PAKISTAN     0                    NA                -0.9695885   -2.8093271   -0.0183633
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0234114   -0.5232948    0.3124307
