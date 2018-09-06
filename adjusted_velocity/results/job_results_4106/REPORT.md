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
![](/tmp/acd981b3-ae99-45c1-ad42-978ae2dd80b7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/acd981b3-ae99-45c1-ad42-978ae2dd80b7/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH   0                    NA                3.4637874   3.3807840   3.5467907
0-3 months     ki0047075b-MAL-ED         BANGLADESH   1                    NA                3.4987168   3.4162954   3.5811382
0-3 months     ki0047075b-MAL-ED         BRAZIL       0                    NA                4.0457647   3.9347154   4.1568140
0-3 months     ki0047075b-MAL-ED         BRAZIL       1                    NA                4.1957751   3.9513621   4.4401881
0-3 months     ki0047075b-MAL-ED         INDIA        0                    NA                3.5740589   3.4930991   3.6550186
0-3 months     ki0047075b-MAL-ED         INDIA        1                    NA                3.5734828   3.3540801   3.7928855
0-3 months     ki0047075b-MAL-ED         NEPAL        0                    NA                3.8343914   3.7499943   3.9187884
0-3 months     ki0047075b-MAL-ED         NEPAL        1                    NA                3.7039669   3.5600494   3.8478844
0-3 months     ki0047075b-MAL-ED         PERU         0                    NA                3.1888514   3.1057561   3.2719466
0-3 months     ki0047075b-MAL-ED         PERU         1                    NA                3.1559955   3.0632897   3.2487012
0-3 months     ki1000109-EE              PAKISTAN     0                    NA                2.7193892   2.6108394   2.8279390
0-3 months     ki1000109-EE              PAKISTAN     1                    NA                2.6507036   2.5392090   2.7621982
0-3 months     ki1000304b-SAS-CompFeed   INDIA        0                    NA                3.3456184   3.1318401   3.5593967
0-3 months     ki1000304b-SAS-CompFeed   INDIA        1                    NA                3.6148691   3.5481281   3.6816101
0-3 months     ki1017093b-PROVIDE        BANGLADESH   0                    NA                3.4847721   3.4374668   3.5320773
0-3 months     ki1017093b-PROVIDE        BANGLADESH   1                    NA                3.4767940   3.4087650   3.5448230
0-3 months     ki1101329-Keneba          GAMBIA       0                    NA                3.1511264   3.0913995   3.2108532
0-3 months     ki1101329-Keneba          GAMBIA       1                    NA                3.1944134   3.1132795   3.2755473
0-3 months     kiGH5241-JiVitA-3         BANGLADESH   0                    NA                3.6614663   3.6443171   3.6786155
0-3 months     kiGH5241-JiVitA-3         BANGLADESH   1                    NA                3.7409660   3.7299408   3.7519913
0-3 months     kiGH5241-JiVitA-4         BANGLADESH   0                    NA                3.5071899   3.4349798   3.5794001
0-3 months     kiGH5241-JiVitA-4         BANGLADESH   1                    NA                3.6625648   3.6298138   3.6953158
3-6 months     ki0047075b-MAL-ED         BANGLADESH   0                    NA                1.8989869   1.8309545   1.9670193
3-6 months     ki0047075b-MAL-ED         BANGLADESH   1                    NA                1.8537305   1.7874453   1.9200157
3-6 months     ki0047075b-MAL-ED         BRAZIL       0                    NA                2.1647058   2.0784176   2.2509941
3-6 months     ki0047075b-MAL-ED         BRAZIL       1                    NA                2.0643296   1.8678954   2.2607638
3-6 months     ki0047075b-MAL-ED         INDIA        0                    NA                1.8887166   1.8227993   1.9546339
3-6 months     ki0047075b-MAL-ED         INDIA        1                    NA                1.8285799   1.6640753   1.9930844
3-6 months     ki0047075b-MAL-ED         NEPAL        0                    NA                1.9741140   1.9143306   2.0338975
3-6 months     ki0047075b-MAL-ED         NEPAL        1                    NA                1.9161646   1.7698314   2.0624977
3-6 months     ki0047075b-MAL-ED         PERU         0                    NA                1.9224850   1.8358559   2.0091142
3-6 months     ki0047075b-MAL-ED         PERU         1                    NA                1.8673245   1.7652729   1.9693762
3-6 months     ki1000109-EE              PAKISTAN     0                    NA                2.0657787   1.9710287   2.1605287
3-6 months     ki1000109-EE              PAKISTAN     1                    NA                2.0100443   1.9388417   2.0812468
3-6 months     ki1000304b-SAS-CompFeed   INDIA        0                    NA                2.0822845   1.7186172   2.4459519
3-6 months     ki1000304b-SAS-CompFeed   INDIA        1                    NA                1.8962760   1.8165763   1.9759758
3-6 months     ki1017093b-PROVIDE        BANGLADESH   0                    NA                1.9574118   1.9188501   1.9959735
3-6 months     ki1017093b-PROVIDE        BANGLADESH   1                    NA                1.9924491   1.9369157   2.0479825
3-6 months     ki1101329-Keneba          GAMBIA       0                    NA                1.9891367   1.9423038   2.0359697
3-6 months     ki1101329-Keneba          GAMBIA       1                    NA                1.8674428   1.8063621   1.9285234
3-6 months     ki1113344-GMS-Nepal       NEPAL        0                    NA                1.6495045   1.5814397   1.7175694
3-6 months     ki1113344-GMS-Nepal       NEPAL        1                    NA                1.7251972   1.6812632   1.7691312
3-6 months     kiGH5241-JiVitA-3         BANGLADESH   0                    NA                1.9273780   1.9084696   1.9462865
3-6 months     kiGH5241-JiVitA-3         BANGLADESH   1                    NA                1.9088714   1.8976344   1.9201084
3-6 months     kiGH5241-JiVitA-4         BANGLADESH   0                    NA                1.9477285   1.8947343   2.0007227
3-6 months     kiGH5241-JiVitA-4         BANGLADESH   1                    NA                1.8846737   1.8524692   1.9168782
6-12 months    ki0047075b-MAL-ED         BANGLADESH   0                    NA                1.2019484   1.1669241   1.2369727
6-12 months    ki0047075b-MAL-ED         BANGLADESH   1                    NA                1.1574006   1.1258560   1.1889451
6-12 months    ki0047075b-MAL-ED         BRAZIL       0                    NA                1.3839820   1.3348503   1.4331136
6-12 months    ki0047075b-MAL-ED         BRAZIL       1                    NA                1.3978763   1.2707429   1.5250097
6-12 months    ki0047075b-MAL-ED         INDIA        0                    NA                1.1206616   1.0906743   1.1506488
6-12 months    ki0047075b-MAL-ED         INDIA        1                    NA                1.1309622   1.0276008   1.2343237
6-12 months    ki0047075b-MAL-ED         NEPAL        0                    NA                1.2299071   1.2029931   1.2568211
6-12 months    ki0047075b-MAL-ED         NEPAL        1                    NA                1.1749927   1.0965196   1.2534658
6-12 months    ki0047075b-MAL-ED         PERU         0                    NA                1.0500914   1.0044284   1.0957543
6-12 months    ki0047075b-MAL-ED         PERU         1                    NA                0.9498702   0.9059724   0.9937681
6-12 months    ki1000304b-SAS-CompFeed   INDIA        0                    NA                1.2487053   1.1494636   1.3479469
6-12 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                1.0868835   1.0650462   1.1087209
6-12 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                1.1789062   1.1594228   1.1983896
6-12 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                1.1535173   1.1161256   1.1909091
6-12 months    ki1101329-Keneba          GAMBIA       0                    NA                1.1713399   1.1498813   1.1927984
6-12 months    ki1101329-Keneba          GAMBIA       1                    NA                1.2044154   1.1728023   1.2360284
6-12 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                1.2004978   1.1645198   1.2364758
6-12 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                1.1658775   1.1438120   1.1879430
6-12 months    ki1148112-LCNI-5          MALAWI       0                    NA                1.1378962   1.0173031   1.2584893
6-12 months    ki1148112-LCNI-5          MALAWI       1                    NA                1.1953294   1.0927405   1.2979183
6-12 months    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                1.1143001   1.1018555   1.1267448
6-12 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                1.1047940   1.0975597   1.1120283
6-12 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                1.1753572   1.1548454   1.1958690
6-12 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                1.1990692   1.1867645   1.2113740
12-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.8501089   0.8267511   0.8734667
12-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.8418798   0.8197659   0.8639936
12-24 months   ki0047075b-MAL-ED         BRAZIL       0                    NA                0.9930440   0.9594101   1.0266779
12-24 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                0.9280705   0.8554276   1.0007134
12-24 months   ki0047075b-MAL-ED         INDIA        0                    NA                0.8852342   0.8669530   0.9035154
12-24 months   ki0047075b-MAL-ED         INDIA        1                    NA                0.8203625   0.7683619   0.8723630
12-24 months   ki0047075b-MAL-ED         NEPAL        0                    NA                0.8606795   0.8438673   0.8774918
12-24 months   ki0047075b-MAL-ED         NEPAL        1                    NA                0.8641306   0.8291974   0.8990638
12-24 months   ki0047075b-MAL-ED         PERU         0                    NA                0.7850578   0.7552761   0.8148395
12-24 months   ki0047075b-MAL-ED         PERU         1                    NA                0.7316097   0.7014404   0.7617790
12-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.8624795   0.8485190   0.8764400
12-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.8423310   0.8193722   0.8652898
12-24 months   ki1101329-Keneba          GAMBIA       0                    NA                0.8480195   0.8356242   0.8604148
12-24 months   ki1101329-Keneba          GAMBIA       1                    NA                0.8633502   0.8470835   0.8796168
12-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.8364376   0.8101391   0.8627361
12-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.8369052   0.8199048   0.8539057
12-24 months   ki1148112-LCNI-5          MALAWI       0                    NA                0.9052456   0.8493606   0.9611306
12-24 months   ki1148112-LCNI-5          MALAWI       1                    NA                0.8330056   0.7639315   0.9020797
12-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.8068035   0.7973798   0.8162271
12-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.7929156   0.7873255   0.7985057
12-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.8596060   0.8495974   0.8696147
12-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.8447970   0.8384769   0.8511171


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
0-3 months     ki0047075b-MAL-ED         BANGLADESH   1                    0                  0.0349295   -0.0791984    0.1490573
0-3 months     ki0047075b-MAL-ED         BRAZIL       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         BRAZIL       1                    0                  0.1500104   -0.1157839    0.4158048
0-3 months     ki0047075b-MAL-ED         INDIA        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         INDIA        1                    0                 -0.0005761   -0.2334521    0.2323000
0-3 months     ki0047075b-MAL-ED         NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         NEPAL        1                    0                 -0.1304245   -0.2948027    0.0339538
0-3 months     ki0047075b-MAL-ED         PERU         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         PERU         1                    0                 -0.0328559   -0.1603277    0.0946159
0-3 months     ki1000109-EE              PAKISTAN     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE              PAKISTAN     1                    0                 -0.0686856   -0.2225868    0.0852156
0-3 months     ki1000304b-SAS-CompFeed   INDIA        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed   INDIA        1                    0                  0.2692507    0.0223955    0.5161059
0-3 months     ki1017093b-PROVIDE        BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE        BANGLADESH   1                    0                 -0.0079781   -0.0908377    0.0748816
0-3 months     ki1101329-Keneba          GAMBIA       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba          GAMBIA       1                    0                  0.0432870   -0.0566387    0.1432128
0-3 months     kiGH5241-JiVitA-3         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3         BANGLADESH   1                    0                  0.0794997    0.0608259    0.0981735
0-3 months     kiGH5241-JiVitA-4         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4         BANGLADESH   1                    0                  0.1553749    0.0761608    0.2345889
3-6 months     ki0047075b-MAL-ED         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         BANGLADESH   1                    0                 -0.0452564   -0.1408114    0.0502986
3-6 months     ki0047075b-MAL-ED         BRAZIL       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         BRAZIL       1                    0                 -0.1003763   -0.3149271    0.1141746
3-6 months     ki0047075b-MAL-ED         INDIA        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         INDIA        1                    0                 -0.0601367   -0.2373847    0.1171113
3-6 months     ki0047075b-MAL-ED         NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         NEPAL        1                    0                 -0.0579495   -0.2138704    0.0979715
3-6 months     ki0047075b-MAL-ED         PERU         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         PERU         1                    0                 -0.0551605   -0.1907174    0.0803963
3-6 months     ki1000109-EE              PAKISTAN     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE              PAKISTAN     1                    0                 -0.0557344   -0.1742351    0.0627663
3-6 months     ki1000304b-SAS-CompFeed   INDIA        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed   INDIA        1                    0                 -0.1860085   -0.5899412    0.2179242
3-6 months     ki1017093b-PROVIDE        BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE        BANGLADESH   1                    0                  0.0350373   -0.0255680    0.0956425
3-6 months     ki1101329-Keneba          GAMBIA       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba          GAMBIA       1                    0                 -0.1216940   -0.1945959   -0.0487921
3-6 months     ki1113344-GMS-Nepal       NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal       NEPAL        1                    0                  0.0756927   -0.0031375    0.1545228
3-6 months     kiGH5241-JiVitA-3         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3         BANGLADESH   1                    0                 -0.0185066   -0.0396326    0.0026194
3-6 months     kiGH5241-JiVitA-4         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4         BANGLADESH   1                    0                 -0.0630548   -0.1230902   -0.0030195
6-12 months    ki0047075b-MAL-ED         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         BANGLADESH   1                    0                 -0.0445478   -0.0933847    0.0042891
6-12 months    ki0047075b-MAL-ED         BRAZIL       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         BRAZIL       1                    0                  0.0138943   -0.1219853    0.1497739
6-12 months    ki0047075b-MAL-ED         INDIA        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         INDIA        1                    0                  0.0103007   -0.0973243    0.1179257
6-12 months    ki0047075b-MAL-ED         NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         NEPAL        1                    0                 -0.0549144   -0.1373230    0.0274942
6-12 months    ki0047075b-MAL-ED         PERU         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         PERU         1                    0                 -0.1002211   -0.1733738   -0.0270685
6-12 months    ki1000304b-SAS-CompFeed   INDIA        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed   INDIA        1                    0                 -0.1618218   -0.2609927   -0.0626509
6-12 months    ki1017093b-PROVIDE        BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE        BANGLADESH   1                    0                 -0.0253888   -0.0675522    0.0167745
6-12 months    ki1101329-Keneba          GAMBIA       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1101329-Keneba          GAMBIA       1                    0                  0.0330755   -0.0036023    0.0697534
6-12 months    ki1113344-GMS-Nepal       NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal       NEPAL        1                    0                 -0.0346203   -0.0768367    0.0075961
6-12 months    ki1148112-LCNI-5          MALAWI       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5          MALAWI       1                    0                  0.0574332   -0.1034235    0.2182900
6-12 months    kiGH5241-JiVitA-3         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3         BANGLADESH   1                    0                 -0.0095062   -0.0232474    0.0042350
6-12 months    kiGH5241-JiVitA-4         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4         BANGLADESH   1                    0                  0.0237120    0.0006275    0.0467965
12-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    0                 -0.0082292   -0.0403486    0.0238903
12-24 months   ki0047075b-MAL-ED         BRAZIL       0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         BRAZIL       1                    0                 -0.0649735   -0.1450410    0.0150940
12-24 months   ki0047075b-MAL-ED         INDIA        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         INDIA        1                    0                 -0.0648718   -0.1199205   -0.0098230
12-24 months   ki0047075b-MAL-ED         NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         NEPAL        1                    0                  0.0034510   -0.0353172    0.0422193
12-24 months   ki0047075b-MAL-ED         PERU         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         PERU         1                    0                 -0.0534481   -0.0991191   -0.0077772
12-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    0                 -0.0201485   -0.0469734    0.0066764
12-24 months   ki1101329-Keneba          GAMBIA       0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1101329-Keneba          GAMBIA       1                    0                  0.0153307   -0.0041387    0.0348001
12-24 months   ki1113344-GMS-Nepal       NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal       NEPAL        1                    0                  0.0004677   -0.0298316    0.0307669
12-24 months   ki1148112-LCNI-5          MALAWI       0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5          MALAWI       1                    0                 -0.0722400   -0.1610902    0.0166103
12-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    0                 -0.0138879   -0.0243132   -0.0034625
12-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    0                 -0.0148090   -0.0260451   -0.0035729
