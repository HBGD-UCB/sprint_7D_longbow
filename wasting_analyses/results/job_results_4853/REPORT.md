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

**Outcome Variable:** swasted

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

agecat      studyid                    country                        predfeed6    swasted   n_cell       n
----------  -------------------------  -----------------------------  ----------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  0       98     219
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  1        7     219
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  0      113     219
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  1        1     219
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  0      142     168
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  1        0     168
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  0       26     168
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  1        0     168
Birth       ki0047075b-MAL-ED          INDIA                          0                  0      166     187
Birth       ki0047075b-MAL-ED          INDIA                          0                  1        6     187
Birth       ki0047075b-MAL-ED          INDIA                          1                  0       15     187
Birth       ki0047075b-MAL-ED          INDIA                          1                  1        0     187
Birth       ki0047075b-MAL-ED          NEPAL                          0                  0      139     165
Birth       ki0047075b-MAL-ED          NEPAL                          0                  1        4     165
Birth       ki0047075b-MAL-ED          NEPAL                          1                  0       22     165
Birth       ki0047075b-MAL-ED          NEPAL                          1                  1        0     165
Birth       ki0047075b-MAL-ED          PERU                           0                  0      145     249
Birth       ki0047075b-MAL-ED          PERU                           0                  1        0     249
Birth       ki0047075b-MAL-ED          PERU                           1                  0      104     249
Birth       ki0047075b-MAL-ED          PERU                           1                  1        0     249
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      205     209
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        1     209
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        3     209
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     209
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      113     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        1     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        1     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     115
Birth       ki1000109-EE               PAKISTAN                       0                  0        2       2
Birth       ki1000109-EE               PAKISTAN                       0                  1        0       2
Birth       ki1000109-EE               PAKISTAN                       1                  0        0       2
Birth       ki1000109-EE               PAKISTAN                       1                  1        0       2
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                  0     5958   30840
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                  1       92   30840
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                  0    24384   30840
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                  1      406   30840
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                  0      224    1266
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                  1        0    1266
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                  0     1032    1266
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                  1       10    1266
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  0      111     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  1        1     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  0      122     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  1        1     235
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  0      174     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  0       35     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          0                  0      209     232
6 months    ki0047075b-MAL-ED          INDIA                          0                  1        5     232
6 months    ki0047075b-MAL-ED          INDIA                          1                  0       18     232
6 months    ki0047075b-MAL-ED          INDIA                          1                  1        0     232
6 months    ki0047075b-MAL-ED          NEPAL                          0                  0      206     235
6 months    ki0047075b-MAL-ED          NEPAL                          0                  1        0     235
6 months    ki0047075b-MAL-ED          NEPAL                          1                  0       29     235
6 months    ki0047075b-MAL-ED          NEPAL                          1                  1        0     235
6 months    ki0047075b-MAL-ED          PERU                           0                  0      156     269
6 months    ki0047075b-MAL-ED          PERU                           0                  1        0     269
6 months    ki0047075b-MAL-ED          PERU                           1                  0      113     269
6 months    ki0047075b-MAL-ED          PERU                           1                  1        0     269
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      236     242
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        3     242
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        3     242
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     242
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      242     244
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        0     244
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        2     244
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     244
6 months    ki1000109-EE               PAKISTAN                       0                  0      298     752
6 months    ki1000109-EE               PAKISTAN                       0                  1       14     752
6 months    ki1000109-EE               PAKISTAN                       1                  0      436     752
6 months    ki1000109-EE               PAKISTAN                       1                  1        4     752
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                  0      156     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                  1       12     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  0        0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  1        0     168
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  0      284    1092
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  1        0    1092
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  0      794    1092
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  1       14    1092
6 months    ki1148112-LCNI-5           MALAWI                         0                  0      225     272
6 months    ki1148112-LCNI-5           MALAWI                         0                  1        0     272
6 months    ki1148112-LCNI-5           MALAWI                         1                  0       47     272
6 months    ki1148112-LCNI-5           MALAWI                         1                  1        0     272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  0     6802   33310
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  1      136   33310
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  0    26048   33310
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  1      324   33310
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  0     1838    8520
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  1       20    8520
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  0     6624    8520
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  1       38    8520
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  0       97     209
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  1        0     209
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  0      112     209
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  1        0     209
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  0      140     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  0       28     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  1        1     169
24 months   ki0047075b-MAL-ED          INDIA                          0                  0      205     224
24 months   ki0047075b-MAL-ED          INDIA                          0                  1        2     224
24 months   ki0047075b-MAL-ED          INDIA                          1                  0       17     224
24 months   ki0047075b-MAL-ED          INDIA                          1                  1        0     224
24 months   ki0047075b-MAL-ED          NEPAL                          0                  0      199     227
24 months   ki0047075b-MAL-ED          NEPAL                          0                  1        0     227
24 months   ki0047075b-MAL-ED          NEPAL                          1                  0       28     227
24 months   ki0047075b-MAL-ED          NEPAL                          1                  1        0     227
24 months   ki0047075b-MAL-ED          PERU                           0                  0      114     198
24 months   ki0047075b-MAL-ED          PERU                           0                  1        0     198
24 months   ki0047075b-MAL-ED          PERU                           1                  0       83     198
24 months   ki0047075b-MAL-ED          PERU                           1                  1        1     198
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      224     227
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        0     227
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        3     227
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     227
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      210     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        0     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        2     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     212
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  0      222     958
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  1       18     958
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  0      706     958
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  1       12     958
24 months   ki1148112-LCNI-5           MALAWI                         0                  0      150     184
24 months   ki1148112-LCNI-5           MALAWI                         0                  1        0     184
24 months   ki1148112-LCNI-5           MALAWI                         1                  0       34     184
24 months   ki1148112-LCNI-5           MALAWI                         1                  1        0     184
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  0     3546   17026
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  1      174   17026
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  0    12812   17026
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  1      494   17026
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  0     1716    8318
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  1       52    8318
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  0     6388    8318
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  1      162    8318


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

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
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
![](/tmp/7eb11604-60ac-47b3-af37-9e37aeb000f1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7eb11604-60ac-47b3-af37-9e37aeb000f1/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7eb11604-60ac-47b3-af37-9e37aeb000f1/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7eb11604-60ac-47b3-af37-9e37aeb000f1/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0133823   0.0094397   0.0173250
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0162602   0.0135759   0.0189444
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0171842   0.0124148   0.0219537
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0122515   0.0101598   0.0143433
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0114791   0.0060542   0.0169041
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0058489   0.0006744   0.0110233
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.0692757   0.0249164   0.1136351
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0161459   0.0031540   0.0291379
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0413168   0.0329379   0.0496956
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0380090   0.0332732   0.0427448
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0237290   0.0146426   0.0328155
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0253482   0.0188855   0.0318109


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0161479   0.0137874   0.0185083
6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0138097   0.0117159   0.0159035
6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0068075   0.0025982   0.0110168
24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.0313152   0.0157016   0.0469288
24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0392341   0.0348275   0.0436407
24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0257273   0.0200920   0.0313626


### Parameter: RR


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    0                 1.2150452   0.8731927   1.6907322
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.7129519   0.5211255   0.9753897
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.5095203   0.1866572   1.3908435
24 months   ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal   NEPAL        1                    0                 0.2330679   0.0831910   0.6529628
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.9199415   0.7293426   1.1603496
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    0                 1.0682360   0.6744747   1.6918769


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.0027655   -0.0009301    0.0064611
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0033746   -0.0072811    0.0005320
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0046716   -0.0105790    0.0012357
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0379605   -0.0724545   -0.0034665
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0020827   -0.0092085    0.0050432
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                 0.0019983   -0.0065493    0.0105460


### Parameter: PAF


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.1712617   -0.0871249    0.3682353
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.2443634   -0.5561723    0.0049687
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.6862458   -2.2953090    0.1371295
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -1.2122043   -2.4116050   -0.4344709
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0530829   -0.2514237    0.1138224
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                 0.0776727   -0.3172609    0.3541996
