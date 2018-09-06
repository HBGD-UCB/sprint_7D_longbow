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
![](/tmp/25dcf322-edbf-4812-97ac-1940b58547c2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/25dcf322-edbf-4812-97ac-1940b58547c2/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -0.0701600   -0.1301544   -0.0101655
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0174464   -0.0555256    0.0206328
0-3 months     ki0047075b-MAL-ED         BRAZIL                         0                    NA                 0.1926778    0.1337957    0.2515599
0-3 months     ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.1943532    0.1237685    0.2649379
0-3 months     ki0047075b-MAL-ED         INDIA                          0                    NA                -0.0627323   -0.1186078   -0.0068567
0-3 months     ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0070672   -0.0562539    0.0421194
0-3 months     ki0047075b-MAL-ED         NEPAL                          0                    NA                 0.1100158    0.0665878    0.1534437
0-3 months     ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.0121831   -0.0314579    0.0558241
0-3 months     ki0047075b-MAL-ED         PERU                           0                    NA                -0.1591678   -0.1970113   -0.1213242
0-3 months     ki0047075b-MAL-ED         PERU                           1                    NA                -0.1538243   -0.2160633   -0.0915854
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -0.1103518   -0.1601226   -0.0605809
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0412795   -0.1209315    0.0383724
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0732182   -0.1188155   -0.0276209
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0187907   -0.0519836    0.0895650
0-3 months     ki1000109-EE              PAKISTAN                       0                    NA                -0.3644957   -0.4928714   -0.2361200
0-3 months     ki1000109-EE              PAKISTAN                       1                    NA                -0.3962418   -0.4407469   -0.3517366
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -0.0991029   -0.2241796    0.0259738
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.0094926   -0.0266055    0.0455907
0-3 months     ki1017093b-PROVIDE        BANGLADESH                     0                    NA                -0.0737897   -0.1077723   -0.0398070
0-3 months     ki1017093b-PROVIDE        BANGLADESH                     1                    NA                -0.0419287   -0.0618596   -0.0219978
0-3 months     ki1101329-Keneba          GAMBIA                         0                    NA                -0.2560177   -0.3092273   -0.2028080
0-3 months     ki1101329-Keneba          GAMBIA                         1                    NA                -0.2827428   -0.3101678   -0.2553179
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                 0.0305888    0.0193909    0.0417867
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                 0.0764136    0.0713067    0.0815205
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                 0.7959571    0.7489004    0.8430138
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                 0.1286683    0.0820429    0.1752936
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     0                    NA                 0.0091506   -0.0338783    0.0521795
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0307373   -0.0566101   -0.0048646
3-6 months     ki0047075b-MAL-ED         BRAZIL                         0                    NA                 0.0756539    0.0278123    0.1234954
3-6 months     ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0367156   -0.0191791    0.0926103
3-6 months     ki0047075b-MAL-ED         INDIA                          0                    NA                -0.0210611   -0.0685022    0.0263799
3-6 months     ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0517638   -0.0863748   -0.0171528
3-6 months     ki0047075b-MAL-ED         NEPAL                          0                    NA                 0.0418519    0.0079957    0.0757081
3-6 months     ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.0606993    0.0170903    0.1043084
3-6 months     ki0047075b-MAL-ED         PERU                           0                    NA                 0.0282103   -0.0065614    0.0629820
3-6 months     ki0047075b-MAL-ED         PERU                           1                    NA                 0.0274651   -0.0163838    0.0713141
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -0.0083754   -0.0501487    0.0333979
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.0244790   -0.0633310    0.1122889
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0688213   -0.1067475   -0.0308951
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1869600   -0.2507241   -0.1231960
3-6 months     ki1000109-EE              PAKISTAN                       0                    NA                -0.0532590   -0.1411185    0.0346006
3-6 months     ki1000109-EE              PAKISTAN                       1                    NA                 0.0731697    0.0441788    0.1021605
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          0                    NA                 0.0709093   -0.1212427    0.2630612
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.0394898   -0.0745348   -0.0044448
3-6 months     ki1017093b-PROVIDE        BANGLADESH                     0                    NA                -0.0613734   -0.0915169   -0.0312300
3-6 months     ki1017093b-PROVIDE        BANGLADESH                     1                    NA                -0.0229460   -0.0415026   -0.0043894
3-6 months     ki1101329-Keneba          GAMBIA                         0                    NA                -0.0451499   -0.0923230    0.0020233
3-6 months     ki1101329-Keneba          GAMBIA                         1                    NA                -0.0137659   -0.0341153    0.0065836
3-6 months     ki1113344-GMS-Nepal       NEPAL                          0                    NA                -0.1974116   -0.2463937   -0.1484295
3-6 months     ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.1595789   -0.1807190   -0.1384388
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                 0.0085869   -0.0025372    0.0197111
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -0.0074663   -0.0124703   -0.0024622
6-12 months    ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -0.0851137   -0.1064854   -0.0637420
6-12 months    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0787775   -0.0899120   -0.0676431
6-12 months    ki0047075b-MAL-ED         BRAZIL                         0                    NA                 0.0125211   -0.0109886    0.0360308
6-12 months    ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.0014455   -0.0242352    0.0213443
6-12 months    ki0047075b-MAL-ED         INDIA                          0                    NA                -0.0633763   -0.0807322   -0.0460204
6-12 months    ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0867086   -0.0999214   -0.0734959
6-12 months    ki0047075b-MAL-ED         NEPAL                          0                    NA                -0.0484837   -0.0613815   -0.0355859
6-12 months    ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0827024   -0.0973872   -0.0680175
6-12 months    ki0047075b-MAL-ED         PERU                           0                    NA                -0.0367265   -0.0528955   -0.0205575
6-12 months    ki0047075b-MAL-ED         PERU                           1                    NA                -0.0392255   -0.0644463   -0.0140046
6-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -0.0519731   -0.0703944   -0.0335519
6-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0156817   -0.0382895    0.0069262
6-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1261324   -0.1424654   -0.1097994
6-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1218272   -0.1490576   -0.0945968
6-12 months    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                 0.0535596    0.0179398    0.0891793
6-12 months    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.0893048   -0.0999094   -0.0787002
6-12 months    ki1017093b-PROVIDE        BANGLADESH                     0                    NA                -0.0410630   -0.0525299   -0.0295962
6-12 months    ki1017093b-PROVIDE        BANGLADESH                     1                    NA                -0.0662557   -0.0741597   -0.0583517
6-12 months    ki1101329-Keneba          GAMBIA                         0                    NA                -0.0597775   -0.0774330   -0.0421220
6-12 months    ki1101329-Keneba          GAMBIA                         1                    NA                -0.0640652   -0.0726782   -0.0554522
6-12 months    ki1113344-GMS-Nepal       NEPAL                          0                    NA                -0.0468197   -0.0666584   -0.0269810
6-12 months    ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0672217   -0.0775326   -0.0569109
6-12 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                -0.0844252   -0.0921803   -0.0766701
6-12 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -0.0752078   -0.0781456   -0.0722699
12-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -0.0196189   -0.0287401   -0.0104976
12-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0204504   -0.0269673   -0.0139335
12-24 months   ki0047075b-MAL-ED         BRAZIL                         0                    NA                 0.0194248    0.0070145    0.0318350
12-24 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0385310    0.0218496    0.0552124
12-24 months   ki0047075b-MAL-ED         INDIA                          0                    NA                -0.0069683   -0.0132106   -0.0007260
12-24 months   ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0181513   -0.0249230   -0.0113796
12-24 months   ki0047075b-MAL-ED         NEPAL                          0                    NA                -0.0357788   -0.0418963   -0.0296613
12-24 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0406765   -0.0482252   -0.0331277
12-24 months   ki0047075b-MAL-ED         PERU                           0                    NA                -0.0075372   -0.0159145    0.0008401
12-24 months   ki0047075b-MAL-ED         PERU                           1                    NA                -0.0137661   -0.0258888   -0.0016433
12-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -0.0142218   -0.0222454   -0.0061981
12-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0475130   -0.0695035   -0.0255224
12-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0349051   -0.0444045   -0.0254058
12-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0522519   -0.0656820   -0.0388217
12-24 months   ki1017093b-PROVIDE        BANGLADESH                     0                    NA                 0.0080431    0.0016458    0.0144405
12-24 months   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                -0.0073527   -0.0117549   -0.0029505
12-24 months   ki1101329-Keneba          GAMBIA                         0                    NA                -0.0118351   -0.0192488   -0.0044214
12-24 months   ki1101329-Keneba          GAMBIA                         1                    NA                -0.0194077   -0.0235489   -0.0152664
12-24 months   ki1113344-GMS-Nepal       NEPAL                          0                    NA                -0.0235147   -0.0347728   -0.0122566
12-24 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0143710   -0.0204899   -0.0082521
12-24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                -0.0131673   -0.0174380   -0.0088966
12-24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -0.0200172   -0.0219464   -0.0180879
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                 0.0096695   -0.0040575    0.0233966
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.0100688   -0.0185434   -0.0015942


### Parameter: E(Y)


agecat         studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -0.0320043   -0.0644701    0.0004615
0-3 months     ki0047075b-MAL-ED         BRAZIL                         NA                   NA                 0.1928587    0.1409027    0.2448147
0-3 months     ki0047075b-MAL-ED         INDIA                          NA                   NA                -0.0255097   -0.0638598    0.0128403
0-3 months     ki0047075b-MAL-ED         NEPAL                          NA                   NA                 0.0746202    0.0395269    0.1097135
0-3 months     ki0047075b-MAL-ED         PERU                           NA                   NA                -0.1578735   -0.1906434   -0.1251037
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                -0.1008775   -0.1453661   -0.0563889
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0485757   -0.0876660   -0.0094853
0-3 months     ki1000109-EE              PAKISTAN                       NA                   NA                -0.3945273   -0.4372606   -0.3517940
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                 0.0038374   -0.0265594    0.0342341
0-3 months     ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                -0.0413143   -0.0594662   -0.0231624
0-3 months     ki1101329-Keneba          GAMBIA                         NA                   NA                -0.2889462   -0.3145198   -0.2633726
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                 0.0707032    0.0657297    0.0756767
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                 0.1109539    0.0661941    0.1557138
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -0.0200415   -0.0431395    0.0030565
3-6 months     ki0047075b-MAL-ED         BRAZIL                         NA                   NA                 0.0604904    0.0239698    0.0970111
3-6 months     ki0047075b-MAL-ED         INDIA                          NA                   NA                -0.0401251   -0.0685271   -0.0117231
3-6 months     ki0047075b-MAL-ED         NEPAL                          NA                   NA                -0.0225157   -0.0491401    0.0041087
3-6 months     ki0047075b-MAL-ED         PERU                           NA                   NA                 0.0283266   -0.0028926    0.0595459
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                -0.0024150   -0.0406234    0.0357934
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0727901   -0.1056963   -0.0398840
3-6 months     ki1000109-EE              PAKISTAN                       NA                   NA                 0.0708495    0.0425982    0.0991009
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                -0.0357951   -0.0659472   -0.0056430
3-6 months     ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                -0.0272428   -0.0436954   -0.0107902
3-6 months     ki1101329-Keneba          GAMBIA                         NA                   NA                -0.0175712   -0.0368273    0.0016849
3-6 months     ki1113344-GMS-Nepal       NEPAL                          NA                   NA                -0.1660455   -0.1856196   -0.1464714
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                -0.0042530   -0.0091354    0.0006295
6-12 months    ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -0.0807371   -0.0912604   -0.0702138
6-12 months    ki0047075b-MAL-ED         BRAZIL                         NA                   NA                 0.0065644   -0.0129183    0.0260472
6-12 months    ki0047075b-MAL-ED         INDIA                          NA                   NA                -0.0777727   -0.0900154   -0.0655300
6-12 months    ki0047075b-MAL-ED         NEPAL                          NA                   NA                -0.0486002   -0.0592412   -0.0379593
6-12 months    ki0047075b-MAL-ED         PERU                           NA                   NA                -0.0374212   -0.0515266   -0.0233158
6-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                -0.0517337   -0.0693851   -0.0340823
6-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1246447   -0.1406180   -0.1086713
6-12 months    ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                -0.0862948   -0.0967898   -0.0757998
6-12 months    ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                -0.0626151   -0.0695574   -0.0556729
6-12 months    ki1101329-Keneba          GAMBIA                         NA                   NA                -0.0636171   -0.0716720   -0.0555623
6-12 months    ki1113344-GMS-Nepal       NEPAL                          NA                   NA                -0.0638477   -0.0730913   -0.0546041
6-12 months    kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                -0.0753247   -0.0782379   -0.0724114
12-24 months   ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -0.0181403   -0.0236170   -0.0126636
12-24 months   ki0047075b-MAL-ED         BRAZIL                         NA                   NA                -0.0013016   -0.0119070    0.0093038
12-24 months   ki0047075b-MAL-ED         INDIA                          NA                   NA                -0.0097570   -0.0149006   -0.0046135
12-24 months   ki0047075b-MAL-ED         NEPAL                          NA                   NA                -0.0295235   -0.0345942   -0.0244528
12-24 months   ki0047075b-MAL-ED         PERU                           NA                   NA                -0.0090124   -0.0160498   -0.0019751
12-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                -0.0153199   -0.0229604   -0.0076795
12-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0396040   -0.0475364   -0.0316716
12-24 months   ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                -0.0081718   -0.0120131   -0.0043304
12-24 months   ki1101329-Keneba          GAMBIA                         NA                   NA                -0.0195347   -0.0234501   -0.0156192
12-24 months   ki1113344-GMS-Nepal       NEPAL                          NA                   NA                -0.0158588   -0.0213657   -0.0103518
12-24 months   kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                -0.0189244   -0.0207907   -0.0170581
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                -0.0089754   -0.0170317   -0.0009191


### Parameter: ATE


agecat         studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     1                    0                  0.0527136   -0.0179690    0.1233961
0-3 months     ki0047075b-MAL-ED         BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         BRAZIL                         1                    0                  0.0016754   -0.0758203    0.0791711
0-3 months     ki0047075b-MAL-ED         INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         INDIA                          1                    0                  0.0556650   -0.0177549    0.1290849
0-3 months     ki0047075b-MAL-ED         NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         NEPAL                          1                    0                 -0.0978327   -0.1549543   -0.0407111
0-3 months     ki0047075b-MAL-ED         PERU                           0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         PERU                           1                    0                  0.0053434   -0.0665878    0.0772747
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0                  0.0690723   -0.0245888    0.1627333
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0920089    0.0085315    0.1754863
0-3 months     ki1000109-EE              PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE              PAKISTAN                       1                    0                 -0.0317460   -0.1672635    0.1037715
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          1                    0                  0.1085955   -0.0228717    0.2400628
0-3 months     ki1017093b-PROVIDE        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE        BANGLADESH                     1                    0                  0.0318610   -0.0075492    0.0712711
0-3 months     ki1101329-Keneba          GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba          GAMBIA                         1                    0                 -0.0267252   -0.0861962    0.0327459
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     1                    0                  0.0458248    0.0341311    0.0575185
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     1                    0                 -0.6672888   -0.7380244   -0.5965533
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     1                    0                 -0.0398879   -0.0885954    0.0088195
3-6 months     ki0047075b-MAL-ED         BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         BRAZIL                         1                    0                 -0.0389383   -0.1125116    0.0346350
3-6 months     ki0047075b-MAL-ED         INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         INDIA                          1                    0                 -0.0307026   -0.0886744    0.0272691
3-6 months     ki0047075b-MAL-ED         NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         NEPAL                          1                    0                  0.0188474   -0.0380458    0.0757407
3-6 months     ki0047075b-MAL-ED         PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         PERU                           1                    0                 -0.0007452   -0.0493721    0.0478817
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0                  0.0328544   -0.0645594    0.1302682
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.1181387   -0.1922995   -0.0439780
3-6 months     ki1000109-EE              PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE              PAKISTAN                       1                    0                  0.1264286    0.0340229    0.2188344
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          1                    0                 -0.1103990   -0.3187335    0.0979354
3-6 months     ki1017093b-PROVIDE        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE        BANGLADESH                     1                    0                  0.0384274    0.0030614    0.0737935
3-6 months     ki1101329-Keneba          GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba          GAMBIA                         1                    0                  0.0313840   -0.0186308    0.0813988
3-6 months     ki1113344-GMS-Nepal       NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal       NEPAL                          1                    0                  0.0378327   -0.0152513    0.0909168
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     1                    0                 -0.0160532   -0.0278396   -0.0042668
6-12 months    ki0047075b-MAL-ED         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         BANGLADESH                     1                    0                  0.0063361   -0.0171854    0.0298576
6-12 months    ki0047075b-MAL-ED         BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         BRAZIL                         1                    0                 -0.0139666   -0.0407206    0.0127874
6-12 months    ki0047075b-MAL-ED         INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         INDIA                          1                    0                 -0.0233323   -0.0422417   -0.0044229
6-12 months    ki0047075b-MAL-ED         NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         NEPAL                          1                    0                 -0.0342187   -0.0537757   -0.0146617
6-12 months    ki0047075b-MAL-ED         PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         PERU                           1                    0                 -0.0024989   -0.0315014    0.0265035
6-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0                  0.0362915    0.0110324    0.0615505
6-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0043052   -0.0236401    0.0322505
6-12 months    ki1000304b-SAS-CompFeed   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed   INDIA                          1                    0                 -0.1428644   -0.1813521   -0.1043767
6-12 months    ki1017093b-PROVIDE        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE        BANGLADESH                     1                    0                 -0.0251927   -0.0390246   -0.0113607
6-12 months    ki1101329-Keneba          GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1101329-Keneba          GAMBIA                         1                    0                 -0.0042877   -0.0233439    0.0147686
6-12 months    ki1113344-GMS-Nepal       NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal       NEPAL                          1                    0                 -0.0204021   -0.0427562    0.0019521
6-12 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    0                  0.0092174    0.0013424    0.0170924
12-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    0                 -0.0008315   -0.0120532    0.0103902
12-24 months   ki0047075b-MAL-ED         BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         BRAZIL                         1                    0                  0.0191062   -0.0025135    0.0407260
12-24 months   ki0047075b-MAL-ED         INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         INDIA                          1                    0                 -0.0111830   -0.0201064   -0.0022596
12-24 months   ki0047075b-MAL-ED         NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         NEPAL                          1                    0                 -0.0048977   -0.0147473    0.0049520
12-24 months   ki0047075b-MAL-ED         PERU                           0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         PERU                           1                    0                 -0.0062288   -0.0209167    0.0084590
12-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0                 -0.0332912   -0.0566889   -0.0098935
12-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0173467   -0.0337145   -0.0009790
12-24 months   ki1017093b-PROVIDE        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE        BANGLADESH                     1                    0                 -0.0153958   -0.0230196   -0.0077721
12-24 months   ki1101329-Keneba          GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1101329-Keneba          GAMBIA                         1                    0                 -0.0075725   -0.0157184    0.0005733
12-24 months   ki1113344-GMS-Nepal       NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal       NEPAL                          1                    0                  0.0091437   -0.0035770    0.0218644
12-24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                    0                 -0.0068499   -0.0114899   -0.0022099
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    0                 -0.0197383   -0.0354991   -0.0039775
