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

**Intervention Variable:** exclfeed6

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

agecat         studyid                    country                        exclfeed6    n_cell       n
-------------  -------------------------  -----------------------------  ----------  -------  ------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0               177     233
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                56     233
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0               163     175
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                12     175
0-3 months     ki0047075b-MAL-ED          INDIA                          0               188     193
0-3 months     ki0047075b-MAL-ED          INDIA                          1                 5     193
0-3 months     ki0047075b-MAL-ED          NEPAL                          0               162     173
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                11     173
0-3 months     ki0047075b-MAL-ED          PERU                           0               248     258
0-3 months     ki0047075b-MAL-ED          PERU                           1                10     258
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0               209     209
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0     209
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
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0              8734   40078
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1             31344   40078
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0               592    3610
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1              3018    3610
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0               170     225
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                55     225
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0               192     208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                16     208
3-6 months     ki0047075b-MAL-ED          INDIA                          0               219     225
3-6 months     ki0047075b-MAL-ED          INDIA                          1                 6     225
3-6 months     ki0047075b-MAL-ED          NEPAL                          0               219     232
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                13     232
3-6 months     ki0047075b-MAL-ED          PERU                           0               253     264
3-6 months     ki0047075b-MAL-ED          PERU                           1                11     264
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0               233     233
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0     233
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               235     236
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1     236
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
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0              5380   25156
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1             19776   25156
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0               584    3646
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1              3062    3646
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     0               162     214
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                52     214
6-12 months    ki0047075b-MAL-ED          BRAZIL                         0               178     194
6-12 months    ki0047075b-MAL-ED          BRAZIL                         1                16     194
6-12 months    ki0047075b-MAL-ED          INDIA                          0               216     221
6-12 months    ki0047075b-MAL-ED          INDIA                          1                 5     221
6-12 months    ki0047075b-MAL-ED          NEPAL                          0               215     229
6-12 months    ki0047075b-MAL-ED          NEPAL                          1                14     229
6-12 months    ki0047075b-MAL-ED          PERU                           0               225     235
6-12 months    ki0047075b-MAL-ED          PERU                           1                10     235
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               224     224
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0     224
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               219     220
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1     220
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
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     0              4152   19584
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1             15432   19584
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0              1192    5646
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1              4454    5646
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     0               152     203
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                51     203
12-24 months   ki0047075b-MAL-ED          BRAZIL                         0               150     165
12-24 months   ki0047075b-MAL-ED          BRAZIL                         1                15     165
12-24 months   ki0047075b-MAL-ED          INDIA                          0               217     222
12-24 months   ki0047075b-MAL-ED          INDIA                          1                 5     222
12-24 months   ki0047075b-MAL-ED          NEPAL                          0               211     225
12-24 months   ki0047075b-MAL-ED          NEPAL                          1                14     225
12-24 months   ki0047075b-MAL-ED          PERU                           0               182     189
12-24 months   ki0047075b-MAL-ED          PERU                           1                 7     189
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               219     219
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0     219
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               204     205
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1     205
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
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0              2044    9258
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              7214    9258
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0              1406    6432
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1              5026    6432


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
![](/tmp/90914904-2b8d-4ea1-a3ef-e64a96687a2b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/90914904-2b8d-4ea1-a3ef-e64a96687a2b/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH   0                    NA                3.5338533   3.4647070   3.6029996
0-3 months     ki0047075b-MAL-ED         BANGLADESH   1                    NA                3.6234404   3.4781336   3.7687472
0-3 months     ki0047075b-MAL-ED         BRAZIL       0                    NA                4.0538401   3.9493574   4.1583227
0-3 months     ki0047075b-MAL-ED         BRAZIL       1                    NA                4.2250106   3.9056893   4.5443320
0-3 months     ki0047075b-MAL-ED         INDIA        0                    NA                3.5715005   3.4937661   3.6492348
0-3 months     ki0047075b-MAL-ED         INDIA        1                    NA                3.6269354   3.0523559   4.2015148
0-3 months     ki0047075b-MAL-ED         NEPAL        0                    NA                3.8269807   3.7476753   3.9062860
0-3 months     ki0047075b-MAL-ED         NEPAL        1                    NA                3.0873063   3.0345717   3.1400409
0-3 months     ki0047075b-MAL-ED         PERU         0                    NA                3.3283588   3.2636207   3.3930970
0-3 months     ki0047075b-MAL-ED         PERU         1                    NA                3.4180006   3.1919667   3.6440345
0-3 months     ki1000109-EE              PAKISTAN     0                    NA                2.7252500   2.6218039   2.8286961
0-3 months     ki1000109-EE              PAKISTAN     1                    NA                2.6505448   2.5429869   2.7581027
0-3 months     ki1000304b-SAS-CompFeed   INDIA        0                    NA                3.3456184   3.1318401   3.5593967
0-3 months     ki1000304b-SAS-CompFeed   INDIA        1                    NA                3.6148691   3.5481281   3.6816101
0-3 months     ki1017093b-PROVIDE        BANGLADESH   0                    NA                3.4847721   3.4374668   3.5320773
0-3 months     ki1017093b-PROVIDE        BANGLADESH   1                    NA                3.4767940   3.4087650   3.5448230
0-3 months     ki1101329-Keneba          GAMBIA       0                    NA                3.1501858   3.0911446   3.2092270
0-3 months     ki1101329-Keneba          GAMBIA       1                    NA                3.1928865   3.1146154   3.2711575
0-3 months     kiGH5241-JiVitA-3         BANGLADESH   0                    NA                3.6615881   3.6445810   3.6785951
0-3 months     kiGH5241-JiVitA-3         BANGLADESH   1                    NA                3.7407404   3.7296912   3.7517896
0-3 months     kiGH5241-JiVitA-4         BANGLADESH   0                    NA                3.5388285   3.4690450   3.6086120
0-3 months     kiGH5241-JiVitA-4         BANGLADESH   1                    NA                3.6651881   3.6325500   3.6978262
3-6 months     ki0047075b-MAL-ED         BANGLADESH   0                    NA                1.9454193   1.8952100   1.9956286
3-6 months     ki0047075b-MAL-ED         BANGLADESH   1                    NA                1.8543435   1.7733804   1.9353065
3-6 months     ki0047075b-MAL-ED         BRAZIL       0                    NA                2.1443143   2.0622464   2.2263822
3-6 months     ki0047075b-MAL-ED         BRAZIL       1                    NA                2.2006979   1.9705047   2.4308911
3-6 months     ki0047075b-MAL-ED         INDIA        0                    NA                1.8834410   1.8197467   1.9471353
3-6 months     ki0047075b-MAL-ED         INDIA        1                    NA                1.9010101   1.7754457   2.0265745
3-6 months     ki0047075b-MAL-ED         NEPAL        0                    NA                1.9641377   1.9063989   2.0218766
3-6 months     ki0047075b-MAL-ED         NEPAL        1                    NA                2.2398959   2.0590807   2.4207112
3-6 months     ki0047075b-MAL-ED         PERU         0                    NA                2.0147818   1.9472109   2.0823528
3-6 months     ki0047075b-MAL-ED         PERU         1                    NA                2.1584231   1.8912753   2.4255710
3-6 months     ki1000109-EE              PAKISTAN     0                    NA                2.0659514   1.9713062   2.1605965
3-6 months     ki1000109-EE              PAKISTAN     1                    NA                2.0100403   1.9388878   2.0811928
3-6 months     ki1000304b-SAS-CompFeed   INDIA        0                    NA                2.0822845   1.7186172   2.4459519
3-6 months     ki1000304b-SAS-CompFeed   INDIA        1                    NA                1.8962760   1.8165763   1.9759758
3-6 months     ki1017093b-PROVIDE        BANGLADESH   0                    NA                1.9532513   1.9126742   1.9938285
3-6 months     ki1017093b-PROVIDE        BANGLADESH   1                    NA                2.0058784   1.9370563   2.0747004
3-6 months     ki1101329-Keneba          GAMBIA       0                    NA                1.9901890   1.9429988   2.0373791
3-6 months     ki1101329-Keneba          GAMBIA       1                    NA                1.8768548   1.8122821   1.9414275
3-6 months     ki1113344-GMS-Nepal       NEPAL        0                    NA                1.6023067   1.5332354   1.6713780
3-6 months     ki1113344-GMS-Nepal       NEPAL        1                    NA                1.7186085   1.6741083   1.7631086
3-6 months     kiGH5241-JiVitA-3         BANGLADESH   0                    NA                1.9245941   1.9055226   1.9436657
3-6 months     kiGH5241-JiVitA-3         BANGLADESH   1                    NA                1.9085219   1.8973346   1.9197092
3-6 months     kiGH5241-JiVitA-4         BANGLADESH   0                    NA                1.9294782   1.8751772   1.9837791
3-6 months     kiGH5241-JiVitA-4         BANGLADESH   1                    NA                1.8828920   1.8506485   1.9151356
6-12 months    ki0047075b-MAL-ED         BANGLADESH   0                    NA                1.1232084   1.0934723   1.1529446
6-12 months    ki0047075b-MAL-ED         BANGLADESH   1                    NA                1.0818564   1.0344647   1.1292481
6-12 months    ki0047075b-MAL-ED         BRAZIL       0                    NA                1.3933209   1.3446643   1.4419776
6-12 months    ki0047075b-MAL-ED         BRAZIL       1                    NA                1.3087549   1.1636946   1.4538152
6-12 months    ki0047075b-MAL-ED         INDIA        0                    NA                1.1224035   1.0931958   1.1516113
6-12 months    ki0047075b-MAL-ED         INDIA        1                    NA                1.0804309   0.9154736   1.2453881
6-12 months    ki0047075b-MAL-ED         NEPAL        0                    NA                1.2254882   1.1988625   1.2521139
6-12 months    ki0047075b-MAL-ED         NEPAL        1                    NA                1.1573474   1.0739386   1.2407562
6-12 months    ki0047075b-MAL-ED         PERU         0                    NA                1.2091799   1.1753557   1.2430041
6-12 months    ki0047075b-MAL-ED         PERU         1                    NA                1.2609533   1.1785274   1.3433792
6-12 months    ki1000304b-SAS-CompFeed   INDIA        0                    NA                1.2487053   1.1494636   1.3479469
6-12 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                1.0868835   1.0650462   1.1087209
6-12 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                1.1789062   1.1594228   1.1983896
6-12 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                1.1535173   1.1161256   1.1909091
6-12 months    ki1101329-Keneba          GAMBIA       0                    NA                1.1711877   1.1498137   1.1925616
6-12 months    ki1101329-Keneba          GAMBIA       1                    NA                1.2041534   1.1733863   1.2349206
6-12 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                1.2000122   1.1634919   1.2365326
6-12 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                1.1658929   1.1437671   1.1880187
6-12 months    ki1148112-LCNI-5          MALAWI       0                    NA                1.1485067   1.0371530   1.2598604
6-12 months    ki1148112-LCNI-5          MALAWI       1                    NA                1.2397903   1.1599575   1.3196232
6-12 months    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                1.1139462   1.1015812   1.1263113
6-12 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                1.1044440   1.0972108   1.1116773
6-12 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                1.1717693   1.1515188   1.1920197
6-12 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                1.1987691   1.1864386   1.2110997
12-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.8496457   0.8317934   0.8674980
12-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.8339913   0.8056004   0.8623821
12-24 months   ki0047075b-MAL-ED         BRAZIL       0                    NA                0.9844782   0.9523160   1.0166405
12-24 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                0.9530743   0.8495331   1.0566154
12-24 months   ki0047075b-MAL-ED         INDIA        0                    NA                0.8833266   0.8657023   0.9009510
12-24 months   ki0047075b-MAL-ED         INDIA        1                    NA                0.7474174   0.6764712   0.8183635
12-24 months   ki0047075b-MAL-ED         NEPAL        0                    NA                0.8595350   0.8434279   0.8756422
12-24 months   ki0047075b-MAL-ED         NEPAL        1                    NA                0.8220441   0.7988746   0.8452137
12-24 months   ki0047075b-MAL-ED         PERU         0                    NA                0.8508447   0.8298478   0.8718416
12-24 months   ki0047075b-MAL-ED         PERU         1                    NA                0.8228320   0.7719296   0.8737344
12-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.8635650   0.8496710   0.8774590
12-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.8546613   0.8322086   0.8771140
12-24 months   ki1101329-Keneba          GAMBIA       0                    NA                0.8479257   0.8354547   0.8603968
12-24 months   ki1101329-Keneba          GAMBIA       1                    NA                0.8626498   0.8458959   0.8794038
12-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.8365363   0.8099041   0.8631686
12-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.8369282   0.8199031   0.8539534
12-24 months   ki1148112-LCNI-5          MALAWI       0                    NA                0.9052456   0.8493606   0.9611306
12-24 months   ki1148112-LCNI-5          MALAWI       1                    NA                0.8330056   0.7639315   0.9020797
12-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.8049165   0.7953476   0.8144854
12-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.7925113   0.7869009   0.7981216
12-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.8600013   0.8503896   0.8696130
12-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.8447977   0.8385026   0.8510929


### Parameter: E(Y)


agecat         studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH   NA                   NA                3.5553847   3.4920868   3.6186827
0-3 months     ki0047075b-MAL-ED         BRAZIL       NA                   NA                4.0688851   3.9665094   4.1712608
0-3 months     ki0047075b-MAL-ED         INDIA        NA                   NA                3.5729366   3.4957568   3.6501164
0-3 months     ki0047075b-MAL-ED         NEPAL        NA                   NA                3.8170740   3.7403102   3.8938378
0-3 months     ki0047075b-MAL-ED         PERU         NA                   NA                3.3318351   3.2689715   3.3946986
0-3 months     ki1000109-EE              PAKISTAN     NA                   NA                2.6575645   2.5739973   2.7411317
0-3 months     ki1000304b-SAS-CompFeed   INDIA        NA                   NA                3.6020442   3.5415582   3.6625301
0-3 months     ki1017093b-PROVIDE        BANGLADESH   NA                   NA                3.4826706   3.4434873   3.5218539
0-3 months     ki1101329-Keneba          GAMBIA       NA                   NA                3.1390821   3.0898519   3.1883124
0-3 months     kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                3.7185042   3.7081620   3.7288464
0-3 months     kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                3.6386843   3.6074983   3.6698703
3-6 months     ki0047075b-MAL-ED         BANGLADESH   NA                   NA                1.9343889   1.8844588   1.9843190
3-6 months     ki0047075b-MAL-ED         BRAZIL       NA                   NA                2.1478156   2.0686357   2.2269955
3-6 months     ki0047075b-MAL-ED         INDIA        NA                   NA                1.8839095   1.8218223   1.9459968
3-6 months     ki0047075b-MAL-ED         NEPAL        NA                   NA                1.9673620   1.9110737   2.0236503
3-6 months     ki0047075b-MAL-ED         PERU         NA                   NA                2.0207669   1.9549762   2.0865576
3-6 months     ki1000109-EE              PAKISTAN     NA                   NA                2.0241201   1.9636505   2.0845898
3-6 months     ki1000304b-SAS-CompFeed   INDIA        NA                   NA                1.9051097   1.8384221   1.9717974
3-6 months     ki1017093b-PROVIDE        BANGLADESH   NA                   NA                1.9654454   1.9303798   2.0005110
3-6 months     ki1101329-Keneba          GAMBIA       NA                   NA                1.9931730   1.9526530   2.0336930
3-6 months     ki1113344-GMS-Nepal       NEPAL        NA                   NA                1.7048001   1.6654509   1.7441494
3-6 months     kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                1.9200510   1.9095836   1.9305183
3-6 months     kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                1.8963650   1.8662030   1.9265270
6-12 months    ki0047075b-MAL-ED         BANGLADESH   NA                   NA                1.1131603   1.0877615   1.1385590
6-12 months    ki0047075b-MAL-ED         BRAZIL       NA                   NA                1.3863464   1.3400121   1.4326807
6-12 months    ki0047075b-MAL-ED         INDIA        NA                   NA                1.1214539   1.0926522   1.1502556
6-12 months    ki0047075b-MAL-ED         NEPAL        NA                   NA                1.2234287   1.1975908   1.2492667
6-12 months    ki0047075b-MAL-ED         PERU         NA                   NA                1.2081188   1.1752622   1.2409753
6-12 months    ki1000304b-SAS-CompFeed   INDIA        NA                   NA                1.0940274   1.0717512   1.1163036
6-12 months    ki1017093b-PROVIDE        BANGLADESH   NA                   NA                1.1731762   1.1558671   1.1904853
6-12 months    ki1101329-Keneba          GAMBIA       NA                   NA                1.1784288   1.1595786   1.1972791
6-12 months    ki1113344-GMS-Nepal       NEPAL        NA                   NA                1.1659725   1.1463312   1.1856138
6-12 months    ki1148112-LCNI-5          MALAWI       NA                   NA                1.2437855   1.1489803   1.3385906
6-12 months    kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                1.1067177   1.0999609   1.1134745
6-12 months    kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                1.2020599   1.1906612   1.2134585
12-24 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.8457372   0.8296411   0.8618334
12-24 months   ki0047075b-MAL-ED         BRAZIL       NA                   NA                0.9816245   0.9508764   1.0123725
12-24 months   ki0047075b-MAL-ED         INDIA        NA                   NA                0.8802656   0.8627612   0.8977700
12-24 months   ki0047075b-MAL-ED         NEPAL        NA                   NA                0.8610937   0.8457157   0.8764716
12-24 months   ki0047075b-MAL-ED         PERU         NA                   NA                0.8498071   0.8294861   0.8701282
12-24 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.8575519   0.8455586   0.8695452
12-24 months   ki1101329-Keneba          GAMBIA       NA                   NA                0.8457043   0.8349054   0.8565032
12-24 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.8363408   0.8207398   0.8519417
12-24 months   ki1148112-LCNI-5          MALAWI       NA                   NA                0.8835736   0.8376943   0.9294529
12-24 months   kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.7961667   0.7908693   0.8014641
12-24 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.8490267   0.8432029   0.8548505


### Parameter: ATE


agecat         studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         BANGLADESH   1                    0                  0.0895871   -0.0712724    0.2504466
0-3 months     ki0047075b-MAL-ED         BRAZIL       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         BRAZIL       1                    0                  0.1711706   -0.1621440    0.5044851
0-3 months     ki0047075b-MAL-ED         INDIA        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         INDIA        1                    0                  0.0554349   -0.5243790    0.6352487
0-3 months     ki0047075b-MAL-ED         NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         NEPAL        1                    0                 -0.7396744   -0.8288595   -0.6504893
0-3 months     ki0047075b-MAL-ED         PERU         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         PERU         1                    0                  0.0896417   -0.1455794    0.3248629
0-3 months     ki1000109-EE              PAKISTAN     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE              PAKISTAN     1                    0                 -0.0747052   -0.2226423    0.0732319
0-3 months     ki1000304b-SAS-CompFeed   INDIA        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed   INDIA        1                    0                  0.2692507    0.0223955    0.5161059
0-3 months     ki1017093b-PROVIDE        BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE        BANGLADESH   1                    0                 -0.0079781   -0.0908377    0.0748816
0-3 months     ki1101329-Keneba          GAMBIA       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba          GAMBIA       1                    0                  0.0427007   -0.0532905    0.1386918
0-3 months     kiGH5241-JiVitA-3         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3         BANGLADESH   1                    0                  0.0791523    0.0607002    0.0976045
0-3 months     kiGH5241-JiVitA-4         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4         BANGLADESH   1                    0                  0.1263596    0.0501074    0.2026119
3-6 months     ki0047075b-MAL-ED         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         BANGLADESH   1                    0                 -0.0910759   -0.1779633   -0.0041885
3-6 months     ki0047075b-MAL-ED         BRAZIL       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         BRAZIL       1                    0                  0.0563836   -0.1870940    0.2998612
3-6 months     ki0047075b-MAL-ED         INDIA        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         INDIA        1                    0                  0.0175691   -0.1232264    0.1583646
3-6 months     ki0047075b-MAL-ED         NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         NEPAL        1                    0                  0.2757582    0.0862576    0.4652587
3-6 months     ki0047075b-MAL-ED         PERU         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         PERU         1                    0                  0.1436413   -0.1319736    0.4192562
3-6 months     ki1000109-EE              PAKISTAN     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE              PAKISTAN     1                    0                 -0.0559111   -0.1742981    0.0624760
3-6 months     ki1000304b-SAS-CompFeed   INDIA        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed   INDIA        1                    0                 -0.1860085   -0.5899412    0.2179242
3-6 months     ki1017093b-PROVIDE        BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE        BANGLADESH   1                    0                  0.0526270   -0.0272628    0.1325169
3-6 months     ki1101329-Keneba          GAMBIA       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba          GAMBIA       1                    0                 -0.1133341   -0.1892607   -0.0374076
3-6 months     ki1113344-GMS-Nepal       NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal       NEPAL        1                    0                  0.1163018    0.0349080    0.1976956
3-6 months     kiGH5241-JiVitA-3         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3         BANGLADESH   1                    0                 -0.0160723   -0.0371234    0.0049789
3-6 months     kiGH5241-JiVitA-4         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4         BANGLADESH   1                    0                 -0.0465861   -0.1077974    0.0146251
6-12 months    ki0047075b-MAL-ED         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         BANGLADESH   1                    0                 -0.0413521   -0.0972961    0.0145920
6-12 months    ki0047075b-MAL-ED         BRAZIL       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         BRAZIL       1                    0                 -0.0845660   -0.2375760    0.0684440
6-12 months    ki0047075b-MAL-ED         INDIA        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         INDIA        1                    0                 -0.0419727   -0.2094958    0.1255505
6-12 months    ki0047075b-MAL-ED         NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         NEPAL        1                    0                 -0.0681408   -0.1555586    0.0192770
6-12 months    ki0047075b-MAL-ED         PERU         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         PERU         1                    0                  0.0517734   -0.0358306    0.1393773
6-12 months    ki1000304b-SAS-CompFeed   INDIA        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed   INDIA        1                    0                 -0.1618218   -0.2609927   -0.0626509
6-12 months    ki1017093b-PROVIDE        BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE        BANGLADESH   1                    0                 -0.0253888   -0.0675522    0.0167745
6-12 months    ki1101329-Keneba          GAMBIA       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1101329-Keneba          GAMBIA       1                    0                  0.0329658   -0.0029624    0.0688939
6-12 months    ki1113344-GMS-Nepal       NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal       NEPAL        1                    0                 -0.0341194   -0.0768298    0.0085911
6-12 months    ki1148112-LCNI-5          MALAWI       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5          MALAWI       1                    0                  0.0912836   -0.0315883    0.2141555
6-12 months    kiGH5241-JiVitA-3         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3         BANGLADESH   1                    0                 -0.0095022   -0.0231374    0.0041330
6-12 months    kiGH5241-JiVitA-4         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4         BANGLADESH   1                    0                  0.0269998    0.0041438    0.0498559
12-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    0                 -0.0156544   -0.0471186    0.0158098
12-24 months   ki0047075b-MAL-ED         BRAZIL       0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         BRAZIL       1                    0                 -0.0314040   -0.1398254    0.0770175
12-24 months   ki0047075b-MAL-ED         INDIA        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         INDIA        1                    0                 -0.1359093   -0.2090118   -0.0628068
12-24 months   ki0047075b-MAL-ED         NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         NEPAL        1                    0                 -0.0374909   -0.0657072   -0.0092746
12-24 months   ki0047075b-MAL-ED         PERU         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         PERU         1                    0                 -0.0280126   -0.0830756    0.0270503
12-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    0                 -0.0089036   -0.0350831    0.0172758
12-24 months   ki1101329-Keneba          GAMBIA       0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1101329-Keneba          GAMBIA       1                    0                  0.0147241   -0.0051849    0.0346331
12-24 months   ki1113344-GMS-Nepal       NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal       NEPAL        1                    0                  0.0003919   -0.0302031    0.0309869
12-24 months   ki1148112-LCNI-5          MALAWI       0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5          MALAWI       1                    0                 -0.0722400   -0.1610902    0.0166103
12-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    0                 -0.0124052   -0.0229806   -0.0018298
12-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    0                 -0.0152036   -0.0261001   -0.0043070
