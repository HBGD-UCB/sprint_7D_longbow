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

**Intervention Variable:** earlybf

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* vagbrth
* W_birthwt
* W_birthlen
* W_nrooms
* brthmon
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
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_brthmon
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

agecat        studyid                   country                        earlybf    pers_wast   n_cell       n
------------  ------------------------  -----------------------------  --------  ----------  -------  ------
0-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                  0       90     247
0-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                  1        5     247
0-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                  0      144     247
0-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                  1        8     247
0-24 months   ki0047075b-MAL-ED         BRAZIL                         0                  0      117     217
0-24 months   ki0047075b-MAL-ED         BRAZIL                         0                  1        1     217
0-24 months   ki0047075b-MAL-ED         BRAZIL                         1                  0       98     217
0-24 months   ki0047075b-MAL-ED         BRAZIL                         1                  1        1     217
0-24 months   ki0047075b-MAL-ED         INDIA                          0                  0       93     241
0-24 months   ki0047075b-MAL-ED         INDIA                          0                  1        5     241
0-24 months   ki0047075b-MAL-ED         INDIA                          1                  0      127     241
0-24 months   ki0047075b-MAL-ED         INDIA                          1                  1       16     241
0-24 months   ki0047075b-MAL-ED         NEPAL                          0                  0      140     238
0-24 months   ki0047075b-MAL-ED         NEPAL                          0                  1        1     238
0-24 months   ki0047075b-MAL-ED         NEPAL                          1                  0       94     238
0-24 months   ki0047075b-MAL-ED         NEPAL                          1                  1        3     238
0-24 months   ki0047075b-MAL-ED         PERU                           0                  0       72     284
0-24 months   ki0047075b-MAL-ED         PERU                           0                  1        0     284
0-24 months   ki0047075b-MAL-ED         PERU                           1                  0      211     284
0-24 months   ki0047075b-MAL-ED         PERU                           1                  1        1     284
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                  0      100     268
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                  1        1     268
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                  0      166     268
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                  1        1     268
0-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                  0       43     253
0-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                  1        0     253
0-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                  0      210     253
0-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                  1        0     253
0-24 months   ki1000109-EE              PAKISTAN                       0                  0      570     754
0-24 months   ki1000109-EE              PAKISTAN                       0                  1       46     754
0-24 months   ki1000109-EE              PAKISTAN                       1                  0      128     754
0-24 months   ki1000109-EE              PAKISTAN                       1                  1       10     754
0-24 months   ki1000304b-SAS-CompFeed   INDIA                          0                  0     1160    1366
0-24 months   ki1000304b-SAS-CompFeed   INDIA                          0                  1      105    1366
0-24 months   ki1000304b-SAS-CompFeed   INDIA                          1                  0       92    1366
0-24 months   ki1000304b-SAS-CompFeed   INDIA                          1                  1        9    1366
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                  0       97     730
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                  1        1     730
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                  0      607     730
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                  1       25     730
0-24 months   ki1113344-GMS-Nepal       NEPAL                          0                  0      644    1076
0-24 months   ki1113344-GMS-Nepal       NEPAL                          0                  1      116    1076
0-24 months   ki1113344-GMS-Nepal       NEPAL                          1                  0      278    1076
0-24 months   ki1113344-GMS-Nepal       NEPAL                          1                  1       38    1076
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                  0     3719    8276
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                  1       78    8276
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                  0     4403    8276
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                  1       76    8276
0-24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                  0    29528   31358
0-24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                  1     1788   31358
0-24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                  0       34   31358
0-24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                  1        8   31358
0-24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                  0     3309   10307
0-24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                  1      301   10307
0-24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                  0     6168   10307
0-24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                  1      529   10307
0-6 months    ki0047075b-MAL-ED         BANGLADESH                     0                  0       91     247
0-6 months    ki0047075b-MAL-ED         BANGLADESH                     0                  1        4     247
0-6 months    ki0047075b-MAL-ED         BANGLADESH                     1                  0      149     247
0-6 months    ki0047075b-MAL-ED         BANGLADESH                     1                  1        3     247
0-6 months    ki0047075b-MAL-ED         BRAZIL                         0                  0      118     217
0-6 months    ki0047075b-MAL-ED         BRAZIL                         0                  1        0     217
0-6 months    ki0047075b-MAL-ED         BRAZIL                         1                  0       98     217
0-6 months    ki0047075b-MAL-ED         BRAZIL                         1                  1        1     217
0-6 months    ki0047075b-MAL-ED         INDIA                          0                  0       90     240
0-6 months    ki0047075b-MAL-ED         INDIA                          0                  1        7     240
0-6 months    ki0047075b-MAL-ED         INDIA                          1                  0      131     240
0-6 months    ki0047075b-MAL-ED         INDIA                          1                  1       12     240
0-6 months    ki0047075b-MAL-ED         NEPAL                          0                  0      138     237
0-6 months    ki0047075b-MAL-ED         NEPAL                          0                  1        2     237
0-6 months    ki0047075b-MAL-ED         NEPAL                          1                  0       94     237
0-6 months    ki0047075b-MAL-ED         NEPAL                          1                  1        3     237
0-6 months    ki0047075b-MAL-ED         PERU                           0                  0       72     284
0-6 months    ki0047075b-MAL-ED         PERU                           0                  1        0     284
0-6 months    ki0047075b-MAL-ED         PERU                           1                  0      212     284
0-6 months    ki0047075b-MAL-ED         PERU                           1                  1        0     284
0-6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                  0       99     266
0-6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                  1        1     266
0-6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                  0      165     266
0-6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                  1        1     266
0-6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                  0       43     253
0-6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                  1        0     253
0-6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                  0      210     253
0-6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                  1        0     253
0-6 months    ki1000109-EE              PAKISTAN                       0                  0      550     732
0-6 months    ki1000109-EE              PAKISTAN                       0                  1       46     732
0-6 months    ki1000109-EE              PAKISTAN                       1                  0      128     732
0-6 months    ki1000109-EE              PAKISTAN                       1                  1        8     732
0-6 months    ki1113344-GMS-Nepal       NEPAL                          0                  0      598     978
0-6 months    ki1113344-GMS-Nepal       NEPAL                          0                  1       88     978
0-6 months    ki1113344-GMS-Nepal       NEPAL                          1                  0      258     978
0-6 months    ki1113344-GMS-Nepal       NEPAL                          1                  1       34     978
6-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                  0       82     233
6-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                  1        8     233
6-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                  0      135     233
6-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                  1        8     233
6-24 months   ki0047075b-MAL-ED         BRAZIL                         0                  0      106     197
6-24 months   ki0047075b-MAL-ED         BRAZIL                         0                  1        1     197
6-24 months   ki0047075b-MAL-ED         BRAZIL                         1                  0       89     197
6-24 months   ki0047075b-MAL-ED         BRAZIL                         1                  1        1     197
6-24 months   ki0047075b-MAL-ED         INDIA                          0                  0       87     231
6-24 months   ki0047075b-MAL-ED         INDIA                          0                  1        7     231
6-24 months   ki0047075b-MAL-ED         INDIA                          1                  0      117     231
6-24 months   ki0047075b-MAL-ED         INDIA                          1                  1       20     231
6-24 months   ki0047075b-MAL-ED         NEPAL                          0                  0      135     231
6-24 months   ki0047075b-MAL-ED         NEPAL                          0                  1        1     231
6-24 months   ki0047075b-MAL-ED         NEPAL                          1                  0       94     231
6-24 months   ki0047075b-MAL-ED         NEPAL                          1                  1        1     231
6-24 months   ki0047075b-MAL-ED         PERU                           0                  0       66     251
6-24 months   ki0047075b-MAL-ED         PERU                           0                  1        0     251
6-24 months   ki0047075b-MAL-ED         PERU                           1                  0      183     251
6-24 months   ki0047075b-MAL-ED         PERU                           1                  1        2     251
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                  0       94     251
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                  1        1     251
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                  0      155     251
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                  1        1     251
6-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                  0       40     238
6-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                  1        0     238
6-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                  0      198     238
6-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                  1        0     238
6-24 months   ki1000109-EE              PAKISTAN                       0                  0      526     736
6-24 months   ki1000109-EE              PAKISTAN                       0                  1       74     736
6-24 months   ki1000109-EE              PAKISTAN                       1                  0      124     736
6-24 months   ki1000109-EE              PAKISTAN                       1                  1       12     736
6-24 months   ki1000304b-SAS-CompFeed   INDIA                          0                  0      939    1204
6-24 months   ki1000304b-SAS-CompFeed   INDIA                          0                  1      173    1204
6-24 months   ki1000304b-SAS-CompFeed   INDIA                          1                  0       77    1204
6-24 months   ki1000304b-SAS-CompFeed   INDIA                          1                  1       15    1204
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                  0       93     697
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                  1        1     697
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                  0      562     697
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                  1       41     697
6-24 months   ki1113344-GMS-Nepal       NEPAL                          0                  0      600    1048
6-24 months   ki1113344-GMS-Nepal       NEPAL                          0                  1      144    1048
6-24 months   ki1113344-GMS-Nepal       NEPAL                          1                  0      264    1048
6-24 months   ki1113344-GMS-Nepal       NEPAL                          1                  1       40    1048
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                  0      881    1924
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                  1       39    1924
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                  0      960    1924
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                  1       44    1924
6-24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                  0     3083    9859
6-24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                  1      365    9859
6-24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                  0     5722    9859
6-24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                  1      689    9859


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
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
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/7dac012c-e27a-49d3-929a-b425cf02f3c8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7dac012c-e27a-49d3-929a-b425cf02f3c8/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7dac012c-e27a-49d3-929a-b425cf02f3c8/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7dac012c-e27a-49d3-929a-b425cf02f3c8/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.0526316    0.0076381   0.0976251
0-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.0526316    0.0170611   0.0882021
0-24 months   ki0047075b-MAL-ED         INDIA        0                    NA                0.0510204    0.0073650   0.0946758
0-24 months   ki0047075b-MAL-ED         INDIA        1                    NA                0.1118881    0.0601145   0.1636618
0-24 months   ki1000109-EE              PAKISTAN     0                    NA                0.0744754    0.0449900   0.1039607
0-24 months   ki1000109-EE              PAKISTAN     1                    NA                0.0522627    0.0023946   0.1021307
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0830040    0.0588611   0.1071469
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.0891089    0.0534033   0.1248146
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.1610363    0.1258985   0.1961742
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.1513070    0.1047924   0.1978216
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0219871    0.0177557   0.0262186
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.0227986    0.0189396   0.0266575
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0570954    0.0530374   0.0611534
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.1904762   -0.0475424   0.4284948
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0810066    0.0687093   0.0933040
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0800202    0.0693487   0.0906918
0-6 months    ki0047075b-MAL-ED         INDIA        0                    NA                0.0721649    0.0205628   0.1237671
0-6 months    ki0047075b-MAL-ED         INDIA        1                    NA                0.0839161    0.0383778   0.1294544
0-6 months    ki1000109-EE              PAKISTAN     0                    NA                0.0771812    0.0468389   0.1075235
0-6 months    ki1000109-EE              PAKISTAN     1                    NA                0.0588235    0.0028221   0.1148249
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                0.1335730    0.0996454   0.1675006
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                0.1499455    0.1034200   0.1964710
6-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.0888889    0.0299679   0.1478099
6-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.0559441    0.0181964   0.0936917
6-24 months   ki0047075b-MAL-ED         INDIA        0                    NA                0.0744681    0.0212809   0.1276553
6-24 months   ki0047075b-MAL-ED         INDIA        1                    NA                0.1459854    0.0867315   0.2052393
6-24 months   ki1000109-EE              PAKISTAN     0                    NA                0.1220174    0.0848410   0.1591938
6-24 months   ki1000109-EE              PAKISTAN     1                    NA                0.0580284    0.0053630   0.1106938
6-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.1551918    0.1388265   0.1715571
6-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.1510290    0.0845825   0.2174756
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.2024321    0.1628453   0.2420189
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.1786840    0.1279296   0.2294383
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0396930    0.0275521   0.0518340
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.0425103    0.0303091   0.0547115
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.1051964    0.0880819   0.1223109
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.1077110    0.0947712   0.1206509


### Parameter: E(Y)


agecat        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.0526316   0.0247278   0.0805354
0-24 months   ki0047075b-MAL-ED         INDIA        NA                   NA                0.0871369   0.0514552   0.1228187
0-24 months   ki1000109-EE              PAKISTAN     NA                   NA                0.0742706   0.0477670   0.1007741
0-24 months   ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.0834553   0.0601989   0.1067118
0-24 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.1431227   0.1135034   0.1727420
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0186080   0.0156964   0.0215196
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0572741   0.0531873   0.0613609
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.0805278   0.0718757   0.0891799
0-6 months    ki0047075b-MAL-ED         INDIA        NA                   NA                0.0791667   0.0449364   0.1133970
0-6 months    ki1000109-EE              PAKISTAN     NA                   NA                0.0737705   0.0469540   0.1005870
0-6 months    ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.1247444   0.0954276   0.1540611
6-24 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.0686695   0.0361280   0.1012111
6-24 months   ki0047075b-MAL-ED         INDIA        NA                   NA                0.1168831   0.0753620   0.1584042
6-24 months   ki1000109-EE              PAKISTAN     NA                   NA                0.1168478   0.0839821   0.1497135
6-24 months   ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.1561462   0.1410608   0.1712315
6-24 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.1755725   0.1429662   0.2081788
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0431393   0.0340586   0.0522200
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.1069074   0.0961821   0.1176327


### Parameter: RR


agecat        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    0                 1.0000000   1.0000000    1.000000
0-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    0                 1.0000000   0.3362978    2.973555
0-24 months   ki0047075b-MAL-ED         INDIA        0                    0                 1.0000000   1.0000000    1.000000
0-24 months   ki0047075b-MAL-ED         INDIA        1                    0                 2.1930070   0.8290467    5.800976
0-24 months   ki1000109-EE              PAKISTAN     0                    0                 1.0000000   1.0000000    1.000000
0-24 months   ki1000109-EE              PAKISTAN     1                    0                 0.7017444   0.2498633    1.970858
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.0000000   1.0000000    1.000000
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    0                 1.0735502   0.7076965    1.628537
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    0                 1.0000000   1.0000000    1.000000
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    0                 0.9395829   0.6443923    1.369998
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     0                    0                 1.0000000   1.0000000    1.000000
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     1                    0                 1.0369048   0.8037590    1.337679
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.0000000   1.0000000    1.000000
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    0                 3.3361031   0.9581662   11.615504
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.0000000   1.0000000    1.000000
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    0                 0.9878233   0.8162553    1.195453
0-6 months    ki0047075b-MAL-ED         INDIA        0                    0                 1.0000000   1.0000000    1.000000
0-6 months    ki0047075b-MAL-ED         INDIA        1                    0                 1.1628372   0.4738821    2.853432
0-6 months    ki1000109-EE              PAKISTAN     0                    0                 1.0000000   1.0000000    1.000000
0-6 months    ki1000109-EE              PAKISTAN     1                    0                 0.7621483   0.2720922    2.134828
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    0                 1.0000000   1.0000000    1.000000
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    0                 1.1225736   0.7516413    1.676560
6-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    0                 1.0000000   1.0000000    1.000000
6-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    0                 0.6293706   0.2444123    1.620652
6-24 months   ki0047075b-MAL-ED         INDIA        0                    0                 1.0000000   1.0000000    1.000000
6-24 months   ki0047075b-MAL-ED         INDIA        1                    0                 1.9603754   0.8621143    4.457729
6-24 months   ki1000109-EE              PAKISTAN     0                    0                 1.0000000   1.0000000    1.000000
6-24 months   ki1000109-EE              PAKISTAN     1                    0                 0.4755748   0.1825172    1.239179
6-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.0000000   1.0000000    1.000000
6-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    0                 0.9731766   0.5978892    1.584027
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    0                 1.0000000   1.0000000    1.000000
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    0                 0.8826859   0.6259213    1.244780
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     0                    0                 1.0000000   1.0000000    1.000000
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     1                    0                 1.0709762   0.7065569    1.623351
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.0000000   1.0000000    1.000000
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    0                 1.0239043   0.8421938    1.244820


### Parameter: PAR


agecat        studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                 0.0000000   -0.0352958    0.0352958
0-24 months   ki0047075b-MAL-ED         INDIA        0                    NA                 0.0361165   -0.0042449    0.0764779
0-24 months   ki1000109-EE              PAKISTAN     0                    NA                -0.0002048   -0.0128128    0.0124032
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                 0.0004514   -0.0023056    0.0032084
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.0179137   -0.0359833    0.0001560
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                -0.0033791   -0.0063773   -0.0003810
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                 0.0001786   -0.0001754    0.0005327
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0004788   -0.0104140    0.0094563
0-6 months    ki0047075b-MAL-ED         INDIA        0                    NA                 0.0070017   -0.0340114    0.0480149
0-6 months    ki1000109-EE              PAKISTAN     0                    NA                -0.0034107   -0.0152671    0.0084456
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.0088286   -0.0270704    0.0094132
6-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.0202194   -0.0632153    0.0227765
6-24 months   ki0047075b-MAL-ED         INDIA        0                    NA                 0.0424150   -0.0050254    0.0898554
6-24 months   ki1000109-EE              PAKISTAN     0                    NA                -0.0051695   -0.0197083    0.0093692
6-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                 0.0009544   -0.0051121    0.0070209
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.0268596   -0.0464401   -0.0072790
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                 0.0034463   -0.0053715    0.0122641
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                 0.0017110   -0.0117344    0.0151564


### Parameter: PAF


agecat        studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                 0.0000000   -0.9554502    0.4886088
0-24 months   ki0047075b-MAL-ED         INDIA        0                    NA                 0.4144801   -0.2301792    0.7213141
0-24 months   ki1000109-EE              PAKISTAN     0                    NA                -0.0027579   -0.1877207    0.1534008
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                 0.0054088   -0.0286322    0.0383232
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.1251629   -0.2608949   -0.0040422
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                -0.1815949   -0.3562605   -0.0294236
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                 0.0031191   -0.0030580    0.0092583
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0059464   -0.1373018    0.1102378
0-6 months    ki0047075b-MAL-ED         INDIA        0                    NA                 0.0884428   -0.6070774    0.4829517
0-6 months    ki1000109-EE              PAKISTAN     0                    NA                -0.0462342   -0.2190996    0.1021194
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.0707737   -0.2292727    0.0672889
6-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.2944444   -1.0791678    0.1941072
6-24 months   ki0047075b-MAL-ED         INDIA        0                    NA                 0.3628842   -0.1722863    0.6537394
6-24 months   ki1000109-EE              PAKISTAN     0                    NA                -0.0442416   -0.1757536    0.0725604
6-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                 0.0061121   -0.0335248    0.0442288
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.1529828   -0.2711067   -0.0458361
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                 0.0798869   -0.1481824    0.2626536
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                 0.0160046   -0.1181467    0.1340608
