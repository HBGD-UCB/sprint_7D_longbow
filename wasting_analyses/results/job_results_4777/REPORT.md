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
![](/tmp/13a9a606-5535-4153-88a1-2f37bd5656fb/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/13a9a606-5535-4153-88a1-2f37bd5656fb/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/13a9a606-5535-4153-88a1-2f37bd5656fb/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/13a9a606-5535-4153-88a1-2f37bd5656fb/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          Full or late term    NA                0.2300153   0.1736607   0.2863699
Birth       ki1000108-IRC              INDIA                          Preterm              NA                0.4076452   0.2552650   0.5600254
Birth       ki1000108-IRC              INDIA                          Early term           NA                0.2983663   0.2042109   0.3925218
Birth       ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.0235294   0.0121326   0.0349262
Birth       ki1101329-Keneba           GAMBIA                         Preterm              NA                0.0338164   0.0091837   0.0584491
Birth       ki1101329-Keneba           GAMBIA                         Early term           NA                0.0097276   0.0012397   0.0182156
Birth       ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.1981661   0.1329775   0.2633547
Birth       ki1119695-PROBIT           BELARUS                        Preterm              NA                0.2123588   0.1202026   0.3045150
Birth       ki1119695-PROBIT           BELARUS                        Early term           NA                0.2162465   0.1455854   0.2869077
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.2580811   0.2106008   0.3055614
Birth       ki1135781-COHORTS          GUATEMALA                      Preterm              NA                0.3030170   0.2032629   0.4027711
Birth       ki1135781-COHORTS          GUATEMALA                      Early term           NA                0.2357157   0.1726911   0.2987404
Birth       ki1135781-COHORTS          INDIA                          Full or late term    NA                0.1729311   0.1429461   0.2029161
Birth       ki1135781-COHORTS          INDIA                          Preterm              NA                0.2373390   0.1909007   0.2837774
Birth       ki1135781-COHORTS          INDIA                          Early term           NA                0.1857674   0.1508117   0.2207232
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.1243469   0.1053642   0.1433296
Birth       ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.1926543   0.1606551   0.2246534
Birth       ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.1669744   0.1454403   0.1885085
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.0942216   0.0874704   0.1009727
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.1043733   0.0921376   0.1166090
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.0907100   0.0813578   0.1000622
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.1367925   0.0904694   0.1831155
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                0.1176471   0.0290941   0.2062000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                0.0843373   0.0244665   0.1442082
6 months    ki1000108-IRC              INDIA                          Full or late term    NA                0.1034017   0.0656887   0.1411147
6 months    ki1000108-IRC              INDIA                          Preterm              NA                0.2336043   0.1133819   0.3538268
6 months    ki1000108-IRC              INDIA                          Early term           NA                0.1677754   0.0949969   0.2405538
6 months    ki1000304b-SAS-CompFeed    INDIA                          Full or late term    NA                0.2000000   0.0143199   0.3856801
6 months    ki1000304b-SAS-CompFeed    INDIA                          Preterm              NA                0.1225166   0.0952376   0.1497956
6 months    ki1000304b-SAS-CompFeed    INDIA                          Early term           NA                0.1304348   0.0742562   0.1866133
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.0438733   0.0321327   0.0556140
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.0615641   0.0345884   0.0885397
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.0382697   0.0207562   0.0557831
6 months    ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.0647906   0.0459789   0.0836023
6 months    ki1101329-Keneba           GAMBIA                         Preterm              NA                0.0528997   0.0226683   0.0831310
6 months    ki1101329-Keneba           GAMBIA                         Early term           NA                0.0438025   0.0261517   0.0614534
6 months    ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.0079950   0.0052987   0.0106913
6 months    ki1119695-PROBIT           BELARUS                        Preterm              NA                0.0108893   0.0041768   0.0176017
6 months    ki1119695-PROBIT           BELARUS                        Early term           NA                0.0083322   0.0061258   0.0105385
6 months    ki1135781-COHORTS          INDIA                          Full or late term    NA                0.1116182   0.0853676   0.1378688
6 months    ki1135781-COHORTS          INDIA                          Preterm              NA                0.1001909   0.0653006   0.1350811
6 months    ki1135781-COHORTS          INDIA                          Early term           NA                0.1313392   0.0997135   0.1629649
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.0493625   0.0361232   0.0626019
6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.0594603   0.0402443   0.0786764
6 months    ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.0687256   0.0537880   0.0836633
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.0835034   0.0763914   0.0906153
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.0838179   0.0725554   0.0950803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.0885643   0.0782075   0.0989212
24 months   ki1000108-IRC              INDIA                          Full or late term    NA                0.0680000   0.0367537   0.0992463
24 months   ki1000108-IRC              INDIA                          Preterm              NA                0.1666667   0.0538133   0.2795201
24 months   ki1000108-IRC              INDIA                          Early term           NA                0.0612245   0.0136980   0.1087510
24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.1129552   0.0871777   0.1387327
24 months   ki1101329-Keneba           GAMBIA                         Preterm              NA                0.1552234   0.1056147   0.2048322
24 months   ki1101329-Keneba           GAMBIA                         Early term           NA                0.0920882   0.0658430   0.1183334
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.0318302   0.0140966   0.0495639
24 months   ki1135781-COHORTS          GUATEMALA                      Preterm              NA                0.0733945   0.0244008   0.1223881
24 months   ki1135781-COHORTS          GUATEMALA                      Early term           NA                0.0276243   0.0037298   0.0515188
24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                0.0823387   0.0596075   0.1050700
24 months   ki1135781-COHORTS          INDIA                          Preterm              NA                0.0848775   0.0545478   0.1152071
24 months   ki1135781-COHORTS          INDIA                          Early term           NA                0.1013865   0.0736000   0.1291730
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.0594388   0.0441677   0.0747100
24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.0627920   0.0414987   0.0840853
24 months   ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.0762616   0.0594970   0.0930261
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.2101006   0.1939497   0.2262515
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.2311181   0.2048033   0.2574330
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.2144932   0.1945127   0.2344737


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
Birth       ki1000108-IRC              INDIA                          Preterm              Full or late term    1.7722525   1.1335201   2.770907
Birth       ki1000108-IRC              INDIA                          Early term           Full or late term    1.2971587   0.8702783   1.933428
Birth       ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.000000
Birth       ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    1.4371981   0.5992553   3.446842
Birth       ki1101329-Keneba           GAMBIA                         Early term           Full or late term    0.4134241   0.1523972   1.121539
Birth       ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term    1.0000000   1.0000000   1.000000
Birth       ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    1.0716203   0.7330488   1.566567
Birth       ki1119695-PROBIT           BELARUS                        Early term           Full or late term    1.0912390   0.8904494   1.337305
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term    1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term    1.1741153   0.8055331   1.711347
Birth       ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term    0.9133397   0.6604241   1.263112
Birth       ki1135781-COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          INDIA                          Preterm              Full or late term    1.3724483   1.0579817   1.780385
Birth       ki1135781-COHORTS          INDIA                          Early term           Full or late term    1.0742280   0.8325957   1.385986
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    1.5493292   1.2370303   1.940470
Birth       ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    1.3428112   1.1000756   1.639107
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    1.1077430   0.9670656   1.268885
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    0.9627310   0.8508260   1.089354
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    0.8600406   0.3767610   1.963234
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term    0.6165351   0.2807839   1.353765
6 months    ki1000108-IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6 months    ki1000108-IRC              INDIA                          Preterm              Full or late term    2.2591925   1.2023445   4.244999
6 months    ki1000108-IRC              INDIA                          Early term           Full or late term    1.6225593   0.9206531   2.859599
6 months    ki1000304b-SAS-CompFeed    INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          Preterm              Full or late term    0.6125828   0.2337629   1.605292
6 months    ki1000304b-SAS-CompFeed    INDIA                          Early term           Full or late term    0.6521739   0.3031919   1.402843
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    1.4032234   0.8398015   2.344644
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    0.8722771   0.5133650   1.482118
6 months    ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6 months    ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    0.8164710   0.4307275   1.547672
6 months    ki1101329-Keneba           GAMBIA                         Early term           Full or late term    0.6760631   0.4118003   1.109910
6 months    ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6 months    ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    1.3620122   0.7433311   2.495627
6 months    ki1119695-PROBIT           BELARUS                        Early term           Full or late term    1.0421730   0.6561487   1.655302
6 months    ki1135781-COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          INDIA                          Preterm              Full or late term    0.8976214   0.5899255   1.365807
6 months    ki1135781-COHORTS          INDIA                          Early term           Full or late term    1.1766830   0.8411508   1.646058
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    1.2045645   0.7918391   1.832412
6 months    ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    1.3922639   0.9862065   1.965510
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    1.0037664   0.8618242   1.169086
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    1.0606077   0.9189047   1.224163
24 months   ki1000108-IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
24 months   ki1000108-IRC              INDIA                          Preterm              Full or late term    2.4509804   1.0813122   5.555569
24 months   ki1000108-IRC              INDIA                          Early term           Full or late term    0.9003601   0.3653015   2.219121
24 months   ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.000000
24 months   ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    1.3742036   0.9297840   2.031047
24 months   ki1101329-Keneba           GAMBIA                         Early term           Full or late term    0.8152633   0.5671370   1.171946
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term    1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term    2.3058104   0.9665200   5.500933
24 months   ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term    0.8678637   0.3101816   2.428214
24 months   ki1135781-COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          INDIA                          Preterm              Full or late term    1.0308327   0.6564886   1.618636
24 months   ki1135781-COHORTS          INDIA                          Early term           Full or late term    1.2313340   0.8355125   1.814675
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    1.0564138   0.6905368   1.616149
24 months   ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    1.2830262   0.9150157   1.799047
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    1.1000355   0.9588866   1.261962
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    1.0209071   0.9041417   1.152752


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC              INDIA                          Full or late term    NA                 0.0352286   -0.0012652   0.0717224
Birth       ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0035437   -0.0111295   0.0040421
Birth       ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0107460   -0.0119489   0.0334409
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                -0.0028364   -0.0340500   0.0283773
Birth       ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0036352   -0.0190601   0.0263305
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0311855    0.0154085   0.0469625
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0018804   -0.0024786   0.0062394
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0154052   -0.0419343   0.0111240
6 months    ki1000108-IRC              INDIA                          Full or late term    NA                 0.0331962    0.0057245   0.0606680
6 months    ki1000304b-SAS-CompFeed    INDIA                          Full or late term    NA                -0.0754717   -0.2582783   0.1073349
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0008165   -0.0066094   0.0082423
6 months    ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0094777   -0.0220878   0.0031324
6 months    ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0002553   -0.0015024   0.0020130
6 months    ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0095709   -0.0104085   0.0295503
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0098554   -0.0010936   0.0208043
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0025915   -0.0022717   0.0074547
24 months   ki1000108-IRC              INDIA                          Full or late term    NA                 0.0089231   -0.0117124   0.0295586
24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0066458   -0.0247173   0.0114258
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.0056510   -0.0072744   0.0185765
24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0047183   -0.0127205   0.0221570
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0089302   -0.0034571   0.0213175
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0057918   -0.0051878   0.0167714


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC              INDIA                          Full or late term    NA                 0.1328158   -0.0151456   0.2592114
Birth       ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.1773109   -0.6178377   0.1432633
Birth       ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0514378   -0.0617141   0.1525307
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                -0.0111123   -0.1411142   0.1040791
Birth       ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0205883   -0.1165847   0.1409095
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.2005079    0.0937037   0.2947255
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0195668   -0.0268397   0.0638760
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.1269093   -0.3655987   0.0700603
6 months    ki1000108-IRC              INDIA                          Full or late term    NA                 0.2430216    0.0220167   0.4140837
6 months    ki1000304b-SAS-CompFeed    INDIA                          Full or late term    NA                -0.6060606   -3.0047982   0.3559150
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0182701   -0.1627192   0.1710865
6 months    ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.1713461   -0.4194786   0.0334115
6 months    ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0309441   -0.2093807   0.2235122
6 months    ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0789746   -0.1016115   0.2299575
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.1664255   -0.0387984   0.3311056
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0301003   -0.0279677   0.0848881
24 months   ki1000108-IRC              INDIA                          Full or late term    NA                 0.1160000   -0.1939710   0.3454983
24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0625134   -0.2468099   0.0945415
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.1507692   -0.2677534   0.4311253
24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0541974   -0.1686882   0.2345755
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.1306178   -0.0700782   0.2936727
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0268273   -0.0254416   0.0764319
