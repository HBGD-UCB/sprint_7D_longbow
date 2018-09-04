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

**Intervention Variable:** mhtcm

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                    country                        mhtcm           s03rec24   n_cell      n
-------------------------  -----------------------------  -------------  ---------  -------  -----
ki0047075b-MAL-ED          BANGLADESH                     >=155 cm               0       24    241
ki0047075b-MAL-ED          BANGLADESH                     >=155 cm               1        1    241
ki0047075b-MAL-ED          BANGLADESH                     <151 cm                0      149    241
ki0047075b-MAL-ED          BANGLADESH                     <151 cm                1        5    241
ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm           0       60    241
ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm           1        2    241
ki0047075b-MAL-ED          BRAZIL                         >=155 cm               0      116    214
ki0047075b-MAL-ED          BRAZIL                         >=155 cm               1       10    214
ki0047075b-MAL-ED          BRAZIL                         <151 cm                0       43    214
ki0047075b-MAL-ED          BRAZIL                         <151 cm                1        6    214
ki0047075b-MAL-ED          BRAZIL                         [151-155) cm           0       37    214
ki0047075b-MAL-ED          BRAZIL                         [151-155) cm           1        2    214
ki0047075b-MAL-ED          INDIA                          >=155 cm               0       53    238
ki0047075b-MAL-ED          INDIA                          >=155 cm               1        2    238
ki0047075b-MAL-ED          INDIA                          <151 cm                0      109    238
ki0047075b-MAL-ED          INDIA                          <151 cm                1        5    238
ki0047075b-MAL-ED          INDIA                          [151-155) cm           0       63    238
ki0047075b-MAL-ED          INDIA                          [151-155) cm           1        6    238
ki0047075b-MAL-ED          NEPAL                          >=155 cm               0       38    237
ki0047075b-MAL-ED          NEPAL                          >=155 cm               1        3    237
ki0047075b-MAL-ED          NEPAL                          <151 cm                0      129    237
ki0047075b-MAL-ED          NEPAL                          <151 cm                1        3    237
ki0047075b-MAL-ED          NEPAL                          [151-155) cm           0       59    237
ki0047075b-MAL-ED          NEPAL                          [151-155) cm           1        5    237
ki0047075b-MAL-ED          PERU                           >=155 cm               0       52    272
ki0047075b-MAL-ED          PERU                           >=155 cm               1        7    272
ki0047075b-MAL-ED          PERU                           <151 cm                0      150    272
ki0047075b-MAL-ED          PERU                           <151 cm                1        7    272
ki0047075b-MAL-ED          PERU                           [151-155) cm           0       51    272
ki0047075b-MAL-ED          PERU                           [151-155) cm           1        5    272
ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm               0      186    264
ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm               1       14    264
ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                0       29    264
ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                1        3    264
ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm           0       31    264
ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm           1        1    264
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm               0      149    248
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm               1        0    248
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                0       48    248
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                1        0    248
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm           0       50    248
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm           1        1    248
ki1017093b-PROVIDE         BANGLADESH                     >=155 cm               0      134    660
ki1017093b-PROVIDE         BANGLADESH                     >=155 cm               1        4    660
ki1017093b-PROVIDE         BANGLADESH                     <151 cm                0      352    660
ki1017093b-PROVIDE         BANGLADESH                     <151 cm                1       13    660
ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm           0      152    660
ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm           1        5    660
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm               0     1427   2244
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm               1        1   2244
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                0      329   2244
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                1        0   2244
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm           0      486   2244
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm           1        1   2244
ki1101329-Keneba           GAMBIA                         >=155 cm               0     1774   2189
ki1101329-Keneba           GAMBIA                         >=155 cm               1       43   2189
ki1101329-Keneba           GAMBIA                         <151 cm                0       78   2189
ki1101329-Keneba           GAMBIA                         <151 cm                1        5   2189
ki1101329-Keneba           GAMBIA                         [151-155) cm           0      274   2189
ki1101329-Keneba           GAMBIA                         [151-155) cm           1       15   2189


The following strata were considered:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: BRAZIL
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1101329-Keneba, country: GAMBIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: BRAZIL
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/2a181a03-9597-453c-a9e6-6eb02881b695/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/2a181a03-9597-453c-a9e6-6eb02881b695/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/2a181a03-9597-453c-a9e6-6eb02881b695/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/2a181a03-9597-453c-a9e6-6eb02881b695/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid             country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------  --------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED   PERU      >=155 cm             NA                0.1186441   0.0359793   0.2013089
ki0047075b-MAL-ED   PERU      <151 cm              NA                0.0445860   0.0122420   0.0769299
ki0047075b-MAL-ED   PERU      [151-155) cm         NA                0.0892857   0.0144626   0.1641089
ki1101329-Keneba    GAMBIA    >=155 cm             NA                0.0236654   0.0166746   0.0306562
ki1101329-Keneba    GAMBIA    <151 cm              NA                0.0602410   0.0090418   0.1114401
ki1101329-Keneba    GAMBIA    [151-155) cm         NA                0.0519031   0.0263219   0.0774843


### Parameter: E(Y)


studyid             country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------  --------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED   PERU      NA                   NA                0.0698529   0.0395048   0.1002010
ki1101329-Keneba    GAMBIA    NA                   NA                0.0287803   0.0217749   0.0357856


### Parameter: RR


studyid             country   intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------------  --------  -------------------  ---------------  ----------  ----------  ---------
ki0047075b-MAL-ED   PERU      >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
ki0047075b-MAL-ED   PERU      <151 cm              >=155 cm          0.3757962   0.1374435   1.027497
ki0047075b-MAL-ED   PERU      [151-155) cm         >=155 cm          0.7525510   0.2530629   2.237914
ki1101329-Keneba    GAMBIA    >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
ki1101329-Keneba    GAMBIA    <151 cm              >=155 cm          2.5455310   1.0351651   6.259608
ki1101329-Keneba    GAMBIA    [151-155) cm         >=155 cm          2.1932083   1.2346091   3.896102


### Parameter: PAR


studyid             country   intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------------  --------  -------------------  ---------------  -----------  -----------  ----------
ki0047075b-MAL-ED   PERU      >=155 cm             NA                -0.0487911   -0.1180006   0.0204184
ki1101329-Keneba    GAMBIA    >=155 cm             NA                 0.0051149    0.0010143   0.0092154


### Parameter: PAF


studyid             country   intervention_level   baseline_level      estimate    ci_lower    ci_upper
------------------  --------  -------------------  ---------------  -----------  ----------  ----------
ki0047075b-MAL-ED   PERU      >=155 cm             NA                -0.6984835   -1.981191   0.0323176
ki1101329-Keneba    GAMBIA    >=155 cm             NA                 0.1777219    0.029726   0.3031439
