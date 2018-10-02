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

**Intervention Variable:** predfeed6

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

agecat      studyid                    country                        predfeed6    wasted   n_cell       n
----------  -------------------------  -----------------------------  ----------  -------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                 0       83     219
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                 1       22     219
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                 0       98     219
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                 1       16     219
Birth       ki0047075b-MAL-ED          BRAZIL                         0                 0      136     168
Birth       ki0047075b-MAL-ED          BRAZIL                         0                 1        6     168
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 0       26     168
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 1        0     168
Birth       ki0047075b-MAL-ED          INDIA                          0                 0      144     187
Birth       ki0047075b-MAL-ED          INDIA                          0                 1       28     187
Birth       ki0047075b-MAL-ED          INDIA                          1                 0       13     187
Birth       ki0047075b-MAL-ED          INDIA                          1                 1        2     187
Birth       ki0047075b-MAL-ED          NEPAL                          0                 0      124     165
Birth       ki0047075b-MAL-ED          NEPAL                          0                 1       19     165
Birth       ki0047075b-MAL-ED          NEPAL                          1                 0       21     165
Birth       ki0047075b-MAL-ED          NEPAL                          1                 1        1     165
Birth       ki0047075b-MAL-ED          PERU                           0                 0      141     249
Birth       ki0047075b-MAL-ED          PERU                           0                 1        4     249
Birth       ki0047075b-MAL-ED          PERU                           1                 0      103     249
Birth       ki0047075b-MAL-ED          PERU                           1                 1        1     249
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0      192     209
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1       14     209
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0        3     209
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        0     209
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0      112     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1        2     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0        1     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        0     115
Birth       ki1000109-EE               PAKISTAN                       0                 0        2       2
Birth       ki1000109-EE               PAKISTAN                       0                 1        0       2
Birth       ki1000109-EE               PAKISTAN                       1                 0        0       2
Birth       ki1000109-EE               PAKISTAN                       1                 1        0       2
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                 0     5410   30840
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                 1      640   30840
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                 0    22484   30840
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                 1     2306   30840
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                 0      216    1266
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                 1        8    1266
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                 0      980    1266
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                 1       62    1266
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                 0      108     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                 1        4     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 0      119     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 1        4     235
6 months    ki0047075b-MAL-ED          BRAZIL                         0                 0      174     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                 1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                 0       34     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                 1        1     209
6 months    ki0047075b-MAL-ED          INDIA                          0                 0      197     232
6 months    ki0047075b-MAL-ED          INDIA                          0                 1       17     232
6 months    ki0047075b-MAL-ED          INDIA                          1                 0       18     232
6 months    ki0047075b-MAL-ED          INDIA                          1                 1        0     232
6 months    ki0047075b-MAL-ED          NEPAL                          0                 0      202     235
6 months    ki0047075b-MAL-ED          NEPAL                          0                 1        4     235
6 months    ki0047075b-MAL-ED          NEPAL                          1                 0       29     235
6 months    ki0047075b-MAL-ED          NEPAL                          1                 1        0     235
6 months    ki0047075b-MAL-ED          PERU                           0                 0      156     269
6 months    ki0047075b-MAL-ED          PERU                           0                 1        0     269
6 months    ki0047075b-MAL-ED          PERU                           1                 0      113     269
6 months    ki0047075b-MAL-ED          PERU                           1                 1        0     269
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0      232     242
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        7     242
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0        3     242
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        0     242
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0      241     244
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1        1     244
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0        2     244
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        0     244
6 months    ki1000109-EE               PAKISTAN                       0                 0      252     752
6 months    ki1000109-EE               PAKISTAN                       0                 1       60     752
6 months    ki1000109-EE               PAKISTAN                       1                 0      402     752
6 months    ki1000109-EE               PAKISTAN                       1                 1       38     752
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                 0      127     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                 1       41     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                 0        0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                 1        0     168
6 months    ki1113344-GMS-Nepal        NEPAL                          0                 0      256    1092
6 months    ki1113344-GMS-Nepal        NEPAL                          0                 1       28    1092
6 months    ki1113344-GMS-Nepal        NEPAL                          1                 0      736    1092
6 months    ki1113344-GMS-Nepal        NEPAL                          1                 1       72    1092
6 months    ki1148112-LCNI-5           MALAWI                         0                 0      221     272
6 months    ki1148112-LCNI-5           MALAWI                         0                 1        4     272
6 months    ki1148112-LCNI-5           MALAWI                         1                 0       47     272
6 months    ki1148112-LCNI-5           MALAWI                         1                 1        0     272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                 0     6116   33310
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                 1      822   33310
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 0    24364   33310
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 1     2008   33310
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                 0     1702    8520
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                 1      156    8520
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                 0     6344    8520
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                 1      318    8520
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 0       91     209
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 1        6     209
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 0       97     209
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 1       15     209
24 months   ki0047075b-MAL-ED          BRAZIL                         0                 0      138     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                 1        2     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                 0       28     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                 1        1     169
24 months   ki0047075b-MAL-ED          INDIA                          0                 0      183     224
24 months   ki0047075b-MAL-ED          INDIA                          0                 1       24     224
24 months   ki0047075b-MAL-ED          INDIA                          1                 0       16     224
24 months   ki0047075b-MAL-ED          INDIA                          1                 1        1     224
24 months   ki0047075b-MAL-ED          NEPAL                          0                 0      194     227
24 months   ki0047075b-MAL-ED          NEPAL                          0                 1        5     227
24 months   ki0047075b-MAL-ED          NEPAL                          1                 0       28     227
24 months   ki0047075b-MAL-ED          NEPAL                          1                 1        0     227
24 months   ki0047075b-MAL-ED          PERU                           0                 0      113     198
24 months   ki0047075b-MAL-ED          PERU                           0                 1        1     198
24 months   ki0047075b-MAL-ED          PERU                           1                 0       83     198
24 months   ki0047075b-MAL-ED          PERU                           1                 1        1     198
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0      223     227
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        1     227
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0        3     227
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        0     227
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0      206     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1        4     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0        2     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        0     212
24 months   ki1113344-GMS-Nepal        NEPAL                          0                 0      182     958
24 months   ki1113344-GMS-Nepal        NEPAL                          0                 1       58     958
24 months   ki1113344-GMS-Nepal        NEPAL                          1                 0      596     958
24 months   ki1113344-GMS-Nepal        NEPAL                          1                 1      122     958
24 months   ki1148112-LCNI-5           MALAWI                         0                 0      147     184
24 months   ki1148112-LCNI-5           MALAWI                         0                 1        3     184
24 months   ki1148112-LCNI-5           MALAWI                         1                 0       33     184
24 months   ki1148112-LCNI-5           MALAWI                         1                 1        1     184
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                 0     2828   17026
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                 1      892   17026
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 0    10468   17026
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 1     2838   17026
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 0     1366    8318
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 1      402    8318
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 0     5310    8318
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 1     1240    8318


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/1a6e83e4-d879-458c-8830-1e6d2311f2ed/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/1a6e83e4-d879-458c-8830-1e6d2311f2ed/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/1a6e83e4-d879-458c-8830-1e6d2311f2ed/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/1a6e83e4-d879-458c-8830-1e6d2311f2ed/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.2097195   0.1321860   0.2872530
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1401886   0.0767574   0.2036197
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0941818   0.0888556   0.0995081
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0955448   0.0903074   0.1007821
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0357143   0.0025801   0.0688485
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0595010   0.0357033   0.0832986
6 months    ki1000109-EE          PAKISTAN     0                    NA                0.1871949   0.1259035   0.2484863
6 months    ki1000109-EE          PAKISTAN     1                    NA                0.0882638   0.0511098   0.1254177
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.0973021   0.0483745   0.1462297
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0893201   0.0615846   0.1170556
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1094737   0.0997123   0.1192352
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0773393   0.0723082   0.0823704
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0773332   0.0614423   0.0932241
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0485051   0.0379867   0.0590236
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.0618557   0.0138018   0.1099095
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1339286   0.0707028   0.1971543
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2205877   0.1546821   0.2864932
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1670320   0.1288584   0.2052055
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.2198223   0.2023453   0.2372993
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.2159115   0.2050662   0.2267568
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.2125931   0.1851047   0.2400815
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.1915478   0.1765728   0.2065229


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1735160   0.1232462   0.2237857
Birth       kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0955253   0.0903072   0.1007433
Birth       kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0552923   0.0348344   0.0757501
6 months    ki1000109-EE          PAKISTAN     NA                   NA                0.1303191   0.0962457   0.1643926
6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.0915751   0.0673602   0.1157900
6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0849595   0.0801414   0.0897775
6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0556338   0.0463917   0.0648759
24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1004785   0.0596222   0.1413347
24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1878914   0.1528732   0.2229097
24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.2190767   0.2091475   0.2290059
24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.1974032   0.1830515   0.2117549


### Parameter: RR


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    0                 0.6684576   0.3735607   1.1961526
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    0                 1.0144712   0.9962810   1.0329935
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    0                 1.6660269   0.6055423   4.5837352
6 months    ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000109-EE          PAKISTAN     1                    0                 0.4715072   0.2769925   0.8026175
6 months    ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal   NEPAL        1                    0                 0.9179664   0.5083347   1.6576921
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.7064643   0.6360562   0.7846661
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.6272228   0.4652109   0.8456561
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    0                 2.1651786   0.8723550   5.3739567
24 months   ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal   NEPAL        1                    0                 0.7572135   0.5198672   1.1029206
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.9822095   0.8967833   1.0757732
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.9010068   0.7793988   1.0415891


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.0362035   -0.0883022    0.0158953
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.0013434    0.0000166    0.0026703
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                 0.0195780   -0.0140625    0.0532184
6 months    ki1000109-EE          PAKISTAN     0                    NA                -0.0568758   -0.0989177   -0.0148339
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0057270   -0.0473394    0.0358853
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0245143   -0.0326505   -0.0163780
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0216994   -0.0361692   -0.0072296
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0386228   -0.0042137    0.0814593
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0326962   -0.0878843    0.0224919
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0007456   -0.0159760    0.0144849
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0151899   -0.0380658    0.0076860


### Parameter: PAF


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.2086464   -0.5458787    0.0550190
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.0140637    0.0000883    0.0278439
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                 0.3540816   -0.5823543    0.7363356
6 months    ki1000109-EE          PAKISTAN     0                    NA                -0.4364346   -0.7818586   -0.1579731
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0625391   -0.6290862    0.3069799
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.2885406   -0.3881409   -0.1960868
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.3900399   -0.6975445   -0.1382388
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.3843888   -0.1805817    0.6789912
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.1740165   -0.5092749    0.0867702
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0034032   -0.0754032    0.0637764
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0769486   -0.1991980    0.0328384
