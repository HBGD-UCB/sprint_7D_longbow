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
![](/tmp/269481d2-d2fd-4082-94d6-95e5ade5053d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/269481d2-d2fd-4082-94d6-95e5ade5053d/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH   0                    NA                3.5671420   3.4978827   3.6364014
0-3 months     ki0047075b-MAL-ED     BANGLADESH   1                    NA                3.9343061   3.8188198   4.0497924
0-3 months     ki0047075b-MAL-ED     BRAZIL       0                    NA                4.0265001   3.9225206   4.1304797
0-3 months     ki0047075b-MAL-ED     BRAZIL       1                    NA                4.3408842   3.9723613   4.7094072
0-3 months     ki0047075b-MAL-ED     INDIA        0                    NA                3.5639428   3.4872597   3.6406259
0-3 months     ki0047075b-MAL-ED     INDIA        1                    NA                3.6269354   3.0524083   4.2014624
0-3 months     ki0047075b-MAL-ED     NEPAL        0                    NA                3.8278737   3.7495779   3.9061694
0-3 months     ki0047075b-MAL-ED     NEPAL        1                    NA                3.6189014   3.5251896   3.7126132
0-3 months     ki0047075b-MAL-ED     PERU         0                    NA                3.3042420   3.2380744   3.3704096
0-3 months     ki0047075b-MAL-ED     PERU         1                    NA                3.3264825   3.1986907   3.4542744
0-3 months     ki1000109-EE          PAKISTAN     0                    NA                2.7377181   2.6318670   2.8435692
0-3 months     ki1000109-EE          PAKISTAN     1                    NA                2.6535731   2.5468573   2.7602889
0-3 months     ki1017093b-PROVIDE    BANGLADESH   0                    NA                3.4862581   3.4388566   3.5336596
0-3 months     ki1017093b-PROVIDE    BANGLADESH   1                    NA                3.4685390   3.4016139   3.5354641
0-3 months     ki1101329-Keneba      GAMBIA       0                    NA                3.1349718   3.0737648   3.1961789
0-3 months     ki1101329-Keneba      GAMBIA       1                    NA                3.1646048   3.0755742   3.2536354
0-3 months     kiGH5241-JiVitA-3     BANGLADESH   0                    NA                3.6411406   3.6212787   3.6610024
0-3 months     kiGH5241-JiVitA-3     BANGLADESH   1                    NA                3.7125582   3.7002701   3.7248463
0-3 months     kiGH5241-JiVitA-4     BANGLADESH   0                    NA                3.4732606   3.4074909   3.5390304
0-3 months     kiGH5241-JiVitA-4     BANGLADESH   1                    NA                3.6509385   3.6180169   3.6838601
3-6 months     ki0047075b-MAL-ED     BANGLADESH   0                    NA                1.9447684   1.8947387   1.9947981
3-6 months     ki0047075b-MAL-ED     BANGLADESH   1                    NA                1.8821104   1.7997481   1.9644726
3-6 months     ki0047075b-MAL-ED     BRAZIL       0                    NA                2.1448642   2.0619525   2.2277759
3-6 months     ki0047075b-MAL-ED     BRAZIL       1                    NA                2.3521707   2.1137425   2.5905989
3-6 months     ki0047075b-MAL-ED     INDIA        0                    NA                1.8806029   1.8176929   1.9435129
3-6 months     ki0047075b-MAL-ED     INDIA        1                    NA                1.9827867   1.7992148   2.1663585
3-6 months     ki0047075b-MAL-ED     NEPAL        0                    NA                1.9639347   1.9063088   2.0215606
3-6 months     ki0047075b-MAL-ED     NEPAL        1                    NA                2.0332816   1.8324731   2.2340901
3-6 months     ki0047075b-MAL-ED     PERU         0                    NA                2.0210616   1.9526886   2.0894347
3-6 months     ki0047075b-MAL-ED     PERU         1                    NA                2.1874817   2.0152836   2.3596798
3-6 months     ki1000109-EE          PAKISTAN     0                    NA                2.0441924   1.9512516   2.1371332
3-6 months     ki1000109-EE          PAKISTAN     1                    NA                1.9795651   1.9089861   2.0501442
3-6 months     ki1017093b-PROVIDE    BANGLADESH   0                    NA                1.9606005   1.9222423   1.9989586
3-6 months     ki1017093b-PROVIDE    BANGLADESH   1                    NA                1.9913228   1.9362492   2.0463963
3-6 months     ki1101329-Keneba      GAMBIA       0                    NA                1.9884673   1.9406465   2.0362882
3-6 months     ki1101329-Keneba      GAMBIA       1                    NA                1.8477105   1.7831277   1.9122933
3-6 months     ki1113344-GMS-Nepal   NEPAL        0                    NA                1.6351388   1.5614428   1.7088347
3-6 months     ki1113344-GMS-Nepal   NEPAL        1                    NA                1.7098145   1.6676804   1.7519487
3-6 months     kiGH5241-JiVitA-3     BANGLADESH   0                    NA                1.9244428   1.9032692   1.9456163
3-6 months     kiGH5241-JiVitA-3     BANGLADESH   1                    NA                1.9001381   1.8877597   1.9125164
3-6 months     kiGH5241-JiVitA-4     BANGLADESH   0                    NA                1.9372665   1.8826360   1.9918969
3-6 months     kiGH5241-JiVitA-4     BANGLADESH   1                    NA                1.8826290   1.8500970   1.9151610
6-12 months    ki0047075b-MAL-ED     BANGLADESH   0                    NA                1.1276405   1.0986263   1.1566546
6-12 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                1.1234210   1.0839054   1.1629366
6-12 months    ki0047075b-MAL-ED     BRAZIL       0                    NA                1.3949185   1.3460932   1.4437439
6-12 months    ki0047075b-MAL-ED     BRAZIL       1                    NA                1.2970961   1.1588077   1.4353845
6-12 months    ki0047075b-MAL-ED     INDIA        0                    NA                1.1236611   1.0949051   1.1524171
6-12 months    ki0047075b-MAL-ED     INDIA        1                    NA                1.0263951   0.8582156   1.1945746
6-12 months    ki0047075b-MAL-ED     NEPAL        0                    NA                1.2237838   1.1974457   1.2501218
6-12 months    ki0047075b-MAL-ED     NEPAL        1                    NA                1.0953764   1.0454993   1.1452536
6-12 months    ki0047075b-MAL-ED     PERU         0                    NA                1.2070387   1.1731888   1.2408886
6-12 months    ki0047075b-MAL-ED     PERU         1                    NA                1.2067767   1.1274210   1.2861325
6-12 months    ki1017093b-PROVIDE    BANGLADESH   0                    NA                1.1782921   1.1587790   1.1978051
6-12 months    ki1017093b-PROVIDE    BANGLADESH   1                    NA                1.1563382   1.1191743   1.1935020
6-12 months    ki1101329-Keneba      GAMBIA       0                    NA                1.1704166   1.1484780   1.1923551
6-12 months    ki1101329-Keneba      GAMBIA       1                    NA                1.2126563   1.1806990   1.2446136
6-12 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                1.2479255   1.2108442   1.2850069
6-12 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                1.1668591   1.1457558   1.1879624
6-12 months    ki1148112-LCNI-5      MALAWI       0                    NA                1.1310258   1.0128350   1.2492166
6-12 months    ki1148112-LCNI-5      MALAWI       1                    NA                1.1973360   1.1042445   1.2904276
6-12 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                1.1264727   1.1122959   1.1406496
6-12 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                1.1104867   1.1027818   1.1181916
6-12 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                1.1788562   1.1575876   1.2001248
6-12 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                1.1995367   1.1870187   1.2120547
12-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.8523752   0.8343381   0.8704122
12-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.8315064   0.8057331   0.8572796
12-24 months   ki0047075b-MAL-ED     BRAZIL       0                    NA                0.9854774   0.9531588   1.0177960
12-24 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                0.9457441   0.8476557   1.0438324
12-24 months   ki0047075b-MAL-ED     INDIA        0                    NA                0.8843844   0.8669788   0.9017899
12-24 months   ki0047075b-MAL-ED     INDIA        1                    NA                0.7339590   0.6701030   0.7978150
12-24 months   ki0047075b-MAL-ED     NEPAL        0                    NA                0.8600092   0.8440169   0.8760015
12-24 months   ki0047075b-MAL-ED     NEPAL        1                    NA                0.7860137   0.7665675   0.8054599
12-24 months   ki0047075b-MAL-ED     PERU         0                    NA                0.8479516   0.8262270   0.8696762
12-24 months   ki0047075b-MAL-ED     PERU         1                    NA                0.8200603   0.7695143   0.8706063
12-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.8617305   0.8476439   0.8758172
12-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.8462108   0.8234563   0.8689653
12-24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.8505041   0.8376292   0.8633790
12-24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.8771378   0.8590297   0.8952459
12-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.8168559   0.7916136   0.8420983
12-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.8337730   0.8170004   0.8505457
12-24 months   ki1148112-LCNI-5      MALAWI       0                    NA                0.9052456   0.8493606   0.9611306
12-24 months   ki1148112-LCNI-5      MALAWI       1                    NA                0.8330056   0.7639315   0.9020797
12-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.8059207   0.7946696   0.8171719
12-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.7930937   0.7868893   0.7992981
12-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.8660886   0.8563084   0.8758688
12-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.8450606   0.8387300   0.8513911


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
0-3 months     ki0047075b-MAL-ED     BANGLADESH   1                    0                  0.3671641    0.2329628    0.5013653
0-3 months     ki0047075b-MAL-ED     BRAZIL       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     BRAZIL       1                    0                  0.3143841   -0.0686533    0.6974215
0-3 months     ki0047075b-MAL-ED     INDIA        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     INDIA        1                    0                  0.0629925   -0.5166294    0.6426145
0-3 months     ki0047075b-MAL-ED     NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     NEPAL        1                    0                 -0.2089723   -0.3229974   -0.0949471
0-3 months     ki0047075b-MAL-ED     PERU         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     PERU         1                    0                  0.0222405   -0.1218164    0.1662975
0-3 months     ki1000109-EE          PAKISTAN     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE          PAKISTAN     1                    0                 -0.0841450   -0.2314244    0.0631344
0-3 months     ki1017093b-PROVIDE    BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE    BANGLADESH   1                    0                 -0.0177191   -0.0997196    0.0642814
0-3 months     ki1101329-Keneba      GAMBIA       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba      GAMBIA       1                    0                  0.0296330   -0.0769413    0.1362073
0-3 months     kiGH5241-JiVitA-3     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3     BANGLADESH   1                    0                  0.0714177    0.0499413    0.0928940
0-3 months     kiGH5241-JiVitA-4     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4     BANGLADESH   1                    0                  0.1776779    0.1042220    0.2511338
3-6 months     ki0047075b-MAL-ED     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     BANGLADESH   1                    0                 -0.0626581   -0.1487837    0.0234676
3-6 months     ki0047075b-MAL-ED     BRAZIL       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     BRAZIL       1                    0                  0.2073065   -0.0454492    0.4600623
3-6 months     ki0047075b-MAL-ED     INDIA        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     INDIA        1                    0                  0.1021838   -0.0918686    0.2962361
3-6 months     ki0047075b-MAL-ED     NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     NEPAL        1                    0                  0.0693469   -0.1381201    0.2768139
3-6 months     ki0047075b-MAL-ED     PERU         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     PERU         1                    0                  0.1664201   -0.0184656    0.3513058
3-6 months     ki1000109-EE          PAKISTAN     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE          PAKISTAN     1                    0                 -0.0646273   -0.1809350    0.0516805
3-6 months     ki1017093b-PROVIDE    BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE    BANGLADESH   1                    0                  0.0307223   -0.0290900    0.0905346
3-6 months     ki1101329-Keneba      GAMBIA       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba      GAMBIA       1                    0                 -0.1407568   -0.2167263   -0.0647874
3-6 months     ki1113344-GMS-Nepal   NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal   NEPAL        1                    0                  0.0746758   -0.0071858    0.1565374
3-6 months     kiGH5241-JiVitA-3     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3     BANGLADESH   1                    0                 -0.0243047   -0.0476431   -0.0009664
3-6 months     kiGH5241-JiVitA-4     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4     BANGLADESH   1                    0                 -0.0546374   -0.1160694    0.0067946
6-12 months    ki0047075b-MAL-ED     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED     BANGLADESH   1                    0                 -0.0042195   -0.0520901    0.0436512
6-12 months    ki0047075b-MAL-ED     BRAZIL       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED     BRAZIL       1                    0                 -0.0978224   -0.2444707    0.0488259
6-12 months    ki0047075b-MAL-ED     INDIA        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED     INDIA        1                    0                 -0.0972660   -0.2678862    0.0733542
6-12 months    ki0047075b-MAL-ED     NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED     NEPAL        1                    0                 -0.1284073   -0.1833515   -0.0734632
6-12 months    ki0047075b-MAL-ED     PERU         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED     PERU         1                    0                 -0.0002620   -0.0863907    0.0858668
6-12 months    ki1017093b-PROVIDE    BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE    BANGLADESH   1                    0                 -0.0219539   -0.0639279    0.0200201
6-12 months    ki1101329-Keneba      GAMBIA       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1101329-Keneba      GAMBIA       1                    0                  0.0422398    0.0050719    0.0794076
6-12 months    ki1113344-GMS-Nepal   NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal   NEPAL        1                    0                 -0.0810665   -0.1238058   -0.0383272
6-12 months    ki1148112-LCNI-5      MALAWI       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5      MALAWI       1                    0                  0.0663102   -0.0864628    0.2190832
6-12 months    kiGH5241-JiVitA-3     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3     BANGLADESH   1                    0                 -0.0159860   -0.0311861   -0.0007859
6-12 months    kiGH5241-JiVitA-4     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4     BANGLADESH   1                    0                  0.0206805   -0.0030906    0.0444516
12-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    0                 -0.0208688   -0.0500070    0.0082693
12-24 months   ki0047075b-MAL-ED     BRAZIL       0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED     BRAZIL       1                    0                 -0.0397333   -0.1430092    0.0635426
12-24 months   ki0047075b-MAL-ED     INDIA        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED     INDIA        1                    0                 -0.1504253   -0.2166110   -0.0842397
12-24 months   ki0047075b-MAL-ED     NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED     NEPAL        1                    0                 -0.0739955   -0.0992138   -0.0487772
12-24 months   ki0047075b-MAL-ED     PERU         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED     PERU         1                    0                 -0.0278913   -0.0829082    0.0271255
12-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    0                 -0.0155197   -0.0422793    0.0112398
12-24 months   ki1101329-Keneba      GAMBIA       0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1101329-Keneba      GAMBIA       1                    0                  0.0266337    0.0053815    0.0478859
12-24 months   ki1113344-GMS-Nepal   NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal   NEPAL        1                    0                  0.0169171   -0.0131285    0.0469628
12-24 months   ki1148112-LCNI-5      MALAWI       0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5      MALAWI       1                    0                 -0.0722400   -0.1610902    0.0166103
12-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    0                 -0.0128270   -0.0251687   -0.0004853
12-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    0                 -0.0210281   -0.0320874   -0.0099688
