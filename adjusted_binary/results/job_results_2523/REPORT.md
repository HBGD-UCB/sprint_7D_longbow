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
![](/tmp/6327b72c-078f-4a0f-9c3f-f4d63dce74e8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6327b72c-078f-4a0f-9c3f-f4d63dce74e8/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6327b72c-078f-4a0f-9c3f-f4d63dce74e8/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6327b72c-078f-4a0f-9c3f-f4d63dce74e8/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED       BANGLADESH    0                    NA                0.2132864   0.1364725   0.2901003
Birth       ki0047075b-MAL-ED       BANGLADESH    1                    NA                0.1726281   0.1210359   0.2242202
Birth       ki0047075b-MAL-ED       INDIA         0                    NA                0.1286145   0.0620280   0.1952010
Birth       ki0047075b-MAL-ED       INDIA         1                    NA                0.1793592   0.1023291   0.2563892
Birth       ki0047075b-MAL-ED       PERU          0                    NA                0.1137375   0.0695416   0.1579334
Birth       ki0047075b-MAL-ED       PERU          1                    NA                0.1104636   0.0499980   0.1709291
Birth       ki1135781-COHORTS       INDIA         0                    NA                0.1290106   0.1174176   0.1406037
Birth       ki1135781-COHORTS       INDIA         1                    NA                0.1061697   0.0922506   0.1200888
Birth       kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.3422547   0.3301665   0.3543429
Birth       kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.3116865   0.3025791   0.3207940
Birth       kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.3120085   0.2441980   0.3798189
Birth       kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.2864692   0.2457709   0.3271674
6 months    ki0047075b-MAL-ED       BANGLADESH    0                    NA                0.1335863   0.0721343   0.1950382
6 months    ki0047075b-MAL-ED       BANGLADESH    1                    NA                0.1974402   0.1440591   0.2508214
6 months    ki0047075b-MAL-ED       INDIA         0                    NA                0.2081448   0.1387540   0.2775356
6 months    ki0047075b-MAL-ED       INDIA         1                    NA                0.1411592   0.0757831   0.2065354
6 months    ki0047075b-MAL-ED       PERU          0                    NA                0.1946333   0.1417671   0.2474994
6 months    ki0047075b-MAL-ED       PERU          1                    NA                0.2371544   0.1643300   0.3099789
6 months    ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.2756895   0.2293805   0.3219985
6 months    ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.2534941   0.1974804   0.3095078
6 months    ki1017093b-PROVIDE      BANGLADESH    0                    NA                0.2375455   0.1031658   0.3719252
6 months    ki1017093b-PROVIDE      BANGLADESH    1                    NA                0.1584328   0.1281300   0.1887356
6 months    ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                0.1016709   0.0517571   0.1515846
6 months    ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                0.2134115   0.1813571   0.2454659
6 months    ki1135781-COHORTS       GUATEMALA     0                    NA                0.4405715   0.4012590   0.4798840
6 months    ki1135781-COHORTS       GUATEMALA     1                    NA                0.4368269   0.3868714   0.4867824
6 months    ki1135781-COHORTS       INDIA         0                    NA                0.2265685   0.2125055   0.2406314
6 months    ki1135781-COHORTS       INDIA         1                    NA                0.1462170   0.1309576   0.1614763
6 months    ki1135781-COHORTS       PHILIPPINES   0                    NA                0.2283174   0.2017447   0.2548902
6 months    ki1135781-COHORTS       PHILIPPINES   1                    NA                0.0525272   0.0241514   0.0809030
6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.2912932   0.2788070   0.3037794
6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.2416363   0.2324603   0.2508123
6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.3014032   0.2725235   0.3302828
6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.2402246   0.2242857   0.2561635
24 months   ki0047075b-MAL-ED       BANGLADESH    0                    NA                0.1225203   0.0211477   0.2238929
24 months   ki0047075b-MAL-ED       BANGLADESH    1                    NA                0.4432780   0.3725515   0.5140045
24 months   ki0047075b-MAL-ED       INDIA         0                    NA                0.5685893   0.4852350   0.6519436
24 months   ki0047075b-MAL-ED       INDIA         1                    NA                0.4791247   0.3927251   0.5655243
24 months   ki0047075b-MAL-ED       PERU          0                    NA                0.3174445   0.2440696   0.3908195
24 months   ki0047075b-MAL-ED       PERU          1                    NA                0.0874577   0.0129291   0.1619863
24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.5949824   0.5377937   0.6521711
24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.5264390   0.4575353   0.5953428
24 months   ki1017093b-PROVIDE      BANGLADESH    0                    NA                0.4306752   0.2329152   0.6284353
24 months   ki1017093b-PROVIDE      BANGLADESH    1                    NA                0.3253393   0.2863040   0.3643745
24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                0.3392718   0.2792117   0.3993319
24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                0.2628524   0.2225756   0.3031291
24 months   ki1135781-COHORTS       GUATEMALA     0                    NA                0.7933520   0.7662378   0.8204662
24 months   ki1135781-COHORTS       GUATEMALA     1                    NA                0.7130770   0.6701725   0.7559815
24 months   ki1135781-COHORTS       INDIA         0                    NA                0.5578392   0.5387135   0.5769650
24 months   ki1135781-COHORTS       INDIA         1                    NA                0.4092186   0.3867237   0.4317136
24 months   ki1135781-COHORTS       PHILIPPINES   0                    NA                0.7178790   0.6885137   0.7472444
24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                0.3650124   0.3118605   0.4181643
24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.5483034   0.5292026   0.5674042
24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.4703192   0.4556454   0.4849929
24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.4494680   0.4197789   0.4791570
24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.3788353   0.3592710   0.3983996


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
Birth       ki0047075b-MAL-ED       BANGLADESH    1                    0                 0.8093720   0.5068368   1.2924931
Birth       ki0047075b-MAL-ED       INDIA         0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED       INDIA         1                    0                 1.3945485   0.7165883   2.7139228
Birth       ki0047075b-MAL-ED       PERU          0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED       PERU          1                    0                 0.9712151   0.5028288   1.8759045
Birth       ki1135781-COHORTS       INDIA         0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS       INDIA         1                    0                 0.8229535   0.7022587   0.9643917
Birth       kiGH5241-JiVitA-3       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3       BANGLADESH    1                    0                 0.9106859   0.8718443   0.9512580
Birth       kiGH5241-JiVitA-4       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4       BANGLADESH    1                    0                 0.9181455   0.7078479   1.1909214
6 months    ki0047075b-MAL-ED       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED       BANGLADESH    1                    0                 1.4779979   0.8799010   2.4826403
6 months    ki0047075b-MAL-ED       INDIA         0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED       INDIA         1                    0                 0.6781781   0.3859756   1.1915922
6 months    ki0047075b-MAL-ED       PERU          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED       PERU          1                    0                 1.2184681   0.8133127   1.8254535
6 months    ki1017093-NIH-Birth     BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093-NIH-Birth     BANGLADESH    1                    0                 0.9194914   0.7046816   1.1997822
6 months    ki1017093b-PROVIDE      BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE      BANGLADESH    1                    0                 0.6669575   0.3708649   1.1994456
6 months    ki1017093c-NIH-Crypto   BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH    1                    0                 2.0990423   1.2580643   3.5021887
6 months    ki1135781-COHORTS       GUATEMALA     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS       GUATEMALA     1                    0                 0.9915005   0.8618141   1.1407023
6 months    ki1135781-COHORTS       INDIA         0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS       INDIA         1                    0                 0.6453544   0.5722441   0.7278054
6 months    ki1135781-COHORTS       PHILIPPINES   0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS       PHILIPPINES   1                    0                 0.2300622   0.1326696   0.3989506
6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    0                 0.8295296   0.7869221   0.8744440
6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    0                 0.7970207   0.7075019   0.8978662
24 months   ki0047075b-MAL-ED       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED       BANGLADESH    1                    0                 3.6179973   1.5663107   8.3571572
24 months   ki0047075b-MAL-ED       INDIA         0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED       INDIA         1                    0                 0.8426551   0.6688884   1.0615635
24 months   ki0047075b-MAL-ED       PERU          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED       PERU          1                    0                 0.2755055   0.1133408   0.6696909
24 months   ki1017093-NIH-Birth     BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093-NIH-Birth     BANGLADESH    1                    0                 0.8847976   0.7568749   1.0343410
24 months   ki1017093b-PROVIDE      BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE      BANGLADESH    1                    0                 0.7554167   0.4704254   1.2130605
24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    0                 0.7747545   0.6195012   0.9689159
24 months   ki1135781-COHORTS       GUATEMALA     0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS       GUATEMALA     1                    0                 0.8988154   0.8409669   0.9606432
24 months   ki1135781-COHORTS       INDIA         0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS       INDIA         1                    0                 0.7335781   0.6890476   0.7809864
24 months   ki1135781-COHORTS       PHILIPPINES   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS       PHILIPPINES   1                    0                 0.5084595   0.4379541   0.5903155
24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    0                 0.8577718   0.8213511   0.8958075
24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    0                 0.8428527   0.7761179   0.9153256


### Parameter: PAR


agecat      studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH    0                    NA                -0.0508933   -0.1250502    0.0232637
Birth       ki0047075b-MAL-ED       INDIA         0                    NA                 0.0240171   -0.0249877    0.0730219
Birth       ki0047075b-MAL-ED       PERU          0                    NA                 0.0022625   -0.0200652    0.0245902
Birth       ki1135781-COHORTS       INDIA         0                    NA                -0.0107108   -0.0174372   -0.0039843
Birth       kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.0189084   -0.0286826   -0.0091343
Birth       kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.0115218   -0.0699172    0.0468735
6 months    ki0047075b-MAL-ED       BANGLADESH    0                    NA                 0.0539137   -0.0091960    0.1170235
6 months    ki0047075b-MAL-ED       INDIA         0                    NA                -0.0193036   -0.0631307    0.0245235
6 months    ki0047075b-MAL-ED       PERU          0                    NA                 0.0220968   -0.0069495    0.0511431
6 months    ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.0075331   -0.0341860    0.0191198
6 months    ki1017093b-PROVIDE      BANGLADESH    0                    NA                -0.0757555   -0.2054412    0.0539303
6 months    ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                 0.1085564    0.0594808    0.1576320
6 months    ki1135781-COHORTS       GUATEMALA     0                    NA                -0.0013618   -0.0128852    0.0101617
6 months    ki1135781-COHORTS       INDIA         0                    NA                -0.0308332   -0.0384347   -0.0232317
6 months    ki1135781-COHORTS       PHILIPPINES   0                    NA                -0.0131743   -0.0198890   -0.0064597
6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.0398646   -0.0502826   -0.0294467
6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.0491752   -0.0751269   -0.0232235
24 months   ki0047075b-MAL-ED       BANGLADESH    0                    NA                 0.3397439    0.2422179    0.4372699
24 months   ki0047075b-MAL-ED       INDIA         0                    NA                -0.1552560   -0.2138317   -0.0966803
24 months   ki0047075b-MAL-ED       PERU          0                    NA                 0.0499024    0.0143452    0.0854596
24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.0402039   -0.0751434   -0.0052643
24 months   ki1017093b-PROVIDE      BANGLADESH    0                    NA                -0.1008141   -0.2936944    0.0920662
24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                -0.0828106   -0.1389783   -0.0266428
24 months   ki1135781-COHORTS       GUATEMALA     0                    NA                -0.0020573   -0.0101319    0.0060173
24 months   ki1135781-COHORTS       INDIA         0                    NA                -0.0647652   -0.0763366   -0.0531938
24 months   ki1135781-COHORTS       PHILIPPINES   0                    NA                -0.0370709   -0.0493499   -0.0247920
24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.0574660   -0.0732150   -0.0417170
24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.0572202   -0.0844286   -0.0300119


### Parameter: PAF


agecat      studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH    0                    NA                -0.3133953   -0.9053320    0.0946422
Birth       ki0047075b-MAL-ED       INDIA         0                    NA                 0.1573533   -0.2306277    0.4230152
Birth       ki0047075b-MAL-ED       PERU          0                    NA                 0.0195044   -0.1927257    0.1939709
Birth       ki1135781-COHORTS       INDIA         0                    NA                -0.0905392   -0.1490478   -0.0350098
Birth       kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.0584773   -0.0892510   -0.0285731
Birth       kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.0383439   -0.2522206    0.1390030
6 months    ki0047075b-MAL-ED       BANGLADESH    0                    NA                 0.2875398   -0.1039134    0.5401818
6 months    ki0047075b-MAL-ED       INDIA         0                    NA                -0.1022213   -0.3597960    0.1065632
6 months    ki0047075b-MAL-ED       PERU          0                    NA                 0.1019553   -0.0398917    0.2244536
6 months    ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.0280921   -0.1324741    0.0666688
6 months    ki1017093b-PROVIDE      BANGLADESH    0                    NA                -0.4682334   -1.5360369    0.1499693
6 months    ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                 0.5163763    0.2308998    0.6958890
6 months    ki1135781-COHORTS       GUATEMALA     0                    NA                -0.0031005   -0.0296934    0.0228056
6 months    ki1135781-COHORTS       INDIA         0                    NA                -0.1575250   -0.1970664   -0.1192896
6 months    ki1135781-COHORTS       PHILIPPINES   0                    NA                -0.0612352   -0.0923626   -0.0309947
6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.1585524   -0.2016497   -0.1170008
6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.1949633   -0.3036366   -0.0953492
24 months   ki0047075b-MAL-ED       BANGLADESH    0                    NA                 0.7349561    0.4203520    0.8788088
24 months   ki0047075b-MAL-ED       INDIA         0                    NA                -0.3756193   -0.5429241   -0.2264559
24 months   ki0047075b-MAL-ED       PERU          0                    NA                 0.1358455    0.0324760    0.2281710
24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.0724683   -0.1379804   -0.0107277
24 months   ki1017093b-PROVIDE      BANGLADESH    0                    NA                -0.3056259   -1.0433250    0.1657426
24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                -0.3228970   -0.5800537   -0.1075930
24 months   ki1135781-COHORTS       GUATEMALA     0                    NA                -0.0026000   -0.0128647    0.0075608
24 months   ki1135781-COHORTS       INDIA         0                    NA                -0.1313498   -0.1557301   -0.1074838
24 months   ki1135781-COHORTS       PHILIPPINES   0                    NA                -0.0544514   -0.0732246   -0.0360066
24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.1170775   -0.1502134   -0.0848961
24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.1458778   -0.2187507   -0.0773621
