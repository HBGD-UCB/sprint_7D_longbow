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
![](/tmp/ed88e583-80da-4b1f-9ef9-70d787b0c1a7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/ed88e583-80da-4b1f-9ef9-70d787b0c1a7/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.0436027   -0.0776003   -0.0096050
0-3 months     ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0527075    0.0047190    0.1006961
0-3 months     ki0047075b-MAL-ED         BRAZIL       0                    NA                 0.1936067    0.1403750    0.2468384
0-3 months     ki0047075b-MAL-ED         BRAZIL       1                    NA                 0.3161129    0.1026156    0.5296101
0-3 months     ki0047075b-MAL-ED         INDIA        0                    NA                -0.0207290   -0.0597904    0.0183323
0-3 months     ki0047075b-MAL-ED         INDIA        1                    NA                -0.0804111   -0.3634891    0.2026669
0-3 months     ki0047075b-MAL-ED         NEPAL        0                    NA                 0.0775362    0.0403992    0.1146733
0-3 months     ki0047075b-MAL-ED         NEPAL        1                    NA                 0.0136727   -0.0856480    0.1129933
0-3 months     ki0047075b-MAL-ED         PERU         0                    NA                -0.1517466   -0.1849419   -0.1185513
0-3 months     ki0047075b-MAL-ED         PERU         1                    NA                -0.1290245   -0.2474456   -0.0106033
0-3 months     ki1000109-EE              PAKISTAN     0                    NA                -0.3247563   -0.3782292   -0.2712834
0-3 months     ki1000109-EE              PAKISTAN     1                    NA                -0.3862438   -0.4448215   -0.3276660
0-3 months     ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.0991029   -0.2241796    0.0259738
0-3 months     ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0094926   -0.0266055    0.0455907
0-3 months     ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0413719   -0.0631878   -0.0195560
0-3 months     ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0411532   -0.0732021   -0.0091043
0-3 months     ki1101329-Keneba          GAMBIA       0                    NA                -0.2951980   -0.3242632   -0.2661328
0-3 months     ki1101329-Keneba          GAMBIA       1                    NA                -0.3042886   -0.3399951   -0.2685820
0-3 months     kiGH5241-JiVitA-3         BANGLADESH   0                    NA                 0.0411652    0.0328632    0.0494673
0-3 months     kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0814194    0.0761687    0.0866700
0-3 months     kiGH5241-JiVitA-4         BANGLADESH   0                    NA                 0.0079184   -0.0276574    0.0434942
0-3 months     kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0789262    0.0632695    0.0945829
3-6 months     ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.0123875   -0.0372017    0.0124267
3-6 months     ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0384809   -0.0898235    0.0128616
3-6 months     ki0047075b-MAL-ED         BRAZIL       0                    NA                 0.0587570    0.0208066    0.0967074
3-6 months     ki0047075b-MAL-ED         BRAZIL       1                    NA                 0.0670916   -0.0581811    0.1923643
3-6 months     ki0047075b-MAL-ED         INDIA        0                    NA                -0.0398696   -0.0693845   -0.0103547
3-6 months     ki0047075b-MAL-ED         INDIA        1                    NA                -0.0528560   -0.1312123    0.0255003
3-6 months     ki0047075b-MAL-ED         NEPAL        0                    NA                -0.0244320   -0.0519523    0.0030884
3-6 months     ki0047075b-MAL-ED         NEPAL        1                    NA                 0.0577374   -0.0199148    0.1353897
3-6 months     ki0047075b-MAL-ED         PERU         0                    NA                 0.0260590   -0.0058750    0.0579930
3-6 months     ki0047075b-MAL-ED         PERU         1                    NA                 0.0863534   -0.0352589    0.2079658
3-6 months     ki1000109-EE              PAKISTAN     0                    NA                 0.0689560    0.0272020    0.1107099
3-6 months     ki1000109-EE              PAKISTAN     1                    NA                 0.0516399    0.0196502    0.0836297
3-6 months     ki1000304b-SAS-CompFeed   INDIA        0                    NA                 0.0709093   -0.1212427    0.2630612
3-6 months     ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.0394898   -0.0745348   -0.0044448
3-6 months     ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0322431   -0.0502908   -0.0141955
3-6 months     ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0104232   -0.0367647    0.0159183
3-6 months     ki1101329-Keneba          GAMBIA       0                    NA                -0.0130550   -0.0352720    0.0091620
3-6 months     ki1101329-Keneba          GAMBIA       1                    NA                -0.0293112   -0.0596567    0.0010342
3-6 months     ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.2230099   -0.2573880   -0.1886319
3-6 months     ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.1600186   -0.1809761   -0.1390610
3-6 months     kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.0001523   -0.0089788    0.0086742
3-6 months     kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0094162   -0.0146509   -0.0041814
3-6 months     kiGH5241-JiVitA-4         BANGLADESH   0                    NA                 0.0053939   -0.0188003    0.0295882
3-6 months     kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0164162   -0.0312222   -0.0016101
6-12 months    ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.0769831   -0.0895842   -0.0643821
6-12 months    ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0936384   -0.1126273   -0.0746495
6-12 months    ki0047075b-MAL-ED         BRAZIL       0                    NA                 0.0104830   -0.0099339    0.0308999
6-12 months    ki0047075b-MAL-ED         BRAZIL       1                    NA                -0.0338265   -0.0903131    0.0226601
6-12 months    ki0047075b-MAL-ED         INDIA        0                    NA                -0.0772990   -0.0898398   -0.0647581
6-12 months    ki0047075b-MAL-ED         INDIA        1                    NA                -0.0865899   -0.1528943   -0.0202855
6-12 months    ki0047075b-MAL-ED         NEPAL        0                    NA                -0.0476087   -0.0586252   -0.0365921
6-12 months    ki0047075b-MAL-ED         NEPAL        1                    NA                -0.0797387   -0.1103093   -0.0491681
6-12 months    ki0047075b-MAL-ED         PERU         0                    NA                -0.0378325   -0.0523274   -0.0233375
6-12 months    ki0047075b-MAL-ED         PERU         1                    NA                -0.0464059   -0.0965748    0.0037631
6-12 months    ki1000304b-SAS-CompFeed   INDIA        0                    NA                 0.0535002    0.0178751    0.0891253
6-12 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.0893045   -0.0999096   -0.0786994
6-12 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0601814   -0.0680113   -0.0523515
6-12 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0709651   -0.0858535   -0.0560768
6-12 months    ki1101329-Keneba          GAMBIA       0                    NA                -0.0640887   -0.0731537   -0.0550236
6-12 months    ki1101329-Keneba          GAMBIA       1                    NA                -0.0458230   -0.0586736   -0.0329724
6-12 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.0526608   -0.0656051   -0.0397165
6-12 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0653152   -0.0742578   -0.0563725
6-12 months    ki1148112-LCNI-5          MALAWI       0                    NA                -0.0738900   -0.1252739   -0.0225062
6-12 months    ki1148112-LCNI-5          MALAWI       1                    NA                -0.0552296   -0.1002882   -0.0101711
6-12 months    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.0734095   -0.0785213   -0.0682977
6-12 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0765287   -0.0795613   -0.0734961
6-12 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0527006   -0.0615354   -0.0438658
6-12 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0407274   -0.0458615   -0.0355932
12-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.0170922   -0.0234962   -0.0106882
12-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0196262   -0.0301024   -0.0091499
12-24 months   ki0047075b-MAL-ED         BRAZIL       0                    NA                -0.0003201   -0.0113994    0.0107592
12-24 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                -0.0093475   -0.0420155    0.0233204
12-24 months   ki0047075b-MAL-ED         INDIA        0                    NA                -0.0092797   -0.0145271   -0.0040323
12-24 months   ki0047075b-MAL-ED         INDIA        1                    NA                -0.0378835   -0.0624730   -0.0132940
12-24 months   ki0047075b-MAL-ED         NEPAL        0                    NA                -0.0301234   -0.0354061   -0.0248407
12-24 months   ki0047075b-MAL-ED         NEPAL        1                    NA                -0.0257514   -0.0367365   -0.0147663
12-24 months   ki0047075b-MAL-ED         PERU         0                    NA                -0.0078939   -0.0150648   -0.0007229
12-24 months   ki0047075b-MAL-ED         PERU         1                    NA                -0.0171546   -0.0362494    0.0019403
12-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0068303   -0.0113013   -0.0023593
12-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0123143   -0.0194139   -0.0052147
12-24 months   ki1101329-Keneba          GAMBIA       0                    NA                -0.0185177   -0.0228565   -0.0141789
12-24 months   ki1101329-Keneba          GAMBIA       1                    NA                -0.0131646   -0.0183296   -0.0079995
12-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.0174121   -0.0278068   -0.0070174
12-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0155166   -0.0213858   -0.0096474
12-24 months   ki1148112-LCNI-5          MALAWI       0                    NA                -0.0053185   -0.0263716    0.0157345
12-24 months   ki1148112-LCNI-5          MALAWI       1                    NA                -0.0345407   -0.0639658   -0.0051157
12-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.0161212   -0.0194148   -0.0128277
12-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0207905   -0.0227183   -0.0188627
12-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0099319   -0.0133663   -0.0064974
12-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0165987   -0.0187772   -0.0144202


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
0-3 months     ki0047075b-MAL-ED         BANGLADESH   1                    0                  0.0963102    0.0429964    0.1496240
0-3 months     ki0047075b-MAL-ED         BRAZIL       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         BRAZIL       1                    0                  0.1225061   -0.0973656    0.3423779
0-3 months     ki0047075b-MAL-ED         INDIA        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         INDIA        1                    0                 -0.0596821   -0.3454423    0.2260782
0-3 months     ki0047075b-MAL-ED         NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         NEPAL        1                    0                 -0.0638635   -0.1698771    0.0421501
0-3 months     ki0047075b-MAL-ED         PERU         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         PERU         1                    0                  0.0227222   -0.1001485    0.1455929
0-3 months     ki1000109-EE              PAKISTAN     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE              PAKISTAN     1                    0                 -0.0614875   -0.1410306    0.0180557
0-3 months     ki1000304b-SAS-CompFeed   INDIA        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed   INDIA        1                    0                  0.1085955   -0.0228717    0.2400628
0-3 months     ki1017093b-PROVIDE        BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE        BANGLADESH   1                    0                  0.0002187   -0.0385506    0.0389881
0-3 months     ki1101329-Keneba          GAMBIA       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba          GAMBIA       1                    0                 -0.0090906   -0.0535367    0.0353556
0-3 months     kiGH5241-JiVitA-3         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3         BANGLADESH   1                    0                  0.0402541    0.0313611    0.0491472
0-3 months     kiGH5241-JiVitA-4         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4         BANGLADESH   1                    0                  0.0710078    0.0323070    0.1097086
3-6 months     ki0047075b-MAL-ED         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         BANGLADESH   1                    0                 -0.0260934   -0.0819220    0.0297352
3-6 months     ki0047075b-MAL-ED         BRAZIL       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         BRAZIL       1                    0                  0.0083346   -0.1226542    0.1393234
3-6 months     ki0047075b-MAL-ED         INDIA        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         INDIA        1                    0                 -0.0129864   -0.0967172    0.0707444
3-6 months     ki0047075b-MAL-ED         NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         NEPAL        1                    0                  0.0821694   -0.0001230    0.1644618
3-6 months     ki0047075b-MAL-ED         PERU         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         PERU         1                    0                  0.0602944   -0.0654582    0.1860470
3-6 months     ki1000109-EE              PAKISTAN     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE              PAKISTAN     1                    0                 -0.0173160   -0.0692004    0.0345683
3-6 months     ki1000304b-SAS-CompFeed   INDIA        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed   INDIA        1                    0                 -0.1103990   -0.3187335    0.0979354
3-6 months     ki1017093b-PROVIDE        BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE        BANGLADESH   1                    0                  0.0218200   -0.0069590    0.0505989
3-6 months     ki1101329-Keneba          GAMBIA       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba          GAMBIA       1                    0                 -0.0162562   -0.0520623    0.0195498
3-6 months     ki1113344-GMS-Nepal       NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal       NEPAL        1                    0                  0.0629914    0.0229778    0.1030050
3-6 months     kiGH5241-JiVitA-3         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3         BANGLADESH   1                    0                 -0.0092639   -0.0191047    0.0005770
3-6 months     kiGH5241-JiVitA-4         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4         BANGLADESH   1                    0                 -0.0218101   -0.0492988    0.0056786
6-12 months    ki0047075b-MAL-ED         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         BANGLADESH   1                    0                 -0.0166553   -0.0394413    0.0061308
6-12 months    ki0047075b-MAL-ED         BRAZIL       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         BRAZIL       1                    0                 -0.0443095   -0.1047597    0.0161408
6-12 months    ki0047075b-MAL-ED         INDIA        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         INDIA        1                    0                 -0.0092909   -0.0767709    0.0581891
6-12 months    ki0047075b-MAL-ED         NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         NEPAL        1                    0                 -0.0321300   -0.0646130    0.0003529
6-12 months    ki0047075b-MAL-ED         PERU         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         PERU         1                    0                 -0.0085734   -0.0605694    0.0434225
6-12 months    ki1000304b-SAS-CompFeed   INDIA        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed   INDIA        1                    0                 -0.1428047   -0.1813002   -0.1043092
6-12 months    ki1017093b-PROVIDE        BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE        BANGLADESH   1                    0                 -0.0107838   -0.0276048    0.0060373
6-12 months    ki1101329-Keneba          GAMBIA       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1101329-Keneba          GAMBIA       1                    0                  0.0182656    0.0031075    0.0334238
6-12 months    ki1113344-GMS-Nepal       NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal       NEPAL        1                    0                 -0.0126544   -0.0278302    0.0025215
6-12 months    ki1148112-LCNI-5          MALAWI       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5          MALAWI       1                    0                  0.0186604   -0.0534656    0.0907865
6-12 months    kiGH5241-JiVitA-3         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3         BANGLADESH   1                    0                 -0.0031192   -0.0087592    0.0025208
6-12 months    kiGH5241-JiVitA-4         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4         BANGLADESH   1                    0                  0.0119732    0.0020941    0.0218524
12-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    0                 -0.0025340   -0.0148122    0.0097443
12-24 months   ki0047075b-MAL-ED         BRAZIL       0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         BRAZIL       1                    0                 -0.0090274   -0.0434564    0.0254015
12-24 months   ki0047075b-MAL-ED         INDIA        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         INDIA        1                    0                 -0.0286038   -0.0537470   -0.0034607
12-24 months   ki0047075b-MAL-ED         NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         NEPAL        1                    0                  0.0043720   -0.0076189    0.0163629
12-24 months   ki0047075b-MAL-ED         PERU         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         PERU         1                    0                 -0.0092607   -0.0296577    0.0111362
12-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    0                 -0.0054840   -0.0137811    0.0028132
12-24 months   ki1101329-Keneba          GAMBIA       0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1101329-Keneba          GAMBIA       1                    0                  0.0053531   -0.0009589    0.0116651
12-24 months   ki1113344-GMS-Nepal       NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal       NEPAL        1                    0                  0.0018954   -0.0100408    0.0138317
12-24 months   ki1148112-LCNI-5          MALAWI       0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5          MALAWI       1                    0                 -0.0292222   -0.0654032    0.0069588
12-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    0                 -0.0046693   -0.0082564   -0.0010822
12-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    0                 -0.0066669   -0.0105640   -0.0027698
