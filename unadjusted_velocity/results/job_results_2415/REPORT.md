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

**Outcome Variable:** y_rate_haz

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
##          y_rate_haz
## predexfd6 -0.538705409638554 -0.307788035714286 -0.297482010989011
##         0                  0                  0                  0
##         1                  1                  1                  1
##          y_rate_haz
## predexfd6 0.0187757407407407 0.188103276315789 0.8618065
##         0                  0                 0         0
##         1                  1                 1         1
##          y_rate_haz
## predexfd6 -1.18754562765957 -1.11865863333333 -1.06120486666667
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_haz
## predexfd6 -0.824630533333333 -0.7401397 -0.588710322580645
##         0                  1          1                  1
##         1                  0          0                  0
##          y_rate_haz
## predexfd6 -0.514495244680851 -0.293556523255814 -0.208474011235955
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## predexfd6 0.181205872340426 0.339128724137931 0.418229625
##         0                 1                 1           1
##         1                 0                 0           0
##          y_rate_haz
## predexfd6 0.463009766666667 1.14148065168539
##         0                 1                1
##         1                 0                0
##          y_rate_haz
## predexfd6 -0.314970745901639 -0.131209294117647 -0.101110458791209
##         0                  0                  0                  0
##         1                  1                  1                  1
##          y_rate_haz
## predexfd6 -0.0854955891891892 -0.0720858208092485 -0.0520720679347826
##         0                   0                   0                   0
##         1                   1                   1                   1
##          y_rate_haz
## predexfd6 -0.037917837398374 -0.0336096132596685 -0.0125245235294118
##         0                  0                   0                   0
##         1                  1                   1                   1
##          y_rate_haz
## predexfd6 -0.00760417500000001 -0.00661232608695653 0.0158768489010989
##         0                    0                    0                  0
##         1                    1                    1                  1
##          y_rate_haz
## predexfd6 0.0191666876712329 0.0283333643835616 0.0299313271276596
##         0                  0                  0                  0
##         1                  1                  1                  1
##          y_rate_haz
## predexfd6 -0.110979851351351 -0.0745913623978202 -0.059836131147541
##         0                  1                   1                  1
##         1                  0                   0                  0
##          y_rate_haz
## predexfd6 -0.0550000602739726 -0.0412150406504065 -0.0400000438356164
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## predexfd6 -0.0392743104395604 -0.0342605686813187 -0.0157900901639344
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## predexfd6 -0.00991848913043478 -0.00502755371900826 0.0434524285714286
##         0                    1                    1                  1
##         1                    0                    0                  0
##          y_rate_haz
## predexfd6 0.0466667178082192 0.0661961239669421
##         0                  1                  1
##         1                  0                  0
##          y_rate_haz
## predexfd6 -0.637302285714286 -0.528986086956522 -0.391071857142857
##         0                  0                  0                  0
##         1                  1                  1                  1
##          y_rate_haz
## predexfd6 -0.369620658227848 -0.347108223529412 -0.3070365
##         0                  0                  0          0
##         1                  1                  1          1
##          y_rate_haz
## predexfd6 -0.261725093023256 -0.235484129032258 -0.146450777777778
##         0                  0                  0                  0
##         1                  1                  1                  1
##          y_rate_haz
## predexfd6 -0.0543155357142857 -0.0202778 0.0107353058823529 0.10341678
##         0                   0          0                  0          0
##         1                   1          1                  1          1
##          y_rate_haz
## predexfd6 0.170221899082569 0.200687505154639 0.215451625
##         0                 0                 0           0
##         1                 1                 1           1
##          y_rate_haz
## predexfd6 -0.808954787234042 -0.516756838709677 -0.44480335483871
##         0                  1                  1                 1
##         1                  0                  0                 0
##          y_rate_haz
## predexfd6 -0.429035557894737 -0.358241133333333 -0.336525191489362
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## predexfd6 -0.3143059 -0.283661359550562 -0.260231766666667
##         0          1                  1                  1
##         1          0                  0                  0
##          y_rate_haz
## predexfd6 -0.213266517241379 -0.15525190625 -0.0410112808988764
##         0                  1              1                   1
##         1                  0              0                   0
##          y_rate_haz
## predexfd6 0.0307584606741573 0.262544147368421
##         0                  1                 1
##         1                  0                 0
##          y_rate_haz
## predexfd6 -0.536662465517241 -0.355666174603175 -0.350838126984127
##         0                  0                  0                  0
##         1                  1                  1                  1
##          y_rate_haz
## predexfd6 -0.305793561497326 -0.226864889502762 -0.205312725
##         0                  0                  0            0
##         1                  1                  1            1
##          y_rate_haz
## predexfd6 -0.177697563157895 -0.171707177419355 -0.0998291692307692
##         0                  0                  0                   0
##         1                  1                  1                   1
##          y_rate_haz
## predexfd6 -0.0955498429319372 -0.0900606201117319 0 0.0135940558659218
##         0                   0                   0 0                  0
##         1                   1                   1 1                  1
##          y_rate_haz
## predexfd6 0.0267399560439561 0.052702202970297 0.0715687058823529
##         0                  0                 0                  0
##         1                  1                 1                  1
##          y_rate_haz
## predexfd6 0.204337830769231 0.312343532258064
##         0                 0                 0
##         1                 1                 1
##          y_rate_haz
## predexfd6 -0.210843034090909 -0.114685918032787 -0.0797815081967213
##         0                  1                  1                   1
##         1                  0                  0                   0
##          y_rate_haz
## predexfd6 -0.0565119016393442 -0.0249317213114754 -0.0237895977653631
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## predexfd6 -0.0115090216216216 0.00490591935483868 0.0413270380434783
##         0                   1                   1                  1
##         1                   0                   0                  0
##          y_rate_haz
## predexfd6 0.0584936538461539 0.0805631513513514 0.119928702857143
##         0                  1                  1                 1
##         1                  0                  0                 0
##          y_rate_haz
## predexfd6 0.143727263736264 0.163782230769231
##         0                 1                 1
##         1                 0                 0
##          y_rate_haz
## predexfd6 -0.363677934782609 -0.361620766666667 -0.344840494186046
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## predexfd6 -0.319546230337079 -0.319208225274725 -0.305847480662983
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## predexfd6 -0.304167 -0.289125774725275 -0.284112032967033
##         0         1                  1                  1
##         1         0                  0                  0
##          y_rate_haz
## predexfd6 -0.280769538461538 -0.271516305084746 -0.269070807692308
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## predexfd6 -0.267520373493976 -0.25570082967033 -0.252358335164835
##         0                  1                 2                  1
##         1                  0                 0                  0
##          y_rate_haz
## predexfd6 -0.250687087912088 -0.249015840659341 -0.247344593406593
##         0                  2                  2                  1
##         1                  0                  0                  0
##          y_rate_haz
## predexfd6 -0.244002098901099 -0.243679244318182 -0.23731710989011
##         0                  2                  1                 1
##         1                  0                  0                 0
##          y_rate_haz
## predexfd6 -0.235645862637363 -0.2331947 -0.232303368131868
##         0                  1          1                  1
##         1                  0          0                  0
##          y_rate_haz
## predexfd6 -0.229778331521739 -0.227289626373626 -0.226047606557377
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## predexfd6 -0.225618379120879 -0.223947131868132 -0.223372640625
##         0                  2                  1               1
##         1                  0                  0               0
##          y_rate_haz
## predexfd6 -0.223166005434783 -0.21893339010989 -0.215590895604396
##         0                  1                 2                  1
##         1                  0                 0                  0
##          y_rate_haz
## predexfd6 -0.213919648351648 -0.211740563535912 -0.210577153846154
##         0                  1                  2                  1
##         1                  0                  0                  0
##          y_rate_haz
## predexfd6 -0.210060082872928 -0.208905906593407 -0.206699121546961
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## predexfd6 -0.203892164835165 -0.201675945652174 -0.20054967032967
##         0                  3                  1                 2
##         1                  0                  0                 0
##          y_rate_haz
## predexfd6 -0.199977198895028 -0.197791655737705 -0.197207175824176
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## predexfd6 -0.191642791907514 -0.190522186813187 -0.18885093956044
##         0                  1                  2                 1
##         1                  0                  0                 0
##          y_rate_haz
## predexfd6 -0.187179692307692 -0.183837197802198 -0.182165950549451
##         0                  2                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## predexfd6 -0.180494703296703 -0.178823456043956 -0.177567762162162
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## predexfd6 -0.177152208791209 -0.176879722826087 -0.175480961538462
##         0                  2                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## predexfd6 -0.173809714285714 -0.17046721978022 -0.167873590163934
##         0                  1                 1                  1
##         1                  0                 0                  0
##          y_rate_haz
## predexfd6 -0.167124725274725 -0.166961233695652 -0.165453478021978
##         0                  2                  1                  2
##         1                  0                  0                  0
##          y_rate_haz
## predexfd6 -0.164687104972376 -0.162110983516484 -0.158768489010989
##         0                  1                  1                  2
##         1                  0                  0                  0
##          y_rate_haz
## predexfd6 -0.155501106741573 -0.155425994505494 -0.153754747252747
##         0                  1                  1                  2
##         1                  0                  0                  0
##          y_rate_haz
## predexfd6 -0.152923740331492 -0.1520835 -0.150412252747253
##         0                  1          1                  1
##         1                  0          0                  0
##          y_rate_haz
## predexfd6 -0.147688023121387 -0.147069758241758 -0.146390534759358
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## predexfd6 -0.142056016483516 -0.137042274725275 -0.135788839285714
##         0                  1                  2                  1
##         1                  0                  0                  0
##          y_rate_haz
## predexfd6 -0.135371027472527 -0.132028532967033 -0.128686038461538
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## predexfd6 -0.127014791208791 -0.122001049450549 -0.119976983333333
##         0                  2                  2                  1
##         1                  0                  0                  0
##          y_rate_haz
## predexfd6 -0.114714411428571 -0.108631071428571 -0.10455740625
##         0                  1                  1              1
##         1                  0                  0              0
##          y_rate_haz
## predexfd6 -0.10361732967033 -0.101946082417582 -0.101389
##         0                 1                  1         1
##         1                 0                  0         0
##          y_rate_haz
## predexfd6 -0.100274835164835 -0.0975318097826087 -0.0952610934065935
##         0                  1                   1                   1
##         1                  0                   0                   0
##          y_rate_haz
## predexfd6 -0.0941469285714286 -0.0919185989010989 -0.0852336098901099
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## predexfd6 -0.0823435524861878 -0.0802198681318681 -0.0735348791208792
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## predexfd6 -0.0735348791208791 -0.0718636318681318 -0.0701923846153847
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## predexfd6 -0.0701923846153846 -0.0604973038674034 -0.0601827754010695
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## predexfd6 -0.0568224065934066 -0.0551511593406594 -0.0520949005524862
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## predexfd6 -0.0484661703296703 -0.0422454166666667 -0.0300824505494506
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## predexfd6 -0.0100274835164835 -0.00334249450549451 -0.00173809714285718
##         0                   1                    2                    1
##         1                   0                    0                    0
##          y_rate_haz
## predexfd6 0.00504144198895032 0.0116987307692308 0.0334249450549451
##         0                   1                  1                  1
##         1                   0                  0                  0
##          y_rate_haz
## predexfd6 0.101937048648649 0.105288576923077 0.109103380434783
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_haz
## predexfd6 0.157097241758242 0.500783237569061 0.705542010309278
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_haz
## predexfd6 1.06211828108108 1.12256108287293 1.20490463535912
##         0                1                1                1
##         1                0                0                0
##          y_rate_haz
## predexfd6 1.29397011049724 1.3074139558011 1.31749683977901
##         0                1               1                1
##         1                0               0                0
```




# Results Detail

## Results Plots
![](/tmp/280ac10d-f8e4-4e89-ad64-cbbfdef7cce4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/280ac10d-f8e4-4e89-ad64-cbbfdef7cce4/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.0476565   -0.0950372   -0.0002758
0-3 months     ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0267509   -0.0712627    0.0177609
0-3 months     ki0047075b-MAL-ED         BRAZIL       0                    NA                 0.1899384    0.1331176    0.2467593
0-3 months     ki0047075b-MAL-ED         BRAZIL       1                    NA                 0.2710311    0.1415500    0.4005122
0-3 months     ki0047075b-MAL-ED         INDIA        0                    NA                -0.0197838   -0.0607732    0.0212055
0-3 months     ki0047075b-MAL-ED         INDIA        1                    NA                -0.0518390   -0.1615837    0.0579057
0-3 months     ki0047075b-MAL-ED         NEPAL        0                    NA                 0.0823695    0.0429595    0.1217794
0-3 months     ki0047075b-MAL-ED         NEPAL        1                    NA                 0.0159974   -0.0501167    0.0821114
0-3 months     ki0047075b-MAL-ED         PERU         0                    NA                -0.1691767   -0.2115418   -0.1268117
0-3 months     ki0047075b-MAL-ED         PERU         1                    NA                -0.1254340   -0.1747977   -0.0760704
0-3 months     ki1000109-EE              PAKISTAN     0                    NA                -0.3700656   -0.4267848   -0.3133464
0-3 months     ki1000109-EE              PAKISTAN     1                    NA                -0.4123678   -0.4738081   -0.3509274
0-3 months     ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.1129364   -0.2527497    0.0268769
0-3 months     ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0096915   -0.0260235    0.0454064
0-3 months     ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0413719   -0.0631878   -0.0195560
0-3 months     ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0411532   -0.0732021   -0.0091043
0-3 months     ki1101329-Keneba          GAMBIA       0                    NA                -0.2895392   -0.3202600   -0.2588183
0-3 months     ki1101329-Keneba          GAMBIA       1                    NA                -0.2851488   -0.3281926   -0.2421050
0-3 months     kiGH5241-JiVitA-3         BANGLADESH   0                    NA                 0.0379405    0.0280783    0.0478026
0-3 months     kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0795754    0.0742225    0.0849282
0-3 months     kiGH5241-JiVitA-4         BANGLADESH   0                    NA                 0.0120474   -0.0293004    0.0533952
0-3 months     kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0782100    0.0624297    0.0939903
3-6 months     ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.0071456   -0.0404687    0.0261776
3-6 months     ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0296737   -0.0623525    0.0030051
3-6 months     ki0047075b-MAL-ED         BRAZIL       0                    NA                 0.0686947    0.0289451    0.1084443
3-6 months     ki0047075b-MAL-ED         BRAZIL       1                    NA                 0.0199377   -0.0710783    0.1109537
3-6 months     ki0047075b-MAL-ED         INDIA        0                    NA                -0.0373705   -0.0678959   -0.0068452
3-6 months     ki0047075b-MAL-ED         INDIA        1                    NA                -0.0729375   -0.1514603    0.0055853
3-6 months     ki0047075b-MAL-ED         NEPAL        0                    NA                -0.0186830   -0.0471850    0.0098189
3-6 months     ki0047075b-MAL-ED         NEPAL        1                    NA                -0.0447744   -0.1204223    0.0308736
3-6 months     ki0047075b-MAL-ED         PERU         0                    NA                 0.0238785   -0.0168086    0.0645657
3-6 months     ki0047075b-MAL-ED         PERU         1                    NA                 0.0348852   -0.0131797    0.0829500
3-6 months     ki1000109-EE              PAKISTAN     0                    NA                 0.0821295    0.0349679    0.1292911
3-6 months     ki1000109-EE              PAKISTAN     1                    NA                 0.0614189    0.0268567    0.0959811
3-6 months     ki1000304b-SAS-CompFeed   INDIA        0                    NA                 0.0473330   -0.1273699    0.2220360
3-6 months     ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.0399400   -0.0754314   -0.0044486
3-6 months     ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0341559   -0.0531806   -0.0151312
3-6 months     ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0043205   -0.0366119    0.0279708
3-6 months     ki1101329-Keneba          GAMBIA       0                    NA                -0.0154357   -0.0383759    0.0075046
3-6 months     ki1101329-Keneba          GAMBIA       1                    NA                -0.0223713   -0.0559272    0.0111846
3-6 months     ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.1945556   -0.2322587   -0.1568526
3-6 months     ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.1558065   -0.1771322   -0.1344809
3-6 months     kiGH5241-JiVitA-3         BANGLADESH   0                    NA                 0.0193004    0.0087105    0.0298904
3-6 months     kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0096665   -0.0149856   -0.0043475
3-6 months     kiGH5241-JiVitA-4         BANGLADESH   0                    NA                 0.0234876   -0.0108693    0.0578445
3-6 months     kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0158297   -0.0310111   -0.0006482
6-12 months    ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.0735680   -0.0897543   -0.0573817
6-12 months    ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0878261   -0.1017097   -0.0739425
6-12 months    ki0047075b-MAL-ED         BRAZIL       0                    NA                 0.0067834   -0.0139950    0.0275617
6-12 months    ki0047075b-MAL-ED         BRAZIL       1                    NA                 0.0054963   -0.0478101    0.0588027
6-12 months    ki0047075b-MAL-ED         INDIA        0                    NA                -0.0783925   -0.0912556   -0.0655294
6-12 months    ki0047075b-MAL-ED         INDIA        1                    NA                -0.0669092   -0.1107541   -0.0230643
6-12 months    ki0047075b-MAL-ED         NEPAL        0                    NA                -0.0456478   -0.0569689   -0.0343267
6-12 months    ki0047075b-MAL-ED         NEPAL        1                    NA                -0.0692498   -0.1000452   -0.0384544
6-12 months    ki0047075b-MAL-ED         PERU         0                    NA                -0.0340440   -0.0542077   -0.0138803
6-12 months    ki0047075b-MAL-ED         PERU         1                    NA                -0.0439051   -0.0628151   -0.0249951
6-12 months    ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.0131206   -0.0626063    0.0363650
6-12 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.0896009   -0.0995836   -0.0796182
6-12 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0601818   -0.0680119   -0.0523517
6-12 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0709637   -0.0858533   -0.0560742
6-12 months    ki1101329-Keneba          GAMBIA       0                    NA                -0.0656439   -0.0750679   -0.0562199
6-12 months    ki1101329-Keneba          GAMBIA       1                    NA                -0.0538259   -0.0686597   -0.0389921
6-12 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.0566137   -0.0735763   -0.0396510
6-12 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0642934   -0.0737072   -0.0548795
6-12 months    ki1148112-LCNI-5          MALAWI       0                    NA                -0.0513798   -0.1030379    0.0002783
6-12 months    ki1148112-LCNI-5          MALAWI       1                    NA                 0.0202243   -0.0261296    0.0665782
6-12 months    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.0680510   -0.0742475   -0.0618544
6-12 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0768124   -0.0799062   -0.0737185
6-12 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0346550   -0.0455016   -0.0238083
6-12 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0398458   -0.0451173   -0.0345744
12-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.0159184   -0.0241763   -0.0076605
12-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0193212   -0.0265901   -0.0120524
12-24 months   ki0047075b-MAL-ED         BRAZIL       0                    NA                 0.0026860   -0.0088201    0.0141922
12-24 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                -0.0200019   -0.0459411    0.0059373
12-24 months   ki0047075b-MAL-ED         INDIA        0                    NA                -0.0089242   -0.0143251   -0.0035234
12-24 months   ki0047075b-MAL-ED         INDIA        1                    NA                -0.0219788   -0.0397242   -0.0042334
12-24 months   ki0047075b-MAL-ED         NEPAL        0                    NA                -0.0305307   -0.0359959   -0.0250655
12-24 months   ki0047075b-MAL-ED         NEPAL        1                    NA                -0.0242401   -0.0370368   -0.0114433
12-24 months   ki0047075b-MAL-ED         PERU         0                    NA                -0.0065036   -0.0164331    0.0034259
12-24 months   ki0047075b-MAL-ED         PERU         1                    NA                -0.0106502   -0.0198428   -0.0014577
12-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0068430   -0.0113393   -0.0023467
12-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0122767   -0.0195598   -0.0049936
12-24 months   ki1101329-Keneba          GAMBIA       0                    NA                -0.0196297   -0.0242797   -0.0149797
12-24 months   ki1101329-Keneba          GAMBIA       1                    NA                -0.0205190   -0.0271461   -0.0138920
12-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.0174101   -0.0278073   -0.0070130
12-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0155172   -0.0213866   -0.0096478
12-24 months   ki1148112-LCNI-5          MALAWI       0                    NA                -0.0053185   -0.0263716    0.0157345
12-24 months   ki1148112-LCNI-5          MALAWI       1                    NA                -0.0345407   -0.0639658   -0.0051157
12-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.0119811   -0.0160171   -0.0079450
12-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0209685   -0.0229478   -0.0189892
12-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0074814   -0.0117911   -0.0031717
12-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0164791   -0.0187107   -0.0142476


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
0-3 months     ki0047075b-MAL-ED         BANGLADESH   1                    0                  0.0209056   -0.0441039    0.0859150
0-3 months     ki0047075b-MAL-ED         BRAZIL       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         BRAZIL       1                    0                  0.0810927   -0.0603074    0.2224927
0-3 months     ki0047075b-MAL-ED         INDIA        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         INDIA        1                    0                 -0.0320551   -0.1492047    0.0850944
0-3 months     ki0047075b-MAL-ED         NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         NEPAL        1                    0                 -0.0663721   -0.1433410    0.0105968
0-3 months     ki0047075b-MAL-ED         PERU         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         PERU         1                    0                  0.0437427   -0.0213078    0.1087932
0-3 months     ki1000109-EE              PAKISTAN     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE              PAKISTAN     1                    0                 -0.0423022   -0.1259203    0.0413159
0-3 months     ki1000304b-SAS-CompFeed   INDIA        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed   INDIA        1                    0                  0.1226279   -0.0401773    0.2854331
0-3 months     ki1017093b-PROVIDE        BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE        BANGLADESH   1                    0                  0.0002187   -0.0385506    0.0389881
0-3 months     ki1101329-Keneba          GAMBIA       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba          GAMBIA       1                    0                  0.0043903   -0.0484920    0.0572727
0-3 months     kiGH5241-JiVitA-3         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3         BANGLADESH   1                    0                  0.0416349    0.0310683    0.0522014
0-3 months     kiGH5241-JiVitA-4         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4         BANGLADESH   1                    0                  0.0661626    0.0219979    0.1103273
3-6 months     ki0047075b-MAL-ED         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         BANGLADESH   1                    0                 -0.0225281   -0.0692008    0.0241445
3-6 months     ki0047075b-MAL-ED         BRAZIL       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         BRAZIL       1                    0                 -0.0487570   -0.1480744    0.0505604
3-6 months     ki0047075b-MAL-ED         INDIA        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         INDIA        1                    0                 -0.0355669   -0.1198143    0.0486805
3-6 months     ki0047075b-MAL-ED         NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         NEPAL        1                    0                 -0.0260913   -0.1069305    0.0547478
3-6 months     ki0047075b-MAL-ED         PERU         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         PERU         1                    0                  0.0110066   -0.0519670    0.0739802
3-6 months     ki1000109-EE              PAKISTAN     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE              PAKISTAN     1                    0                 -0.0207106   -0.0791808    0.0377596
3-6 months     ki1000304b-SAS-CompFeed   INDIA        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed   INDIA        1                    0                 -0.0872730   -0.2777247    0.1031787
3-6 months     ki1017093b-PROVIDE        BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE        BANGLADESH   1                    0                  0.0298353   -0.0076436    0.0673143
3-6 months     ki1101329-Keneba          GAMBIA       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba          GAMBIA       1                    0                 -0.0069357   -0.0475835    0.0337122
3-6 months     ki1113344-GMS-Nepal       NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal       NEPAL        1                    0                  0.0387491   -0.0045672    0.0820654
3-6 months     kiGH5241-JiVitA-3         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3         BANGLADESH   1                    0                 -0.0289670   -0.0405624   -0.0173715
3-6 months     kiGH5241-JiVitA-4         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4         BANGLADESH   1                    0                 -0.0393173   -0.0770579   -0.0015767
6-12 months    ki0047075b-MAL-ED         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         BANGLADESH   1                    0                 -0.0142581   -0.0355830    0.0070668
6-12 months    ki0047075b-MAL-ED         BRAZIL       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         BRAZIL       1                    0                 -0.0012871   -0.0584999    0.0559258
6-12 months    ki0047075b-MAL-ED         INDIA        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         INDIA        1                    0                  0.0114833   -0.0342095    0.0571762
6-12 months    ki0047075b-MAL-ED         NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         NEPAL        1                    0                 -0.0236020   -0.0564124    0.0092084
6-12 months    ki0047075b-MAL-ED         PERU         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         PERU         1                    0                 -0.0098611   -0.0375046    0.0177824
6-12 months    ki1000304b-SAS-CompFeed   INDIA        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed   INDIA        1                    0                 -0.0764803   -0.1257902   -0.0271703
6-12 months    ki1017093b-PROVIDE        BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE        BANGLADESH   1                    0                 -0.0107820   -0.0276048    0.0060409
6-12 months    ki1101329-Keneba          GAMBIA       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1101329-Keneba          GAMBIA       1                    0                  0.0118180   -0.0057562    0.0293922
6-12 months    ki1113344-GMS-Nepal       NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal       NEPAL        1                    0                 -0.0076797   -0.0270795    0.0117201
6-12 months    ki1148112-LCNI-5          MALAWI       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5          MALAWI       1                    0                  0.0716041    0.0021977    0.1410105
6-12 months    kiGH5241-JiVitA-3         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3         BANGLADESH   1                    0                 -0.0087614   -0.0155137   -0.0020090
6-12 months    kiGH5241-JiVitA-4         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4         BANGLADESH   1                    0                 -0.0051909   -0.0172397    0.0068580
12-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    0                 -0.0034028   -0.0144041    0.0075985
12-24 months   ki0047075b-MAL-ED         BRAZIL       0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         BRAZIL       1                    0                 -0.0226879   -0.0510645    0.0056887
12-24 months   ki0047075b-MAL-ED         INDIA        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         INDIA        1                    0                 -0.0130545   -0.0316036    0.0054946
12-24 months   ki0047075b-MAL-ED         NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         NEPAL        1                    0                  0.0062906   -0.0076243    0.0202055
12-24 months   ki0047075b-MAL-ED         PERU         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         PERU         1                    0                 -0.0041466   -0.0176779    0.0093847
12-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    0                 -0.0054337   -0.0139929    0.0031256
12-24 months   ki1101329-Keneba          GAMBIA       0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1101329-Keneba          GAMBIA       1                    0                 -0.0008893   -0.0089850    0.0072064
12-24 months   ki1113344-GMS-Nepal       NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal       NEPAL        1                    0                  0.0018929   -0.0100465    0.0138323
12-24 months   ki1148112-LCNI-5          MALAWI       0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5          MALAWI       1                    0                 -0.0292222   -0.0654032    0.0069588
12-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    0                 -0.0089875   -0.0133724   -0.0046026
12-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    0                 -0.0089977   -0.0137574   -0.0042381
