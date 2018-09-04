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

**Intervention Variable:** birthlen

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                    country                        birthlen      s03rec24   n_cell      n
-------------------------  -----------------------------  -----------  ---------  -------  -----
ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              0       29    240
ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              1        0    240
ki0047075b-MAL-ED          BANGLADESH                     <48 cm               0      118    240
ki0047075b-MAL-ED          BANGLADESH                     <48 cm               1        8    240
ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           0       85    240
ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           1        0    240
ki0047075b-MAL-ED          BRAZIL                         >=50 cm              0       34    182
ki0047075b-MAL-ED          BRAZIL                         >=50 cm              1        0    182
ki0047075b-MAL-ED          BRAZIL                         <48 cm               0       56    182
ki0047075b-MAL-ED          BRAZIL                         <48 cm               1       15    182
ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           0       77    182
ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           1        0    182
ki0047075b-MAL-ED          INDIA                          >=50 cm              0       25    202
ki0047075b-MAL-ED          INDIA                          >=50 cm              1        0    202
ki0047075b-MAL-ED          INDIA                          <48 cm               0       93    202
ki0047075b-MAL-ED          INDIA                          <48 cm               1       10    202
ki0047075b-MAL-ED          INDIA                          [48-50) cm           0       74    202
ki0047075b-MAL-ED          INDIA                          [48-50) cm           1        0    202
ki0047075b-MAL-ED          NEPAL                          >=50 cm              0       38    172
ki0047075b-MAL-ED          NEPAL                          >=50 cm              1        0    172
ki0047075b-MAL-ED          NEPAL                          <48 cm               0       61    172
ki0047075b-MAL-ED          NEPAL                          <48 cm               1        7    172
ki0047075b-MAL-ED          NEPAL                          [48-50) cm           0       66    172
ki0047075b-MAL-ED          NEPAL                          [48-50) cm           1        0    172
ki0047075b-MAL-ED          PERU                           >=50 cm              0       33    271
ki0047075b-MAL-ED          PERU                           >=50 cm              1        0    271
ki0047075b-MAL-ED          PERU                           <48 cm               0      114    271
ki0047075b-MAL-ED          PERU                           <48 cm               1       15    271
ki0047075b-MAL-ED          PERU                           [48-50) cm           0      107    271
ki0047075b-MAL-ED          PERU                           [48-50) cm           1        2    271
ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              0       47    253
ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              1        0    253
ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               0       86    253
ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               1       17    253
ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           0      103    253
ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           1        0    253
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              0       15    123
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              1        0    123
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               0       55    123
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               1        0    123
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           0       53    123
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           1        0    123
ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              0       13    103
ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              1        1    103
ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               0       45    103
ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               1        4    103
ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           0       40    103
ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           1        0    103
ki1000108-IRC              INDIA                          >=50 cm              0      141    391
ki1000108-IRC              INDIA                          >=50 cm              1        1    391
ki1000108-IRC              INDIA                          <48 cm               0       92    391
ki1000108-IRC              INDIA                          <48 cm               1       19    391
ki1000108-IRC              INDIA                          [48-50) cm           0      131    391
ki1000108-IRC              INDIA                          [48-50) cm           1        7    391
ki1000109-EE               PAKISTAN                       >=50 cm              0       40     92
ki1000109-EE               PAKISTAN                       >=50 cm              1        0     92
ki1000109-EE               PAKISTAN                       <48 cm               0       14     92
ki1000109-EE               PAKISTAN                       <48 cm               1        0     92
ki1000109-EE               PAKISTAN                       [48-50) cm           0       38     92
ki1000109-EE               PAKISTAN                       [48-50) cm           1        0     92
ki1000109-ResPak           PAKISTAN                       >=50 cm              0        7     14
ki1000109-ResPak           PAKISTAN                       >=50 cm              1        0     14
ki1000109-ResPak           PAKISTAN                       <48 cm               0        1     14
ki1000109-ResPak           PAKISTAN                       <48 cm               1        0     14
ki1000109-ResPak           PAKISTAN                       [48-50) cm           0        6     14
ki1000109-ResPak           PAKISTAN                       [48-50) cm           1        0     14
ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              0      169    690
ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              1        0    690
ki1017093b-PROVIDE         BANGLADESH                     <48 cm               0      218    690
ki1017093b-PROVIDE         BANGLADESH                     <48 cm               1       21    690
ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           0      281    690
ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           1        1    690
ki1101329-Keneba           GAMBIA                         >=50 cm              0      756   1515
ki1101329-Keneba           GAMBIA                         >=50 cm              1        7   1515
ki1101329-Keneba           GAMBIA                         <48 cm               0      239   1515
ki1101329-Keneba           GAMBIA                         <48 cm               1       26   1515
ki1101329-Keneba           GAMBIA                         [48-50) cm           0      478   1515
ki1101329-Keneba           GAMBIA                         [48-50) cm           1        9   1515
ki1114097-CMIN             BANGLADESH                     >=50 cm              0        2      8
ki1114097-CMIN             BANGLADESH                     >=50 cm              1        0      8
ki1114097-CMIN             BANGLADESH                     <48 cm               0        4      8
ki1114097-CMIN             BANGLADESH                     <48 cm               1        0      8
ki1114097-CMIN             BANGLADESH                     [48-50) cm           0        2      8
ki1114097-CMIN             BANGLADESH                     [48-50) cm           1        0      8
ki1114097-CMIN             PERU                           >=50 cm              0       15     17
ki1114097-CMIN             PERU                           >=50 cm              1        0     17
ki1114097-CMIN             PERU                           <48 cm               0        1     17
ki1114097-CMIN             PERU                           <48 cm               1        0     17
ki1114097-CMIN             PERU                           [48-50) cm           0        1     17
ki1114097-CMIN             PERU                           [48-50) cm           1        0     17
ki1114097-CONTENT          PERU                           >=50 cm              0        1      2
ki1114097-CONTENT          PERU                           >=50 cm              1        0      2
ki1114097-CONTENT          PERU                           <48 cm               0        1      2
ki1114097-CONTENT          PERU                           <48 cm               1        0      2
ki1114097-CONTENT          PERU                           [48-50) cm           0        0      2
ki1114097-CONTENT          PERU                           [48-50) cm           1        0      2


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
* studyid: ki1101329-Keneba, country: GAMBIA
* studyid: ki1114097-CMIN, country: BANGLADESH
* studyid: ki1114097-CMIN, country: PERU
* studyid: ki1114097-CONTENT, country: PERU

### Dropped Strata

Some strata were dropped due to rare outcomes:

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
![](/tmp/6a00653e-d86d-4613-a3cb-296725725ab8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6a00653e-d86d-4613-a3cb-296725725ab8/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6a00653e-d86d-4613-a3cb-296725725ab8/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6a00653e-d86d-4613-a3cb-296725725ab8/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid            country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
-----------------  --------  -------------------  ---------------  ----------  ----------  ----------
ki1101329-Keneba   GAMBIA    >=50 cm              NA                0.0091743   0.0024070   0.0159416
ki1101329-Keneba   GAMBIA    <48 cm               NA                0.0981132   0.0622864   0.1339400
ki1101329-Keneba   GAMBIA    [48-50) cm           NA                0.0184805   0.0065149   0.0304461


### Parameter: E(Y)


studyid            country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
-----------------  --------  -------------------  ---------------  ----------  ----------  ----------
ki1101329-Keneba   GAMBIA    NA                   NA                0.0277228   0.0194529   0.0359926


### Parameter: RR


studyid            country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
-----------------  --------  -------------------  ---------------  ----------  ----------  ----------
ki1101329-Keneba   GAMBIA    >=50 cm              >=50 cm            1.000000   1.0000000    1.000000
ki1101329-Keneba   GAMBIA    <48 cm               >=50 cm           10.694340   4.6956865   24.356161
ki1101329-Keneba   GAMBIA    [48-50) cm           >=50 cm            2.014374   0.7548915    5.375211


### Parameter: PAR


studyid            country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
-----------------  --------  -------------------  ---------------  ----------  ----------  ----------
ki1101329-Keneba   GAMBIA    >=50 cm              NA                0.0185485   0.0102987   0.0267982


### Parameter: PAF


studyid            country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
-----------------  --------  -------------------  ---------------  ----------  ----------  ----------
ki1101329-Keneba   GAMBIA    >=50 cm              NA                0.6690695   0.3519216   0.8310158
