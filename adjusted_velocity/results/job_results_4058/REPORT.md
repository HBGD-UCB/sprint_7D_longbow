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

**Outcome Variable:** y_rate_haz

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
![](/tmp/79a754fb-d90a-44dc-8180-e520539f42f3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/79a754fb-d90a-44dc-8180-e520539f42f3/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid             country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED   PERU                           0                    NA                -0.1455991   -0.1794173   -0.1117809
0-3 months     ki0047075b-MAL-ED   PERU                           1                    NA                -0.2916155   -0.3590511   -0.2241798
0-3 months     ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                -0.0939043   -0.1415762   -0.0462324
0-3 months     ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                -0.2002551   -0.3199602   -0.0805500
0-3 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1377747   -0.1888938   -0.0866556
0-3 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0622567   -0.1075386   -0.0169749
0-3 months     kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                 0.1123007    0.0971180    0.1274834
0-3 months     kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                 0.0706427    0.0656827    0.0756028
3-6 months     ki0047075b-MAL-ED   PERU                           0                    NA                 0.0257724   -0.0070173    0.0585622
3-6 months     ki0047075b-MAL-ED   PERU                           1                    NA                 0.0058326   -0.1065706    0.1182359
3-6 months     ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                -0.0021182   -0.0434854    0.0392490
3-6 months     ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                 0.0115965   -0.0801463    0.1033393
3-6 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0690178   -0.1262986   -0.0117371
3-6 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0725932   -0.1116124   -0.0335741
3-6 months     kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                -0.0733056   -0.1357035   -0.0109077
3-6 months     kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                -0.0033834   -0.0082497    0.0014828
6-12 months    ki0047075b-MAL-ED   PERU                           0                    NA                -0.0357437   -0.0507991   -0.0206882
6-12 months    ki0047075b-MAL-ED   PERU                           1                    NA                -0.0552980   -0.0851806   -0.0254155
6-12 months    ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                -0.0526018   -0.0707543   -0.0344494
6-12 months    ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                -0.0076100   -0.0375594    0.0223395
6-12 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1379502   -0.1658841   -0.1100164
6-12 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1183524   -0.1372062   -0.0994987
6-12 months    ki1148112-LCNI-5    MALAWI                         0                    NA                 0.0220425    0.0082658    0.0358192
6-12 months    ki1148112-LCNI-5    MALAWI                         1                    NA                -0.0089057   -0.0209927    0.0031814
6-12 months    kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                -0.2234413   -0.2291032   -0.2177795
6-12 months    kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                -0.0749383   -0.0777811   -0.0720955
12-24 months   ki0047075b-MAL-ED   PERU                           0                    NA                -0.0094516   -0.0168890   -0.0020142
12-24 months   ki0047075b-MAL-ED   PERU                           1                    NA                -0.0230515   -0.0411666   -0.0049364
12-24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                -0.0129523   -0.0207390   -0.0051656
12-24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                 0.0483343    0.0385839    0.0580847
12-24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0258786   -0.0388678   -0.0128895
12-24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0461884   -0.0556411   -0.0367358
12-24 months   ki1148112-LCNI-5    MALAWI                         0                    NA                -0.0603295   -0.0686134   -0.0520456
12-24 months   ki1148112-LCNI-5    MALAWI                         1                    NA                -0.0168767   -0.0232122   -0.0105412
12-24 months   kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                -0.0133698   -0.0911237    0.0643841
12-24 months   kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                -0.0188206   -0.0206578   -0.0169834


### Parameter: E(Y)


agecat         studyid             country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED   PERU                           NA                   NA                -0.1468292   -0.1796215   -0.1140369
0-3 months     ki0047075b-MAL-ED   SOUTH AFRICA                   NA                   NA                -0.1094143   -0.1554047   -0.0634239
0-3 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0482527   -0.0869775   -0.0095280
0-3 months     kiGH5241-JiVitA-3   BANGLADESH                     NA                   NA                 0.0705622    0.0656080    0.0755165
3-6 months     ki0047075b-MAL-ED   PERU                           NA                   NA                 0.0253395   -0.0065080    0.0571869
3-6 months     ki0047075b-MAL-ED   SOUTH AFRICA                   NA                   NA                 0.0016172   -0.0365482    0.0397826
3-6 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0714664   -0.1037306   -0.0392021
3-6 months     kiGH5241-JiVitA-3   BANGLADESH                     NA                   NA                -0.0034446   -0.0083108    0.0014217
6-12 months    ki0047075b-MAL-ED   PERU                           NA                   NA                -0.0365155   -0.0510332   -0.0219979
6-12 months    ki0047075b-MAL-ED   SOUTH AFRICA                   NA                   NA                -0.0537261   -0.0711424   -0.0363097
6-12 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1243581   -0.1400706   -0.1086456
6-12 months    ki1148112-LCNI-5    MALAWI                         NA                   NA                -0.0067938   -0.0177737    0.0041862
6-12 months    kiGH5241-JiVitA-3   BANGLADESH                     NA                   NA                -0.0748654   -0.0777070   -0.0720238
12-24 months   ki0047075b-MAL-ED   PERU                           NA                   NA                -0.0099718   -0.0171682   -0.0027754
12-24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   NA                   NA                -0.0155353   -0.0231357   -0.0079349
12-24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0398784   -0.0476581   -0.0320988
12-24 months   ki1148112-LCNI-5    MALAWI                         NA                   NA                -0.0160605   -0.0218715   -0.0102495
12-24 months   kiGH5241-JiVitA-3   BANGLADESH                     NA                   NA                -0.0188143   -0.0206609   -0.0169677


### Parameter: ATE


agecat         studyid             country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED   PERU                           0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED   PERU                           1                    0                 -0.1460164   -0.2212478   -0.0707850
0-3 months     ki0047075b-MAL-ED   SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED   SOUTH AFRICA                   1                    0                 -0.1063508   -0.2335619    0.0208602
0-3 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0755179    0.0084283    0.1426076
0-3 months     kiGH5241-JiVitA-3   BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3   BANGLADESH                     1                    0                 -0.0416579   -0.0573492   -0.0259667
3-6 months     ki0047075b-MAL-ED   PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED   PERU                           1                    0                 -0.0199398   -0.1366667    0.0967871
3-6 months     ki0047075b-MAL-ED   SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED   SOUTH AFRICA                   1                    0                  0.0137147   -0.0869309    0.1143603
3-6 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0035754   -0.0728509    0.0657001
3-6 months     kiGH5241-JiVitA-3   BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3   BANGLADESH                     1                    0                  0.0699221    0.0076502    0.1321941
6-12 months    ki0047075b-MAL-ED   PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED   PERU                           1                    0                 -0.0195544   -0.0530153    0.0139065
6-12 months    ki0047075b-MAL-ED   SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED   SOUTH AFRICA                   1                    0                  0.0449919    0.0131951    0.0767886
6-12 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0195978   -0.0140331    0.0532287
6-12 months    ki1148112-LCNI-5    MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5    MALAWI                         1                    0                 -0.0309482   -0.0483325   -0.0135639
6-12 months    kiGH5241-JiVitA-3   BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3   BANGLADESH                     1                    0                  0.1485030    0.1423015    0.1547045
12-24 months   ki0047075b-MAL-ED   PERU                           0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED   PERU                           1                    0                 -0.0135999   -0.0331823    0.0059826
12-24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    0                  0.0612866    0.0500554    0.0725178
12-24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0203098   -0.0363586   -0.0042611
12-24 months   ki1148112-LCNI-5    MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5    MALAWI                         1                    0                  0.0434528    0.0329533    0.0539523
12-24 months   kiGH5241-JiVitA-3   BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3   BANGLADESH                     1                    0                 -0.0054507   -0.0831274    0.0722259
