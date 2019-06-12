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

**Outcome Variable:** haz

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

agecat      studyid                    country                        hhwealth_quart    n_cell       n
----------  -------------------------  -----------------------------  ---------------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4             21      82
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1             21      82
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2             20      82
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3             20      82
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q4             12      55
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q1             17      55
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q2             15      55
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q3             11      55
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q4              9      31
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q1              8      31
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q2              7      31
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q3              7      31
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q4             10      36
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q1              9      36
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q2              9      36
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q3              8      36
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4             15      61
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1             16      61
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2             14      61
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3             16      61
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4              5      23
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1              6      23
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2              7      23
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3              5      23
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4             31      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1             14      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2             20      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3             25      90
Birth       ki1000108-IRC              INDIA                          Wealth Q4             91     388
Birth       ki1000108-IRC              INDIA                          Wealth Q1             98     388
Birth       ki1000108-IRC              INDIA                          Wealth Q2             99     388
Birth       ki1000108-IRC              INDIA                          Wealth Q3            100     388
Birth       ki1114097-CONTENT          PERU                           Wealth Q4              0       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q1              0       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q2              1       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q3              1       2
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4            293     816
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q1            157     816
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q2            161     816
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q3            205     816
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            842    3049
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            687    3049
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            538    3049
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            982    3049
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4           4151   19594
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1           5202   19594
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2           5346   19594
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3           4895   19594
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            183     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            209     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            219     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            211     822
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4             21      81
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1             21      81
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2             19      81
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3             20      81
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4             18      71
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1             19      71
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2             17      71
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3             17      71
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4             11      42
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1             11      42
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2             10      42
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3             10      42
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4             10      36
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1              9      36
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2              8      36
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3              9      36
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4             17      65
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1             16      65
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2             16      65
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3             16      65
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4             15      58
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1             13      58
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2             15      58
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3             15      58
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4             94     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1             91     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2             94     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3             90     369
6 months    ki1000108-IRC              INDIA                          Wealth Q4             99     407
6 months    ki1000108-IRC              INDIA                          Wealth Q1            105     407
6 months    ki1000108-IRC              INDIA                          Wealth Q2            100     407
6 months    ki1000108-IRC              INDIA                          Wealth Q3            103     407
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            155     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            138     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            140     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            148     581
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            502    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            605    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            409    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            504    2020
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            141     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            145     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            139     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            138     563
6 months    ki1114097-CONTENT          PERU                           Wealth Q4             52     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q1             59     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q2             52     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q3             52     215
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            339     925
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            175     925
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            195     925
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            216     925
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            743    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            570    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            485    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            910    2708
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            217     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1            203     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2            199     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            197     816
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4           4742   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1           3705   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2           4157   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3           4199   16803
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4           1140    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1           1203    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2           1211    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3           1271    4825
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4             21      77
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1             21      77
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2             17      77
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3             18      77
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4             18      71
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1             19      71
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2             17      71
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3             17      71
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4             11      42
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1             11      42
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2             10      42
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3             10      42
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4             10      32
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1              7      32
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2              8      32
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3              7      32
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4             16      66
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1             16      66
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2             17      66
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3             17      66
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4             15      59
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1             15      59
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2             15      59
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3             14      59
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4             95     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1             91     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2             95     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3             91     372
24 months   ki1000108-IRC              INDIA                          Wealth Q4            100     409
24 months   ki1000108-IRC              INDIA                          Wealth Q1            105     409
24 months   ki1000108-IRC              INDIA                          Wealth Q2            101     409
24 months   ki1000108-IRC              INDIA                          Wealth Q3            103     409
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            156     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            129     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            142     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            149     576
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4              1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1              4       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2              1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3              0       6
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            127     499
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            127     499
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            126     499
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            119     499
24 months   ki1114097-CONTENT          PERU                           Wealth Q4             41     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q1             40     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q2             42     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q3             41     164
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            403    1038
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            203    1038
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            213    1038
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            219    1038
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            688    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            489    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            423    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            845    2445
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            160     574
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            129     574
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            146     574
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            139     574
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4           2231    8623
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1           2020    8623
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2           2206    8623
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3           2166    8623
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4           1141    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1           1170    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2           1166    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3           1270    4747


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
![](/tmp/eaf2dce2-6f04-40f3-96a0-c49bef1eef5d/487aacfa-0243-48d7-b635-68dd122f8622/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.9485894   -1.2173842   -0.6797945
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.7502372   -1.1870144   -0.3134599
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.9085328   -1.7602005   -0.0568650
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -1.2062969   -1.8760089   -0.5365848
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.3923898   -1.0911256    0.3063459
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.8250738   -1.7625773    0.1124298
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -1.1193963   -1.6291507   -0.6096419
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.2955284   -0.5703402   -0.0207165
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.1070735   -0.0566599    0.2708068
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.1191257   -0.1890848   -0.0491666
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.5508810   -1.5873973   -1.5143646
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.4466569   -1.5972735   -1.2960403
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.2278865   -1.3910739   -1.0646991
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.0899207   -1.4597981   -0.7200432
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.6821234   -1.0550410   -0.3092058
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -1.9435148   -2.8382984   -1.0487312
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -1.3324479   -1.9781250   -0.6867708
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.8739904   -2.1548136   -1.5931672
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -1.1061009   -1.3776191   -0.8345826
6 months    ki1000108-IRC              INDIA                          optimal              observed          -1.1321958   -1.4202264   -0.8441651
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.8481342   -0.9969154   -0.6993529
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.4167649   -0.5056566   -0.3278732
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.4226870   -1.5577380   -1.2876360
6 months    ki1114097-CONTENT          PERU                           optimal              observed          -0.6105988   -0.9750979   -0.2460997
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -1.6445526   -1.7593861   -1.5297192
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.9165057   -0.9976893   -0.8353222
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.7928909   -1.9381485   -1.6476333
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.1870784   -1.2292033   -1.1449536
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.1720619   -1.2473217   -1.0968022
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -2.0853269   -2.4685095   -1.7021444
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.4380668   -1.8353021   -1.0408315
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -1.4217903   -1.8002576   -1.0433230
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -2.2985648   -2.9276813   -1.6694484
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -1.0288098   -1.5104646   -0.5471550
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.4799622   -3.0358061   -1.9241183
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -2.6661760   -2.8707866   -2.4615653
24 months   ki1000108-IRC              INDIA                          optimal              observed          -1.5130517   -1.7067644   -1.3193391
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.2485044   -1.4138973   -1.0831115
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.8647307   -2.0285565   -1.7009050
24 months   ki1114097-CONTENT          PERU                           optimal              observed          -0.6676128   -0.9919226   -0.3433029
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -2.6520956   -2.7510145   -2.5531767
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -1.9909899   -2.0732640   -1.9087158
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.7446619   -1.8967497   -1.5925741
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.8276589   -1.8745195   -1.7807982
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.5453428   -1.6147200   -1.4759656


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.0813415   -1.3098662   -0.8528167
Birth       ki0047075b-MAL-ED          INDIA                          observed             observed          -1.0841818   -1.3853089   -0.7830548
Birth       ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.8770968   -1.1861056   -0.5680880
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -1.0513889   -1.3551960   -0.7475818
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.5011475   -0.7582104   -0.2440847
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.7026087   -1.0554952   -0.3497222
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.9654444   -1.1742112   -0.7566777
Birth       ki1000108-IRC              INDIA                          observed             observed          -0.3080412   -0.4687931   -0.1472894
Birth       ki1135781-COHORTS          GUATEMALA                      observed             observed           0.1452941    0.0610109    0.2295774
Birth       ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.2491505   -0.2881717   -0.2101294
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.5750490   -1.5948262   -1.5552718
Birth       kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.4976642   -1.5817349   -1.4135935
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.2886008   -1.5330953   -1.0441063
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -1.1499296   -1.3858882   -0.9139710
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.7429762   -0.9817457   -0.5042067
6 months    ki0047075b-MAL-ED          PERU                           observed             observed          -1.5801389   -1.8994566   -1.2608211
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.8550000   -1.0838479   -0.6261521
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.4104598   -1.6281211   -1.1927984
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -1.4234508   -1.5645974   -1.2823042
6 months    ki1000108-IRC              INDIA                          observed             observed          -1.2344062   -1.3658524   -1.1029600
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.0925674   -1.1686395   -1.0164954
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.5442232   -0.5932373   -0.4952090
6 months    ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.3321522   -1.4103691   -1.2539352
6 months    ki1114097-CONTENT          PERU                           observed             observed          -0.3139217   -0.4868486   -0.1409948
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.8112324   -1.8807284   -1.7417365
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -1.1405724   -1.1824954   -1.0986493
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed          -1.6426961   -1.7120603   -1.5733318
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.3132090   -1.3363486   -1.2900693
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.3440477   -1.3813060   -1.3067894
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -2.0155844   -2.2679754   -1.7631934
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -1.8247183   -2.0459767   -1.6034599
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -1.5063095   -1.7704452   -1.2421738
24 months   ki0047075b-MAL-ED          PERU                           observed             observed          -2.1384375   -2.4638687   -1.8130063
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.4993939   -1.7838130   -1.2149749
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.6744068   -2.9325198   -2.4162938
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -2.5593683   -2.6601027   -2.4586339
24 months   ki1000108-IRC              INDIA                          observed             observed          -1.7824776   -1.8765600   -1.6883952
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.5853993   -1.6687810   -1.5020176
24 months   ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.8835905   -1.9681499   -1.7990312
24 months   ki1114097-CONTENT          PERU                           observed             observed          -0.6962195   -0.8674103   -0.5250287
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -2.8581407   -2.9236747   -2.7926066
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -2.3898650   -2.4346888   -2.3450412
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -1.8714634   -1.9528558   -1.7900711
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -2.0125560   -2.0402683   -1.9848436
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.7578934   -1.7933205   -1.7224663


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1327521   -0.4063673    0.1408631
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.3339446   -0.7059969    0.0381076
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.0314360   -0.6999968    0.7628688
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed           0.1549080   -0.4199937    0.7298096
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.1087577   -0.7150977    0.4975823
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1224651   -0.6902546    0.9351847
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.1539518   -0.3028937    0.6107974
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.0125129   -0.2428651    0.2178393
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.0382207   -0.0999343    0.1763757
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.1300249   -0.1894292   -0.0706205
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0241680   -0.0563059    0.0079698
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0510073   -0.1722594    0.0702448
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0607143   -0.3255428    0.2041141
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.0600089   -0.4234688    0.3034510
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0608528   -0.4233727    0.3016671
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           0.3633759   -0.3459179    1.0726698
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.4774479   -0.0612448    1.0161406
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.4635306    0.1625146    0.7645466
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.3173499   -0.5582697   -0.0764301
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.1022105   -0.3457105    0.1412896
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.2444332   -0.3736068   -0.1152597
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1274583   -0.1996343   -0.0552823
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed           0.0905348   -0.0336685    0.2147381
6 months    ki1114097-CONTENT          PERU                           optimal              observed           0.2966771   -0.0207121    0.6140662
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1666798   -0.2639636   -0.0693960
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.2240666   -0.2934149   -0.1547183
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.1501948    0.0259663    0.2744233
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1261305   -0.1599587   -0.0923023
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.1719857   -0.2352626   -0.1087089
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.0697425   -0.2992729    0.4387579
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.3866515   -0.7633244   -0.0099786
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0845192   -0.4643754    0.2953370
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.1601273   -0.4377414    0.7579960
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.4705841   -0.9172055   -0.0239627
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1944446   -0.6686540    0.2797649
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.1068077   -0.0716957    0.2853110
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.2694258   -0.4383095   -0.1005422
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.3368949   -0.4763786   -0.1974112
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0188598   -0.1620465    0.1243269
24 months   ki1114097-CONTENT          PERU                           optimal              observed          -0.0286068   -0.3154295    0.2582160
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.2060451   -0.2863861   -0.1257040
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.3988751   -0.4701953   -0.3275549
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.1268016   -0.2570636    0.0034605
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1848971   -0.2234750   -0.1463192
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.2125506   -0.2698890   -0.1552122
