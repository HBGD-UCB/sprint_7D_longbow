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

**Intervention Variable:** mage

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                    country                        mage       s03rec24   n_cell      n
-------------------------  -----------------------------  --------  ---------  -------  -----
ki0047075b-MAL-ED          BANGLADESH                     <25               0      111    247
ki0047075b-MAL-ED          BANGLADESH                     <25               1        4    247
ki0047075b-MAL-ED          BANGLADESH                     [25-30)           0       86    247
ki0047075b-MAL-ED          BANGLADESH                     [25-30)           1        4    247
ki0047075b-MAL-ED          BANGLADESH                     >=30              0       42    247
ki0047075b-MAL-ED          BANGLADESH                     >=30              1        0    247
ki0047075b-MAL-ED          BRAZIL                         <25               0      102    223
ki0047075b-MAL-ED          BRAZIL                         <25               1       10    223
ki0047075b-MAL-ED          BRAZIL                         [25-30)           0       56    223
ki0047075b-MAL-ED          BRAZIL                         [25-30)           1        5    223
ki0047075b-MAL-ED          BRAZIL                         >=30              0       47    223
ki0047075b-MAL-ED          BRAZIL                         >=30              1        3    223
ki0047075b-MAL-ED          INDIA                          <25               0      130    244
ki0047075b-MAL-ED          INDIA                          <25               1       10    244
ki0047075b-MAL-ED          INDIA                          [25-30)           0       82    244
ki0047075b-MAL-ED          INDIA                          [25-30)           1        1    244
ki0047075b-MAL-ED          INDIA                          >=30              0       20    244
ki0047075b-MAL-ED          INDIA                          >=30              1        1    244
ki0047075b-MAL-ED          NEPAL                          <25               0       60    238
ki0047075b-MAL-ED          NEPAL                          <25               1        4    238
ki0047075b-MAL-ED          NEPAL                          [25-30)           0      122    238
ki0047075b-MAL-ED          NEPAL                          [25-30)           1        6    238
ki0047075b-MAL-ED          NEPAL                          >=30              0       45    238
ki0047075b-MAL-ED          NEPAL                          >=30              1        1    238
ki0047075b-MAL-ED          PERU                           <25               0      150    284
ki0047075b-MAL-ED          PERU                           <25               1        9    284
ki0047075b-MAL-ED          PERU                           [25-30)           0       54    284
ki0047075b-MAL-ED          PERU                           [25-30)           1        7    284
ki0047075b-MAL-ED          PERU                           >=30              0       61    284
ki0047075b-MAL-ED          PERU                           >=30              1        3    284
ki0047075b-MAL-ED          SOUTH AFRICA                   <25               0      134    302
ki0047075b-MAL-ED          SOUTH AFRICA                   <25               1        9    302
ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)           0       51    302
ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)           1        4    302
ki0047075b-MAL-ED          SOUTH AFRICA                   >=30              0       98    302
ki0047075b-MAL-ED          SOUTH AFRICA                   >=30              1        6    302
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25               0       81    253
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25               1        0    253
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)           0       68    253
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)           1        0    253
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30              0      103    253
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30              1        1    253
ki1000108-CMC-V-BCS-2002   INDIA                          <25               0      206    370
ki1000108-CMC-V-BCS-2002   INDIA                          <25               1       14    370
ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)           0      104    370
ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)           1        3    370
ki1000108-CMC-V-BCS-2002   INDIA                          >=30              0       43    370
ki1000108-CMC-V-BCS-2002   INDIA                          >=30              1        0    370
ki1000108-IRC              INDIA                          <25               0      240    410
ki1000108-IRC              INDIA                          <25               1       18    410
ki1000108-IRC              INDIA                          [25-30)           0      115    410
ki1000108-IRC              INDIA                          [25-30)           1        8    410
ki1000108-IRC              INDIA                          >=30              0       27    410
ki1000108-IRC              INDIA                          >=30              1        2    410
ki1000109-EE               PAKISTAN                       <25               0       20    348
ki1000109-EE               PAKISTAN                       <25               1        0    348
ki1000109-EE               PAKISTAN                       [25-30)           0      118    348
ki1000109-EE               PAKISTAN                       [25-30)           1        0    348
ki1000109-EE               PAKISTAN                       >=30              0      210    348
ki1000109-EE               PAKISTAN                       >=30              1        0    348
ki1017093b-PROVIDE         BANGLADESH                     <25               0      354    690
ki1017093b-PROVIDE         BANGLADESH                     <25               1        9    690
ki1017093b-PROVIDE         BANGLADESH                     [25-30)           0      200    690
ki1017093b-PROVIDE         BANGLADESH                     [25-30)           1        7    690
ki1017093b-PROVIDE         BANGLADESH                     >=30              0      114    690
ki1017093b-PROVIDE         BANGLADESH                     >=30              1        6    690
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25               0      872   2258
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25               1        1   2258
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)           0      771   2258
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)           1        1   2258
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30              0      613   2258
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30              1        0   2258
ki1101329-Keneba           GAMBIA                         <25               0      927   2448
ki1101329-Keneba           GAMBIA                         <25               1       50   2448
ki1101329-Keneba           GAMBIA                         [25-30)           0      539   2448
ki1101329-Keneba           GAMBIA                         [25-30)           1        9   2448
ki1101329-Keneba           GAMBIA                         >=30              0      903   2448
ki1101329-Keneba           GAMBIA                         >=30              1       20   2448
ki1113344-GMS-Nepal        NEPAL                          <25               0      634   1188
ki1113344-GMS-Nepal        NEPAL                          <25               1       22   1188
ki1113344-GMS-Nepal        NEPAL                          [25-30)           0      348   1188
ki1113344-GMS-Nepal        NEPAL                          [25-30)           1        6   1188
ki1113344-GMS-Nepal        NEPAL                          >=30              0      176   1188
ki1113344-GMS-Nepal        NEPAL                          >=30              1        2   1188


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
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1101329-Keneba, country: GAMBIA
* studyid: ki1113344-GMS-Nepal, country: NEPAL

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
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1113344-GMS-Nepal, country: NEPAL

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/0a4d3f2a-4f83-420d-98a2-cf9344b30981/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/0a4d3f2a-4f83-420d-98a2-cf9344b30981/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/0a4d3f2a-4f83-420d-98a2-cf9344b30981/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/0a4d3f2a-4f83-420d-98a2-cf9344b30981/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid              country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1017093b-PROVIDE   BANGLADESH   <25                  NA                0.0247934   0.0087858   0.0408010
ki1017093b-PROVIDE   BANGLADESH   [25-30)              NA                0.0338164   0.0091747   0.0584582
ki1017093b-PROVIDE   BANGLADESH   >=30                 NA                0.0500000   0.0109771   0.0890229
ki1101329-Keneba     GAMBIA       <25                  NA                0.0511771   0.0373567   0.0649974
ki1101329-Keneba     GAMBIA       [25-30)              NA                0.0164234   0.0057799   0.0270668
ki1101329-Keneba     GAMBIA       >=30                 NA                0.0216685   0.0122736   0.0310634


### Parameter: E(Y)


studyid              country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1017093b-PROVIDE   BANGLADESH   NA                   NA                0.0318841   0.0187654   0.0450027
ki1101329-Keneba     GAMBIA       NA                   NA                0.0322712   0.0252693   0.0392731


### Parameter: RR


studyid              country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1017093b-PROVIDE   BANGLADESH   <25                  <25               1.0000000   1.0000000   1.0000000
ki1017093b-PROVIDE   BANGLADESH   [25-30)              <25               1.3639291   0.5151989   3.6108434
ki1017093b-PROVIDE   BANGLADESH   >=30                 <25               2.0166667   0.7323821   5.5530362
ki1101329-Keneba     GAMBIA       <25                  <25               1.0000000   1.0000000   1.0000000
ki1101329-Keneba     GAMBIA       [25-30)              <25               0.3209124   0.1590292   0.6475843
ki1101329-Keneba     GAMBIA       >=30                 <25               0.4234020   0.2540481   0.7056506


### Parameter: PAR


studyid              country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
ki1017093b-PROVIDE   BANGLADESH   <25                  NA                 0.0070907   -0.0055081    0.0196895
ki1101329-Keneba     GAMBIA       <25                  NA                -0.0189058   -0.0282637   -0.0095479


### Parameter: PAF


studyid              country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
ki1017093b-PROVIDE   BANGLADESH   <25                  NA                 0.2223892   -0.2757410    0.5260178
ki1101329-Keneba     GAMBIA       <25                  NA                -0.5858414   -0.8729588   -0.3427380
