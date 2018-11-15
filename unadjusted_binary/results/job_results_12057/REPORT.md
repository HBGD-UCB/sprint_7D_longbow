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

**Outcome Variable:** s03rec24

## Predictor Variables

**Intervention Variable:** birthwt

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                    country                        birthwt                       s03rec24   n_cell      n
-------------------------  -----------------------------  ---------------------------  ---------  -------  -----
ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight           0      190    241
ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight           1        4    241
ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                     0       43    241
ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                     1        4    241
ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight           0      202    223
ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight           1       12    223
ki0047075b-MAL-ED          BRAZIL                         Low birth weight                     0        3    223
ki0047075b-MAL-ED          BRAZIL                         Low birth weight                     1        6    223
ki0047075b-MAL-ED          INDIA                          Normal or high birthweight           0      195    238
ki0047075b-MAL-ED          INDIA                          Normal or high birthweight           1        7    238
ki0047075b-MAL-ED          INDIA                          Low birth weight                     0       31    238
ki0047075b-MAL-ED          INDIA                          Low birth weight                     1        5    238
ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight           0      205    231
ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight           1        6    231
ki0047075b-MAL-ED          NEPAL                          Low birth weight                     0       15    231
ki0047075b-MAL-ED          NEPAL                          Low birth weight                     1        5    231
ki0047075b-MAL-ED          PERU                           Normal or high birthweight           0      252    281
ki0047075b-MAL-ED          PERU                           Normal or high birthweight           1       16    281
ki0047075b-MAL-ED          PERU                           Low birth weight                     0       11    281
ki0047075b-MAL-ED          PERU                           Low birth weight                     1        2    281
ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight           0      272    302
ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight           1       11    302
ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                     0       11    302
ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                     1        8    302
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight           0      126    132
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight           1        0    132
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                     0        6    132
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                     1        0    132
ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight           0      315    370
ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight           1       12    370
ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                     0       38    370
ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                     1        5    370
ki1000108-IRC              INDIA                          Normal or high birthweight           0      321    408
ki1000108-IRC              INDIA                          Normal or high birthweight           1       18    408
ki1000108-IRC              INDIA                          Low birth weight                     0       59    408
ki1000108-IRC              INDIA                          Low birth weight                     1       10    408
ki1000109-EE               PAKISTAN                       Normal or high birthweight           0      137    175
ki1000109-EE               PAKISTAN                       Normal or high birthweight           1        0    175
ki1000109-EE               PAKISTAN                       Low birth weight                     0       38    175
ki1000109-EE               PAKISTAN                       Low birth weight                     1        0    175
ki1000109-ResPak           PAKISTAN                       Normal or high birthweight           0       14     14
ki1000109-ResPak           PAKISTAN                       Normal or high birthweight           1        0     14
ki1000109-ResPak           PAKISTAN                       Low birth weight                     0        0     14
ki1000109-ResPak           PAKISTAN                       Low birth weight                     1        0     14
ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight           0      527    690
ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight           1        2    690
ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                     0      141    690
ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                     1       20    690
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight           0     2192   2252
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight           1        2   2252
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                     0       58   2252
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                     1        0   2252
ki1101329-Keneba           GAMBIA                         Normal or high birthweight           0     1785   2003
ki1101329-Keneba           GAMBIA                         Normal or high birthweight           1       48   2003
ki1101329-Keneba           GAMBIA                         Low birth weight                     0      154   2003
ki1101329-Keneba           GAMBIA                         Low birth weight                     1       16   2003
ki1114097-CMIN             BANGLADESH                     Normal or high birthweight           0        5      8
ki1114097-CMIN             BANGLADESH                     Normal or high birthweight           1        0      8
ki1114097-CMIN             BANGLADESH                     Low birth weight                     0        3      8
ki1114097-CMIN             BANGLADESH                     Low birth weight                     1        0      8
ki1114097-CMIN             PERU                           Normal or high birthweight           0       16     17
ki1114097-CMIN             PERU                           Normal or high birthweight           1        0     17
ki1114097-CMIN             PERU                           Low birth weight                     0        1     17
ki1114097-CMIN             PERU                           Low birth weight                     1        0     17
ki1114097-CONTENT          PERU                           Normal or high birthweight           0        2      2
ki1114097-CONTENT          PERU                           Normal or high birthweight           1        0      2
ki1114097-CONTENT          PERU                           Low birth weight                     0        0      2
ki1114097-CONTENT          PERU                           Low birth weight                     1        0      2


The following strata were considered:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: BRAZIL
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* studyid: ki1000108-IRC, country: INDIA
* studyid: ki1000109-EE, country: PAKISTAN
* studyid: ki1000109-ResPak, country: PAKISTAN
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1101329-Keneba, country: GAMBIA
* studyid: ki1114097-CMIN, country: BANGLADESH
* studyid: ki1114097-CMIN, country: PERU
* studyid: ki1114097-CONTENT, country: PERU

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: BRAZIL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1000109-EE, country: PAKISTAN
* studyid: ki1000109-ResPak, country: PAKISTAN
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1114097-CMIN, country: BANGLADESH
* studyid: ki1114097-CMIN, country: PERU
* studyid: ki1114097-CONTENT, country: PERU

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/3f55d25e-5824-402f-95c4-c7102cf65cc4/7b752bb4-0720-4bfd-9b89-e44c55430a75/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3f55d25e-5824-402f-95c4-c7102cf65cc4/7b752bb4-0720-4bfd-9b89-e44c55430a75/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3f55d25e-5824-402f-95c4-c7102cf65cc4/7b752bb4-0720-4bfd-9b89-e44c55430a75/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3f55d25e-5824-402f-95c4-c7102cf65cc4/7b752bb4-0720-4bfd-9b89-e44c55430a75/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country        intervention_level           baseline_level     estimate    ci_lower    ci_upper
-------------------------  -------------  ---------------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA          Normal or high birthweight   NA                0.0346535   0.0093779   0.0599291
ki0047075b-MAL-ED          INDIA          Low birth weight             NA                0.1388889   0.0256816   0.2520962
ki0047075b-MAL-ED          NEPAL          Normal or high birthweight   NA                0.0284360   0.0059600   0.0509120
ki0047075b-MAL-ED          NEPAL          Low birth weight             NA                0.2500000   0.0598152   0.4401848
ki0047075b-MAL-ED          SOUTH AFRICA   Normal or high birthweight   NA                0.0388693   0.0163129   0.0614256
ki0047075b-MAL-ED          SOUTH AFRICA   Low birth weight             NA                0.4210526   0.1986811   0.6434242
ki1000108-CMC-V-BCS-2002   INDIA          Normal or high birthweight   NA                0.0366972   0.0162911   0.0571033
ki1000108-CMC-V-BCS-2002   INDIA          Low birth weight             NA                0.1162791   0.0203368   0.2122213
ki1000108-IRC              INDIA          Normal or high birthweight   NA                0.0530973   0.0291989   0.0769958
ki1000108-IRC              INDIA          Low birth weight             NA                0.1449275   0.0617639   0.2280911
ki1101329-Keneba           GAMBIA         Normal or high birthweight   NA                0.0261866   0.0188743   0.0334989
ki1101329-Keneba           GAMBIA         Low birth weight             NA                0.0941176   0.0502137   0.1380216


### Parameter: E(Y)


studyid                    country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA          NA                   NA                0.0504202   0.0225627   0.0782776
ki0047075b-MAL-ED          NEPAL          NA                   NA                0.0476190   0.0200971   0.0751410
ki0047075b-MAL-ED          SOUTH AFRICA   NA                   NA                0.0629139   0.0354838   0.0903440
ki1000108-CMC-V-BCS-2002   INDIA          NA                   NA                0.0459459   0.0245838   0.0673081
ki1000108-IRC              INDIA          NA                   NA                0.0686275   0.0440656   0.0931893
ki1101329-Keneba           GAMBIA         NA                   NA                0.0319521   0.0242481   0.0396560


### Parameter: RR


studyid                    country        intervention_level           baseline_level                 estimate   ci_lower    ci_upper
-------------------------  -------------  ---------------------------  ---------------------------  ----------  ---------  ----------
ki0047075b-MAL-ED          INDIA          Normal or high birthweight   Normal or high birthweight     1.000000   1.000000    1.000000
ki0047075b-MAL-ED          INDIA          Low birth weight             Normal or high birthweight     4.007936   1.342438   11.965953
ki0047075b-MAL-ED          NEPAL          Normal or high birthweight   Normal or high birthweight     1.000000   1.000000    1.000000
ki0047075b-MAL-ED          NEPAL          Low birth weight             Normal or high birthweight     8.791667   2.935208   26.333192
ki0047075b-MAL-ED          SOUTH AFRICA   Normal or high birthweight   Normal or high birthweight     1.000000   1.000000    1.000000
ki0047075b-MAL-ED          SOUTH AFRICA   Low birth weight             Normal or high birthweight    10.832536   4.942622   23.741211
ki1000108-CMC-V-BCS-2002   INDIA          Normal or high birthweight   Normal or high birthweight     1.000000   1.000000    1.000000
ki1000108-CMC-V-BCS-2002   INDIA          Low birth weight             Normal or high birthweight     3.168605   1.171519    8.570117
ki1000108-IRC              INDIA          Normal or high birthweight   Normal or high birthweight     1.000000   1.000000    1.000000
ki1000108-IRC              INDIA          Low birth weight             Normal or high birthweight     2.729469   1.316294    5.659828
ki1101329-Keneba           GAMBIA         Normal or high birthweight   Normal or high birthweight     1.000000   1.000000    1.000000
ki1101329-Keneba           GAMBIA         Low birth weight             Normal or high birthweight     3.594118   2.086794    6.190204


### Parameter: PAR


studyid                    country        intervention_level           baseline_level     estimate     ci_lower    ci_upper
-------------------------  -------------  ---------------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          INDIA          Normal or high birthweight   NA                0.0157667   -0.0024116   0.0339450
ki0047075b-MAL-ED          NEPAL          Normal or high birthweight   NA                0.0191830    0.0007503   0.0376157
ki0047075b-MAL-ED          SOUTH AFRICA   Normal or high birthweight   NA                0.0240446    0.0065049   0.0415844
ki1000108-CMC-V-BCS-2002   INDIA          Normal or high birthweight   NA                0.0092487   -0.0024440   0.0209414
ki1000108-IRC              INDIA          Normal or high birthweight   NA                0.0155301    0.0005192   0.0305410
ki1101329-Keneba           GAMBIA         Normal or high birthweight   NA                0.0057655    0.0018980   0.0096330


### Parameter: PAF


studyid                    country        intervention_level           baseline_level     estimate     ci_lower    ci_upper
-------------------------  -------------  ---------------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          INDIA          Normal or high birthweight   NA                0.3127063   -0.0946193   0.5684594
ki0047075b-MAL-ED          NEPAL          Normal or high birthweight   NA                0.4028436   -0.0110249   0.6472928
ki0047075b-MAL-ED          SOUTH AFRICA   Normal or high birthweight   NA                0.3821834    0.1055436   0.5732633
ki1000108-CMC-V-BCS-2002   INDIA          Normal or high birthweight   NA                0.2012952   -0.0760648   0.4071646
ki1000108-IRC              INDIA          Normal or high birthweight   NA                0.2262958   -0.0084487   0.4063970
ki1101329-Keneba           GAMBIA         Normal or high birthweight   NA                0.1804419    0.0588161   0.2863505
