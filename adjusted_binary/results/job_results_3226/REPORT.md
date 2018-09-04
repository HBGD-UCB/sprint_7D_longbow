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

**Intervention Variable:** exclfeed3

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* W_mhtcm
* W_birthwt
* W_birthlen
* W_nrooms
* month
* brthmon
* W_parity
* impfloor
* delta_W_mage
* delta_meducyrs
* delta_W_mhtcm
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_month
* delta_brthmon
* delta_W_parity
* delta_impfloor

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                    country                        exclfeed3    s03rec24   n_cell      n
-------------------------  -----------------------------  ----------  ---------  -------  -----
ki0047075b-MAL-ED          BANGLADESH                     0                   0       63    236
ki0047075b-MAL-ED          BANGLADESH                     0                   1        0    236
ki0047075b-MAL-ED          BANGLADESH                     1                   0      165    236
ki0047075b-MAL-ED          BANGLADESH                     1                   1        8    236
ki0047075b-MAL-ED          BRAZIL                         0                   0      122    217
ki0047075b-MAL-ED          BRAZIL                         0                   1       11    217
ki0047075b-MAL-ED          BRAZIL                         1                   0       77    217
ki0047075b-MAL-ED          BRAZIL                         1                   1        7    217
ki0047075b-MAL-ED          INDIA                          0                   0       87    236
ki0047075b-MAL-ED          INDIA                          0                   1        6    236
ki0047075b-MAL-ED          INDIA                          1                   0      136    236
ki0047075b-MAL-ED          INDIA                          1                   1        7    236
ki0047075b-MAL-ED          NEPAL                          0                   0      139    234
ki0047075b-MAL-ED          NEPAL                          0                   1       10    234
ki0047075b-MAL-ED          NEPAL                          1                   0       84    234
ki0047075b-MAL-ED          NEPAL                          1                   1        1    234
ki0047075b-MAL-ED          PERU                           0                   0      189    269
ki0047075b-MAL-ED          PERU                           0                   1       17    269
ki0047075b-MAL-ED          PERU                           1                   0       61    269
ki0047075b-MAL-ED          PERU                           1                   1        2    269
ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      220    268
ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1       15    268
ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0       29    268
ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        4    268
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      176    243
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1        1    243
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0       66    243
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0    243
ki1000108-CMC-V-BCS-2002   INDIA                          0                   0        0     10
ki1000108-CMC-V-BCS-2002   INDIA                          0                   1        0     10
ki1000108-CMC-V-BCS-2002   INDIA                          1                   0       10     10
ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        0     10
ki1000108-IRC              INDIA                          0                   0       10     10
ki1000108-IRC              INDIA                          0                   1        0     10
ki1000108-IRC              INDIA                          1                   0        0     10
ki1000108-IRC              INDIA                          1                   1        0     10
ki1000109-EE               PAKISTAN                       0                   0       28    348
ki1000109-EE               PAKISTAN                       0                   1        0    348
ki1000109-EE               PAKISTAN                       1                   0      320    348
ki1000109-EE               PAKISTAN                       1                   1        0    348
ki1017093b-PROVIDE         BANGLADESH                     0                   0      187    690
ki1017093b-PROVIDE         BANGLADESH                     0                   1        7    690
ki1017093b-PROVIDE         BANGLADESH                     1                   0      481    690
ki1017093b-PROVIDE         BANGLADESH                     1                   1       15    690
ki1101329-Keneba           GAMBIA                         0                   0      209   1956
ki1101329-Keneba           GAMBIA                         0                   1        2   1956
ki1101329-Keneba           GAMBIA                         1                   0     1672   1956
ki1101329-Keneba           GAMBIA                         1                   1       73   1956
ki1113344-GMS-Nepal        NEPAL                          0                   0      160    942
ki1113344-GMS-Nepal        NEPAL                          0                   1        4    942
ki1113344-GMS-Nepal        NEPAL                          1                   0      762    942
ki1113344-GMS-Nepal        NEPAL                          1                   1       16    942


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
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1101329-Keneba, country: GAMBIA
* studyid: ki1113344-GMS-Nepal, country: NEPAL

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* studyid: ki1000108-IRC, country: INDIA
* studyid: ki1000109-EE, country: PAKISTAN
* studyid: ki1101329-Keneba, country: GAMBIA
* studyid: ki1113344-GMS-Nepal, country: NEPAL

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/3083cbba-04e4-470b-b00d-3f4057991dc6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3083cbba-04e4-470b-b00d-3f4057991dc6/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3083cbba-04e4-470b-b00d-3f4057991dc6/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3083cbba-04e4-470b-b00d-3f4057991dc6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid              country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED    BRAZIL       0                    NA                0.0827068   0.0357876   0.1296259
ki0047075b-MAL-ED    BRAZIL       1                    NA                0.0833333   0.0240918   0.1425749
ki0047075b-MAL-ED    INDIA        0                    NA                0.0645161   0.0144803   0.1145519
ki0047075b-MAL-ED    INDIA        1                    NA                0.0489510   0.0135118   0.0843903
ki1017093b-PROVIDE   BANGLADESH   0                    NA                0.0360825   0.0098203   0.0623446
ki1017093b-PROVIDE   BANGLADESH   1                    NA                0.0302419   0.0151599   0.0453239


### Parameter: E(Y)


studyid              country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED    BRAZIL       NA                   NA                0.0829493   0.0461682   0.1197304
ki0047075b-MAL-ED    INDIA        NA                   NA                0.0550847   0.0259154   0.0842541
ki1017093b-PROVIDE   BANGLADESH   NA                   NA                0.0318841   0.0187654   0.0450027


### Parameter: RR


studyid              country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
-------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
ki0047075b-MAL-ED    BRAZIL       0                    0                 1.0000000   1.0000000   1.000000
ki0047075b-MAL-ED    BRAZIL       1                    0                 1.0075758   0.4057742   2.501906
ki0047075b-MAL-ED    INDIA        0                    0                 1.0000000   1.0000000   1.000000
ki0047075b-MAL-ED    INDIA        1                    0                 0.7587413   0.2626197   2.192099
ki1017093b-PROVIDE   BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
ki1017093b-PROVIDE   BANGLADESH   1                    0                 0.8381336   0.3468437   2.025316


### Parameter: PAR


studyid              country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
ki0047075b-MAL-ED    BRAZIL       0                    NA                 0.0002425   -0.0290108   0.0294958
ki0047075b-MAL-ED    INDIA        0                    NA                -0.0094314   -0.0465968   0.0277340
ki1017093b-PROVIDE   BANGLADESH   0                    NA                -0.0041984   -0.0259692   0.0175724


### Parameter: PAF


studyid              country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
ki0047075b-MAL-ED    BRAZIL       0                    NA                 0.0029240   -0.4201588   0.2999652
ki0047075b-MAL-ED    INDIA        0                    NA                -0.1712159   -1.0742466   0.3386772
ki1017093b-PROVIDE   BANGLADESH   0                    NA                -0.1316776   -1.0653568   0.3799162
