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

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_nrooms
* W_nchldlt5
* brthmon
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_nrooms
* delta_W_nchldlt5
* delta_brthmon
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

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
![](/tmp/f7123062-743b-4176-9a3b-b3646573cb80/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f7123062-743b-4176-9a3b-b3646573cb80/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f7123062-743b-4176-9a3b-b3646573cb80/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f7123062-743b-4176-9a3b-b3646573cb80/REPORT_files/figure-html/plot_par-1.png)<!-- -->

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
Birth       kiGH5241-JiVitA-3          BANGLADESH    Full or late term    NA                0.0470150    0.0425342   0.0514959
Birth       kiGH5241-JiVitA-3          BANGLADESH    Preterm              NA                0.2422372    0.2287532   0.2557213
Birth       kiGH5241-JiVitA-3          BANGLADESH    Early term           NA                0.0948235    0.0862837   0.1033633
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Full or late term    NA                0.1037736    0.0626625   0.1448847
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Preterm              NA                0.1923077    0.0850337   0.2995817
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Early term           NA                0.0722892    0.0164963   0.1280820
6 months    ki1000109-EE               PAKISTAN      Full or late term    NA                0.1200000   -0.0075541   0.2475541
6 months    ki1000109-EE               PAKISTAN      Preterm              NA                0.2761506    0.2193921   0.3329091
6 months    ki1000109-EE               PAKISTAN      Early term           NA                0.2314815    0.1518278   0.3111352
6 months    ki1119695-PROBIT           BELARUS       Full or late term    NA                0.0113185    0.0068242   0.0158127
6 months    ki1119695-PROBIT           BELARUS       Preterm              NA                0.0343651    0.0197928   0.0489373
6 months    ki1119695-PROBIT           BELARUS       Early term           NA                0.0186286    0.0111670   0.0260901
6 months    ki1135781-COHORTS          GUATEMALA     Full or late term    NA                0.0855239    0.0579265   0.1131213
6 months    ki1135781-COHORTS          GUATEMALA     Preterm              NA                0.2351483    0.1586556   0.3116409
6 months    ki1135781-COHORTS          GUATEMALA     Early term           NA                0.1553500    0.1065820   0.2041180
6 months    ki1135781-COHORTS          INDIA         Full or late term    NA                0.0203138    0.0085275   0.0321002
6 months    ki1135781-COHORTS          INDIA         Preterm              NA                0.0413600    0.0184809   0.0642391
6 months    ki1135781-COHORTS          INDIA         Early term           NA                0.0260654    0.0108086   0.0413223
6 months    ki1135781-COHORTS          PHILIPPINES   Full or late term    NA                0.0374441    0.0257364   0.0491518
6 months    ki1135781-COHORTS          PHILIPPINES   Preterm              NA                0.0671107    0.0461516   0.0880698
6 months    ki1135781-COHORTS          PHILIPPINES   Early term           NA                0.0428123    0.0306949   0.0549298
6 months    kiGH5241-JiVitA-3          BANGLADESH    Full or late term    NA                0.0418590    0.0369450   0.0467729
6 months    kiGH5241-JiVitA-3          BANGLADESH    Preterm              NA                0.1149452    0.1019032   0.1279872
6 months    kiGH5241-JiVitA-3          BANGLADESH    Early term           NA                0.0614444    0.0531735   0.0697153
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Full or late term    NA                0.3054247    0.2442769   0.3665725
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Preterm              NA                0.3863430    0.2678812   0.5048049
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Early term           NA                0.3020892    0.2074745   0.3967039
24 months   ki1000108-IRC              INDIA         Full or late term    NA                0.0800000    0.0463276   0.1136724
24 months   ki1000108-IRC              INDIA         Preterm              NA                0.2142857    0.0900319   0.3385396
24 months   ki1000108-IRC              INDIA         Early term           NA                0.0918367    0.0345858   0.1490877
24 months   ki1101329-Keneba           GAMBIA        Full or late term    NA                0.0830828    0.0600860   0.1060796
24 months   ki1101329-Keneba           GAMBIA        Preterm              NA                0.1308133    0.0820168   0.1796098
24 months   ki1101329-Keneba           GAMBIA        Early term           NA                0.0543973    0.0335675   0.0752272
24 months   ki1119695-PROBIT           BELARUS       Full or late term    NA                0.0148221    0.0038188   0.0258255
24 months   ki1119695-PROBIT           BELARUS       Preterm              NA                0.0364964   -0.0116126   0.0846053
24 months   ki1119695-PROBIT           BELARUS       Early term           NA                0.0160085   -0.0030877   0.0351047
24 months   ki1135781-COHORTS          GUATEMALA     Full or late term    NA                0.4165231    0.3678865   0.4651598
24 months   ki1135781-COHORTS          GUATEMALA     Preterm              NA                0.3987725    0.3172549   0.4802901
24 months   ki1135781-COHORTS          GUATEMALA     Early term           NA                0.4172252    0.3507272   0.4837231
24 months   ki1135781-COHORTS          INDIA         Full or late term    NA                0.1464314    0.1182918   0.1745711
24 months   ki1135781-COHORTS          INDIA         Preterm              NA                0.1926502    0.1511866   0.2341139
24 months   ki1135781-COHORTS          INDIA         Early term           NA                0.1617180    0.1286412   0.1947947
24 months   ki1135781-COHORTS          PHILIPPINES   Full or late term    NA                0.2516596    0.2242862   0.2790330
24 months   ki1135781-COHORTS          PHILIPPINES   Preterm              NA                0.3206547    0.2815737   0.3597357
24 months   ki1135781-COHORTS          PHILIPPINES   Early term           NA                0.2906116    0.2627238   0.3184994
24 months   kiGH5241-JiVitA-3          BANGLADESH    Full or late term    NA                0.1476448    0.1344676   0.1608220
24 months   kiGH5241-JiVitA-3          BANGLADESH    Preterm              NA                0.1968003    0.1757677   0.2178328
24 months   kiGH5241-JiVitA-3          BANGLADESH    Early term           NA                0.1510630    0.1327618   0.1693641


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
Birth       kiGH5241-JiVitA-3          BANGLADESH    Preterm              Full or late term    5.1523362   4.6037313    5.766316
Birth       kiGH5241-JiVitA-3          BANGLADESH    Early term           Full or late term    2.0168757   1.7737677    2.293303
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Full or late term    Full or late term    1.0000000   1.0000000    1.000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Preterm              Full or late term    1.8531469   0.9349126    3.673234
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Early term           Full or late term    0.6966046   0.2925632    1.658643
6 months    ki1000109-EE               PAKISTAN      Full or late term    Full or late term    1.0000000   1.0000000    1.000000
6 months    ki1000109-EE               PAKISTAN      Preterm              Full or late term    2.3012552   0.7794355    6.794373
6 months    ki1000109-EE               PAKISTAN      Early term           Full or late term    1.9290123   0.6311239    5.895972
6 months    ki1119695-PROBIT           BELARUS       Full or late term    Full or late term    1.0000000   1.0000000    1.000000
6 months    ki1119695-PROBIT           BELARUS       Preterm              Full or late term    3.0361979   1.7484937    5.272251
6 months    ki1119695-PROBIT           BELARUS       Early term           Full or late term    1.6458573   1.2227327    2.215404
6 months    ki1135781-COHORTS          GUATEMALA     Full or late term    Full or late term    1.0000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          GUATEMALA     Preterm              Full or late term    2.7495030   1.7397992    4.345195
6 months    ki1135781-COHORTS          GUATEMALA     Early term           Full or late term    1.8164513   1.1587865    2.847371
6 months    ki1135781-COHORTS          INDIA         Full or late term    Full or late term    1.0000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          INDIA         Preterm              Full or late term    2.0360515   0.9150511    4.530354
6 months    ki1135781-COHORTS          INDIA         Early term           Full or late term    1.2831364   0.5631251    2.923754
6 months    ki1135781-COHORTS          PHILIPPINES   Full or late term    Full or late term    1.0000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          PHILIPPINES   Preterm              Full or late term    1.7922899   1.1530188    2.785994
6 months    ki1135781-COHORTS          PHILIPPINES   Early term           Full or late term    1.1433671   0.7505351    1.741809
6 months    kiGH5241-JiVitA-3          BANGLADESH    Full or late term    Full or late term    1.0000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH    Preterm              Full or late term    2.7460114   2.3456844    3.214660
6 months    kiGH5241-JiVitA-3          BANGLADESH    Early term           Full or late term    1.4678913   1.2269466    1.756152
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Full or late term    Full or late term    1.0000000   1.0000000    1.000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Preterm              Full or late term    1.2649370   0.8768486    1.824791
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Early term           Full or late term    0.9890790   0.6820717    1.434273
24 months   ki1000108-IRC              INDIA         Full or late term    Full or late term    1.0000000   1.0000000    1.000000
24 months   ki1000108-IRC              INDIA         Preterm              Full or late term    2.6785714   1.3083567    5.483783
24 months   ki1000108-IRC              INDIA         Early term           Full or late term    1.1479592   0.5410719    2.435555
24 months   ki1101329-Keneba           GAMBIA        Full or late term    Full or late term    1.0000000   1.0000000    1.000000
24 months   ki1101329-Keneba           GAMBIA        Preterm              Full or late term    1.5744937   0.9920332    2.498939
24 months   ki1101329-Keneba           GAMBIA        Early term           Full or late term    0.6547366   0.4092794    1.047402
24 months   ki1119695-PROBIT           BELARUS       Full or late term    Full or late term    1.0000000   1.0000000    1.000000
24 months   ki1119695-PROBIT           BELARUS       Preterm              Full or late term    2.4622871   0.5762612   10.521023
24 months   ki1119695-PROBIT           BELARUS       Early term           Full or late term    1.0800427   0.3773256    3.091474
24 months   ki1135781-COHORTS          GUATEMALA     Full or late term    Full or late term    1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          GUATEMALA     Preterm              Full or late term    0.9573838   0.7578717    1.209418
24 months   ki1135781-COHORTS          GUATEMALA     Early term           Full or late term    1.0016855   0.8236193    1.218249
24 months   ki1135781-COHORTS          INDIA         Full or late term    Full or late term    1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          INDIA         Preterm              Full or late term    1.3156345   0.9890713    1.750020
24 months   ki1135781-COHORTS          INDIA         Early term           Full or late term    1.1043938   0.8367881    1.457580
24 months   ki1135781-COHORTS          PHILIPPINES   Full or late term    Full or late term    1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          PHILIPPINES   Preterm              Full or late term    1.2741603   1.0836837    1.498117
24 months   ki1135781-COHORTS          PHILIPPINES   Early term           Full or late term    1.1547805   1.0003903    1.332998
24 months   kiGH5241-JiVitA-3          BANGLADESH    Full or late term    Full or late term    1.0000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH    Preterm              Full or late term    1.3329308   1.1652344    1.524762
24 months   kiGH5241-JiVitA-3          BANGLADESH    Early term           Full or late term    1.0231514   0.8871640    1.179983


### Parameter: PAR


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1101329-Keneba           GAMBIA        Full or late term    NA                 0.0082427    0.0012149   0.0152706
Birth       ki1135781-COHORTS          INDIA         Full or late term    NA                 0.0099402    0.0009613   0.0189190
Birth       kiGH5241-JiVitA-3          BANGLADESH    Full or late term    NA                 0.0524750    0.0480330   0.0569171
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Full or late term    NA                 0.0057365   -0.0208651   0.0323381
6 months    ki1000109-EE               PAKISTAN      Full or late term    NA                 0.1326882    0.0060450   0.2593314
6 months    ki1119695-PROBIT           BELARUS       Full or late term    NA                 0.0040994    0.0016839   0.0065148
6 months    ki1135781-COHORTS          GUATEMALA     Full or late term    NA                 0.0449109    0.0217470   0.0680748
6 months    ki1135781-COHORTS          INDIA         Full or late term    NA                 0.0094118   -0.0007164   0.0195400
6 months    ki1135781-COHORTS          PHILIPPINES   Full or late term    NA                 0.0113092    0.0014518   0.0211665
6 months    kiGH5241-JiVitA-3          BANGLADESH    Full or late term    NA                 0.0187131    0.0144022   0.0230240
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Full or late term    NA                 0.0174324   -0.0215660   0.0564309
24 months   ki1000108-IRC              INDIA         Full or late term    NA                 0.0174359   -0.0059874   0.0408591
24 months   ki1101329-Keneba           GAMBIA        Full or late term    NA                -0.0034980   -0.0194209   0.0124248
24 months   ki1119695-PROBIT           BELARUS       Full or late term    NA                 0.0012869   -0.0065493   0.0091231
24 months   ki1135781-COHORTS          GUATEMALA     Full or late term    NA                 0.0163577   -0.0155308   0.0482463
24 months   ki1135781-COHORTS          INDIA         Full or late term    NA                 0.0202352   -0.0015914   0.0420619
24 months   ki1135781-COHORTS          PHILIPPINES   Full or late term    NA                 0.0301061    0.0084570   0.0517551
24 months   kiGH5241-JiVitA-3          BANGLADESH    Full or late term    NA                 0.0146444    0.0060179   0.0232708


### Parameter: PAF


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1101329-Keneba           GAMBIA        Full or late term    NA                 0.4306117   -0.0227788   0.6830174
Birth       ki1135781-COHORTS          INDIA         Full or late term    NA                 0.4146010   -0.0580236   0.6761018
Birth       kiGH5241-JiVitA-3          BANGLADESH    Full or late term    NA                 0.5274400    0.4872242   0.5645017
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Full or late term    NA                 0.0523833   -0.2240006   0.2663587
6 months    ki1000109-EE               PAKISTAN      Full or late term    NA                 0.5251064   -0.3479495   0.8326911
6 months    ki1119695-PROBIT           BELARUS       Full or late term    NA                 0.2658842    0.1241419   0.3846880
6 months    ki1135781-COHORTS          GUATEMALA     Full or late term    NA                 0.3443167    0.1538009   0.4919391
6 months    ki1135781-COHORTS          INDIA         Full or late term    NA                 0.3166217   -0.1064084   0.5779082
6 months    ki1135781-COHORTS          PHILIPPINES   Full or late term    NA                 0.2319675    0.0041505   0.4076675
6 months    kiGH5241-JiVitA-3          BANGLADESH    Full or late term    NA                 0.3089396    0.2401562   0.3714964
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Full or late term    NA                 0.0539942   -0.0747062   0.1672822
24 months   ki1000108-IRC              INDIA         Full or late term    NA                 0.1789474   -0.0935755   0.3835566
24 months   ki1101329-Keneba           GAMBIA        Full or late term    NA                -0.0439534   -0.2640445   0.1378162
24 months   ki1119695-PROBIT           BELARUS       Full or late term    NA                 0.0798875   -0.5128990   0.4404074
24 months   ki1135781-COHORTS          GUATEMALA     Full or late term    NA                 0.0377880   -0.0387385   0.1086766
24 months   ki1135781-COHORTS          INDIA         Full or late term    NA                 0.1214114   -0.0189731   0.2424551
24 months   ki1135781-COHORTS          PHILIPPINES   Full or late term    NA                 0.1068479    0.0266695   0.1804216
24 months   kiGH5241-JiVitA-3          BANGLADESH    Full or late term    NA                 0.0902362    0.0355140   0.1418536
