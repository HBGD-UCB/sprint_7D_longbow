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

unadjusted

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
![](/tmp/e83a60c0-d962-48c2-a1d6-7f61c00d0664/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e83a60c0-d962-48c2-a1d6-7f61c00d0664/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e83a60c0-d962-48c2-a1d6-7f61c00d0664/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e83a60c0-d962-48c2-a1d6-7f61c00d0664/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1372303   0.1251405   0.1493201
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0864467   0.0817309   0.0911626
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1081081   0.0441369   0.1720793
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0726979   0.0492243   0.0961715
6 months    ki1000109-EE          PAKISTAN     0                    NA                0.1883117   0.1264808   0.2501426
6 months    ki1000109-EE          PAKISTAN     1                    NA                0.2981651   0.2373586   0.3589717
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.0633803   0.0232695   0.1034910
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0272277   0.0113435   0.0431120
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1089910   0.0976945   0.1202875
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0474174   0.0437091   0.0511256
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0970874   0.0778348   0.1163400
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0438175   0.0357259   0.0519091
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.0721649   0.0205468   0.1237831
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1607143   0.0925334   0.2288952
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1416667   0.0792110   0.2041224
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1000000   0.0689779   0.1310221
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1817694   0.1626565   0.2008823
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.1476711   0.1384912   0.1568510
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1276836   0.1047181   0.1506492
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0848282   0.0734837   0.0961728


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
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.6299391   0.5686624   0.6978188
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.6724556   0.3422210   1.3213583
6 months    ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000109-EE          PAKISTAN     1                    0                 1.5833597   1.0757597   2.3304721
6 months    ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal   NEPAL        1                    0                 0.4295930   0.1816556   1.0159338
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.4350576   0.3835558   0.4934748
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.4513205   0.3459972   0.5887049
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    0                 2.2270408   0.9695218   5.1156260
24 months   ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal   NEPAL        1                    0                 0.7058824   0.4117339   1.2101746
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.8124089   0.7249568   0.9104104
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.6643626   0.5338945   0.8267131


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0401755   -0.0503590   -0.0299920
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0285775   -0.0836063    0.0264514
6 months    ki1000109-EE          PAKISTAN     0                    NA                 0.0643765    0.0132589    0.1154941
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0267502   -0.0586995    0.0051990
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0488064   -0.0581036   -0.0395092
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0416753   -0.0578878   -0.0254628
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0474523    0.0012340    0.0936706
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0312500   -0.0835768    0.0210768
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0266535   -0.0422596   -0.0110475
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0337689   -0.0535979   -0.0139399


### Parameter: PAF


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.4139464   -0.5199154   -0.3153656
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.3593265   -1.2360106    0.1736315
6 months    ki1000109-EE          PAKISTAN     0                    NA                 0.2547665    0.0255629    0.4300577
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.7302817   -1.7817399   -0.0762598
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.8109447   -0.9605712   -0.6727374
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.7520980   -1.0686015   -0.4840208
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.3967010   -0.1002381    0.6691901
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.2830189   -0.8508958    0.1106266
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.1718298   -0.2756661   -0.0764456
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.3595699   -0.5893530   -0.1630081
