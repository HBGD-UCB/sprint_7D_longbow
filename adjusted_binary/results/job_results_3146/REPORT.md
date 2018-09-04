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

**Outcome Variable:** stunted

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

agecat      studyid                    country                        predfeed6    stunted   n_cell       n
----------  -------------------------  -----------------------------  ----------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  0       91     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  1       21     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  0      101     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  1       18     231
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  0      134     175
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  1       14     175
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  0       24     175
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  1        3     175
Birth       ki0047075b-MAL-ED          INDIA                          0                  0      149     190
Birth       ki0047075b-MAL-ED          INDIA                          0                  1       26     190
Birth       ki0047075b-MAL-ED          INDIA                          1                  0       10     190
Birth       ki0047075b-MAL-ED          INDIA                          1                  1        5     190
Birth       ki0047075b-MAL-ED          NEPAL                          0                  0      131     170
Birth       ki0047075b-MAL-ED          NEPAL                          0                  1       16     170
Birth       ki0047075b-MAL-ED          NEPAL                          1                  0       21     170
Birth       ki0047075b-MAL-ED          NEPAL                          1                  1        2     170
Birth       ki0047075b-MAL-ED          PERU                           0                  0      132     256
Birth       ki0047075b-MAL-ED          PERU                           0                  1       18     256
Birth       ki0047075b-MAL-ED          PERU                           1                  0       95     256
Birth       ki0047075b-MAL-ED          PERU                           1                  1       11     256
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      188     211
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1       20     211
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        1     211
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        2     211
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      102     119
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1       16     119
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        1     119
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     119
Birth       ki1000109-EE               PAKISTAN                       0                  0        0       4
Birth       ki1000109-EE               PAKISTAN                       0                  1        2       4
Birth       ki1000109-EE               PAKISTAN                       1                  0        2       4
Birth       ki1000109-EE               PAKISTAN                       1                  1        0       4
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                  0     4950   38164
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                  1     3022   38164
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                  0    21130   38164
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                  1     9062   38164
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                  0      182    1534
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                  1      114    1534
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                  0      878    1534
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                  1      360    1534
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  0       88     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  1       24     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  0      104     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  1       19     235
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  0      169     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  1        5     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  0       34     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  1        1     209
6 months    ki0047075b-MAL-ED          INDIA                          0                  0      174     232
6 months    ki0047075b-MAL-ED          INDIA                          0                  1       40     232
6 months    ki0047075b-MAL-ED          INDIA                          1                  0       13     232
6 months    ki0047075b-MAL-ED          INDIA                          1                  1        5     232
6 months    ki0047075b-MAL-ED          NEPAL                          0                  0      197     235
6 months    ki0047075b-MAL-ED          NEPAL                          0                  1        9     235
6 months    ki0047075b-MAL-ED          NEPAL                          1                  0       26     235
6 months    ki0047075b-MAL-ED          NEPAL                          1                  1        3     235
6 months    ki0047075b-MAL-ED          PERU                           0                  0      114     269
6 months    ki0047075b-MAL-ED          PERU                           0                  1       42     269
6 months    ki0047075b-MAL-ED          PERU                           1                  0       97     269
6 months    ki0047075b-MAL-ED          PERU                           1                  1       16     269
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      192     242
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1       47     242
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        2     242
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        1     242
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      185     244
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1       57     244
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        2     244
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     244
6 months    ki1000109-EE               PAKISTAN                       0                  0      174     744
6 months    ki1000109-EE               PAKISTAN                       0                  1      134     744
6 months    ki1000109-EE               PAKISTAN                       1                  0      184     744
6 months    ki1000109-EE               PAKISTAN                       1                  1      252     744
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                  0       87     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                  1       81     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  0        0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  1        0     168
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  0      208    1092
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  1       76    1092
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  0      654    1092
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  1      154    1092
6 months    ki1148112-LCNI-5           MALAWI                         0                  0      145     272
6 months    ki1148112-LCNI-5           MALAWI                         0                  1       80     272
6 months    ki1148112-LCNI-5           MALAWI                         1                  0       30     272
6 months    ki1148112-LCNI-5           MALAWI                         1                  1       17     272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  0     4686   33364
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  1     2232   33364
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  0    20310   33364
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  1     6136   33364
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  0     1270    8518
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  1      584    8518
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  0     5080    8518
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  1     1584    8518
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  0       53     209
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  1       44     209
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  0       59     209
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  1       53     209
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  0      134     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  1        6     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  0       29     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  1        0     169
24 months   ki0047075b-MAL-ED          INDIA                          0                  0      123     224
24 months   ki0047075b-MAL-ED          INDIA                          0                  1       84     224
24 months   ki0047075b-MAL-ED          INDIA                          1                  0        7     224
24 months   ki0047075b-MAL-ED          INDIA                          1                  1       10     224
24 months   ki0047075b-MAL-ED          NEPAL                          0                  0      156     227
24 months   ki0047075b-MAL-ED          NEPAL                          0                  1       43     227
24 months   ki0047075b-MAL-ED          NEPAL                          1                  0       22     227
24 months   ki0047075b-MAL-ED          NEPAL                          1                  1        6     227
24 months   ki0047075b-MAL-ED          PERU                           0                  0       70     198
24 months   ki0047075b-MAL-ED          PERU                           0                  1       44     198
24 months   ki0047075b-MAL-ED          PERU                           1                  0       57     198
24 months   ki0047075b-MAL-ED          PERU                           1                  1       27     198
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      145     227
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1       79     227
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        3     227
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     227
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0       59     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1      151     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        2     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     212
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  0      122     960
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  1      118     960
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  0      404     960
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  1      316     960
24 months   ki1148112-LCNI-5           MALAWI                         0                  0       80     189
24 months   ki1148112-LCNI-5           MALAWI                         0                  1       75     189
24 months   ki1148112-LCNI-5           MALAWI                         1                  0       17     189
24 months   ki1148112-LCNI-5           MALAWI                         1                  1       17     189
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  0     1848   17084
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  1     1882   17084
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  0     6852   17084
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  1     6502   17084
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  0      992    8348
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  1      778    8348
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  0     4024    8348
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  1     2554    8348


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
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/734ea633-d39f-44d8-a5e2-a143166559c8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/734ea633-d39f-44d8-a5e2-a143166559c8/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/734ea633-d39f-44d8-a5e2-a143166559c8/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/734ea633-d39f-44d8-a5e2-a143166559c8/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.1938552   0.1220056   0.2657047
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1536608   0.0896905   0.2176312
Birth       ki0047075b-MAL-ED     INDIA        0                    NA                0.1485714   0.0957370   0.2014058
Birth       ki0047075b-MAL-ED     INDIA        1                    NA                0.3333333   0.0941438   0.5725228
Birth       ki0047075b-MAL-ED     PERU         0                    NA                0.1195737   0.0675851   0.1715623
Birth       ki0047075b-MAL-ED     PERU         1                    NA                0.1043006   0.0463228   0.1622783
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.3166312   0.3090225   0.3242399
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.3166210   0.3090115   0.3242305
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.3079277   0.2712467   0.3446086
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.3088936   0.2721427   0.3456446
6 months    ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.2144684   0.1392571   0.2896796
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1528726   0.0892625   0.2164827
6 months    ki0047075b-MAL-ED     INDIA        0                    NA                0.1869159   0.1345715   0.2392603
6 months    ki0047075b-MAL-ED     INDIA        1                    NA                0.2777778   0.0704135   0.4851421
6 months    ki0047075b-MAL-ED     PERU         0                    NA                0.2506218   0.1813925   0.3198511
6 months    ki0047075b-MAL-ED     PERU         1                    NA                0.1296597   0.0660310   0.1932884
6 months    ki1000109-EE          PAKISTAN     0                    NA                0.4275078   0.3672992   0.4877165
6 months    ki1000109-EE          PAKISTAN     1                    NA                0.5863204   0.5312614   0.6413794
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2272910   0.1606942   0.2938878
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1856747   0.1478839   0.2234654
6 months    ki1148112-LCNI-5      MALAWI       0                    NA                0.3553990   0.2927797   0.4180184
6 months    ki1148112-LCNI-5      MALAWI       1                    NA                0.3624639   0.2253921   0.4995358
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.2780301   0.2654994   0.2905609
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.2420496   0.2334225   0.2506768
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.2780428   0.2516682   0.3044173
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.2440029   0.2282953   0.2597105
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.4424548   0.3607642   0.5241455
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.4562473   0.3766654   0.5358292
24 months   ki0047075b-MAL-ED     INDIA        0                    NA                0.4057971   0.3387537   0.4728406
24 months   ki0047075b-MAL-ED     INDIA        1                    NA                0.5882353   0.3537610   0.8227096
24 months   ki0047075b-MAL-ED     NEPAL        0                    NA                0.2160804   0.1587713   0.2733895
24 months   ki0047075b-MAL-ED     NEPAL        1                    NA                0.2142857   0.0619658   0.3666056
24 months   ki0047075b-MAL-ED     PERU         0                    NA                0.3923591   0.3105859   0.4741323
24 months   ki0047075b-MAL-ED     PERU         1                    NA                0.4050334   0.3163466   0.4937201
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.4386608   0.3675140   0.5098076
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.4357159   0.3863693   0.4850626
24 months   ki1148112-LCNI-5      MALAWI       0                    NA                0.4848733   0.4061239   0.5636227
24 months   ki1148112-LCNI-5      MALAWI       1                    NA                0.5282467   0.3649356   0.6915577
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.4719466   0.4520839   0.4918094
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.4920292   0.4781212   0.5059371
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.3933001   0.3614901   0.4251102
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.3925775   0.3733367   0.4118183


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1688312   0.1204189   0.2172434
Birth       ki0047075b-MAL-ED     INDIA        NA                   NA                0.1631579   0.1104782   0.2158376
Birth       ki0047075b-MAL-ED     PERU         NA                   NA                0.1132813   0.0743812   0.1521813
Birth       kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.3166335   0.3090239   0.3242430
Birth       kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.3089961   0.2722361   0.3457561
6 months    ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1829787   0.1334386   0.2325189
6 months    ki0047075b-MAL-ED     INDIA        NA                   NA                0.1939655   0.1429760   0.2449551
6 months    ki0047075b-MAL-ED     PERU         NA                   NA                0.2156134   0.1663773   0.2648495
6 months    ki1000109-EE          PAKISTAN     NA                   NA                0.5188172   0.4679751   0.5696593
6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.2106227   0.1763897   0.2448557
6 months    ki1148112-LCNI-5      MALAWI       NA                   NA                0.3566176   0.2995882   0.4136471
6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.2508093   0.2426385   0.2589801
6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.2545198   0.2394884   0.2695513
24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.4641148   0.3963405   0.5318891
24 months   ki0047075b-MAL-ED     INDIA        NA                   NA                0.4196429   0.3548715   0.4844143
24 months   ki0047075b-MAL-ED     NEPAL        NA                   NA                0.2158590   0.1622206   0.2694975
24 months   ki0047075b-MAL-ED     PERU         NA                   NA                0.3585859   0.2916158   0.4255559
24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.4520833   0.4075129   0.4966538
24 months   ki1148112-LCNI-5      MALAWI       NA                   NA                0.4867725   0.4153250   0.5582200
24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.4907516   0.4775997   0.5039035
24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.3991375   0.3806098   0.4176653


### Parameter: RR


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    0                 0.7926580   0.4556121   1.3790385
Birth       ki0047075b-MAL-ED     INDIA        0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED     INDIA        1                    0                 2.2435897   1.0072492   4.9974675
Birth       ki0047075b-MAL-ED     PERU         0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED     PERU         1                    0                 0.8722701   0.4315012   1.7632745
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.9999678   0.9999308   1.0000048
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    0                 1.0031370   1.0017848   1.0044910
6 months    ki0047075b-MAL-ED     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    0                 0.7127977   0.4141193   1.2268939
6 months    ki0047075b-MAL-ED     INDIA        0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED     INDIA        1                    0                 1.4861111   0.6695514   3.2985161
6 months    ki0047075b-MAL-ED     PERU         0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED     PERU         1                    0                 0.5173520   0.2950285   0.9072110
6 months    ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000109-EE          PAKISTAN     1                    0                 1.3714845   1.1826550   1.5904636
6 months    ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal   NEPAL        1                    0                 0.8169028   0.5721898   1.1662743
6 months    ki1148112-LCNI-5      MALAWI       0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1148112-LCNI-5      MALAWI       1                    0                 1.0198788   0.6723441   1.5470542
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.8705877   0.8288100   0.9144714
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.8775731   0.7903299   0.9744470
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    0                 1.0311725   0.8330169   1.2764647
24 months   ki0047075b-MAL-ED     INDIA        0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED     INDIA        1                    0                 1.4495798   0.9415618   2.2316981
24 months   ki0047075b-MAL-ED     NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED     NEPAL        1                    0                 0.9916944   0.4643883   2.1177486
24 months   ki0047075b-MAL-ED     PERU         0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED     PERU         1                    0                 1.0323029   0.7701912   1.3836164
24 months   ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal   NEPAL        1                    0                 0.9932867   0.8185768   1.2052852
24 months   ki1148112-LCNI-5      MALAWI       0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1148112-LCNI-5      MALAWI       1                    0                 1.0894531   0.7686579   1.5441303
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    0                 1.0425525   0.9975141   1.0896244
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.9981626   0.9160933   1.0875843


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.0250240   -0.0744415    0.0243935
Birth       ki0047075b-MAL-ED     INDIA        0                    NA                 0.0145865   -0.0060153    0.0351882
Birth       ki0047075b-MAL-ED     PERU         0                    NA                -0.0062925   -0.0384498    0.0258648
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.0000023   -0.0000066    0.0000112
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                 0.0010684    0.0007236    0.0014133
6 months    ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.0314897   -0.0829113    0.0199320
6 months    ki0047075b-MAL-ED     INDIA        0                    NA                 0.0070496   -0.0098371    0.0239364
6 months    ki0047075b-MAL-ED     PERU         0                    NA                -0.0350084   -0.0748430    0.0048262
6 months    ki1000109-EE          PAKISTAN     0                    NA                 0.0913094    0.0498660    0.1327527
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0166683   -0.0720245    0.0386879
6 months    ki1148112-LCNI-5      MALAWI       0                    NA                 0.0012186   -0.0247915    0.0272287
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0272209   -0.0373993   -0.0170424
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0235229   -0.0449901   -0.0020558
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0216600   -0.0294857    0.0728057
24 months   ki0047075b-MAL-ED     INDIA        0                    NA                 0.0138458   -0.0057185    0.0334100
24 months   ki0047075b-MAL-ED     NEPAL        0                    NA                -0.0002214   -0.0202957    0.0198530
24 months   ki0047075b-MAL-ED     PERU         0                    NA                -0.0337732   -0.0849780    0.0174316
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.0134226   -0.0478185    0.0746636
24 months   ki1148112-LCNI-5      MALAWI       0                    NA                 0.0018992   -0.0314884    0.0352868
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.0188049    0.0025670    0.0350429
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                 0.0058374   -0.0201372    0.0318120


### Parameter: PAF


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.1482191   -0.4812793    0.1099538
Birth       ki0047075b-MAL-ED     INDIA        0                    NA                 0.0894009   -0.0435793    0.2054358
Birth       ki0047075b-MAL-ED     PERU         0                    NA                -0.0555473   -0.3805412    0.1929397
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.0000072   -0.0000209    0.0000353
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                 0.0034577    0.0023617    0.0045526
6 months    ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.1720947   -0.4880885    0.0767982
6 months    ki0047075b-MAL-ED     INDIA        0                    NA                 0.0363448   -0.0544615    0.1193312
6 months    ki0047075b-MAL-ED     PERU         0                    NA                -0.1623667   -0.3582720    0.0052830
6 months    ki1000109-EE          PAKISTAN     0                    NA                 0.1759953    0.0931231    0.2512944
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0791381   -0.3762690    0.1538434
6 months    ki1148112-LCNI-5      MALAWI       0                    NA                 0.0034171   -0.0722545    0.0737484
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.1085322   -0.1503182   -0.0682641
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0924209   -0.1802159   -0.0111568
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0466695   -0.0697979    0.1504572
24 months   ki0047075b-MAL-ED     INDIA        0                    NA                 0.0329941   -0.0148853    0.0786148
24 months   ki0047075b-MAL-ED     NEPAL        0                    NA                -0.0010255   -0.0984795    0.0877826
24 months   ki0047075b-MAL-ED     PERU         0                    NA                -0.0941845   -0.2491638    0.0415671
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.0296904   -0.1153052    0.1558358
24 months   ki1148112-LCNI-5      MALAWI       0                    NA                 0.0039016   -0.0671051    0.0701835
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.0383186    0.0047433    0.0707613
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                 0.0146250   -0.0526481    0.0775988
