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
![](/tmp/1730248b-d789-43cc-97c2-474920875e78/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/1730248b-d789-43cc-97c2-474920875e78/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.0500162   -0.0862398   -0.0137926
0-3 months     ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0049730   -0.0656971    0.0756431
0-3 months     ki0047075b-MAL-ED         BRAZIL       0                    NA                 0.1933803    0.1400858    0.2466749
0-3 months     ki0047075b-MAL-ED         BRAZIL       1                    NA                 0.3256446    0.1004583    0.5508309
0-3 months     ki0047075b-MAL-ED         INDIA        0                    NA                -0.0207290   -0.0597904    0.0183323
0-3 months     ki0047075b-MAL-ED         INDIA        1                    NA                -0.0804111   -0.3634891    0.2026669
0-3 months     ki0047075b-MAL-ED         NEPAL        0                    NA                 0.0776736    0.0405123    0.1148349
0-3 months     ki0047075b-MAL-ED         NEPAL        1                    NA                 0.0127490   -0.0863241    0.1118221
0-3 months     ki0047075b-MAL-ED         PERU         0                    NA                -0.1518438   -0.1850496   -0.1186380
0-3 months     ki0047075b-MAL-ED         PERU         1                    NA                -0.1266115   -0.2461663   -0.0070566
0-3 months     ki1000109-EE              PAKISTAN     0                    NA                -0.3700656   -0.4267848   -0.3133464
0-3 months     ki1000109-EE              PAKISTAN     1                    NA                -0.4123678   -0.4738081   -0.3509274
0-3 months     ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.1129364   -0.2527497    0.0268769
0-3 months     ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0096915   -0.0260235    0.0454064
0-3 months     ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0413719   -0.0631878   -0.0195560
0-3 months     ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0411532   -0.0732021   -0.0091043
0-3 months     ki1101329-Keneba          GAMBIA       0                    NA                -0.2895392   -0.3202600   -0.2588183
0-3 months     ki1101329-Keneba          GAMBIA       1                    NA                -0.2851488   -0.3281926   -0.2421050
0-3 months     kiGH5241-JiVitA-3         BANGLADESH   0                    NA                 0.0385131    0.0286909    0.0483354
0-3 months     kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0794928    0.0741367    0.0848489
0-3 months     kiGH5241-JiVitA-4         BANGLADESH   0                    NA                 0.0108158   -0.0301937    0.0518252
0-3 months     kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0785831    0.0627697    0.0943965
3-6 months     ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.0124417   -0.0377715    0.0128881
3-6 months     ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0386991   -0.0933288    0.0159306
3-6 months     ki0047075b-MAL-ED         BRAZIL       0                    NA                 0.0595082    0.0215218    0.0974946
3-6 months     ki0047075b-MAL-ED         BRAZIL       1                    NA                 0.0722768   -0.0603187    0.2048723
3-6 months     ki0047075b-MAL-ED         INDIA        0                    NA                -0.0398696   -0.0693845   -0.0103547
3-6 months     ki0047075b-MAL-ED         INDIA        1                    NA                -0.0528560   -0.1312123    0.0255003
3-6 months     ki0047075b-MAL-ED         NEPAL        0                    NA                -0.0241242   -0.0515937    0.0033452
3-6 months     ki0047075b-MAL-ED         NEPAL        1                    NA                 0.0187907   -0.0925962    0.1301776
3-6 months     ki0047075b-MAL-ED         PERU         0                    NA                 0.0259617   -0.0059815    0.0579049
3-6 months     ki0047075b-MAL-ED         PERU         1                    NA                 0.0870332   -0.0343359    0.2084023
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
3-6 months     kiGH5241-JiVitA-3         BANGLADESH   0                    NA                 0.0192876    0.0087686    0.0298066
3-6 months     kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0097216   -0.0150273   -0.0044160
3-6 months     kiGH5241-JiVitA-4         BANGLADESH   0                    NA                 0.0243191   -0.0097872    0.0584254
3-6 months     kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0160653   -0.0312545   -0.0008761
6-12 months    ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.0769864   -0.0895890   -0.0643839
6-12 months    ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0936280   -0.1126202   -0.0746358
6-12 months    ki0047075b-MAL-ED         BRAZIL       0                    NA                 0.0103745   -0.0100760    0.0308250
6-12 months    ki0047075b-MAL-ED         BRAZIL       1                    NA                -0.0358230   -0.0955692    0.0239233
6-12 months    ki0047075b-MAL-ED         INDIA        0                    NA                -0.0772990   -0.0898398   -0.0647581
6-12 months    ki0047075b-MAL-ED         INDIA        1                    NA                -0.0865899   -0.1528943   -0.0202855
6-12 months    ki0047075b-MAL-ED         NEPAL        0                    NA                -0.0473735   -0.0583993   -0.0363477
6-12 months    ki0047075b-MAL-ED         NEPAL        1                    NA                -0.0646641   -0.1061664   -0.0231618
6-12 months    ki0047075b-MAL-ED         PERU         0                    NA                -0.0380224   -0.0525356   -0.0235091
6-12 months    ki0047075b-MAL-ED         PERU         1                    NA                -0.0441279   -0.0993604    0.0111046
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
6-12 months    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.0676306   -0.0737240   -0.0615372
6-12 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0769425   -0.0800387   -0.0738463
6-12 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0346969   -0.0453845   -0.0240092
6-12 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0398556   -0.0451490   -0.0345622
12-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.0170921   -0.0234962   -0.0106881
12-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0196264   -0.0301031   -0.0091497
12-24 months   ki0047075b-MAL-ED         BRAZIL       0                    NA                -0.0002832   -0.0113629    0.0107965
12-24 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                -0.0114854   -0.0475975    0.0246267
12-24 months   ki0047075b-MAL-ED         INDIA        0                    NA                -0.0092797   -0.0145271   -0.0040323
12-24 months   ki0047075b-MAL-ED         INDIA        1                    NA                -0.0378835   -0.0624730   -0.0132940
12-24 months   ki0047075b-MAL-ED         NEPAL        0                    NA                -0.0299361   -0.0352410   -0.0246312
12-24 months   ki0047075b-MAL-ED         NEPAL        1                    NA                -0.0273603   -0.0417743   -0.0129463
12-24 months   ki0047075b-MAL-ED         PERU         0                    NA                -0.0078939   -0.0150648   -0.0007229
12-24 months   ki0047075b-MAL-ED         PERU         1                    NA                -0.0171546   -0.0362494    0.0019403
12-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0068430   -0.0113393   -0.0023467
12-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0122767   -0.0195598   -0.0049936
12-24 months   ki1101329-Keneba          GAMBIA       0                    NA                -0.0196297   -0.0242797   -0.0149797
12-24 months   ki1101329-Keneba          GAMBIA       1                    NA                -0.0205190   -0.0271461   -0.0138920
12-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.0174101   -0.0278073   -0.0070130
12-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0155172   -0.0213866   -0.0096478
12-24 months   ki1148112-LCNI-5          MALAWI       0                    NA                -0.0053185   -0.0263716    0.0157345
12-24 months   ki1148112-LCNI-5          MALAWI       1                    NA                -0.0345407   -0.0639658   -0.0051157
12-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.0120164   -0.0160432   -0.0079896
12-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0209710   -0.0229531   -0.0189889
12-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0074908   -0.0117540   -0.0032277
12-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0165195   -0.0187570   -0.0142819


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
0-3 months     ki0047075b-MAL-ED         BANGLADESH   1                    0                  0.0549892   -0.0244237    0.1344021
0-3 months     ki0047075b-MAL-ED         BRAZIL       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         BRAZIL       1                    0                  0.1322642   -0.0991427    0.3636712
0-3 months     ki0047075b-MAL-ED         INDIA        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         INDIA        1                    0                 -0.0596821   -0.3454423    0.2260782
0-3 months     ki0047075b-MAL-ED         NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         NEPAL        1                    0                 -0.0649246   -0.1707378    0.0408886
0-3 months     ki0047075b-MAL-ED         PERU         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         PERU         1                    0                  0.0252324   -0.0988482    0.1493129
0-3 months     ki1000109-EE              PAKISTAN     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE              PAKISTAN     1                    0                 -0.0423022   -0.1259203    0.0413159
0-3 months     ki1000304b-SAS-CompFeed   INDIA        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed   INDIA        1                    0                  0.1226279   -0.0401773    0.2854331
0-3 months     ki1017093b-PROVIDE        BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE        BANGLADESH   1                    0                  0.0002187   -0.0385506    0.0389881
0-3 months     ki1101329-Keneba          GAMBIA       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba          GAMBIA       1                    0                  0.0043903   -0.0484920    0.0572727
0-3 months     kiGH5241-JiVitA-3         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3         BANGLADESH   1                    0                  0.0409797    0.0304490    0.0515103
0-3 months     kiGH5241-JiVitA-4         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4         BANGLADESH   1                    0                  0.0677673    0.0238817    0.1116529
3-6 months     ki0047075b-MAL-ED         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         BANGLADESH   1                    0                 -0.0262574   -0.0864737    0.0339589
3-6 months     ki0047075b-MAL-ED         BRAZIL       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         BRAZIL       1                    0                  0.0127686   -0.1251609    0.1506980
3-6 months     ki0047075b-MAL-ED         INDIA        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         INDIA        1                    0                 -0.0129864   -0.0967172    0.0707444
3-6 months     ki0047075b-MAL-ED         NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         NEPAL        1                    0                  0.0429149   -0.0718092    0.1576390
3-6 months     ki0047075b-MAL-ED         PERU         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         PERU         1                    0                  0.0610715   -0.0644307    0.1865738
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
3-6 months     kiGH5241-JiVitA-3         BANGLADESH   1                    0                 -0.0290093   -0.0405043   -0.0175142
3-6 months     kiGH5241-JiVitA-4         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4         BANGLADESH   1                    0                 -0.0403844   -0.0778825   -0.0028863
6-12 months    ki0047075b-MAL-ED         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         BANGLADESH   1                    0                 -0.0166416   -0.0394347    0.0061515
6-12 months    ki0047075b-MAL-ED         BRAZIL       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         BRAZIL       1                    0                 -0.0461975   -0.1093469    0.0169518
6-12 months    ki0047075b-MAL-ED         INDIA        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         INDIA        1                    0                 -0.0092909   -0.0767709    0.0581891
6-12 months    ki0047075b-MAL-ED         NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         NEPAL        1                    0                 -0.0172906   -0.0602325    0.0256513
6-12 months    ki0047075b-MAL-ED         PERU         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         PERU         1                    0                 -0.0061055   -0.0632130    0.0510019
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
6-12 months    kiGH5241-JiVitA-3         BANGLADESH   1                    0                 -0.0093119   -0.0159520   -0.0026718
6-12 months    kiGH5241-JiVitA-4         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4         BANGLADESH   1                    0                 -0.0051587   -0.0170763    0.0067588
12-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    0                 -0.0025342   -0.0148132    0.0097447
12-24 months   ki0047075b-MAL-ED         BRAZIL       0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         BRAZIL       1                    0                 -0.0112022   -0.0489758    0.0265714
12-24 months   ki0047075b-MAL-ED         INDIA        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         INDIA        1                    0                 -0.0286038   -0.0537470   -0.0034607
12-24 months   ki0047075b-MAL-ED         NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         NEPAL        1                    0                  0.0025757   -0.0127835    0.0179350
12-24 months   ki0047075b-MAL-ED         PERU         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         PERU         1                    0                 -0.0092607   -0.0296577    0.0111362
12-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    0                 -0.0054337   -0.0139929    0.0031256
12-24 months   ki1101329-Keneba          GAMBIA       0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1101329-Keneba          GAMBIA       1                    0                 -0.0008893   -0.0089850    0.0072064
12-24 months   ki1113344-GMS-Nepal       NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal       NEPAL        1                    0                  0.0018929   -0.0100465    0.0138323
12-24 months   ki1148112-LCNI-5          MALAWI       0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5          MALAWI       1                    0                 -0.0292222   -0.0654032    0.0069588
12-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    0                 -0.0089545   -0.0133356   -0.0045735
12-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    0                 -0.0090286   -0.0137504   -0.0043069
