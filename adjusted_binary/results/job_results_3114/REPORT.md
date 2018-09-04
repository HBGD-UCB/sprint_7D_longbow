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
![](/tmp/a44338aa-4f4d-4fa1-bcbf-bf072587beb3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a44338aa-4f4d-4fa1-bcbf-bf072587beb3/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a44338aa-4f4d-4fa1-bcbf-bf072587beb3/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a44338aa-4f4d-4fa1-bcbf-bf072587beb3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1000108-IRC              INDIA                          Full or late term    NA                0.1134454    0.0730999   0.1537909
Birth       ki1000108-IRC              INDIA                          Preterm              NA                0.2500000    0.1083597   0.3916403
Birth       ki1000108-IRC              INDIA                          Early term           NA                0.0842105    0.0282919   0.1401292
Birth       ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.0296056    0.0173362   0.0418750
Birth       ki1101329-Keneba           GAMBIA                         Preterm              NA                0.1292840    0.0866751   0.1718928
Birth       ki1101329-Keneba           GAMBIA                         Early term           NA                0.0437939    0.0264876   0.0611002
Birth       ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.0007047   -0.0002052   0.0016147
Birth       ki1119695-PROBIT           BELARUS                        Preterm              NA                0.0296610   -0.0004536   0.0597756
Birth       ki1119695-PROBIT           BELARUS                        Early term           NA                0.0022162    0.0011584   0.0032741
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.0319378    0.0131593   0.0507162
Birth       ki1135781-COHORTS          GUATEMALA                      Preterm              NA                0.1318290    0.0633900   0.2002680
Birth       ki1135781-COHORTS          GUATEMALA                      Early term           NA                0.0596564    0.0249856   0.0943272
Birth       ki1135781-COHORTS          INDIA                          Full or late term    NA                0.0600530    0.0408640   0.0792420
Birth       ki1135781-COHORTS          INDIA                          Preterm              NA                0.1474790    0.1076317   0.1873262
Birth       ki1135781-COHORTS          INDIA                          Early term           NA                0.1065450    0.0781697   0.1349203
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.0312791    0.0214707   0.0410874
Birth       ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.1318867    0.1064816   0.1572918
Birth       ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.0502090    0.0380506   0.0623673
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.2198413    0.2103266   0.2293559
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.5229359    0.5060100   0.5398618
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.3586688    0.3441920   0.3731457
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.2616554    0.2034386   0.3198722
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                0.4720938    0.3525586   0.5916290
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                0.2876339    0.1957432   0.3795246
6 months    ki1000108-IRC              INDIA                          Full or late term    NA                0.2034910    0.1537486   0.2532333
6 months    ki1000108-IRC              INDIA                          Preterm              NA                0.4278038    0.2933787   0.5622289
6 months    ki1000108-IRC              INDIA                          Early term           NA                0.2214850    0.1419463   0.3010237
6 months    ki1000109-EE               PAKISTAN                       Full or late term    NA                0.3188763    0.1571202   0.4806324
6 months    ki1000109-EE               PAKISTAN                       Preterm              NA                0.5591971    0.4969389   0.6214554
6 months    ki1000109-EE               PAKISTAN                       Early term           NA                0.4352901    0.3457938   0.5247865
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                0.1415548    0.0903644   0.1927453
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                0.2837496    0.2299978   0.3375013
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                0.1868653    0.1441574   0.2295731
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.0832356    0.0674487   0.0990225
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.1230124    0.0865200   0.1595047
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.0979552    0.0705716   0.1253388
6 months    ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.1068476    0.0835139   0.1301813
6 months    ki1101329-Keneba           GAMBIA                         Preterm              NA                0.2105760    0.1588129   0.2623392
6 months    ki1101329-Keneba           GAMBIA                         Early term           NA                0.1132929    0.0863981   0.1401877
6 months    ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.0554492    0.0419361   0.0689623
6 months    ki1119695-PROBIT           BELARUS                        Preterm              NA                0.1382489    0.1045488   0.1719489
6 months    ki1119695-PROBIT           BELARUS                        Early term           NA                0.0658450    0.0493847   0.0823052
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.3285413    0.2829853   0.3740973
6 months    ki1135781-COHORTS          GUATEMALA                      Preterm              NA                0.5016603    0.4219068   0.5814138
6 months    ki1135781-COHORTS          GUATEMALA                      Early term           NA                0.4810117    0.4174802   0.5445433
6 months    ki1135781-COHORTS          INDIA                          Full or late term    NA                0.1582738    0.1284998   0.1880478
6 months    ki1135781-COHORTS          INDIA                          Preterm              NA                0.2189036    0.1724228   0.2653843
6 months    ki1135781-COHORTS          INDIA                          Early term           NA                0.1413218    0.1090831   0.1735605
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.1658968    0.1431594   0.1886341
6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.2923054    0.2553871   0.3292237
6 months    ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.2030216    0.1791961   0.2268471
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.2141335    0.2031482   0.2251188
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.3510484    0.3318182   0.3702786
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.2768977    0.2608111   0.2929843
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.6728941    0.6099464   0.7358418
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                0.7500148    0.6321558   0.8678739
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                0.7857120    0.6978385   0.8735855
24 months   ki1000108-IRC              INDIA                          Full or late term    NA                0.3826055    0.3226107   0.4426002
24 months   ki1000108-IRC              INDIA                          Preterm              NA                0.5370914    0.3965540   0.6776287
24 months   ki1000108-IRC              INDIA                          Early term           NA                0.4491509    0.3531618   0.5451400
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                0.1630821    0.0828217   0.2433426
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                0.3114408    0.2486027   0.3742789
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                0.2379722    0.1827681   0.2931764
24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.3213500    0.2827577   0.3599423
24 months   ki1101329-Keneba           GAMBIA                         Preterm              NA                0.4275371    0.3553666   0.4997075
24 months   ki1101329-Keneba           GAMBIA                         Early term           NA                0.3090041    0.2663076   0.3517007
24 months   ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.0847390    0.0544138   0.1150642
24 months   ki1119695-PROBIT           BELARUS                        Preterm              NA                0.1188780    0.0434800   0.1942760
24 months   ki1119695-PROBIT           BELARUS                        Early term           NA                0.0837574    0.0473146   0.1202002
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.7711852    0.7288849   0.8134855
24 months   ki1135781-COHORTS          GUATEMALA                      Preterm              NA                0.8069981    0.7328126   0.8811835
24 months   ki1135781-COHORTS          GUATEMALA                      Early term           NA                0.8360418    0.7815346   0.8905489
24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                0.4337340    0.3949615   0.4725065
24 months   ki1135781-COHORTS          INDIA                          Preterm              NA                0.4797900    0.4296275   0.5299525
24 months   ki1135781-COHORTS          INDIA                          Early term           NA                0.4461921    0.4025780   0.4898063
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.5775895    0.5467832   0.6083957
24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.6573131    0.6177670   0.6968592
24 months   ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.6264229    0.5965987   0.6562471
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.4719817    0.4525051   0.4914584
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.5662687    0.5370222   0.5955151
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.4993948    0.4751807   0.5236089


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
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1317322   0.1138432   0.1496212
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0626864   0.0488489   0.0765238
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
Birth       ki1101329-Keneba           GAMBIA                         Preterm              Full or late term     4.3668757   2.5731040     7.411128
Birth       ki1101329-Keneba           GAMBIA                         Early term           Full or late term     1.4792426   0.8345088     2.622092
Birth       ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term     1.0000000   1.0000000     1.000000
Birth       ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    42.0889831   7.7901583   227.400064
Birth       ki1119695-PROBIT           BELARUS                        Early term           Full or late term     3.1448472   0.7336051    13.481455
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term     1.0000000   1.0000000     1.000000
Birth       ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term     4.1276835   1.8846337     9.040362
Birth       ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term     1.8678953   0.8172073     4.269459
Birth       ki1135781-COHORTS          INDIA                          Full or late term    Full or late term     1.0000000   1.0000000     1.000000
Birth       ki1135781-COHORTS          INDIA                          Preterm              Full or late term     2.4558146   1.6171616     3.729390
Birth       ki1135781-COHORTS          INDIA                          Early term           Full or late term     1.7741841   1.1709365     2.688215
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term     1.0000000   1.0000000     1.000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term     4.2164524   2.9198313     6.088869
Birth       ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term     1.6051948   1.0808430     2.383927
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term     1.0000000   1.0000000     1.000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term     2.3786973   2.2531730     2.511215
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term     1.6314900   1.5401564     1.728240
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     1.0000000   1.0000000     1.000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term     1.8042577   1.2887279     2.526015
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term     1.0992851   0.7454442     1.621084
6 months    ki1000108-IRC              INDIA                          Full or late term    Full or late term     1.0000000   1.0000000     1.000000
6 months    ki1000108-IRC              INDIA                          Preterm              Full or late term     2.1023234   1.4117792     3.130634
6 months    ki1000108-IRC              INDIA                          Early term           Full or late term     1.0884266   0.7048249     1.680804
6 months    ki1000109-EE               PAKISTAN                       Full or late term    Full or late term     1.0000000   1.0000000     1.000000
6 months    ki1000109-EE               PAKISTAN                       Preterm              Full or late term     1.7536491   1.0436752     2.946592
6 months    ki1000109-EE               PAKISTAN                       Early term           Full or late term     1.3650752   0.7900868     2.358513
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term     1.0000000   1.0000000     1.000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term     2.0045207   1.3335324     3.013128
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term     1.3200910   0.8609114     2.024181
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term     1.0000000   1.0000000     1.000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term     1.4778816   1.0400491     2.100030
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term     1.1768420   0.8397735     1.649203
6 months    ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term     1.0000000   1.0000000     1.000000
6 months    ki1101329-Keneba           GAMBIA                         Preterm              Full or late term     1.9708077   1.4206541     2.734010
6 months    ki1101329-Keneba           GAMBIA                         Early term           Full or late term     1.0603223   0.7692820     1.461471
6 months    ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term     1.0000000   1.0000000     1.000000
6 months    ki1119695-PROBIT           BELARUS                        Preterm              Full or late term     2.4932537   1.7678663     3.516281
6 months    ki1119695-PROBIT           BELARUS                        Early term           Full or late term     1.1874830   1.0096186     1.396682
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term     1.0000000   1.0000000     1.000000
6 months    ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term     1.5269322   1.2375796     1.883937
6 months    ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term     1.4640830   1.2094445     1.772334
6 months    ki1135781-COHORTS          INDIA                          Full or late term    Full or late term     1.0000000   1.0000000     1.000000
6 months    ki1135781-COHORTS          INDIA                          Preterm              Full or late term     1.3830689   1.0424297     1.835020
6 months    ki1135781-COHORTS          INDIA                          Early term           Full or late term     0.8928945   0.6648586     1.199143
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term     1.0000000   1.0000000     1.000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term     1.7619716   1.4630265     2.122001
6 months    ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term     1.2237828   1.0221897     1.465134
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term     1.0000000   1.0000000     1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term     1.6393906   1.5285968     1.758215
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term     1.2931079   1.2034883     1.389401
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     1.0000000   1.0000000     1.000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term     1.1146105   0.9283243     1.338278
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term     1.1676607   1.0092394     1.350950
24 months   ki1000108-IRC              INDIA                          Full or late term    Full or late term     1.0000000   1.0000000     1.000000
24 months   ki1000108-IRC              INDIA                          Preterm              Full or late term     1.4037734   1.0346682     1.904552
24 months   ki1000108-IRC              INDIA                          Early term           Full or late term     1.1739270   0.9007247     1.529995
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term     1.0000000   1.0000000     1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term     1.9097174   1.1221713     3.249968
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term     1.4592169   0.8473900     2.512791
24 months   ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term     1.0000000   1.0000000     1.000000
24 months   ki1101329-Keneba           GAMBIA                         Preterm              Full or late term     1.3304406   1.0823207     1.635442
24 months   ki1101329-Keneba           GAMBIA                         Early term           Full or late term     0.9615813   0.8017619     1.153258
24 months   ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term     1.0000000   1.0000000     1.000000
24 months   ki1119695-PROBIT           BELARUS                        Preterm              Full or late term     1.4028721   0.7479278     2.631337
24 months   ki1119695-PROBIT           BELARUS                        Early term           Full or late term     0.9884163   0.6880266     1.419955
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term     1.0000000   1.0000000     1.000000
24 months   ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term     1.0464387   0.9403980     1.164437
24 months   ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term     1.0840999   0.9956324     1.180428
24 months   ki1135781-COHORTS          INDIA                          Full or late term    Full or late term     1.0000000   1.0000000     1.000000
24 months   ki1135781-COHORTS          INDIA                          Preterm              Full or late term     1.1061849   0.9667456     1.265736
24 months   ki1135781-COHORTS          INDIA                          Early term           Full or late term     1.0287230   0.9034021     1.171428
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term     1.0000000   1.0000000     1.000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term     1.1380281   1.0509329     1.232341
24 months   ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term     1.0845470   1.0106322     1.163868
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term     1.0000000   1.0000000     1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term     1.1997681   1.1239816     1.280665
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term     1.0580807   0.9963648     1.123619


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1000108-IRC              INDIA                          Full or late term    NA                0.0057958   -0.0191902   0.0307818
Birth       ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.0245198    0.0129543   0.0360854
Birth       ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.0016721    0.0003118   0.0030325
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.0247883    0.0075611   0.0420156
Birth       ki1135781-COHORTS          INDIA                          Full or late term    NA                0.0358480    0.0186423   0.0530537
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.0298982    0.0202115   0.0395849
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.1007077    0.0933125   0.1081030
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.0294109   -0.0089247   0.0677464
6 months    ki1000108-IRC              INDIA                          Full or late term    NA                0.0336224    0.0008255   0.0664194
6 months    ki1000109-EE               PAKISTAN                       Full or late term    NA                0.1999409    0.0425404   0.3573414
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                0.0682354    0.0199902   0.1164806
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.0124029    0.0016224   0.0231833
6 months    ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.0248846    0.0070582   0.0427109
6 months    ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.0072372    0.0019384   0.0125360
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.0908135    0.0582494   0.1233776
6 months    ki1135781-COHORTS          INDIA                          Full or late term    NA                0.0109335   -0.0118743   0.0337413
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.0454914    0.0266576   0.0643252
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.0441792    0.0367322   0.0516261
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.0385344    0.0014309   0.0756380
24 months   ki1000108-IRC              INDIA                          Full or late term    NA                0.0327791   -0.0041078   0.0696661
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                0.0937272    0.0170439   0.1704105
24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.0108299   -0.0167808   0.0384407
24 months   ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.0005150   -0.0143274   0.0153575
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.0236866   -0.0028628   0.0502360
24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                0.0242171   -0.0044206   0.0528548
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.0399848    0.0163358   0.0636337
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.0284419    0.0160985   0.0407853


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1000108-IRC              INDIA                          Full or late term    NA                0.0486058   -0.1854004   0.2364176
Birth       ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.4530185    0.2215210   0.6156752
Birth       ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.7035044   -0.0450402   0.9158792
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.4369829    0.0863435   0.6530554
Birth       ki1135781-COHORTS          INDIA                          Full or late term    NA                0.3738024    0.1797999   0.5219174
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.4887142    0.3234410   0.6136137
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.3141726    0.2911144   0.3364808
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.1010453   -0.0400644   0.2230101
6 months    ki1000108-IRC              INDIA                          Full or late term    NA                0.1417990   -0.0067583   0.2684352
6 months    ki1000109-EE               PAKISTAN                       Full or late term    NA                0.3853783   -0.0061171   0.6245369
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                0.3252553    0.0582692   0.5165493
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.1296848    0.0107070   0.2343537
6 months    ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.1889029    0.0432057   0.3124138
6 months    ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.1154510    0.0296300   0.1936818
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.2165553    0.1350492   0.2903810
6 months    ki1135781-COHORTS          INDIA                          Full or late term    NA                0.0646161   -0.0801880   0.1900086
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.2152032    0.1216074   0.2988260
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.1710298    0.1420799   0.1990027
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.0541649    0.0000626   0.1053400
24 months   ki1000108-IRC              INDIA                          Full or late term    NA                0.0789128   -0.0143954   0.1636380
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                0.3649680   -0.0111155   0.6011676
24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.0326026   -0.0542182   0.1122733
24 months   ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.0060411   -0.1837098   0.1653746
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.0297993   -0.0043047   0.0627451
24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                0.0528813   -0.0117469   0.1133813
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.0647449    0.0255656   0.1023489
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.0568356    0.0317404   0.0812805
