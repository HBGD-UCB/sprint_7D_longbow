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

**Outcome Variable:** sstunted

## Predictor Variables

**Intervention Variable:** safeh20

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        safeh20    sstunted   n_cell       n
----------  -------------------------  -----------------------------  --------  ---------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                 0      228     234
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                 1        6     234
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                 0        0     234
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                 1        0     234
Birth       ki0047075b-MAL-ED          BRAZIL                         0                 0      120     124
Birth       ki0047075b-MAL-ED          BRAZIL                         0                 1        4     124
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 0        0     124
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 1        0     124
Birth       ki0047075b-MAL-ED          INDIA                          0                 0      184     191
Birth       ki0047075b-MAL-ED          INDIA                          0                 1        7     191
Birth       ki0047075b-MAL-ED          INDIA                          1                 0        0     191
Birth       ki0047075b-MAL-ED          INDIA                          1                 1        0     191
Birth       ki0047075b-MAL-ED          NEPAL                          0                 0      162     168
Birth       ki0047075b-MAL-ED          NEPAL                          0                 1        5     168
Birth       ki0047075b-MAL-ED          NEPAL                          1                 0        1     168
Birth       ki0047075b-MAL-ED          NEPAL                          1                 1        0     168
Birth       ki0047075b-MAL-ED          PERU                           0                 0      231     247
Birth       ki0047075b-MAL-ED          PERU                           0                 1        7     247
Birth       ki0047075b-MAL-ED          PERU                           1                 0        9     247
Birth       ki0047075b-MAL-ED          PERU                           1                 1        0     247
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0      182     216
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        1     216
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0       33     216
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        0     216
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0       37     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1        2     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0       76     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        3     118
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                 0        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                 1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                 0       28      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                 1        0      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                 0        0      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                 1        0      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                 0       26      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                 1        1      27
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                 0       56   39186
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                 1       14   39186
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                 0    35048   39186
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                 1     4068   39186
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                 0        0    1644
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                 1        0    1644
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                 0     1516    1644
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                 1      128    1644
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                 0      232     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                 1        8     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 0        0     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 1        0     240
6 months    ki0047075b-MAL-ED          BRAZIL                         0                 0      142     142
6 months    ki0047075b-MAL-ED          BRAZIL                         0                 1        0     142
6 months    ki0047075b-MAL-ED          BRAZIL                         1                 0        0     142
6 months    ki0047075b-MAL-ED          BRAZIL                         1                 1        0     142
6 months    ki0047075b-MAL-ED          INDIA                          0                 0      226     235
6 months    ki0047075b-MAL-ED          INDIA                          0                 1        9     235
6 months    ki0047075b-MAL-ED          INDIA                          1                 0        0     235
6 months    ki0047075b-MAL-ED          INDIA                          1                 1        0     235
6 months    ki0047075b-MAL-ED          NEPAL                          0                 0      232     233
6 months    ki0047075b-MAL-ED          NEPAL                          0                 1        0     233
6 months    ki0047075b-MAL-ED          NEPAL                          1                 0        1     233
6 months    ki0047075b-MAL-ED          NEPAL                          1                 1        0     233
6 months    ki0047075b-MAL-ED          PERU                           0                 0      237     259
6 months    ki0047075b-MAL-ED          PERU                           0                 1       11     259
6 months    ki0047075b-MAL-ED          PERU                           1                 0       11     259
6 months    ki0047075b-MAL-ED          PERU                           1                 1        0     259
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0      207     248
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        4     248
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0       35     248
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        2     248
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0       73     246
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1        5     246
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0      159     246
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        9     246
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                 0        0     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                 1        0     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                 0      326     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                 1       54     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                 0        2     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                 1        0     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                 0      500     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                 1       35     537
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                 0        0     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                 1        0     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 0      567     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 1       14     581
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                 0        0     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                 1        0     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      692     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                 1       23     715
6 months    ki1114097-CONTENT          PERU                           0                 0        3      57
6 months    ki1114097-CONTENT          PERU                           0                 1        0      57
6 months    ki1114097-CONTENT          PERU                           1                 0       54      57
6 months    ki1114097-CONTENT          PERU                           1                 1        0      57
6 months    ki1148112-LCNI-5           MALAWI                         0                 0      131     816
6 months    ki1148112-LCNI-5           MALAWI                         0                 1       13     816
6 months    ki1148112-LCNI-5           MALAWI                         1                 0      620     816
6 months    ki1148112-LCNI-5           MALAWI                         1                 1       52     816
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                 0       33   33561
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                 1        6   33561
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 0    31493   33561
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 1     2029   33561
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                 0        2    9441
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                 1        0    9441
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                 0     8913    9441
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                 1      526    9441
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 0      186     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 1       26     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 0        0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 1        0     212
24 months   ki0047075b-MAL-ED          BRAZIL                         0                 0      113     113
24 months   ki0047075b-MAL-ED          BRAZIL                         0                 1        0     113
24 months   ki0047075b-MAL-ED          BRAZIL                         1                 0        0     113
24 months   ki0047075b-MAL-ED          BRAZIL                         1                 1        0     113
24 months   ki0047075b-MAL-ED          INDIA                          0                 0      199     227
24 months   ki0047075b-MAL-ED          INDIA                          0                 1       28     227
24 months   ki0047075b-MAL-ED          INDIA                          1                 0        0     227
24 months   ki0047075b-MAL-ED          INDIA                          1                 1        0     227
24 months   ki0047075b-MAL-ED          NEPAL                          0                 0      218     226
24 months   ki0047075b-MAL-ED          NEPAL                          0                 1        7     226
24 months   ki0047075b-MAL-ED          NEPAL                          1                 0        1     226
24 months   ki0047075b-MAL-ED          NEPAL                          1                 1        0     226
24 months   ki0047075b-MAL-ED          PERU                           0                 0      173     193
24 months   ki0047075b-MAL-ED          PERU                           0                 1       13     193
24 months   ki0047075b-MAL-ED          PERU                           1                 0        5     193
24 months   ki0047075b-MAL-ED          PERU                           1                 1        2     193
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0      182     237
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1       21     237
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0       29     237
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        5     237
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0       48     213
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1       20     213
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0       96     213
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1       49     213
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                 0        2     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                 1        0     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                 0      334     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                 1       93     429
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                 0        0     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                 1        0     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 0      527     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 1       49     576
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                 0        0     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                 1        0     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      479     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 1       35     514
24 months   ki1114097-CONTENT          PERU                           0                 0        3      48
24 months   ki1114097-CONTENT          PERU                           0                 1        0      48
24 months   ki1114097-CONTENT          PERU                           1                 0       45      48
24 months   ki1114097-CONTENT          PERU                           1                 1        0      48
24 months   ki1148112-LCNI-5           MALAWI                         0                 0       88     574
24 months   ki1148112-LCNI-5           MALAWI                         0                 1       11     574
24 months   ki1148112-LCNI-5           MALAWI                         1                 0      420     574
24 months   ki1148112-LCNI-5           MALAWI                         1                 1       55     574
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                 0       20   17208
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                 1        2   17208
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 0    14508   17208
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 1     2678   17208
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 0        2    9270
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 1        0    9270
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 0     8415    9270
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 1      853    9270


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
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
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
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/778d1487-ab62-4088-9bbf-b0112bb00e27/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/778d1487-ab62-4088-9bbf-b0112bb00e27/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/778d1487-ab62-4088-9bbf-b0112bb00e27/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/778d1487-ab62-4088-9bbf-b0112bb00e27/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid             country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                0.2000000    0.0576558   0.3423442
Birth       kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                0.1039984    0.0993274   0.1086693
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0641026    0.0096351   0.1185700
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0535714    0.0194530   0.0876898
6 months    ki1148112-LCNI-5    MALAWI                         0                    NA                0.0902778    0.0434420   0.1371136
6 months    ki1148112-LCNI-5    MALAWI                         1                    NA                0.0773810    0.0571667   0.0975952
6 months    kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                0.1538462   -0.0161563   0.3238486
6 months    kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                0.0605274    0.0566674   0.0643875
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                0.1034483    0.0614658   0.1454307
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                0.1470588    0.0277612   0.2663565
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2941176    0.1855646   0.4026707
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3379310    0.2607605   0.4151016
24 months   ki1148112-LCNI-5    MALAWI                         0                    NA                0.1111111    0.0491511   0.1730711
24 months   ki1148112-LCNI-5    MALAWI                         1                    NA                0.1157895    0.0869895   0.1445895


### Parameter: E(Y)


agecat      studyid             country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3   BANGLADESH                     NA                   NA                0.1041699   0.0994949   0.1088448
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0569106   0.0279012   0.0859199
6 months    ki1148112-LCNI-5    MALAWI                         NA                   NA                0.0796569   0.0610679   0.0982459
6 months    kiGH5241-JiVitA-3   BANGLADESH                     NA                   NA                0.0606359   0.0567797   0.0644920
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   NA                   NA                0.1097046   0.0698323   0.1495770
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3239437   0.2609486   0.3869387
24 months   ki1148112-LCNI-5    MALAWI                         NA                   NA                0.1149826   0.0888632   0.1411019


### Parameter: RR


agecat      studyid             country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
Birth       kiGH5241-JiVitA-3   BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3   BANGLADESH                     1                    0                 0.5199918   0.2550118   1.060310
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.8357143   0.2889943   2.416720
6 months    ki1148112-LCNI-5    MALAWI                         0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1148112-LCNI-5    MALAWI                         1                    0                 0.8571429   0.4795033   1.532198
6 months    kiGH5241-JiVitA-3   BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3   BANGLADESH                     1                    0                 0.3934282   0.1299201   1.191392
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    0                 1.4215686   0.5738928   3.521315
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.1489655   0.7444172   1.773363
24 months   ki1148112-LCNI-5    MALAWI                         0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1148112-LCNI-5    MALAWI                         1                    0                 1.0421053   0.5658912   1.919067


### Parameter: PAR


agecat      studyid             country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                -0.0958301   -0.2379249   0.0462646
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0071920   -0.0510887   0.0367047
6 months    ki1148112-LCNI-5    MALAWI                         0                    NA                -0.0106209   -0.0526320   0.0313902
6 months    kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                -0.0932103   -0.2631202   0.0766996
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                 0.0062564   -0.0119914   0.0245042
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0298260   -0.0608836   0.1205356
24 months   ki1148112-LCNI-5    MALAWI                         0                    NA                 0.0038715   -0.0526705   0.0604135


### Parameter: PAF


agecat      studyid             country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                -0.9199412   -2.9051597   0.0560759
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1263736   -1.2293845   0.4309113
6 months    ki1148112-LCNI-5    MALAWI                         0                    NA                -0.1333333   -0.8037459   0.2879017
6 months    kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                -1.5372141   -6.6573465   0.1593099
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                 0.0570292   -0.1236934   0.2086863
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0920716   -0.2358278   0.3329702
24 months   ki1148112-LCNI-5    MALAWI                         0                    NA                 0.0336700   -0.6073420   0.4190449
