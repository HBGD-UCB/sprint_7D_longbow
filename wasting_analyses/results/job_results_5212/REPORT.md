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

**Outcome Variable:** wasted

## Predictor Variables

**Intervention Variable:** safeh20

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
* impsan
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
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        safeh20    wasted   n_cell       n
----------  -------------------------  -----------------------------  --------  -------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               0      184     222
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               1       38     222
Birth       ki0047075b-MAL-ED          BANGLADESH                     1               0        0     222
Birth       ki0047075b-MAL-ED          BANGLADESH                     1               1        0     222
Birth       ki0047075b-MAL-ED          BRAZIL                         0               0      113     119
Birth       ki0047075b-MAL-ED          BRAZIL                         0               1        6     119
Birth       ki0047075b-MAL-ED          BRAZIL                         1               0        0     119
Birth       ki0047075b-MAL-ED          BRAZIL                         1               1        0     119
Birth       ki0047075b-MAL-ED          INDIA                          0               0      158     188
Birth       ki0047075b-MAL-ED          INDIA                          0               1       30     188
Birth       ki0047075b-MAL-ED          INDIA                          1               0        0     188
Birth       ki0047075b-MAL-ED          INDIA                          1               1        0     188
Birth       ki0047075b-MAL-ED          NEPAL                          0               0      143     164
Birth       ki0047075b-MAL-ED          NEPAL                          0               1       20     164
Birth       ki0047075b-MAL-ED          NEPAL                          1               0        1     164
Birth       ki0047075b-MAL-ED          NEPAL                          1               1        0     164
Birth       ki0047075b-MAL-ED          PERU                           0               0      226     240
Birth       ki0047075b-MAL-ED          PERU                           0               1        5     240
Birth       ki0047075b-MAL-ED          PERU                           1               0        9     240
Birth       ki0047075b-MAL-ED          PERU                           1               1        0     240
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0               0      171     214
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0               1       10     214
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1               0       30     214
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1               1        3     214
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               0       38     114
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               1        0     114
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0       74     114
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        2     114
Birth       ki1017093-NIH-Birth        BANGLADESH                     0               0        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     0               1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     1               0       21      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     1               1        7      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0               0        0      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0               1        0      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1               0       20      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1               1        3      23
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0               0       42   31380
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0               1        6   31380
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               0    28326   31380
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               1     3006   31380
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               0        0    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               1        0    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               0     1294    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               1       72    1366
6 months    ki0047075b-MAL-ED          BANGLADESH                     0               0      232     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0               1        8     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     1               0        0     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     1               1        0     240
6 months    ki0047075b-MAL-ED          BRAZIL                         0               0      141     142
6 months    ki0047075b-MAL-ED          BRAZIL                         0               1        1     142
6 months    ki0047075b-MAL-ED          BRAZIL                         1               0        0     142
6 months    ki0047075b-MAL-ED          BRAZIL                         1               1        0     142
6 months    ki0047075b-MAL-ED          INDIA                          0               0      217     235
6 months    ki0047075b-MAL-ED          INDIA                          0               1       18     235
6 months    ki0047075b-MAL-ED          INDIA                          1               0        0     235
6 months    ki0047075b-MAL-ED          INDIA                          1               1        0     235
6 months    ki0047075b-MAL-ED          NEPAL                          0               0      228     233
6 months    ki0047075b-MAL-ED          NEPAL                          0               1        4     233
6 months    ki0047075b-MAL-ED          NEPAL                          1               0        1     233
6 months    ki0047075b-MAL-ED          NEPAL                          1               1        0     233
6 months    ki0047075b-MAL-ED          PERU                           0               0      248     259
6 months    ki0047075b-MAL-ED          PERU                           0               1        0     259
6 months    ki0047075b-MAL-ED          PERU                           1               0       11     259
6 months    ki0047075b-MAL-ED          PERU                           1               1        0     259
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               0      205     248
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               1        6     248
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1               0       36     248
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1               1        1     248
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               0       77     246
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               1        1     246
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0      168     246
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        0     246
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0               0        0     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0               1        0     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1               0      311     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1               1       69     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     0               0        2     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     0               1        0     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     1               0      500     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     1               1       34     536
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               0        0     580
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               1        0     580
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               0      556     580
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               1       24     580
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0               0        0     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0               1        0     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1               0      694     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1               1       21     715
6 months    ki1114097-CONTENT          PERU                           0               0        3      57
6 months    ki1114097-CONTENT          PERU                           0               1        0      57
6 months    ki1114097-CONTENT          PERU                           1               0       54      57
6 months    ki1114097-CONTENT          PERU                           1               1        0      57
6 months    ki1148112-LCNI-5           MALAWI                         0               0      141     816
6 months    ki1148112-LCNI-5           MALAWI                         0               1        3     816
6 months    ki1148112-LCNI-5           MALAWI                         1               0      661     816
6 months    ki1148112-LCNI-5           MALAWI                         1               1       11     816
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0               0       35   33507
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0               1        4   33507
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               0    30635   33507
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               1     2833   33507
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0               0        2    9445
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0               1        0    9445
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               0     8911    9445
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               1      532    9445
24 months   ki0047075b-MAL-ED          BANGLADESH                     0               0      191     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0               1       21     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1               0        0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1               1        0     212
24 months   ki0047075b-MAL-ED          BRAZIL                         0               0      111     113
24 months   ki0047075b-MAL-ED          BRAZIL                         0               1        2     113
24 months   ki0047075b-MAL-ED          BRAZIL                         1               0        0     113
24 months   ki0047075b-MAL-ED          BRAZIL                         1               1        0     113
24 months   ki0047075b-MAL-ED          INDIA                          0               0      200     227
24 months   ki0047075b-MAL-ED          INDIA                          0               1       27     227
24 months   ki0047075b-MAL-ED          INDIA                          1               0        0     227
24 months   ki0047075b-MAL-ED          INDIA                          1               1        0     227
24 months   ki0047075b-MAL-ED          NEPAL                          0               0      220     226
24 months   ki0047075b-MAL-ED          NEPAL                          0               1        5     226
24 months   ki0047075b-MAL-ED          NEPAL                          1               0        1     226
24 months   ki0047075b-MAL-ED          NEPAL                          1               1        0     226
24 months   ki0047075b-MAL-ED          PERU                           0               0      183     193
24 months   ki0047075b-MAL-ED          PERU                           0               1        3     193
24 months   ki0047075b-MAL-ED          PERU                           1               0        7     193
24 months   ki0047075b-MAL-ED          PERU                           1               1        0     193
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               0      202     237
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               1        1     237
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1               0       34     237
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1               1        0     237
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               0       68     213
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               1        0     213
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0      141     213
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        4     213
24 months   ki1017093-NIH-Birth        BANGLADESH                     0               0        2     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     0               1        0     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     1               0      373     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     1               1       53     428
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               0        0     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               1        0     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               0      512     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               1       65     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0               0        0     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0               1        0     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1               0      469     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1               1       45     514
24 months   ki1114097-CONTENT          PERU                           0               0        3      48
24 months   ki1114097-CONTENT          PERU                           0               1        0      48
24 months   ki1114097-CONTENT          PERU                           1               0       45      48
24 months   ki1114097-CONTENT          PERU                           1               1        0      48
24 months   ki1148112-LCNI-5           MALAWI                         0               0       92     558
24 months   ki1148112-LCNI-5           MALAWI                         0               1        2     558
24 months   ki1148112-LCNI-5           MALAWI                         1               0      456     558
24 months   ki1148112-LCNI-5           MALAWI                         1               1        8     558
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               0       14   17150
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               1        8   17150
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               0    13392   17150
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               1     3736   17150
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               0        2    9237
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               1        0    9237
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               0     7421    9237
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               1     1814    9237


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
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/181210d9-5294-40b1-9ac4-d002a4a84ead/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/181210d9-5294-40b1-9ac4-d002a4a84ead/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/181210d9-5294-40b1-9ac4-d002a4a84ead/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/181210d9-5294-40b1-9ac4-d002a4a84ead/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid             country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
Birth       kiGH5241-JiVitA-3   BANGLADESH   0                    NA                0.1250000   -0.0190111   0.2690111
Birth       kiGH5241-JiVitA-3   BANGLADESH   1                    NA                0.0959403    0.0907459   0.1011346
24 months   kiGH5241-JiVitA-3   BANGLADESH   0                    NA                0.3636364   -0.0628396   0.7901123
24 months   kiGH5241-JiVitA-3   BANGLADESH   1                    NA                0.2181224    0.2081672   0.2280776


### Parameter: E(Y)


agecat      studyid             country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3   BANGLADESH   NA                   NA                0.0959847   0.0907827   0.1011867
24 months   kiGH5241-JiVitA-3   BANGLADESH   NA                   NA                0.2183090   0.2083912   0.2282269


### Parameter: RR


agecat      studyid             country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       kiGH5241-JiVitA-3   BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3   BANGLADESH   1                    0                 0.7675220   0.2429018   2.425219
24 months   kiGH5241-JiVitA-3   BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3   BANGLADESH   1                    0                 0.5998365   0.1846923   1.948126


### Parameter: PAR


agecat      studyid             country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       kiGH5241-JiVitA-3   BANGLADESH   0                    NA                -0.0290153   -0.1726238   0.1145932
24 months   kiGH5241-JiVitA-3   BANGLADESH   0                    NA                -0.1453273   -0.5722520   0.2815974


### Parameter: PAF


agecat      studyid             country      intervention_level   baseline_level      estimate    ci_lower    ci_upper
----------  ------------------  -----------  -------------------  ---------------  -----------  ----------  ----------
Birth       kiGH5241-JiVitA-3   BANGLADESH   0                    NA                -0.3022908   -3.105447   0.5868997
24 months   kiGH5241-JiVitA-3   BANGLADESH   0                    NA                -0.6656954   -4.394918   0.4857120
