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
        value: FALSE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
  output_directory:
    value: ''

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
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0               467     634
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1               167     634
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0              4338   20039
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1             15701   20039
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0               293    1805
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1              1512    1805
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0               148     175
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                27     175
0-3 months     ki1101329-Keneba           GAMBIA                         0               816    1207
0-3 months     ki1101329-Keneba           GAMBIA                         1               391    1207
0-3 months     ki0047075b-MAL-ED          INDIA                          0               178     193
0-3 months     ki0047075b-MAL-ED          INDIA                          1                15     193
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                 6       6
0-3 months     ki1000108-IRC              INDIA                          0                14      14
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          0                19     398
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1               379     398
0-3 months     ki0047075b-MAL-ED          NEPAL                          0               150     173
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                23     173
0-3 months     ki1000109-EE               PAKISTAN                       0               130     297
0-3 months     ki1000109-EE               PAKISTAN                       1               167     297
0-3 months     ki0047075b-MAL-ED          PERU                           0               150     258
0-3 months     ki0047075b-MAL-ED          PERU                           1               108     258
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0               206     209
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                 3     209
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               223     224
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1     224
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0               108     225
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1               117     225
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0               441     574
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1               133     574
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0              2670   12578
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1              9908   12578
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0               289    1823
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1              1534    1823
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0               173     208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                35     208
3-6 months     ki1101329-Keneba           GAMBIA                         0               954    1331
3-6 months     ki1101329-Keneba           GAMBIA                         1               377    1331
3-6 months     ki0047075b-MAL-ED          INDIA                          0               207     225
3-6 months     ki0047075b-MAL-ED          INDIA                          1                18     225
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                16      16
3-6 months     ki1000108-IRC              INDIA                          0                14      14
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          0                18     379
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1               361     379
3-6 months     ki0047075b-MAL-ED          NEPAL                          0               205     232
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                27     232
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0               127     466
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1               339     466
3-6 months     ki1000109-EE               PAKISTAN                       0               139     331
3-6 months     ki1000109-EE               PAKISTAN                       1               192     331
3-6 months     ki0047075b-MAL-ED          PERU                           0               153     264
3-6 months     ki0047075b-MAL-ED          PERU                           1               111     264
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0               230     233
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                 3     233
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               234     236
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 2     236
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     0               102     214
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1               112     214
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0               422     545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1               123     545
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     0              2061    9792
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1              7731    9792
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0               587    2823
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1              2236    2823
6-12 months    ki0047075b-MAL-ED          BRAZIL                         0               161     194
6-12 months    ki0047075b-MAL-ED          BRAZIL                         1                33     194
6-12 months    ki1101329-Keneba           GAMBIA                         0               865    1232
6-12 months    ki1101329-Keneba           GAMBIA                         1               367    1232
6-12 months    ki0047075b-MAL-ED          INDIA                          0               204     221
6-12 months    ki0047075b-MAL-ED          INDIA                          1                17     221
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                18      18
6-12 months    ki1000108-IRC              INDIA                          0                14      14
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          0                15     347
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          1               332     347
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0               150     150
6-12 months    ki1148112-LCNI-5           MALAWI                         0                27      40
6-12 months    ki1148112-LCNI-5           MALAWI                         1                13      40
6-12 months    ki0047075b-MAL-ED          NEPAL                          0               202     229
6-12 months    ki0047075b-MAL-ED          NEPAL                          1                27     229
6-12 months    ki1113344-GMS-Nepal        NEPAL                          0               120     469
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1               349     469
6-12 months    ki1000109-EE               PAKISTAN                       0                 3       4
6-12 months    ki1000109-EE               PAKISTAN                       1                 1       4
6-12 months    ki0047075b-MAL-ED          PERU                           0               134     235
6-12 months    ki0047075b-MAL-ED          PERU                           1               101     235
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               221     224
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 3     224
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               218     220
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 2     220
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                95     203
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1               108     203
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0               346     458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1               112     458
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0              1017    4629
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              3612    4629
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               691    3216
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1              2525    3216
12-24 months   ki0047075b-MAL-ED          BRAZIL                         0               136     165
12-24 months   ki0047075b-MAL-ED          BRAZIL                         1                29     165
12-24 months   ki1101329-Keneba           GAMBIA                         0               766    1119
12-24 months   ki1101329-Keneba           GAMBIA                         1               353    1119
12-24 months   ki0047075b-MAL-ED          INDIA                          0               205     222
12-24 months   ki0047075b-MAL-ED          INDIA                          1                17     222
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                15      15
12-24 months   ki1000108-IRC              INDIA                          0                14      14
12-24 months   ki1148112-LCNI-5           MALAWI                         0                21      30
12-24 months   ki1148112-LCNI-5           MALAWI                         1                 9      30
12-24 months   ki0047075b-MAL-ED          NEPAL                          0               198     225
12-24 months   ki0047075b-MAL-ED          NEPAL                          1                27     225
12-24 months   ki1113344-GMS-Nepal        NEPAL                          0                87     357
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1               270     357
12-24 months   ki0047075b-MAL-ED          PERU                           0               110     189
12-24 months   ki0047075b-MAL-ED          PERU                           1                79     189
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               216     219
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 3     219
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               203     205
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 2     205


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
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
##          y_rate_len
## predexfd6 2.56526385542169 2.87454527472528 3.25893214285714
##         0                0                0                0
##         1                1                1                1
##          y_rate_len
## predexfd6 3.75514814814815 4.40241710526316 5.61260535714286
##         0                0                0                0
##         1                1                1                1
##          y_rate_len
## predexfd6 1.26196946808511 1.45324233333333 1.520835 1.79120566666667
##         0                1                1        1                1
##         1                0                0        0                0
##          y_rate_len
## predexfd6 2.39953966666667 2.6491964516129 2.71808808510638
##         0                1               1                1
##         1                0               0                0
##          y_rate_len
## predexfd6 3.18314302325581 3.45178280898876 4.10949031914894 4.461116
##         0                1                1                1        1
##         1                0                0                0        0
##          y_rate_len
## predexfd6 4.54502413793103 4.66619829545455 6.15169213483146
##         0                1                1                1
##         1                0                0                0
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
##          y_rate_len
## predexfd6 0 0.51972512605042 0.60011327027027 0.668498901098901
##         0 0                0                0                 0
##         1 1                1                1                 1
##          y_rate_len
## predexfd6 0.720858208092486 0.741870731707317 0.743886684782609
##         0                 0                 0                 0
##         1                 1                 1                 1
##          y_rate_len
## predexfd6 0.756216298342541 0.858824470588235 0.884398614130435
##         0                 0                 0                 0
##         1                 1                 1                 1
##          y_rate_len
## predexfd6 0.919185989010989 0.920950083333334 0.941667698630137
##         0                 0                 0                 0
##         1                 1                 1                 1
##          y_rate_len
## predexfd6 0.94647710106383 1.00000109589041
##         0                0                0
##         1                1                1
##          y_rate_len
## predexfd6 0.547003324250681 0.60011327027027 0.700000767123288
##         0                 1                1                 1
##         1                 0                0                 0
##          y_rate_len
## predexfd6 0.716667452054794 0.733627723577236 0.747951639344262
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_len
## predexfd6 0.777129972527472 0.793842445054945 0.872610245901639
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_len
## predexfd6 0.909194836956522 0.988752231404958 1.02781706043956
##         0                 1                 1                1
##         1                 0                 0                0
##          y_rate_len
## predexfd6 1.08092404958678 1.11666789041096
##         0                1                1
##         1                0                0
##          y_rate_len
## predexfd6 0.724207142857143 0.727355869565218 1.11656240506329
##         0                 0                 0                0
##         1                 1                 1                1
##          y_rate_len
## predexfd6 1.15873142857143 1.25245235294118 1.26258 1.43906967741935
##         0                0                0       0                0
##         1                1                1       1                1
##          y_rate_len
## predexfd6 1.66230802325581 1.81051785714286 1.87757407407407
##         0                0                0                0
##         1                1                1                1
##          y_rate_len
## predexfd6 1.91190685714286 2.14706117647059 2.15451625 2.25773443298969
##         0                0                0          0                0
##         1                1                1          1                1
##          y_rate_len
## predexfd6 2.433336 2.51147064220183
##         0        0                0
##         1        1                1
##          y_rate_len
## predexfd6 0.420656489361701 0.883065483870969 0.981183870967742
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_len
## predexfd6 1.02456252631579 1.216668 1.318057 1.36704269662921
##         0                1        1        1                1
##         1                0        0        0                0
##          y_rate_len
## predexfd6 1.39140223404255 1.45324233333333 1.5732775862069 1.6792553125
##         0                1                1               1            1
##         1                0                0               0            0
##          y_rate_len
## predexfd6 1.74297943820225 2.05056404494382 2.56140631578947
##         0                1                1                1
##         1                0                0                0
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
##          y_rate_len
## predexfd6 0.157327758620691 0.450617777777777 0.563272222222222
##         0                 0                 0                 0
##         1                 1                 1                 1
##          y_rate_len
## predexfd6 0.650624598930481 0.705801878453039 0.8820843 0.883065483870969
##         0                 0                 0         0                 0
##         1                 1                 1         1                 1
##          y_rate_len
## predexfd6 0.960527368421053 1.01389 1.01955418994413 1.03512329842932
##         0                 0       0                0                0
##         1                 1       1                1                1
##          y_rate_len
## predexfd6 1.25343543956044 1.29143530726257 1.35980541176471
##         0                0                0                0
##         1                1                2                1
##          y_rate_len
## predexfd6 1.43048836633663 1.79380538461538 2.12589838709677
##         0                0                0                0
##         1                1                1                1
##          y_rate_len
## predexfd6 0.794981931818182 1.06375344262295 1.16348032786885
##         0                 1                2                2
##         1                 0                0                0
##          y_rate_len
## predexfd6 1.22346502793296 1.29189209677419 1.31531675675676
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## predexfd6 1.38858847826087 1.42056016483516 1.43040697297297
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## predexfd6 1.56428742857143 1.67124725274725 1.7046721978022
##         0                1                1               1
##         1                0                0               0
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
##          y_rate_len
## predexfd6 0.422454166666667 0.429801195652173 0.477471453488373
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_len
## predexfd6 0.512641011235954 0.568224065934067 0.584936538461538
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_len
## predexfd6 0.588168232044199 0.601460169491525 0.60164901098901
##         0                 1                 1                1
##         1                 0                 0                0
##          y_rate_len
## predexfd6 0.618361483516484 0.622159772727273 0.635073956043956
##         0                 2                 1                 1
##         1                 0                 0                 0
##          y_rate_len
## predexfd6 0.64822475409836 0.651786428571428 0.65178642857143
##         0                1                 1                1
##         1                0                 0                0
##          y_rate_len
## predexfd6 0.659639277108433 0.668498901098901 0.685211373626373
##         0                 1                 3                 1
##         1                 0                 0                 0
##          y_rate_len
## predexfd6 0.685211373626374 0.701923846153847 0.705801878453039
##         0                 1                 3                 1
##         1                 0                 0                 0
##          y_rate_len
## predexfd6 0.718636318681318 0.73534879120879 0.735348791208792
##         0                 4                1                 5
##         1                 0                0                 0
##          y_rate_len
## predexfd6 0.74388668478261 0.752061263736264 0.75621629834254
##         0                1                 1                1
##         1                0                 0                0
##          y_rate_len
## predexfd6 0.756216298342541 0.756216298342543 0.7604175 0.768773736263735
##         0                 1                 2         2                 2
##         1                 0                 0         0                 0
##          y_rate_len
## predexfd6 0.768773736263736 0.768773736263738 0.776948315217391
##         0                 1                 2                 1
##         1                 0                 0                 0
##          y_rate_len
## predexfd6 0.785486208791208 0.791185838150289 0.797815081967214
##         0                 2                 1                 1
##         1                 0                 0                 0
##          y_rate_len
## predexfd6 0.802198681318681 0.802198681318682 0.810009945652175
##         0                 1                 2                 1
##         1                 0                 0                 0
##          y_rate_len
## predexfd6 0.822072972972973 0.826349653179191 0.832838214285714
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_len
## predexfd6 0.835623626373626 0.835623626373628 0.843071576086956
##         0                 4                 2                 1
##         1                 0                 0                 0
##          y_rate_len
## predexfd6 0.847678524590164 0.852336098901098 0.8523360989011
##         0                 1                 3               2
##         1                 0                 0               0
##          y_rate_len
## predexfd6 0.869048571428571 0.869048571428572 0.871489719101122
##         0                 1                 4                 1
##         1                 0                 0                 0
##          y_rate_len
## predexfd6 0.876133206521739 0.885761043956043 0.902473516483515
##         0                 1                 4                 1
##         1                 0                 0                 0
##          y_rate_len
## predexfd6 0.902473516483516 0.902473516483517 0.919185989010988
##         0                 3                 1                 2
##         1                 0                 0                 0
##          y_rate_len
## predexfd6 0.919185989010989 0.924264364640884 0.935898461538461
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_len
## predexfd6 0.935898461538462 0.952610934065935 0.955953428571429
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_len
## predexfd6 0.957873977900552 0.95967128342246 0.963195499999999
##         0                 1                1                 1
##         1                 0                0                 0
##          y_rate_len
## predexfd6 0.969323406593408 0.986035879120878 0.98603587912088
##         0                 1                 1                2
##         1                 0                 0                0
##          y_rate_len
## predexfd6 0.995784821428571 0.997268852459016 1.01946082417582
##         0                 1                 1                2
##         1                 0                 0                0
##          y_rate_len
## predexfd6 1.01946082417583 1.0361732967033 1.04144135869565
##         0                1               2                1
##         1                0               0                0
##          y_rate_len
## predexfd6 1.04189801104972 1.0455740625 1.05288576923077 1.06959824175824
##         0                1            1                3                2
##         1                0            0                0                0
##          y_rate_len
## predexfd6 1.08631071428571 1.09838083333333 1.10911723756906
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## predexfd6 1.11973565934066 1.12232743315508 1.1259220441989
##         0                4                1               1
##         1                0                0               0
##          y_rate_len
## predexfd6 1.13644813186813 1.15953165745856 1.19928702857143
##         0                2                1                1
##         1                0                0                0
##          y_rate_len
## predexfd6 1.20329802197802 1.22001049450549 1.2200104945055
##         0                1                1               1
##         1                0                0               0
##          y_rate_len
## predexfd6 1.23672296703297 1.25343543956044 1.38858847826087
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## predexfd6 1.40384769230769 1.44684843243243 1.50412252747253
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## predexfd6 2.52072099447514 2.91624030927835 4.0939234054054
##         0                1                1               1
##         1                0                0               0
##          y_rate_len
## predexfd6 4.15078723756906 4.2180064640884 4.35244491712707
##         0                1               1                2
##         1                0               0                0
##          y_rate_len
## predexfd6 4.63812662983425
##         0                1
##         1                0
```




# Results Detail

## Results Plots
![](/tmp/8191e5bd-0df0-48a6-9526-9b487ef49b0f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/8191e5bd-0df0-48a6-9526-9b487ef49b0f/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH   0                    NA                3.4751960   3.3981509   3.5522410
0-3 months     ki0047075b-MAL-ED         BANGLADESH   1                    NA                3.5061804   3.4289068   3.5834539
0-3 months     ki0047075b-MAL-ED         BRAZIL       0                    NA                4.0479223   3.9363354   4.1595093
0-3 months     ki0047075b-MAL-ED         BRAZIL       1                    NA                4.1839197   3.9332251   4.4346142
0-3 months     ki0047075b-MAL-ED         INDIA        0                    NA                3.5746836   3.4935020   3.6558653
0-3 months     ki0047075b-MAL-ED         INDIA        1                    NA                3.5518694   3.3200521   3.7836867
0-3 months     ki0047075b-MAL-ED         NEPAL        0                    NA                3.7990927   3.7149241   3.8832613
0-3 months     ki0047075b-MAL-ED         NEPAL        1                    NA                2.9202728   2.8193458   3.0211997
0-3 months     ki0047075b-MAL-ED         PERU         0                    NA                3.4031162   3.3192549   3.4869774
0-3 months     ki0047075b-MAL-ED         PERU         1                    NA                3.5659126   3.4720365   3.6597886
0-3 months     ki1000109-EE              PAKISTAN     0                    NA                2.7458633   2.6314840   2.8602426
0-3 months     ki1000109-EE              PAKISTAN     1                    NA                2.6689783   2.5524272   2.7855295
0-3 months     ki1000304b-SAS-CompFeed   INDIA        0                    NA                3.3923688   3.1740751   3.6106624
0-3 months     ki1000304b-SAS-CompFeed   INDIA        1                    NA                3.6134441   3.5479026   3.6789856
0-3 months     ki1017093b-PROVIDE        BANGLADESH   0                    NA                3.4847708   3.4374715   3.5320700
0-3 months     ki1017093b-PROVIDE        BANGLADESH   1                    NA                3.4767976   3.4087934   3.5448018
0-3 months     ki1101329-Keneba          GAMBIA       0                    NA                3.1398091   3.0820153   3.1976029
0-3 months     ki1101329-Keneba          GAMBIA       1                    NA                3.1503479   3.0775369   3.2231590
0-3 months     kiGH5241-JiVitA-3         BANGLADESH   0                    NA                3.6671156   3.6498846   3.6843466
0-3 months     kiGH5241-JiVitA-3         BANGLADESH   1                    NA                3.7410748   3.7300343   3.7521154
0-3 months     kiGH5241-JiVitA-4         BANGLADESH   0                    NA                3.4868164   3.4150952   3.5585376
0-3 months     kiGH5241-JiVitA-4         BANGLADESH   1                    NA                3.6613085   3.6285215   3.6940954
3-6 months     ki0047075b-MAL-ED         BANGLADESH   0                    NA                1.9815537   1.9241637   2.0389437
3-6 months     ki0047075b-MAL-ED         BANGLADESH   1                    NA                1.9352217   1.8779253   1.9925181
3-6 months     ki0047075b-MAL-ED         BRAZIL       0                    NA                2.1618227   2.0780342   2.2456112
3-6 months     ki0047075b-MAL-ED         BRAZIL       1                    NA                2.0743502   1.9051743   2.2435262
3-6 months     ki0047075b-MAL-ED         INDIA        0                    NA                1.8818388   1.8162399   1.9474378
3-6 months     ki0047075b-MAL-ED         INDIA        1                    NA                0.8591314   0.7646951   0.9535676
3-6 months     ki0047075b-MAL-ED         NEPAL        0                    NA                1.9730098   1.9131274   2.0328923
3-6 months     ki0047075b-MAL-ED         NEPAL        1                    NA                1.7702821   1.6505025   1.8900617
3-6 months     ki0047075b-MAL-ED         PERU         0                    NA                2.1417075   2.0624195   2.2209956
3-6 months     ki0047075b-MAL-ED         PERU         1                    NA                2.2720157   2.1877213   2.3563102
3-6 months     ki1000109-EE              PAKISTAN     0                    NA                1.9860294   1.8897231   2.0823358
3-6 months     ki1000109-EE              PAKISTAN     1                    NA                1.9641000   1.8927475   2.0354525
3-6 months     ki1000304b-SAS-CompFeed   INDIA        0                    NA                2.0840877   1.7237847   2.4443906
3-6 months     ki1000304b-SAS-CompFeed   INDIA        1                    NA                1.8961670   1.8164854   1.9758487
3-6 months     ki1017093b-PROVIDE        BANGLADESH   0                    NA                1.9537531   1.9133260   1.9941802
3-6 months     ki1017093b-PROVIDE        BANGLADESH   1                    NA                2.0042171   1.9365588   2.0718754
3-6 months     ki1101329-Keneba          GAMBIA       0                    NA                1.9907879   1.9438896   2.0376862
3-6 months     ki1101329-Keneba          GAMBIA       1                    NA                1.8705121   1.8082562   1.9327679
3-6 months     ki1113344-GMS-Nepal       NEPAL        0                    NA                1.5949400   1.5221958   1.6676843
3-6 months     ki1113344-GMS-Nepal       NEPAL        1                    NA                1.7167518   1.6716197   1.7618839
3-6 months     kiGH5241-JiVitA-3         BANGLADESH   0                    NA                1.9248963   1.9056422   1.9441505
3-6 months     kiGH5241-JiVitA-3         BANGLADESH   1                    NA                1.9089187   1.8976710   1.9201663
3-6 months     kiGH5241-JiVitA-4         BANGLADESH   0                    NA                1.9645669   1.9064874   2.0226465
3-6 months     kiGH5241-JiVitA-4         BANGLADESH   1                    NA                1.8874426   1.8551085   1.9197766
6-12 months    ki0047075b-MAL-ED         BANGLADESH   0                    NA                1.1286563   1.0934046   1.1639080
6-12 months    ki0047075b-MAL-ED         BANGLADESH   1                    NA                1.0987005   1.0668570   1.1305440
6-12 months    ki0047075b-MAL-ED         BRAZIL       0                    NA                1.3840529   1.3348618   1.4332440
6-12 months    ki0047075b-MAL-ED         BRAZIL       1                    NA                1.3975359   1.2687654   1.5263065
6-12 months    ki0047075b-MAL-ED         INDIA        0                    NA                1.1184597   1.0895691   1.1473503
6-12 months    ki0047075b-MAL-ED         INDIA        1                    NA                0.8870157   0.8639569   0.9100745
6-12 months    ki0047075b-MAL-ED         NEPAL        0                    NA                1.2316492   1.2050142   1.2582842
6-12 months    ki0047075b-MAL-ED         NEPAL        1                    NA                1.3056714   1.2452552   1.3660876
6-12 months    ki0047075b-MAL-ED         PERU         0                    NA                1.0280481   0.9805755   1.0755207
6-12 months    ki0047075b-MAL-ED         PERU         1                    NA                0.9247751   0.8793351   0.9702151
6-12 months    ki1000304b-SAS-CompFeed   INDIA        0                    NA                1.2458270   1.1285382   1.3631157
6-12 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                1.0871712   1.0648156   1.1095267
6-12 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                1.1789062   1.1594228   1.1983896
6-12 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                1.1535173   1.1161256   1.1909091
6-12 months    ki1101329-Keneba          GAMBIA       0                    NA                1.1719235   1.1504778   1.1933692
6-12 months    ki1101329-Keneba          GAMBIA       1                    NA                1.2045570   1.1734205   1.2356935
6-12 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                1.1966168   1.1598873   1.2333463
6-12 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                1.1653097   1.1431093   1.1875100
6-12 months    ki1148112-LCNI-5          MALAWI       0                    NA                1.2088490   1.0886158   1.3290822
6-12 months    ki1148112-LCNI-5          MALAWI       1                    NA                1.4469555   1.3483154   1.5455955
6-12 months    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                1.1133395   1.1007829   1.1258961
6-12 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                1.1049728   1.0977346   1.1122110
6-12 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                1.1816981   1.1608201   1.2025762
6-12 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                1.1995535   1.1873495   1.2117576
12-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.8081655   0.7885045   0.8278265
12-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.8081223   0.7888404   0.8274042
12-24 months   ki0047075b-MAL-ED         BRAZIL       0                    NA                0.9944691   0.9609652   1.0279730
12-24 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                0.9211661   0.8494028   0.9929293
12-24 months   ki0047075b-MAL-ED         INDIA        0                    NA                0.8851343   0.8668416   0.9034270
12-24 months   ki0047075b-MAL-ED         INDIA        1                    NA                0.8215971   0.7706074   0.8725868
12-24 months   ki0047075b-MAL-ED         NEPAL        0                    NA                0.8606795   0.8438673   0.8774918
12-24 months   ki0047075b-MAL-ED         NEPAL        1                    NA                0.8641306   0.8291974   0.8990638
12-24 months   ki0047075b-MAL-ED         PERU         0                    NA                0.7990099   0.7725636   0.8254562
12-24 months   ki0047075b-MAL-ED         PERU         1                    NA                0.7588197   0.7334230   0.7842163
12-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.8622624   0.8484086   0.8761161
12-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.8429800   0.8206290   0.8653311
12-24 months   ki1101329-Keneba          GAMBIA       0                    NA                0.8495330   0.8370385   0.8620274
12-24 months   ki1101329-Keneba          GAMBIA       1                    NA                0.8657450   0.8484002   0.8830898
12-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.8333981   0.8011159   0.8656803
12-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.8372889   0.8195555   0.8550224
12-24 months   ki1148112-LCNI-5          MALAWI       0                    NA                0.9007712   0.8516823   0.9498601
12-24 months   ki1148112-LCNI-5          MALAWI       1                    NA                0.8429746   0.7895404   0.8964088
12-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.8061733   0.7965530   0.8157936
12-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.7929237   0.7873037   0.7985438
12-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.8660205   0.8561026   0.8759384
12-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.8455553   0.8392385   0.8518721


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
0-3 months     ki0047075b-MAL-ED         BANGLADESH   1                    0                  0.0309844   -0.0784106    0.1403795
0-3 months     ki0047075b-MAL-ED         BRAZIL       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         BRAZIL       1                    0                  0.1359973   -0.1380965    0.4100912
0-3 months     ki0047075b-MAL-ED         INDIA        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         INDIA        1                    0                 -0.0228142   -0.2676714    0.2220429
0-3 months     ki0047075b-MAL-ED         NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         NEPAL        1                    0                 -0.8788200   -1.0127820   -0.7448580
0-3 months     ki0047075b-MAL-ED         PERU         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         PERU         1                    0                  0.1627964    0.0352828    0.2903101
0-3 months     ki1000109-EE              PAKISTAN     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE              PAKISTAN     1                    0                 -0.0768850   -0.2403783    0.0866084
0-3 months     ki1000304b-SAS-CompFeed   INDIA        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed   INDIA        1                    0                  0.2210753   -0.0283103    0.4704610
0-3 months     ki1017093b-PROVIDE        BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE        BANGLADESH   1                    0                 -0.0079732   -0.0907922    0.0748458
0-3 months     ki1101329-Keneba          GAMBIA       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba          GAMBIA       1                    0                  0.0105388   -0.0789659    0.1000435
0-3 months     kiGH5241-JiVitA-3         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3         BANGLADESH   1                    0                  0.0739592    0.0552548    0.0926637
0-3 months     kiGH5241-JiVitA-4         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4         BANGLADESH   1                    0                  0.1744921    0.0956800    0.2533042
3-6 months     ki0047075b-MAL-ED         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         BANGLADESH   1                    0                 -0.0463320   -0.1153025    0.0226386
3-6 months     ki0047075b-MAL-ED         BRAZIL       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         BRAZIL       1                    0                 -0.0874724   -0.2662161    0.0912712
3-6 months     ki0047075b-MAL-ED         INDIA        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         INDIA        1                    0                 -1.0227075   -1.1384598   -0.9069551
3-6 months     ki0047075b-MAL-ED         NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         NEPAL        1                    0                 -0.2027278   -0.3366430   -0.0688125
3-6 months     ki0047075b-MAL-ED         PERU         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         PERU         1                    0                  0.1303082    0.0124907    0.2481258
3-6 months     ki1000109-EE              PAKISTAN     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE              PAKISTAN     1                    0                 -0.0219295   -0.1413923    0.0975334
3-6 months     ki1000304b-SAS-CompFeed   INDIA        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed   INDIA        1                    0                 -0.1879207   -0.5881987    0.2123574
3-6 months     ki1017093b-PROVIDE        BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE        BANGLADESH   1                    0                  0.0504641   -0.0277867    0.1287149
3-6 months     ki1101329-Keneba          GAMBIA       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba          GAMBIA       1                    0                 -0.1202758   -0.1938575   -0.0466941
3-6 months     ki1113344-GMS-Nepal       NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal       NEPAL        1                    0                  0.1218117    0.0367545    0.2068690
3-6 months     kiGH5241-JiVitA-3         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3         BANGLADESH   1                    0                 -0.0159777   -0.0372844    0.0053291
3-6 months     kiGH5241-JiVitA-4         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4         BANGLADESH   1                    0                 -0.0771244   -0.1415204   -0.0127283
6-12 months    ki0047075b-MAL-ED         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         BANGLADESH   1                    0                 -0.0299558   -0.0749065    0.0149949
6-12 months    ki0047075b-MAL-ED         BRAZIL       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         BRAZIL       1                    0                  0.0134830   -0.1243634    0.1513293
6-12 months    ki0047075b-MAL-ED         INDIA        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         INDIA        1                    0                 -0.2314440   -0.2543681   -0.2085199
6-12 months    ki0047075b-MAL-ED         NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         NEPAL        1                    0                  0.0740221    0.0097313    0.1383130
6-12 months    ki0047075b-MAL-ED         PERU         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         PERU         1                    0                 -0.1032730   -0.1808438   -0.0257022
6-12 months    ki1000304b-SAS-CompFeed   INDIA        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed   INDIA        1                    0                 -0.1586558   -0.2769607   -0.0403510
6-12 months    ki1017093b-PROVIDE        BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE        BANGLADESH   1                    0                 -0.0253888   -0.0675522    0.0167745
6-12 months    ki1101329-Keneba          GAMBIA       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1101329-Keneba          GAMBIA       1                    0                  0.0326335   -0.0036390    0.0689060
6-12 months    ki1113344-GMS-Nepal       NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal       NEPAL        1                    0                 -0.0313071   -0.0742171    0.0116029
6-12 months    ki1148112-LCNI-5          MALAWI       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5          MALAWI       1                    0                  0.2381064    0.0831381    0.3930748
6-12 months    kiGH5241-JiVitA-3         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3         BANGLADESH   1                    0                 -0.0083667   -0.0221869    0.0054535
6-12 months    kiGH5241-JiVitA-4         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4         BANGLADESH   1                    0                  0.0178554   -0.0053852    0.0410960
12-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    0                 -0.0000432   -0.0264751    0.0263887
12-24 months   ki0047075b-MAL-ED         BRAZIL       0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         BRAZIL       1                    0                 -0.0733031   -0.1520601    0.0054540
12-24 months   ki0047075b-MAL-ED         INDIA        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         INDIA        1                    0                 -0.0635372   -0.1176124   -0.0094620
12-24 months   ki0047075b-MAL-ED         NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         NEPAL        1                    0                  0.0034510   -0.0353172    0.0422193
12-24 months   ki0047075b-MAL-ED         PERU         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         PERU         1                    0                 -0.0401902   -0.0778866   -0.0024938
12-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    0                 -0.0192823   -0.0452114    0.0066468
12-24 months   ki1101329-Keneba          GAMBIA       0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1101329-Keneba          GAMBIA       1                    0                  0.0162120   -0.0040132    0.0364373
12-24 months   ki1113344-GMS-Nepal       NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal       NEPAL        1                    0                  0.0038908   -0.0328244    0.0406060
12-24 months   ki1148112-LCNI-5          MALAWI       0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5          MALAWI       1                    0                 -0.0577966   -0.1202201    0.0046270
12-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    0                 -0.0132496   -0.0238303   -0.0026688
12-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    0                 -0.0204653   -0.0315979   -0.0093326
