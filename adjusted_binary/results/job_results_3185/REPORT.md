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

agecat      studyid                    country                        predfeed6    sstunted   n_cell       n
----------  -------------------------  -----------------------------  ----------  ---------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                   0      108     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                   1        4     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                   0      117     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                   1        2     231
Birth       ki0047075b-MAL-ED          BRAZIL                         0                   0      142     175
Birth       ki0047075b-MAL-ED          BRAZIL                         0                   1        6     175
Birth       ki0047075b-MAL-ED          BRAZIL                         1                   0       26     175
Birth       ki0047075b-MAL-ED          BRAZIL                         1                   1        1     175
Birth       ki0047075b-MAL-ED          INDIA                          0                   0      170     190
Birth       ki0047075b-MAL-ED          INDIA                          0                   1        5     190
Birth       ki0047075b-MAL-ED          INDIA                          1                   0       13     190
Birth       ki0047075b-MAL-ED          INDIA                          1                   1        2     190
Birth       ki0047075b-MAL-ED          NEPAL                          0                   0      142     170
Birth       ki0047075b-MAL-ED          NEPAL                          0                   1        5     170
Birth       ki0047075b-MAL-ED          NEPAL                          1                   0       22     170
Birth       ki0047075b-MAL-ED          NEPAL                          1                   1        1     170
Birth       ki0047075b-MAL-ED          PERU                           0                   0      146     256
Birth       ki0047075b-MAL-ED          PERU                           0                   1        4     256
Birth       ki0047075b-MAL-ED          PERU                           1                   0      104     256
Birth       ki0047075b-MAL-ED          PERU                           1                   1        2     256
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      207     211
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1        1     211
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        3     211
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0     211
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      113     119
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1        5     119
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        1     119
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     119
Birth       ki1000109-EE               PAKISTAN                       0                   0        2       4
Birth       ki1000109-EE               PAKISTAN                       0                   1        0       4
Birth       ki1000109-EE               PAKISTAN                       1                   0        2       4
Birth       ki1000109-EE               PAKISTAN                       1                   1        0       4
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                   0     6878   38164
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                   1     1094   38164
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                   0    27582   38164
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                   1     2610   38164
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                   0      264    1534
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                   1       32    1534
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                   0     1148    1534
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                   1       90    1534
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   0      108     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   1        4     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   0      119     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   1        4     235
6 months    ki0047075b-MAL-ED          BRAZIL                         0                   0      174     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                   1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                   0       35     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                   1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          0                   0      208     232
6 months    ki0047075b-MAL-ED          INDIA                          0                   1        6     232
6 months    ki0047075b-MAL-ED          INDIA                          1                   0       15     232
6 months    ki0047075b-MAL-ED          INDIA                          1                   1        3     232
6 months    ki0047075b-MAL-ED          NEPAL                          0                   0      206     235
6 months    ki0047075b-MAL-ED          NEPAL                          0                   1        0     235
6 months    ki0047075b-MAL-ED          NEPAL                          1                   0       28     235
6 months    ki0047075b-MAL-ED          NEPAL                          1                   1        1     235
6 months    ki0047075b-MAL-ED          PERU                           0                   0      149     269
6 months    ki0047075b-MAL-ED          PERU                           0                   1        7     269
6 months    ki0047075b-MAL-ED          PERU                           1                   0      110     269
6 months    ki0047075b-MAL-ED          PERU                           1                   1        3     269
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      233     242
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1        6     242
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        3     242
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0     242
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      228     244
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1       14     244
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        2     244
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     244
6 months    ki1000109-EE               PAKISTAN                       0                   0      250     744
6 months    ki1000109-EE               PAKISTAN                       0                   1       58     744
6 months    ki1000109-EE               PAKISTAN                       1                   0      306     744
6 months    ki1000109-EE               PAKISTAN                       1                   1      130     744
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                   0      140     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                   1       28     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                   0        0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                   1        0     168
6 months    ki1113344-GMS-Nepal        NEPAL                          0                   0      266    1092
6 months    ki1113344-GMS-Nepal        NEPAL                          0                   1       18    1092
6 months    ki1113344-GMS-Nepal        NEPAL                          1                   0      786    1092
6 months    ki1113344-GMS-Nepal        NEPAL                          1                   1       22    1092
6 months    ki1148112-LCNI-5           MALAWI                         0                   0      208     272
6 months    ki1148112-LCNI-5           MALAWI                         0                   1       17     272
6 months    ki1148112-LCNI-5           MALAWI                         1                   0       44     272
6 months    ki1148112-LCNI-5           MALAWI                         1                   1        3     272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                   0     6164   33364
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                   1      754   33364
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   0    25192   33364
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   1     1254   33364
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                   0     1674    8518
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                   1      180    8518
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   0     6372    8518
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   1      292    8518
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   0       90     209
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   1        7     209
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   0       94     209
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   1       18     209
24 months   ki0047075b-MAL-ED          BRAZIL                         0                   0      139     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                   1        1     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                   0       29     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                   1        0     169
24 months   ki0047075b-MAL-ED          INDIA                          0                   0      183     224
24 months   ki0047075b-MAL-ED          INDIA                          0                   1       24     224
24 months   ki0047075b-MAL-ED          INDIA                          1                   0       13     224
24 months   ki0047075b-MAL-ED          INDIA                          1                   1        4     224
24 months   ki0047075b-MAL-ED          NEPAL                          0                   0      194     227
24 months   ki0047075b-MAL-ED          NEPAL                          0                   1        5     227
24 months   ki0047075b-MAL-ED          NEPAL                          1                   0       26     227
24 months   ki0047075b-MAL-ED          NEPAL                          1                   1        2     227
24 months   ki0047075b-MAL-ED          PERU                           0                   0      105     198
24 months   ki0047075b-MAL-ED          PERU                           0                   1        9     198
24 months   ki0047075b-MAL-ED          PERU                           1                   0       80     198
24 months   ki0047075b-MAL-ED          PERU                           1                   1        4     198
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      199     227
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1       25     227
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        3     227
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0     227
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      142     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1       68     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        2     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     212
24 months   ki1113344-GMS-Nepal        NEPAL                          0                   0      206     960
24 months   ki1113344-GMS-Nepal        NEPAL                          0                   1       34     960
24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0      648     960
24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1       72     960
24 months   ki1148112-LCNI-5           MALAWI                         0                   0      135     189
24 months   ki1148112-LCNI-5           MALAWI                         0                   1       20     189
24 months   ki1148112-LCNI-5           MALAWI                         1                   0       30     189
24 months   ki1148112-LCNI-5           MALAWI                         1                   1        4     189
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   0     3052   17084
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   1      678   17084
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0    11382   17084
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1     1972   17084
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   0     1544    8348
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   1      226    8348
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   0     6020    8348
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   1      558    8348


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
![](/tmp/ce4e3a96-fe8a-4aa5-a1a6-b27daabf435c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ce4e3a96-fe8a-4aa5-a1a6-b27daabf435c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ce4e3a96-fe8a-4aa5-a1a6-b27daabf435c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ce4e3a96-fe8a-4aa5-a1a6-b27daabf435c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0970346   0.0924635   0.1016057
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0970326   0.0924623   0.1016029
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0691642   0.0483446   0.0899839
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0809872   0.0582213   0.1037530
6 months    ki1000109-EE          PAKISTAN     0                    NA                0.2086286   0.1526327   0.2646244
6 months    ki1000109-EE          PAKISTAN     1                    NA                0.3176212   0.2612255   0.3740170
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.0600643   0.0212772   0.0988514
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0280346   0.0119300   0.0441392
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0830061   0.0749799   0.0910324
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0519866   0.0482604   0.0557129
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0740315   0.0592944   0.0887686
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0458830   0.0380410   0.0537249
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.0721649   0.0205468   0.1237831
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1607143   0.0925334   0.2288952
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1018580   0.0523993   0.1513168
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0949393   0.0649434   0.1249352
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1555888   0.1405986   0.1705790
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.1516270   0.1426435   0.1606106
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1146878   0.0956122   0.1337634
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0886017   0.0773267   0.0998768


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0970548   0.0924831   0.1016266
Birth       kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0795306   0.0569401   0.1021211
6 months    ki1000109-EE          PAKISTAN     NA                   NA                0.2526882   0.2084696   0.2969067
6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.0366300   0.0208588   0.0524012
6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0601846   0.0563303   0.0640390
6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0554121   0.0477101   0.0631140
24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1196172   0.0755162   0.1637183
24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1104167   0.0823500   0.1384833
24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.1551159   0.1463315   0.1639003
24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0939147   0.0835386   0.1042909


### Parameter: RR


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.9999789   0.9998342   1.0001237
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    0                 1.1709398   1.0343667   1.3255453
6 months    ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000109-EE          PAKISTAN     1                    0                 1.5224245   1.1222998   2.0652024
6 months    ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal   NEPAL        1                    0                 0.4667433   0.1970834   1.1053661
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.6262990   0.5618946   0.6980855
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.6197765   0.4862711   0.7899356
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    0                 2.2270408   0.9695218   5.1156260
24 months   ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal   NEPAL        1                    0                 0.9320748   0.5220432   1.6641599
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.9745370   0.8821755   1.0765685
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.7725473   0.6316441   0.9448823


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.0000202    0.0000103    0.0000301
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                 0.0103664    0.0019502    0.0187826
6 months    ki1000109-EE          PAKISTAN     0                    NA                 0.0440596    0.0002756    0.0878436
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0234343   -0.0541477    0.0072792
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0228215   -0.0290291   -0.0166138
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0186194   -0.0304268   -0.0068121
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0474523    0.0012340    0.0936706
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.0085586   -0.0334220    0.0505393
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0004729   -0.0122516    0.0113058
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0207731   -0.0372041   -0.0043420


### Parameter: PAF


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.0002080    0.0001059    0.0003102
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                 0.1303447    0.0270578    0.2226667
6 months    ki1000109-EE          PAKISTAN     0                    NA                 0.1743635   -0.0145574    0.3281054
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.6397555   -1.6606899   -0.0105642
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.3791911   -0.4833003   -0.2823891
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.3360178   -0.5674804   -0.1387342
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.3967010   -0.1002381    0.6691901
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.0775122   -0.3924688    0.3888670
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0030487   -0.0819242    0.0700765
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.2211909   -0.4123898   -0.0558752
