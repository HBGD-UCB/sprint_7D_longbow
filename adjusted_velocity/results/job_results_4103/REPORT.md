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

**Intervention Variable:** exclfeed3

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

agecat         studyid                    country                        exclfeed3    n_cell       n
-------------  -------------------------  -----------------------------  ----------  -------  ------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0                66     239
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1               173     239
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0               113     180
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                67     180
0-3 months     ki0047075b-MAL-ED          INDIA                          0                77     199
0-3 months     ki0047075b-MAL-ED          INDIA                          1               122     199
0-3 months     ki0047075b-MAL-ED          NEPAL                          0               112     175
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                63     175
0-3 months     ki0047075b-MAL-ED          PERU                           0               203     268
0-3 months     ki0047075b-MAL-ED          PERU                           1                65     268
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0               195     226
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                31     226
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               164     224
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                60     224
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                 0       4
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                 4       4
0-3 months     ki1000108-IRC              INDIA                          0                10      10
0-3 months     ki1000108-IRC              INDIA                          1                 0      10
0-3 months     ki1000109-EE               PAKISTAN                       0                32     592
0-3 months     ki1000109-EE               PAKISTAN                       1               560     592
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          0                19     398
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1               379     398
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0               188     634
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1               446     634
0-3 months     ki1101329-Keneba           GAMBIA                         0               151    1175
0-3 months     ki1101329-Keneba           GAMBIA                         1              1024    1175
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0              4260   39314
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1             35054   39314
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                20     242
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1               222     242
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                62     227
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1               165     227
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0               127     208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                81     208
3-6 months     ki0047075b-MAL-ED          INDIA                          0                89     229
3-6 months     ki0047075b-MAL-ED          INDIA                          1               140     229
3-6 months     ki0047075b-MAL-ED          NEPAL                          0               148     232
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                84     232
3-6 months     ki0047075b-MAL-ED          PERU                           0               199     265
3-6 months     ki0047075b-MAL-ED          PERU                           1                66     265
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0               204     235
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                31     235
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               167     233
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                66     233
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      10
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                10      10
3-6 months     ki1000108-IRC              INDIA                          0                10      10
3-6 months     ki1000108-IRC              INDIA                          1                 0      10
3-6 months     ki1000109-EE               PAKISTAN                       0                44     660
3-6 months     ki1000109-EE               PAKISTAN                       1               616     660
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          0                18     379
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1               361     379
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0               170     574
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1               404     574
3-6 months     ki1101329-Keneba           GAMBIA                         0               151    1279
3-6 months     ki1101329-Keneba           GAMBIA                         1              1128    1279
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0               150     878
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1               728     878
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0              2364   24630
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1             22266   24630
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                 2      46
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                44      46
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     0                60     216
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1               156     216
6-12 months    ki0047075b-MAL-ED          BRAZIL                         0               116     194
6-12 months    ki0047075b-MAL-ED          BRAZIL                         1                78     194
6-12 months    ki0047075b-MAL-ED          INDIA                          0                90     223
6-12 months    ki0047075b-MAL-ED          INDIA                          1               133     223
6-12 months    ki0047075b-MAL-ED          NEPAL                          0               145     227
6-12 months    ki0047075b-MAL-ED          NEPAL                          1                82     227
6-12 months    ki0047075b-MAL-ED          PERU                           0               177     236
6-12 months    ki0047075b-MAL-ED          PERU                           1                59     236
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               196     226
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                30     226
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               158     217
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                59     217
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 0       9
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                 9       9
6-12 months    ki1000108-IRC              INDIA                          0                10      10
6-12 months    ki1000108-IRC              INDIA                          1                 0      10
6-12 months    ki1000109-EE               PAKISTAN                       0                 2       8
6-12 months    ki1000109-EE               PAKISTAN                       1                 6       8
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          0                15     347
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          1               332     347
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0               161     545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1               384     545
6-12 months    ki1101329-Keneba           GAMBIA                         0               127    1158
6-12 months    ki1101329-Keneba           GAMBIA                         1              1031    1158
6-12 months    ki1113344-GMS-Nepal        NEPAL                          0               130     786
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1               656     786
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     0              1832   19180
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1             17348   19180
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                 2      36
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                34      36
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                57     202
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1               145     202
12-24 months   ki0047075b-MAL-ED          BRAZIL                         0                95     165
12-24 months   ki0047075b-MAL-ED          BRAZIL                         1                70     165
12-24 months   ki0047075b-MAL-ED          INDIA                          0                91     223
12-24 months   ki0047075b-MAL-ED          INDIA                          1               132     223
12-24 months   ki0047075b-MAL-ED          NEPAL                          0               142     223
12-24 months   ki0047075b-MAL-ED          NEPAL                          1                81     223
12-24 months   ki0047075b-MAL-ED          PERU                           0               145     190
12-24 months   ki0047075b-MAL-ED          PERU                           1                45     190
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               198     224
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                26     224
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               148     203
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                55     203
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0       8
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 8       8
12-24 months   ki1000108-IRC              INDIA                          0                10      10
12-24 months   ki1000108-IRC              INDIA                          1                 0      10
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0               133     458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1               325     458
12-24 months   ki1101329-Keneba           GAMBIA                         0               115    1052
12-24 months   ki1101329-Keneba           GAMBIA                         1               937    1052
12-24 months   ki1113344-GMS-Nepal        NEPAL                          0               102     624
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1               522     624
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               946    9050
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              8104    9050
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                16     212
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               196     212


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
* agecat: 6-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-12 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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
![](/tmp/006f0de0-6717-408b-bff8-5d3f3c2cff47/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/006f0de0-6717-408b-bff8-5d3f3c2cff47/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     0                    NA                3.4408119   3.3334610   3.5481629
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     1                    NA                3.5892309   3.5151654   3.6632964
0-3 months     ki0047075b-MAL-ED         BRAZIL                         0                    NA                4.0571479   3.9318792   4.1824165
0-3 months     ki0047075b-MAL-ED         BRAZIL                         1                    NA                4.0405898   3.8874464   4.1937331
0-3 months     ki0047075b-MAL-ED         INDIA                          0                    NA                3.5046120   3.4106893   3.5985348
0-3 months     ki0047075b-MAL-ED         INDIA                          1                    NA                3.6070880   3.5185414   3.6956346
0-3 months     ki0047075b-MAL-ED         NEPAL                          0                    NA                3.8949063   3.8030320   3.9867806
0-3 months     ki0047075b-MAL-ED         NEPAL                          1                    NA                3.6884362   3.5850816   3.7917908
0-3 months     ki0047075b-MAL-ED         PERU                           0                    NA                3.3174138   3.2431517   3.3916760
0-3 months     ki0047075b-MAL-ED         PERU                           1                    NA                3.3155808   3.1935599   3.4376018
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                3.4314556   3.3321679   3.5307433
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                3.5217533   3.3784035   3.6651031
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                3.4272616   3.3343214   3.5202019
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                3.6263552   3.4874727   3.7652378
0-3 months     ki1000109-EE              PAKISTAN                       0                    NA                2.4191064   2.2299566   2.6082562
0-3 months     ki1000109-EE              PAKISTAN                       1                    NA                2.6532187   2.5666133   2.7398241
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          0                    NA                3.3456444   3.1318190   3.5594699
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          1                    NA                3.6148678   3.5481250   3.6816107
0-3 months     ki1017093b-PROVIDE        BANGLADESH                     0                    NA                3.4959149   3.4219294   3.5699004
0-3 months     ki1017093b-PROVIDE        BANGLADESH                     1                    NA                3.4771075   3.4343083   3.5199066
0-3 months     ki1101329-Keneba          GAMBIA                         0                    NA                3.2380350   3.1276788   3.3483911
0-3 months     ki1101329-Keneba          GAMBIA                         1                    NA                3.1449574   3.0911035   3.1988113
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                3.6608634   3.6375326   3.6841941
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                3.7289138   3.7182007   3.7396269
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                3.7145887   3.5215216   3.9076558
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                3.8052266   3.7072539   3.9031993
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     0                    NA                1.9920684   1.8936929   2.0904439
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     1                    NA                1.9111374   1.8547802   1.9674947
3-6 months     ki0047075b-MAL-ED         BRAZIL                         0                    NA                2.1126687   2.0085149   2.2168226
3-6 months     ki0047075b-MAL-ED         BRAZIL                         1                    NA                1.9412299   1.8301919   2.0522680
3-6 months     ki0047075b-MAL-ED         INDIA                          0                    NA                1.6370236   1.5567040   1.7173433
3-6 months     ki0047075b-MAL-ED         INDIA                          1                    NA                1.7452495   1.6799952   1.8105038
3-6 months     ki0047075b-MAL-ED         NEPAL                          0                    NA                2.1381499   2.0736461   2.2026536
3-6 months     ki0047075b-MAL-ED         NEPAL                          1                    NA                2.2368342   2.1653583   2.3083102
3-6 months     ki0047075b-MAL-ED         PERU                           0                    NA                2.0235195   1.9456377   2.1014013
3-6 months     ki0047075b-MAL-ED         PERU                           1                    NA                2.0104565   1.8967393   2.1241737
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                1.9651220   1.8764385   2.0538056
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                2.0481697   1.8564091   2.2399304
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                1.8582611   1.7778672   1.9386549
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                1.7466781   1.6119646   1.8813915
3-6 months     ki1000109-EE              PAKISTAN                       0                    NA                1.9408655   1.6912176   2.1905134
3-6 months     ki1000109-EE              PAKISTAN                       1                    NA                2.0312716   1.9688798   2.0936634
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          0                    NA                2.0822854   1.7186921   2.4458787
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          1                    NA                1.8962760   1.8165774   1.9759746
3-6 months     ki1017093b-PROVIDE        BANGLADESH                     0                    NA                1.8772309   1.8221295   1.9323322
3-6 months     ki1017093b-PROVIDE        BANGLADESH                     1                    NA                1.9611396   1.9235975   1.9986818
3-6 months     ki1101329-Keneba          GAMBIA                         0                    NA                1.9762860   1.8801382   2.0724339
3-6 months     ki1101329-Keneba          GAMBIA                         1                    NA                2.0004825   1.9570818   2.0438831
3-6 months     ki1113344-GMS-Nepal       NEPAL                          0                    NA                1.6553120   1.5707496   1.7398744
3-6 months     ki1113344-GMS-Nepal       NEPAL                          1                    NA                1.7196469   1.6757563   1.7635376
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                1.9607681   1.9362291   1.9853071
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                1.9114276   1.9006921   1.9221630
6-12 months    ki0047075b-MAL-ED         BANGLADESH                     0                    NA                1.1028607   1.0494850   1.1562363
6-12 months    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                1.1191048   1.0910254   1.1471841
6-12 months    ki0047075b-MAL-ED         BRAZIL                         0                    NA                1.4374007   1.3825980   1.4922035
6-12 months    ki0047075b-MAL-ED         BRAZIL                         1                    NA                1.4633030   1.4103036   1.5163025
6-12 months    ki0047075b-MAL-ED         INDIA                          0                    NA                1.2696769   1.2230717   1.3162821
6-12 months    ki0047075b-MAL-ED         INDIA                          1                    NA                1.1446079   1.1096746   1.1795412
6-12 months    ki0047075b-MAL-ED         NEPAL                          0                    NA                1.2025270   1.1715171   1.2335369
6-12 months    ki0047075b-MAL-ED         NEPAL                          1                    NA                1.0645841   1.0298522   1.0993160
6-12 months    ki0047075b-MAL-ED         PERU                           0                    NA                1.2112662   1.1730090   1.2495235
6-12 months    ki0047075b-MAL-ED         PERU                           1                    NA                1.2055446   1.1429567   1.2681326
6-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                1.1890945   1.1450944   1.2330946
6-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                1.2352456   1.1535480   1.3169432
6-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.9971976   0.9588884   1.0355067
6-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                1.0110189   0.9464129   1.0756249
6-12 months    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                1.2487052   1.1494601   1.3479504
6-12 months    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                1.0868835   1.0650458   1.1087212
6-12 months    ki1017093b-PROVIDE        BANGLADESH                     0                    NA                1.2890540   1.2597597   1.3183484
6-12 months    ki1017093b-PROVIDE        BANGLADESH                     1                    NA                1.1771697   1.1572903   1.1970492
6-12 months    ki1101329-Keneba          GAMBIA                         0                    NA                1.1819512   1.1410032   1.2228991
6-12 months    ki1101329-Keneba          GAMBIA                         1                    NA                1.1736865   1.1533146   1.1940583
6-12 months    ki1113344-GMS-Nepal       NEPAL                          0                    NA                1.1971575   1.1508598   1.2434553
6-12 months    ki1113344-GMS-Nepal       NEPAL                          1                    NA                1.1562094   1.1316498   1.1807690
6-12 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                1.0895622   1.0718341   1.1072902
6-12 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                1.1066167   1.0996106   1.1136227
12-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.8457663   0.8213939   0.8701388
12-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.8448054   0.8259931   0.8636178
12-24 months   ki0047075b-MAL-ED         BRAZIL                         0                    NA                1.1279869   1.0839085   1.1720653
12-24 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                1.2362824   1.1746794   1.2978855
12-24 months   ki0047075b-MAL-ED         INDIA                          0                    NA                0.9170853   0.8932148   0.9409557
12-24 months   ki0047075b-MAL-ED         INDIA                          1                    NA                0.8563277   0.8334353   0.8792201
12-24 months   ki0047075b-MAL-ED         NEPAL                          0                    NA                0.8467903   0.8271798   0.8664008
12-24 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                0.8106202   0.7892477   0.8319927
12-24 months   ki0047075b-MAL-ED         PERU                           0                    NA                0.8510748   0.8285437   0.8736058
12-24 months   ki0047075b-MAL-ED         PERU                           1                    NA                0.8363860   0.8078679   0.8649041
12-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                0.8730400   0.8487293   0.8973508
12-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                0.8564424   0.7998013   0.9130835
12-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7777275   0.7491251   0.8063300
12-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7307798   0.6905904   0.7709692
12-24 months   ki1017093b-PROVIDE        BANGLADESH                     0                    NA                0.9068154   0.8891643   0.9244665
12-24 months   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                0.8613870   0.8479360   0.8748381
12-24 months   ki1101329-Keneba          GAMBIA                         0                    NA                0.8691397   0.8494503   0.8888291
12-24 months   ki1101329-Keneba          GAMBIA                         1                    NA                0.8476545   0.8359556   0.8593533
12-24 months   ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.8196559   0.7851945   0.8541172
12-24 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.8397244   0.8210218   0.8584270
12-24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                0.8099694   0.7994678   0.8204711
12-24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                0.7938674   0.7883143   0.7994205
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                0.8286315   0.7683727   0.8888902
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                0.8508659   0.8271451   0.8745867


### Parameter: E(Y)


agecat         studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                3.5678222   3.5043711   3.6312732
0-3 months     ki0047075b-MAL-ED         BRAZIL                         NA                   NA                4.0509714   3.9492443   4.1526985
0-3 months     ki0047075b-MAL-ED         INDIA                          NA                   NA                3.5659922   3.4894688   3.6425155
0-3 months     ki0047075b-MAL-ED         NEPAL                          NA                   NA                3.8204935   3.7444190   3.8965681
0-3 months     ki0047075b-MAL-ED         PERU                           NA                   NA                3.3169678   3.2532502   3.3806854
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                3.4449056   3.3547788   3.5350324
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                3.4805903   3.4021811   3.5589994
0-3 months     ki1000109-EE              PAKISTAN                       NA                   NA                2.6551376   2.5714235   2.7388517
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                3.6020442   3.5415582   3.6625301
0-3 months     ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                3.4826706   3.4434873   3.5218539
0-3 months     ki1101329-Keneba          GAMBIA                         NA                   NA                3.1369695   3.0866093   3.1873298
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                3.7192245   3.7088675   3.7295816
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                3.7971810   3.7001091   3.8942529
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                1.9332346   1.8839439   1.9825252
3-6 months     ki0047075b-MAL-ED         BRAZIL                         NA                   NA                2.1478156   2.0686357   2.2269955
3-6 months     ki0047075b-MAL-ED         INDIA                          NA                   NA                1.8837264   1.8224393   1.9450135
3-6 months     ki0047075b-MAL-ED         NEPAL                          NA                   NA                1.9656096   1.9095163   2.0217030
3-6 months     ki0047075b-MAL-ED         PERU                           NA                   NA                2.0203240   1.9541588   2.0864891
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                1.9760831   1.8948819   2.0572842
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.8266539   1.7572406   1.8960671
3-6 months     ki1000109-EE              PAKISTAN                       NA                   NA                2.0252445   1.9646316   2.0858574
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                1.9051097   1.8384221   1.9717974
3-6 months     ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                1.9654454   1.9303798   2.0005110
3-6 months     ki1101329-Keneba          GAMBIA                         NA                   NA                1.9933115   1.9522179   2.0344050
3-6 months     ki1113344-GMS-Nepal       NEPAL                          NA                   NA                1.7053522   1.6641174   1.7465871
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                1.9187609   1.9082629   1.9292589
6-12 months    ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                1.1145925   1.0894523   1.1397328
6-12 months    ki0047075b-MAL-ED         BRAZIL                         NA                   NA                1.3863464   1.3400121   1.4326807
6-12 months    ki0047075b-MAL-ED         INDIA                          NA                   NA                1.1209771   1.0924290   1.1495253
6-12 months    ki0047075b-MAL-ED         NEPAL                          NA                   NA                1.2232375   1.1973421   1.2491328
6-12 months    ki0047075b-MAL-ED         PERU                           NA                   NA                1.2098360   1.1769906   1.2426814
6-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                1.1945255   1.1527026   1.2363484
6-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.0005581   0.9627597   1.0383564
6-12 months    ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                1.0940274   1.0717512   1.1163036
6-12 months    ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                1.1731762   1.1558671   1.1904853
6-12 months    ki1101329-Keneba          GAMBIA                         NA                   NA                1.1743627   1.1552923   1.1934330
6-12 months    ki1113344-GMS-Nepal       NEPAL                          NA                   NA                1.1629820   1.1410485   1.1849155
6-12 months    kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                1.1059670   1.0990549   1.1128791
12-24 months   ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.8451111   0.8289738   0.8612484
12-24 months   ki0047075b-MAL-ED         BRAZIL                         NA                   NA                0.9816245   0.9508764   1.0123725
12-24 months   ki0047075b-MAL-ED         INDIA                          NA                   NA                0.8811230   0.8637093   0.8985366
12-24 months   ki0047075b-MAL-ED         NEPAL                          NA                   NA                0.8619667   0.8466720   0.8772613
12-24 months   ki0047075b-MAL-ED         PERU                           NA                   NA                0.8468739   0.8260907   0.8676570
12-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                0.8711135   0.8486025   0.8936245
12-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7650096   0.7411815   0.7888377
12-24 months   ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                0.8575519   0.8455586   0.8695452
12-24 months   ki1101329-Keneba          GAMBIA                         NA                   NA                0.8462250   0.8351275   0.8573225
12-24 months   ki1113344-GMS-Nepal       NEPAL                          NA                   NA                0.8364607   0.8197402   0.8531812
12-24 months   kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                0.7963475   0.7909428   0.8017521
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                0.8491878   0.8267526   0.8716231


### Parameter: ATE


agecat         studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     1                    0                  0.1484190    0.0189681    0.2778698
0-3 months     ki0047075b-MAL-ED         BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         BRAZIL                         1                    0                 -0.0165581   -0.2057966    0.1726805
0-3 months     ki0047075b-MAL-ED         INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         INDIA                          1                    0                  0.1024760   -0.0057768    0.2107287
0-3 months     ki0047075b-MAL-ED         NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         NEPAL                          1                    0                 -0.2064701   -0.3364982   -0.0764420
0-3 months     ki0047075b-MAL-ED         PERU                           0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         PERU                           1                    0                 -0.0018330   -0.1442947    0.1406286
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0                  0.0902977   -0.0772760    0.2578715
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0                  0.1990936    0.0319821    0.3662051
0-3 months     ki1000109-EE              PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE              PAKISTAN                       1                    0                  0.2341123    0.0274097    0.4408149
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          1                    0                  0.2692234    0.0223147    0.5161320
0-3 months     ki1017093b-PROVIDE        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE        BANGLADESH                     1                    0                 -0.0188074   -0.1007609    0.0631461
0-3 months     ki1101329-Keneba          GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba          GAMBIA                         1                    0                 -0.0930775   -0.2142467    0.0280916
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     1                    0                  0.0680504    0.0434490    0.0926518
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     1                    0                  0.0906378   -0.0963403    0.2776160
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     1                    0                 -0.0809309   -0.1941599    0.0322980
3-6 months     ki0047075b-MAL-ED         BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         BRAZIL                         1                    0                 -0.1714388   -0.3249484   -0.0179291
3-6 months     ki0047075b-MAL-ED         INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         INDIA                          1                    0                  0.1082259    0.0149525    0.2014993
3-6 months     ki0047075b-MAL-ED         NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         NEPAL                          1                    0                  0.0986844    0.0003365    0.1970322
3-6 months     ki0047075b-MAL-ED         PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         PERU                           1                    0                 -0.0130630   -0.1479898    0.1218638
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0                  0.0830477   -0.1279779    0.2940733
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.1115830   -0.2684615    0.0452956
3-6 months     ki1000109-EE              PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE              PAKISTAN                       1                    0                  0.0904061   -0.1669208    0.3477329
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          1                    0                 -0.1860094   -0.5898673    0.2178485
3-6 months     ki1017093b-PROVIDE        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE        BANGLADESH                     1                    0                  0.0839088    0.0241382    0.1436793
3-6 months     ki1101329-Keneba          GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba          GAMBIA                         1                    0                  0.0241964   -0.0779804    0.1263732
3-6 months     ki1113344-GMS-Nepal       NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal       NEPAL                          1                    0                  0.0643349   -0.0284077    0.1570775
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     1                    0                 -0.0493406   -0.0752619   -0.0234192
6-12 months    ki0047075b-MAL-ED         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         BANGLADESH                     1                    0                  0.0162441   -0.0440668    0.0765550
6-12 months    ki0047075b-MAL-ED         BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         BRAZIL                         1                    0                  0.0259023   -0.0396845    0.0914891
6-12 months    ki0047075b-MAL-ED         INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         INDIA                          1                    0                 -0.1250690   -0.1835900   -0.0665480
6-12 months    ki0047075b-MAL-ED         NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         NEPAL                          1                    0                 -0.1379429   -0.1863701   -0.0895158
6-12 months    ki0047075b-MAL-ED         PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         PERU                           1                    0                 -0.0057216   -0.0786914    0.0672481
6-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0                  0.0461511   -0.0386553    0.1309574
6-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0138213   -0.0518101    0.0794528
6-12 months    ki1000304b-SAS-CompFeed   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed   INDIA                          1                    0                 -0.1618217   -0.2609981   -0.0626453
6-12 months    ki1017093b-PROVIDE        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE        BANGLADESH                     1                    0                 -0.1118843   -0.1476076   -0.0761610
6-12 months    ki1101329-Keneba          GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1101329-Keneba          GAMBIA                         1                    0                 -0.0082647   -0.0525670    0.0360376
6-12 months    ki1113344-GMS-Nepal       NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal       NEPAL                          1                    0                 -0.0409481   -0.0933550    0.0114587
6-12 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    0                  0.0170545   -0.0010706    0.0351797
12-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    0                 -0.0009609   -0.0295210    0.0275993
12-24 months   ki0047075b-MAL-ED         BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         BRAZIL                         1                    0                  0.1082955    0.0216230    0.1949680
12-24 months   ki0047075b-MAL-ED         INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         INDIA                          1                    0                 -0.0607576   -0.0933202   -0.0281950
12-24 months   ki0047075b-MAL-ED         NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         NEPAL                          1                    0                 -0.0361701   -0.0657190   -0.0066213
12-24 months   ki0047075b-MAL-ED         PERU                           0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         PERU                           1                    0                 -0.0146888   -0.0460999    0.0167224
12-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0                 -0.0165976   -0.0781419    0.0449467
12-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0469477   -0.0959842    0.0020888
12-24 months   ki1017093b-PROVIDE        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE        BANGLADESH                     1                    0                 -0.0454283   -0.0651861   -0.0256706
12-24 months   ki1101329-Keneba          GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1101329-Keneba          GAMBIA                         1                    0                 -0.0214853   -0.0433038    0.0003332
12-24 months   ki1113344-GMS-Nepal       NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal       NEPAL                          1                    0                  0.0200685   -0.0189731    0.0591102
12-24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                    0                 -0.0161020   -0.0276936   -0.0045103
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    0                  0.0222345   -0.0424242    0.0868932
