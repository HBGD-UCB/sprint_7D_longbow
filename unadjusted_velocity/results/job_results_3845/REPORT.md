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

unadjusted

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







# Results Detail

## Results Plots
![](/tmp/2cecf3a7-04f1-4e3f-87f6-71ed61b275e9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/2cecf3a7-04f1-4e3f-87f6-71ed61b275e9/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     0                    NA                3.4939621   3.3772023   3.6107220
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     1                    NA                3.5960000   3.5209293   3.6710706
0-3 months     ki0047075b-MAL-ED         BRAZIL                         0                    NA                4.0605307   3.9304766   4.1905849
0-3 months     ki0047075b-MAL-ED         BRAZIL                         1                    NA                4.0348489   3.8718920   4.1978058
0-3 months     ki0047075b-MAL-ED         INDIA                          0                    NA                3.4780142   3.3617057   3.5943227
0-3 months     ki0047075b-MAL-ED         INDIA                          1                    NA                3.6215193   3.5218229   3.7212156
0-3 months     ki0047075b-MAL-ED         NEPAL                          0                    NA                3.9012625   3.8039769   3.9985481
0-3 months     ki0047075b-MAL-ED         NEPAL                          1                    NA                3.6769043   3.5639118   3.7898967
0-3 months     ki0047075b-MAL-ED         PERU                           0                    NA                3.3170834   3.2427136   3.3914532
0-3 months     ki0047075b-MAL-ED         PERU                           1                    NA                3.3166066   3.1938385   3.4393748
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                3.4307121   3.3295783   3.5318459
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                3.5341875   3.3733635   3.6950116
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                3.4272616   3.3343214   3.5202019
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                3.6263552   3.4874727   3.7652378
0-3 months     ki1000109-EE              PAKISTAN                       0                    NA                2.6781737   2.4165257   2.9398218
0-3 months     ki1000109-EE              PAKISTAN                       1                    NA                2.6538213   2.5665982   2.7410444
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          0                    NA                3.3596137   3.1002455   3.6189819
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          1                    NA                3.6141977   3.5474566   3.6809387
0-3 months     ki1017093b-PROVIDE        BANGLADESH                     0                    NA                3.4972881   3.4163393   3.5782370
0-3 months     ki1017093b-PROVIDE        BANGLADESH                     1                    NA                3.4765089   3.4324967   3.5205212
0-3 months     ki1101329-Keneba          GAMBIA                         0                    NA                3.1076406   2.9743388   3.2409425
0-3 months     ki1101329-Keneba          GAMBIA                         1                    NA                3.1412944   3.0869590   3.1956298
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                3.6668107   3.6348831   3.6987384
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                3.7255942   3.7147102   3.7364782
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                3.6400973   3.3271866   3.9530079
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                3.8113327   3.7093184   3.9133470
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     0                    NA                1.9924663   1.8939149   2.0910177
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     1                    NA                1.9109778   1.8545444   1.9674112
3-6 months     ki0047075b-MAL-ED         BRAZIL                         0                    NA                2.1765937   2.0705503   2.2826371
3-6 months     ki0047075b-MAL-ED         BRAZIL                         1                    NA                2.1026943   1.9863397   2.2190489
3-6 months     ki0047075b-MAL-ED         INDIA                          0                    NA                1.9200400   1.8155582   2.0245218
3-6 months     ki0047075b-MAL-ED         INDIA                          1                    NA                1.8606414   1.7858067   1.9354760
3-6 months     ki0047075b-MAL-ED         NEPAL                          0                    NA                2.0174668   1.9468227   2.0881110
3-6 months     ki0047075b-MAL-ED         NEPAL                          1                    NA                1.8742422   1.7853141   1.9631702
3-6 months     ki0047075b-MAL-ED         PERU                           0                    NA                2.0234170   1.9446823   2.1021518
3-6 months     ki0047075b-MAL-ED         PERU                           1                    NA                2.0109980   1.8917807   2.1302152
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                1.9646380   1.8758346   2.0534414
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                2.0513990   1.8601052   2.2426929
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                1.8582611   1.7778672   1.9386549
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                1.7466781   1.6119646   1.8813915
3-6 months     ki1000109-EE              PAKISTAN                       0                    NA                1.9408762   1.6912610   2.1904915
3-6 months     ki1000109-EE              PAKISTAN                       1                    NA                2.0312708   1.9688785   2.0936631
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          0                    NA                2.0877888   1.7145949   2.4609828
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          1                    NA                1.8960011   1.8158961   1.9761060
3-6 months     ki1017093b-PROVIDE        BANGLADESH                     0                    NA                1.9446577   1.8751492   2.0141661
3-6 months     ki1017093b-PROVIDE        BANGLADESH                     1                    NA                1.9741927   1.9338916   2.0144938
3-6 months     ki1101329-Keneba          GAMBIA                         0                    NA                1.9454199   1.8331490   2.0576909
3-6 months     ki1101329-Keneba          GAMBIA                         1                    NA                1.9997225   1.9556318   2.0438131
3-6 months     ki1113344-GMS-Nepal       NEPAL                          0                    NA                1.6467525   1.5453471   1.7481578
3-6 months     ki1113344-GMS-Nepal       NEPAL                          1                    NA                1.7174264   1.6723975   1.7624552
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                2.0013920   1.9698042   2.0329798
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                1.9099879   1.8991842   1.9207915
6-12 months    ki0047075b-MAL-ED         BANGLADESH                     0                    NA                1.1028607   1.0494850   1.1562363
6-12 months    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                1.1191048   1.0910254   1.1471841
6-12 months    ki0047075b-MAL-ED         BRAZIL                         0                    NA                1.3919862   1.3283178   1.4556547
6-12 months    ki0047075b-MAL-ED         BRAZIL                         1                    NA                1.3779590   1.3123135   1.4436045
6-12 months    ki0047075b-MAL-ED         INDIA                          0                    NA                1.1593708   1.1118763   1.2068653
6-12 months    ki0047075b-MAL-ED         INDIA                          1                    NA                1.0949964   1.0602150   1.1297778
6-12 months    ki0047075b-MAL-ED         NEPAL                          0                    NA                1.2413782   1.2085634   1.2741930
6-12 months    ki0047075b-MAL-ED         NEPAL                          1                    NA                1.1911592   1.1499762   1.2323423
6-12 months    ki0047075b-MAL-ED         PERU                           0                    NA                1.2117086   1.1734285   1.2499887
6-12 months    ki0047075b-MAL-ED         PERU                           1                    NA                1.2042182   1.1404212   1.2680152
6-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                1.1895322   1.1440477   1.2350167
6-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                1.2271483   1.1232179   1.3310787
6-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.9954721   0.9544061   1.0365381
6-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                1.0141781   0.9292311   1.0991251
6-12 months    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                1.2529335   1.1354314   1.3704355
6-12 months    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                1.0868479   1.0648417   1.1088542
6-12 months    ki1017093b-PROVIDE        BANGLADESH                     0                    NA                1.2001435   1.1672398   1.2330472
6-12 months    ki1017093b-PROVIDE        BANGLADESH                     1                    NA                1.1618696   1.1416496   1.1820896
6-12 months    ki1101329-Keneba          GAMBIA                         0                    NA                1.1788201   1.1319216   1.2257186
6-12 months    ki1101329-Keneba          GAMBIA                         1                    NA                1.1738136   1.1531881   1.1944391
6-12 months    ki1113344-GMS-Nepal       NEPAL                          0                    NA                1.1971476   1.1508458   1.2434494
6-12 months    ki1113344-GMS-Nepal       NEPAL                          1                    NA                1.1562114   1.1316513   1.1807714
6-12 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                1.1030056   1.0815300   1.1244811
6-12 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                1.1062797   1.0992184   1.1133411
12-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.8465622   0.8189862   0.8741383
12-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.8445407   0.8248467   0.8642346
12-24 months   ki0047075b-MAL-ED         BRAZIL                         0                    NA                0.9815061   0.9453455   1.0176667
12-24 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                0.9817851   0.9284500   1.0351202
12-24 months   ki0047075b-MAL-ED         INDIA                          0                    NA                0.9184359   0.8939829   0.9428890
12-24 months   ki0047075b-MAL-ED         INDIA                          1                    NA                0.8553996   0.8322942   0.8785051
12-24 months   ki0047075b-MAL-ED         NEPAL                          0                    NA                0.8632171   0.8431119   0.8833224
12-24 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                0.8597745   0.8367446   0.8828044
12-24 months   ki0047075b-MAL-ED         PERU                           0                    NA                0.8521492   0.8278345   0.8764640
12-24 months   ki0047075b-MAL-ED         PERU                           1                    NA                0.8298754   0.7907676   0.8689832
12-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                0.8731933   0.8488821   0.8975044
12-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                0.8552756   0.7978770   0.9126742
12-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7780353   0.7493299   0.8067407
12-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7299586   0.6893401   0.7705770
12-24 months   ki1017093b-PROVIDE        BANGLADESH                     0                    NA                0.8668295   0.8454120   0.8882469
12-24 months   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                0.8537553   0.8393245   0.8681860
12-24 months   ki1101329-Keneba          GAMBIA                         0                    NA                0.8372154   0.8077124   0.8667184
12-24 months   ki1101329-Keneba          GAMBIA                         1                    NA                0.8473308   0.8354110   0.8592506
12-24 months   ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.8190084   0.7840632   0.8539536
12-24 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.8398709   0.8211137   0.8586281
12-24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                0.8178193   0.8014828   0.8341558
12-24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                0.7938410   0.7882249   0.7994571
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                0.8286459   0.7683653   0.8889265
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                0.8508647   0.8271438   0.8745856


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
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     1                    0                  0.1020379   -0.0367730    0.2408488
0-3 months     ki0047075b-MAL-ED         BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         BRAZIL                         1                    0                 -0.0256818   -0.2341741    0.1828105
0-3 months     ki0047075b-MAL-ED         INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         INDIA                          1                    0                  0.1435051   -0.0096845    0.2966946
0-3 months     ki0047075b-MAL-ED         NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         NEPAL                          1                    0                 -0.2243582   -0.3734615   -0.0752550
0-3 months     ki0047075b-MAL-ED         PERU                           0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         PERU                           1                    0                 -0.0004768   -0.1440138    0.1430603
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0                  0.1034754   -0.0865046    0.2934555
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0                  0.1990936    0.0319821    0.3662051
0-3 months     ki1000109-EE              PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE              PAKISTAN                       1                    0                 -0.0243525   -0.3001560    0.2514511
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          1                    0                  0.2545840   -0.0371162    0.5462842
0-3 months     ki1017093b-PROVIDE        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE        BANGLADESH                     1                    0                 -0.0207792   -0.1129193    0.0713609
0-3 months     ki1101329-Keneba          GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba          GAMBIA                         1                    0                  0.0336537   -0.1102967    0.1776042
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     1                    0                  0.0587835    0.0252768    0.0922901
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     1                    0                  0.1712354   -0.1573817    0.4998526
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     1                    0                 -0.0814886   -0.1950540    0.0320769
3-6 months     ki0047075b-MAL-ED         BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         BRAZIL                         1                    0                 -0.0738994   -0.2313275    0.0835286
3-6 months     ki0047075b-MAL-ED         INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         INDIA                          1                    0                 -0.0593986   -0.1879158    0.0691186
3-6 months     ki0047075b-MAL-ED         NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         NEPAL                          1                    0                 -0.1432246   -0.2567975   -0.0296518
3-6 months     ki0047075b-MAL-ED         PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         PERU                           1                    0                 -0.0124191   -0.1552893    0.1304512
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0                  0.0867611   -0.1241403    0.2976625
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.1115830   -0.2684615    0.0452956
3-6 months     ki1000109-EE              PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE              PAKISTAN                       1                    0                  0.0903946   -0.1669002    0.3476893
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          1                    0                 -0.1917877   -0.6059407    0.2223652
3-6 months     ki1017093b-PROVIDE        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE        BANGLADESH                     1                    0                  0.0295350   -0.0508117    0.1098818
3-6 months     ki1101329-Keneba          GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba          GAMBIA                         1                    0                  0.0543025   -0.0663157    0.1749207
3-6 months     ki1113344-GMS-Nepal       NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal       NEPAL                          1                    0                  0.0706739   -0.0402794    0.1816272
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     1                    0                 -0.0914041   -0.1239103   -0.0588980
6-12 months    ki0047075b-MAL-ED         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         BANGLADESH                     1                    0                  0.0162441   -0.0440668    0.0765550
6-12 months    ki0047075b-MAL-ED         BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         BRAZIL                         1                    0                 -0.0140272   -0.1054767    0.0774222
6-12 months    ki0047075b-MAL-ED         INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         INDIA                          1                    0                 -0.0643744   -0.1232427   -0.0055061
6-12 months    ki0047075b-MAL-ED         NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         NEPAL                          1                    0                 -0.0502190   -0.1028769    0.0024389
6-12 months    ki0047075b-MAL-ED         PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         PERU                           1                    0                 -0.0074904   -0.0818909    0.0669100
6-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0                  0.0376161   -0.0758315    0.1510638
6-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0187060   -0.0756466    0.1130586
6-12 months    ki1000304b-SAS-CompFeed   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed   INDIA                          1                    0                 -0.1660855   -0.2830222   -0.0491489
6-12 months    ki1017093b-PROVIDE        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE        BANGLADESH                     1                    0                 -0.0382739   -0.0768938    0.0003460
6-12 months    ki1101329-Keneba          GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1101329-Keneba          GAMBIA                         1                    0                 -0.0050065   -0.0562401    0.0462271
6-12 months    ki1113344-GMS-Nepal       NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal       NEPAL                          1                    0                 -0.0409362   -0.0933486    0.0114761
6-12 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    0                  0.0032742   -0.0185990    0.0251473
12-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    0                 -0.0020215   -0.0359079    0.0318649
12-24 months   ki0047075b-MAL-ED         BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         BRAZIL                         1                    0                  0.0002790   -0.0641587    0.0647168
12-24 months   ki0047075b-MAL-ED         INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         INDIA                          1                    0                 -0.0630363   -0.0966787   -0.0293939
12-24 months   ki0047075b-MAL-ED         NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         NEPAL                          1                    0                 -0.0034427   -0.0340138    0.0271285
12-24 months   ki0047075b-MAL-ED         PERU                           0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         PERU                           1                    0                 -0.0222738   -0.0683241    0.0237764
12-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0                 -0.0179177   -0.0802525    0.0444172
12-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0480767   -0.0978146    0.0016612
12-24 months   ki1017093b-PROVIDE        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE        BANGLADESH                     1                    0                 -0.0130742   -0.0388996    0.0127512
12-24 months   ki1101329-Keneba          GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1101329-Keneba          GAMBIA                         1                    0                  0.0101154   -0.0217045    0.0419354
12-24 months   ki1113344-GMS-Nepal       NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal       NEPAL                          1                    0                  0.0208626   -0.0187985    0.0605236
12-24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                    0                 -0.0239783   -0.0409581   -0.0069985
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    0                  0.0222188   -0.0424627    0.0869002
