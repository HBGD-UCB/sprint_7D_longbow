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

**Outcome Variable:** stunted

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

agecat      studyid                 country                        impsan    stunted   n_cell       n
----------  ----------------------  -----------------------------  -------  --------  -------  ------
Birth       ki0047075b-MAL-ED       BANGLADESH                     0               0       32     234
Birth       ki0047075b-MAL-ED       BANGLADESH                     0               1        5     234
Birth       ki0047075b-MAL-ED       BANGLADESH                     1               0      164     234
Birth       ki0047075b-MAL-ED       BANGLADESH                     1               1       33     234
6 months    ki0047075b-MAL-ED       BANGLADESH                     0               0       33     240
6 months    ki0047075b-MAL-ED       BANGLADESH                     0               1        5     240
6 months    ki0047075b-MAL-ED       BANGLADESH                     1               0      162     240
6 months    ki0047075b-MAL-ED       BANGLADESH                     1               1       40     240
24 months   ki0047075b-MAL-ED       BANGLADESH                     0               0       16     212
24 months   ki0047075b-MAL-ED       BANGLADESH                     0               1       15     212
24 months   ki0047075b-MAL-ED       BANGLADESH                     1               0       98     212
24 months   ki0047075b-MAL-ED       BANGLADESH                     1               1       83     212
Birth       ki0047075b-MAL-ED       BRAZIL                         0               0        4     174
Birth       ki0047075b-MAL-ED       BRAZIL                         0               1        0     174
Birth       ki0047075b-MAL-ED       BRAZIL                         1               0      153     174
Birth       ki0047075b-MAL-ED       BRAZIL                         1               1       17     174
6 months    ki0047075b-MAL-ED       BRAZIL                         0               0        4     209
6 months    ki0047075b-MAL-ED       BRAZIL                         0               1        0     209
6 months    ki0047075b-MAL-ED       BRAZIL                         1               0      199     209
6 months    ki0047075b-MAL-ED       BRAZIL                         1               1        6     209
24 months   ki0047075b-MAL-ED       BRAZIL                         0               0        3     169
24 months   ki0047075b-MAL-ED       BRAZIL                         0               1        0     169
24 months   ki0047075b-MAL-ED       BRAZIL                         1               0      160     169
24 months   ki0047075b-MAL-ED       BRAZIL                         1               1        6     169
Birth       ki0047075b-MAL-ED       INDIA                          0               0       85     190
Birth       ki0047075b-MAL-ED       INDIA                          0               1       13     190
Birth       ki0047075b-MAL-ED       INDIA                          1               0       76     190
Birth       ki0047075b-MAL-ED       INDIA                          1               1       16     190
6 months    ki0047075b-MAL-ED       INDIA                          0               0       98     233
6 months    ki0047075b-MAL-ED       INDIA                          0               1       27     233
6 months    ki0047075b-MAL-ED       INDIA                          1               0       91     233
6 months    ki0047075b-MAL-ED       INDIA                          1               1       17     233
24 months   ki0047075b-MAL-ED       INDIA                          0               0       64     225
24 months   ki0047075b-MAL-ED       INDIA                          0               1       57     225
24 months   ki0047075b-MAL-ED       INDIA                          1               0       68     225
24 months   ki0047075b-MAL-ED       INDIA                          1               1       36     225
6 months    ki0047075b-MAL-ED       NEPAL                          0               0        1     236
6 months    ki0047075b-MAL-ED       NEPAL                          0               1        0     236
6 months    ki0047075b-MAL-ED       NEPAL                          1               0      223     236
6 months    ki0047075b-MAL-ED       NEPAL                          1               1       12     236
24 months   ki0047075b-MAL-ED       NEPAL                          0               0        1     228
24 months   ki0047075b-MAL-ED       NEPAL                          0               1        0     228
24 months   ki0047075b-MAL-ED       NEPAL                          1               0      178     228
24 months   ki0047075b-MAL-ED       NEPAL                          1               1       49     228
Birth       ki0047075b-MAL-ED       NEPAL                          0               0        1     171
Birth       ki0047075b-MAL-ED       NEPAL                          0               1        0     171
Birth       ki0047075b-MAL-ED       NEPAL                          1               0      152     171
Birth       ki0047075b-MAL-ED       NEPAL                          1               1       18     171
Birth       ki0047075b-MAL-ED       PERU                           0               0      167     250
Birth       ki0047075b-MAL-ED       PERU                           0               1       21     250
Birth       ki0047075b-MAL-ED       PERU                           1               0       54     250
Birth       ki0047075b-MAL-ED       PERU                           1               1        8     250
6 months    ki0047075b-MAL-ED       PERU                           0               0      159     263
6 months    ki0047075b-MAL-ED       PERU                           0               1       39     263
6 months    ki0047075b-MAL-ED       PERU                           1               0       47     263
6 months    ki0047075b-MAL-ED       PERU                           1               1       18     263
24 months   ki0047075b-MAL-ED       PERU                           0               0       93     196
24 months   ki0047075b-MAL-ED       PERU                           0               1       56     196
24 months   ki0047075b-MAL-ED       PERU                           1               0       31     196
24 months   ki0047075b-MAL-ED       PERU                           1               1       16     196
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0               0      191     213
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0               1       20     213
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   1               0        2     213
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   1               1        0     213
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0               0      193     244
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0               1       47     244
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1               0        3     244
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1               1        1     244
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0               0      149     235
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0               1       82     235
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1               0        3     235
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1               1        1     235
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0               0       97     113
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0               1       16     113
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0               0      181     238
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0               1       57     238
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0               0       58     207
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0               1      149     207
6 months    ki1017093-NIH-Birth     BANGLADESH                     0               0      240     537
6 months    ki1017093-NIH-Birth     BANGLADESH                     0               1       92     537
6 months    ki1017093-NIH-Birth     BANGLADESH                     1               0      153     537
6 months    ki1017093-NIH-Birth     BANGLADESH                     1               1       52     537
24 months   ki1017093-NIH-Birth     BANGLADESH                     0               0      106     429
24 months   ki1017093-NIH-Birth     BANGLADESH                     0               1      153     429
24 months   ki1017093-NIH-Birth     BANGLADESH                     1               0       85     429
24 months   ki1017093-NIH-Birth     BANGLADESH                     1               1       85     429
Birth       ki1017093-NIH-Birth     BANGLADESH                     0               0       18      28
Birth       ki1017093-NIH-Birth     BANGLADESH                     0               1        1      28
Birth       ki1017093-NIH-Birth     BANGLADESH                     1               0        9      28
Birth       ki1017093-NIH-Birth     BANGLADESH                     1               1        0      28
6 months    ki1017093b-PROVIDE      BANGLADESH                     0               0       20     581
6 months    ki1017093b-PROVIDE      BANGLADESH                     0               1        6     581
6 months    ki1017093b-PROVIDE      BANGLADESH                     1               0      467     581
6 months    ki1017093b-PROVIDE      BANGLADESH                     1               1       88     581
24 months   ki1017093b-PROVIDE      BANGLADESH                     0               0       13     576
24 months   ki1017093b-PROVIDE      BANGLADESH                     0               1       11     576
24 months   ki1017093b-PROVIDE      BANGLADESH                     1               0      373     576
24 months   ki1017093b-PROVIDE      BANGLADESH                     1               1      179     576
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0               0        1      27
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0               1        1      27
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     1               0       21      27
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     1               1        4      27
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0               0       73     704
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0               1       16     704
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1               0      483     704
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1               1      132     704
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0               0       53     503
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0               1       17     503
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1               0      321     503
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1               1      112     503
6 months    ki1114097-CONTENT       PERU                           0               0       11     215
6 months    ki1114097-CONTENT       PERU                           0               1        3     215
6 months    ki1114097-CONTENT       PERU                           1               0      185     215
6 months    ki1114097-CONTENT       PERU                           1               1       16     215
24 months   ki1114097-CONTENT       PERU                           0               0        9     164
24 months   ki1114097-CONTENT       PERU                           0               1        4     164
24 months   ki1114097-CONTENT       PERU                           1               0      134     164
24 months   ki1114097-CONTENT       PERU                           1               1       17     164
Birth       ki1114097-CONTENT       PERU                           0               0        1       2
Birth       ki1114097-CONTENT       PERU                           1               0        1       2
6 months    ki1135781-COHORTS       GUATEMALA                      0               0      328     658
6 months    ki1135781-COHORTS       GUATEMALA                      0               1      263     658
6 months    ki1135781-COHORTS       GUATEMALA                      1               0       41     658
6 months    ki1135781-COHORTS       GUATEMALA                      1               1       26     658
24 months   ki1135781-COHORTS       GUATEMALA                      0               0      167     896
24 months   ki1135781-COHORTS       GUATEMALA                      0               1      652     896
24 months   ki1135781-COHORTS       GUATEMALA                      1               0       20     896
24 months   ki1135781-COHORTS       GUATEMALA                      1               1       57     896
Birth       ki1135781-COHORTS       GUATEMALA                      0               0      416     491
Birth       ki1135781-COHORTS       GUATEMALA                      0               1       30     491
Birth       ki1135781-COHORTS       GUATEMALA                      1               0       42     491
Birth       ki1135781-COHORTS       GUATEMALA                      1               1        3     491
Birth       ki1135781-COHORTS       INDIA                          0               0     2618    4776
Birth       ki1135781-COHORTS       INDIA                          0               1      391    4776
Birth       ki1135781-COHORTS       INDIA                          1               0     1593    4776
Birth       ki1135781-COHORTS       INDIA                          1               1      174    4776
6 months    ki1135781-COHORTS       INDIA                          0               0     2355    4971
6 months    ki1135781-COHORTS       INDIA                          0               1      735    4971
6 months    ki1135781-COHORTS       INDIA                          1               0     1643    4971
6 months    ki1135781-COHORTS       INDIA                          1               1      238    4971
24 months   ki1135781-COHORTS       INDIA                          0               0      955    3754
24 months   ki1135781-COHORTS       INDIA                          0               1     1328    3754
24 months   ki1135781-COHORTS       INDIA                          1               0      948    3754
24 months   ki1135781-COHORTS       INDIA                          1               1      523    3754
Birth       ki1135781-COHORTS       PHILIPPINES                    0               0      936    1191
Birth       ki1135781-COHORTS       PHILIPPINES                    0               1       77    1191
Birth       ki1135781-COHORTS       PHILIPPINES                    1               0      176    1191
Birth       ki1135781-COHORTS       PHILIPPINES                    1               1        2    1191
6 months    ki1135781-COHORTS       PHILIPPINES                    0               0      718    1083
6 months    ki1135781-COHORTS       PHILIPPINES                    0               1      222    1083
6 months    ki1135781-COHORTS       PHILIPPINES                    1               0      132    1083
6 months    ki1135781-COHORTS       PHILIPPINES                    1               1       11    1083
24 months   ki1135781-COHORTS       PHILIPPINES                    0               0      234     990
24 months   ki1135781-COHORTS       PHILIPPINES                    0               1      630     990
24 months   ki1135781-COHORTS       PHILIPPINES                    1               0       82     990
24 months   ki1135781-COHORTS       PHILIPPINES                    1               1       44     990
6 months    ki1148112-LCNI-5        MALAWI                         0               0      515     812
6 months    ki1148112-LCNI-5        MALAWI                         0               1      294     812
6 months    ki1148112-LCNI-5        MALAWI                         1               0        2     812
6 months    ki1148112-LCNI-5        MALAWI                         1               1        1     812
24 months   ki1148112-LCNI-5        MALAWI                         0               0      319     572
24 months   ki1148112-LCNI-5        MALAWI                         0               1      251     572
24 months   ki1148112-LCNI-5        MALAWI                         1               0        1     572
24 months   ki1148112-LCNI-5        MALAWI                         1               1        1     572
Birth       kiGH5241-JiVitA-3       BANGLADESH                     0               0     4128   19592
Birth       kiGH5241-JiVitA-3       BANGLADESH                     0               1     2277   19592
Birth       kiGH5241-JiVitA-3       BANGLADESH                     1               0     9129   19592
Birth       kiGH5241-JiVitA-3       BANGLADESH                     1               1     4058   19592
6 months    kiGH5241-JiVitA-3       BANGLADESH                     0               0     3337   16800
6 months    kiGH5241-JiVitA-3       BANGLADESH                     0               1     1425   16800
6 months    kiGH5241-JiVitA-3       BANGLADESH                     1               0     9239   16800
6 months    kiGH5241-JiVitA-3       BANGLADESH                     1               1     2799   16800
24 months   kiGH5241-JiVitA-3       BANGLADESH                     0               0     1047    8622
24 months   kiGH5241-JiVitA-3       BANGLADESH                     0               1     1464    8622
24 months   kiGH5241-JiVitA-3       BANGLADESH                     1               0     3343    8622
24 months   kiGH5241-JiVitA-3       BANGLADESH                     1               1     2768    8622
24 months   kiGH5241-JiVitA-4       BANGLADESH                     0               0      579    4747
24 months   kiGH5241-JiVitA-4       BANGLADESH                     0               1      485    4747
24 months   kiGH5241-JiVitA-4       BANGLADESH                     1               0     2306    4747
24 months   kiGH5241-JiVitA-4       BANGLADESH                     1               1     1377    4747
6 months    kiGH5241-JiVitA-4       BANGLADESH                     0               0      764    4825
6 months    kiGH5241-JiVitA-4       BANGLADESH                     0               1      327    4825
6 months    kiGH5241-JiVitA-4       BANGLADESH                     1               0     2844    4825
6 months    kiGH5241-JiVitA-4       BANGLADESH                     1               1      890    4825
Birth       kiGH5241-JiVitA-4       BANGLADESH                     0               0      145     822
Birth       kiGH5241-JiVitA-4       BANGLADESH                     0               1       71     822
Birth       kiGH5241-JiVitA-4       BANGLADESH                     1               0      430     822
Birth       kiGH5241-JiVitA-4       BANGLADESH                     1               1      176     822


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
##       stunted
## impsan   0   1
##      0  58 149
##      1   0   0
##       stunted
## impsan   0   1
##      0 181  57
##      1   0   0
##       stunted
## impsan  0  1
##      0 97 16
##      1  0  0
```




# Results Detail

## Results Plots
![](/tmp/6b7c8cfa-a1b8-4817-8011-e87b315af976/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6b7c8cfa-a1b8-4817-8011-e87b315af976/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6b7c8cfa-a1b8-4817-8011-e87b315af976/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6b7c8cfa-a1b8-4817-8011-e87b315af976/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED       BANGLADESH    0                    NA                0.1351351   0.0247437   0.2455266
Birth       ki0047075b-MAL-ED       BANGLADESH    1                    NA                0.1675127   0.1152541   0.2197713
Birth       ki0047075b-MAL-ED       INDIA         0                    NA                0.1326531   0.0653188   0.1999873
Birth       ki0047075b-MAL-ED       INDIA         1                    NA                0.1739130   0.0962563   0.2515698
Birth       ki0047075b-MAL-ED       PERU          0                    NA                0.1117021   0.0665842   0.1568201
Birth       ki0047075b-MAL-ED       PERU          1                    NA                0.1290323   0.0454195   0.2126451
Birth       ki1135781-COHORTS       INDIA         0                    NA                0.1299435   0.1179282   0.1419588
Birth       ki1135781-COHORTS       INDIA         1                    NA                0.0984720   0.0845782   0.1123658
Birth       kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.3555035   0.3428552   0.3681518
Birth       kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.3077273   0.2985190   0.3169356
Birth       kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.3287037   0.2582974   0.3991100
Birth       kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.2904290   0.2490841   0.3317739
6 months    ki0047075b-MAL-ED       BANGLADESH    0                    NA                0.1315789   0.0238775   0.2392803
6 months    ki0047075b-MAL-ED       BANGLADESH    1                    NA                0.1980198   0.1429498   0.2530898
6 months    ki0047075b-MAL-ED       INDIA         0                    NA                0.2160000   0.1437044   0.2882956
6 months    ki0047075b-MAL-ED       INDIA         1                    NA                0.1574074   0.0885752   0.2262396
6 months    ki0047075b-MAL-ED       PERU          0                    NA                0.1969697   0.1414677   0.2524717
6 months    ki0047075b-MAL-ED       PERU          1                    NA                0.2769231   0.1679321   0.3859140
6 months    ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.2771084   0.2289197   0.3252971
6 months    ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.2536585   0.1940416   0.3132754
6 months    ki1017093b-PROVIDE      BANGLADESH    0                    NA                0.2307692   0.0686805   0.3928579
6 months    ki1017093b-PROVIDE      BANGLADESH    1                    NA                0.1585586   0.1281439   0.1889732
6 months    ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                0.1797753   0.0999403   0.2596103
6 months    ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                0.2146341   0.1821625   0.2471058
6 months    ki1135781-COHORTS       GUATEMALA     0                    NA                0.4450085   0.4049115   0.4851055
6 months    ki1135781-COHORTS       GUATEMALA     1                    NA                0.3880597   0.2712861   0.5048333
6 months    ki1135781-COHORTS       INDIA         0                    NA                0.2378641   0.2228502   0.2528780
6 months    ki1135781-COHORTS       INDIA         1                    NA                0.1265284   0.1115034   0.1415535
6 months    ki1135781-COHORTS       PHILIPPINES   0                    NA                0.2361702   0.2090061   0.2633343
6 months    ki1135781-COHORTS       PHILIPPINES   1                    NA                0.0769231   0.0332285   0.1206177
6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.2992440   0.2852659   0.3132221
6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.2325137   0.2233357   0.2416917
6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.2997250   0.2691771   0.3302729
6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.2383503   0.2222478   0.2544528
24 months   ki0047075b-MAL-ED       BANGLADESH    0                    NA                0.4838710   0.3075362   0.6602057
24 months   ki0047075b-MAL-ED       BANGLADESH    1                    NA                0.4585635   0.3858008   0.5313263
24 months   ki0047075b-MAL-ED       INDIA         0                    NA                0.4710744   0.3819360   0.5602128
24 months   ki0047075b-MAL-ED       INDIA         1                    NA                0.3461538   0.2545168   0.4377909
24 months   ki0047075b-MAL-ED       PERU          0                    NA                0.3758389   0.2978712   0.4538067
24 months   ki0047075b-MAL-ED       PERU          1                    NA                0.3404255   0.2046089   0.4762421
24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.5907336   0.5307816   0.6506856
24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.5000000   0.4247511   0.5752489
24 months   ki1017093b-PROVIDE      BANGLADESH    0                    NA                0.4583333   0.2588179   0.6578488
24 months   ki1017093b-PROVIDE      BANGLADESH    1                    NA                0.3242754   0.2851915   0.3633592
24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                0.2428571   0.1423040   0.3434103
24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                0.2586605   0.2173738   0.2999472
24 months   ki1135781-COHORTS       GUATEMALA     0                    NA                0.7960928   0.7684840   0.8237015
24 months   ki1135781-COHORTS       GUATEMALA     1                    NA                0.7402597   0.6422641   0.8382554
24 months   ki1135781-COHORTS       INDIA         0                    NA                0.5816908   0.5614537   0.6019278
24 months   ki1135781-COHORTS       INDIA         1                    NA                0.3555404   0.3310756   0.3800053
24 months   ki1135781-COHORTS       PHILIPPINES   0                    NA                0.7291667   0.6995201   0.7588133
24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                0.3492063   0.2659255   0.4324872
24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.5830346   0.5615752   0.6044941
24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.4529537   0.4377461   0.4681613
24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.4558271   0.4246101   0.4870441
24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.3738800   0.3543703   0.3933896


### Parameter: E(Y)


agecat      studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED       BANGLADESH    NA                   NA                0.1623932   0.1150373   0.2097491
Birth       ki0047075b-MAL-ED       INDIA         NA                   NA                0.1526316   0.1013601   0.2039030
Birth       ki0047075b-MAL-ED       PERU          NA                   NA                0.1160000   0.0762256   0.1557744
Birth       ki1135781-COHORTS       INDIA         NA                   NA                0.1182998   0.1091394   0.1274602
Birth       kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                0.3233463   0.3156839   0.3310086
Birth       kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                0.3004866   0.2649179   0.3360553
6 months    ki0047075b-MAL-ED       BANGLADESH    NA                   NA                0.1875000   0.1380164   0.2369836
6 months    ki0047075b-MAL-ED       INDIA         NA                   NA                0.1888412   0.1384789   0.2392035
6 months    ki0047075b-MAL-ED       PERU          NA                   NA                0.2167300   0.1668401   0.2666199
6 months    ki1017093-NIH-Birth     BANGLADESH    NA                   NA                0.2681564   0.2306532   0.3056597
6 months    ki1017093b-PROVIDE      BANGLADESH    NA                   NA                0.1617900   0.1318200   0.1917600
6 months    ki1017093c-NIH-Crypto   BANGLADESH    NA                   NA                0.2102273   0.1801065   0.2403480
6 months    ki1135781-COHORTS       GUATEMALA     NA                   NA                0.4392097   0.4012606   0.4771588
6 months    ki1135781-COHORTS       INDIA         NA                   NA                0.1957353   0.1847045   0.2067660
6 months    ki1135781-COHORTS       PHILIPPINES   NA                   NA                0.2151431   0.1906585   0.2396277
6 months    kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                0.2514286   0.2432891   0.2595681
6 months    kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                0.2522280   0.2381653   0.2662906
24 months   ki0047075b-MAL-ED       BANGLADESH    NA                   NA                0.4622642   0.3949918   0.5295365
24 months   ki0047075b-MAL-ED       INDIA         NA                   NA                0.4133333   0.3488467   0.4778200
24 months   ki0047075b-MAL-ED       PERU          NA                   NA                0.3673469   0.2996839   0.4350100
24 months   ki1017093-NIH-Birth     BANGLADESH    NA                   NA                0.5547786   0.5076945   0.6018626
24 months   ki1017093b-PROVIDE      BANGLADESH    NA                   NA                0.3298611   0.2914318   0.3682904
24 months   ki1017093c-NIH-Crypto   BANGLADESH    NA                   NA                0.2564612   0.2182616   0.2946608
24 months   ki1135781-COHORTS       GUATEMALA     NA                   NA                0.7912946   0.7646707   0.8179186
24 months   ki1135781-COHORTS       INDIA         NA                   NA                0.4930741   0.4770789   0.5090692
24 months   ki1135781-COHORTS       PHILIPPINES   NA                   NA                0.6808081   0.6517553   0.7098609
24 months   kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                0.4908374   0.4777103   0.5039644
24 months   kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                0.3922477   0.3752571   0.4092384


### Parameter: RR


agecat      studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED       BANGLADESH    1                    0                 1.2395939   0.5170294   2.9719647
Birth       ki0047075b-MAL-ED       INDIA         0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED       INDIA         1                    0                 1.3110368   0.6668241   2.5776176
Birth       ki0047075b-MAL-ED       PERU          0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED       PERU          1                    0                 1.1551459   0.5382944   2.4788706
Birth       ki1135781-COHORTS       INDIA         0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS       INDIA         1                    0                 0.7578062   0.6401705   0.8970582
Birth       kiGH5241-JiVitA-3       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3       BANGLADESH    1                    0                 0.8656098   0.8273091   0.9056835
Birth       kiGH5241-JiVitA-4       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4       BANGLADESH    1                    0                 0.8835588   0.6828837   1.1432051
6 months    ki0047075b-MAL-ED       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED       BANGLADESH    1                    0                 1.5049505   0.6339883   3.5724256
6 months    ki0047075b-MAL-ED       INDIA         0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED       INDIA         1                    0                 0.7287380   0.4201607   1.2639427
6 months    ki0047075b-MAL-ED       PERU          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED       PERU          1                    0                 1.4059172   0.8664428   2.2812852
6 months    ki1017093-NIH-Birth     BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093-NIH-Birth     BANGLADESH    1                    0                 0.9153765   0.6833230   1.2262342
6 months    ki1017093b-PROVIDE      BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE      BANGLADESH    1                    0                 0.6870871   0.3317411   1.4230635
6 months    ki1017093c-NIH-Crypto   BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH    1                    0                 1.1939024   0.7468300   1.9086044
6 months    ki1135781-COHORTS       GUATEMALA     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS       GUATEMALA     1                    0                 0.8720277   0.6369582   1.1938495
6 months    ki1135781-COHORTS       INDIA         0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS       INDIA         1                    0                 0.5319359   0.4650019   0.6085046
6 months    ki1135781-COHORTS       PHILIPPINES   0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS       PHILIPPINES   1                    0                 0.3257103   0.1824453   0.5814741
6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    0                 0.7770037   0.7332811   0.8233333
6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    0                 0.7952299   0.7021132   0.9006960
24 months   ki0047075b-MAL-ED       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED       BANGLADESH    1                    0                 0.9476980   0.6368693   1.4102289
24 months   ki0047075b-MAL-ED       INDIA         0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED       INDIA         1                    0                 0.7348178   0.5307120   1.0174203
24 months   ki0047075b-MAL-ED       PERU          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED       PERU          1                    0                 0.9057751   0.5777367   1.4200732
24 months   ki1017093-NIH-Birth     BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093-NIH-Birth     BANGLADESH    1                    0                 0.8464052   0.7059037   1.0148719
24 months   ki1017093b-PROVIDE      BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE      BANGLADESH    1                    0                 0.7075099   0.4503692   1.1114665
24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    0                 1.0650727   0.6833823   1.6599491
24 months   ki1135781-COHORTS       GUATEMALA     0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS       GUATEMALA     1                    0                 0.9298661   0.8109393   1.0662340
24 months   ki1135781-COHORTS       INDIA         0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS       INDIA         1                    0                 0.6112190   0.5658620   0.6602116
24 months   ki1135781-COHORTS       PHILIPPINES   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS       PHILIPPINES   1                    0                 0.4789116   0.3759999   0.6099902
24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    0                 0.7768898   0.7403311   0.8152539
24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    0                 0.8202233   0.7537833   0.8925195


### Parameter: PAR


agecat      studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH    0                    NA                 0.0272580   -0.0755772    0.1300932
Birth       ki0047075b-MAL-ED       INDIA         0                    NA                 0.0199785   -0.0298771    0.0698342
Birth       ki0047075b-MAL-ED       PERU          0                    NA                 0.0042979   -0.0192827    0.0278785
Birth       ki1135781-COHORTS       INDIA         0                    NA                -0.0116437   -0.0184532   -0.0048341
Birth       kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.0321572   -0.0424144   -0.0219001
Birth       kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.0282171   -0.0885889    0.0321548
6 months    ki0047075b-MAL-ED       BANGLADESH    0                    NA                 0.0559211   -0.0459368    0.1577789
6 months    ki0047075b-MAL-ED       INDIA         0                    NA                -0.0271588   -0.0735809    0.0192633
6 months    ki0047075b-MAL-ED       PERU          0                    NA                 0.0197603   -0.0107552    0.0502759
6 months    ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.0089520   -0.0382318    0.0203278
6 months    ki1017093b-PROVIDE      BANGLADESH    0                    NA                -0.0689792   -0.2265213    0.0885629
6 months    ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                 0.0304520   -0.0448432    0.1057472
6 months    ki1135781-COHORTS       GUATEMALA     0                    NA                -0.0057987   -0.0184393    0.0068418
6 months    ki1135781-COHORTS       INDIA         0                    NA                -0.0421288   -0.0503052   -0.0339524
6 months    ki1135781-COHORTS       PHILIPPINES   0                    NA                -0.0210271   -0.0285418   -0.0135124
6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.0478154   -0.0592409   -0.0363900
6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.0474970   -0.0746621   -0.0203320
24 months   ki0047075b-MAL-ED       BANGLADESH    0                    NA                -0.0216068   -0.1844748    0.1412612
24 months   ki0047075b-MAL-ED       INDIA         0                    NA                -0.0577410   -0.1173916    0.0019095
24 months   ki0047075b-MAL-ED       PERU          0                    NA                -0.0084920   -0.0461051    0.0291212
24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.0359550   -0.0743119    0.0024019
24 months   ki1017093b-PROVIDE      BANGLADESH    0                    NA                -0.1284722   -0.3233210    0.0663765
24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                 0.0136041   -0.0799692    0.1071774
24 months   ki1135781-COHORTS       GUATEMALA     0                    NA                -0.0047982   -0.0136074    0.0040111
24 months   ki1135781-COHORTS       INDIA         0                    NA                -0.0886167   -0.1015496   -0.0756838
24 months   ki1135781-COHORTS       PHILIPPINES   0                    NA                -0.0483586   -0.0621016   -0.0346156
24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.0921973   -0.1103079   -0.0740866
24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.0635793   -0.0917166   -0.0354421


### Parameter: PAF


agecat      studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH    0                    NA                 0.1678521   -0.7783643    0.6106140
Birth       ki0047075b-MAL-ED       INDIA         0                    NA                 0.1308937   -0.2626323    0.4017691
Birth       ki0047075b-MAL-ED       PERU          0                    NA                 0.0370506   -0.1889133    0.2200680
Birth       ki1135781-COHORTS       INDIA         0                    NA                -0.0984251   -0.1571458   -0.0426842
Birth       kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.0994514   -0.1317860   -0.0680406
Birth       kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.0939046   -0.3146749    0.0897922
6 months    ki0047075b-MAL-ED       BANGLADESH    0                    NA                 0.2982456   -0.5135140    0.6746253
6 months    ki0047075b-MAL-ED       INDIA         0                    NA                -0.1438182   -0.4163215    0.0762549
6 months    ki0047075b-MAL-ED       PERU          0                    NA                 0.0911749   -0.0602075    0.2209421
6 months    ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.0333835   -0.1485231    0.0702133
6 months    ki1017093b-PROVIDE      BANGLADESH    0                    NA                -0.4263502   -1.8201542    0.2785944
6 months    ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                 0.1448527   -0.2994809    0.4372546
6 months    ki1135781-COHORTS       GUATEMALA     0                    NA                -0.0132027   -0.0424092    0.0151855
6 months    ki1135781-COHORTS       INDIA         0                    NA                -0.2152336   -0.2569817   -0.1748722
6 months    ki1135781-COHORTS       PHILIPPINES   0                    NA                -0.0977354   -0.1324904   -0.0640469
6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.1901751   -0.2369753   -0.1451455
6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.1883100   -0.3016389   -0.0848482
24 months   ki0047075b-MAL-ED       BANGLADESH    0                    NA                -0.0467413   -0.4656896    0.2524561
24 months   ki0047075b-MAL-ED       INDIA         0                    NA                -0.1396961   -0.2946758   -0.0032683
24 months   ki0047075b-MAL-ED       PERU          0                    NA                -0.0231171   -0.1308257    0.0743325
24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.0648097   -0.1366280    0.0024707
24 months   ki1017093b-PROVIDE      BANGLADESH    0                    NA                -0.3894737   -1.1265707    0.0921359
24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                 0.0530454   -0.3920346    0.3558185
24 months   ki1135781-COHORTS       GUATEMALA     0                    NA                -0.0060637   -0.0172707    0.0050199
24 months   ki1135781-COHORTS       INDIA         0                    NA                -0.1797229   -0.2070907   -0.1529757
24 months   ki1135781-COHORTS       PHILIPPINES   0                    NA                -0.0710312   -0.0922208   -0.0502526
24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.1878367   -0.2260920   -0.1507749
24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.1620897   -0.2372673   -0.0914800
