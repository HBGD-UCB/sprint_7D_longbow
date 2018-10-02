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

**Outcome Variable:** wasted

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

agecat      studyid                    country                        gagebrth             wasted   n_cell       n
----------  -------------------------  -----------------------------  ------------------  -------  -------  ------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term         0       46      87
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term         1        8      87
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                   0        8      87
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                   1        2      87
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Early term                0       20      87
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Early term                1        3      87
Birth       ki1000108-IRC              INDIA                          Full or late term         0      164     328
Birth       ki1000108-IRC              INDIA                          Full or late term         1       49     328
Birth       ki1000108-IRC              INDIA                          Preterm                   0       19     328
Birth       ki1000108-IRC              INDIA                          Preterm                   1       13     328
Birth       ki1000108-IRC              INDIA                          Early term                0       58     328
Birth       ki1000108-IRC              INDIA                          Early term                1       25     328
Birth       ki1000109-EE               PAKISTAN                       Full or late term         0        0       2
Birth       ki1000109-EE               PAKISTAN                       Full or late term         1        0       2
Birth       ki1000109-EE               PAKISTAN                       Preterm                   0        2       2
Birth       ki1000109-EE               PAKISTAN                       Preterm                   1        0       2
Birth       ki1000109-EE               PAKISTAN                       Early term                0        0       2
Birth       ki1000109-EE               PAKISTAN                       Early term                1        0       2
Birth       ki1000304b-SAS-CompFeed    INDIA                          Full or late term         0        1     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          Full or late term         1        0     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          Preterm                   0      141     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          Preterm                   1       10     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          Early term                0       13     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          Early term                1        1     166
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term         0        5      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term         1        1      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                   0        2      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                   1        1      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Early term                0       13      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Early term                1        1      23
Birth       ki1101329-Keneba           GAMBIA                         Full or late term         0      664    1401
Birth       ki1101329-Keneba           GAMBIA                         Full or late term         1       16    1401
Birth       ki1101329-Keneba           GAMBIA                         Preterm                   0      200    1401
Birth       ki1101329-Keneba           GAMBIA                         Preterm                   1        7    1401
Birth       ki1101329-Keneba           GAMBIA                         Early term                0      509    1401
Birth       ki1101329-Keneba           GAMBIA                         Early term                1        5    1401
Birth       ki1119695-PROBIT           BELARUS                        Full or late term         0     5663   13824
Birth       ki1119695-PROBIT           BELARUS                        Full or late term         1     1408   13824
Birth       ki1119695-PROBIT           BELARUS                        Preterm                   0      365   13824
Birth       ki1119695-PROBIT           BELARUS                        Preterm                   1      103   13824
Birth       ki1119695-PROBIT           BELARUS                        Early term                0     4908   13824
Birth       ki1119695-PROBIT           BELARUS                        Early term                1     1377   13824
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term         0      240     572
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term         1       83     572
Birth       ki1135781-COHORTS          GUATEMALA                      Preterm                   0       55     572
Birth       ki1135781-COHORTS          GUATEMALA                      Preterm                   1       23     572
Birth       ki1135781-COHORTS          GUATEMALA                      Early term                0      131     572
Birth       ki1135781-COHORTS          GUATEMALA                      Early term                1       40     572
Birth       ki1135781-COHORTS          INDIA                          Full or late term         0      462    1229
Birth       ki1135781-COHORTS          INDIA                          Full or late term         1       91    1229
Birth       ki1135781-COHORTS          INDIA                          Preterm                   0      205    1229
Birth       ki1135781-COHORTS          INDIA                          Preterm                   1       54    1229
Birth       ki1135781-COHORTS          INDIA                          Early term                0      345    1229
Birth       ki1135781-COHORTS          INDIA                          Early term                1       72    1229
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term         0      996    2874
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term         1      139    2874
Birth       ki1135781-COHORTS          PHILIPPINES                    Preterm                   0      467    2874
Birth       ki1135781-COHORTS          PHILIPPINES                    Preterm                   1      112    2874
Birth       ki1135781-COHORTS          PHILIPPINES                    Early term                0      964    2874
Birth       ki1135781-COHORTS          PHILIPPINES                    Early term                1      196    2874
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term         0    15216   29656
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term         1     1608   29656
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm                   0     4226   29656
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm                   1      508   29656
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term                0     7364   29656
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term                1      734   29656
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term         0      183     346
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term         1       29     346
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                   0       45     346
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                   1        6     346
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term                0       76     346
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term                1        7     346
6 months    ki1000108-IRC              INDIA                          Full or late term         0      223     388
6 months    ki1000108-IRC              INDIA                          Full or late term         1       26     388
6 months    ki1000108-IRC              INDIA                          Preterm                   0       32     388
6 months    ki1000108-IRC              INDIA                          Preterm                   1       10     388
6 months    ki1000108-IRC              INDIA                          Early term                0       80     388
6 months    ki1000108-IRC              INDIA                          Early term                1       17     388
6 months    ki1000109-EE               PAKISTAN                       Full or late term         0       46     752
6 months    ki1000109-EE               PAKISTAN                       Full or late term         1        4     752
6 months    ki1000109-EE               PAKISTAN                       Preterm                   0      414     752
6 months    ki1000109-EE               PAKISTAN                       Preterm                   1       72     752
6 months    ki1000109-EE               PAKISTAN                       Early term                0      194     752
6 months    ki1000109-EE               PAKISTAN                       Early term                1       22     752
6 months    ki1000304b-SAS-CompFeed    INDIA                          Full or late term         0       20    1325
6 months    ki1000304b-SAS-CompFeed    INDIA                          Full or late term         1        5    1325
6 months    ki1000304b-SAS-CompFeed    INDIA                          Preterm                   0     1060    1325
6 months    ki1000304b-SAS-CompFeed    INDIA                          Preterm                   1      148    1325
6 months    ki1000304b-SAS-CompFeed    INDIA                          Early term                0       80    1325
6 months    ki1000304b-SAS-CompFeed    INDIA                          Early term                1       12    1325
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term         0      151     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term         1        4     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                   0      240     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                   1       11     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term                0      303     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term                1        6     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term         0     1116    1902
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term         1       51    1902
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                   0      273    1902
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                   1       17    1902
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                0      428    1902
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                1       17    1902
6 months    ki1101329-Keneba           GAMBIA                         Full or late term         0      615    1374
6 months    ki1101329-Keneba           GAMBIA                         Full or late term         1       43    1374
6 months    ki1101329-Keneba           GAMBIA                         Preterm                   0      196    1374
6 months    ki1101329-Keneba           GAMBIA                         Preterm                   1       11    1374
6 months    ki1101329-Keneba           GAMBIA                         Early term                0      487    1374
6 months    ki1101329-Keneba           GAMBIA                         Early term                1       22    1374
6 months    ki1119695-PROBIT           BELARUS                        Full or late term         0     7941   15757
6 months    ki1119695-PROBIT           BELARUS                        Full or late term         1       64   15757
6 months    ki1119695-PROBIT           BELARUS                        Preterm                   0      545   15757
6 months    ki1119695-PROBIT           BELARUS                        Preterm                   1        6   15757
6 months    ki1119695-PROBIT           BELARUS                        Early term                0     7141   15757
6 months    ki1119695-PROBIT           BELARUS                        Early term                1       60   15757
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term         0      377     714
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term         1       12     714
6 months    ki1135781-COHORTS          GUATEMALA                      Preterm                   0      110     714
6 months    ki1135781-COHORTS          GUATEMALA                      Preterm                   1        4     714
6 months    ki1135781-COHORTS          GUATEMALA                      Early term                0      202     714
6 months    ki1135781-COHORTS          GUATEMALA                      Early term                1        9     714
6 months    ki1135781-COHORTS          INDIA                          Full or late term         0      502    1312
6 months    ki1135781-COHORTS          INDIA                          Full or late term         1       66    1312
6 months    ki1135781-COHORTS          INDIA                          Preterm                   0      267    1312
6 months    ki1135781-COHORTS          INDIA                          Preterm                   1       32    1312
6 months    ki1135781-COHORTS          INDIA                          Early term                0      384    1312
6 months    ki1135781-COHORTS          INDIA                          Early term                1       61    1312
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term         0      977    2685
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term         1       51    2685
6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm                   0      538    2685
6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm                   1       34    2685
6 months    ki1135781-COHORTS          PHILIPPINES                    Early term                0     1011    2685
6 months    ki1135781-COHORTS          PHILIPPINES                    Early term                1       74    2685
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term         0    12088   24926
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term         1     1106   24926
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm                   0     4380   24926
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm                   1      420   24926
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term                0     6312   24926
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term                1      620   24926
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term         0      201     350
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term         1       13     350
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                   0       48     350
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                   1        4     350
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term                0       81     350
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term                1        3     350
24 months   ki1000108-IRC              INDIA                          Full or late term         0      233     390
24 months   ki1000108-IRC              INDIA                          Full or late term         1       17     390
24 months   ki1000108-IRC              INDIA                          Preterm                   0       35     390
24 months   ki1000108-IRC              INDIA                          Preterm                   1        7     390
24 months   ki1000108-IRC              INDIA                          Early term                0       92     390
24 months   ki1000108-IRC              INDIA                          Early term                1        6     390
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term         0       76     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term         1        3     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                   0      187     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                   1       21     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term                0      206     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term                1       21     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term         0        5       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term         1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                   0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                   1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                1        0       6
24 months   ki1101329-Keneba           GAMBIA                         Full or late term         0      496    1157
24 months   ki1101329-Keneba           GAMBIA                         Full or late term         1       62    1157
24 months   ki1101329-Keneba           GAMBIA                         Preterm                   0      145    1157
24 months   ki1101329-Keneba           GAMBIA                         Preterm                   1       23    1157
24 months   ki1101329-Keneba           GAMBIA                         Early term                0      393    1157
24 months   ki1101329-Keneba           GAMBIA                         Early term                1       38    1157
24 months   ki1119695-PROBIT           BELARUS                        Full or late term         0     1973    3971
24 months   ki1119695-PROBIT           BELARUS                        Full or late term         1       17    3971
24 months   ki1119695-PROBIT           BELARUS                        Preterm                   0      134    3971
24 months   ki1119695-PROBIT           BELARUS                        Preterm                   1        2    3971
24 months   ki1119695-PROBIT           BELARUS                        Early term                0     1820    3971
24 months   ki1119695-PROBIT           BELARUS                        Early term                1       25    3971
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term         0      365     667
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term         1       12     667
24 months   ki1135781-COHORTS          GUATEMALA                      Preterm                   0      101     667
24 months   ki1135781-COHORTS          GUATEMALA                      Preterm                   1        8     667
24 months   ki1135781-COHORTS          GUATEMALA                      Early term                0      176     667
24 months   ki1135781-COHORTS          GUATEMALA                      Early term                1        5     667
24 months   ki1135781-COHORTS          INDIA                          Full or late term         0      513    1298
24 months   ki1135781-COHORTS          INDIA                          Full or late term         1       46    1298
24 months   ki1135781-COHORTS          INDIA                          Preterm                   0      279    1298
24 months   ki1135781-COHORTS          INDIA                          Preterm                   1       24    1298
24 months   ki1135781-COHORTS          INDIA                          Early term                0      393    1298
24 months   ki1135781-COHORTS          INDIA                          Early term                1       43    1298
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term         0      882    2428
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term         1       57    2428
24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm                   0      483    2428
24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm                   1       34    2428
24 months   ki1135781-COHORTS          PHILIPPINES                    Early term                0      897    2428
24 months   ki1135781-COHORTS          PHILIPPINES                    Early term                1       75    2428
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term         0     5349   12937
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term         1     1426   12937
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                   0     1986   12937
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                   1      597   12937
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term                0     2809   12937
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term                1      770   12937


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
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/7db35874-da79-4b47-bbb7-5096fd4b4c88/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7db35874-da79-4b47-bbb7-5096fd4b4c88/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7db35874-da79-4b47-bbb7-5096fd4b4c88/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7db35874-da79-4b47-bbb7-5096fd4b4c88/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          Full or late term    NA                0.2301185   0.1736745   0.2865625
Birth       ki1000108-IRC              INDIA                          Preterm              NA                0.4047293   0.2550875   0.5543711
Birth       ki1000108-IRC              INDIA                          Early term           NA                0.2952229   0.2013550   0.3890909
Birth       ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.0235294   0.0121326   0.0349262
Birth       ki1101329-Keneba           GAMBIA                         Preterm              NA                0.0338164   0.0091837   0.0584491
Birth       ki1101329-Keneba           GAMBIA                         Early term           NA                0.0097276   0.0012397   0.0182156
Birth       ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.1981661   0.1329775   0.2633547
Birth       ki1119695-PROBIT           BELARUS                        Preterm              NA                0.2123588   0.1202026   0.3045150
Birth       ki1119695-PROBIT           BELARUS                        Early term           NA                0.2162465   0.1455854   0.2869077
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.2576638   0.2102867   0.3050410
Birth       ki1135781-COHORTS          GUATEMALA                      Preterm              NA                0.2960049   0.1963036   0.3957063
Birth       ki1135781-COHORTS          GUATEMALA                      Early term           NA                0.2329077   0.1698817   0.2959337
Birth       ki1135781-COHORTS          INDIA                          Full or late term    NA                0.1729000   0.1427318   0.2030683
Birth       ki1135781-COHORTS          INDIA                          Preterm              NA                0.2368158   0.1898934   0.2837381
Birth       ki1135781-COHORTS          INDIA                          Early term           NA                0.1857072   0.1505343   0.2208801
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.1243536   0.1053711   0.1433362
Birth       ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.1926511   0.1606521   0.2246500
Birth       ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.1669677   0.1454336   0.1885018
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.0942217   0.0874705   0.1009729
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.1043734   0.0921377   0.1166092
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.0907096   0.0813574   0.1000618
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.1367925   0.0904694   0.1831155
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                0.1176471   0.0290941   0.2062000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                0.0843373   0.0244665   0.1442082
6 months    ki1000108-IRC              INDIA                          Full or late term    NA                0.1035438   0.0658334   0.1412542
6 months    ki1000108-IRC              INDIA                          Preterm              NA                0.2334214   0.1132365   0.3536064
6 months    ki1000108-IRC              INDIA                          Early term           NA                0.1678999   0.0951407   0.2406590
6 months    ki1000304b-SAS-CompFeed    INDIA                          Full or late term    NA                0.2000000   0.0143199   0.3856801
6 months    ki1000304b-SAS-CompFeed    INDIA                          Preterm              NA                0.1225166   0.0952376   0.1497956
6 months    ki1000304b-SAS-CompFeed    INDIA                          Early term           NA                0.1304348   0.0742562   0.1866133
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.0438218   0.0320895   0.0555540
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.0611470   0.0342374   0.0880567
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.0384855   0.0208574   0.0561136
6 months    ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.0648022   0.0459891   0.0836153
6 months    ki1101329-Keneba           GAMBIA                         Preterm              NA                0.0529080   0.0226714   0.0831445
6 months    ki1101329-Keneba           GAMBIA                         Early term           NA                0.0437908   0.0261398   0.0614417
6 months    ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.0079950   0.0052987   0.0106913
6 months    ki1119695-PROBIT           BELARUS                        Preterm              NA                0.0108893   0.0041768   0.0176017
6 months    ki1119695-PROBIT           BELARUS                        Early term           NA                0.0083322   0.0061258   0.0105385
6 months    ki1135781-COHORTS          INDIA                          Full or late term    NA                0.1112721   0.0850929   0.1374512
6 months    ki1135781-COHORTS          INDIA                          Preterm              NA                0.1007112   0.0659966   0.1354258
6 months    ki1135781-COHORTS          INDIA                          Early term           NA                0.1314057   0.0999284   0.1628830
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.0493585   0.0361376   0.0625794
6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.0594712   0.0402847   0.0786577
6 months    ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.0686868   0.0537576   0.0836159
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.0832676   0.0761425   0.0903927
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.0838701   0.0725851   0.0951550
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.0883885   0.0780147   0.0987622
24 months   ki1000108-IRC              INDIA                          Full or late term    NA                0.0680000   0.0367537   0.0992463
24 months   ki1000108-IRC              INDIA                          Preterm              NA                0.1666667   0.0538133   0.2795201
24 months   ki1000108-IRC              INDIA                          Early term           NA                0.0612245   0.0136980   0.1087510
24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.1129717   0.0872199   0.1387234
24 months   ki1101329-Keneba           GAMBIA                         Preterm              NA                0.1555744   0.1060457   0.2051031
24 months   ki1101329-Keneba           GAMBIA                         Early term           NA                0.0920518   0.0658510   0.1182526
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.0318302   0.0140966   0.0495639
24 months   ki1135781-COHORTS          GUATEMALA                      Preterm              NA                0.0733945   0.0244008   0.1223881
24 months   ki1135781-COHORTS          GUATEMALA                      Early term           NA                0.0276243   0.0037298   0.0515188
24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                0.0824008   0.0597160   0.1050857
24 months   ki1135781-COHORTS          INDIA                          Preterm              NA                0.0849241   0.0546408   0.1152073
24 months   ki1135781-COHORTS          INDIA                          Early term           NA                0.1013796   0.0736575   0.1291016
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.0605395   0.0452705   0.0758085
24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.0656216   0.0442990   0.0869442
24 months   ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.0774468   0.0606773   0.0942162
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.2101026   0.1939592   0.2262459
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.2313855   0.2050587   0.2577124
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.2146656   0.1947032   0.2346280


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          NA                   NA                0.2652439   0.2173954   0.3130924
Birth       ki1101329-Keneba           GAMBIA                         NA                   NA                0.0199857   0.0126548   0.0273167
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                0.2089120   0.1435514   0.2742726
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2552448   0.2194833   0.2910062
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                0.1765663   0.1552399   0.1978927
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1555324   0.1422803   0.1687844
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0961020   0.0908277   0.1013762
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1213873   0.0869266   0.1558480
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.1365979   0.1023826   0.1708133
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1245283   0.0993306   0.1497260
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0446898   0.0354016   0.0539780
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0553130   0.0432217   0.0674042
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0082503   0.0066012   0.0098994
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1211890   0.1035235   0.1388545
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0592179   0.0502884   0.0681474
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0860948   0.0805860   0.0916037
24 months   ki1000108-IRC              INDIA                          NA                   NA                0.0769231   0.0504429   0.1034032
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1063094   0.0885410   0.1240778
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0374813   0.0230560   0.0519065
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0870570   0.0717143   0.1023997
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0683690   0.0583283   0.0784097
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2158924   0.2043232   0.2274616


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level        estimate    ci_lower   ci_upper
----------  -------------------------  -----------------------------  -------------------  ------------------  ----------  ----------  ---------
Birth       ki1000108-IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
Birth       ki1000108-IRC              INDIA                          Preterm              Full or late term    1.7587863   1.1285791   2.740906
Birth       ki1000108-IRC              INDIA                          Early term           Full or late term    1.2829169   0.8590657   1.915890
Birth       ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.000000
Birth       ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    1.4371981   0.5992553   3.446842
Birth       ki1101329-Keneba           GAMBIA                         Early term           Full or late term    0.4134241   0.1523972   1.121539
Birth       ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term    1.0000000   1.0000000   1.000000
Birth       ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    1.0716203   0.7330488   1.566567
Birth       ki1119695-PROBIT           BELARUS                        Early term           Full or late term    1.0912390   0.8904494   1.337305
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term    1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term    1.1488028   0.7831708   1.685134
Birth       ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term    0.9039211   0.6520511   1.253082
Birth       ki1135781-COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          INDIA                          Preterm              Full or late term    1.3696688   1.0528858   1.781763
Birth       ki1135781-COHORTS          INDIA                          Early term           Full or late term    1.0740729   0.8309722   1.388293
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    1.5492192   1.2369503   1.940321
Birth       ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    1.3426844   1.0999768   1.638945
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    1.1077434   0.9670658   1.268885
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    0.9627257   0.8508211   1.089349
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    0.8600406   0.3767610   1.963234
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term    0.6165351   0.2807839   1.353765
6 months    ki1000108-IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6 months    ki1000108-IRC              INDIA                          Preterm              Full or late term    2.2543263   1.1998664   4.235461
6 months    ki1000108-IRC              INDIA                          Early term           Full or late term    1.6215352   0.9207073   2.855822
6 months    ki1000304b-SAS-CompFeed    INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          Preterm              Full or late term    0.6125828   0.2337629   1.605292
6 months    ki1000304b-SAS-CompFeed    INDIA                          Early term           Full or late term    0.6521739   0.3031919   1.402843
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    1.3953579   0.8336856   2.335441
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    0.8782280   0.5166504   1.492856
6 months    ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6 months    ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    0.8164534   0.4307125   1.547659
6 months    ki1101329-Keneba           GAMBIA                         Early term           Full or late term    0.6757602   0.4115820   1.109504
6 months    ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6 months    ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    1.3620122   0.7433311   2.495627
6 months    ki1119695-PROBIT           BELARUS                        Early term           Full or late term    1.0421730   0.6561487   1.655302
6 months    ki1135781-COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          INDIA                          Preterm              Full or late term    0.9050896   0.5965568   1.373192
6 months    ki1135781-COHORTS          INDIA                          Early term           Full or late term    1.1809406   0.8450145   1.650410
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    1.2048817   0.7925560   1.831719
6 months    ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    1.3915889   0.9859903   1.964035
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    1.0072352   0.8643630   1.173723
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    1.0614991   0.9191214   1.225932
24 months   ki1000108-IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
24 months   ki1000108-IRC              INDIA                          Preterm              Full or late term    2.4509804   1.0813122   5.555569
24 months   ki1000108-IRC              INDIA                          Early term           Full or late term    0.9003601   0.3653015   2.219121
24 months   ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.000000
24 months   ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    1.3771100   0.9328261   2.032996
24 months   ki1101329-Keneba           GAMBIA                         Early term           Full or late term    0.8148221   0.5670860   1.170784
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term    1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term    2.3058104   0.9665200   5.500933
24 months   ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term    0.8678637   0.3101816   2.428214
24 months   ki1135781-COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          INDIA                          Preterm              Full or late term    1.0306214   0.6570507   1.616588
24 months   ki1135781-COHORTS          INDIA                          Early term           Full or late term    1.2303219   0.8356306   1.811437
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    1.0839470   0.7185490   1.635158
24 months   ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    1.2792772   0.9175876   1.783536
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    1.1012980   0.9600199   1.263367
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    1.0217182   0.9049659   1.153533


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC              INDIA                          Full or late term    NA                 0.0351254   -0.0015365   0.0717873
Birth       ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0035437   -0.0111295   0.0040421
Birth       ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0107460   -0.0119489   0.0334409
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                -0.0024190   -0.0335648   0.0287267
Birth       ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0036663   -0.0191735   0.0265061
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0311787    0.0154019   0.0469555
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0018803   -0.0024787   0.0062393
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0154052   -0.0419343   0.0111240
6 months    ki1000108-IRC              INDIA                          Full or late term    NA                 0.0330542    0.0055891   0.0605193
6 months    ki1000304b-SAS-CompFeed    INDIA                          Full or late term    NA                -0.0754717   -0.2582783   0.1073349
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0008680   -0.0065495   0.0082856
6 months    ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0094893   -0.0221004   0.0031219
6 months    ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0002553   -0.0015024   0.0020130
6 months    ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0099170   -0.0099999   0.0298339
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0098594   -0.0010772   0.0207960
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0028272   -0.0020487   0.0077032
24 months   ki1000108-IRC              INDIA                          Full or late term    NA                 0.0089231   -0.0117124   0.0295586
24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0066622   -0.0247154   0.0113909
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.0056510   -0.0072744   0.0185765
24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0046562   -0.0127497   0.0220620
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0078296   -0.0045545   0.0202136
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0057898   -0.0051934   0.0167731


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC              INDIA                          Full or late term    NA                 0.1324268   -0.0162549   0.2593558
Birth       ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.1773109   -0.6178377   0.1432633
Birth       ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0514378   -0.0617141   0.1525307
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                -0.0094774   -0.1391928   0.1054679
Birth       ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0207644   -0.1173565   0.1418116
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.2004645    0.0936623   0.2946812
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0195657   -0.0268407   0.0638749
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.1269093   -0.3655987   0.0700603
6 months    ki1000108-IRC              INDIA                          Full or late term    NA                 0.2419815    0.0210872   0.4130304
6 months    ki1000304b-SAS-CompFeed    INDIA                          Full or late term    NA                -0.6060606   -3.0047982   0.3559150
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0194236   -0.1613618   0.1720667
6 months    ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.1715558   -0.4197027   0.0332179
6 months    ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0309441   -0.2093807   0.2235122
6 months    ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0818306   -0.0981848   0.2323378
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.1664931   -0.0384358   0.3309806
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0328387   -0.0253893   0.0877602
24 months   ki1000108-IRC              INDIA                          Full or late term    NA                 0.1160000   -0.1939710   0.3454983
24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0626683   -0.2467730   0.0942506
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.1507692   -0.2677534   0.4311253
24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0534841   -0.1688941   0.2335557
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.1145190   -0.0856850   0.2778048
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0268181   -0.0254667   0.0764372
