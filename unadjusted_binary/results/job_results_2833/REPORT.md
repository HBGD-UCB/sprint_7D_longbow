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

**Outcome Variable:** sstunted

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

agecat      studyid                    country                        gagebrth             sstunted   n_cell       n
----------  -------------------------  -----------------------------  ------------------  ---------  -------  ------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term           0       54      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term           1        3      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                     0       10      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                     1        0      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Early term                  0       23      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Early term                  1        0      90
Birth       ki1000108-IRC              INDIA                          Full or late term           0      228     369
Birth       ki1000108-IRC              INDIA                          Full or late term           1       10     369
Birth       ki1000108-IRC              INDIA                          Preterm                     0       33     369
Birth       ki1000108-IRC              INDIA                          Preterm                     1        3     369
Birth       ki1000108-IRC              INDIA                          Early term                  0       93     369
Birth       ki1000108-IRC              INDIA                          Early term                  1        2     369
Birth       ki1000109-EE               PAKISTAN                       Full or late term           0        0       4
Birth       ki1000109-EE               PAKISTAN                       Full or late term           1        0       4
Birth       ki1000109-EE               PAKISTAN                       Preterm                     0        2       4
Birth       ki1000109-EE               PAKISTAN                       Preterm                     1        0       4
Birth       ki1000109-EE               PAKISTAN                       Early term                  0        2       4
Birth       ki1000109-EE               PAKISTAN                       Early term                  1        0       4
Birth       ki1000304b-SAS-CompFeed    INDIA                          Full or late term           0        1     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Full or late term           1        0     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Preterm                     0      161     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Preterm                     1       10     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Early term                  0       14     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Early term                  1        1     187
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term           0        7      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term           1        0      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                     0        5      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                     1        0      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Early term                  0       14      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Early term                  1        1      27
Birth       ki1101329-Keneba           GAMBIA                         Full or late term           0      726    1515
Birth       ki1101329-Keneba           GAMBIA                         Full or late term           1        8    1515
Birth       ki1101329-Keneba           GAMBIA                         Preterm                     0      219    1515
Birth       ki1101329-Keneba           GAMBIA                         Preterm                     1       16    1515
Birth       ki1101329-Keneba           GAMBIA                         Early term                  0      541    1515
Birth       ki1101329-Keneba           GAMBIA                         Early term                  1        5    1515
Birth       ki1119695-PROBIT           BELARUS                        Full or late term           0     7095   13884
Birth       ki1119695-PROBIT           BELARUS                        Full or late term           1        0   13884
Birth       ki1119695-PROBIT           BELARUS                        Preterm                     0      471   13884
Birth       ki1119695-PROBIT           BELARUS                        Preterm                     1        1   13884
Birth       ki1119695-PROBIT           BELARUS                        Early term                  0     6313   13884
Birth       ki1119695-PROBIT           BELARUS                        Early term                  1        4   13884
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term           0      338     617
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term           1        3     617
Birth       ki1135781-COHORTS          GUATEMALA                      Preterm                     0       91     617
Birth       ki1135781-COHORTS          GUATEMALA                      Preterm                     1        4     617
Birth       ki1135781-COHORTS          GUATEMALA                      Early term                  0      179     617
Birth       ki1135781-COHORTS          GUATEMALA                      Early term                  1        2     617
Birth       ki1135781-COHORTS          INDIA                          Full or late term           0      562    1293
Birth       ki1135781-COHORTS          INDIA                          Full or late term           1        8    1293
Birth       ki1135781-COHORTS          INDIA                          Preterm                     0      269    1293
Birth       ki1135781-COHORTS          INDIA                          Preterm                     1       16    1293
Birth       ki1135781-COHORTS          INDIA                          Early term                  0      431    1293
Birth       ki1135781-COHORTS          INDIA                          Early term                  1        7    1293
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term           0     1161    3024
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term           1        3    3024
Birth       ki1135781-COHORTS          PHILIPPINES                    Preterm                     0      618    3024
Birth       ki1135781-COHORTS          PHILIPPINES                    Preterm                     1       31    3024
Birth       ki1135781-COHORTS          PHILIPPINES                    Early term                  0     1199    3024
Birth       ki1135781-COHORTS          PHILIPPINES                    Early term                  1       12    3024
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term           0    18186   36868
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term           1      898   36868
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm                     0     5736   36868
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm                     1     1812   36868
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term                  0     9278   36868
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term                  1      958   36868
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term           0      190     347
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term           1       22     347
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                     0       42     347
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                     1       10     347
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term                  0       77     347
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term                  1        6     347
6 months    ki1000108-IRC              INDIA                          Full or late term           0      233     388
6 months    ki1000108-IRC              INDIA                          Full or late term           1       16     388
6 months    ki1000108-IRC              INDIA                          Preterm                     0       34     388
6 months    ki1000108-IRC              INDIA                          Preterm                     1        8     388
6 months    ki1000108-IRC              INDIA                          Early term                  0       93     388
6 months    ki1000108-IRC              INDIA                          Early term                  1        4     388
6 months    ki1000109-EE               PAKISTAN                       Full or late term           0       44     744
6 months    ki1000109-EE               PAKISTAN                       Full or late term           1        6     744
6 months    ki1000109-EE               PAKISTAN                       Preterm                     0      346     744
6 months    ki1000109-EE               PAKISTAN                       Preterm                     1      132     744
6 months    ki1000109-EE               PAKISTAN                       Early term                  0      166     744
6 months    ki1000109-EE               PAKISTAN                       Early term                  1       50     744
6 months    ki1000304b-SAS-CompFeed    INDIA                          Full or late term           0       25    1327
6 months    ki1000304b-SAS-CompFeed    INDIA                          Full or late term           1        0    1327
6 months    ki1000304b-SAS-CompFeed    INDIA                          Preterm                     0     1092    1327
6 months    ki1000304b-SAS-CompFeed    INDIA                          Preterm                     1      118    1327
6 months    ki1000304b-SAS-CompFeed    INDIA                          Early term                  0       85    1327
6 months    ki1000304b-SAS-CompFeed    INDIA                          Early term                  1        7    1327
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term           0      153     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term           1        2     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                     0      236     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                     1       15     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term                  0      303     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term                  1        6     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term           0     1159    1903
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term           1        8    1903
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                     0      284    1903
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                     1        7    1903
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                  0      443    1903
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                  1        2    1903
6 months    ki1101329-Keneba           GAMBIA                         Full or late term           0      637    1374
6 months    ki1101329-Keneba           GAMBIA                         Full or late term           1       21    1374
6 months    ki1101329-Keneba           GAMBIA                         Preterm                     0      197    1374
6 months    ki1101329-Keneba           GAMBIA                         Preterm                     1       10    1374
6 months    ki1101329-Keneba           GAMBIA                         Early term                  0      505    1374
6 months    ki1101329-Keneba           GAMBIA                         Early term                  1        4    1374
6 months    ki1119695-PROBIT           BELARUS                        Full or late term           0     7917   15761
6 months    ki1119695-PROBIT           BELARUS                        Full or late term           1       91   15761
6 months    ki1119695-PROBIT           BELARUS                        Preterm                     0      533   15761
6 months    ki1119695-PROBIT           BELARUS                        Preterm                     1       18   15761
6 months    ki1119695-PROBIT           BELARUS                        Early term                  0     7068   15761
6 months    ki1119695-PROBIT           BELARUS                        Early term                  1      134   15761
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term           0      356     713
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term           1       33     713
6 months    ki1135781-COHORTS          GUATEMALA                      Preterm                     0       86     713
6 months    ki1135781-COHORTS          GUATEMALA                      Preterm                     1       27     713
6 months    ki1135781-COHORTS          GUATEMALA                      Early term                  0      178     713
6 months    ki1135781-COHORTS          GUATEMALA                      Early term                  1       33     713
6 months    ki1135781-COHORTS          INDIA                          Full or late term           0      556    1312
6 months    ki1135781-COHORTS          INDIA                          Full or late term           1       12    1312
6 months    ki1135781-COHORTS          INDIA                          Preterm                     0      285    1312
6 months    ki1135781-COHORTS          INDIA                          Preterm                     1       14    1312
6 months    ki1135781-COHORTS          INDIA                          Early term                  0      432    1312
6 months    ki1135781-COHORTS          INDIA                          Early term                  1       13    1312
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term           0      988    2687
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term           1       40    2687
6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm                     0      530    2687
6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm                     1       43    2687
6 months    ki1135781-COHORTS          PHILIPPINES                    Early term                  0     1038    2687
6 months    ki1135781-COHORTS          PHILIPPINES                    Early term                  1       48    2687
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term           0    12680   24962
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term           1      540   24962
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm                     0     4256   24962
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm                     1      544   24962
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term                  0     6514   24962
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term                  1      428   24962
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term           0      148     350
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term           1       66     350
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                     0       31     350
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                     1       21     350
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term                  0       58     350
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term                  1       26     350
24 months   ki1000108-IRC              INDIA                          Full or late term           0      230     390
24 months   ki1000108-IRC              INDIA                          Full or late term           1       20     390
24 months   ki1000108-IRC              INDIA                          Preterm                     0       33     390
24 months   ki1000108-IRC              INDIA                          Preterm                     1        9     390
24 months   ki1000108-IRC              INDIA                          Early term                  0       89     390
24 months   ki1000108-IRC              INDIA                          Early term                  1        9     390
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term           0       77     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term           1        2     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                     0      188     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                     1       20     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term                  0      214     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term                  1       13     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term           0        4       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term           1        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                     0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                     1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                  0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                  1        0       6
24 months   ki1101329-Keneba           GAMBIA                         Full or late term           0      510    1156
24 months   ki1101329-Keneba           GAMBIA                         Full or late term           1       47    1156
24 months   ki1101329-Keneba           GAMBIA                         Preterm                     0      145    1156
24 months   ki1101329-Keneba           GAMBIA                         Preterm                     1       22    1156
24 months   ki1101329-Keneba           GAMBIA                         Early term                  0      409    1156
24 months   ki1101329-Keneba           GAMBIA                         Early term                  1       23    1156
24 months   ki1119695-PROBIT           BELARUS                        Full or late term           0     1994    4035
24 months   ki1119695-PROBIT           BELARUS                        Full or late term           1       30    4035
24 months   ki1119695-PROBIT           BELARUS                        Preterm                     0      132    4035
24 months   ki1119695-PROBIT           BELARUS                        Preterm                     1        5    4035
24 months   ki1119695-PROBIT           BELARUS                        Early term                  0     1844    4035
24 months   ki1119695-PROBIT           BELARUS                        Early term                  1       30    4035
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term           0      218     663
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term           1      157     663
24 months   ki1135781-COHORTS          GUATEMALA                      Preterm                     0       58     663
24 months   ki1135781-COHORTS          GUATEMALA                      Preterm                     1       50     663
24 months   ki1135781-COHORTS          GUATEMALA                      Early term                  0      100     663
24 months   ki1135781-COHORTS          GUATEMALA                      Early term                  1       80     663
24 months   ki1135781-COHORTS          INDIA                          Full or late term           0      481    1308
24 months   ki1135781-COHORTS          INDIA                          Full or late term           1       84    1308
24 months   ki1135781-COHORTS          INDIA                          Preterm                     0      244    1308
24 months   ki1135781-COHORTS          INDIA                          Preterm                     1       61    1308
24 months   ki1135781-COHORTS          INDIA                          Early term                  0      365    1308
24 months   ki1135781-COHORTS          INDIA                          Early term                  1       73    1308
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term           0      697    2424
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term           1      241    2424
24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm                     0      349    2424
24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm                     1      164    2424
24 months   ki1135781-COHORTS          PHILIPPINES                    Early term                  0      695    2424
24 months   ki1135781-COHORTS          PHILIPPINES                    Early term                  1      278    2424
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term           0     5787   12983
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term           1     1014   12983
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                     0     2052   12983
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                     1      539   12983
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term                  0     3037   12983
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term                  1      554   12983


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
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/d3203322-de4c-411f-8ff8-2a53046a85de/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d3203322-de4c-411f-8ff8-2a53046a85de/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d3203322-de4c-411f-8ff8-2a53046a85de/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d3203322-de4c-411f-8ff8-2a53046a85de/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1101329-Keneba           GAMBIA        Full or late term    NA                0.0108992    0.0033854   0.0184130
Birth       ki1101329-Keneba           GAMBIA        Preterm              NA                0.0680851    0.0358691   0.1003011
Birth       ki1101329-Keneba           GAMBIA        Early term           NA                0.0091575    0.0011649   0.0171501
Birth       ki1135781-COHORTS          INDIA         Full or late term    NA                0.0140351    0.0043742   0.0236960
Birth       ki1135781-COHORTS          INDIA         Preterm              NA                0.0561404    0.0294051   0.0828756
Birth       ki1135781-COHORTS          INDIA         Early term           NA                0.0159817    0.0042330   0.0277305
Birth       kiGH5241-JiVitA-3          BANGLADESH    Full or late term    NA                0.0470551    0.0425221   0.0515882
Birth       kiGH5241-JiVitA-3          BANGLADESH    Preterm              NA                0.2400636    0.2257825   0.2543447
Birth       kiGH5241-JiVitA-3          BANGLADESH    Early term           NA                0.0935912    0.0848687   0.1023138
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Full or late term    NA                0.1037736    0.0626625   0.1448847
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Preterm              NA                0.1923077    0.0850337   0.2995817
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Early term           NA                0.0722892    0.0164963   0.1280820
6 months    ki1000109-EE               PAKISTAN      Full or late term    NA                0.1200000   -0.0075541   0.2475541
6 months    ki1000109-EE               PAKISTAN      Preterm              NA                0.2761506    0.2193921   0.3329091
6 months    ki1000109-EE               PAKISTAN      Early term           NA                0.2314815    0.1518278   0.3111352
6 months    ki1119695-PROBIT           BELARUS       Full or late term    NA                0.0113636    0.0068846   0.0158427
6 months    ki1119695-PROBIT           BELARUS       Preterm              NA                0.0326679    0.0167924   0.0485433
6 months    ki1119695-PROBIT           BELARUS       Early term           NA                0.0186059    0.0111432   0.0260687
6 months    ki1135781-COHORTS          GUATEMALA     Full or late term    NA                0.0848329    0.0571246   0.1125412
6 months    ki1135781-COHORTS          GUATEMALA     Preterm              NA                0.2389381    0.1602577   0.3176184
6 months    ki1135781-COHORTS          GUATEMALA     Early term           NA                0.1563981    0.1073529   0.2054433
6 months    ki1135781-COHORTS          INDIA         Full or late term    NA                0.0211268    0.0092958   0.0329577
6 months    ki1135781-COHORTS          INDIA         Preterm              NA                0.0468227    0.0228679   0.0707776
6 months    ki1135781-COHORTS          INDIA         Early term           NA                0.0292135    0.0135609   0.0448661
6 months    ki1135781-COHORTS          PHILIPPINES   Full or late term    NA                0.0389105    0.0270870   0.0507341
6 months    ki1135781-COHORTS          PHILIPPINES   Preterm              NA                0.0750436    0.0534677   0.0966195
6 months    ki1135781-COHORTS          PHILIPPINES   Early term           NA                0.0441989    0.0319724   0.0564254
6 months    kiGH5241-JiVitA-3          BANGLADESH    Full or late term    NA                0.0408472    0.0359454   0.0457490
6 months    kiGH5241-JiVitA-3          BANGLADESH    Preterm              NA                0.1133333    0.0995315   0.1271352
6 months    kiGH5241-JiVitA-3          BANGLADESH    Early term           NA                0.0616537    0.0531487   0.0701587
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Full or late term    NA                0.3084112    0.2464455   0.3703769
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Preterm              NA                0.4038462    0.2702928   0.5373995
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Early term           NA                0.3095238    0.2105202   0.4085274
24 months   ki1000108-IRC              INDIA         Full or late term    NA                0.0800000    0.0463276   0.1136724
24 months   ki1000108-IRC              INDIA         Preterm              NA                0.2142857    0.0900319   0.3385396
24 months   ki1000108-IRC              INDIA         Early term           NA                0.0918367    0.0345858   0.1490877
24 months   ki1101329-Keneba           GAMBIA        Full or late term    NA                0.0843806    0.0612872   0.1074740
24 months   ki1101329-Keneba           GAMBIA        Preterm              NA                0.1317365    0.0804201   0.1830530
24 months   ki1101329-Keneba           GAMBIA        Early term           NA                0.0532407    0.0320603   0.0744212
24 months   ki1119695-PROBIT           BELARUS       Full or late term    NA                0.0148221    0.0038188   0.0258255
24 months   ki1119695-PROBIT           BELARUS       Preterm              NA                0.0364964   -0.0116126   0.0846053
24 months   ki1119695-PROBIT           BELARUS       Early term           NA                0.0160085   -0.0030877   0.0351047
24 months   ki1135781-COHORTS          GUATEMALA     Full or late term    NA                0.4186667    0.3686969   0.4686364
24 months   ki1135781-COHORTS          GUATEMALA     Preterm              NA                0.4629630    0.3688522   0.5570737
24 months   ki1135781-COHORTS          GUATEMALA     Early term           NA                0.4444444    0.3717984   0.5170905
24 months   ki1135781-COHORTS          INDIA         Full or late term    NA                0.1486726    0.1193262   0.1780189
24 months   ki1135781-COHORTS          INDIA         Preterm              NA                0.2000000    0.1550919   0.2449081
24 months   ki1135781-COHORTS          INDIA         Early term           NA                0.1666667    0.1317518   0.2015816
24 months   ki1135781-COHORTS          PHILIPPINES   Full or late term    NA                0.2569296    0.2289618   0.2848974
24 months   ki1135781-COHORTS          PHILIPPINES   Preterm              NA                0.3196881    0.2793239   0.3600523
24 months   ki1135781-COHORTS          PHILIPPINES   Early term           NA                0.2857143    0.2573231   0.3141055
24 months   kiGH5241-JiVitA-3          BANGLADESH    Full or late term    NA                0.1490957    0.1356809   0.1625106
24 months   kiGH5241-JiVitA-3          BANGLADESH    Preterm              NA                0.2080278    0.1850836   0.2309720
24 months   kiGH5241-JiVitA-3          BANGLADESH    Early term           NA                0.1542746    0.1354377   0.1731114


### Parameter: E(Y)


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1101329-Keneba           GAMBIA        NA                   NA                0.0191419   0.0122398   0.0260440
Birth       ki1135781-COHORTS          INDIA         NA                   NA                0.0239753   0.0156340   0.0323165
Birth       kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.0994901   0.0949359   0.1040443
6 months    ki1000108-CMC-V-BCS-2002   INDIA         NA                   NA                0.1095101   0.0766059   0.1424143
6 months    ki1000109-EE               PAKISTAN      NA                   NA                0.2526882   0.2084696   0.2969067
6 months    ki1119695-PROBIT           BELARUS       NA                   NA                0.0154178   0.0100323   0.0208033
6 months    ki1135781-COHORTS          GUATEMALA     NA                   NA                0.1304348   0.1056973   0.1551723
6 months    ki1135781-COHORTS          INDIA         NA                   NA                0.0297256   0.0205326   0.0389187
6 months    ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0487533   0.0406091   0.0568974
6 months    kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.0605721   0.0559673   0.0651769
24 months   ki1000108-CMC-V-BCS-2002   INDIA         NA                   NA                0.3228571   0.2738024   0.3719119
24 months   ki1000108-IRC              INDIA         NA                   NA                0.0974359   0.0679665   0.1269053
24 months   ki1101329-Keneba           GAMBIA        NA                   NA                0.0795848   0.0639762   0.0951934
24 months   ki1119695-PROBIT           BELARUS       NA                   NA                0.0161090   0.0034156   0.0288025
24 months   ki1135781-COHORTS          GUATEMALA     NA                   NA                0.4328808   0.3951375   0.4706242
24 months   ki1135781-COHORTS          INDIA         NA                   NA                0.1666667   0.1464624   0.1868710
24 months   ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.2817657   0.2638535   0.2996779
24 months   kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.1622891   0.1518212   0.1727571


### Parameter: RR


agecat      studyid                    country       intervention_level   baseline_level        estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ------------------  ----------  ----------  ----------
Birth       ki1101329-Keneba           GAMBIA        Full or late term    Full or late term    1.0000000   1.0000000    1.000000
Birth       ki1101329-Keneba           GAMBIA        Preterm              Full or late term    6.2468085   2.7072028   14.414368
Birth       ki1101329-Keneba           GAMBIA        Early term           Full or late term    0.8402015   0.2762834    2.555125
Birth       ki1135781-COHORTS          INDIA         Full or late term    Full or late term    1.0000000   1.0000000    1.000000
Birth       ki1135781-COHORTS          INDIA         Preterm              Full or late term    4.0000000   1.7320013    9.237869
Birth       ki1135781-COHORTS          INDIA         Early term           Full or late term    1.1386986   0.4159430    3.117338
Birth       kiGH5241-JiVitA-3          BANGLADESH    Full or late term    Full or late term    1.0000000   1.0000000    1.000000
Birth       kiGH5241-JiVitA-3          BANGLADESH    Preterm              Full or late term    5.1017523   4.5408945    5.731883
Birth       kiGH5241-JiVitA-3          BANGLADESH    Early term           Full or late term    1.9889703   1.7430131    2.269635
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Full or late term    Full or late term    1.0000000   1.0000000    1.000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Preterm              Full or late term    1.8531469   0.9349126    3.673234
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Early term           Full or late term    0.6966046   0.2925632    1.658643
6 months    ki1000109-EE               PAKISTAN      Full or late term    Full or late term    1.0000000   1.0000000    1.000000
6 months    ki1000109-EE               PAKISTAN      Preterm              Full or late term    2.3012552   0.7794355    6.794373
6 months    ki1000109-EE               PAKISTAN      Early term           Full or late term    1.9290123   0.6311239    5.895972
6 months    ki1119695-PROBIT           BELARUS       Full or late term    Full or late term    1.0000000   1.0000000    1.000000
6 months    ki1119695-PROBIT           BELARUS       Preterm              Full or late term    2.8747731   1.6001362    5.164761
6 months    ki1119695-PROBIT           BELARUS       Early term           Full or late term    1.6373230   1.2113497    2.213090
6 months    ki1135781-COHORTS          GUATEMALA     Full or late term    Full or late term    1.0000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          GUATEMALA     Preterm              Full or late term    2.8165728   1.7713031    4.478670
6 months    ki1135781-COHORTS          GUATEMALA     Early term           Full or late term    1.8436019   1.1722531    2.899432
6 months    ki1135781-COHORTS          INDIA         Full or late term    Full or late term    1.0000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          INDIA         Preterm              Full or late term    2.2162765   1.0380224    4.731961
6 months    ki1135781-COHORTS          INDIA         Early term           Full or late term    1.3827715   0.6370252    3.001541
6 months    ki1135781-COHORTS          PHILIPPINES   Full or late term    Full or late term    1.0000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          PHILIPPINES   Preterm              Full or late term    1.9286213   1.2693171    2.930379
6 months    ki1135781-COHORTS          PHILIPPINES   Early term           Full or late term    1.1359116   0.7531545    1.713188
6 months    kiGH5241-JiVitA-3          BANGLADESH    Full or late term    Full or late term    1.0000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH    Preterm              Full or late term    2.7745679   2.3521239    3.272883
6 months    kiGH5241-JiVitA-3          BANGLADESH    Early term           Full or late term    1.5093740   1.2550832    1.815186
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Full or late term    Full or late term    1.0000000   1.0000000    1.000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Preterm              Full or late term    1.3094406   0.8892703    1.928136
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Early term           Full or late term    1.0036075   0.6878903    1.464228
24 months   ki1000108-IRC              INDIA         Full or late term    Full or late term    1.0000000   1.0000000    1.000000
24 months   ki1000108-IRC              INDIA         Preterm              Full or late term    2.6785714   1.3083567    5.483783
24 months   ki1000108-IRC              INDIA         Early term           Full or late term    1.1479592   0.5410719    2.435555
24 months   ki1101329-Keneba           GAMBIA        Full or late term    Full or late term    1.0000000   1.0000000    1.000000
24 months   ki1101329-Keneba           GAMBIA        Preterm              Full or late term    1.5612180   0.9698610    2.513145
24 months   ki1101329-Keneba           GAMBIA        Early term           Full or late term    0.6309594   0.3893073    1.022611
24 months   ki1119695-PROBIT           BELARUS       Full or late term    Full or late term    1.0000000   1.0000000    1.000000
24 months   ki1119695-PROBIT           BELARUS       Preterm              Full or late term    2.4622871   0.5762612   10.521023
24 months   ki1119695-PROBIT           BELARUS       Early term           Full or late term    1.0800427   0.3773256    3.091474
24 months   ki1135781-COHORTS          GUATEMALA     Full or late term    Full or late term    1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          GUATEMALA     Preterm              Full or late term    1.1058033   0.8735792    1.399760
24 months   ki1135781-COHORTS          GUATEMALA     Early term           Full or late term    1.0615711   0.8670643    1.299711
24 months   ki1135781-COHORTS          INDIA         Full or late term    Full or late term    1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          INDIA         Preterm              Full or late term    1.3452381   0.9976078    1.814005
24 months   ki1135781-COHORTS          INDIA         Early term           Full or late term    1.1210317   0.8406464    1.494936
24 months   ki1135781-COHORTS          PHILIPPINES   Full or late term    Full or late term    1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          PHILIPPINES   Preterm              Full or late term    1.2442633   1.0532041    1.469982
24 months   ki1135781-COHORTS          PHILIPPINES   Early term           Full or late term    1.1120332   0.9596386    1.288629
24 months   kiGH5241-JiVitA-3          BANGLADESH    Full or late term    Full or late term    1.0000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH    Preterm              Full or late term    1.3952633   1.2147228    1.602637
24 months   kiGH5241-JiVitA-3          BANGLADESH    Early term           Full or late term    1.0347351   0.8960514    1.194883


### Parameter: PAR


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1101329-Keneba           GAMBIA        Full or late term    NA                 0.0082427    0.0012149   0.0152706
Birth       ki1135781-COHORTS          INDIA         Full or late term    NA                 0.0099402    0.0009613   0.0189190
Birth       kiGH5241-JiVitA-3          BANGLADESH    Full or late term    NA                 0.0524349    0.0479408   0.0569291
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Full or late term    NA                 0.0057365   -0.0208651   0.0323381
6 months    ki1000109-EE               PAKISTAN      Full or late term    NA                 0.1326882    0.0060450   0.2593314
6 months    ki1119695-PROBIT           BELARUS       Full or late term    NA                 0.0040542    0.0016000   0.0065083
6 months    ki1135781-COHORTS          GUATEMALA     Full or late term    NA                 0.0456019    0.0223220   0.0688818
6 months    ki1135781-COHORTS          INDIA         Full or late term    NA                 0.0085988   -0.0015643   0.0187620
6 months    ki1135781-COHORTS          PHILIPPINES   Full or late term    NA                 0.0098428   -0.0001149   0.0198004
6 months    kiGH5241-JiVitA-3          BANGLADESH    Full or late term    NA                 0.0197249    0.0154044   0.0240453
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Full or late term    NA                 0.0144459   -0.0249323   0.0538242
24 months   ki1000108-IRC              INDIA         Full or late term    NA                 0.0174359   -0.0059874   0.0408591
24 months   ki1101329-Keneba           GAMBIA        Full or late term    NA                -0.0047958   -0.0210132   0.0114216
24 months   ki1119695-PROBIT           BELARUS       Full or late term    NA                 0.0012869   -0.0065493   0.0091231
24 months   ki1135781-COHORTS          GUATEMALA     Full or late term    NA                 0.0142142   -0.0189054   0.0473337
24 months   ki1135781-COHORTS          INDIA         Full or late term    NA                 0.0179941   -0.0049278   0.0409160
24 months   ki1135781-COHORTS          PHILIPPINES   Full or late term    NA                 0.0248360    0.0025273   0.0471448
24 months   kiGH5241-JiVitA-3          BANGLADESH    Full or late term    NA                 0.0131934    0.0043457   0.0220411


### Parameter: PAF


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1101329-Keneba           GAMBIA        Full or late term    NA                 0.4306117   -0.0227788   0.6830174
Birth       ki1135781-COHORTS          INDIA         Full or late term    NA                 0.4146010   -0.0580236   0.6761018
Birth       kiGH5241-JiVitA-3          BANGLADESH    Full or late term    NA                 0.5270370    0.4861635   0.5646591
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Full or late term    NA                 0.0523833   -0.2240006   0.2663587
6 months    ki1000109-EE               PAKISTAN      Full or late term    NA                 0.5251064   -0.3479495   0.8326911
6 months    ki1119695-PROBIT           BELARUS       Full or late term    NA                 0.2629536    0.1193233   0.3831591
6 months    ki1135781-COHORTS          GUATEMALA     Full or late term    NA                 0.3496144    0.1575663   0.4978816
6 months    ki1135781-COHORTS          INDIA         Full or late term    NA                 0.2892741   -0.1315262   0.5535841
6 months    ki1135781-COHORTS          PHILIPPINES   Full or late term    NA                 0.2018891   -0.0275540   0.3800997
6 months    kiGH5241-JiVitA-3          BANGLADESH    Full or late term    NA                 0.3256430    0.2568225   0.3880904
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Full or late term    NA                 0.0447440   -0.0853337   0.1592319
24 months   ki1000108-IRC              INDIA         Full or late term    NA                 0.1789474   -0.0935755   0.3835566
24 months   ki1101329-Keneba           GAMBIA        Full or late term    NA                -0.0602607   -0.2845960   0.1248978
24 months   ki1119695-PROBIT           BELARUS       Full or late term    NA                 0.0798875   -0.5128990   0.4404074
24 months   ki1135781-COHORTS          GUATEMALA     Full or late term    NA                 0.0328362   -0.0468086   0.1064214
24 months   ki1135781-COHORTS          INDIA         Full or late term    NA                 0.1079646   -0.0402673   0.2350743
24 months   ki1135781-COHORTS          PHILIPPINES   Full or late term    NA                 0.0881443    0.0054921   0.1639274
24 months   kiGH5241-JiVitA-3          BANGLADESH    Full or late term    NA                 0.0812958    0.0250973   0.1342547
