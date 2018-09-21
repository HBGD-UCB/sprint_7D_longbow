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

unadjusted

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
![](/tmp/c12b0605-023a-46a1-918f-d5b17d1d0062/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c12b0605-023a-46a1-918f-d5b17d1d0062/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c12b0605-023a-46a1-918f-d5b17d1d0062/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c12b0605-023a-46a1-918f-d5b17d1d0062/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          Full or late term    NA                0.2300469   0.1734410   0.2866528
Birth       ki1000108-IRC              INDIA                          Preterm              NA                0.4062500   0.2358245   0.5766755
Birth       ki1000108-IRC              INDIA                          Early term           NA                0.3012048   0.2023545   0.4000551
Birth       ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.0235294   0.0121326   0.0349262
Birth       ki1101329-Keneba           GAMBIA                         Preterm              NA                0.0338164   0.0091837   0.0584491
Birth       ki1101329-Keneba           GAMBIA                         Early term           NA                0.0097276   0.0012397   0.0182156
Birth       ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.1991232   0.1338497   0.2643967
Birth       ki1119695-PROBIT           BELARUS                        Preterm              NA                0.2200855   0.1129739   0.3271971
Birth       ki1119695-PROBIT           BELARUS                        Early term           NA                0.2190931   0.1467251   0.2914610
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.2569659   0.2092714   0.3046605
Birth       ki1135781-COHORTS          GUATEMALA                      Preterm              NA                0.2948718   0.1935900   0.3961536
Birth       ki1135781-COHORTS          GUATEMALA                      Early term           NA                0.2339181   0.1704144   0.2974219
Birth       ki1135781-COHORTS          INDIA                          Full or late term    NA                0.1645570   0.1336413   0.1954726
Birth       ki1135781-COHORTS          INDIA                          Preterm              NA                0.2084942   0.1590006   0.2579878
Birth       ki1135781-COHORTS          INDIA                          Early term           NA                0.1726619   0.1363711   0.2089527
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.1224670   0.1033919   0.1415421
Birth       ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.1934370   0.1612579   0.2256160
Birth       ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.1689655   0.1473978   0.1905332
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.0955777   0.0887261   0.1024294
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.1073088   0.0942620   0.1203557
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.0906397   0.0811746   0.1001047
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.1367925   0.0904694   0.1831155
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                0.1176471   0.0290941   0.2062000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                0.0843373   0.0244665   0.1442082
6 months    ki1000108-IRC              INDIA                          Full or late term    NA                0.1044177   0.0663857   0.1424496
6 months    ki1000108-IRC              INDIA                          Preterm              NA                0.2380952   0.1091191   0.3670714
6 months    ki1000108-IRC              INDIA                          Early term           NA                0.1752577   0.0995012   0.2510143
6 months    ki1000304b-SAS-CompFeed    INDIA                          Full or late term    NA                0.2000000   0.0143199   0.3856801
6 months    ki1000304b-SAS-CompFeed    INDIA                          Preterm              NA                0.1225166   0.0952376   0.1497956
6 months    ki1000304b-SAS-CompFeed    INDIA                          Early term           NA                0.1304348   0.0742562   0.1866133
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.0437018   0.0319698   0.0554338
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.0586207   0.0315767   0.0856647
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.0382022   0.0203880   0.0560165
6 months    ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.0653495   0.0464592   0.0842399
6 months    ki1101329-Keneba           GAMBIA                         Preterm              NA                0.0531401   0.0225715   0.0837087
6 months    ki1101329-Keneba           GAMBIA                         Early term           NA                0.0432220   0.0255492   0.0608948
6 months    ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.0079950   0.0052987   0.0106913
6 months    ki1119695-PROBIT           BELARUS                        Preterm              NA                0.0108893   0.0041768   0.0176017
6 months    ki1119695-PROBIT           BELARUS                        Early term           NA                0.0083322   0.0061258   0.0105385
6 months    ki1135781-COHORTS          INDIA                          Full or late term    NA                0.1161972   0.0898330   0.1425614
6 months    ki1135781-COHORTS          INDIA                          Preterm              NA                0.1070234   0.0719694   0.1420774
6 months    ki1135781-COHORTS          INDIA                          Early term           NA                0.1370787   0.1051115   0.1690458
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.0496109   0.0363348   0.0628870
6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.0594406   0.0400600   0.0788211
6 months    ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.0682028   0.0531998   0.0832057
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.0838260   0.0766272   0.0910248
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.0875000   0.0755898   0.0994102
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.0894403   0.0787461   0.1001345
24 months   ki1000108-IRC              INDIA                          Full or late term    NA                0.0680000   0.0367537   0.0992463
24 months   ki1000108-IRC              INDIA                          Preterm              NA                0.1666667   0.0538133   0.2795201
24 months   ki1000108-IRC              INDIA                          Early term           NA                0.0612245   0.0136980   0.1087510
24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.1111111   0.0850243   0.1371979
24 months   ki1101329-Keneba           GAMBIA                         Preterm              NA                0.1369048   0.0849028   0.1889067
24 months   ki1101329-Keneba           GAMBIA                         Early term           NA                0.0881671   0.0613872   0.1149469
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.0318302   0.0140966   0.0495639
24 months   ki1135781-COHORTS          GUATEMALA                      Preterm              NA                0.0733945   0.0244008   0.1223881
24 months   ki1135781-COHORTS          GUATEMALA                      Early term           NA                0.0276243   0.0037298   0.0515188
24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                0.0822898   0.0595003   0.1050793
24 months   ki1135781-COHORTS          INDIA                          Preterm              NA                0.0792079   0.0487879   0.1096279
24 months   ki1135781-COHORTS          INDIA                          Early term           NA                0.0986239   0.0706265   0.1266212
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.0607029   0.0454268   0.0759789
24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.0657640   0.0443935   0.0871345
24 months   ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.0771605   0.0603815   0.0939395
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.2104797   0.1941629   0.2267965
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.2311266   0.2039993   0.2582539
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.2151439   0.1947971   0.2354907


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
Birth       ki1000108-IRC              INDIA                          Preterm              Full or late term    1.7659439   1.0858219   2.872071
Birth       ki1000108-IRC              INDIA                          Early term           Full or late term    1.3093189   0.8687701   1.973268
Birth       ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.000000
Birth       ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    1.4371981   0.5992553   3.446842
Birth       ki1101329-Keneba           GAMBIA                         Early term           Full or late term    0.4134241   0.1523972   1.121539
Birth       ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term    1.0000000   1.0000000   1.000000
Birth       ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    1.1052730   0.7317692   1.669417
Birth       ki1119695-PROBIT           BELARUS                        Early term           Full or late term    1.1002892   0.8903876   1.359673
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term    1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term    1.1475131   0.7766066   1.695564
Birth       ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term    0.9103079   0.6551869   1.264770
Birth       ki1135781-COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          INDIA                          Preterm              Full or late term    1.2670033   0.9360561   1.714958
Birth       ki1135781-COHORTS          INDIA                          Early term           Full or late term    1.0492529   0.7914949   1.390952
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    1.5795032   1.2576187   1.983773
Birth       ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    1.3796825   1.1280315   1.687474
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    1.1227387   0.9768170   1.290459
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    0.9483344   0.8371759   1.074252
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    0.8600406   0.3767610   1.963234
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term    0.6165351   0.2807839   1.353765
6 months    ki1000108-IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6 months    ki1000108-IRC              INDIA                          Preterm              Full or late term    2.2802198   1.1870927   4.379946
6 months    ki1000108-IRC              INDIA                          Early term           Full or late term    1.6784298   0.9537122   2.953854
6 months    ki1000304b-SAS-CompFeed    INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          Preterm              Full or late term    0.6125828   0.2337629   1.605292
6 months    ki1000304b-SAS-CompFeed    INDIA                          Early term           Full or late term    0.6521739   0.3031919   1.402843
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    1.3413793   0.7865774   2.287504
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    0.8741573   0.5103980   1.497167
6 months    ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6 months    ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    0.8131671   0.4271548   1.548012
6 months    ki1101329-Keneba           GAMBIA                         Early term           Full or late term    0.6613972   0.4008590   1.091272
6 months    ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6 months    ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    1.3620122   0.7433311   2.495627
6 months    ki1119695-PROBIT           BELARUS                        Early term           Full or late term    1.0421730   0.6561487   1.655302
6 months    ki1135781-COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          INDIA                          Preterm              Full or late term    0.9210500   0.6183581   1.371912
6 months    ki1135781-COHORTS          INDIA                          Early term           Full or late term    1.1797072   0.8520579   1.633350
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    1.1981352   0.7858104   1.826812
6 months    ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    1.3747538   0.9722542   1.943882
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    1.0438291   0.8938462   1.218978
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    1.0669756   0.9215273   1.235381
24 months   ki1000108-IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
24 months   ki1000108-IRC              INDIA                          Preterm              Full or late term    2.4509804   1.0813122   5.555569
24 months   ki1000108-IRC              INDIA                          Early term           Full or late term    0.9003601   0.3653015   2.219121
24 months   ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.000000
24 months   ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    1.2321429   0.7883692   1.925717
24 months   ki1101329-Keneba           GAMBIA                         Early term           Full or late term    0.7935035   0.5405335   1.164864
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term    1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term    2.3058104   0.9665200   5.500933
24 months   ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term    0.8678637   0.3101816   2.428214
24 months   ki1135781-COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          INDIA                          Preterm              Full or late term    0.9625484   0.5994987   1.545457
24 months   ki1135781-COHORTS          INDIA                          Early term           Full or late term    1.1984942   0.8061178   1.781859
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    1.0833758   0.7182593   1.634094
24 months   ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    1.2711176   0.9114731   1.772669
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    1.0980945   0.9541133   1.263803
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    1.0221598   0.9039127   1.155876


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC              INDIA                          Full or late term    NA                 0.0351970   -0.0013013   0.0716952
Birth       ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0035437   -0.0111295   0.0040421
Birth       ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0097889   -0.0133155   0.0328932
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                -0.0017212   -0.0330994   0.0296570
Birth       ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0120094   -0.0114527   0.0354715
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0330654    0.0171882   0.0489426
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0005242   -0.0038789   0.0049273
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0154052   -0.0419343   0.0111240
6 months    ki1000108-IRC              INDIA                          Full or late term    NA                 0.0321803    0.0046009   0.0597596
6 months    ki1000304b-SAS-CompFeed    INDIA                          Full or late term    NA                -0.0754717   -0.2582783   0.1073349
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0009880   -0.0064288   0.0084048
6 months    ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0100366   -0.0227354   0.0026623
6 months    ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0002553   -0.0015024   0.0020130
6 months    ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0049918   -0.0151405   0.0251242
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0096070   -0.0013942   0.0206082
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0022689   -0.0026636   0.0072014
24 months   ki1000108-IRC              INDIA                          Full or late term    NA                 0.0089231   -0.0117124   0.0295586
24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0048017   -0.0232362   0.0136328
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.0056510   -0.0072744   0.0185765
24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0047672   -0.0127662   0.0223006
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0076662   -0.0047305   0.0200628
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0054127   -0.0056654   0.0164907


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC              INDIA                          Full or late term    NA                 0.1326966   -0.0155082   0.2592721
Birth       ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.1773109   -0.6178377   0.1432633
Birth       ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0468564   -0.0685156   0.1497712
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                -0.0067433   -0.1374967   0.1089803
Birth       ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0680161   -0.0746274   0.1917254
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.2125950    0.1049048   0.3073288
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0054549   -0.0414329   0.0502316
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.1269093   -0.3655987   0.0700603
6 months    ki1000108-IRC              INDIA                          Full or late term    NA                 0.2355838    0.0131261   0.4078959
6 months    ki1000304b-SAS-CompFeed    INDIA                          Full or late term    NA                -0.6060606   -3.0047982   0.3559150
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0221080   -0.1587005   0.1747024
6 months    ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.1814510   -0.4312528   0.0247521
6 months    ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0309441   -0.2093807   0.2235122
6 months    ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0411905   -0.1400978   0.1936520
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.1622311   -0.0439488   0.3276905
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0263530   -0.0325899   0.0819313
24 months   ki1000108-IRC              INDIA                          Full or late term    NA                 0.1160000   -0.1939710   0.3454983
24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0451671   -0.2336403   0.1145115
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.1507692   -0.2677534   0.4311253
24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0547596   -0.1694723   0.2359978
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.1121290   -0.0882338   0.2756015
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0250713   -0.0276878   0.0751218
