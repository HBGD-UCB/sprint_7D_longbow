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

unadjusted

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







# Results Detail

## Results Plots
![](/tmp/2e235909-6efb-465e-bc2a-1f36d167725c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/2e235909-6efb-465e-bc2a-1f36d167725c/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH   0                    NA                3.5338446   3.4646737   3.6030156
0-3 months     ki0047075b-MAL-ED         BANGLADESH   1                    NA                3.6234668   3.4780650   3.7688686
0-3 months     ki0047075b-MAL-ED         BRAZIL       0                    NA                4.0508766   3.9458371   4.1559162
0-3 months     ki0047075b-MAL-ED         BRAZIL       1                    NA                4.3135000   3.8980732   4.7289269
0-3 months     ki0047075b-MAL-ED         INDIA        0                    NA                3.5715005   3.4937661   3.6492348
0-3 months     ki0047075b-MAL-ED         INDIA        1                    NA                3.6269354   3.0523559   4.2015148
0-3 months     ki0047075b-MAL-ED         NEPAL        0                    NA                3.8263417   3.7459117   3.9067717
0-3 months     ki0047075b-MAL-ED         NEPAL        1                    NA                3.6805854   3.4626981   3.8984727
0-3 months     ki0047075b-MAL-ED         PERU         0                    NA                3.3284189   3.2636791   3.3931588
0-3 months     ki0047075b-MAL-ED         PERU         1                    NA                3.4165556   3.1933300   3.6397811
0-3 months     ki1000109-EE              PAKISTAN     0                    NA                2.6873656   2.5712919   2.8034393
0-3 months     ki1000109-EE              PAKISTAN     1                    NA                2.6343660   2.5164888   2.7522433
0-3 months     ki1000304b-SAS-CompFeed   INDIA        0                    NA                3.3596137   3.1002455   3.6189819
0-3 months     ki1000304b-SAS-CompFeed   INDIA        1                    NA                3.6141977   3.5474566   3.6809387
0-3 months     ki1017093b-PROVIDE        BANGLADESH   0                    NA                3.4847721   3.4374668   3.5320773
0-3 months     ki1017093b-PROVIDE        BANGLADESH   1                    NA                3.4767940   3.4087650   3.5448230
0-3 months     ki1101329-Keneba          GAMBIA       0                    NA                3.1389256   3.0784912   3.1993600
0-3 months     ki1101329-Keneba          GAMBIA       1                    NA                3.1394089   3.0546263   3.2241914
0-3 months     kiGH5241-JiVitA-3         BANGLADESH   0                    NA                3.6671738   3.6466879   3.6876597
0-3 months     kiGH5241-JiVitA-3         BANGLADESH   1                    NA                3.7328074   3.7215089   3.7441059
0-3 months     kiGH5241-JiVitA-4         BANGLADESH   0                    NA                3.5184595   3.4342439   3.6026751
0-3 months     kiGH5241-JiVitA-4         BANGLADESH   1                    NA                3.6622672   3.6290525   3.6954818
3-6 months     ki0047075b-MAL-ED         BANGLADESH   0                    NA                1.9500943   1.8960935   2.0040950
3-6 months     ki0047075b-MAL-ED         BANGLADESH   1                    NA                1.8858451   1.7690389   2.0026513
3-6 months     ki0047075b-MAL-ED         BRAZIL       0                    NA                2.1441336   2.0616967   2.2265704
3-6 months     ki0047075b-MAL-ED         BRAZIL       1                    NA                2.1919997   1.9084026   2.4755967
3-6 months     ki0047075b-MAL-ED         INDIA        0                    NA                1.8834410   1.8197467   1.9471353
3-6 months     ki0047075b-MAL-ED         INDIA        1                    NA                1.9010101   1.7754457   2.0265745
3-6 months     ki0047075b-MAL-ED         NEPAL        0                    NA                1.9635402   1.9057250   2.0213554
3-6 months     ki0047075b-MAL-ED         NEPAL        1                    NA                2.0317445   1.7884934   2.2749956
3-6 months     ki0047075b-MAL-ED         PERU         0                    NA                2.0146841   1.9471111   2.0822570
3-6 months     ki0047075b-MAL-ED         PERU         1                    NA                2.1606717   1.8950836   2.4262597
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
3-6 months     kiGH5241-JiVitA-3         BANGLADESH   0                    NA                1.9676477   1.9450898   1.9902056
3-6 months     kiGH5241-JiVitA-3         BANGLADESH   1                    NA                1.9071025   1.8957222   1.9184827
3-6 months     kiGH5241-JiVitA-4         BANGLADESH   0                    NA                1.9622795   1.8874969   2.0370621
3-6 months     kiGH5241-JiVitA-4         BANGLADESH   1                    NA                1.8837935   1.8508148   1.9167721
6-12 months    ki0047075b-MAL-ED         BANGLADESH   0                    NA                1.1232050   1.0934668   1.1529431
6-12 months    ki0047075b-MAL-ED         BANGLADESH   1                    NA                1.0818671   1.0344715   1.1292627
6-12 months    ki0047075b-MAL-ED         BRAZIL       0                    NA                1.3933410   1.3446823   1.4419997
6-12 months    ki0047075b-MAL-ED         BRAZIL       1                    NA                1.3085316   1.1636355   1.4534277
6-12 months    ki0047075b-MAL-ED         INDIA        0                    NA                1.1224035   1.0931958   1.1516113
6-12 months    ki0047075b-MAL-ED         INDIA        1                    NA                1.0804309   0.9154736   1.2453881
6-12 months    ki0047075b-MAL-ED         NEPAL        0                    NA                1.2253164   1.1986320   1.2520008
6-12 months    ki0047075b-MAL-ED         NEPAL        1                    NA                1.1944393   1.0922595   1.2966192
6-12 months    ki0047075b-MAL-ED         PERU         0                    NA                1.2090686   1.1750947   1.2430425
6-12 months    ki0047075b-MAL-ED         PERU         1                    NA                1.1867466   1.0787172   1.2947759
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
6-12 months    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                1.1179013   1.1036725   1.1321301
6-12 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                1.1037088   1.0963330   1.1110846
6-12 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                1.2068642   1.1818756   1.2318527
6-12 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                1.2007741   1.1880760   1.2134723
12-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.8501083   0.8315622   0.8686545
12-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.8327096   0.8005790   0.8648401
12-24 months   ki0047075b-MAL-ED         BRAZIL       0                    NA                0.9844778   0.9523150   1.0166406
12-24 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                0.9530910   0.8495373   1.0566447
12-24 months   ki0047075b-MAL-ED         INDIA        0                    NA                0.8833266   0.8657023   0.9009510
12-24 months   ki0047075b-MAL-ED         INDIA        1                    NA                0.7474174   0.6764712   0.8183635
12-24 months   ki0047075b-MAL-ED         NEPAL        0                    NA                0.8599941   0.8438501   0.8761380
12-24 months   ki0047075b-MAL-ED         NEPAL        1                    NA                0.8776662   0.8352509   0.9200815
12-24 months   ki0047075b-MAL-ED         PERU         0                    NA                0.8508447   0.8298478   0.8718416
12-24 months   ki0047075b-MAL-ED         PERU         1                    NA                0.8228320   0.7719296   0.8737344
12-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.8625137   0.8485391   0.8764884
12-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.8422234   0.8191835   0.8652633
12-24 months   ki1101329-Keneba          GAMBIA       0                    NA                0.8455084   0.8323942   0.8586225
12-24 months   ki1101329-Keneba          GAMBIA       1                    NA                0.8461294   0.8271025   0.8651563
12-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.8332675   0.8007698   0.8657651
12-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.8373310   0.8195603   0.8551018
12-24 months   ki1148112-LCNI-5          MALAWI       0                    NA                0.9052456   0.8493606   0.9611306
12-24 months   ki1148112-LCNI-5          MALAWI       1                    NA                0.8330056   0.7639315   0.9020797
12-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.8076213   0.7963243   0.8189183
12-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.7929212   0.7871819   0.7986605
12-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.8617027   0.8500482   0.8733572
12-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.8454807   0.8390026   0.8519587


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
0-3 months     ki0047075b-MAL-ED         BANGLADESH   1                    0                  0.0896222   -0.0713943    0.2506387
0-3 months     ki0047075b-MAL-ED         BRAZIL       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         BRAZIL       1                    0                  0.2626234   -0.1658772    0.6911241
0-3 months     ki0047075b-MAL-ED         INDIA        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         INDIA        1                    0                  0.0554349   -0.5243790    0.6352487
0-3 months     ki0047075b-MAL-ED         NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         NEPAL        1                    0                 -0.1457563   -0.3780145    0.0865018
0-3 months     ki0047075b-MAL-ED         PERU         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         PERU         1                    0                  0.0881366   -0.1442873    0.3205606
0-3 months     ki1000109-EE              PAKISTAN     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE              PAKISTAN     1                    0                 -0.0529996   -0.2184328    0.1124337
0-3 months     ki1000304b-SAS-CompFeed   INDIA        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed   INDIA        1                    0                  0.2545840   -0.0371162    0.5462842
0-3 months     ki1017093b-PROVIDE        BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE        BANGLADESH   1                    0                 -0.0079781   -0.0908377    0.0748816
0-3 months     ki1101329-Keneba          GAMBIA       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba          GAMBIA       1                    0                  0.0004833   -0.1036340    0.1046005
0-3 months     kiGH5241-JiVitA-3         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3         BANGLADESH   1                    0                  0.0656337    0.0434198    0.0878475
0-3 months     kiGH5241-JiVitA-4         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4         BANGLADESH   1                    0                  0.1438076    0.0533144    0.2343008
3-6 months     ki0047075b-MAL-ED         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         BANGLADESH   1                    0                 -0.0642491   -0.1929339    0.0644357
3-6 months     ki0047075b-MAL-ED         BRAZIL       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         BRAZIL       1                    0                  0.0478661   -0.2474695    0.3432017
3-6 months     ki0047075b-MAL-ED         INDIA        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         INDIA        1                    0                  0.0175691   -0.1232264    0.1583646
3-6 months     ki0047075b-MAL-ED         NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         NEPAL        1                    0                  0.0682043   -0.1818232    0.3182317
3-6 months     ki0047075b-MAL-ED         PERU         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         PERU         1                    0                  0.1459876   -0.1280619    0.4200371
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
3-6 months     kiGH5241-JiVitA-3         BANGLADESH   1                    0                 -0.0605452   -0.0851315   -0.0359590
3-6 months     kiGH5241-JiVitA-4         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4         BANGLADESH   1                    0                 -0.0784860   -0.1604067    0.0034346
6-12 months    ki0047075b-MAL-ED         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         BANGLADESH   1                    0                 -0.0413378   -0.0972905    0.0146148
6-12 months    ki0047075b-MAL-ED         BRAZIL       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         BRAZIL       1                    0                 -0.0848094   -0.2376575    0.0680387
6-12 months    ki0047075b-MAL-ED         INDIA        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         INDIA        1                    0                 -0.0419727   -0.2094958    0.1255505
6-12 months    ki0047075b-MAL-ED         NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         NEPAL        1                    0                 -0.0308771   -0.1364838    0.0747296
6-12 months    ki0047075b-MAL-ED         PERU         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         PERU         1                    0                 -0.0223221   -0.1355677    0.0909235
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
6-12 months    kiGH5241-JiVitA-3         BANGLADESH   1                    0                 -0.0141926   -0.0297379    0.0013528
6-12 months    kiGH5241-JiVitA-4         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4         BANGLADESH   1                    0                 -0.0060901   -0.0339397    0.0217595
12-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    0                 -0.0173988   -0.0544978    0.0197002
12-24 months   ki0047075b-MAL-ED         BRAZIL       0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         BRAZIL       1                    0                 -0.0313868   -0.1398203    0.0770467
12-24 months   ki0047075b-MAL-ED         INDIA        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         INDIA        1                    0                 -0.1359093   -0.2090118   -0.0628068
12-24 months   ki0047075b-MAL-ED         NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         NEPAL        1                    0                  0.0176721   -0.0277116    0.0630559
12-24 months   ki0047075b-MAL-ED         PERU         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         PERU         1                    0                 -0.0280126   -0.0830756    0.0270503
12-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    0                 -0.0202903   -0.0472370    0.0066564
12-24 months   ki1101329-Keneba          GAMBIA       0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1101329-Keneba          GAMBIA       1                    0                  0.0006210   -0.0224876    0.0237296
12-24 months   ki1113344-GMS-Nepal       NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal       NEPAL        1                    0                  0.0040636   -0.0329756    0.0411027
12-24 months   ki1148112-LCNI-5          MALAWI       0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5          MALAWI       1                    0                 -0.0722400   -0.1610902    0.0166103
12-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    0                 -0.0147001   -0.0269822   -0.0024180
12-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    0                 -0.0162220   -0.0291380   -0.0033061
