---
title: "Optimal Treatment Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowOptTX','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
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
      W: []
      A: ['parity_cat']
      Y: ['haz']
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
        value: FALSE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
      maximize:
        input: checkbox
        value: TRUE
  output_directory:
    value: '~/tmp/'
editor_options: 
  chunk_output_type: console
---







## Methods
## Outcome Variable

**Outcome Variable:** whz

## Predictor Variables

**Intervention Variable:** hhwealth_quart

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nchldlt5
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nchldlt5
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        hhwealth_quart    n_cell      n
----------  -------------------------  -----------------------------  ---------------  -------  -----
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4             21     76
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1             17     76
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2             18     76
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3             20     76
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q4             11     54
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q1             17     54
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q2             15     54
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q3             11     54
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q4              9     30
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q1              8     30
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q2              6     30
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q3              7     30
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q4             10     36
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q1              9     36
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q2              9     36
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q3              8     36
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4             15     61
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1             16     61
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2             14     61
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3             16     61
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4              5     23
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1              6     23
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2              7     23
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3              5     23
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4             31     88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1             12     88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2             20     88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3             25     88
Birth       ki1000108-IRC              INDIA                          Wealth Q4             79    343
Birth       ki1000108-IRC              INDIA                          Wealth Q1             90    343
Birth       ki1000108-IRC              INDIA                          Wealth Q2             83    343
Birth       ki1000108-IRC              INDIA                          Wealth Q3             91    343
Birth       ki1114097-CONTENT          PERU                           Wealth Q4              0      2
Birth       ki1114097-CONTENT          PERU                           Wealth Q1              0      2
Birth       ki1114097-CONTENT          PERU                           Wealth Q2              1      2
Birth       ki1114097-CONTENT          PERU                           Wealth Q3              1      2
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4            134    355
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q1             85    355
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q2             59    355
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q3             77    355
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            815   2898
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            647   2898
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            506   2898
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            930   2898
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4           1778   7676
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1           1920   7676
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2           2045   7676
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3           1933   7676
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4             39    185
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1             42    185
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2             45    185
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3             59    185
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4             21     81
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1             21     81
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2             19     81
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3             20     81
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4             18     71
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1             19     71
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2             17     71
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3             17     71
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4             11     42
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1             11     42
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2             10     42
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3             10     42
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4             10     36
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1              9     36
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2              8     36
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3              9     36
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4             17     65
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1             16     65
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2             16     65
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3             16     65
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4             15     58
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1             13     58
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2             15     58
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3             15     58
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4             95    368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1             90    368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2             93    368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3             90    368
6 months    ki1000108-IRC              INDIA                          Wealth Q4            100    408
6 months    ki1000108-IRC              INDIA                          Wealth Q1            104    408
6 months    ki1000108-IRC              INDIA                          Wealth Q2            102    408
6 months    ki1000108-IRC              INDIA                          Wealth Q3            102    408
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            155    580
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            137    580
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            140    580
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            148    580
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            501   2019
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            605   2019
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            409   2019
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            504   2019
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            141    563
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            145    563
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            139    563
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            138    563
6 months    ki1114097-CONTENT          PERU                           Wealth Q4             52    215
6 months    ki1114097-CONTENT          PERU                           Wealth Q1             59    215
6 months    ki1114097-CONTENT          PERU                           Wealth Q2             52    215
6 months    ki1114097-CONTENT          PERU                           Wealth Q3             52    215
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            170    440
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1             95    440
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2             83    440
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3             92    440
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            744   2706
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            569   2706
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            485   2706
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            908   2706
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            217    816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1            203    816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2            199    816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            197    816
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4           2368   8303
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1           1805   8303
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2           2042   8303
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3           2088   8303
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            286   1254
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            331   1254
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            294   1254
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            343   1254
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4             21     77
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1             21     77
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2             17     77
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3             18     77
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4             18     71
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1             19     71
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2             17     71
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3             17     71
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4             11     42
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1             11     42
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2             10     42
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3             10     42
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4             10     32
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1              7     32
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2              8     32
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3              7     32
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4             16     66
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1             16     66
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2             17     66
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3             17     66
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4             15     59
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1             15     59
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2             15     59
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3             14     59
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4             95    372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1             91    372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2             95    372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3             91    372
24 months   ki1000108-IRC              INDIA                          Wealth Q4            100    409
24 months   ki1000108-IRC              INDIA                          Wealth Q1            105    409
24 months   ki1000108-IRC              INDIA                          Wealth Q2            101    409
24 months   ki1000108-IRC              INDIA                          Wealth Q3            103    409
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            156    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            130    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            142    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            149    577
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4              1      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1              4      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2              1      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3              0      6
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            127    498
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            126    498
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            126    498
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            119    498
24 months   ki1114097-CONTENT          PERU                           Wealth Q4             41    164
24 months   ki1114097-CONTENT          PERU                           Wealth Q1             40    164
24 months   ki1114097-CONTENT          PERU                           Wealth Q2             42    164
24 months   ki1114097-CONTENT          PERU                           Wealth Q3             41    164
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            205    502
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            108    502
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2             97    502
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3             92    502
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            685   2449
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            492   2449
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            424   2449
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            848   2449
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            155    558
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            127    558
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            140    558
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            136    558
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4           1112   4277
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            999   4277
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2           1088   4277
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3           1078   4277
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            294   1248
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            310   1248
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            294   1248
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            350   1248


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/a4553d32-d9b4-46e0-ada2-908323019ddb/b1ff216d-8182-492c-8e33-3ea18fd49373/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.6681954   -1.0506848   -0.2857061
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.1686740   -1.7647329   -0.5726152
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.4677418   -1.3370349    0.4015514
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed           0.0839420   -0.5997413    0.7676253
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.0016584   -0.7586806    0.7619974
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.3895843   -1.3574051    2.1365736
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.3218894   -0.8730898    0.2293110
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.7573463   -1.0958778   -0.4188149
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -1.0419400   -1.2661825   -0.8176976
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.7412921   -0.8331886   -0.6493956
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.7069603   -0.7615610   -0.6523597
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.2296574   -0.5885867    0.1292719
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.2226333   -0.5975650    0.1522985
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.3547292   -2.0175056   -0.6919527
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0421061   -0.6467089    0.5624967
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           0.6299415   -0.1613858    1.4212689
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.4754454   -0.1139193    1.0648102
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.4488258    0.0392063    0.8584452
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0264069   -0.3593983    0.3065846
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.5435320   -0.8241763   -0.2628877
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.2693893   -0.4356322   -0.1031464
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0783789   -0.0327794    0.1895373
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.6720083   -0.8321092   -0.5119074
6 months    ki1114097-CONTENT          PERU                           optimal              observed           1.2454448    1.0140965    1.4767930
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.0853536   -0.1183209    0.2890281
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.2305143   -0.3051704   -0.1558582
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.5916608    0.4542139    0.7291077
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.5335561   -0.5833715   -0.4837406
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.3060429   -0.4344840   -0.1776019
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.7767973   -1.1352427   -0.4183518
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.6147668   -1.0823470   -0.1471866
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.3369712   -0.8966992    0.2227568
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.1326620   -0.7898075    0.5244835
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.1515975   -0.2804220    0.5836171
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.4491445   -0.0924537    0.9907428
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.3297807   -0.5362223   -0.1233391
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.7225447   -0.8990651   -0.5460243
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.8781750   -1.0212300   -0.7351200
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.0453058   -1.2289646   -0.8616470
24 months   ki1114097-CONTENT          PERU                           optimal              observed           0.4033989    0.1096107    0.6971871
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.4022526   -0.5217570   -0.2827483
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.4703543   -0.5367912   -0.4039173
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.1105494   -0.2607478    0.0396489
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.2705447   -1.3291530   -1.2119364
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.1726245   -1.2904984   -1.0547506


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.9414474   -1.1655223   -0.7173724
Birth       ki0047075b-MAL-ED          INDIA                          observed             observed          -1.0992593   -1.4060416   -0.7924769
Birth       ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.8496667   -1.2385841   -0.4607492
Birth       ki0047075b-MAL-ED          PERU                           observed             observed           0.0766667   -0.2519852    0.4053186
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.1047541   -0.4290621    0.2195539
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5930435    0.1251922    1.0608948
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.6275000   -0.9746292   -0.2803708
Birth       ki1000108-IRC              INDIA                          observed             observed          -1.0105831   -1.1973019   -0.8238643
Birth       ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.2584507   -1.4013649   -1.1155365
Birth       ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.7422912   -0.7886598   -0.6959226
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.7662454   -0.7931586   -0.7393323
Birth       kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.2903784   -0.4497929   -0.1309639
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.2054115   -0.4495784    0.0387554
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -0.7227934   -0.9900648   -0.4555221
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed           0.0465079   -0.2108391    0.3038550
6 months    ki0047075b-MAL-ED          PERU                           observed             observed           0.8727778    0.5137098    1.2318457
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.4787179    0.2126042    0.7448317
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5033333    0.2619074    0.7447593
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.5026766   -0.6536848   -0.3516685
6 months    ki1000108-IRC              INDIA                          observed             observed          -0.5989297   -0.7344491   -0.4634104
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.2080201   -0.2927357   -0.1233045
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0801680    0.0273223    0.1330136
6 months    ki1113344-GMS-Nepal        NEPAL                          observed             observed          -0.6047987   -0.6909649   -0.5186325
6 months    ki1114097-CONTENT          PERU                           observed             observed           1.0684318    0.9515274    1.1853362
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed           0.0432727   -0.0689069    0.1554524
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.2938433   -0.3352064   -0.2524802
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed           0.4418137    0.3703100    0.5133174
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.5893545   -0.6168122   -0.5618967
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.3684250   -0.4392750   -0.2975751
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.7648701   -0.9729655   -0.5567748
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -0.9125352   -1.1472376   -0.6778328
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.3526190   -0.5782459   -0.1269921
24 months   ki0047075b-MAL-ED          PERU                           observed             observed          -0.0095312   -0.3657847    0.3467222
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.3131818    0.1018345    0.5245291
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.0049153   -0.2462498    0.2364193
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.5571505   -0.6585247   -0.4557763
24 months   ki1000108-IRC              INDIA                          observed             observed          -0.7458150   -0.8368180   -0.6548120
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.8896187   -0.9726240   -0.8066134
24 months   ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.1315863   -1.2192240   -1.0439487
24 months   ki1114097-CONTENT          PERU                           observed             observed           0.5668293    0.4302437    0.7034148
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -0.5505976   -0.6268515   -0.4743437
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.6099592   -0.6467541   -0.5731643
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -0.0478674   -0.1301904    0.0344557
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.2916413   -1.3242424   -1.2590403
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.2302244   -1.2892920   -1.1711567


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.2732519   -0.6302682    0.0837643
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed           0.0694148   -0.4793215    0.6181510
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.3819249   -1.0979405    0.3340907
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0072753   -0.6321351    0.6175845
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.1064125   -0.7304552    0.5176303
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.2034592   -1.2568307    1.6637491
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.3056106   -0.7817778    0.1705565
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.2532368   -0.5284562    0.0219827
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.2165107   -0.3809224   -0.0520989
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0009991   -0.0810739    0.0790757
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0592851   -0.1061409   -0.0124293
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0607209   -0.3612363    0.2397945
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.0172218   -0.3460125    0.3804560
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed           0.6319357    0.0361597    1.2277118
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.0886140   -0.4298291    0.6070572
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           0.2428362   -0.4921603    0.9778328
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.0032725   -0.5119459    0.5184909
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0545076   -0.3141299    0.4231450
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.4762698   -0.7552396   -0.1972999
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.0553977   -0.2966273    0.1858319
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed           0.0613692   -0.0812438    0.2039821
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0017891   -0.0956055    0.0991836
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed           0.0672096   -0.0752868    0.2097060
6 months    ki1114097-CONTENT          PERU                           optimal              observed          -0.1770130   -0.3815957    0.0275696
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0420809   -0.2086908    0.1245290
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0633290   -0.1281930    0.0015350
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.1498471   -0.2698674   -0.0298268
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0557984   -0.0957505   -0.0158463
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0623821   -0.1796265    0.0548623
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.0119272   -0.3217577    0.3456120
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.2977684   -0.7161495    0.1206126
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0156478   -0.4840284    0.4527328
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.1231307   -0.5075430    0.7538044
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.1615843   -0.2213002    0.5444687
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.4540598   -0.9210640    0.0129444
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.2273698   -0.4036441   -0.0510956
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.0232703   -0.1778767    0.1313361
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0114438   -0.1386040    0.1157164
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0862805   -0.2444243    0.0718632
24 months   ki1114097-CONTENT          PERU                           optimal              observed           0.1634304   -0.0871984    0.4140591
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1483450   -0.2404787   -0.0562113
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.1396049   -0.1961469   -0.0830629
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed           0.0626820   -0.0699002    0.1952643
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0210966   -0.0720464    0.0298532
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0575998   -0.1546951    0.0394955
