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
![](/tmp/6b1085fa-29de-4f48-8dc7-d5182f89c96b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/6b1085fa-29de-4f48-8dc7-d5182f89c96b/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid             country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED   PERU                           0                    NA                -0.1448464   -0.1787280   -0.1109649
0-3 months     ki0047075b-MAL-ED   PERU                           1                    NA                -0.1897295   -0.3034704   -0.0759886
0-3 months     ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                -0.0937500   -0.1419918   -0.0455082
0-3 months     ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                -0.1948561   -0.3285230   -0.0611892
0-3 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0497005   -0.1146377    0.0152367
0-3 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0475989   -0.0955558    0.0003580
0-3 months     kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                 0.0220333   -0.0403936    0.0844602
0-3 months     kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                 0.0706472    0.0656896    0.0756047
3-6 months     ki0047075b-MAL-ED   PERU                           0                    NA                 0.0255127   -0.0072851    0.0583106
3-6 months     ki0047075b-MAL-ED   PERU                           1                    NA                 0.0214805   -0.1038637    0.1468247
3-6 months     ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                -0.0029341   -0.0446100    0.0387417
3-6 months     ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                 0.0271555   -0.0671636    0.1214745
3-6 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0687704   -0.1260899   -0.0114510
3-6 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0727068   -0.1117404   -0.0336732
3-6 months     kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                -0.0698670   -0.1718748    0.0321408
3-6 months     kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                -0.0033811   -0.0082452    0.0014830
6-12 months    ki0047075b-MAL-ED   PERU                           0                    NA                -0.0357437   -0.0507991   -0.0206882
6-12 months    ki0047075b-MAL-ED   PERU                           1                    NA                -0.0552980   -0.0851806   -0.0254155
6-12 months    ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                -0.0528871   -0.0717299   -0.0340443
6-12 months    ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                -0.0584244   -0.1039856   -0.0128632
6-12 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1380919   -0.1661525   -0.1100312
6-12 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1182938   -0.1371754   -0.0994123
6-12 months    ki1148112-LCNI-5    MALAWI                         0                    NA                 0.0032895   -0.0171204    0.0236995
6-12 months    ki1148112-LCNI-5    MALAWI                         1                    NA                -0.0087544   -0.0212444    0.0037356
6-12 months    kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                -0.0096573   -0.1211360    0.1018214
6-12 months    kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                -0.0749318   -0.0777731   -0.0720906
12-24 months   ki0047075b-MAL-ED   PERU                           0                    NA                -0.0094516   -0.0168890   -0.0020142
12-24 months   ki0047075b-MAL-ED   PERU                           1                    NA                -0.0230515   -0.0411666   -0.0049364
12-24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                -0.0150790   -0.0231875   -0.0069705
12-24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                -0.0182451   -0.0397254    0.0032353
12-24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0258118   -0.0388183   -0.0128053
12-24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0462183   -0.0556783   -0.0367584
12-24 months   ki1148112-LCNI-5    MALAWI                         0                    NA                -0.0190768   -0.0321017   -0.0060520
12-24 months   ki1148112-LCNI-5    MALAWI                         1                    NA                -0.0155015   -0.0219504   -0.0090526
12-24 months   kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                -0.0149649   -0.1054238    0.0754940
12-24 months   kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                -0.0188201   -0.0206574   -0.0169828


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
0-3 months     ki0047075b-MAL-ED   PERU                           1                    0                 -0.0448831   -0.1635631    0.0737969
0-3 months     ki0047075b-MAL-ED   SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED   SOUTH AFRICA                   1                    0                 -0.1011061   -0.2432121    0.0409999
0-3 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0021016   -0.0786245    0.0828277
0-3 months     kiGH5241-JiVitA-3   BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3   BANGLADESH                     1                    0                  0.0486139   -0.0137063    0.1109341
3-6 months     ki0047075b-MAL-ED   PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED   PERU                           1                    0                 -0.0040322   -0.1335964    0.1255319
3-6 months     ki0047075b-MAL-ED   SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED   SOUTH AFRICA                   1                    0                  0.0300896   -0.0730266    0.1332058
3-6 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0039364   -0.0732844    0.0654116
3-6 months     kiGH5241-JiVitA-3   BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3   BANGLADESH                     1                    0                  0.0664859   -0.0352994    0.1682712
6-12 months    ki0047075b-MAL-ED   PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED   PERU                           1                    0                 -0.0195544   -0.0530153    0.0139065
6-12 months    ki0047075b-MAL-ED   SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED   SOUTH AFRICA                   1                    0                 -0.0055373   -0.0548413    0.0437666
6-12 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0197980   -0.0140237    0.0536198
6-12 months    ki1148112-LCNI-5    MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5    MALAWI                         1                    0                 -0.0120439   -0.0359723    0.0118844
6-12 months    kiGH5241-JiVitA-3   BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3   BANGLADESH                     1                    0                 -0.0652745   -0.1765989    0.0460499
12-24 months   ki0047075b-MAL-ED   PERU                           0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED   PERU                           1                    0                 -0.0135999   -0.0331823    0.0059826
12-24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    0                 -0.0031661   -0.0261259    0.0197937
12-24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0204066   -0.0364894   -0.0043237
12-24 months   ki1148112-LCNI-5    MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5    MALAWI                         1                    0                  0.0035753   -0.0109585    0.0181092
12-24 months   kiGH5241-JiVitA-3   BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3   BANGLADESH                     1                    0                 -0.0038552   -0.0942331    0.0865227
