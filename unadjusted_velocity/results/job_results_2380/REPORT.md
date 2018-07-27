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
      W: []
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

unadjusted

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
![](/tmp/29516989-1d0a-4d23-b5b7-d05ad57d16f9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/29516989-1d0a-4d23-b5b7-d05ad57d16f9/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH   0                    NA                3.5486159   3.4583033   3.6389286
0-3 months     ki0047075b-MAL-ED         BANGLADESH   1                    NA                3.5616501   3.4729604   3.6503398
0-3 months     ki0047075b-MAL-ED         BRAZIL       0                    NA                4.0478427   3.9361684   4.1595169
0-3 months     ki0047075b-MAL-ED         BRAZIL       1                    NA                4.1842288   3.9325809   4.4358766
0-3 months     ki0047075b-MAL-ED         INDIA        0                    NA                3.5738245   3.4925243   3.6551246
0-3 months     ki0047075b-MAL-ED         INDIA        1                    NA                3.5624008   3.3271436   3.7976581
0-3 months     ki0047075b-MAL-ED         NEPAL        0                    NA                3.8359664   3.7507357   3.9211971
0-3 months     ki0047075b-MAL-ED         NEPAL        1                    NA                3.6938626   3.5473218   3.8404035
0-3 months     ki0047075b-MAL-ED         PERU         0                    NA                3.3030980   3.2194181   3.3867778
0-3 months     ki0047075b-MAL-ED         PERU         1                    NA                3.3717477   3.2771598   3.4663356
0-3 months     ki1000109-EE              PAKISTAN     0                    NA                2.6873656   2.5712919   2.8034393
0-3 months     ki1000109-EE              PAKISTAN     1                    NA                2.6343660   2.5164888   2.7522433
0-3 months     ki1000304b-SAS-CompFeed   INDIA        0                    NA                3.3596137   3.1002455   3.6189819
0-3 months     ki1000304b-SAS-CompFeed   INDIA        1                    NA                3.6141977   3.5474566   3.6809387
0-3 months     ki1017093b-PROVIDE        BANGLADESH   0                    NA                3.4847721   3.4374668   3.5320773
0-3 months     ki1017093b-PROVIDE        BANGLADESH   1                    NA                3.4767940   3.4087650   3.5448230
0-3 months     ki1101329-Keneba          GAMBIA       0                    NA                3.1389256   3.0784912   3.1993600
0-3 months     ki1101329-Keneba          GAMBIA       1                    NA                3.1394089   3.0546263   3.2241914
0-3 months     kiGH5241-JiVitA-3         BANGLADESH   0                    NA                3.6660172   3.6454716   3.6865627
0-3 months     kiGH5241-JiVitA-3         BANGLADESH   1                    NA                3.7330057   3.7217202   3.7442912
0-3 months     kiGH5241-JiVitA-4         BANGLADESH   0                    NA                3.5201919   3.4352389   3.6051449
0-3 months     kiGH5241-JiVitA-4         BANGLADESH   1                    NA                3.6616461   3.6285286   3.6947636
3-6 months     ki0047075b-MAL-ED         BANGLADESH   0                    NA                1.9617396   1.8900932   2.0333859
3-6 months     ki0047075b-MAL-ED         BANGLADESH   1                    NA                1.9091421   1.8398451   1.9784392
3-6 months     ki0047075b-MAL-ED         BRAZIL       0                    NA                2.1647058   2.0784176   2.2509941
3-6 months     ki0047075b-MAL-ED         BRAZIL       1                    NA                2.0643296   1.8678954   2.2607638
3-6 months     ki0047075b-MAL-ED         INDIA        0                    NA                1.8886636   1.8227391   1.9545881
3-6 months     ki0047075b-MAL-ED         INDIA        1                    NA                1.8292377   1.6653601   1.9931152
3-6 months     ki0047075b-MAL-ED         NEPAL        0                    NA                1.9751011   1.9149170   2.0352853
3-6 months     ki0047075b-MAL-ED         NEPAL        1                    NA                1.9086018   1.7518709   2.0653327
3-6 months     ki0047075b-MAL-ED         PERU         0                    NA                2.0110077   1.9247047   2.0973107
3-6 months     ki0047075b-MAL-ED         PERU         1                    NA                2.0342187   1.9326186   2.1358188
3-6 months     ki1000109-EE              PAKISTAN     0                    NA                2.0488775   1.9477119   2.1500432
3-6 months     ki1000109-EE              PAKISTAN     1                    NA                2.0061968   1.9321154   2.0802783
3-6 months     ki1000304b-SAS-CompFeed   INDIA        0                    NA                2.0877888   1.7145949   2.4609828
3-6 months     ki1000304b-SAS-CompFeed   INDIA        1                    NA                1.8960011   1.8158961   1.9761060
3-6 months     ki1017093b-PROVIDE        BANGLADESH   0                    NA                1.9532486   1.9126705   1.9938268
3-6 months     ki1017093b-PROVIDE        BANGLADESH   1                    NA                2.0058873   1.9370576   2.0747170
3-6 months     ki1101329-Keneba          GAMBIA       0                    NA                2.0002572   1.9514258   2.0490886
3-6 months     ki1101329-Keneba          GAMBIA       1                    NA                1.9752466   1.9031953   2.0472978
3-6 months     ki1113344-GMS-Nepal       NEPAL        0                    NA                1.6532466   1.5763967   1.7300966
3-6 months     ki1113344-GMS-Nepal       NEPAL        1                    NA                1.7241137   1.6784916   1.7697358
3-6 months     kiGH5241-JiVitA-3         BANGLADESH   0                    NA                1.9676017   1.9449187   1.9902847
3-6 months     kiGH5241-JiVitA-3         BANGLADESH   1                    NA                1.9072371   1.8958156   1.9186585
3-6 months     kiGH5241-JiVitA-4         BANGLADESH   0                    NA                1.9602485   1.8849639   2.0355331
3-6 months     kiGH5241-JiVitA-4         BANGLADESH   1                    NA                1.8843296   1.8513594   1.9172998
6-12 months    ki0047075b-MAL-ED         BANGLADESH   0                    NA                1.1290419   1.0911299   1.1669539
6-12 months    ki0047075b-MAL-ED         BANGLADESH   1                    NA                1.0986966   1.0648160   1.1325772
6-12 months    ki0047075b-MAL-ED         BRAZIL       0                    NA                1.3840529   1.3348618   1.4332440
6-12 months    ki0047075b-MAL-ED         BRAZIL       1                    NA                1.3975359   1.2687654   1.5263065
6-12 months    ki0047075b-MAL-ED         INDIA        0                    NA                1.1206680   1.0906806   1.1506554
6-12 months    ki0047075b-MAL-ED         INDIA        1                    NA                1.1308845   1.0275468   1.2342221
6-12 months    ki0047075b-MAL-ED         NEPAL        0                    NA                1.2301848   1.2031396   1.2572300
6-12 months    ki0047075b-MAL-ED         NEPAL        1                    NA                1.1728832   1.0912162   1.2545503
6-12 months    ki0047075b-MAL-ED         PERU         0                    NA                1.2123065   1.1656887   1.2589242
6-12 months    ki0047075b-MAL-ED         PERU         1                    NA                1.2025628   1.1576524   1.2474732
6-12 months    ki1000304b-SAS-CompFeed   INDIA        0                    NA                1.2529335   1.1354314   1.3704355
6-12 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                1.0868479   1.0648417   1.1088542
6-12 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                1.1789062   1.1594228   1.1983896
6-12 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                1.1535173   1.1161256   1.1909091
6-12 months    ki1101329-Keneba          GAMBIA       0                    NA                1.1698003   1.1475138   1.1920868
6-12 months    ki1101329-Keneba          GAMBIA       1                    NA                1.1987659   1.1635676   1.2339642
6-12 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                1.1742718   1.1338503   1.2146932
6-12 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                1.1631189   1.1406876   1.1855502
6-12 months    ki1148112-LCNI-5          MALAWI       0                    NA                1.1850352   1.0606518   1.3094187
6-12 months    ki1148112-LCNI-5          MALAWI       1                    NA                1.3658051   1.2577692   1.4738411
6-12 months    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                1.1167923   1.1023320   1.1312526
6-12 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                1.1040320   1.0966585   1.1114054
6-12 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                1.2068697   1.1815296   1.2322099
6-12 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                1.2007972   1.1881466   1.2134478
12-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.8501160   0.8267171   0.8735149
12-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.8418855   0.8197364   0.8640347
12-24 months   ki0047075b-MAL-ED         BRAZIL       0                    NA                0.9930220   0.9593832   1.0266608
12-24 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                0.9281741   0.8556645   1.0006838
12-24 months   ki0047075b-MAL-ED         INDIA        0                    NA                0.8851639   0.8668487   0.9034791
12-24 months   ki0047075b-MAL-ED         INDIA        1                    NA                0.8211981   0.7700568   0.8723395
12-24 months   ki0047075b-MAL-ED         NEPAL        0                    NA                0.8606795   0.8438673   0.8774918
12-24 months   ki0047075b-MAL-ED         NEPAL        1                    NA                0.8641306   0.8291974   0.8990638
12-24 months   ki0047075b-MAL-ED         PERU         0                    NA                0.8483564   0.8200204   0.8766924
12-24 months   ki0047075b-MAL-ED         PERU         1                    NA                0.8518272   0.8234288   0.8802256
12-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.8625137   0.8485391   0.8764884
12-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.8422234   0.8191835   0.8652633
12-24 months   ki1101329-Keneba          GAMBIA       0                    NA                0.8455084   0.8323942   0.8586225
12-24 months   ki1101329-Keneba          GAMBIA       1                    NA                0.8461294   0.8271025   0.8651563
12-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.8332675   0.8007698   0.8657651
12-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.8373310   0.8195603   0.8551018
12-24 months   ki1148112-LCNI-5          MALAWI       0                    NA                0.9052456   0.8493606   0.9611306
12-24 months   ki1148112-LCNI-5          MALAWI       1                    NA                0.8330056   0.7639315   0.9020797
12-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.8075967   0.7962702   0.8189233
12-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.7929484   0.7872193   0.7986776
12-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.8615346   0.8497795   0.8732896
12-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.8456038   0.8391329   0.8520746


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
0-3 months     ki0047075b-MAL-ED         BANGLADESH   1                    0                  0.0130341   -0.1135448    0.1396131
0-3 months     ki0047075b-MAL-ED         BRAZIL       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         BRAZIL       1                    0                  0.1363861   -0.1389279    0.4117001
0-3 months     ki0047075b-MAL-ED         INDIA        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         INDIA        1                    0                 -0.0114236   -0.2603326    0.2374853
0-3 months     ki0047075b-MAL-ED         NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         NEPAL        1                    0                 -0.1421038   -0.3116281    0.0274205
0-3 months     ki0047075b-MAL-ED         PERU         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         PERU         1                    0                  0.0686497   -0.0576404    0.1949398
0-3 months     ki1000109-EE              PAKISTAN     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE              PAKISTAN     1                    0                 -0.0529996   -0.2184328    0.1124337
0-3 months     ki1000304b-SAS-CompFeed   INDIA        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed   INDIA        1                    0                  0.2545840   -0.0371162    0.5462842
0-3 months     ki1017093b-PROVIDE        BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE        BANGLADESH   1                    0                 -0.0079781   -0.0908377    0.0748816
0-3 months     ki1101329-Keneba          GAMBIA       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba          GAMBIA       1                    0                  0.0004833   -0.1036340    0.1046005
0-3 months     kiGH5241-JiVitA-3         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3         BANGLADESH   1                    0                  0.0669885    0.0447410    0.0892361
0-3 months     kiGH5241-JiVitA-4         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4         BANGLADESH   1                    0                  0.1414542    0.0503892    0.2325193
3-6 months     ki0047075b-MAL-ED         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         BANGLADESH   1                    0                 -0.0525974   -0.1522733    0.0470785
3-6 months     ki0047075b-MAL-ED         BRAZIL       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         BRAZIL       1                    0                 -0.1003763   -0.3149271    0.1141746
3-6 months     ki0047075b-MAL-ED         INDIA        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         INDIA        1                    0                 -0.0594259   -0.2360665    0.1172146
3-6 months     ki0047075b-MAL-ED         NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         NEPAL        1                    0                 -0.0664993   -0.2343883    0.1013897
3-6 months     ki0047075b-MAL-ED         PERU         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         PERU         1                    0                  0.0232109   -0.1100962    0.1565181
3-6 months     ki1000109-EE              PAKISTAN     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE              PAKISTAN     1                    0                 -0.0426807   -0.1680703    0.0827089
3-6 months     ki1000304b-SAS-CompFeed   INDIA        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed   INDIA        1                    0                 -0.1917877   -0.6059407    0.2223652
3-6 months     ki1017093b-PROVIDE        BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE        BANGLADESH   1                    0                  0.0526387   -0.0272620    0.1325393
3-6 months     ki1101329-Keneba          GAMBIA       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba          GAMBIA       1                    0                 -0.0250106   -0.1120502    0.0620290
3-6 months     ki1113344-GMS-Nepal       NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal       NEPAL        1                    0                  0.0708670   -0.0185046    0.1602387
3-6 months     kiGH5241-JiVitA-3         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3         BANGLADESH   1                    0                 -0.0603646   -0.0851624   -0.0355668
3-6 months     kiGH5241-JiVitA-4         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4         BANGLADESH   1                    0                 -0.0759189   -0.1583398    0.0065020
6-12 months    ki0047075b-MAL-ED         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         BANGLADESH   1                    0                 -0.0303453   -0.0811903    0.0204998
6-12 months    ki0047075b-MAL-ED         BRAZIL       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         BRAZIL       1                    0                  0.0134830   -0.1243634    0.1513293
6-12 months    ki0047075b-MAL-ED         INDIA        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         INDIA        1                    0                  0.0102165   -0.0973843    0.1178172
6-12 months    ki0047075b-MAL-ED         NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         NEPAL        1                    0                 -0.0573016   -0.1433304    0.0287272
6-12 months    ki0047075b-MAL-ED         PERU         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         PERU         1                    0                 -0.0097437   -0.0744751    0.0549877
6-12 months    ki1000304b-SAS-CompFeed   INDIA        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed   INDIA        1                    0                 -0.1660855   -0.2830222   -0.0491489
6-12 months    ki1017093b-PROVIDE        BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE        BANGLADESH   1                    0                 -0.0253888   -0.0675522    0.0167745
6-12 months    ki1101329-Keneba          GAMBIA       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1101329-Keneba          GAMBIA       1                    0                  0.0289656   -0.0126950    0.0706262
6-12 months    ki1113344-GMS-Nepal       NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal       NEPAL        1                    0                 -0.0111529   -0.0573811    0.0350754
6-12 months    ki1148112-LCNI-5          MALAWI       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5          MALAWI       1                    0                  0.1807699    0.0160186    0.3455212
6-12 months    kiGH5241-JiVitA-3         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3         BANGLADESH   1                    0                 -0.0127603   -0.0285625    0.0030419
6-12 months    kiGH5241-JiVitA-4         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4         BANGLADESH   1                    0                 -0.0060725   -0.0342140    0.0220690
12-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    0                 -0.0082305   -0.0404499    0.0239890
12-24 months   ki0047075b-MAL-ED         BRAZIL       0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         BRAZIL       1                    0                 -0.0648478   -0.1447804    0.0150848
12-24 months   ki0047075b-MAL-ED         INDIA        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         INDIA        1                    0                 -0.0639658   -0.1182878   -0.0096437
12-24 months   ki0047075b-MAL-ED         NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         NEPAL        1                    0                  0.0034510   -0.0353172    0.0422193
12-24 months   ki0047075b-MAL-ED         PERU         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         PERU         1                    0                  0.0034708   -0.0366465    0.0435881
12-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    0                 -0.0202903   -0.0472370    0.0066564
12-24 months   ki1101329-Keneba          GAMBIA       0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1101329-Keneba          GAMBIA       1                    0                  0.0006210   -0.0224876    0.0237296
12-24 months   ki1113344-GMS-Nepal       NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal       NEPAL        1                    0                  0.0040636   -0.0329756    0.0411027
12-24 months   ki1148112-LCNI-5          MALAWI       0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5          MALAWI       1                    0                 -0.0722400   -0.1610902    0.0166103
12-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    0                 -0.0146483   -0.0269410   -0.0023556
12-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    0                 -0.0159308   -0.0289442   -0.0029174
