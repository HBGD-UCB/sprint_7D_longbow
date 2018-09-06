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

**Outcome Variable:** y_rate_len

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

agecat         studyid                    country                        safeh20    n_cell       n
-------------  -------------------------  -----------------------------  --------  -------  ------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0             237     237
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1               0     237
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0             124     124
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1               0     124
0-3 months     ki0047075b-MAL-ED          INDIA                          0             194     194
0-3 months     ki0047075b-MAL-ED          INDIA                          1               0     194
0-3 months     ki0047075b-MAL-ED          NEPAL                          0             170     171
0-3 months     ki0047075b-MAL-ED          NEPAL                          1               1     171
0-3 months     ki0047075b-MAL-ED          PERU                           0             238     249
0-3 months     ki0047075b-MAL-ED          PERU                           1              11     249
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0             180     213
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1              33     213
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              70     225
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             155     225
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     0               2     566
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     1             564     566
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0               0     634
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1             634     634
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0               0     720
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1             720     720
0-3 months     ki1114097-CONTENT          PERU                           0               1       6
0-3 months     ki1114097-CONTENT          PERU                           1               5       6
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0              70   40058
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1           39988   40058
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0               0    3610
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1            3610    3610
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0             231     231
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1               0     231
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0             141     141
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1               0     141
3-6 months     ki0047075b-MAL-ED          INDIA                          0             229     229
3-6 months     ki0047075b-MAL-ED          INDIA                          1               0     229
3-6 months     ki0047075b-MAL-ED          NEPAL                          0             229     230
3-6 months     ki0047075b-MAL-ED          NEPAL                          1               1     230
3-6 months     ki0047075b-MAL-ED          PERU                           0             245     256
3-6 months     ki0047075b-MAL-ED          PERU                           1              11     256
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0             202     238
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1              36     238
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              75     238
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             163     238
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     0               2     523
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     1             521     523
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0               0     572
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1             572     572
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0               0     695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1             695     695
3-6 months     ki1114097-CONTENT          PERU                           0               3      57
3-6 months     ki1114097-CONTENT          PERU                           1              54      57
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0              24   25146
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1           25122   25146
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0               0    3678
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1            3678    3678
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     0             220     220
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1               0     220
6-12 months    ki0047075b-MAL-ED          BRAZIL                         0             129     129
6-12 months    ki0047075b-MAL-ED          BRAZIL                         1               0     129
6-12 months    ki0047075b-MAL-ED          INDIA                          0             224     224
6-12 months    ki0047075b-MAL-ED          INDIA                          1               0     224
6-12 months    ki0047075b-MAL-ED          NEPAL                          0             227     228
6-12 months    ki0047075b-MAL-ED          NEPAL                          1               1     228
6-12 months    ki0047075b-MAL-ED          PERU                           0             219     228
6-12 months    ki0047075b-MAL-ED          PERU                           1               9     228
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0             196     231
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1              35     231
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              68     222
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             154     222
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0               0     332
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1             332     332
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     0               2     482
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     1             480     482
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0               0     544
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1             544     544
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0               0     676
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1             676     676
6-12 months    ki1114097-CONTENT          PERU                           0               3      57
6-12 months    ki1114097-CONTENT          PERU                           1              54      57
6-12 months    ki1148112-LCNI-5           MALAWI                         0              70     430
6-12 months    ki1148112-LCNI-5           MALAWI                         1             360     430
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     0              20   19651
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1           19631   19651
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0               0    6222
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1            6222    6222
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     0             206     206
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1               0     206
12-24 months   ki0047075b-MAL-ED          BRAZIL                         0             110     110
12-24 months   ki0047075b-MAL-ED          BRAZIL                         1               0     110
12-24 months   ki0047075b-MAL-ED          INDIA                          0             225     225
12-24 months   ki0047075b-MAL-ED          INDIA                          1               0     225
12-24 months   ki0047075b-MAL-ED          NEPAL                          0             223     224
12-24 months   ki0047075b-MAL-ED          NEPAL                          1               1     224
12-24 months   ki0047075b-MAL-ED          PERU                           0             176     183
12-24 months   ki0047075b-MAL-ED          PERU                           1               7     183
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0             196     229
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              33     229
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              64     206
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             142     206
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     0               2     421
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     1             419     421
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0               0     457
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1             457     457
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0               0     495
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1             495     495
12-24 months   ki1114097-CONTENT          PERU                           0               1      10
12-24 months   ki1114097-CONTENT          PERU                           1               9      10
12-24 months   ki1148112-LCNI-5           MALAWI                         0              48     307
12-24 months   ki1148112-LCNI-5           MALAWI                         1             259     307
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0              14    9285
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1            9271    9285
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               0    7125
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1            7125    7125


The following strata were considered:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 12-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 12-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-12 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-12 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/2f6eb36f-9563-434f-b6eb-d37c921fe338/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/2f6eb36f-9563-434f-b6eb-d37c921fe338/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid             country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED   PERU                           0                    NA                3.3429477   3.2764474   3.4094480
0-3 months     ki0047075b-MAL-ED   PERU                           1                    NA                3.3923344   3.2244034   3.5602654
0-3 months     ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                3.4619138   3.3678167   3.5560110
0-3 months     ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                3.3549332   3.1744355   3.5354308
0-3 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                3.4505485   3.3236757   3.5774213
0-3 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                3.4933302   3.3961111   3.5905493
0-3 months     kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                3.6928873   3.6536622   3.7321124
0-3 months     kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                3.7186636   3.7083032   3.7290239
3-6 months     ki0047075b-MAL-ED   PERU                           0                    NA                2.0141349   1.9448680   2.0834019
3-6 months     ki0047075b-MAL-ED   PERU                           1                    NA                2.0149851   1.7409478   2.2890224
3-6 months     ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                1.9884922   1.9005515   2.0764329
3-6 months     ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                2.5022392   2.3179421   2.6865363
3-6 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                1.8207687   1.6966045   1.9449328
3-6 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.8322199   1.7508981   1.9135416
3-6 months     kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                2.9428554   2.9270355   2.9586753
3-6 months     kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                1.9203003   1.9098402   1.9307605
6-12 months    ki0047075b-MAL-ED   PERU                           0                    NA                1.2139710   1.1788461   1.2490960
6-12 months    ki0047075b-MAL-ED   PERU                           1                    NA                1.1685746   1.1092442   1.2279050
6-12 months    ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                1.2058854   1.1614490   1.2503218
6-12 months    ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                1.6108028   1.5367542   1.6848514
6-12 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.9705654   0.9158973   1.0252336
6-12 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.0147676   0.9737922   1.0557430
6-12 months    ki1148112-LCNI-5    MALAWI                         0                    NA                1.2584045   1.2180522   1.2987568
6-12 months    ki1148112-LCNI-5    MALAWI                         1                    NA                1.2724193   1.2435733   1.3012652
6-12 months    kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                0.8355946   0.8180417   0.8531476
6-12 months    kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                1.1067503   1.1000113   1.1134893
12-24 months   ki0047075b-MAL-ED   PERU                           0                    NA                0.8465096   0.8245582   0.8684609
12-24 months   ki0047075b-MAL-ED   PERU                           1                    NA                0.7912850   0.7235229   0.8590471
12-24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                0.8749739   0.8518468   0.8981010
12-24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                0.9755235   0.9434113   1.0076357
12-24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.8037440   0.7653415   0.8421465
12-24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7471821   0.7187679   0.7755962
12-24 months   ki1148112-LCNI-5    MALAWI                         0                    NA                0.7140895   0.6861070   0.7420720
12-24 months   ki1148112-LCNI-5    MALAWI                         1                    NA                0.8399814   0.8216578   0.8583050
12-24 months   kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                0.7867339   0.6802720   0.8931958
12-24 months   kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                0.7966277   0.7913290   0.8019265


### Parameter: E(Y)


agecat         studyid             country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED   PERU                           NA                   NA                3.3389528   3.2747209   3.4031847
0-3 months     ki0047075b-MAL-ED   SOUTH AFRICA                   NA                   NA                3.4372874   3.3434154   3.5311594
0-3 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                3.4800204   3.4022349   3.5578058
0-3 months     kiGH5241-JiVitA-3   BANGLADESH                     NA                   NA                3.7184741   3.7081307   3.7288174
3-6 months     ki0047075b-MAL-ED   PERU                           NA                   NA                2.0141715   1.9468382   2.0815048
3-6 months     ki0047075b-MAL-ED   SOUTH AFRICA                   NA                   NA                1.9844707   1.9033268   2.0656145
3-6 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.8286113   1.7605412   1.8966813
3-6 months     kiGH5241-JiVitA-3   BANGLADESH                     NA                   NA                1.9201827   1.9097195   1.9306459
6-12 months    ki0047075b-MAL-ED   PERU                           NA                   NA                1.2121791   1.1783399   1.2460182
6-12 months    ki0047075b-MAL-ED   SOUTH AFRICA                   NA                   NA                1.1896669   1.1483348   1.2309989
6-12 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.0012814   0.9640416   1.0385213
6-12 months    ki1148112-LCNI-5    MALAWI                         NA                   NA                1.2790810   1.2528925   1.3052695
6-12 months    kiGH5241-JiVitA-3   BANGLADESH                     NA                   NA                1.1069007   1.1001595   1.1136418
12-24 months   ki0047075b-MAL-ED   PERU                           NA                   NA                0.8443972   0.8230714   0.8657230
12-24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   NA                   NA                0.8691564   0.8467327   0.8915801
12-24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7647577   0.7413956   0.7881199
12-24 months   ki1148112-LCNI-5    MALAWI                         NA                   NA                0.8407809   0.8238743   0.8576875
12-24 months   kiGH5241-JiVitA-3   BANGLADESH                     NA                   NA                0.7966099   0.7912995   0.8019202


### Parameter: ATE


agecat         studyid             country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED   PERU                           0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED   PERU                           1                    0                  0.0493867   -0.1312498    0.2300232
0-3 months     ki0047075b-MAL-ED   SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED   SOUTH AFRICA                   1                    0                 -0.1069807   -0.2969758    0.0830145
0-3 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0427817   -0.1170502    0.2026137
0-3 months     kiGH5241-JiVitA-3   BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3   BANGLADESH                     1                    0                  0.0257762   -0.0142173    0.0657697
3-6 months     ki0047075b-MAL-ED   PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED   PERU                           1                    0                  0.0008501   -0.2817768    0.2834770
3-6 months     ki0047075b-MAL-ED   SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED   SOUTH AFRICA                   1                    0                  0.5137470    0.3091659    0.7183281
3-6 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0114512   -0.1369710    0.1598734
3-6 months     kiGH5241-JiVitA-3   BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3   BANGLADESH                     1                    0                 -1.0225551   -1.0412105   -1.0038997
6-12 months    ki0047075b-MAL-ED   PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED   PERU                           1                    0                 -0.0453965   -0.1143447    0.0235518
6-12 months    ki0047075b-MAL-ED   SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED   SOUTH AFRICA                   1                    0                  0.4049174    0.3175446    0.4922901
6-12 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0442022   -0.0154151    0.1038195
6-12 months    ki1148112-LCNI-5    MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5    MALAWI                         1                    0                  0.0140148   -0.0324212    0.0604507
6-12 months    kiGH5241-JiVitA-3   BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3   BANGLADESH                     1                    0                  0.2711556    0.2527106    0.2896006
12-24 months   ki0047075b-MAL-ED   PERU                           0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED   PERU                           1                    0                 -0.0552246   -0.1264535    0.0160044
12-24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    0                  0.1005496    0.0645619    0.1365372
12-24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0565619   -0.1040407   -0.0090830
12-24 months   ki1148112-LCNI-5    MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5    MALAWI                         1                    0                  0.1258919    0.0922685    0.1595152
12-24 months   kiGH5241-JiVitA-3   BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3   BANGLADESH                     1                    0                  0.0098938   -0.0962576    0.1160453
