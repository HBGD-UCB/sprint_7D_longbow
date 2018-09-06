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

**Outcome Variable:** ever_stunted

## Predictor Variables

**Intervention Variable:** tr

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country
* intXgagebrth

## Data Summary

agecat        studyid                    country                        intXgagebrth                     ever_stunted   n_cell       n
------------  -------------------------  -----------------------------  ------------------------------  -------------  -------  ------
0-6 months    iLiNS_DYADM_LNS            MALAWI                         Full or late term_0-6 months                0       24      29
0-6 months    iLiNS_DYADM_LNS            MALAWI                         Full or late term_0-6 months                1        5      29
0-6 months    iLiNS_DYADM_LNS            MALAWI                         Preterm_0-6 months                          0        0       2
0-6 months    iLiNS_DYADM_LNS            MALAWI                         Preterm_0-6 months                          1        2       2
0-6 months    iLiNS_DYADM_LNS            MALAWI                         Early term_0-6 months                       0        9      12
0-6 months    iLiNS_DYADM_LNS            MALAWI                         Early term_0-6 months                       1        3      12
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Full or late term_0-6 months                0       16      17
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Full or late term_0-6 months                1        1      17
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Preterm_0-6 months                          0      515     721
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Preterm_0-6 months                          1      206     721
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Early term_0-6 months                       0       36      50
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Early term_0-6 months                       1       14      50
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term_0-6 months                0     1224    1295
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term_0-6 months                1       71    1295
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm_0-6 months                          0      282     323
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm_0-6 months                          1       41     323
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term_0-6 months                       0      444     482
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term_0-6 months                       1       38     482
0-6 months    ki1119695-PROBIT           BELARUS                        Full or late term_0-6 months                0     7835    8280
0-6 months    ki1119695-PROBIT           BELARUS                        Full or late term_0-6 months                1      445    8280
0-6 months    ki1119695-PROBIT           BELARUS                        Preterm_0-6 months                          0      482     568
0-6 months    ki1119695-PROBIT           BELARUS                        Preterm_0-6 months                          1       86     568
0-6 months    ki1119695-PROBIT           BELARUS                        Early term_0-6 months                       0     6816    7337
0-6 months    ki1119695-PROBIT           BELARUS                        Early term_0-6 months                       1      521    7337
0-6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term_0-6 months                0       75     103
0-6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term_0-6 months                1       28     103
0-6 months    ki1135781-COHORTS          GUATEMALA                      Preterm_0-6 months                          0       13      23
0-6 months    ki1135781-COHORTS          GUATEMALA                      Preterm_0-6 months                          1       10      23
0-6 months    ki1135781-COHORTS          GUATEMALA                      Early term_0-6 months                       0       42      63
0-6 months    ki1135781-COHORTS          GUATEMALA                      Early term_0-6 months                       1       21      63
0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Full or late term_0-6 months                0       43      51
0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Full or late term_0-6 months                1        8      51
0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Preterm_0-6 months                          0        0       5
0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Preterm_0-6 months                          1        5       5
0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Early term_0-6 months                       0       11      14
0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Early term_0-6 months                       1        3      14
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term_0-6 months                0    12010   14876
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term_0-6 months                1     2866   14876
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm_0-6 months                          0     3488    5736
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm_0-6 months                          1     2248    5736
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term_0-6 months                       0     5806    7988
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term_0-6 months                       1     2182    7988
6-24 months   iLiNS_DYADM_LNS            MALAWI                         Full or late term_6-24 months               0      249     334
6-24 months   iLiNS_DYADM_LNS            MALAWI                         Full or late term_6-24 months               1       85     334
6-24 months   iLiNS_DYADM_LNS            MALAWI                         Preterm_6-24 months                         0       15      21
6-24 months   iLiNS_DYADM_LNS            MALAWI                         Preterm_6-24 months                         1        6      21
6-24 months   iLiNS_DYADM_LNS            MALAWI                         Early term_6-24 months                      0       90     139
6-24 months   iLiNS_DYADM_LNS            MALAWI                         Early term_6-24 months                      1       49     139
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Full or late term_6-24 months               0        5      15
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Full or late term_6-24 months               1       10      15
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Preterm_6-24 months                         0      319     562
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Preterm_6-24 months                         1      243     562
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Early term_6-24 months                      0       27      48
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Early term_6-24 months                      1       21      48
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term_6-24 months               0      875    1056
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term_6-24 months               1      181    1056
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm_6-24 months                         0      194     246
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm_6-24 months                         1       52     246
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term_6-24 months                      0      315     392
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term_6-24 months                      1       77     392
6-24 months   ki1119695-PROBIT           BELARUS                        Full or late term_6-24 months               0     7031    7454
6-24 months   ki1119695-PROBIT           BELARUS                        Full or late term_6-24 months               1      423    7454
6-24 months   ki1119695-PROBIT           BELARUS                        Preterm_6-24 months                         0      395     423
6-24 months   ki1119695-PROBIT           BELARUS                        Preterm_6-24 months                         1       28     423
6-24 months   ki1119695-PROBIT           BELARUS                        Early term_6-24 months                      0     5936    6330
6-24 months   ki1119695-PROBIT           BELARUS                        Early term_6-24 months                      1      394    6330
6-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term_6-24 months               0       66     103
6-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term_6-24 months               1       37     103
6-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm_6-24 months                         0       14      22
6-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm_6-24 months                         1        8      22
6-24 months   ki1135781-COHORTS          GUATEMALA                      Early term_6-24 months                      0       23      52
6-24 months   ki1135781-COHORTS          GUATEMALA                      Early term_6-24 months                      1       29      52
6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Full or late term_6-24 months               0      388     524
6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Full or late term_6-24 months               1      136     524
6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Preterm_6-24 months                         0       22      34
6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Preterm_6-24 months                         1       12      34
6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Early term_6-24 months                      0      128     203
6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Early term_6-24 months                      1       75     203
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term_6-24 months               0     6413    7775
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term_6-24 months               1     1362    7775
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm_6-24 months                         0     1396    1688
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm_6-24 months                         1      292    1688
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term_6-24 months                      0     2697    3323
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term_6-24 months                      1      626    3323


The following strata were considered:

* agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXgagebrth: Early term_0-6 months
* agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXgagebrth: Full or late term_0-6 months
* agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXgagebrth: Preterm_0-6 months
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXgagebrth: Early term_0-6 months
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXgagebrth: Full or late term_0-6 months
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXgagebrth: Preterm_0-6 months
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXgagebrth: Early term_0-6 months
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXgagebrth: Full or late term_0-6 months
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXgagebrth: Preterm_0-6 months
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS, intXgagebrth: Early term_0-6 months
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS, intXgagebrth: Full or late term_0-6 months
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS, intXgagebrth: Preterm_0-6 months
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXgagebrth: Early term_0-6 months
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXgagebrth: Full or late term_0-6 months
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXgagebrth: Preterm_0-6 months
* agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXgagebrth: Early term_0-6 months
* agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXgagebrth: Full or late term_0-6 months
* agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXgagebrth: Preterm_0-6 months
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXgagebrth: Early term_0-6 months
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXgagebrth: Full or late term_0-6 months
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXgagebrth: Preterm_0-6 months
* agecat: 6-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXgagebrth: Early term_6-24 months
* agecat: 6-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXgagebrth: Full or late term_6-24 months
* agecat: 6-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXgagebrth: Preterm_6-24 months
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXgagebrth: Early term_6-24 months
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXgagebrth: Full or late term_6-24 months
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXgagebrth: Preterm_6-24 months
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXgagebrth: Early term_6-24 months
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXgagebrth: Full or late term_6-24 months
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXgagebrth: Preterm_6-24 months
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS, intXgagebrth: Early term_6-24 months
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS, intXgagebrth: Full or late term_6-24 months
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS, intXgagebrth: Preterm_6-24 months
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXgagebrth: Early term_6-24 months
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXgagebrth: Full or late term_6-24 months
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXgagebrth: Preterm_6-24 months
* agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXgagebrth: Early term_6-24 months
* agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXgagebrth: Full or late term_6-24 months
* agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXgagebrth: Preterm_6-24 months
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXgagebrth: Early term_6-24 months
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXgagebrth: Full or late term_6-24 months
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXgagebrth: Preterm_6-24 months

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXgagebrth: Preterm_0-6 months
* agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXgagebrth: Early term_0-6 months
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXgagebrth: Full or late term_0-6 months
* agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXgagebrth: Preterm_0-6 months
* agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXgagebrth: Early term_0-6 months

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/0f73b4e9-f645-4279-a6cf-d0c5e3d213af/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/0f73b4e9-f645-4279-a6cf-d0c5e3d213af/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/0f73b4e9-f645-4279-a6cf-d0c5e3d213af/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/0f73b4e9-f645-4279-a6cf-d0c5e3d213af/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intXgagebrth                    intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  ------------------------------  -------------------  ---------------  ----------  -----------  ----------
0-6 months    iLiNS_DYADM_LNS            MALAWI                         Full or late term_0-6 months    Control              NA                0.2222222    0.0267643   0.4176802
0-6 months    iLiNS_DYADM_LNS            MALAWI                         Full or late term_0-6 months    LNS                  NA                0.0909091   -0.0819846   0.2638028
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Preterm_0-6 months              Control              NA                0.2818182    0.2388992   0.3247372
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Preterm_0-6 months              Other                NA                0.2890026    0.2619776   0.3160275
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Early term_0-6 months           Control              NA                0.3846154    0.3053017   0.4639290
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Early term_0-6 months           Other                NA                0.1666667    0.0739890   0.2593443
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term_0-6 months    Control              NA                0.0532915    0.0286335   0.0779495
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term_0-6 months    Other                NA                0.0496894    0.0259455   0.0734334
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term_0-6 months    Zinc                 NA                0.0581040    0.0401677   0.0760402
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm_0-6 months              Control              NA                0.1315789    0.0554635   0.2076944
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm_0-6 months              Other                NA                0.0975610    0.0332387   0.1618833
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm_0-6 months              Zinc                 NA                0.1393939    0.0864637   0.1923241
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term_0-6 months           Control              NA                0.0787402    0.0318495   0.1256308
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term_0-6 months           Other                NA                0.0849057    0.0317870   0.1380244
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term_0-6 months           Zinc                 NA                0.0763052    0.0432956   0.1093149
0-6 months    ki1119695-PROBIT           BELARUS                        Full or late term_0-6 months    Control              NA                0.0607133    0.0407084   0.0807183
0-6 months    ki1119695-PROBIT           BELARUS                        Full or late term_0-6 months    Maternal             NA                0.0481875    0.0362675   0.0601076
0-6 months    ki1119695-PROBIT           BELARUS                        Preterm_0-6 months              Control              NA                0.1558442    0.0684355   0.2432528
0-6 months    ki1119695-PROBIT           BELARUS                        Preterm_0-6 months              Maternal             NA                0.1483680    0.0377177   0.2590182
0-6 months    ki1119695-PROBIT           BELARUS                        Early term_0-6 months           Control              NA                0.0702024    0.0491518   0.0912530
0-6 months    ki1119695-PROBIT           BELARUS                        Early term_0-6 months           Maternal             NA                0.0719278    0.0508805   0.0929750
0-6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term_0-6 months    Control              NA                0.2000000    0.0754348   0.3245652
0-6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term_0-6 months    Other                NA                0.3174603    0.2019542   0.4329664
0-6 months    ki1135781-COHORTS          GUATEMALA                      Preterm_0-6 months              Control              NA                0.3750000    0.1324528   0.6175472
0-6 months    ki1135781-COHORTS          GUATEMALA                      Preterm_0-6 months              Other                NA                0.5714286    0.1965900   0.9462671
0-6 months    ki1135781-COHORTS          GUATEMALA                      Early term_0-6 months           Control              NA                0.4242424    0.2542645   0.5942203
0-6 months    ki1135781-COHORTS          GUATEMALA                      Early term_0-6 months           Other                NA                0.2333333    0.0807688   0.3858979
0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Full or late term_0-6 months    Control              NA                0.2222222    0.0282527   0.4161917
0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Full or late term_0-6 months    Maternal             NA                0.1212121    0.0087500   0.2336742
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term_0-6 months    Control              NA                0.2058577    0.1914144   0.2203011
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term_0-6 months    Maternal             NA                0.1803789    0.1664415   0.1943163
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm_0-6 months              Control              NA                0.4215040    0.3910526   0.4519553
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm_0-6 months              Maternal             NA                0.3587278    0.3235694   0.3938862
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term_0-6 months           Control              NA                0.3013766    0.2789722   0.3237810
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term_0-6 months           Maternal             NA                0.2438776    0.2216686   0.2660865
6-24 months   iLiNS_DYADM_LNS            MALAWI                         Full or late term_6-24 months   Control              NA                0.2411765    0.1765788   0.3057741
6-24 months   iLiNS_DYADM_LNS            MALAWI                         Full or late term_6-24 months   LNS                  NA                0.2682927    0.2002522   0.3363331
6-24 months   iLiNS_DYADM_LNS            MALAWI                         Preterm_6-24 months             Control              NA                0.1875000   -0.0084725   0.3834725
6-24 months   iLiNS_DYADM_LNS            MALAWI                         Preterm_6-24 months             LNS                  NA                0.6000000    0.1599892   1.0400108
6-24 months   iLiNS_DYADM_LNS            MALAWI                         Early term_6-24 months          Control              NA                0.3428571    0.2312599   0.4544544
6-24 months   iLiNS_DYADM_LNS            MALAWI                         Early term_6-24 months          LNS                  NA                0.3623188    0.2484936   0.4761441
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Full or late term_6-24 months   Control              NA                0.7777778    0.5967620   0.9587935
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Full or late term_6-24 months   Other                NA                0.5000000   -0.0722808   1.0722808
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Preterm_6-24 months             Control              NA                0.4351145    0.3489338   0.5212952
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Preterm_6-24 months             Other                NA                0.4300000    0.3405626   0.5194374
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Early term_6-24 months          Control              NA                0.5217391    0.3624006   0.6810777
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Early term_6-24 months          Other                NA                0.3600000    0.1667895   0.5532105
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term_6-24 months   Control              NA                0.1750973    0.1286106   0.2215839
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term_6-24 months   Other                NA                0.1529851    0.1098673   0.1961029
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term_6-24 months   Zinc                 NA                0.1789077    0.1462927   0.2115227
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm_6-24 months             Control              NA                0.1774194    0.0821339   0.2727048
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm_6-24 months             Other                NA                0.1967213    0.0967613   0.2966814
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm_6-24 months             Zinc                 NA                0.2357724    0.1606035   0.3109412
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term_6-24 months          Control              NA                0.1904762    0.1152718   0.2656806
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term_6-24 months          Other                NA                0.2117647    0.1247990   0.2987304
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term_6-24 months          Zinc                 NA                0.1930693    0.1385686   0.2475700
6-24 months   ki1119695-PROBIT           BELARUS                        Full or late term_6-24 months   Control              NA                0.0608856    0.0365614   0.0852099
6-24 months   ki1119695-PROBIT           BELARUS                        Full or late term_6-24 months   Maternal             NA                0.0535459    0.0438690   0.0632228
6-24 months   ki1119695-PROBIT           BELARUS                        Preterm_6-24 months             Control              NA                0.1042945    0.0526631   0.1559258
6-24 months   ki1119695-PROBIT           BELARUS                        Preterm_6-24 months             Maternal             NA                0.0423077    0.0256849   0.0589304
6-24 months   ki1119695-PROBIT           BELARUS                        Early term_6-24 months          Control              NA                0.0716867    0.0442084   0.0991651
6-24 months   ki1119695-PROBIT           BELARUS                        Early term_6-24 months          Maternal             NA                0.0518272    0.0327988   0.0708557
6-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term_6-24 months   Control              NA                0.4418605    0.2927025   0.5910184
6-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term_6-24 months   Other                NA                0.3000000    0.1834800   0.4165200
6-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm_6-24 months             Control              NA                0.4444444    0.1121669   0.7767220
6-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm_6-24 months             Other                NA                0.3076923    0.0508976   0.5644870
6-24 months   ki1135781-COHORTS          GUATEMALA                      Early term_6-24 months          Control              NA                0.7272727    0.5393556   0.9151898
6-24 months   ki1135781-COHORTS          GUATEMALA                      Early term_6-24 months          Other                NA                0.4333333    0.2542814   0.6123852
6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Full or late term_6-24 months   Control              NA                0.2411765    0.1766843   0.3056686
6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Full or late term_6-24 months   Maternal             NA                0.2683616    0.2220942   0.3146289
6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Preterm_6-24 months             Control              NA                0.1875000   -0.0066256   0.3816256
6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Preterm_6-24 months             Maternal             NA                0.5000000    0.2655424   0.7344576
6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Early term_6-24 months          Control              NA                0.3428571    0.2313872   0.4543271
6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Early term_6-24 months          Maternal             NA                0.3834586    0.3006196   0.4662977
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term_6-24 months   Control              NA                0.1813778    0.1595491   0.2032065
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term_6-24 months   Maternal             NA                0.1694999    0.1510876   0.1879122
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm_6-24 months             Control              NA                0.1551529    0.1158507   0.1944551
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm_6-24 months             Maternal             NA                0.1925466    0.1449943   0.2400989
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term_6-24 months          Control              NA                0.1856796    0.1537193   0.2176399
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term_6-24 months          Maternal             NA                0.1910448    0.1613578   0.2207318


### Parameter: E(Y)


agecat        studyid                    country                        intXgagebrth                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  ------------------------------  -------------------  ---------------  ----------  ----------  ----------
0-6 months    iLiNS_DYADM_LNS            MALAWI                         Full or late term_0-6 months    NA                   NA                0.1724138   0.0324996   0.3123280
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Preterm_0-6 months              NA                   NA                0.2857143   0.2605504   0.3108782
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Early term_0-6 months           NA                   NA                0.2800000   0.1639472   0.3960528
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term_0-6 months    NA                   NA                0.0548263   0.0424231   0.0672294
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm_0-6 months              NA                   NA                0.1269350   0.0905741   0.1632958
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term_0-6 months           NA                   NA                0.0788382   0.0547551   0.1029212
0-6 months    ki1119695-PROBIT           BELARUS                        Full or late term_0-6 months    NA                   NA                0.0537440   0.0423194   0.0651685
0-6 months    ki1119695-PROBIT           BELARUS                        Preterm_0-6 months              NA                   NA                0.1514085   0.0768096   0.2260073
0-6 months    ki1119695-PROBIT           BELARUS                        Early term_0-6 months           NA                   NA                0.0710099   0.0561436   0.0858763
0-6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term_0-6 months    NA                   NA                0.2718447   0.1855030   0.3581863
0-6 months    ki1135781-COHORTS          GUATEMALA                      Preterm_0-6 months              NA                   NA                0.4347826   0.2276347   0.6419305
0-6 months    ki1135781-COHORTS          GUATEMALA                      Early term_0-6 months           NA                   NA                0.3333333   0.2159934   0.4506733
0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Full or late term_0-6 months    NA                   NA                0.1568627   0.0560601   0.2576654
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term_0-6 months    NA                   NA                0.1926593   0.1825926   0.2027260
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm_0-6 months              NA                   NA                0.3919107   0.3686924   0.4151291
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term_0-6 months           NA                   NA                0.2731597   0.2572159   0.2891036
6-24 months   iLiNS_DYADM_LNS            MALAWI                         Full or late term_6-24 months   NA                   NA                0.2544910   0.2075913   0.3013907
6-24 months   iLiNS_DYADM_LNS            MALAWI                         Preterm_6-24 months             NA                   NA                0.2857143   0.0877280   0.4837005
6-24 months   iLiNS_DYADM_LNS            MALAWI                         Early term_6-24 months          NA                   NA                0.3525180   0.2728079   0.4322280
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Full or late term_6-24 months   NA                   NA                0.6666667   0.3737272   0.9596061
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Preterm_6-24 months             NA                   NA                0.4323843   0.3699020   0.4948667
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Early term_6-24 months          NA                   NA                0.4375000   0.2981494   0.5768506
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term_6-24 months   NA                   NA                0.1714015   0.1486609   0.1941421
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm_6-24 months             NA                   NA                0.2113821   0.1602572   0.2625070
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term_6-24 months          NA                   NA                0.1964286   0.1570487   0.2358084
6-24 months   ki1119695-PROBIT           BELARUS                        Full or late term_6-24 months   NA                   NA                0.0567481   0.0446006   0.0688955
6-24 months   ki1119695-PROBIT           BELARUS                        Preterm_6-24 months             NA                   NA                0.0661939   0.0443623   0.0880254
6-24 months   ki1119695-PROBIT           BELARUS                        Early term_6-24 months          NA                   NA                0.0622433   0.0444272   0.0800593
6-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term_6-24 months   NA                   NA                0.3592233   0.2661160   0.4523306
6-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm_6-24 months             NA                   NA                0.3636364   0.1578935   0.5693792
6-24 months   ki1135781-COHORTS          GUATEMALA                      Early term_6-24 months          NA                   NA                0.5576923   0.4213839   0.6940007
6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Full or late term_6-24 months   NA                   NA                0.2595420   0.2219118   0.2971721
6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Preterm_6-24 months             NA                   NA                0.3529412   0.1898937   0.5159887
6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Early term_6-24 months          NA                   NA                0.3694581   0.3028983   0.4360179
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term_6-24 months   NA                   NA                0.1751768   0.1609626   0.1893911
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm_6-24 months             NA                   NA                0.1729858   0.1422961   0.2036755
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term_6-24 months          NA                   NA                0.1883840   0.1665879   0.2101800


### Parameter: RR


agecat        studyid                    country                        intXgagebrth                    intervention_level   baseline_level     estimate    ci_lower     ci_upper
------------  -------------------------  -----------------------------  ------------------------------  -------------------  ---------------  ----------  ----------  -----------
0-6 months    iLiNS_DYADM_LNS            MALAWI                         Full or late term_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    iLiNS_DYADM_LNS            MALAWI                         Full or late term_0-6 months    LNS                  Control           0.4090909   0.0503282    3.3252816
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Preterm_0-6 months              Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Preterm_0-6 months              Other                Control           1.0254929   0.8583845    1.2251337
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Early term_0-6 months           Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Early term_0-6 months           Other                Control           0.4333333   0.2412348    0.7784026
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term_0-6 months    Other                Control           0.9324077   0.4794392    1.8133358
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term_0-6 months    Zinc                 Control           1.0903040   0.6251493    1.9015662
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm_0-6 months              Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm_0-6 months              Other                Control           0.7414634   0.3084373    1.7824307
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm_0-6 months              Zinc                 Control           1.0593939   0.5303214    2.1162931
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term_0-6 months           Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term_0-6 months           Other                Control           1.0783019   0.4545963    2.5577306
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term_0-6 months           Zinc                 Control           0.9690763   0.4641875    2.0231241
0-6 months    ki1119695-PROBIT           BELARUS                        Full or late term_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        Full or late term_0-6 months    Maternal             Control           0.7936899   0.5257922    1.1980847
0-6 months    ki1119695-PROBIT           BELARUS                        Preterm_0-6 months              Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        Preterm_0-6 months              Maternal             Control           0.9520277   0.3744957    2.4202059
0-6 months    ki1119695-PROBIT           BELARUS                        Early term_0-6 months           Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        Early term_0-6 months           Maternal             Control           1.0245771   0.6737856    1.5580005
0-6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term_0-6 months    Other                Control           1.5873016   0.7716076    3.2652947
0-6 months    ki1135781-COHORTS          GUATEMALA                      Preterm_0-6 months              Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      Preterm_0-6 months              Other                Control           1.5238095   0.6065308    3.8283227
0-6 months    ki1135781-COHORTS          GUATEMALA                      Early term_0-6 months           Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      Early term_0-6 months           Other                Control           0.5500000   0.2554625    1.1841266
0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Full or late term_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Full or late term_0-6 months    Maternal             Control           0.5454545   0.1525904    1.9497995
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term_0-6 months    Maternal             Control           0.8762310   0.7893829    0.9726340
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm_0-6 months              Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm_0-6 months              Maternal             Control           0.8510663   0.7534333    0.9613509
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term_0-6 months           Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term_0-6 months           Maternal             Control           0.8092120   0.7194608    0.9101595
6-24 months   iLiNS_DYADM_LNS            MALAWI                         Full or late term_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   iLiNS_DYADM_LNS            MALAWI                         Full or late term_6-24 months   LNS                  Control           1.1124331   0.7692739    1.6086693
6-24 months   iLiNS_DYADM_LNS            MALAWI                         Preterm_6-24 months             Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   iLiNS_DYADM_LNS            MALAWI                         Preterm_6-24 months             LNS                  Control           3.2000000   0.8925707   11.4724802
6-24 months   iLiNS_DYADM_LNS            MALAWI                         Early term_6-24 months          Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   iLiNS_DYADM_LNS            MALAWI                         Early term_6-24 months          LNS                  Control           1.0567633   0.6722259    1.6612699
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Full or late term_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Full or late term_6-24 months   Other                Control           0.6428571   0.2009190    2.0568757
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Preterm_6-24 months             Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Preterm_6-24 months             Other                Control           0.9882456   0.7415140    1.3170749
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Early term_6-24 months          Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Early term_6-24 months          Other                Control           0.6900000   0.3695761    1.2882325
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term_6-24 months   Other                Control           0.8737148   0.5932156    1.2868465
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term_6-24 months   Zinc                 Control           1.0217619   0.7404291    1.4099896
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm_6-24 months             Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm_6-24 months             Other                Control           1.1087928   0.5293663    2.3224404
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm_6-24 months             Zinc                 Control           1.3288987   0.7116169    2.4816330
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term_6-24 months          Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term_6-24 months          Other                Control           1.1117647   0.6289319    1.9652696
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term_6-24 months          Zinc                 Control           1.0136139   0.6238571    1.6468724
6-24 months   ki1119695-PROBIT           BELARUS                        Full or late term_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1119695-PROBIT           BELARUS                        Full or late term_6-24 months   Maternal             Control           0.8794513   0.5677399    1.3623047
6-24 months   ki1119695-PROBIT           BELARUS                        Preterm_6-24 months             Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1119695-PROBIT           BELARUS                        Preterm_6-24 months             Maternal             Control           0.4056561   0.2138839    0.7693749
6-24 months   ki1119695-PROBIT           BELARUS                        Early term_6-24 months          Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1119695-PROBIT           BELARUS                        Early term_6-24 months          Maternal             Control           0.7229683   0.4245701    1.2310880
6-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term_6-24 months   Other                Control           0.6789474   0.4058363    1.1358510
6-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm_6-24 months             Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm_6-24 months             Other                Control           0.6923077   0.2257781    2.1228363
6-24 months   ki1135781-COHORTS          GUATEMALA                      Early term_6-24 months          Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      Early term_6-24 months          Other                Control           0.5958333   0.3659975    0.9699993
6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Full or late term_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Full or late term_6-24 months   Maternal             Control           1.1127188   0.8094821    1.5295497
6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Preterm_6-24 months             Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Preterm_6-24 months             Maternal             Control           2.6666667   0.8557764    8.3095436
6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Early term_6-24 months          Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Early term_6-24 months          Maternal             Control           1.1184211   0.7569698    1.6524644
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term_6-24 months   Maternal             Control           0.9345127   0.7946864    1.0989416
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm_6-24 months             Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm_6-24 months             Maternal             Control           1.2410119   0.8711799    1.7678445
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term_6-24 months          Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term_6-24 months          Maternal             Control           1.0288947   0.8159260    1.2974514


### Parameter: PAR


agecat        studyid                    country                        intXgagebrth                    intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  ------------------------------  -------------------  ---------------  -----------  -----------  -----------
0-6 months    iLiNS_DYADM_LNS            MALAWI                         Full or late term_0-6 months    Control              NA                -0.0498084   -0.1515648    0.0519480
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Preterm_0-6 months              Control              NA                 0.0038961   -0.0234532    0.0312454
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Early term_0-6 months           Control              NA                -0.1046154   -0.2118036    0.0025728
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term_0-6 months    Control              NA                 0.0015347   -0.0199666    0.0230360
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm_0-6 months              Control              NA                -0.0046440   -0.0708957    0.0616078
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term_0-6 months           Control              NA                 0.0000980   -0.0401519    0.0403480
0-6 months    ki1119695-PROBIT           BELARUS                        Full or late term_0-6 months    Control              NA                -0.0069694   -0.0200496    0.0061109
0-6 months    ki1119695-PROBIT           BELARUS                        Preterm_0-6 months              Control              NA                -0.0044357   -0.0880329    0.0791615
0-6 months    ki1119695-PROBIT           BELARUS                        Early term_0-6 months           Control              NA                 0.0008075   -0.0131778    0.0147929
0-6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term_0-6 months    Control              NA                 0.0718447   -0.0326528    0.1763422
0-6 months    ki1135781-COHORTS          GUATEMALA                      Preterm_0-6 months              Control              NA                 0.0597826   -0.0812499    0.2008151
0-6 months    ki1135781-COHORTS          GUATEMALA                      Early term_0-6 months           Control              NA                -0.0909091   -0.2022322    0.0204140
0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Full or late term_0-6 months    Control              NA                -0.0653595   -0.2110548    0.0803358
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term_0-6 months    Control              NA                -0.0131984   -0.0236708   -0.0027260
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm_0-6 months              Control              NA                -0.0295932   -0.0515422   -0.0076442
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term_0-6 months           Control              NA                -0.0282169   -0.0438931   -0.0125406
6-24 months   iLiNS_DYADM_LNS            MALAWI                         Full or late term_6-24 months   Control              NA                 0.0133145   -0.0327791    0.0594082
6-24 months   iLiNS_DYADM_LNS            MALAWI                         Preterm_6-24 months             Control              NA                 0.0982143   -0.0399217    0.2363503
6-24 months   iLiNS_DYADM_LNS            MALAWI                         Early term_6-24 months          Control              NA                 0.0096608   -0.0694852    0.0888069
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Full or late term_6-24 months   Control              NA                -0.1111111   -0.3784346    0.1562123
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Preterm_6-24 months             Control              NA                -0.0027302   -0.0691297    0.0636694
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Early term_6-24 months          Control              NA                -0.0842391   -0.2409561    0.0724778
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term_6-24 months   Control              NA                -0.0036958   -0.0440230    0.0366315
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm_6-24 months             Control              NA                 0.0339628   -0.0503966    0.1183221
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term_6-24 months          Control              NA                 0.0059524   -0.0586745    0.0705793
6-24 months   ki1119695-PROBIT           BELARUS                        Full or late term_6-24 months   Control              NA                -0.0041376   -0.0189191    0.0106440
6-24 months   ki1119695-PROBIT           BELARUS                        Preterm_6-24 months             Control              NA                -0.0381006   -0.0774621    0.0012609
6-24 months   ki1119695-PROBIT           BELARUS                        Early term_6-24 months          Control              NA                -0.0094435   -0.0251786    0.0062916
6-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term_6-24 months   Control              NA                -0.0826372   -0.1937271    0.0284528
6-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm_6-24 months             Control              NA                -0.0808081   -0.3306168    0.1690006
6-24 months   ki1135781-COHORTS          GUATEMALA                      Early term_6-24 months          Control              NA                -0.1695804   -0.3245408   -0.0146200
6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Full or late term_6-24 months   Control              NA                 0.0183655   -0.0352677    0.0719987
6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Preterm_6-24 months             Control              NA                 0.1654412   -0.0042681    0.3351505
6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Early term_6-24 months          Control              NA                 0.0266010   -0.0644288    0.1176307
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term_6-24 months   Control              NA                -0.0062010   -0.0211154    0.0087134
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm_6-24 months             Control              NA                 0.0178329   -0.0117039    0.0473697
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term_6-24 months          Control              NA                 0.0027044   -0.0192820    0.0246908


### Parameter: PAF


agecat        studyid                    country                        intXgagebrth                    intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  ------------------------------  -------------------  ---------------  -----------  -----------  -----------
0-6 months    iLiNS_DYADM_LNS            MALAWI                         Full or late term_0-6 months    Control              NA                -0.2888889   -1.0029934    0.1706241
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Preterm_0-6 months              Control              NA                 0.0136364   -0.0873353    0.1052316
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Early term_0-6 months           Control              NA                -0.3736264   -0.9903239    0.0519888
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term_0-6 months    Control              NA                 0.0279924   -0.4550312    0.3506677
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm_0-6 months              Control              NA                -0.0365854   -0.7149336    0.3734398
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term_0-6 months           Control              NA                 0.0012433   -0.6651753    0.4009549
0-6 months    ki1119695-PROBIT           BELARUS                        Full or late term_0-6 months    Control              NA                -0.1296769   -0.3918049    0.0830827
0-6 months    ki1119695-PROBIT           BELARUS                        Preterm_0-6 months              Control              NA                -0.0292963   -0.7699796    0.4014333
0-6 months    ki1119695-PROBIT           BELARUS                        Early term_0-6 months           Control              NA                 0.0113722   -0.2067678    0.1900804
0-6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term_0-6 months    Control              NA                 0.2642857   -0.2335911    0.5612197
0-6 months    ki1135781-COHORTS          GUATEMALA                      Preterm_0-6 months              Control              NA                 0.1375000   -0.2594380    0.4093348
0-6 months    ki1135781-COHORTS          GUATEMALA                      Early term_0-6 months           Control              NA                -0.2727273   -0.6594846    0.0238929
0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Full or late term_0-6 months    Control              NA                -0.4166667   -1.6937219    0.2549549
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term_0-6 months    Control              NA                -0.0685065   -0.1244366   -0.0153585
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm_0-6 months              Control              NA                -0.0755101   -0.1336167   -0.0203819
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term_0-6 months           Control              NA                -0.1032980   -0.1625127   -0.0470995
6-24 months   iLiNS_DYADM_LNS            MALAWI                         Full or late term_6-24 months   Control              NA                 0.0523183   -0.1471698    0.2171163
6-24 months   iLiNS_DYADM_LNS            MALAWI                         Preterm_6-24 months             Control              NA                 0.3437500   -0.3122437    0.6718109
6-24 months   iLiNS_DYADM_LNS            MALAWI                         Early term_6-24 months          Control              NA                 0.0274052   -0.2251460    0.2278956
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Full or late term_6-24 months   Control              NA                -0.1666667   -0.7325477    0.2143875
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Preterm_6-24 months             Control              NA                -0.0063142   -0.1723336    0.1361944
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Early term_6-24 months          Control              NA                -0.1925466   -0.6515204    0.1388739
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term_6-24 months   Control              NA                -0.0215620   -0.2861284    0.1885811
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm_6-24 months             Control              NA                 0.1606700   -0.3486274    0.4776356
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term_6-24 months          Control              NA                 0.0303030   -0.3613667    0.3092881
6-24 months   ki1119695-PROBIT           BELARUS                        Full or late term_6-24 months   Control              NA                -0.0729109   -0.3556562    0.1508630
6-24 months   ki1119695-PROBIT           BELARUS                        Preterm_6-24 months             Control              NA                -0.5755915   -1.2377683   -0.1093591
6-24 months   ki1119695-PROBIT           BELARUS                        Early term_6-24 months          Control              NA                -0.1517185   -0.4204783    0.0661908
6-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term_6-24 months   Control              NA                -0.2300440   -0.5844377    0.0450819
6-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm_6-24 months             Control              NA                -0.2222222   -1.1521419    0.3058882
6-24 months   ki1135781-COHORTS          GUATEMALA                      Early term_6-24 months          Control              NA                -0.3040752   -0.6410670   -0.0362845
6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Full or late term_6-24 months   Control              NA                 0.0707612   -0.1605587    0.2559750
6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Preterm_6-24 months             Control              NA                 0.4687500   -0.2625610    0.7764650
6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Early term_6-24 months          Control              NA                 0.0720000   -0.2102320    0.2884141
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term_6-24 months   Control              NA                -0.0353984   -0.1238054    0.0460539
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm_6-24 months             Control              NA                 0.1030888   -0.0828789    0.2571194
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term_6-24 months          Control              NA                 0.0143557   -0.1096820    0.1245287
