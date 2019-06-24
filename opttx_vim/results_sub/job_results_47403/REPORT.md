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

agecat      studyid                    country                        hhwealth_quart    n_cell       n
----------  -------------------------  -----------------------------  ---------------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4             21      76
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1             17      76
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2             18      76
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3             20      76
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q4             11      54
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q1             17      54
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q2             15      54
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q3             11      54
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q4              9      30
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q1              8      30
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q2              6      30
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q3              7      30
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
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4             31      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1             12      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2             20      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3             25      88
Birth       ki1000108-IRC              INDIA                          Wealth Q4             79     343
Birth       ki1000108-IRC              INDIA                          Wealth Q1             90     343
Birth       ki1000108-IRC              INDIA                          Wealth Q2             83     343
Birth       ki1000108-IRC              INDIA                          Wealth Q3             91     343
Birth       ki1114097-CONTENT          PERU                           Wealth Q4              0       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q1              0       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q2              1       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q3              1       2
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4            258     729
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q1            144     729
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q2            141     729
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q3            186     729
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            815    2898
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            647    2898
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            506    2898
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            930    2898
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4           3535   15691
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1           3968   15691
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2           4252   15691
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3           3936   15691
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            153     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            171     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            185     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            174     683
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
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4             95     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1             90     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2             93     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3             90     368
6 months    ki1000108-IRC              INDIA                          Wealth Q4            100     408
6 months    ki1000108-IRC              INDIA                          Wealth Q1            104     408
6 months    ki1000108-IRC              INDIA                          Wealth Q2            102     408
6 months    ki1000108-IRC              INDIA                          Wealth Q3            102     408
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            155     580
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            137     580
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            140     580
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            148     580
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            501    2019
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            605    2019
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            409    2019
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            504    2019
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            141     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            145     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            139     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            138     563
6 months    ki1114097-CONTENT          PERU                           Wealth Q4             52     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q1             59     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q2             52     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q3             52     215
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            339     926
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            176     926
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            194     926
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            217     926
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            744    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            569    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            485    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            908    2706
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            217     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1            203     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2            199     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            197     816
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4           4731   16776
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1           3700   16776
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2           4153   16776
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3           4192   16776
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4           1140    4827
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1           1205    4827
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2           1212    4827
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3           1270    4827
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
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            156     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            130     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            142     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            149     577
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4              1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1              4       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2              1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3              0       6
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            127     498
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            126     498
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            126     498
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            119     498
24 months   ki1114097-CONTENT          PERU                           Wealth Q4             41     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q1             40     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q2             42     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q3             41     164
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            405    1046
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            203    1046
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            215    1046
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            223    1046
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            685    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            492    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            424    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            848    2449
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            155     558
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            127     558
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            140     558
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            136     558
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4           2215    8594
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1           2019    8594
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2           2200    8594
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3           2160    8594
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4           1137    4730
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1           1166    4730
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2           1162    4730
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3           1265    4730


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
![](/tmp/5ccb348d-4bb7-4d5b-a2e2-1b442caf7b12/e8779241-5ccd-4174-aea5-102c771abb8d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.6839555   -1.0543378   -0.3135731
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.2652428   -1.6411358   -0.8893499
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.4025455   -1.3316848    0.5265937
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed           0.0856443   -0.5222582    0.6935468
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.1316640   -0.4989208    0.7622487
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.2721775   -1.3844066    1.9287616
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -1.1878504   -1.7251034   -0.6505974
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.9385456   -1.2325502   -0.6445409
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -1.0146695   -1.2092025   -0.8201365
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.7739115   -0.8641563   -0.6836668
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.7121649   -0.7504826   -0.6738471
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.2517207   -0.3987714   -0.1046701
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.2369244   -0.6325431    0.1586942
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.1629505   -1.7947384   -0.5311625
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.0561529   -0.5367368    0.6490425
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           0.4259177   -0.4912425    1.3430779
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.5977243   -0.0195077    1.2149563
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0644771   -0.4063560    0.5353102
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.1173731   -0.4320339    0.1972877
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.6854690   -0.9521808   -0.4187572
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0478311   -0.2453174    0.1496553
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1122721    0.0050216    0.2195226
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.6126239   -0.7682927   -0.4569551
6 months    ki1114097-CONTENT          PERU                           optimal              observed           1.2424886    1.0096013    1.4753759
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.4118843    0.2716176    0.5521510
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.2424507   -0.3176365   -0.1672649
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.5690340    0.4434204    0.6946477
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.5426869   -0.5772766   -0.5080972
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.2711968   -0.3472856   -0.1951080
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.6293641   -1.0427789   -0.2159493
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.6227235   -1.1135295   -0.1319175
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.3544893   -0.9268395    0.2178608
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.0207042   -0.7582204    0.7996289
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.0164802   -0.4008454    0.4338058
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.4355466   -0.0979012    0.9689944
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.3006772   -0.5079867   -0.0933677
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.8151915   -1.0204429   -0.6099401
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.8575948   -1.0013151   -0.7138746
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.0373122   -1.2221333   -0.8524911
24 months   ki1114097-CONTENT          PERU                           optimal              observed           0.2589284   -0.0113185    0.5291753
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1851785   -0.2744698   -0.0958872
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.4736297   -0.5404579   -0.4068016
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.0459182   -0.1950821    0.1032458
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.3006374   -1.3467065   -1.2545684
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.1518075   -1.2162307   -1.0873843


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
Birth       ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.0572840   -1.1606089   -0.9539590
Birth       ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.7422912   -0.7886598   -0.6959226
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.7239386   -0.7437757   -0.7041015
Birth       kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.3683163   -0.4490504   -0.2875821
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
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed           0.1914471    0.1185005    0.2643936
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.2938433   -0.3352064   -0.2524802
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed           0.4418137    0.3703100    0.5133174
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.5932502   -0.6127743   -0.5737261
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.3901595   -0.4274150   -0.3529041
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.7648701   -0.9729655   -0.5567748
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -0.9125352   -1.1472376   -0.6778328
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.3526190   -0.5782459   -0.1269921
24 months   ki0047075b-MAL-ED          PERU                           observed             observed          -0.0095313   -0.3657847    0.3467222
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.3131818    0.1018345    0.5245291
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.0049153   -0.2462498    0.2364193
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.5571505   -0.6585247   -0.4557763
24 months   ki1000108-IRC              INDIA                          observed             observed          -0.7458150   -0.8368180   -0.6548120
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.8896187   -0.9726240   -0.8066134
24 months   ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.1315863   -1.2192240   -1.0439487
24 months   ki1114097-CONTENT          PERU                           observed             observed           0.5668293    0.4302437    0.7034148
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -0.2791396   -0.3336899   -0.2245893
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.6099592   -0.6467541   -0.5731643
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -0.0478674   -0.1301904    0.0344557
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.2973086   -1.3206115   -1.2740057
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.2231776   -1.2550332   -1.1913220


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.2574919   -0.6045935    0.0896097
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed           0.1659836   -0.2555034    0.5874706
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.4471211   -1.2177101    0.3234679
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0089777   -0.5689828    0.5510275
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.2364181   -0.7738304    0.3009943
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.3208660   -1.0391863    1.6809182
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.5603504    0.0908469    1.0298538
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.0720375   -0.3190241    0.1749490
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0426144   -0.2038932    0.1186644
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed           0.0316203   -0.0462172    0.1094578
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0117737   -0.0442062    0.0206588
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.1165955   -0.2406985    0.0075074
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.0315129   -0.3531220    0.4161479
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed           0.4401570   -0.0980487    0.9783627
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0096449   -0.4940936    0.4748038
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           0.4468601   -0.3472583    1.2409786
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.1190064   -0.6495238    0.4115111
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.4388562    0.0303440    0.8473685
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.3853035   -0.6524871   -0.1181199
6 months    ki1000108-IRC              INDIA                          optimal              observed           0.0865392   -0.1472636    0.3203420
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1601891   -0.3225724    0.0021943
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0321041   -0.1265387    0.0623305
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed           0.0078252   -0.1322560    0.1479064
6 months    ki1114097-CONTENT          PERU                           optimal              observed          -0.1740568   -0.3798677    0.0317541
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.2204372   -0.3420032   -0.0988712
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0513926   -0.1174642    0.0146789
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.1272203   -0.2407568   -0.0136838
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0505633   -0.0795621   -0.0215645
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.1189627   -0.1832415   -0.0546840
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1355060   -0.5093024    0.2382903
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.2898117   -0.7292688    0.1496455
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.0018703   -0.4826797    0.4864203
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0302355   -0.7451371    0.6846661
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.2967016   -0.0725693    0.6659725
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.4404618   -0.9002751    0.0193514
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.2564733   -0.4328089   -0.0801377
24 months   ki1000108-IRC              INDIA                          optimal              observed           0.0693765   -0.1058384    0.2445915
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0320239   -0.1596617    0.0956139
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0942741   -0.2531916    0.0646433
24 months   ki1114097-CONTENT          PERU                           optimal              observed           0.3079009    0.0708843    0.5449175
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0939611   -0.1634681   -0.0244542
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.1363294   -0.1931213   -0.0795376
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.0019492   -0.1328548    0.1289564
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed           0.0033288   -0.0354894    0.0421471
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0713701   -0.1272734   -0.0154668
