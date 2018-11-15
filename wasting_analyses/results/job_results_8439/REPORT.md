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

unadjusted

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
![](/tmp/e992b4e2-e5b9-4e01-a230-8aa1e8e27167/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e992b4e2-e5b9-4e01-a230-8aa1e8e27167/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e992b4e2-e5b9-4e01-a230-8aa1e8e27167/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e992b4e2-e5b9-4e01-a230-8aa1e8e27167/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.0526316    0.0076381   0.0976251
0-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.0526316    0.0170611   0.0882021
0-24 months   ki0047075b-MAL-ED         INDIA        0                    NA                0.0510204    0.0073650   0.0946758
0-24 months   ki0047075b-MAL-ED         INDIA        1                    NA                0.1118881    0.0601145   0.1636618
0-24 months   ki1000109-EE              PAKISTAN     0                    NA                0.0746753    0.0452795   0.1040711
0-24 months   ki1000109-EE              PAKISTAN     1                    NA                0.0724638    0.0112109   0.1337166
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0830040    0.0588611   0.1071469
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.0891089    0.0534033   0.1248146
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.1526316    0.1164391   0.1888241
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.1202532    0.0694898   0.1710166
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0205425    0.0160305   0.0250546
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.0169681    0.0131855   0.0207506
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0570954    0.0530374   0.0611534
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.1904762   -0.0475424   0.4284948
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0833795    0.0702180   0.0965410
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0789906    0.0681886   0.0897926
0-6 months    ki0047075b-MAL-ED         INDIA        0                    NA                0.0721649    0.0205628   0.1237671
0-6 months    ki0047075b-MAL-ED         INDIA        1                    NA                0.0839161    0.0383778   0.1294544
0-6 months    ki1000109-EE              PAKISTAN     0                    NA                0.0771812    0.0468389   0.1075235
0-6 months    ki1000109-EE              PAKISTAN     1                    NA                0.0588235    0.0028221   0.1148249
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                0.1282799    0.0928546   0.1637052
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                0.1164384    0.0643570   0.1685198
6-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.0888889    0.0299679   0.1478099
6-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.0559441    0.0181964   0.0936917
6-24 months   ki0047075b-MAL-ED         INDIA        0                    NA                0.0744681    0.0212809   0.1276553
6-24 months   ki0047075b-MAL-ED         INDIA        1                    NA                0.1459854    0.0867315   0.2052393
6-24 months   ki1000109-EE              PAKISTAN     0                    NA                0.1233333    0.0860739   0.1605927
6-24 months   ki1000109-EE              PAKISTAN     1                    NA                0.0882353    0.0207286   0.1557420
6-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.1555755    0.1391015   0.1720496
6-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.1630435    0.0861546   0.2399324
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.1935484    0.1533623   0.2337344
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.1315789    0.0777892   0.1853687
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0423913    0.0293687   0.0554140
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.0438247    0.0311592   0.0564902
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.1058585    0.0882757   0.1234413
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.1074715    0.0944325   0.1205106


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
0-24 months   ki1000109-EE              PAKISTAN     1                    0                 0.9703844   0.3819299    2.465494
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.0000000   1.0000000    1.000000
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    0                 1.0735502   0.7076965    1.628537
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    0                 1.0000000   1.0000000    1.000000
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    0                 0.7878656   0.4854858    1.278579
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     0                    0                 1.0000000   1.0000000    1.000000
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     1                    0                 0.8259972   0.6040408    1.129512
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.0000000   1.0000000    1.000000
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    0                 3.3361031   0.9581662   11.615504
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.0000000   1.0000000    1.000000
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    0                 0.9473623   0.7744266    1.158916
0-6 months    ki0047075b-MAL-ED         INDIA        0                    0                 1.0000000   1.0000000    1.000000
0-6 months    ki0047075b-MAL-ED         INDIA        1                    0                 1.1628372   0.4738821    2.853432
0-6 months    ki1000109-EE              PAKISTAN     0                    0                 1.0000000   1.0000000    1.000000
0-6 months    ki1000109-EE              PAKISTAN     1                    0                 0.7621483   0.2720922    2.134828
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    0                 1.0000000   1.0000000    1.000000
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    0                 0.9076899   0.5365896    1.535440
6-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    0                 1.0000000   1.0000000    1.000000
6-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    0                 0.6293706   0.2444123    1.620652
6-24 months   ki0047075b-MAL-ED         INDIA        0                    0                 1.0000000   1.0000000    1.000000
6-24 months   ki0047075b-MAL-ED         INDIA        1                    0                 1.9603754   0.8621143    4.457729
6-24 months   ki1000109-EE              PAKISTAN     0                    0                 1.0000000   1.0000000    1.000000
6-24 months   ki1000109-EE              PAKISTAN     1                    0                 0.7154214   0.3142881    1.628531
6-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.0000000   1.0000000    1.000000
6-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    0                 1.0480020   0.6339000    1.732620
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    0                 1.0000000   1.0000000    1.000000
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    0                 0.6798246   0.4298034    1.075286
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     0                    0                 1.0000000   1.0000000    1.000000
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     1                    0                 1.0338135   0.6780580    1.576222
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.0000000   1.0000000    1.000000
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    0                 1.0152379   0.8306713    1.240813


### Parameter: PAR


agecat        studyid                   country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                 0.0000000   -0.0352958   0.0352958
0-24 months   ki0047075b-MAL-ED         INDIA        0                    NA                 0.0361165   -0.0042449   0.0764779
0-24 months   ki1000109-EE              PAKISTAN     0                    NA                -0.0004048   -0.0128400   0.0120304
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                 0.0004514   -0.0023056   0.0032084
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.0095089   -0.0278606   0.0088428
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                -0.0019345   -0.0051212   0.0012522
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                 0.0001786   -0.0001754   0.0005327
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0028517   -0.0135356   0.0078321
0-6 months    ki0047075b-MAL-ED         INDIA        0                    NA                 0.0070017   -0.0340114   0.0480149
0-6 months    ki1000109-EE              PAKISTAN     0                    NA                -0.0034107   -0.0152671   0.0084456
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.0035355   -0.0223477   0.0152767
6-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.0202194   -0.0632153   0.0227765
6-24 months   ki0047075b-MAL-ED         INDIA        0                    NA                 0.0424150   -0.0050254   0.0898554
6-24 months   ki1000109-EE              PAKISTAN     0                    NA                -0.0064855   -0.0208015   0.0078304
6-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                 0.0005706   -0.0056784   0.0068197
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.0179759   -0.0376012   0.0016494
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                 0.0007480   -0.0087316   0.0102276
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                 0.0010489   -0.0128359   0.0149337


### Parameter: PAF


agecat        studyid                   country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                 0.0000000   -0.9554502   0.4886088
0-24 months   ki0047075b-MAL-ED         INDIA        0                    NA                 0.4144801   -0.2301792   0.7213141
0-24 months   ki1000109-EE              PAKISTAN     0                    NA                -0.0054499   -0.1876173   0.1487750
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                 0.0054088   -0.0286322   0.0383232
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.0664388   -0.2021536   0.0539547
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                -0.1039611   -0.2883484   0.0540369
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                 0.0031191   -0.0030580   0.0092583
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0354127   -0.1773911   0.0894450
0-6 months    ki0047075b-MAL-ED         INDIA        0                    NA                 0.0884428   -0.6070774   0.4829517
0-6 months    ki1000109-EE              PAKISTAN     0                    NA                -0.0462342   -0.2190996   0.1021194
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.0283420   -0.1906466   0.1118378
6-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.2944444   -1.0791678   0.1941072
6-24 months   ki0047075b-MAL-ED         INDIA        0                    NA                 0.3628842   -0.1722863   0.6537394
6-24 months   ki1000109-EE              PAKISTAN     0                    NA                -0.0555039   -0.1846086   0.0595304
6-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                 0.0036545   -0.0371916   0.0428920
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.1023843   -0.2190740   0.0031359
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                 0.0173389   -0.2288794   0.2142250
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                 0.0098115   -0.1289771   0.1315384
