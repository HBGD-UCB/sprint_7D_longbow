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
![](/tmp/7bf360ba-18e4-4257-bd4d-dcba9166ec68/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/7bf360ba-18e4-4257-bd4d-dcba9166ec68/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH   0                    NA                3.5334160   3.4626941   3.6041379
0-3 months     ki0047075b-MAL-ED     BANGLADESH   1                    NA                3.6462435   3.5109341   3.7815530
0-3 months     ki0047075b-MAL-ED     BRAZIL       0                    NA                4.0260084   3.9218035   4.1302132
0-3 months     ki0047075b-MAL-ED     BRAZIL       1                    NA                4.3716500   3.9727968   4.7705033
0-3 months     ki0047075b-MAL-ED     INDIA        0                    NA                3.5639428   3.4872597   3.6406259
0-3 months     ki0047075b-MAL-ED     INDIA        1                    NA                3.6269354   3.0524083   4.2014624
0-3 months     ki0047075b-MAL-ED     NEPAL        0                    NA                3.8254902   3.7458259   3.9051545
0-3 months     ki0047075b-MAL-ED     NEPAL        1                    NA                3.7526220   3.5112351   3.9940088
0-3 months     ki0047075b-MAL-ED     PERU         0                    NA                3.3055165   3.2392345   3.3717985
0-3 months     ki0047075b-MAL-ED     PERU         1                    NA                3.4842935   3.2937954   3.6747917
0-3 months     ki1000109-EE          PAKISTAN     0                    NA                2.6883206   2.5700483   2.8065928
0-3 months     ki1000109-EE          PAKISTAN     1                    NA                2.6349021   2.5189519   2.7508523
0-3 months     ki1017093b-PROVIDE    BANGLADESH   0                    NA                3.4862606   3.4388551   3.5336660
0-3 months     ki1017093b-PROVIDE    BANGLADESH   1                    NA                3.4685323   3.4015917   3.5354728
0-3 months     ki1101329-Keneba      GAMBIA       0                    NA                3.1362817   3.0743892   3.1981742
0-3 months     ki1101329-Keneba      GAMBIA       1                    NA                3.1710550   3.0785010   3.2636089
0-3 months     kiGH5241-JiVitA-3     BANGLADESH   0                    NA                3.6430070   3.6191064   3.6669075
0-3 months     kiGH5241-JiVitA-3     BANGLADESH   1                    NA                3.7061644   3.6937006   3.7186282
0-3 months     kiGH5241-JiVitA-4     BANGLADESH   0                    NA                3.5142065   3.4300108   3.5984021
0-3 months     kiGH5241-JiVitA-4     BANGLADESH   1                    NA                3.6503139   3.6168063   3.6838216
3-6 months     ki0047075b-MAL-ED     BANGLADESH   0                    NA                1.9476481   1.8940331   2.0012630
3-6 months     ki0047075b-MAL-ED     BANGLADESH   1                    NA                1.8819928   1.7710058   1.9929797
3-6 months     ki0047075b-MAL-ED     BRAZIL       0                    NA                2.1435888   2.0607273   2.2264503
3-6 months     ki0047075b-MAL-ED     BRAZIL       1                    NA                2.1953050   1.9283158   2.4622942
3-6 months     ki0047075b-MAL-ED     INDIA        0                    NA                1.8806029   1.8176929   1.9435129
3-6 months     ki0047075b-MAL-ED     INDIA        1                    NA                1.9827867   1.7992148   2.1663585
3-6 months     ki0047075b-MAL-ED     NEPAL        0                    NA                1.9637503   1.9059258   2.0215747
3-6 months     ki0047075b-MAL-ED     NEPAL        1                    NA                2.0361336   1.8101069   2.2621603
3-6 months     ki0047075b-MAL-ED     PERU         0                    NA                2.0198916   1.9513738   2.0884094
3-6 months     ki0047075b-MAL-ED     PERU         1                    NA                2.0148722   1.7797204   2.2500241
3-6 months     ki1000109-EE          PAKISTAN     0                    NA                2.0636050   1.9614125   2.1657975
3-6 months     ki1000109-EE          PAKISTAN     1                    NA                1.9979292   1.9238473   2.0720110
3-6 months     ki1017093b-PROVIDE    BANGLADESH   0                    NA                1.9568900   1.9164764   1.9973036
3-6 months     ki1017093b-PROVIDE    BANGLADESH   1                    NA                2.0025787   1.9346093   2.0705481
3-6 months     ki1101329-Keneba      GAMBIA       0                    NA                2.0004527   1.9507829   2.0501225
3-6 months     ki1101329-Keneba      GAMBIA       1                    NA                1.9676653   1.8912882   2.0440424
3-6 months     ki1113344-GMS-Nepal   NEPAL        0                    NA                1.6776697   1.5827244   1.7726151
3-6 months     ki1113344-GMS-Nepal   NEPAL        1                    NA                1.7107896   1.6671274   1.7544517
3-6 months     kiGH5241-JiVitA-3     BANGLADESH   0                    NA                1.9626768   1.9367818   1.9885717
3-6 months     kiGH5241-JiVitA-3     BANGLADESH   1                    NA                1.8980767   1.8854505   1.9107030
3-6 months     kiGH5241-JiVitA-4     BANGLADESH   0                    NA                1.9633945   1.8890140   2.0377749
3-6 months     kiGH5241-JiVitA-4     BANGLADESH   1                    NA                1.8833719   1.8501154   1.9166284
6-12 months    ki0047075b-MAL-ED     BANGLADESH   0                    NA                1.1231432   1.0933161   1.1529703
6-12 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                1.0893001   1.0456464   1.1329537
6-12 months    ki0047075b-MAL-ED     BRAZIL       0                    NA                1.3949812   1.3461545   1.4438079
6-12 months    ki0047075b-MAL-ED     BRAZIL       1                    NA                1.2964428   1.1581365   1.4347492
6-12 months    ki0047075b-MAL-ED     INDIA        0                    NA                1.1236611   1.0949051   1.1524171
6-12 months    ki0047075b-MAL-ED     INDIA        1                    NA                1.0263951   0.8582156   1.1945746
6-12 months    ki0047075b-MAL-ED     NEPAL        0                    NA                1.2232654   1.1966755   1.2498553
6-12 months    ki0047075b-MAL-ED     NEPAL        1                    NA                1.2087586   1.1026616   1.3148556
6-12 months    ki0047075b-MAL-ED     PERU         0                    NA                1.2073933   1.1733881   1.2413985
6-12 months    ki0047075b-MAL-ED     PERU         1                    NA                1.2522368   1.1363842   1.3680894
6-12 months    ki1017093b-PROVIDE    BANGLADESH   0                    NA                1.1782914   1.1587780   1.1978048
6-12 months    ki1017093b-PROVIDE    BANGLADESH   1                    NA                1.1563403   1.1191743   1.1935064
6-12 months    ki1101329-Keneba      GAMBIA       0                    NA                1.1690238   1.1462951   1.1917525
6-12 months    ki1101329-Keneba      GAMBIA       1                    NA                1.2078171   1.1716202   1.2440139
6-12 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                1.1765878   1.1281587   1.2250168
6-12 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                1.1624954   1.1409896   1.1840013
6-12 months    ki1148112-LCNI-5      MALAWI       0                    NA                1.1850352   1.0606518   1.3094187
6-12 months    ki1148112-LCNI-5      MALAWI       1                    NA                1.3658051   1.2577692   1.4738411
6-12 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                1.1282565   1.1118877   1.1446254
6-12 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                1.1100492   1.1022259   1.1178725
6-12 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                1.2066851   1.1817429   1.2316272
6-12 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                1.2008867   1.1880744   1.2136989
12-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.8525717   0.8336319   0.8715116
12-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.8310004   0.8013710   0.8606298
12-24 months   ki0047075b-MAL-ED     BRAZIL       0                    NA                0.9854768   0.9531582   1.0177955
12-24 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                0.9457493   0.8476670   1.0438316
12-24 months   ki0047075b-MAL-ED     INDIA        0                    NA                0.8843844   0.8669788   0.9017899
12-24 months   ki0047075b-MAL-ED     INDIA        1                    NA                0.7339590   0.6701030   0.7978150
12-24 months   ki0047075b-MAL-ED     NEPAL        0                    NA                0.8607773   0.8447314   0.8768231
12-24 months   ki0047075b-MAL-ED     NEPAL        1                    NA                0.8769630   0.8313079   0.9226180
12-24 months   ki0047075b-MAL-ED     PERU         0                    NA                0.8479516   0.8262270   0.8696762
12-24 months   ki0047075b-MAL-ED     PERU         1                    NA                0.8200603   0.7695143   0.8706063
12-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.8617313   0.8476440   0.8758186
12-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.8462085   0.8234498   0.8689672
12-24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.8458580   0.8324301   0.8592858
12-24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.8439930   0.8233411   0.8646449
12-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.8368090   0.7967643   0.8768537
12-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.8349302   0.8175550   0.8523055
12-24 months   ki1148112-LCNI-5      MALAWI       0                    NA                0.9052456   0.8493606   0.9611306
12-24 months   ki1148112-LCNI-5      MALAWI       1                    NA                0.8330056   0.7639315   0.9020797
12-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.8070018   0.7935449   0.8204587
12-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.7933857   0.7870007   0.7997707
12-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.8620832   0.8503633   0.8738031
12-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.8453093   0.8387891   0.8518295


### Parameter: E(Y)


agecat         studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH   NA                   NA                3.5623222   3.4990175   3.6256270
0-3 months     ki0047075b-MAL-ED     BRAZIL       NA                   NA                4.0509714   3.9492443   4.1526985
0-3 months     ki0047075b-MAL-ED     INDIA        NA                   NA                3.5655176   3.4893722   3.6416631
0-3 months     ki0047075b-MAL-ED     NEPAL        NA                   NA                3.8204935   3.7444190   3.8965681
0-3 months     ki0047075b-MAL-ED     PERU         NA                   NA                3.3154855   3.2518148   3.3791562
0-3 months     ki1000109-EE          PAKISTAN     NA                   NA                2.6575645   2.5739973   2.7411317
0-3 months     ki1017093b-PROVIDE    BANGLADESH   NA                   NA                3.4814897   3.4424334   3.5205460
0-3 months     ki1101329-Keneba      GAMBIA       NA                   NA                3.1464395   3.0949478   3.1979311
0-3 months     kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                3.6935220   3.6819690   3.7050750
0-3 months     kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                3.6272120   3.5957777   3.6586463
3-6 months     ki0047075b-MAL-ED     BANGLADESH   NA                   NA                1.9302352   1.8809143   1.9795560
3-6 months     ki0047075b-MAL-ED     BRAZIL       NA                   NA                2.1478156   2.0686357   2.2269955
3-6 months     ki0047075b-MAL-ED     INDIA        NA                   NA                1.8837264   1.8224393   1.9450135
3-6 months     ki0047075b-MAL-ED     NEPAL        NA                   NA                1.9680995   1.9120346   2.0241643
3-6 months     ki0047075b-MAL-ED     PERU         NA                   NA                2.0195897   1.9536580   2.0855214
3-6 months     ki1000109-EE          PAKISTAN     NA                   NA                2.0241201   1.9636505   2.0845898
3-6 months     ki1017093b-PROVIDE    BANGLADESH   NA                   NA                1.9678138   1.9329962   2.0026315
3-6 months     ki1101329-Keneba      GAMBIA       NA                   NA                1.9917249   1.9499823   2.0334676
3-6 months     ki1113344-GMS-Nepal   NEPAL        NA                   NA                1.7041512   1.6643719   1.7439304
3-6 months     kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                1.9109679   1.8993348   1.9226010
3-6 months     kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                1.8963017   1.8659335   1.9266699
6-12 months    ki0047075b-MAL-ED     BANGLADESH   NA                   NA                1.1143347   1.0894390   1.1392304
6-12 months    ki0047075b-MAL-ED     BRAZIL       NA                   NA                1.3863464   1.3400121   1.4326807
6-12 months    ki0047075b-MAL-ED     INDIA        NA                   NA                1.1210558   1.0926349   1.1494766
6-12 months    ki0047075b-MAL-ED     NEPAL        NA                   NA                1.2224454   1.1966480   1.2482429
6-12 months    ki0047075b-MAL-ED     PERU         NA                   NA                1.2102315   1.1775158   1.2429472
6-12 months    ki1017093b-PROVIDE    BANGLADESH   NA                   NA                1.1731762   1.1558671   1.1904853
6-12 months    ki1101329-Keneba      GAMBIA       NA                   NA                1.1798699   1.1605949   1.1991450
6-12 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                1.1652836   1.1455437   1.1850235
6-12 months    ki1148112-LCNI-5      MALAWI       NA                   NA                1.2437855   1.1489803   1.3385906
6-12 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                1.1137217   1.1063529   1.1210904
6-12 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                1.2021162   1.1906438   1.2135885
12-24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.8466791   0.8306555   0.8627027
12-24 months   ki0047075b-MAL-ED     BRAZIL       NA                   NA                0.9816245   0.9508764   1.0123725
12-24 months   ki0047075b-MAL-ED     INDIA        NA                   NA                0.8803730   0.8630530   0.8976931
12-24 months   ki0047075b-MAL-ED     NEPAL        NA                   NA                0.8617083   0.8463512   0.8770654
12-24 months   ki0047075b-MAL-ED     PERU         NA                   NA                0.8463453   0.8256453   0.8670453
12-24 months   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.8577912   0.8457808   0.8698015
12-24 months   ki1101329-Keneba      GAMBIA       NA                   NA                0.8453172   0.8340582   0.8565762
12-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.8352708   0.8193000   0.8512417
12-24 months   ki1148112-LCNI-5      MALAWI       NA                   NA                0.8835736   0.8376943   0.9294529
12-24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.7961751   0.7903156   0.8020346
12-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.8490566   0.8431830   0.8549302


### Parameter: ATE


agecat         studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     BANGLADESH   1                    0                  0.1128275   -0.0398494    0.2655045
0-3 months     ki0047075b-MAL-ED     BRAZIL       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     BRAZIL       1                    0                  0.3456417   -0.0665992    0.7578825
0-3 months     ki0047075b-MAL-ED     INDIA        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     INDIA        1                    0                  0.0629925   -0.5166294    0.6426145
0-3 months     ki0047075b-MAL-ED     NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     NEPAL        1                    0                 -0.0728682   -0.3270611    0.1813246
0-3 months     ki0047075b-MAL-ED     PERU         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     PERU         1                    0                  0.1787770   -0.0229229    0.3804769
0-3 months     ki1000109-EE          PAKISTAN     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE          PAKISTAN     1                    0                 -0.0534185   -0.2190469    0.1122099
0-3 months     ki1017093b-PROVIDE    BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE    BANGLADESH   1                    0                 -0.0177283   -0.0997546    0.0642980
0-3 months     ki1101329-Keneba      GAMBIA       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba      GAMBIA       1                    0                  0.0347733   -0.0765681    0.1461147
0-3 months     kiGH5241-JiVitA-3     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3     BANGLADESH   1                    0                  0.0631575    0.0374937    0.0888213
0-3 months     kiGH5241-JiVitA-4     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4     BANGLADESH   1                    0                  0.1361075    0.0455347    0.2266802
3-6 months     ki0047075b-MAL-ED     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     BANGLADESH   1                    0                 -0.0656553   -0.1889139    0.0576032
3-6 months     ki0047075b-MAL-ED     BRAZIL       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     BRAZIL       1                    0                  0.0517162   -0.2278356    0.3312681
3-6 months     ki0047075b-MAL-ED     INDIA        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     INDIA        1                    0                  0.1021838   -0.0918686    0.2962361
3-6 months     ki0047075b-MAL-ED     NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     NEPAL        1                    0                  0.0723833   -0.1609227    0.3056894
3-6 months     ki0047075b-MAL-ED     PERU         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     PERU         1                    0                 -0.0050194   -0.2499502    0.2399114
3-6 months     ki1000109-EE          PAKISTAN     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE          PAKISTAN     1                    0                 -0.0656759   -0.1918956    0.0605439
3-6 months     ki1017093b-PROVIDE    BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE    BANGLADESH   1                    0                  0.0456887   -0.0333879    0.1247652
3-6 months     ki1101329-Keneba      GAMBIA       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba      GAMBIA       1                    0                 -0.0327874   -0.1238948    0.0583200
3-6 months     ki1113344-GMS-Nepal   NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal   NEPAL        1                    0                  0.0331198   -0.0713838    0.1376234
3-6 months     kiGH5241-JiVitA-3     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3     BANGLADESH   1                    0                 -0.0646000   -0.0927622   -0.0364379
3-6 months     kiGH5241-JiVitA-4     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4     BANGLADESH   1                    0                 -0.0800226   -0.1616198    0.0015747
6-12 months    ki0047075b-MAL-ED     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED     BANGLADESH   1                    0                 -0.0338431   -0.0867137    0.0190275
6-12 months    ki0047075b-MAL-ED     BRAZIL       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED     BRAZIL       1                    0                 -0.0985384   -0.2452104    0.0481336
6-12 months    ki0047075b-MAL-ED     INDIA        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED     INDIA        1                    0                 -0.0972660   -0.2678862    0.0733542
6-12 months    ki0047075b-MAL-ED     NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED     NEPAL        1                    0                 -0.0145068   -0.1238850    0.0948715
6-12 months    ki0047075b-MAL-ED     PERU         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED     PERU         1                    0                  0.0448435   -0.0758966    0.1655836
6-12 months    ki1017093b-PROVIDE    BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE    BANGLADESH   1                    0                 -0.0219511   -0.0639283    0.0200262
6-12 months    ki1101329-Keneba      GAMBIA       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1101329-Keneba      GAMBIA       1                    0                  0.0387933   -0.0039479    0.0815344
6-12 months    ki1113344-GMS-Nepal   NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal   NEPAL        1                    0                 -0.0140923   -0.0670817    0.0388970
6-12 months    ki1148112-LCNI-5      MALAWI       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5      MALAWI       1                    0                  0.1807699    0.0160186    0.3455212
6-12 months    kiGH5241-JiVitA-3     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3     BANGLADESH   1                    0                 -0.0182073   -0.0356206   -0.0007941
6-12 months    kiGH5241-JiVitA-4     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4     BANGLADESH   1                    0                 -0.0057984   -0.0336625    0.0220657
12-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    0                 -0.0215713   -0.0567370    0.0135943
12-24 months   ki0047075b-MAL-ED     BRAZIL       0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED     BRAZIL       1                    0                 -0.0397275   -0.1429973    0.0635422
12-24 months   ki0047075b-MAL-ED     INDIA        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED     INDIA        1                    0                 -0.1504253   -0.2166110   -0.0842397
12-24 months   ki0047075b-MAL-ED     NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED     NEPAL        1                    0                  0.0161857   -0.0322070    0.0645784
12-24 months   ki0047075b-MAL-ED     PERU         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED     PERU         1                    0                 -0.0278913   -0.0829082    0.0271255
12-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    0                 -0.0155228   -0.0422887    0.0112430
12-24 months   ki1101329-Keneba      GAMBIA       0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1101329-Keneba      GAMBIA       1                    0                 -0.0018650   -0.0264984    0.0227685
12-24 months   ki1113344-GMS-Nepal   NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal   NEPAL        1                    0                 -0.0018788   -0.0455305    0.0417730
12-24 months   ki1148112-LCNI-5      MALAWI       0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5      MALAWI       1                    0                 -0.0722400   -0.1610902    0.0166103
12-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    0                 -0.0136161   -0.0283159    0.0010837
12-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    0                 -0.0167739   -0.0297411   -0.0038067
