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

**Intervention Variable:** exclfeed36

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country                        exclfeed36    n_cell       n
-------------  -------------------------  -----------------------------  -----------  -------  ------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0                180     242
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                 62     242
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0                167     180
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                 13     180
0-3 months     ki0047075b-MAL-ED          INDIA                          0                195     200
0-3 months     ki0047075b-MAL-ED          INDIA                          1                  5     200
0-3 months     ki0047075b-MAL-ED          NEPAL                          0                163     175
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                 12     175
0-3 months     ki0047075b-MAL-ED          PERU                           0                254     269
0-3 months     ki0047075b-MAL-ED          PERU                           1                 15     269
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                229     229
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0     229
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                228     229
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1     229
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                  0       2
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                  2       2
0-3 months     ki1000108-IRC              INDIA                          0                  4       4
0-3 months     ki1000108-IRC              INDIA                          1                  0       4
0-3 months     ki1000109-EE               PAKISTAN                       0                252     594
0-3 months     ki1000109-EE               PAKISTAN                       1                342     594
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                459     628
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                169     628
0-3 months     ki1101329-Keneba           GAMBIA                         0                790    1116
0-3 months     ki1101329-Keneba           GAMBIA                         1                326    1116
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0               6042   30184
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1              24142   30184
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                572    3370
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1               2798    3370
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                169     230
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                 61     230
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0                191     208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                 17     208
3-6 months     ki0047075b-MAL-ED          INDIA                          0                222     229
3-6 months     ki0047075b-MAL-ED          INDIA                          1                  7     229
3-6 months     ki0047075b-MAL-ED          NEPAL                          0                219     233
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                 14     233
3-6 months     ki0047075b-MAL-ED          PERU                           0                250     266
3-6 months     ki0047075b-MAL-ED          PERU                           1                 16     266
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                241     241
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0     241
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                238     239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1     239
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                  0       6
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                  6       6
3-6 months     ki1000108-IRC              INDIA                          0                  4       4
3-6 months     ki1000108-IRC              INDIA                          1                  0       4
3-6 months     ki1000109-EE               PAKISTAN                       0                264     662
3-6 months     ki1000109-EE               PAKISTAN                       1                398     662
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                436     573
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                137     573
3-6 months     ki1101329-Keneba           GAMBIA                         0                929    1266
3-6 months     ki1101329-Keneba           GAMBIA                         1                337    1266
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                184     918
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                734     918
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0               4116   20626
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1              16510   20626
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                582    3602
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1               3020    3602
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     0                162     219
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                 57     219
6-12 months    ki0047075b-MAL-ED          BRAZIL                         0                177     194
6-12 months    ki0047075b-MAL-ED          BRAZIL                         1                 17     194
6-12 months    ki0047075b-MAL-ED          INDIA                          0                218     224
6-12 months    ki0047075b-MAL-ED          INDIA                          1                  6     224
6-12 months    ki0047075b-MAL-ED          NEPAL                          0                217     230
6-12 months    ki0047075b-MAL-ED          NEPAL                          1                 13     230
6-12 months    ki0047075b-MAL-ED          PERU                           0                222     237
6-12 months    ki0047075b-MAL-ED          PERU                           1                 15     237
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                232     232
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0     232
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                222     223
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1     223
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  0       9
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  9       9
6-12 months    ki1000108-IRC              INDIA                          0                  4       4
6-12 months    ki1000108-IRC              INDIA                          1                  0       4
6-12 months    ki1000109-EE               PAKISTAN                       0                  6       8
6-12 months    ki1000109-EE               PAKISTAN                       1                  2       8
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                150     150
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  0     150
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                418     545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                127     545
6-12 months    ki1101329-Keneba           GAMBIA                         0                840    1166
6-12 months    ki1101329-Keneba           GAMBIA                         1                326    1166
6-12 months    ki1113344-GMS-Nepal        NEPAL                          0                184     930
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1                746     930
6-12 months    ki1148112-LCNI-5           MALAWI                         0                 27      40
6-12 months    ki1148112-LCNI-5           MALAWI                         1                 13      40
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     0               3128   15508
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1              12380   15508
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0               1190    5612
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1               4422    5612
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                149     205
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 56     205
12-24 months   ki0047075b-MAL-ED          BRAZIL                         0                149     165
12-24 months   ki0047075b-MAL-ED          BRAZIL                         1                 16     165
12-24 months   ki0047075b-MAL-ED          INDIA                          0                219     225
12-24 months   ki0047075b-MAL-ED          INDIA                          1                  6     225
12-24 months   ki0047075b-MAL-ED          NEPAL                          0                213     226
12-24 months   ki0047075b-MAL-ED          NEPAL                          1                 13     226
12-24 months   ki0047075b-MAL-ED          PERU                           0                180     191
12-24 months   ki0047075b-MAL-ED          PERU                           1                 11     191
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                230     230
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0     230
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                206     207
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1     207
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  0       7
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  7       7
12-24 months   ki1000108-IRC              INDIA                          0                  4       4
12-24 months   ki1000108-IRC              INDIA                          1                  0       4
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                341     457
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                116     457
12-24 months   ki1101329-Keneba           GAMBIA                         0                742    1045
12-24 months   ki1101329-Keneba           GAMBIA                         1                303    1045
12-24 months   ki1113344-GMS-Nepal        NEPAL                          0                124     684
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1                560     684
12-24 months   ki1148112-LCNI-5           MALAWI                         0                 21      30
12-24 months   ki1148112-LCNI-5           MALAWI                         1                  9      30
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               1484    7244
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               5760    7244
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               1390    6222
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               4832    6222


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
![](/tmp/fd9a56bc-310b-4d8e-92be-5f73d337544c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/fd9a56bc-310b-4d8e-92be-5f73d337544c/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.0513990   -0.0881389   -0.0146592
0-3 months     ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0155796   -0.0501665    0.0813257
0-3 months     ki0047075b-MAL-ED     BRAZIL       0                    NA                 0.1795759    0.1267856    0.2323662
0-3 months     ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.3634914    0.1437001    0.5832827
0-3 months     ki0047075b-MAL-ED     INDIA        0                    NA                -0.0240354   -0.0624725    0.0144017
0-3 months     ki0047075b-MAL-ED     INDIA        1                    NA                -0.0804111   -0.3634633    0.2026411
0-3 months     ki0047075b-MAL-ED     NEPAL        0                    NA                 0.0772801    0.0404062    0.1141539
0-3 months     ki0047075b-MAL-ED     NEPAL        1                    NA                 0.0384906   -0.0644362    0.1414174
0-3 months     ki0047075b-MAL-ED     PERU         0                    NA                -0.1615637   -0.1957467   -0.1273807
0-3 months     ki0047075b-MAL-ED     PERU         1                    NA                -0.1085253   -0.2049851   -0.0120655
0-3 months     ki1000109-EE          PAKISTAN     0                    NA                -0.3682845   -0.4260295   -0.3105395
0-3 months     ki1000109-EE          PAKISTAN     1                    NA                -0.4126906   -0.4730866   -0.3522946
0-3 months     ki1017093b-PROVIDE    BANGLADESH   0                    NA                -0.0409817   -0.0628594   -0.0191039
0-3 months     ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.0433848   -0.0749913   -0.0117784
0-3 months     ki1101329-Keneba      GAMBIA       0                    NA                -0.2906328   -0.3221309   -0.2591346
0-3 months     ki1101329-Keneba      GAMBIA       1                    NA                -0.2694097   -0.3164481   -0.2223713
0-3 months     kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.0327864    0.0210444    0.0445283
0-3 months     kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0733044    0.0672657    0.0793432
0-3 months     kiGH5241-JiVitA-4     BANGLADESH   0                    NA                 0.0085509   -0.0327465    0.0498484
0-3 months     kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0756007    0.0594935    0.0917080
3-6 months     ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.0140488   -0.0391598    0.0110623
3-6 months     ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0411553   -0.0931058    0.0107952
3-6 months     ki0047075b-MAL-ED     BRAZIL       0                    NA                 0.0591447    0.0209661    0.0973233
3-6 months     ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.0756099   -0.0493475    0.2005673
3-6 months     ki0047075b-MAL-ED     INDIA        0                    NA                -0.0409254   -0.0700583   -0.0117925
3-6 months     ki0047075b-MAL-ED     INDIA        1                    NA                -0.0147452   -0.1112534    0.0817630
3-6 months     ki0047075b-MAL-ED     NEPAL        0                    NA                -0.0238813   -0.0513564    0.0035937
3-6 months     ki0047075b-MAL-ED     NEPAL        1                    NA                 0.0165140   -0.0870054    0.1200335
3-6 months     ki0047075b-MAL-ED     PERU         0                    NA                 0.0290615   -0.0032656    0.0613886
3-6 months     ki0047075b-MAL-ED     PERU         1                    NA                 0.0123274   -0.0982789    0.1229337
3-6 months     ki1000109-EE          PAKISTAN     0                    NA                 0.0883633    0.0405627    0.1361640
3-6 months     ki1000109-EE          PAKISTAN     1                    NA                 0.0580124    0.0235438    0.0924810
3-6 months     ki1017093b-PROVIDE    BANGLADESH   0                    NA                -0.0324747   -0.0514323   -0.0135170
3-6 months     ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.0062326   -0.0382285    0.0257634
3-6 months     ki1101329-Keneba      GAMBIA       0                    NA                -0.0154665   -0.0387954    0.0078624
3-6 months     ki1101329-Keneba      GAMBIA       1                    NA                -0.0257329   -0.0612069    0.0097410
3-6 months     ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.1787657   -0.2247591   -0.1327723
3-6 months     ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.1642241   -0.1848149   -0.1436333
3-6 months     kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.0194958    0.0073718    0.0316199
3-6 months     kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0112282   -0.0170608   -0.0053957
3-6 months     kiGH5241-JiVitA-4     BANGLADESH   0                    NA                 0.0248951   -0.0090114    0.0588017
3-6 months     kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0159274   -0.0312358   -0.0006190
6-12 months    ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.0772722   -0.0898646   -0.0646798
6-12 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0908315   -0.1084491   -0.0732138
6-12 months    ki0047075b-MAL-ED     BRAZIL       0                    NA                 0.0110847   -0.0094337    0.0316030
6-12 months    ki0047075b-MAL-ED     BRAZIL       1                    NA                -0.0404990   -0.0974330    0.0164349
6-12 months    ki0047075b-MAL-ED     INDIA        0                    NA                -0.0767295   -0.0890750   -0.0643840
6-12 months    ki0047075b-MAL-ED     INDIA        1                    NA                -0.1119296   -0.1834664   -0.0403929
6-12 months    ki0047075b-MAL-ED     NEPAL        0                    NA                -0.0482310   -0.0592193   -0.0372426
6-12 months    ki0047075b-MAL-ED     NEPAL        1                    NA                -0.0585212   -0.1014257   -0.0156167
6-12 months    ki0047075b-MAL-ED     PERU         0                    NA                -0.0385367   -0.0530618   -0.0240115
6-12 months    ki0047075b-MAL-ED     PERU         1                    NA                -0.0191976   -0.0735816    0.0351863
6-12 months    ki1017093b-PROVIDE    BANGLADESH   0                    NA                -0.0604232   -0.0682866   -0.0525598
6-12 months    ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.0698296   -0.0845147   -0.0551445
6-12 months    ki1101329-Keneba      GAMBIA       0                    NA                -0.0659449   -0.0755695   -0.0563203
6-12 months    ki1101329-Keneba      GAMBIA       1                    NA                -0.0506133   -0.0658842   -0.0353424
6-12 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0547249   -0.0749464   -0.0345035
6-12 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0645848   -0.0736341   -0.0555355
6-12 months    ki1148112-LCNI-5      MALAWI       0                    NA                -0.0513798   -0.1030379    0.0002783
6-12 months    ki1148112-LCNI-5      MALAWI       1                    NA                 0.0202243   -0.0261296    0.0665782
6-12 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0631951   -0.0701098   -0.0562804
6-12 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0742442   -0.0775129   -0.0709755
6-12 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0348220   -0.0454896   -0.0241544
6-12 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0397702   -0.0451134   -0.0344270
12-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.0169716   -0.0234201   -0.0105230
12-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0196667   -0.0296040   -0.0097294
12-24 months   ki0047075b-MAL-ED     BRAZIL       0                    NA                -0.0000327   -0.0111758    0.0111104
12-24 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                -0.0131177   -0.0471151    0.0208797
12-24 months   ki0047075b-MAL-ED     INDIA        0                    NA                -0.0089657   -0.0141515   -0.0037799
12-24 months   ki0047075b-MAL-ED     INDIA        1                    NA                -0.0433752   -0.0661093   -0.0206411
12-24 months   ki0047075b-MAL-ED     NEPAL        0                    NA                -0.0296114   -0.0348959   -0.0243269
12-24 months   ki0047075b-MAL-ED     NEPAL        1                    NA                -0.0278711   -0.0433588   -0.0123835
12-24 months   ki0047075b-MAL-ED     PERU         0                    NA                -0.0084226   -0.0157888   -0.0010565
12-24 months   ki0047075b-MAL-ED     PERU         1                    NA                -0.0228927   -0.0385576   -0.0072278
12-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                -0.0069624   -0.0115061   -0.0024186
12-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.0113627   -0.0184781   -0.0042473
12-24 months   ki1101329-Keneba      GAMBIA       0                    NA                -0.0195345   -0.0242889   -0.0147801
12-24 months   ki1101329-Keneba      GAMBIA       1                    NA                -0.0206166   -0.0276898   -0.0135434
12-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0169971   -0.0297496   -0.0042445
12-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0170969   -0.0227222   -0.0114717
12-24 months   ki1148112-LCNI-5      MALAWI       0                    NA                -0.0053185   -0.0263716    0.0157345
12-24 months   ki1148112-LCNI-5      MALAWI       1                    NA                -0.0345407   -0.0639658   -0.0051157
12-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0128399   -0.0176680   -0.0080119
12-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0210388   -0.0232612   -0.0188163
12-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0076054   -0.0119306   -0.0032801
12-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0167661   -0.0190269   -0.0145053


### Parameter: E(Y)


agecat         studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH   NA                   NA                -0.0342392   -0.0665521   -0.0019264
0-3 months     ki0047075b-MAL-ED     BRAZIL       NA                   NA                 0.1928587    0.1409027    0.2448147
0-3 months     ki0047075b-MAL-ED     INDIA        NA                   NA                -0.0254448   -0.0636028    0.0127132
0-3 months     ki0047075b-MAL-ED     NEPAL        NA                   NA                 0.0746202    0.0395269    0.1097135
0-3 months     ki0047075b-MAL-ED     PERU         NA                   NA                -0.1586062   -0.1913606   -0.1258518
0-3 months     ki1000109-EE          PAKISTAN     NA                   NA                -0.3938516   -0.4364614   -0.3512419
0-3 months     ki1017093b-PROVIDE    BANGLADESH   NA                   NA                -0.0416284   -0.0597402   -0.0235165
0-3 months     ki1101329-Keneba      GAMBIA       NA                   NA                -0.2844332   -0.3106302   -0.2582362
0-3 months     kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                 0.0651938    0.0595783    0.0708094
0-3 months     kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                 0.0642202    0.0489852    0.0794552
3-6 months     ki0047075b-MAL-ED     BANGLADESH   NA                   NA                -0.0212379   -0.0443179    0.0018421
3-6 months     ki0047075b-MAL-ED     BRAZIL       NA                   NA                 0.0604904    0.0239698    0.0970111
3-6 months     ki0047075b-MAL-ED     INDIA        NA                   NA                -0.0401251   -0.0685271   -0.0117231
3-6 months     ki0047075b-MAL-ED     NEPAL        NA                   NA                -0.0214542   -0.0480456    0.0051373
3-6 months     ki0047075b-MAL-ED     PERU         NA                   NA                 0.0280549   -0.0030513    0.0591612
3-6 months     ki1000109-EE          PAKISTAN     NA                   NA                 0.0701161    0.0419135    0.0983187
3-6 months     ki1017093b-PROVIDE    BANGLADESH   NA                   NA                -0.0262004   -0.0425541   -0.0098466
3-6 months     ki1101329-Keneba      GAMBIA       NA                   NA                -0.0181994   -0.0377516    0.0013528
3-6 months     ki1113344-GMS-Nepal   NEPAL        NA                   NA                -0.1671388   -0.1860153   -0.1482623
3-6 months     kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                -0.0050971   -0.0104963    0.0003021
3-6 months     kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                -0.0093314   -0.0232659    0.0046030
6-12 months    ki0047075b-MAL-ED     BANGLADESH   NA                   NA                -0.0808013   -0.0912137   -0.0703889
6-12 months    ki0047075b-MAL-ED     BRAZIL       NA                   NA                 0.0065644   -0.0129183    0.0260472
6-12 months    ki0047075b-MAL-ED     INDIA        NA                   NA                -0.0776724   -0.0898619   -0.0654829
6-12 months    ki0047075b-MAL-ED     NEPAL        NA                   NA                -0.0488126   -0.0594641   -0.0381610
6-12 months    ki0047075b-MAL-ED     PERU         NA                   NA                -0.0373127   -0.0513600   -0.0232653
6-12 months    ki1017093b-PROVIDE    BANGLADESH   NA                   NA                -0.0626151   -0.0695574   -0.0556729
6-12 months    ki1101329-Keneba      GAMBIA       NA                   NA                -0.0616584   -0.0698107   -0.0535060
6-12 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                -0.0626340   -0.0709302   -0.0543379
6-12 months    ki1148112-LCNI-5      MALAWI       NA                   NA                -0.0281085   -0.0675243    0.0113073
6-12 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                -0.0720156   -0.0751021   -0.0689290
6-12 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                -0.0387210   -0.0435056   -0.0339363
12-24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                -0.0177078   -0.0231267   -0.0122889
12-24 months   ki0047075b-MAL-ED     BRAZIL       NA                   NA                -0.0013016   -0.0119070    0.0093038
12-24 months   ki0047075b-MAL-ED     INDIA        NA                   NA                -0.0098833   -0.0150187   -0.0047479
12-24 months   ki0047075b-MAL-ED     NEPAL        NA                   NA                -0.0295113   -0.0345712   -0.0244514
12-24 months   ki0047075b-MAL-ED     PERU         NA                   NA                -0.0092560   -0.0162726   -0.0022393
12-24 months   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                -0.0080793   -0.0119248   -0.0042338
12-24 months   ki1101329-Keneba      GAMBIA       NA                   NA                -0.0198482   -0.0237984   -0.0158981
12-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                -0.0170788   -0.0222320   -0.0119257
12-24 months   ki1148112-LCNI-5      MALAWI       NA                   NA                -0.0140852   -0.0319419    0.0037715
12-24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                -0.0193591   -0.0213957   -0.0173226
12-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                -0.0147196   -0.0167684   -0.0126707


### Parameter: ATE


agecat         studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     BANGLADESH   1                    0                  0.0669787   -0.0083365    0.1422938
0-3 months     ki0047075b-MAL-ED     BRAZIL       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     BRAZIL       1                    0                  0.1839155   -0.0421266    0.4099576
0-3 months     ki0047075b-MAL-ED     INDIA        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     INDIA        1                    0                 -0.0563757   -0.3420257    0.2292744
0-3 months     ki0047075b-MAL-ED     NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     NEPAL        1                    0                 -0.0387895   -0.1481220    0.0705430
0-3 months     ki0047075b-MAL-ED     PERU         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     PERU         1                    0                  0.0530384   -0.0492991    0.1553759
0-3 months     ki1000109-EE          PAKISTAN     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE          PAKISTAN     1                    0                 -0.0444060   -0.1279653    0.0391533
0-3 months     ki1017093b-PROVIDE    BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE    BANGLADESH   1                    0                 -0.0024032   -0.0408428    0.0360364
0-3 months     ki1101329-Keneba      GAMBIA       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba      GAMBIA       1                    0                  0.0212230   -0.0353874    0.0778335
0-3 months     kiGH5241-JiVitA-3     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3     BANGLADESH   1                    0                  0.0405181    0.0279391    0.0530971
0-3 months     kiGH5241-JiVitA-4     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4     BANGLADESH   1                    0                  0.0670498    0.0227893    0.1113102
3-6 months     ki0047075b-MAL-ED     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     BANGLADESH   1                    0                 -0.0271065   -0.0848077    0.0305946
3-6 months     ki0047075b-MAL-ED     BRAZIL       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     BRAZIL       1                    0                  0.0164652   -0.1141944    0.1471249
3-6 months     ki0047075b-MAL-ED     INDIA        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     INDIA        1                    0                  0.0261802   -0.0746293    0.1269897
3-6 months     ki0047075b-MAL-ED     NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     NEPAL        1                    0                  0.0403954   -0.0667081    0.1474989
3-6 months     ki0047075b-MAL-ED     PERU         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     PERU         1                    0                 -0.0167341   -0.1319678    0.0984995
3-6 months     ki1000109-EE          PAKISTAN     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE          PAKISTAN     1                    0                 -0.0303509   -0.0892830    0.0285811
3-6 months     ki1017093b-PROVIDE    BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE    BANGLADESH   1                    0                  0.0262421   -0.0109484    0.0634326
3-6 months     ki1101329-Keneba      GAMBIA       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba      GAMBIA       1                    0                 -0.0102664   -0.0527239    0.0321911
3-6 months     ki1113344-GMS-Nepal   NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal   NEPAL        1                    0                  0.0145416   -0.0358506    0.0649338
3-6 months     kiGH5241-JiVitA-3     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3     BANGLADESH   1                    0                 -0.0307240   -0.0438487   -0.0175994
3-6 months     kiGH5241-JiVitA-4     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4     BANGLADESH   1                    0                 -0.0408225   -0.0781507   -0.0034943
6-12 months    ki0047075b-MAL-ED     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED     BANGLADESH   1                    0                 -0.0135593   -0.0352145    0.0080960
6-12 months    ki0047075b-MAL-ED     BRAZIL       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED     BRAZIL       1                    0                 -0.0515837   -0.1121021    0.0089347
6-12 months    ki0047075b-MAL-ED     INDIA        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED     INDIA        1                    0                 -0.0352001   -0.1077943    0.0373941
6-12 months    ki0047075b-MAL-ED     NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED     NEPAL        1                    0                 -0.0102903   -0.0545795    0.0339990
6-12 months    ki0047075b-MAL-ED     PERU         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED     PERU         1                    0                  0.0193390   -0.0369513    0.0756293
6-12 months    ki1017093b-PROVIDE    BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE    BANGLADESH   1                    0                 -0.0094064   -0.0260643    0.0072515
6-12 months    ki1101329-Keneba      GAMBIA       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1101329-Keneba      GAMBIA       1                    0                  0.0153316   -0.0027192    0.0333825
6-12 months    ki1113344-GMS-Nepal   NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal   NEPAL        1                    0                 -0.0098599   -0.0320138    0.0122941
6-12 months    ki1148112-LCNI-5      MALAWI       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5      MALAWI       1                    0                  0.0716041    0.0021977    0.1410105
6-12 months    kiGH5241-JiVitA-3     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3     BANGLADESH   1                    0                 -0.0110491   -0.0184021   -0.0036960
6-12 months    kiGH5241-JiVitA-4     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4     BANGLADESH   1                    0                 -0.0049482   -0.0168719    0.0069754
12-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    0                 -0.0026951   -0.0145414    0.0091511
12-24 months   ki0047075b-MAL-ED     BRAZIL       0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED     BRAZIL       1                    0                 -0.0130850   -0.0488620    0.0226920
12-24 months   ki0047075b-MAL-ED     INDIA        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED     INDIA        1                    0                 -0.0344095   -0.0577275   -0.0110914
12-24 months   ki0047075b-MAL-ED     NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED     NEPAL        1                    0                  0.0017403   -0.0146241    0.0181047
12-24 months   ki0047075b-MAL-ED     PERU         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED     PERU         1                    0                 -0.0144701   -0.0317804    0.0028403
12-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    0                 -0.0044003   -0.0128428    0.0040421
12-24 months   ki1101329-Keneba      GAMBIA       0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1101329-Keneba      GAMBIA       1                    0                 -0.0010821   -0.0096047    0.0074405
12-24 months   ki1113344-GMS-Nepal   NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal   NEPAL        1                    0                 -0.0000999   -0.0140380    0.0138383
12-24 months   ki1148112-LCNI-5      MALAWI       0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5      MALAWI       1                    0                 -0.0292222   -0.0654032    0.0069588
12-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    0                 -0.0081988   -0.0134929   -0.0029048
12-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    0                 -0.0091607   -0.0139333   -0.0043881
