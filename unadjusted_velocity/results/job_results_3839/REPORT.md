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

unadjusted

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
![](/tmp/660cb88a-2d95-41d8-a37b-1a1d5c7a78a2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/660cb88a-2d95-41d8-a37b-1a1d5c7a78a2/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid             country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED   PERU                           0                    NA                3.3426036   3.2760672   3.4091400
0-3 months     ki0047075b-MAL-ED   PERU                           1                    NA                3.2599635   3.0617293   3.4581977
0-3 months     ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                3.4657665   3.3678497   3.5636832
0-3 months     ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                3.2819470   3.0017283   3.5621658
0-3 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                3.4505219   3.3236443   3.5773995
0-3 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                3.4933422   3.3961198   3.5905647
0-3 months     kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                3.6256923   3.4895065   3.7618781
0-3 months     kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                3.7186365   3.7082798   3.7289931
3-6 months     ki0047075b-MAL-ED   PERU                           0                    NA                2.0140153   1.9447469   2.0832837
3-6 months     ki0047075b-MAL-ED   PERU                           1                    NA                2.0176502   1.7431293   2.2921711
3-6 months     ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                1.9750279   1.8867460   2.0633097
3-6 months     ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                2.0374551   1.8324081   2.2425021
3-6 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                1.8207878   1.6966195   1.9449560
3-6 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.8322111   1.7508883   1.9135338
3-6 months     kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                1.7917707   1.5420002   2.0415411
3-6 months     kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                1.9203054   1.9098511   1.9307597
6-12 months    ki0047075b-MAL-ED   PERU                           0                    NA                1.2139710   1.1788461   1.2490960
6-12 months    ki0047075b-MAL-ED   PERU                           1                    NA                1.1685746   1.1092442   1.2279050
6-12 months    ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                1.1917103   1.1469772   1.2364434
6-12 months    ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                1.1782238   1.0703106   1.2861371
6-12 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.9665973   0.8985059   1.0346888
6-12 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.0165964   0.9723388   1.0608541
6-12 months    ki1148112-LCNI-5    MALAWI                         0                    NA                1.3004681   1.2507972   1.3501390
6-12 months    ki1148112-LCNI-5    MALAWI                         1                    NA                1.2749224   1.2451892   1.3046556
6-12 months    kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                1.2470705   0.9378858   1.5562551
6-12 months    kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                1.1067578   1.1000211   1.1134946
12-24 months   ki0047075b-MAL-ED   PERU                           0                    NA                0.8465096   0.8245582   0.8684609
12-24 months   ki0047075b-MAL-ED   PERU                           1                    NA                0.7912850   0.7235229   0.8590471
12-24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                0.8712176   0.8472032   0.8952320
12-24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                0.8569143   0.7948703   0.9189584
12-24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.8052437   0.7665084   0.8439789
12-24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7465105   0.7179673   0.7750538
12-24 months   ki1148112-LCNI-5    MALAWI                         0                    NA                0.8257803   0.7856408   0.8659198
12-24 months   ki1148112-LCNI-5    MALAWI                         1                    NA                0.8435610   0.8249727   0.8621492
12-24 months   kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                0.7845017   0.6663408   0.9026627
12-24 months   kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                0.7966282   0.7913289   0.8019274


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
0-3 months     ki0047075b-MAL-ED   PERU                           1                    0                 -0.0826401   -0.2917427    0.1264624
0-3 months     ki0047075b-MAL-ED   SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED   SOUTH AFRICA                   1                    0                 -0.1838194   -0.4806531    0.1130143
0-3 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0428203   -0.1170237    0.2026644
0-3 months     kiGH5241-JiVitA-3   BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3   BANGLADESH                     1                    0                  0.0929442   -0.0433781    0.2292665
3-6 months     ki0047075b-MAL-ED   PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED   PERU                           1                    0                  0.0036349   -0.2794902    0.2867600
3-6 months     ki0047075b-MAL-ED   SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED   SOUTH AFRICA                   1                    0                  0.0624272   -0.1608170    0.2856713
3-6 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0114233   -0.1370056    0.1598522
3-6 months     kiGH5241-JiVitA-3   BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3   BANGLADESH                     1                    0                  0.1285347   -0.1206730    0.3777424
6-12 months    ki0047075b-MAL-ED   PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED   PERU                           1                    0                 -0.0453965   -0.1143447    0.0235518
6-12 months    ki0047075b-MAL-ED   SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED   SOUTH AFRICA                   1                    0                 -0.0134864   -0.1303039    0.1033310
6-12 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0499991   -0.0312116    0.1312098
6-12 months    ki1148112-LCNI-5    MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5    MALAWI                         1                    0                 -0.0255457   -0.0834358    0.0323444
6-12 months    kiGH5241-JiVitA-3   BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3   BANGLADESH                     1                    0                 -0.1403126   -0.4491525    0.1685273
12-24 months   ki0047075b-MAL-ED   PERU                           0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED   PERU                           1                    0                 -0.0552246   -0.1264535    0.0160044
12-24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    0                 -0.0143032   -0.0808326    0.0522261
12-24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0587331   -0.1068490   -0.0106173
12-24 months   ki1148112-LCNI-5    MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5    MALAWI                         1                    0                  0.0177807   -0.0264540    0.0620153
12-24 months   kiGH5241-JiVitA-3   BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3   BANGLADESH                     1                    0                  0.0121264   -0.1057131    0.1299660
