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

**Intervention Variable:** enstunt

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                    country                        enstunt    s03rec24   n_cell      n
-------------------------  -----------------------------  --------  ---------  -------  -----
ki0047075b-MAL-ED          BANGLADESH                     0                 0      213    247
ki0047075b-MAL-ED          BANGLADESH                     0                 1        1    247
ki0047075b-MAL-ED          BANGLADESH                     1                 0       26    247
ki0047075b-MAL-ED          BANGLADESH                     1                 1        7    247
ki0047075b-MAL-ED          BRAZIL                         0                 0      204    223
ki0047075b-MAL-ED          BRAZIL                         0                 1        3    223
ki0047075b-MAL-ED          BRAZIL                         1                 0        1    223
ki0047075b-MAL-ED          BRAZIL                         1                 1       15    223
ki0047075b-MAL-ED          INDIA                          0                 0      208    246
ki0047075b-MAL-ED          INDIA                          0                 1        1    246
ki0047075b-MAL-ED          INDIA                          1                 0       25    246
ki0047075b-MAL-ED          INDIA                          1                 1       12    246
ki0047075b-MAL-ED          NEPAL                          0                 0      211    238
ki0047075b-MAL-ED          NEPAL                          0                 1        1    238
ki0047075b-MAL-ED          NEPAL                          1                 0       16    238
ki0047075b-MAL-ED          NEPAL                          1                 1       10    238
ki0047075b-MAL-ED          PERU                           0                 0      245    284
ki0047075b-MAL-ED          PERU                           0                 1       11    284
ki0047075b-MAL-ED          PERU                           1                 0       20    284
ki0047075b-MAL-ED          PERU                           1                 1        8    284
ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0      272    302
ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        7    302
ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0       11    302
ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1       12    302
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0      218    253
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1        0    253
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0       34    253
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        1    253
ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      289    370
ki1000108-CMC-V-BCS-2002   INDIA                          0                 1        6    370
ki1000108-CMC-V-BCS-2002   INDIA                          1                 0       64    370
ki1000108-CMC-V-BCS-2002   INDIA                          1                 1       11    370
ki1000108-IRC              INDIA                          0                 0      349    410
ki1000108-IRC              INDIA                          0                 1       13    410
ki1000108-IRC              INDIA                          1                 0       33    410
ki1000108-IRC              INDIA                          1                 1       15    410
ki1000109-EE               PAKISTAN                       0                 0      170    175
ki1000109-EE               PAKISTAN                       0                 1        0    175
ki1000109-EE               PAKISTAN                       1                 0        5    175
ki1000109-EE               PAKISTAN                       1                 1        0    175
ki1000109-ResPak           PAKISTAN                       0                 0      166    166
ki1000109-ResPak           PAKISTAN                       0                 1        0    166
ki1000109-ResPak           PAKISTAN                       1                 0        0    166
ki1000109-ResPak           PAKISTAN                       1                 1        0    166
ki1017093b-PROVIDE         BANGLADESH                     0                 0      626    690
ki1017093b-PROVIDE         BANGLADESH                     0                 1        5    690
ki1017093b-PROVIDE         BANGLADESH                     1                 0       42    690
ki1017093b-PROVIDE         BANGLADESH                     1                 1       17    690
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 0     2216   2276
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 1        0   2276
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0       58   2276
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1        2   2276
ki1101329-Keneba           GAMBIA                         0                 0     2201   2468
ki1101329-Keneba           GAMBIA                         0                 1       35   2468
ki1101329-Keneba           GAMBIA                         1                 0      187   2468
ki1101329-Keneba           GAMBIA                         1                 1       45   2468
ki1113344-GMS-Nepal        NEPAL                          0                 0      532    594
ki1113344-GMS-Nepal        NEPAL                          0                 1        0    594
ki1113344-GMS-Nepal        NEPAL                          1                 0       47    594
ki1113344-GMS-Nepal        NEPAL                          1                 1       15    594
ki1114097-CMIN             BANGLADESH                     0                 0      168    259
ki1114097-CMIN             BANGLADESH                     0                 1        0    259
ki1114097-CMIN             BANGLADESH                     1                 0       80    259
ki1114097-CMIN             BANGLADESH                     1                 1       11    259
ki1114097-CMIN             PERU                           0                 0      649    738
ki1114097-CMIN             PERU                           0                 1        0    738
ki1114097-CMIN             PERU                           1                 0       88    738
ki1114097-CMIN             PERU                           1                 1        1    738
ki1114097-CONTENT          PERU                           0                 0      192    214
ki1114097-CONTENT          PERU                           0                 1        4    214
ki1114097-CONTENT          PERU                           1                 0        8    214
ki1114097-CONTENT          PERU                           1                 1       10    214


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
* studyid: ki1113344-GMS-Nepal, country: NEPAL
* studyid: ki1114097-CMIN, country: BANGLADESH
* studyid: ki1114097-CMIN, country: PERU
* studyid: ki1114097-CONTENT, country: PERU

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: BRAZIL
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1000109-EE, country: PAKISTAN
* studyid: ki1000109-ResPak, country: PAKISTAN
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1113344-GMS-Nepal, country: NEPAL
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
![](/tmp/6c839a0f-2798-4854-aeeb-201fc51d0823/9f98d995-6e3b-4b64-9c80-86f6760d8d16/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6c839a0f-2798-4854-aeeb-201fc51d0823/9f98d995-6e3b-4b64-9c80-86f6760d8d16/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6c839a0f-2798-4854-aeeb-201fc51d0823/9f98d995-6e3b-4b64-9c80-86f6760d8d16/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6c839a0f-2798-4854-aeeb-201fc51d0823/9f98d995-6e3b-4b64-9c80-86f6760d8d16/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          PERU           0                    NA                0.0429688   0.0180840   0.0678535
ki0047075b-MAL-ED          PERU           1                    NA                0.2857143   0.1180900   0.4533386
ki0047075b-MAL-ED          SOUTH AFRICA   0                    NA                0.0250896   0.0067075   0.0434717
ki0047075b-MAL-ED          SOUTH AFRICA   1                    NA                0.5217391   0.3172532   0.7262251
ki1000108-CMC-V-BCS-2002   INDIA          0                    NA                0.0203390   0.0042092   0.0364687
ki1000108-CMC-V-BCS-2002   INDIA          1                    NA                0.1466667   0.0664933   0.2268400
ki1000108-IRC              INDIA          0                    NA                0.0359116   0.0167205   0.0551027
ki1000108-IRC              INDIA          1                    NA                0.3125000   0.1812138   0.4437862
ki1017093b-PROVIDE         BANGLADESH     0                    NA                0.0079239   0.0010010   0.0148469
ki1017093b-PROVIDE         BANGLADESH     1                    NA                0.2881356   0.1724887   0.4037825
ki1101329-Keneba           GAMBIA         0                    NA                0.0156530   0.0105069   0.0207990
ki1101329-Keneba           GAMBIA         1                    NA                0.1939655   0.1430757   0.2448554


### Parameter: E(Y)


studyid                    country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          PERU           NA                   NA                0.0669014   0.0377918   0.0960110
ki0047075b-MAL-ED          SOUTH AFRICA   NA                   NA                0.0629139   0.0354838   0.0903440
ki1000108-CMC-V-BCS-2002   INDIA          NA                   NA                0.0459459   0.0245838   0.0673081
ki1000108-IRC              INDIA          NA                   NA                0.0682927   0.0438464   0.0927390
ki1017093b-PROVIDE         BANGLADESH     NA                   NA                0.0318841   0.0187654   0.0450027
ki1101329-Keneba           GAMBIA         NA                   NA                0.0324149   0.0254265   0.0394034


### Parameter: RR


studyid                    country        intervention_level   baseline_level     estimate    ci_lower   ci_upper
-------------------------  -------------  -------------------  ---------------  ----------  ----------  ---------
ki0047075b-MAL-ED          PERU           0                    0                  1.000000    1.000000    1.00000
ki0047075b-MAL-ED          PERU           1                    0                  6.649351    2.915793   15.16358
ki0047075b-MAL-ED          SOUTH AFRICA   0                    0                  1.000000    1.000000    1.00000
ki0047075b-MAL-ED          SOUTH AFRICA   1                    0                 20.795031    9.059479   47.73269
ki1000108-CMC-V-BCS-2002   INDIA          0                    0                  1.000000    1.000000    1.00000
ki1000108-CMC-V-BCS-2002   INDIA          1                    0                  7.211111    2.752293   18.89338
ki1000108-IRC              INDIA          0                    0                  1.000000    1.000000    1.00000
ki1000108-IRC              INDIA          1                    0                  8.701923    4.409583   17.17248
ki1017093b-PROVIDE         BANGLADESH     0                    0                  1.000000    1.000000    1.00000
ki1017093b-PROVIDE         BANGLADESH     1                    0                 36.362712   13.902733   95.10697
ki1101329-Keneba           GAMBIA         0                    0                  1.000000    1.000000    1.00000
ki1101329-Keneba           GAMBIA         1                    0                 12.391626    8.136869   18.87119


### Parameter: PAR


studyid                    country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          PERU           0                    NA                0.0239327   0.0052184   0.0426469
ki0047075b-MAL-ED          SOUTH AFRICA   0                    NA                0.0378243   0.0162378   0.0594108
ki1000108-CMC-V-BCS-2002   INDIA          0                    NA                0.0256070   0.0082390   0.0429749
ki1000108-IRC              INDIA          0                    NA                0.0323811   0.0146171   0.0501451
ki1017093b-PROVIDE         BANGLADESH     0                    NA                0.0239601   0.0124550   0.0354653
ki1101329-Keneba           GAMBIA         0                    NA                0.0167620   0.0115336   0.0219903


### Parameter: PAF


studyid                    country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          PERU           0                    NA                0.3577303   0.0708369   0.5560409
ki0047075b-MAL-ED          SOUTH AFRICA   0                    NA                0.6012073   0.2908457   0.7757391
ki1000108-CMC-V-BCS-2002   INDIA          0                    NA                0.5573280   0.1660357   0.7650277
ki1000108-IRC              INDIA          0                    NA                0.4741515   0.2268928   0.6423308
ki1017093b-PROVIDE         BANGLADESH     0                    NA                0.7514767   0.4657798   0.8843851
ki1101329-Keneba           GAMBIA         0                    NA                0.5171064   0.3830880   0.6220106
