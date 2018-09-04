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

**Outcome Variable:** stunted

## Predictor Variables

**Intervention Variable:** gagebrth

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        gagebrth             stunted   n_cell       n
----------  -------------------------  -----------------------------  ------------------  --------  -------  ------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term          0       47      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term          1       10      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                    0        8      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                    1        2      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Early term                 0       19      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Early term                 1        4      90
Birth       ki1000108-IRC              INDIA                          Full or late term          0      211     369
Birth       ki1000108-IRC              INDIA                          Full or late term          1       27     369
Birth       ki1000108-IRC              INDIA                          Preterm                    0       27     369
Birth       ki1000108-IRC              INDIA                          Preterm                    1        9     369
Birth       ki1000108-IRC              INDIA                          Early term                 0       87     369
Birth       ki1000108-IRC              INDIA                          Early term                 1        8     369
Birth       ki1000109-EE               PAKISTAN                       Full or late term          0        0       4
Birth       ki1000109-EE               PAKISTAN                       Full or late term          1        0       4
Birth       ki1000109-EE               PAKISTAN                       Preterm                    0        0       4
Birth       ki1000109-EE               PAKISTAN                       Preterm                    1        2       4
Birth       ki1000109-EE               PAKISTAN                       Early term                 0        2       4
Birth       ki1000109-EE               PAKISTAN                       Early term                 1        0       4
Birth       ki1000304b-SAS-CompFeed    INDIA                          Full or late term          0        1     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Full or late term          1        0     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Preterm                    0      128     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Preterm                    1       43     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Early term                 0       12     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Early term                 1        3     187
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term          0        5      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term          1        2      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                    0        3      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                    1        2      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Early term                 0       14      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Early term                 1        1      27
Birth       ki1101329-Keneba           GAMBIA                         Full or late term          0      712    1515
Birth       ki1101329-Keneba           GAMBIA                         Full or late term          1       22    1515
Birth       ki1101329-Keneba           GAMBIA                         Preterm                    0      200    1515
Birth       ki1101329-Keneba           GAMBIA                         Preterm                    1       35    1515
Birth       ki1101329-Keneba           GAMBIA                         Early term                 0      521    1515
Birth       ki1101329-Keneba           GAMBIA                         Early term                 1       25    1515
Birth       ki1119695-PROBIT           BELARUS                        Full or late term          0     7090   13884
Birth       ki1119695-PROBIT           BELARUS                        Full or late term          1        5   13884
Birth       ki1119695-PROBIT           BELARUS                        Preterm                    0      458   13884
Birth       ki1119695-PROBIT           BELARUS                        Preterm                    1       14   13884
Birth       ki1119695-PROBIT           BELARUS                        Early term                 0     6303   13884
Birth       ki1119695-PROBIT           BELARUS                        Early term                 1       14   13884
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term          0      330     617
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term          1       11     617
Birth       ki1135781-COHORTS          GUATEMALA                      Preterm                    0       82     617
Birth       ki1135781-COHORTS          GUATEMALA                      Preterm                    1       13     617
Birth       ki1135781-COHORTS          GUATEMALA                      Early term                 0      170     617
Birth       ki1135781-COHORTS          GUATEMALA                      Early term                 1       11     617
Birth       ki1135781-COHORTS          INDIA                          Full or late term          0      536    1293
Birth       ki1135781-COHORTS          INDIA                          Full or late term          1       34    1293
Birth       ki1135781-COHORTS          INDIA                          Preterm                    0      242    1293
Birth       ki1135781-COHORTS          INDIA                          Preterm                    1       43    1293
Birth       ki1135781-COHORTS          INDIA                          Early term                 0      391    1293
Birth       ki1135781-COHORTS          INDIA                          Early term                 1       47    1293
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term          0     1128    3024
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term          1       36    3024
Birth       ki1135781-COHORTS          PHILIPPINES                    Preterm                    0      561    3024
Birth       ki1135781-COHORTS          PHILIPPINES                    Preterm                    1       88    3024
Birth       ki1135781-COHORTS          PHILIPPINES                    Early term                 0     1150    3024
Birth       ki1135781-COHORTS          PHILIPPINES                    Early term                 1       61    3024
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term          0    14864   36868
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term          1     4220   36868
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm                    0     3614   36868
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm                    1     3934   36868
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term                 0     6572   36868
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term                 1     3664   36868
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term          0      157     347
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term          1       55     347
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                    0       29     347
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                    1       23     347
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term                 0       60     347
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term                 1       23     347
6 months    ki1000108-IRC              INDIA                          Full or late term          0      198     388
6 months    ki1000108-IRC              INDIA                          Full or late term          1       51     388
6 months    ki1000108-IRC              INDIA                          Preterm                    0       23     388
6 months    ki1000108-IRC              INDIA                          Preterm                    1       19     388
6 months    ki1000108-IRC              INDIA                          Early term                 0       75     388
6 months    ki1000108-IRC              INDIA                          Early term                 1       22     388
6 months    ki1000109-EE               PAKISTAN                       Full or late term          0       32     744
6 months    ki1000109-EE               PAKISTAN                       Full or late term          1       18     744
6 months    ki1000109-EE               PAKISTAN                       Preterm                    0      210     744
6 months    ki1000109-EE               PAKISTAN                       Preterm                    1      268     744
6 months    ki1000109-EE               PAKISTAN                       Early term                 0      116     744
6 months    ki1000109-EE               PAKISTAN                       Early term                 1      100     744
6 months    ki1000304b-SAS-CompFeed    INDIA                          Full or late term          0       24    1327
6 months    ki1000304b-SAS-CompFeed    INDIA                          Full or late term          1        1    1327
6 months    ki1000304b-SAS-CompFeed    INDIA                          Preterm                    0      854    1327
6 months    ki1000304b-SAS-CompFeed    INDIA                          Preterm                    1      356    1327
6 months    ki1000304b-SAS-CompFeed    INDIA                          Early term                 0       72    1327
6 months    ki1000304b-SAS-CompFeed    INDIA                          Early term                 1       20    1327
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term          0      134     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term          1       21     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                    0      180     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                    1       71     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term                 0      251     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term                 1       58     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term          0     1070    1903
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term          1       97    1903
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                    0      252    1903
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                    1       39    1903
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                 0      399    1903
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                 1       46    1903
6 months    ki1101329-Keneba           GAMBIA                         Full or late term          0      583    1374
6 months    ki1101329-Keneba           GAMBIA                         Full or late term          1       75    1374
6 months    ki1101329-Keneba           GAMBIA                         Preterm                    0      160    1374
6 months    ki1101329-Keneba           GAMBIA                         Preterm                    1       47    1374
6 months    ki1101329-Keneba           GAMBIA                         Early term                 0      450    1374
6 months    ki1101329-Keneba           GAMBIA                         Early term                 1       59    1374
6 months    ki1119695-PROBIT           BELARUS                        Full or late term          0     7570   15761
6 months    ki1119695-PROBIT           BELARUS                        Full or late term          1      438   15761
6 months    ki1119695-PROBIT           BELARUS                        Preterm                    0      482   15761
6 months    ki1119695-PROBIT           BELARUS                        Preterm                    1       69   15761
6 months    ki1119695-PROBIT           BELARUS                        Early term                 0     6721   15761
6 months    ki1119695-PROBIT           BELARUS                        Early term                 1      481   15761
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term          0      258     713
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term          1      131     713
6 months    ki1135781-COHORTS          GUATEMALA                      Preterm                    0       50     713
6 months    ki1135781-COHORTS          GUATEMALA                      Preterm                    1       63     713
6 months    ki1135781-COHORTS          GUATEMALA                      Early term                 0      106     713
6 months    ki1135781-COHORTS          GUATEMALA                      Early term                 1      105     713
6 months    ki1135781-COHORTS          INDIA                          Full or late term          0      478    1312
6 months    ki1135781-COHORTS          INDIA                          Full or late term          1       90    1312
6 months    ki1135781-COHORTS          INDIA                          Preterm                    0      231    1312
6 months    ki1135781-COHORTS          INDIA                          Preterm                    1       68    1312
6 months    ki1135781-COHORTS          INDIA                          Early term                 0      381    1312
6 months    ki1135781-COHORTS          INDIA                          Early term                 1       64    1312
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term          0      855    2687
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term          1      173    2687
6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm                    0      401    2687
6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm                    1      172    2687
6 months    ki1135781-COHORTS          PHILIPPINES                    Early term                 0      863    2687
6 months    ki1135781-COHORTS          PHILIPPINES                    Early term                 1      223    2687
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term          0    10408   24962
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term          1     2812   24962
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm                    0     3100   24962
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm                    1     1700   24962
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term                 0     5006   24962
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term                 1     1936   24962
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term          0       70     350
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term          1      144     350
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                    0       13     350
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                    1       39     350
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term                 0       18     350
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term                 1       66     350
24 months   ki1000108-IRC              INDIA                          Full or late term          0      154     390
24 months   ki1000108-IRC              INDIA                          Full or late term          1       96     390
24 months   ki1000108-IRC              INDIA                          Preterm                    0       19     390
24 months   ki1000108-IRC              INDIA                          Preterm                    1       23     390
24 months   ki1000108-IRC              INDIA                          Early term                 0       55     390
24 months   ki1000108-IRC              INDIA                          Early term                 1       43     390
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term          0       66     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term          1       13     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                    0      143     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                    1       65     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term                 0      173     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term                 1       54     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term          0        4       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term          1        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                    0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                    1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                 0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                 1        0       6
24 months   ki1101329-Keneba           GAMBIA                         Full or late term          0      375    1156
24 months   ki1101329-Keneba           GAMBIA                         Full or late term          1      182    1156
24 months   ki1101329-Keneba           GAMBIA                         Preterm                    0       97    1156
24 months   ki1101329-Keneba           GAMBIA                         Preterm                    1       70    1156
24 months   ki1101329-Keneba           GAMBIA                         Early term                 0      300    1156
24 months   ki1101329-Keneba           GAMBIA                         Early term                 1      132    1156
24 months   ki1119695-PROBIT           BELARUS                        Full or late term          0     1850    4035
24 months   ki1119695-PROBIT           BELARUS                        Full or late term          1      174    4035
24 months   ki1119695-PROBIT           BELARUS                        Preterm                    0      123    4035
24 months   ki1119695-PROBIT           BELARUS                        Preterm                    1       14    4035
24 months   ki1119695-PROBIT           BELARUS                        Early term                 0     1718    4035
24 months   ki1119695-PROBIT           BELARUS                        Early term                 1      156    4035
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term          0       85     663
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term          1      290     663
24 months   ki1135781-COHORTS          GUATEMALA                      Preterm                    0       21     663
24 months   ki1135781-COHORTS          GUATEMALA                      Preterm                    1       87     663
24 months   ki1135781-COHORTS          GUATEMALA                      Early term                 0       30     663
24 months   ki1135781-COHORTS          GUATEMALA                      Early term                 1      150     663
24 months   ki1135781-COHORTS          INDIA                          Full or late term          0      316    1308
24 months   ki1135781-COHORTS          INDIA                          Full or late term          1      249    1308
24 months   ki1135781-COHORTS          INDIA                          Preterm                    0      153    1308
24 months   ki1135781-COHORTS          INDIA                          Preterm                    1      152    1308
24 months   ki1135781-COHORTS          INDIA                          Early term                 0      240    1308
24 months   ki1135781-COHORTS          INDIA                          Early term                 1      198    1308
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term          0      389    2424
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term          1      549    2424
24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm                    0      173    2424
24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm                    1      340    2424
24 months   ki1135781-COHORTS          PHILIPPINES                    Early term                 0      365    2424
24 months   ki1135781-COHORTS          PHILIPPINES                    Early term                 1      608    2424
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term          0     3586   12983
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term          1     3215   12983
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                    0     1116   12983
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                    1     1475   12983
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term                 0     1784   12983
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term                 1     1807   12983


The following strata were considered:

* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/90547ecb-da69-4960-89a0-9ea5d84198c5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/90547ecb-da69-4960-89a0-9ea5d84198c5/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/90547ecb-da69-4960-89a0-9ea5d84198c5/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/90547ecb-da69-4960-89a0-9ea5d84198c5/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1000108-IRC              INDIA                          Full or late term    NA                0.1134454    0.0730999   0.1537909
Birth       ki1000108-IRC              INDIA                          Preterm              NA                0.2500000    0.1083597   0.3916403
Birth       ki1000108-IRC              INDIA                          Early term           NA                0.0842105    0.0282919   0.1401292
Birth       ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.0299728    0.0176332   0.0423123
Birth       ki1101329-Keneba           GAMBIA                         Preterm              NA                0.1489362    0.1034019   0.1944705
Birth       ki1101329-Keneba           GAMBIA                         Early term           NA                0.0457875    0.0282491   0.0633260
Birth       ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.0007047   -0.0002052   0.0016147
Birth       ki1119695-PROBIT           BELARUS                        Preterm              NA                0.0296610   -0.0004536   0.0597756
Birth       ki1119695-PROBIT           BELARUS                        Early term           NA                0.0022162    0.0011584   0.0032741
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.0322581    0.0134899   0.0510262
Birth       ki1135781-COHORTS          GUATEMALA                      Preterm              NA                0.1368421    0.0676760   0.2060082
Birth       ki1135781-COHORTS          GUATEMALA                      Early term           NA                0.0607735    0.0259395   0.0956075
Birth       ki1135781-COHORTS          INDIA                          Full or late term    NA                0.0596491    0.0401989   0.0790994
Birth       ki1135781-COHORTS          INDIA                          Preterm              NA                0.1508772    0.1093062   0.1924482
Birth       ki1135781-COHORTS          INDIA                          Early term           NA                0.1073059    0.0783097   0.1363022
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.0309278    0.0209807   0.0408749
Birth       ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.1355932    0.1092496   0.1619369
Birth       ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.0503716    0.0380514   0.0626918
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.2211276    0.2115239   0.2307314
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.5211977    0.5033006   0.5390948
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.3579523    0.3431257   0.3727790
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.2594340    0.2003456   0.3185224
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                0.4423077    0.3071214   0.5774940
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                0.2771084    0.1806818   0.3735351
6 months    ki1000108-IRC              INDIA                          Full or late term    NA                0.2048193    0.1546281   0.2550104
6 months    ki1000108-IRC              INDIA                          Preterm              NA                0.4523810    0.3016594   0.6031025
6 months    ki1000108-IRC              INDIA                          Early term           NA                0.2268041    0.1433606   0.3102477
6 months    ki1000109-EE               PAKISTAN                       Full or late term    NA                0.3600000    0.1715900   0.5484100
6 months    ki1000109-EE               PAKISTAN                       Preterm              NA                0.5606695    0.4976633   0.6236756
6 months    ki1000109-EE               PAKISTAN                       Early term           NA                0.4629630    0.3687966   0.5571294
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                0.1354839    0.0815680   0.1893997
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                0.2828685    0.2271106   0.3386265
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                0.1877023    0.1441345   0.2312700
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.0831191    0.0672762   0.0989620
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.1340206    0.0948685   0.1731727
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.1033708    0.0750772   0.1316643
6 months    ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.1139818    0.0896915   0.1382720
6 months    ki1101329-Keneba           GAMBIA                         Preterm              NA                0.2270531    0.1699632   0.2841431
6 months    ki1101329-Keneba           GAMBIA                         Early term           NA                0.1159136    0.0880933   0.1437339
6 months    ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.0546953    0.0415879   0.0678027
6 months    ki1119695-PROBIT           BELARUS                        Preterm              NA                0.1252269    0.0847658   0.1656879
6 months    ki1119695-PROBIT           BELARUS                        Early term           NA                0.0667870    0.0498774   0.0836966
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.3367609    0.2897635   0.3837583
6 months    ki1135781-COHORTS          GUATEMALA                      Preterm              NA                0.5575221    0.4658810   0.6491633
6 months    ki1135781-COHORTS          GUATEMALA                      Early term           NA                0.4976303    0.4301190   0.5651417
6 months    ki1135781-COHORTS          INDIA                          Full or late term    NA                0.1584507    0.1284089   0.1884925
6 months    ki1135781-COHORTS          INDIA                          Preterm              NA                0.2274247    0.1798948   0.2749547
6 months    ki1135781-COHORTS          INDIA                          Early term           NA                0.1438202    0.1112046   0.1764359
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.1682879    0.1454138   0.1911621
6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.3001745    0.2626398   0.3377093
6 months    ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.2053407    0.1813114   0.2293700
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.2127080    0.2016008   0.2238152
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.3541667    0.3338506   0.3744827
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.2788822    0.2623053   0.2954590
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.6728972    0.6099496   0.7358448
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                0.7500000    0.6321395   0.8678605
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                0.7857143    0.6978406   0.8735879
24 months   ki1000108-IRC              INDIA                          Full or late term    NA                0.3840000    0.3236341   0.4443659
24 months   ki1000108-IRC              INDIA                          Preterm              NA                0.5476190    0.3968985   0.6983396
24 months   ki1000108-IRC              INDIA                          Early term           NA                0.4387755    0.3404011   0.5371499
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                0.1645570    0.0827154   0.2463985
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                0.3125000    0.2494477   0.3755523
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                0.2378855    0.1824418   0.2933292
24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.3267504    0.2877828   0.3657181
24 months   ki1101329-Keneba           GAMBIA                         Preterm              NA                0.4191617    0.3442937   0.4940297
24 months   ki1101329-Keneba           GAMBIA                         Early term           NA                0.3055556    0.2620987   0.3490124
24 months   ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.0859684    0.0532430   0.1186937
24 months   ki1119695-PROBIT           BELARUS                        Preterm              NA                0.1021898    0.0208976   0.1834820
24 months   ki1119695-PROBIT           BELARUS                        Early term           NA                0.0832444    0.0476064   0.1188824
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.7733333    0.7309263   0.8157403
24 months   ki1135781-COHORTS          GUATEMALA                      Preterm              NA                0.8055556    0.7308575   0.8802536
24 months   ki1135781-COHORTS          GUATEMALA                      Early term           NA                0.8333333    0.7788488   0.8878179
24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                0.4407080    0.3997551   0.4816609
24 months   ki1135781-COHORTS          INDIA                          Preterm              NA                0.4983607    0.4422259   0.5544954
24 months   ki1135781-COHORTS          INDIA                          Early term           NA                0.4520548    0.4054274   0.4986822
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.5852878    0.5537527   0.6168230
24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.6627680    0.6218491   0.7036870
24 months   ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.6248715    0.5944440   0.6552991
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.4727246    0.4528316   0.4926176
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.5692783    0.5383902   0.6001663
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.5032025    0.4783774   0.5280275


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          NA                   NA                0.1192412   0.0861307   0.1523517
Birth       ki1101329-Keneba           GAMBIA                         NA                   NA                0.0541254   0.0427281   0.0655227
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                0.0023768   0.0010945   0.0036592
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0567261   0.0384591   0.0749931
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                0.0959010   0.0798450   0.1119570
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0611772   0.0526341   0.0697204
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.3205490   0.3127517   0.3283463
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2910663   0.2432023   0.3389303
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.2371134   0.1947393   0.2794875
6 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.5188172   0.4679751   0.5696593
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2097902   0.1799252   0.2396552
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0956385   0.0824215   0.1088554
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1317322   0.1138432   0.1496211
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0626864   0.0488489   0.0765239
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4193548   0.3831093   0.4556004
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1692073   0.1489117   0.1895030
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2113882   0.1959475   0.2268289
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2583126   0.2488924   0.2677329
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7114286   0.6638920   0.7589651
24 months   ki1000108-IRC              INDIA                          NA                   NA                0.4153846   0.3664142   0.4643550
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2568093   0.2190047   0.2946140
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3321799   0.3050172   0.3593427
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0852540   0.0554439   0.1150642
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7948718   0.7641122   0.8256314
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.4579511   0.4309402   0.4849620
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6175743   0.5982239   0.6369246
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.5004236   0.4856838   0.5151635


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level         estimate    ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ------------------  -----------  ----------  -----------
Birth       ki1000108-IRC              INDIA                          Full or late term    Full or late term     1.0000000   1.0000000     1.000000
Birth       ki1000108-IRC              INDIA                          Preterm              Full or late term     2.2037037   1.1288592     4.301963
Birth       ki1000108-IRC              INDIA                          Early term           Full or late term     0.7423002   0.3494922     1.576600
Birth       ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term     1.0000000   1.0000000     1.000000
Birth       ki1101329-Keneba           GAMBIA                         Preterm              Full or late term     4.9690522   2.9755587     8.298099
Birth       ki1101329-Keneba           GAMBIA                         Early term           Full or late term     1.5276390   0.8705747     2.680621
Birth       ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term     1.0000000   1.0000000     1.000000
Birth       ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    42.0889831   7.7901583   227.400064
Birth       ki1119695-PROBIT           BELARUS                        Early term           Full or late term     3.1448472   0.7336051    13.481455
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term     1.0000000   1.0000000     1.000000
Birth       ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term     4.2421053   1.9627721     9.168389
Birth       ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term     1.8839779   0.8324856     4.263584
Birth       ki1135781-COHORTS          INDIA                          Full or late term    Full or late term     1.0000000   1.0000000     1.000000
Birth       ki1135781-COHORTS          INDIA                          Preterm              Full or late term     2.5294118   1.6505151     3.876320
Birth       ki1135781-COHORTS          INDIA                          Early term           Full or late term     1.7989525   1.1778748     2.747516
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term     1.0000000   1.0000000     1.000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term     4.3841808   3.0109434     6.383727
Birth       ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term     1.6286815   1.0873157     2.439589
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term     1.0000000   1.0000000     1.000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term     2.3569991   2.2277269     2.493773
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term     1.6187588   1.5271051     1.715913
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     1.0000000   1.0000000     1.000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term     1.7048951   1.1645510     2.495955
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term     1.0681271   0.7047033     1.618973
6 months    ki1000108-IRC              INDIA                          Full or late term    Full or late term     1.0000000   1.0000000     1.000000
6 months    ki1000108-IRC              INDIA                          Preterm              Full or late term     2.2086835   1.4605439     3.340045
6 months    ki1000108-IRC              INDIA                          Early term           Full or late term     1.1073378   0.7117056     1.722899
6 months    ki1000109-EE               PAKISTAN                       Full or late term    Full or late term     1.0000000   1.0000000     1.000000
6 months    ki1000109-EE               PAKISTAN                       Preterm              Full or late term     1.5574152   0.9118659     2.659977
6 months    ki1000109-EE               PAKISTAN                       Early term           Full or late term     1.2860082   0.7334813     2.254750
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term     1.0000000   1.0000000     1.000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term     2.0878391   1.3391510     3.255101
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term     1.3854215   0.8739862     2.196136
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term     1.0000000   1.0000000     1.000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term     1.6123924   1.1375793     2.285387
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term     1.2436465   0.8909302     1.736002
6 months    ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term     1.0000000   1.0000000     1.000000
6 months    ki1101329-Keneba           GAMBIA                         Preterm              Full or late term     1.9920129   1.4326790     2.769717
6 months    ki1101329-Keneba           GAMBIA                         Early term           Full or late term     1.0169483   0.7377435     1.401820
6 months    ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term     1.0000000   1.0000000     1.000000
6 months    ki1119695-PROBIT           BELARUS                        Preterm              Full or late term     2.2895358   1.5231330     3.441574
6 months    ki1119695-PROBIT           BELARUS                        Early term           Full or late term     1.2210738   1.0398007     1.433949
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term     1.0000000   1.0000000     1.000000
6 months    ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term     1.6555428   1.3344287     2.053929
6 months    ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term     1.4776962   1.2163479     1.795199
6 months    ki1135781-COHORTS          INDIA                          Full or late term    Full or late term     1.0000000   1.0000000     1.000000
6 months    ki1135781-COHORTS          INDIA                          Preterm              Full or late term     1.4353029   1.0824178     1.903234
6 months    ki1135781-COHORTS          INDIA                          Early term           Full or late term     0.9076654   0.6753833     1.219835
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term     1.0000000   1.0000000     1.000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term     1.7836960   1.4828955     2.145513
6 months    ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term     1.2201748   1.0198306     1.459876
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term     1.0000000   1.0000000     1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term     1.6650367   1.5482299     1.790656
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term     1.3111032   1.2181038     1.411203
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     1.0000000   1.0000000     1.000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term     1.1145833   0.9282977     1.338252
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term     1.1676587   1.0092382     1.350947
24 months   ki1000108-IRC              INDIA                          Full or late term    Full or late term     1.0000000   1.0000000     1.000000
24 months   ki1000108-IRC              INDIA                          Preterm              Full or late term     1.4260913   1.0387077     1.957949
24 months   ki1000108-IRC              INDIA                          Early term           Full or late term     1.1426446   0.8689427     1.502558
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term     1.0000000   1.0000000     1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term     1.8990385   1.1103037     3.248073
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term     1.4456117   0.8346730     2.503727
24 months   ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term     1.0000000   1.0000000     1.000000
24 months   ki1101329-Keneba           GAMBIA                         Preterm              Full or late term     1.2828190   1.0348866     1.590150
24 months   ki1101329-Keneba           GAMBIA                         Early term           Full or late term     0.9351343   0.7767230     1.125853
24 months   ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term     1.0000000   1.0000000     1.000000
24 months   ki1119695-PROBIT           BELARUS                        Preterm              Full or late term     1.1886903   0.5368267     2.632106
24 months   ki1119695-PROBIT           BELARUS                        Early term           Full or late term     0.9683141   0.6508327     1.440665
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term     1.0000000   1.0000000     1.000000
24 months   ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term     1.0416667   0.9352816     1.160153
24 months   ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term     1.0775862   0.9894462     1.173578
24 months   ki1135781-COHORTS          INDIA                          Full or late term    Full or late term     1.0000000   1.0000000     1.000000
24 months   ki1135781-COHORTS          INDIA                          Preterm              Full or late term     1.1308184   0.9771833     1.308608
24 months   ki1135781-COHORTS          INDIA                          Early term           Full or late term     1.0257468   0.8927844     1.178511
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term     1.0000000   1.0000000     1.000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term     1.1323796   1.0432883     1.229079
24 months   ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term     1.0676311   0.9928448     1.148051
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term     1.0000000   1.0000000     1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term     1.2042493   1.1248795     1.289219
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term     1.0644727   1.0011015     1.131855


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC              INDIA                          Full or late term    NA                 0.0057958   -0.0191902   0.0307818
Birth       ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0241527    0.0125500   0.0357554
Birth       ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0016721    0.0003118   0.0030325
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.0244680    0.0072466   0.0416894
Birth       ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0362519    0.0188576   0.0536461
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0302494    0.0204638   0.0400350
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0994213    0.0919157   0.1069270
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0316323   -0.0073061   0.0705708
6 months    ki1000108-IRC              INDIA                          Full or late term    NA                 0.0322941   -0.0005901   0.0651784
6 months    ki1000109-EE               PAKISTAN                       Full or late term    NA                 0.1588172   -0.0236984   0.3413328
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.0743063    0.0239228   0.1246898
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0125194    0.0016639   0.0233748
6 months    ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0177504   -0.0008217   0.0363225
6 months    ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0079911    0.0026427   0.0133394
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.0825939    0.0492416   0.1159462
6 months    ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0107566   -0.0123298   0.0338430
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0431002    0.0240927   0.0621078
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0456046    0.0380671   0.0531421
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0385314    0.0014278   0.0756350
24 months   ki1000108-IRC              INDIA                          Full or late term    NA                 0.0313846   -0.0056329   0.0684021
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.0922524    0.0143531   0.1701517
24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0054295   -0.0227305   0.0335895
24 months   ki1119695-PROBIT           BELARUS                        Full or late term    NA                -0.0007144   -0.0173754   0.0159467
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.0215385   -0.0051105   0.0481874
24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0172431   -0.0137056   0.0481918
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0322864    0.0078067   0.0567662
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0276990    0.0150465   0.0403515


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC              INDIA                          Full or late term    NA                 0.0486058   -0.1854004   0.2364176
Birth       ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.4462351    0.2137384   0.6099828
Birth       ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.7035044   -0.0450402   0.9158792
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.4313364    0.0819272   0.6477640
Birth       ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.3780136    0.1805054   0.5279199
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.4944553    0.3260309   0.6207906
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.3101596    0.2867490   0.3328018
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.1086774   -0.0352902   0.2326248
6 months    ki1000108-IRC              INDIA                          Full or late term    NA                 0.1361970   -0.0130777   0.2634764
6 months    ki1000109-EE               PAKISTAN                       Full or late term    NA                 0.3061140   -0.1531003   0.5824493
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.3541935    0.0683540   0.5523343
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.1309029    0.0109997   0.2362695
6 months    ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.1347462   -0.0173400   0.2640964
6 months    ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.1274770    0.0429774   0.2045158
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.1969547    0.1130293   0.2729391
6 months    ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0635706   -0.0831558   0.1904212
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.2038914    0.1094932   0.2882829
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.1765481    0.1471528   0.2049303
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0541606    0.0000582   0.1053357
24 months   ki1000108-IRC              INDIA                          Full or late term    NA                 0.0755556   -0.0181511   0.1606378
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.3592252   -0.0245831   0.5992591
24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0163450   -0.0721882   0.0975678
24 months   ki1119695-PROBIT           BELARUS                        Full or late term    NA                -0.0083791   -0.2243974   0.1695275
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.0270968   -0.0071245   0.0601553
24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0376527   -0.0323821   0.1029365
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0522794    0.0117275   0.0911673
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0553512    0.0295900   0.0804285
