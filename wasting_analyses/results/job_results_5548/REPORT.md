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

**Outcome Variable:** pers_wast

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

agecat        studyid                    country                        gagebrth             pers_wast   n_cell       n
------------  -------------------------  -----------------------------  ------------------  ----------  -------  ------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term            0      201     351
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term            1       14     351
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                      0       49     351
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                      1        3     351
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term                   0       81     351
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term                   1        3     351
0-24 months   ki1000108-IRC              INDIA                          Full or late term            0      225     390
0-24 months   ki1000108-IRC              INDIA                          Full or late term            1       25     390
0-24 months   ki1000108-IRC              INDIA                          Preterm                      0       34     390
0-24 months   ki1000108-IRC              INDIA                          Preterm                      1        8     390
0-24 months   ki1000108-IRC              INDIA                          Early term                   0       85     390
0-24 months   ki1000108-IRC              INDIA                          Early term                   1       13     390
0-24 months   ki1000109-EE               PAKISTAN                       Full or late term            0       48     754
0-24 months   ki1000109-EE               PAKISTAN                       Full or late term            1        2     754
0-24 months   ki1000109-EE               PAKISTAN                       Preterm                      0      450     754
0-24 months   ki1000109-EE               PAKISTAN                       Preterm                      1       38     754
0-24 months   ki1000109-EE               PAKISTAN                       Early term                   0      200     754
0-24 months   ki1000109-EE               PAKISTAN                       Early term                   1       16     754
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Full or late term            0       24    1358
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Full or late term            1        2    1358
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Preterm                      0     1134    1358
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Preterm                      1      104    1358
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Early term                   0       87    1358
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Early term                   1        7    1358
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term            0      156     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term            1        2     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                      0      241     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                      1       14     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term                   0      307     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term                   1       10     730
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term            0     1212    2035
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term            1       33    2035
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                      0      306    2035
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                      1       11    2035
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                   0      462    2035
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                   1       11    2035
0-24 months   ki1101329-Keneba           GAMBIA                         Full or late term            0      736    1576
0-24 months   ki1101329-Keneba           GAMBIA                         Full or late term            1       39    1576
0-24 months   ki1101329-Keneba           GAMBIA                         Preterm                      0      230    1576
0-24 months   ki1101329-Keneba           GAMBIA                         Preterm                      1        9    1576
0-24 months   ki1101329-Keneba           GAMBIA                         Early term                   0      536    1576
0-24 months   ki1101329-Keneba           GAMBIA                         Early term                   1       26    1576
0-24 months   ki1119695-PROBIT           BELARUS                        Full or late term            0     8383   16581
0-24 months   ki1119695-PROBIT           BELARUS                        Full or late term            1       89   16581
0-24 months   ki1119695-PROBIT           BELARUS                        Preterm                      0      573   16581
0-24 months   ki1119695-PROBIT           BELARUS                        Preterm                      1        7   16581
0-24 months   ki1119695-PROBIT           BELARUS                        Early term                   0     7466   16581
0-24 months   ki1119695-PROBIT           BELARUS                        Early term                   1       63   16581
0-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term            0      401     732
0-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term            1        8     732
0-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm                      0      113     732
0-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm                      1        6     732
0-24 months   ki1135781-COHORTS          GUATEMALA                      Early term                   0      198     732
0-24 months   ki1135781-COHORTS          GUATEMALA                      Early term                   1        6     732
0-24 months   ki1135781-COHORTS          INDIA                          Full or late term            0      470    1186
0-24 months   ki1135781-COHORTS          INDIA                          Full or late term            1       42    1186
0-24 months   ki1135781-COHORTS          INDIA                          Preterm                      0      248    1186
0-24 months   ki1135781-COHORTS          INDIA                          Preterm                      1       18    1186
0-24 months   ki1135781-COHORTS          INDIA                          Early term                   0      367    1186
0-24 months   ki1135781-COHORTS          INDIA                          Early term                   1       41    1186
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term            0     1034    2789
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term            1       47    2789
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm                      0      550    2789
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm                      1       34    2789
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term                   0     1062    2789
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term                   1       62    2789
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term            0    12208   23750
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term            1      640   23750
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                      0     4078   23750
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                      1      258   23750
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term                   0     6152   23750
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term                   1      414   23750
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term            0      174     337
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term            1       32     337
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                      0       45     337
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                      1        6     337
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term                   0       72     337
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term                   1        8     337
0-6 months    ki1000108-IRC              INDIA                          Full or late term            0      211     383
0-6 months    ki1000108-IRC              INDIA                          Full or late term            1       34     383
0-6 months    ki1000108-IRC              INDIA                          Preterm                      0       33     383
0-6 months    ki1000108-IRC              INDIA                          Preterm                      1        9     383
0-6 months    ki1000108-IRC              INDIA                          Early term                   0       78     383
0-6 months    ki1000108-IRC              INDIA                          Early term                   1       18     383
0-6 months    ki1000109-EE               PAKISTAN                       Full or late term            0       48     732
0-6 months    ki1000109-EE               PAKISTAN                       Full or late term            1        2     732
0-6 months    ki1000109-EE               PAKISTAN                       Preterm                      0      438     732
0-6 months    ki1000109-EE               PAKISTAN                       Preterm                      1       38     732
0-6 months    ki1000109-EE               PAKISTAN                       Early term                   0      192     732
0-6 months    ki1000109-EE               PAKISTAN                       Early term                   1       14     732
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term            0     1157    1934
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term            1       29    1934
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                      0      290    1934
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                      1        8    1934
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                   0      438    1934
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                   1       12    1934
0-6 months    ki1101329-Keneba           GAMBIA                         Full or late term            0      659    1401
0-6 months    ki1101329-Keneba           GAMBIA                         Full or late term            1       17    1401
0-6 months    ki1101329-Keneba           GAMBIA                         Preterm                      0      206    1401
0-6 months    ki1101329-Keneba           GAMBIA                         Preterm                      1        8    1401
0-6 months    ki1101329-Keneba           GAMBIA                         Early term                   0      504    1401
0-6 months    ki1101329-Keneba           GAMBIA                         Early term                   1        7    1401
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term            0      198     351
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term            1       17     351
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                      0       47     351
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                      1        5     351
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term                   0       80     351
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term                   1        4     351
6-24 months   ki1000108-IRC              INDIA                          Full or late term            0      226     390
6-24 months   ki1000108-IRC              INDIA                          Full or late term            1       24     390
6-24 months   ki1000108-IRC              INDIA                          Preterm                      0       35     390
6-24 months   ki1000108-IRC              INDIA                          Preterm                      1        7     390
6-24 months   ki1000108-IRC              INDIA                          Early term                   0       83     390
6-24 months   ki1000108-IRC              INDIA                          Early term                   1       15     390
6-24 months   ki1000109-EE               PAKISTAN                       Full or late term            0       48     736
6-24 months   ki1000109-EE               PAKISTAN                       Full or late term            1        2     736
6-24 months   ki1000109-EE               PAKISTAN                       Preterm                      0      416     736
6-24 months   ki1000109-EE               PAKISTAN                       Preterm                      1       58     736
6-24 months   ki1000109-EE               PAKISTAN                       Early term                   0      186     736
6-24 months   ki1000109-EE               PAKISTAN                       Early term                   1       26     736
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Full or late term            0       18    1197
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Full or late term            1        4    1197
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Preterm                      0      918    1197
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Preterm                      1      176    1197
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Early term                   0       74    1197
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Early term                   1        7    1197
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term            0      139     697
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term            1        5     697
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                      0      227     697
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                      1       21     697
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term                   0      289     697
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term                   1       16     697
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term            0      944    1600
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term            1       44    1600
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                      0      234    1600
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                      1       16    1600
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                   0      343    1600
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                   1       19    1600
6-24 months   ki1101329-Keneba           GAMBIA                         Full or late term            0      657    1471
6-24 months   ki1101329-Keneba           GAMBIA                         Full or late term            1       64    1471
6-24 months   ki1101329-Keneba           GAMBIA                         Preterm                      0      196    1471
6-24 months   ki1101329-Keneba           GAMBIA                         Preterm                      1       21    1471
6-24 months   ki1101329-Keneba           GAMBIA                         Early term                   0      489    1471
6-24 months   ki1101329-Keneba           GAMBIA                         Early term                   1       44    1471
6-24 months   ki1119695-PROBIT           BELARUS                        Full or late term            0     3471    7097
6-24 months   ki1119695-PROBIT           BELARUS                        Full or late term            1        0    7097
6-24 months   ki1119695-PROBIT           BELARUS                        Preterm                      0      238    7097
6-24 months   ki1119695-PROBIT           BELARUS                        Preterm                      1        0    7097
6-24 months   ki1119695-PROBIT           BELARUS                        Early term                   0     3386    7097
6-24 months   ki1119695-PROBIT           BELARUS                        Early term                   1        2    7097
6-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term            0      371     669
6-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term            1        7     669
6-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm                      0      104     669
6-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm                      1        9     669
6-24 months   ki1135781-COHORTS          GUATEMALA                      Early term                   0      169     669
6-24 months   ki1135781-COHORTS          GUATEMALA                      Early term                   1        9     669
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term            0      953    2617
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term            1       64    2617
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm                      0      511    2617
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm                      1       45    2617
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term                   0      962    2617
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term                   1       82    2617


The following strata were considered:

* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/4b394e8a-4d85-4a1a-bcc4-8facf6f7e51e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4b394e8a-4d85-4a1a-bcc4-8facf6f7e51e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4b394e8a-4d85-4a1a-bcc4-8facf6f7e51e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4b394e8a-4d85-4a1a-bcc4-8facf6f7e51e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          Full or late term    NA                0.1000000   0.0627645   0.1372355
0-24 months   ki1000108-IRC              INDIA                          Preterm              NA                0.1904762   0.0715668   0.3093856
0-24 months   ki1000108-IRC              INDIA                          Early term           NA                0.1326531   0.0654100   0.1998961
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.0265060   0.0175810   0.0354310
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.0347003   0.0145481   0.0548525
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.0232558   0.0096702   0.0368415
0-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.0503226   0.0349267   0.0657185
0-24 months   ki1101329-Keneba           GAMBIA                         Preterm              NA                0.0376569   0.0135148   0.0617990
0-24 months   ki1101329-Keneba           GAMBIA                         Early term           NA                0.0462633   0.0288913   0.0636354
0-24 months   ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.0105052   0.0058392   0.0151712
0-24 months   ki1119695-PROBIT           BELARUS                        Preterm              NA                0.0120690   0.0030561   0.0210818
0-24 months   ki1119695-PROBIT           BELARUS                        Early term           NA                0.0083676   0.0038455   0.0128898
0-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.0195599   0.0061299   0.0329899
0-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm              NA                0.0504202   0.0110797   0.0897606
0-24 months   ki1135781-COHORTS          GUATEMALA                      Early term           NA                0.0294118   0.0062107   0.0526128
0-24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                0.0820313   0.0582519   0.1058106
0-24 months   ki1135781-COHORTS          INDIA                          Preterm              NA                0.0676692   0.0374717   0.0978667
0-24 months   ki1135781-COHORTS          INDIA                          Early term           NA                0.1004902   0.0713048   0.1296756
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.0434783   0.0313193   0.0556372
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.0582192   0.0392247   0.0772137
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.0551601   0.0418116   0.0685087
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.0498132   0.0437416   0.0558848
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.0595018   0.0496221   0.0693815
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.0630521   0.0543588   0.0717453
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.1553398   0.1058014   0.2048782
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                0.1176471   0.0290906   0.2062035
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                0.1000000   0.0341631   0.1658369
0-6 months    ki1000108-IRC              INDIA                          Full or late term    NA                0.1387755   0.0954297   0.1821213
0-6 months    ki1000108-IRC              INDIA                          Preterm              NA                0.2142857   0.0900289   0.3385425
0-6 months    ki1000108-IRC              INDIA                          Early term           NA                0.1875000   0.1093206   0.2656794
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.0244519   0.0156597   0.0332442
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.0268456   0.0084896   0.0452017
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.0266667   0.0117775   0.0415558
0-6 months    ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.0251479   0.0133406   0.0369552
0-6 months    ki1101329-Keneba           GAMBIA                         Preterm              NA                0.0373832   0.0119582   0.0628082
0-6 months    ki1101329-Keneba           GAMBIA                         Early term           NA                0.0136986   0.0036169   0.0237804
6-24 months   ki1000108-IRC              INDIA                          Full or late term    NA                0.0960000   0.0594359   0.1325641
6-24 months   ki1000108-IRC              INDIA                          Preterm              NA                0.1666667   0.0538133   0.2795201
6-24 months   ki1000108-IRC              INDIA                          Early term           NA                0.1530612   0.0816854   0.2244371
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                0.0347222   0.0047990   0.0646455
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                0.0846774   0.0500033   0.1193515
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                0.0524590   0.0274199   0.0774981
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.0445344   0.0316679   0.0574009
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.0640000   0.0336512   0.0943488
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.0524862   0.0295065   0.0754659
6-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.0887656   0.0679990   0.1095322
6-24 months   ki1101329-Keneba           GAMBIA                         Preterm              NA                0.0967742   0.0574243   0.1361241
6-24 months   ki1101329-Keneba           GAMBIA                         Early term           NA                0.0825516   0.0591801   0.1059230
6-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.0185185   0.0049175   0.0321195
6-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm              NA                0.0796460   0.0296894   0.1296027
6-24 months   ki1135781-COHORTS          GUATEMALA                      Early term           NA                0.0505618   0.0183506   0.0827730
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.0629302   0.0480027   0.0778577
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.0809353   0.0582609   0.1036096
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.0785441   0.0622220   0.0948661


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1179487   0.0858959   0.1500016
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0270270   0.0199797   0.0340743
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.0469543   0.0365071   0.0574016
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0095893   0.0052864   0.0138922
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0273224   0.0155047   0.0391401
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0851602   0.0692682   0.1010522
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0512729   0.0430860   0.0594597
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0552421   0.0506790   0.0598052
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1364985   0.0997894   0.1732076
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.1592689   0.1225736   0.1959642
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0253361   0.0183307   0.0323414
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0228408   0.0150151   0.0306665
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1179487   0.0858959   0.1500016
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0602582   0.0425793   0.0779372
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0493750   0.0387560   0.0599940
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.0876954   0.0732361   0.1021548
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0373692   0.0229863   0.0517521
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0729843   0.0630168   0.0829519


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level        estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ------------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000    1.000000
0-24 months   ki1000108-IRC              INDIA                          Preterm              Full or late term    1.9047619   0.9207828    3.940254
0-24 months   ki1000108-IRC              INDIA                          Early term           Full or late term    1.3265306   0.7072263    2.488148
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000    1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    1.3091483   0.6690294    2.561725
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    0.8773784   0.4470465    1.721953
0-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000    1.000000
0-24 months   ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    0.7483103   0.3677682    1.522612
0-24 months   ki1101329-Keneba           GAMBIA                         Early term           Full or late term    0.9193357   0.5663951    1.492206
0-24 months   ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term    1.0000000   1.0000000    1.000000
0-24 months   ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    1.1488570   0.5931471    2.225203
0-24 months   ki1119695-PROBIT           BELARUS                        Early term           Full or late term    0.7965246   0.5427623    1.168931
0-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term    1.0000000   1.0000000    1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term    2.5777311   0.9117126    7.288149
0-24 months   ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term    1.5036765   0.5284081    4.278971
0-24 months   ki1135781-COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000    1.000000
0-24 months   ki1135781-COHORTS          INDIA                          Preterm              Full or late term    0.8249194   0.4845141    1.404483
0-24 months   ki1135781-COHORTS          INDIA                          Early term           Full or late term    1.2250233   0.8127084    1.846520
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000    1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    1.3390410   0.8713097    2.057857
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    1.2686832   0.8764771    1.836394
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000    1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    1.1944995   0.9726833    1.466900
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    1.2657706   1.0569109    1.515904
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term    1.0000000   1.0000000    1.000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    0.7573529   0.3343982    1.715271
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term    0.6437500   0.3097517    1.337891
0-6 months    ki1000108-IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000    1.000000
0-6 months    ki1000108-IRC              INDIA                          Preterm              Full or late term    1.5441176   0.7991678    2.983478
0-6 months    ki1000108-IRC              INDIA                          Early term           Full or late term    1.3511029   0.8024776    2.274804
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000    1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    1.0978940   0.5070474    2.377236
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    1.0905747   0.5613548    2.118719
0-6 months    ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000    1.000000
0-6 months    ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    1.4865311   0.6505119    3.396978
0-6 months    ki1101329-Keneba           GAMBIA                         Early term           Full or late term    0.5447220   0.2275334    1.304081
6-24 months   ki1000108-IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000    1.000000
6-24 months   ki1000108-IRC              INDIA                          Preterm              Full or late term    1.7361111   0.7983222    3.775520
6-24 months   ki1000108-IRC              INDIA                          Early term           Full or late term    1.5943877   0.8731838    2.911268
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000    1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term    2.4387097   0.9392649    6.331872
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term    1.5108197   0.5641196    4.046263
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000    1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    1.4370909   0.8247631    2.504028
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    1.1785535   0.6974886    1.991414
6-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000    1.000000
6-24 months   ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    1.0902218   0.6819947    1.742805
6-24 months   ki1101329-Keneba           GAMBIA                         Early term           Full or late term    0.9299953   0.6441376    1.342712
6-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term    1.0000000   1.0000000    1.000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term    4.3008849   1.6371905   11.298386
6-24 months   ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term    2.7303370   1.0326942    7.218730
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000    1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    1.2861117   0.8909521    1.856535
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    1.2481142   0.9105333    1.710854


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA                          Full or late term    NA                 0.0179487   -0.0072768   0.0431742
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0005210   -0.0051230   0.0061650
0-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0033683   -0.0140010   0.0072645
0-24 months   ki1119695-PROBIT           BELARUS                        Full or late term    NA                -0.0009159   -0.0025910   0.0007592
0-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.0077625   -0.0031218   0.0186468
0-24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0031290   -0.0150313   0.0212892
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0077946   -0.0022184   0.0178076
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0054289    0.0013603   0.0094975
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0188413   -0.0471504   0.0094678
0-6 months    ki1000108-IRC              INDIA                          Full or late term    NA                 0.0204934   -0.0081709   0.0491577
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0008842   -0.0047344   0.0065027
0-6 months    ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0023071   -0.0104384   0.0058242
6-24 months   ki1000108-IRC              INDIA                          Full or late term    NA                 0.0219487   -0.0035523   0.0474497
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.0255360   -0.0034116   0.0544837
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0048406   -0.0037535   0.0134347
6-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0010702   -0.0158205   0.0136802
6-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.0188507    0.0053299   0.0323715
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0100541   -0.0021521   0.0222604


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA                          Full or late term    NA                 0.1521739   -0.0870878   0.3387755
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0192771   -0.2133771   0.2073219
0-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0717350   -0.3232634   0.1319825
0-24 months   ki1119695-PROBIT           BELARUS                        Full or late term    NA                -0.0955133   -0.2894475   0.0692530
0-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.2841076   -0.2167890   0.5788079
0-24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0367420   -0.2018407   0.2279625
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.1520219   -0.0658551   0.3253615
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0982748    0.0211701   0.1693057
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.1380329   -0.3629649   0.0497782
0-6 months    ki1000108-IRC              INDIA                          Full or late term    NA                 0.1286718   -0.0692198   0.2899375
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0348969   -0.2141578   0.2328642
0-6 months    ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.1010078   -0.5190887   0.2020097
6-24 months   ki1000108-IRC              INDIA                          Full or late term    NA                 0.1860869   -0.0554709   0.3723612
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.4237765   -0.2919601   0.7430001
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0980372   -0.0925423   0.2553726
6-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0122031   -0.1951742   0.1427567
6-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.5044444    0.0779927   0.7336514
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.1377576   -0.0456957   0.2890265
