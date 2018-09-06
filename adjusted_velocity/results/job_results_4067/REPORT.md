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

**Intervention Variable:** predexfd6

**Adjustment Set:**

* arm
* sex
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
* month
* brthmon
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
* delta_month
* delta_brthmon
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

agecat         studyid                    country                        predexfd6    n_cell       n
-------------  -------------------------  -----------------------------  ----------  -------  ------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0               112     233
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1               121     233
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0               148     175
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                27     175
0-3 months     ki0047075b-MAL-ED          INDIA                          0               178     193
0-3 months     ki0047075b-MAL-ED          INDIA                          1                15     193
0-3 months     ki0047075b-MAL-ED          NEPAL                          0               150     173
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                23     173
0-3 months     ki0047075b-MAL-ED          PERU                           0               150     258
0-3 months     ki0047075b-MAL-ED          PERU                           1               108     258
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0               206     209
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                 3     209
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               223     224
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1     224
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                 0       6
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                 6       6
0-3 months     ki1000108-IRC              INDIA                          0                14      14
0-3 months     ki1000108-IRC              INDIA                          1                 0      14
0-3 months     ki1000109-EE               PAKISTAN                       0               260     594
0-3 months     ki1000109-EE               PAKISTAN                       1               334     594
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          0                19     398
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1               379     398
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0               467     634
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1               167     634
0-3 months     ki1101329-Keneba           GAMBIA                         0               816    1207
0-3 months     ki1101329-Keneba           GAMBIA                         1               391    1207
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0              8676   40078
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1             31402   40078
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0               586    3610
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1              3024    3610
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0               108     225
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1               117     225
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0               173     208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                35     208
3-6 months     ki0047075b-MAL-ED          INDIA                          0               207     225
3-6 months     ki0047075b-MAL-ED          INDIA                          1                18     225
3-6 months     ki0047075b-MAL-ED          NEPAL                          0               205     232
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                27     232
3-6 months     ki0047075b-MAL-ED          PERU                           0               153     264
3-6 months     ki0047075b-MAL-ED          PERU                           1               111     264
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0               230     233
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                 3     233
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               234     236
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 2     236
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      16
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                16      16
3-6 months     ki1000108-IRC              INDIA                          0                14      14
3-6 months     ki1000108-IRC              INDIA                          1                 0      14
3-6 months     ki1000109-EE               PAKISTAN                       0               278     662
3-6 months     ki1000109-EE               PAKISTAN                       1               384     662
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          0                18     379
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1               361     379
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0               441     574
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1               133     574
3-6 months     ki1101329-Keneba           GAMBIA                         0               954    1331
3-6 months     ki1101329-Keneba           GAMBIA                         1               377    1331
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0               254     932
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1               678     932
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0              5340   25156
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1             19816   25156
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0               578    3646
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1              3068    3646
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     0               102     214
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1               112     214
6-12 months    ki0047075b-MAL-ED          BRAZIL                         0               161     194
6-12 months    ki0047075b-MAL-ED          BRAZIL                         1                33     194
6-12 months    ki0047075b-MAL-ED          INDIA                          0               204     221
6-12 months    ki0047075b-MAL-ED          INDIA                          1                17     221
6-12 months    ki0047075b-MAL-ED          NEPAL                          0               202     229
6-12 months    ki0047075b-MAL-ED          NEPAL                          1                27     229
6-12 months    ki0047075b-MAL-ED          PERU                           0               134     235
6-12 months    ki0047075b-MAL-ED          PERU                           1               101     235
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               221     224
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 3     224
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               218     220
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 2     220
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      18
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                18      18
6-12 months    ki1000108-IRC              INDIA                          0                14      14
6-12 months    ki1000108-IRC              INDIA                          1                 0      14
6-12 months    ki1000109-EE               PAKISTAN                       0                 6       8
6-12 months    ki1000109-EE               PAKISTAN                       1                 2       8
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          0                15     347
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          1               332     347
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0               150     150
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                 0     150
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0               422     545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1               123     545
6-12 months    ki1101329-Keneba           GAMBIA                         0               865    1232
6-12 months    ki1101329-Keneba           GAMBIA                         1               367    1232
6-12 months    ki1113344-GMS-Nepal        NEPAL                          0               240     938
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1               698     938
6-12 months    ki1148112-LCNI-5           MALAWI                         0                27      40
6-12 months    ki1148112-LCNI-5           MALAWI                         1                13      40
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     0              4122   19584
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1             15462   19584
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0              1174    5646
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1              4472    5646
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                95     203
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1               108     203
12-24 months   ki0047075b-MAL-ED          BRAZIL                         0               136     165
12-24 months   ki0047075b-MAL-ED          BRAZIL                         1                29     165
12-24 months   ki0047075b-MAL-ED          INDIA                          0               205     222
12-24 months   ki0047075b-MAL-ED          INDIA                          1                17     222
12-24 months   ki0047075b-MAL-ED          NEPAL                          0               198     225
12-24 months   ki0047075b-MAL-ED          NEPAL                          1                27     225
12-24 months   ki0047075b-MAL-ED          PERU                           0               110     189
12-24 months   ki0047075b-MAL-ED          PERU                           1                79     189
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               216     219
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 3     219
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               203     205
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 2     205
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      15
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                15      15
12-24 months   ki1000108-IRC              INDIA                          0                14      14
12-24 months   ki1000108-IRC              INDIA                          1                 0      14
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0               346     458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1               112     458
12-24 months   ki1101329-Keneba           GAMBIA                         0               766    1119
12-24 months   ki1101329-Keneba           GAMBIA                         1               353    1119
12-24 months   ki1113344-GMS-Nepal        NEPAL                          0               174     714
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1               540     714
12-24 months   ki1148112-LCNI-5           MALAWI                         0                21      30
12-24 months   ki1148112-LCNI-5           MALAWI                         1                 9      30
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0              2034    9258
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              7224    9258
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0              1382    6432
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1              5050    6432


The following strata were considered:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-3 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 12-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 3-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 3-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-12 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-12 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-12 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12-24 months, studyid: ki1000108-IRC, country: INDIA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/9e44f593-e001-4ad5-9b4b-7aa7da8fd374/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/9e44f593-e001-4ad5-9b4b-7aa7da8fd374/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.1746297   -0.2215986   -0.1276607
0-3 months     ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.1365247   -0.1814347   -0.0916146
0-3 months     ki0047075b-MAL-ED         BRAZIL       0                    NA                 0.1858938    0.1294894    0.2422982
0-3 months     ki0047075b-MAL-ED         BRAZIL       1                    NA                 0.1396177    0.0269744    0.2522611
0-3 months     ki0047075b-MAL-ED         INDIA        0                    NA                -0.0213670   -0.0622242    0.0194901
0-3 months     ki0047075b-MAL-ED         INDIA        1                    NA                -0.0610240   -0.1557426    0.0336947
0-3 months     ki0047075b-MAL-ED         NEPAL        0                    NA                 0.0815612    0.0422439    0.1208784
0-3 months     ki0047075b-MAL-ED         NEPAL        1                    NA                 0.0243969   -0.0382486    0.0870424
0-3 months     ki0047075b-MAL-ED         PERU         0                    NA                -0.1699238   -0.2114515   -0.1283961
0-3 months     ki0047075b-MAL-ED         PERU         1                    NA                -0.1244194   -0.1719793   -0.0768596
0-3 months     ki1000109-EE              PAKISTAN     0                    NA                -0.3199479   -0.3707696   -0.2691262
0-3 months     ki1000109-EE              PAKISTAN     1                    NA                -0.3837035   -0.4394891   -0.3279179
0-3 months     ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.0991029   -0.2241796    0.0259738
0-3 months     ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0094926   -0.0266055    0.0455907
0-3 months     ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0412719   -0.0617940   -0.0207499
0-3 months     ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0417957   -0.0687719   -0.0148196
0-3 months     ki1101329-Keneba          GAMBIA       0                    NA                -0.2936180   -0.3238198   -0.2634162
0-3 months     ki1101329-Keneba          GAMBIA       1                    NA                -0.3011694   -0.3420228   -0.2603159
0-3 months     kiGH5241-JiVitA-3         BANGLADESH   0                    NA                 0.0413405    0.0330702    0.0496108
0-3 months     kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0817087    0.0764734    0.0869439
0-3 months     kiGH5241-JiVitA-4         BANGLADESH   0                    NA                 0.0083595   -0.0228279    0.0395469
0-3 months     kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0792904    0.0639696    0.0946112
3-6 months     ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.0428162   -0.0741594   -0.0114729
3-6 months     ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0609218   -0.0920063   -0.0298372
3-6 months     ki0047075b-MAL-ED         BRAZIL       0                    NA                 0.0681596    0.0288294    0.1074899
3-6 months     ki0047075b-MAL-ED         BRAZIL       1                    NA                 0.0221241   -0.0646961    0.1089442
3-6 months     ki0047075b-MAL-ED         INDIA        0                    NA                -0.0377156   -0.0682312   -0.0072000
3-6 months     ki0047075b-MAL-ED         INDIA        1                    NA                -0.0689605   -0.1463668    0.0084458
3-6 months     ki0047075b-MAL-ED         NEPAL        0                    NA                -0.0198709   -0.0480120    0.0082702
3-6 months     ki0047075b-MAL-ED         NEPAL        1                    NA                -0.0081293   -0.0650172    0.0487586
3-6 months     ki0047075b-MAL-ED         PERU         0                    NA                 0.0250897   -0.0154480    0.0656274
3-6 months     ki0047075b-MAL-ED         PERU         1                    NA                 0.0332139   -0.0140794    0.0805072
3-6 months     ki1000109-EE              PAKISTAN     0                    NA                 0.0756798    0.0337113    0.1176483
3-6 months     ki1000109-EE              PAKISTAN     1                    NA                 0.0551385    0.0229648    0.0873123
3-6 months     ki1000304b-SAS-CompFeed   INDIA        0                    NA                 0.0709093   -0.1212427    0.2630612
3-6 months     ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.0394898   -0.0745348   -0.0044448
3-6 months     ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0322469   -0.0502967   -0.0141971
3-6 months     ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0104115   -0.0367665    0.0159435
3-6 months     ki1101329-Keneba          GAMBIA       0                    NA                -0.0201508   -0.0422886    0.0019869
3-6 months     ki1101329-Keneba          GAMBIA       1                    NA                -0.0752895   -0.1044949   -0.0460841
3-6 months     ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.2171812   -0.2482821   -0.1860802
3-6 months     ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.1584572   -0.1787586   -0.1381558
3-6 months     kiGH5241-JiVitA-3         BANGLADESH   0                    NA                 0.0000958   -0.0086269    0.0088185
3-6 months     kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0091140   -0.0143604   -0.0038675
3-6 months     kiGH5241-JiVitA-4         BANGLADESH   0                    NA                 0.0022365   -0.0226442    0.0271172
3-6 months     kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0166551   -0.0315027   -0.0018075
6-12 months    ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.0488921   -0.0629554   -0.0348288
6-12 months    ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0672783   -0.0796846   -0.0548720
6-12 months    ki0047075b-MAL-ED         BRAZIL       0                    NA                 0.0067825   -0.0139957    0.0275607
6-12 months    ki0047075b-MAL-ED         BRAZIL       1                    NA                 0.0055006   -0.0478050    0.0588063
6-12 months    ki0047075b-MAL-ED         INDIA        0                    NA                -0.0784489   -0.0912945   -0.0656032
6-12 months    ki0047075b-MAL-ED         INDIA        1                    NA                -0.0662336   -0.1094301   -0.0230371
6-12 months    ki0047075b-MAL-ED         NEPAL        0                    NA                -0.0454701   -0.0567375   -0.0342027
6-12 months    ki0047075b-MAL-ED         NEPAL        1                    NA                -0.0605867   -0.0835732   -0.0376003
6-12 months    ki0047075b-MAL-ED         PERU         0                    NA                -0.0929947   -0.1130810   -0.0729083
6-12 months    ki0047075b-MAL-ED         PERU         1                    NA                -0.1366530   -0.1556174   -0.1176887
6-12 months    ki1000304b-SAS-CompFeed   INDIA        0                    NA                 0.0535002    0.0178751    0.0891253
6-12 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.0893045   -0.0999096   -0.0786994
6-12 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0601763   -0.0680039   -0.0523487
6-12 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0709825   -0.0858558   -0.0561091
6-12 months    ki1101329-Keneba          GAMBIA       0                    NA                -0.0641693   -0.0732899   -0.0550487
6-12 months    ki1101329-Keneba          GAMBIA       1                    NA                -0.0465386   -0.0600031   -0.0330741
6-12 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.0475659   -0.0624679   -0.0326639
6-12 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0635141   -0.0727291   -0.0542991
6-12 months    ki1148112-LCNI-5          MALAWI       0                    NA                -0.0761693   -0.1272406   -0.0250980
6-12 months    ki1148112-LCNI-5          MALAWI       1                    NA                -0.0559422   -0.0989960   -0.0128885
6-12 months    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.0714402   -0.0766984   -0.0661820
6-12 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0760462   -0.0790800   -0.0730123
6-12 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0445657   -0.0533035   -0.0358279
6-12 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0401229   -0.0452374   -0.0350084
12-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.0352205   -0.0431769   -0.0272642
12-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0343346   -0.0414329   -0.0272363
12-24 months   ki0047075b-MAL-ED         BRAZIL       0                    NA                 0.0030062   -0.0084678    0.0144803
12-24 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                -0.0188699   -0.0422749    0.0045351
12-24 months   ki0047075b-MAL-ED         INDIA        0                    NA                -0.0089704   -0.0143706   -0.0035701
12-24 months   ki0047075b-MAL-ED         INDIA        1                    NA                -0.0214232   -0.0388497   -0.0039968
12-24 months   ki0047075b-MAL-ED         NEPAL        0                    NA                -0.0309918   -0.0364423   -0.0255413
12-24 months   ki0047075b-MAL-ED         NEPAL        1                    NA                -0.0333755   -0.0451381   -0.0216130
12-24 months   ki0047075b-MAL-ED         PERU         0                    NA                 0.0056656   -0.0028833    0.0142145
12-24 months   ki0047075b-MAL-ED         PERU         1                    NA                 0.0126340    0.0052268    0.0200411
12-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0068316   -0.0113045   -0.0023586
12-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0123107   -0.0194252   -0.0051962
12-24 months   ki1101329-Keneba          GAMBIA       0                    NA                -0.0185650   -0.0229358   -0.0141941
12-24 months   ki1101329-Keneba          GAMBIA       1                    NA                -0.0135489   -0.0189029   -0.0081948
12-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.0174763   -0.0277902   -0.0071625
12-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0154966   -0.0213588   -0.0096343
12-24 months   ki1148112-LCNI-5          MALAWI       0                    NA                -0.0053185   -0.0263716    0.0157345
12-24 months   ki1148112-LCNI-5          MALAWI       1                    NA                -0.0345407   -0.0639658   -0.0051157
12-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.0157545   -0.0191135   -0.0123954
12-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0207341   -0.0226601   -0.0188080
12-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0100348   -0.0134199   -0.0066497
12-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0166364   -0.0188067   -0.0144661


### Parameter: E(Y)


agecat         studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH   NA                   NA                -0.0367999   -0.0692784   -0.0043215
0-3 months     ki0047075b-MAL-ED         BRAZIL       NA                   NA                 0.2024499    0.1502269    0.2546728
0-3 months     ki0047075b-MAL-ED         INDIA        NA                   NA                -0.0222752   -0.0610481    0.0164977
0-3 months     ki0047075b-MAL-ED         NEPAL        NA                   NA                 0.0735454    0.0381022    0.1089887
0-3 months     ki0047075b-MAL-ED         PERU         NA                   NA                -0.1508658   -0.1831247   -0.1186070
0-3 months     ki1000109-EE              PAKISTAN     NA                   NA                -0.3938516   -0.4364614   -0.3512419
0-3 months     ki1000304b-SAS-CompFeed   INDIA        NA                   NA                 0.0038374   -0.0265594    0.0342341
0-3 months     ki1017093b-PROVIDE        BANGLADESH   NA                   NA                -0.0413143   -0.0594662   -0.0231624
0-3 months     ki1101329-Keneba          GAMBIA       NA                   NA                -0.2881169   -0.3131328   -0.2631010
0-3 months     kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                 0.0705623    0.0656085    0.0755161
0-3 months     kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                 0.0674700    0.0524969    0.0824432
3-6 months     ki0047075b-MAL-ED         BANGLADESH   NA                   NA                -0.0188602   -0.0422435    0.0045231
3-6 months     ki0047075b-MAL-ED         BRAZIL       NA                   NA                 0.0604904    0.0239698    0.0970111
3-6 months     ki0047075b-MAL-ED         INDIA        NA                   NA                -0.0402159   -0.0690209   -0.0114109
3-6 months     ki0047075b-MAL-ED         NEPAL        NA                   NA                -0.0217195   -0.0484207    0.0049817
3-6 months     ki0047075b-MAL-ED         PERU         NA                   NA                 0.0285063   -0.0025558    0.0595685
3-6 months     ki1000109-EE              PAKISTAN     NA                   NA                 0.0701161    0.0419135    0.0983187
3-6 months     ki1000304b-SAS-CompFeed   INDIA        NA                   NA                -0.0357951   -0.0659472   -0.0056430
3-6 months     ki1017093b-PROVIDE        BANGLADESH   NA                   NA                -0.0272428   -0.0436954   -0.0107902
3-6 months     ki1101329-Keneba          GAMBIA       NA                   NA                -0.0174002   -0.0363928    0.0015925
3-6 months     ki1113344-GMS-Nepal       NEPAL        NA                   NA                -0.1663669   -0.1850409   -0.1476929
3-6 months     kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                -0.0035176   -0.0083841    0.0013489
3-6 months     kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                -0.0095967   -0.0234440    0.0042506
6-12 months    ki0047075b-MAL-ED         BANGLADESH   NA                   NA                -0.0810302   -0.0916713   -0.0703891
6-12 months    ki0047075b-MAL-ED         BRAZIL       NA                   NA                 0.0065644   -0.0129183    0.0260472
6-12 months    ki0047075b-MAL-ED         INDIA        NA                   NA                -0.0775092   -0.0898591   -0.0651592
6-12 months    ki0047075b-MAL-ED         NEPAL        NA                   NA                -0.0484306   -0.0591023   -0.0377589
6-12 months    ki0047075b-MAL-ED         PERU         NA                   NA                -0.0382822   -0.0523761   -0.0241883
6-12 months    ki1000304b-SAS-CompFeed   INDIA        NA                   NA                -0.0862948   -0.0967898   -0.0757998
6-12 months    ki1017093b-PROVIDE        BANGLADESH   NA                   NA                -0.0626151   -0.0695574   -0.0556729
6-12 months    ki1101329-Keneba          GAMBIA       NA                   NA                -0.0621235   -0.0700857   -0.0541612
6-12 months    ki1113344-GMS-Nepal       NEPAL        NA                   NA                -0.0623284   -0.0705747   -0.0540821
6-12 months    ki1148112-LCNI-5          MALAWI       NA                   NA                -0.0281085   -0.0675243    0.0113073
6-12 months    kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                -0.0749683   -0.0778180   -0.0721186
6-12 months    kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                -0.0387665   -0.0435189   -0.0340140
12-24 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                -0.0177288   -0.0232009   -0.0122567
12-24 months   ki0047075b-MAL-ED         BRAZIL       NA                   NA                -0.0013016   -0.0119070    0.0093038
12-24 months   ki0047075b-MAL-ED         INDIA        NA                   NA                -0.0099239   -0.0151132   -0.0047346
12-24 months   ki0047075b-MAL-ED         NEPAL        NA                   NA                -0.0297758   -0.0348315   -0.0247201
12-24 months   ki0047075b-MAL-ED         PERU         NA                   NA                -0.0082368   -0.0151828   -0.0012908
12-24 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                -0.0081718   -0.0120131   -0.0043304
12-24 months   ki1101329-Keneba          GAMBIA       NA                   NA                -0.0199103   -0.0237186   -0.0161020
12-24 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                -0.0159785   -0.0210905   -0.0108666
12-24 months   ki1148112-LCNI-5          MALAWI       NA                   NA                -0.0140852   -0.0319419    0.0037715
12-24 months   kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                -0.0189940   -0.0208299   -0.0171580
12-24 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                -0.0145458   -0.0165637   -0.0125280


### Parameter: ATE


agecat         studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         BANGLADESH   1                    0                  0.0381050   -0.0296937    0.1059037
0-3 months     ki0047075b-MAL-ED         BRAZIL       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         BRAZIL       1                    0                 -0.0462761   -0.1716813    0.0791292
0-3 months     ki0047075b-MAL-ED         INDIA        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         INDIA        1                    0                 -0.0396569   -0.1429997    0.0636859
0-3 months     ki0047075b-MAL-ED         NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         NEPAL        1                    0                 -0.0571643   -0.1306014    0.0162728
0-3 months     ki0047075b-MAL-ED         PERU         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         PERU         1                    0                  0.0455044   -0.0158391    0.1068479
0-3 months     ki1000109-EE              PAKISTAN     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE              PAKISTAN     1                    0                 -0.0637556   -0.1388049    0.0112936
0-3 months     ki1000304b-SAS-CompFeed   INDIA        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed   INDIA        1                    0                  0.1085955   -0.0228717    0.2400628
0-3 months     ki1017093b-PROVIDE        BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE        BANGLADESH   1                    0                 -0.0005238   -0.0307140    0.0296663
0-3 months     ki1101329-Keneba          GAMBIA       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba          GAMBIA       1                    0                 -0.0075514   -0.0574461    0.0423434
0-3 months     kiGH5241-JiVitA-3         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3         BANGLADESH   1                    0                  0.0403681    0.0314662    0.0492701
0-3 months     kiGH5241-JiVitA-4         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4         BANGLADESH   1                    0                  0.0709309    0.0374131    0.1044486
3-6 months     ki0047075b-MAL-ED         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         BANGLADESH   1                    0                 -0.0181056   -0.0627094    0.0264981
3-6 months     ki0047075b-MAL-ED         BRAZIL       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         BRAZIL       1                    0                 -0.0460356   -0.1400709    0.0479998
3-6 months     ki0047075b-MAL-ED         INDIA        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         INDIA        1                    0                 -0.0312450   -0.1143154    0.0518255
3-6 months     ki0047075b-MAL-ED         NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         NEPAL        1                    0                  0.0117416   -0.0502235    0.0737068
3-6 months     ki0047075b-MAL-ED         PERU         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         PERU         1                    0                  0.0081242   -0.0535992    0.0698477
3-6 months     ki1000109-EE              PAKISTAN     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE              PAKISTAN     1                    0                 -0.0205413   -0.0730897    0.0320071
3-6 months     ki1000304b-SAS-CompFeed   INDIA        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed   INDIA        1                    0                 -0.1103990   -0.3187335    0.0979354
3-6 months     ki1017093b-PROVIDE        BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE        BANGLADESH   1                    0                  0.0218354   -0.0069638    0.0506346
3-6 months     ki1101329-Keneba          GAMBIA       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba          GAMBIA       1                    0                 -0.0551387   -0.0899998   -0.0202775
3-6 months     ki1113344-GMS-Nepal       NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal       NEPAL        1                    0                  0.0587239    0.0233142    0.0941337
3-6 months     kiGH5241-JiVitA-3         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3         BANGLADESH   1                    0                 -0.0092098   -0.0189965    0.0005769
3-6 months     kiGH5241-JiVitA-4         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4         BANGLADESH   1                    0                 -0.0188916   -0.0471039    0.0093206
6-12 months    ki0047075b-MAL-ED         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         BANGLADESH   1                    0                 -0.0183862   -0.0373142    0.0005418
6-12 months    ki0047075b-MAL-ED         BRAZIL       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         BRAZIL       1                    0                 -0.0012819   -0.0584935    0.0559298
6-12 months    ki0047075b-MAL-ED         INDIA        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         INDIA        1                    0                  0.0122153   -0.0327408    0.0571713
6-12 months    ki0047075b-MAL-ED         NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         NEPAL        1                    0                 -0.0151166   -0.0407079    0.0104746
6-12 months    ki0047075b-MAL-ED         PERU         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         PERU         1                    0                 -0.0436584   -0.0743869   -0.0129298
6-12 months    ki1000304b-SAS-CompFeed   INDIA        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed   INDIA        1                    0                 -0.1428047   -0.1813002   -0.1043092
6-12 months    ki1017093b-PROVIDE        BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE        BANGLADESH   1                    0                 -0.0108061   -0.0276053    0.0059930
6-12 months    ki1101329-Keneba          GAMBIA       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1101329-Keneba          GAMBIA       1                    0                  0.0176307    0.0019361    0.0333253
6-12 months    ki1113344-GMS-Nepal       NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal       NEPAL        1                    0                 -0.0159482   -0.0334701    0.0015737
6-12 months    ki1148112-LCNI-5          MALAWI       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5          MALAWI       1                    0                  0.0202271   -0.0508366    0.0912907
6-12 months    kiGH5241-JiVitA-3         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3         BANGLADESH   1                    0                 -0.0046060   -0.0104077    0.0011958
6-12 months    kiGH5241-JiVitA-4         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4         BANGLADESH   1                    0                  0.0044428   -0.0053502    0.0142358
12-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    0                  0.0008859   -0.0102882    0.0120601
12-24 months   ki0047075b-MAL-ED         BRAZIL       0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         BRAZIL       1                    0                 -0.0218761   -0.0478915    0.0041393
12-24 months   ki0047075b-MAL-ED         INDIA        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         INDIA        1                    0                 -0.0124528   -0.0306691    0.0057634
12-24 months   ki0047075b-MAL-ED         NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         NEPAL        1                    0                 -0.0023837   -0.0153825    0.0106150
12-24 months   ki0047075b-MAL-ED         PERU         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         PERU         1                    0                  0.0069684   -0.0041240    0.0180609
12-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    0                 -0.0054791   -0.0137975    0.0028392
12-24 months   ki1101329-Keneba          GAMBIA       0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1101329-Keneba          GAMBIA       1                    0                  0.0050161   -0.0014632    0.0114954
12-24 months   ki1113344-GMS-Nepal       NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal       NEPAL        1                    0                  0.0019797   -0.0098532    0.0138126
12-24 months   ki1148112-LCNI-5          MALAWI       0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5          MALAWI       1                    0                 -0.0292222   -0.0654032    0.0069588
12-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    0                 -0.0049796   -0.0086253   -0.0013339
12-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    0                 -0.0066016   -0.0104662   -0.0027370
