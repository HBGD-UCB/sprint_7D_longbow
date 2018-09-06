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

**Outcome Variable:** y_rate_haz

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

agecat         studyid                    country                        gagebrth             n_cell       n
-------------  -------------------------  -----------------------------  ------------------  -------  ------
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term        53      86
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                  11      86
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Early term               22      86
0-3 months     ki1000108-IRC              INDIA                          Full or late term       230     359
0-3 months     ki1000108-IRC              INDIA                          Preterm                  36     359
0-3 months     ki1000108-IRC              INDIA                          Early term               93     359
0-3 months     ki1000109-EE               PAKISTAN                       Full or late term        40     594
0-3 months     ki1000109-EE               PAKISTAN                       Preterm                 384     594
0-3 months     ki1000109-EE               PAKISTAN                       Early term              170     594
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Full or late term        19    1161
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Preterm                1061    1161
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Early term               81    1161
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term       162     720
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                 252     720
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Early term              306     720
0-3 months     ki1101329-Keneba           GAMBIA                         Full or late term       598    1232
0-3 months     ki1101329-Keneba           GAMBIA                         Preterm                 183    1232
0-3 months     ki1101329-Keneba           GAMBIA                         Early term              451    1232
0-3 months     ki1119695-PROBIT           BELARUS                        Full or late term      6507   12745
0-3 months     ki1119695-PROBIT           BELARUS                        Preterm                 432   12745
0-3 months     ki1119695-PROBIT           BELARUS                        Early term             5806   12745
0-3 months     ki1135781-COHORTS          GUATEMALA                      Full or late term       304     551
0-3 months     ki1135781-COHORTS          GUATEMALA                      Preterm                  87     551
0-3 months     ki1135781-COHORTS          GUATEMALA                      Early term              160     551
0-3 months     ki1135781-COHORTS          INDIA                          Full or late term       561    1274
0-3 months     ki1135781-COHORTS          INDIA                          Preterm                 279    1274
0-3 months     ki1135781-COHORTS          INDIA                          Early term              434    1274
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Full or late term     17560   33724
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Preterm                6740   33724
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Early term             9424   33724
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term       174     288
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                  44     288
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Early term               70     288
3-6 months     ki1000108-IRC              INDIA                          Full or late term       242     379
3-6 months     ki1000108-IRC              INDIA                          Preterm                  42     379
3-6 months     ki1000108-IRC              INDIA                          Early term               95     379
3-6 months     ki1000109-EE               PAKISTAN                       Full or late term        40     662
3-6 months     ki1000109-EE               PAKISTAN                       Preterm                 424     662
3-6 months     ki1000109-EE               PAKISTAN                       Early term              198     662
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Full or late term        19    1116
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Preterm                1016    1116
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Early term               81    1116
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term       152     695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                 246     695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Early term              297     695
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term       964    1562
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                 239    1562
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term              359    1562
3-6 months     ki1101329-Keneba           GAMBIA                         Full or late term       447     949
3-6 months     ki1101329-Keneba           GAMBIA                         Preterm                 140     949
3-6 months     ki1101329-Keneba           GAMBIA                         Early term              362     949
3-6 months     ki1119695-PROBIT           BELARUS                        Full or late term      6763   13309
3-6 months     ki1119695-PROBIT           BELARUS                        Preterm                 463   13309
3-6 months     ki1119695-PROBIT           BELARUS                        Early term             6083   13309
3-6 months     ki1135781-COHORTS          GUATEMALA                      Full or late term       338     626
3-6 months     ki1135781-COHORTS          GUATEMALA                      Preterm                 106     626
3-6 months     ki1135781-COHORTS          GUATEMALA                      Early term              182     626
3-6 months     ki1135781-COHORTS          INDIA                          Full or late term       554    1280
3-6 months     ki1135781-COHORTS          INDIA                          Preterm                 289    1280
3-6 months     ki1135781-COHORTS          INDIA                          Early term              437    1280
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Full or late term     10150   19038
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Preterm                3594   19038
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Early term             5294   19038
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term       187     303
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                  45     303
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term               71     303
6-12 months    ki1000108-IRC              INDIA                          Full or late term       244     381
6-12 months    ki1000108-IRC              INDIA                          Preterm                  42     381
6-12 months    ki1000108-IRC              INDIA                          Early term               95     381
6-12 months    ki1000109-EE               PAKISTAN                       Full or late term         0       8
6-12 months    ki1000109-EE               PAKISTAN                       Preterm                   8       8
6-12 months    ki1000109-EE               PAKISTAN                       Early term                0       8
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Full or late term        20    1130
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Preterm                1033    1130
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Early term               77    1130
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term       138     676
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                 242     676
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term              296     676
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term       642    1018
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                 142    1018
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term              234    1018
6-12 months    ki1101329-Keneba           GAMBIA                         Full or late term       410     902
6-12 months    ki1101329-Keneba           GAMBIA                         Preterm                 146     902
6-12 months    ki1101329-Keneba           GAMBIA                         Early term              346     902
6-12 months    ki1119695-PROBIT           BELARUS                        Full or late term      6524   12896
6-12 months    ki1119695-PROBIT           BELARUS                        Preterm                 447   12896
6-12 months    ki1119695-PROBIT           BELARUS                        Early term             5925   12896
6-12 months    ki1135781-COHORTS          GUATEMALA                      Full or late term       359     651
6-12 months    ki1135781-COHORTS          GUATEMALA                      Preterm                 105     651
6-12 months    ki1135781-COHORTS          GUATEMALA                      Early term              187     651
6-12 months    ki1135781-COHORTS          INDIA                          Full or late term       473    1104
6-12 months    ki1135781-COHORTS          INDIA                          Preterm                 247    1104
6-12 months    ki1135781-COHORTS          INDIA                          Early term              384    1104
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term       919    2398
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Preterm                 515    2398
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Early term              964    2398
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term      8014   15118
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm                2906   15118
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term             4198   15118
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term       187     304
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                  46     304
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term               71     304
12-24 months   ki1000108-IRC              INDIA                          Full or late term       240     377
12-24 months   ki1000108-IRC              INDIA                          Preterm                  42     377
12-24 months   ki1000108-IRC              INDIA                          Early term               95     377
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term        72     495
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                 202     495
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term              221     495
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term         2       2
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                   0       2
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                0       2
12-24 months   ki1101329-Keneba           GAMBIA                         Full or late term       388     818
12-24 months   ki1101329-Keneba           GAMBIA                         Preterm                 122     818
12-24 months   ki1101329-Keneba           GAMBIA                         Early term              308     818
12-24 months   ki1119695-PROBIT           BELARUS                        Full or late term      1264    2533
12-24 months   ki1119695-PROBIT           BELARUS                        Preterm                  87    2533
12-24 months   ki1119695-PROBIT           BELARUS                        Early term             1182    2533
12-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term       366     641
12-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm                 103     641
12-24 months   ki1135781-COHORTS          GUATEMALA                      Early term              172     641
12-24 months   ki1135781-COHORTS          INDIA                          Full or late term       457    1065
12-24 months   ki1135781-COHORTS          INDIA                          Preterm                 243    1065
12-24 months   ki1135781-COHORTS          INDIA                          Early term              365    1065
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term       862    2242
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm                 481    2242
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term              899    2242
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term      3741    7151
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                1456    7151
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term             1954    7151


The following strata were considered:

* agecat: 0-3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-3 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-3 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-3 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-3 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 12-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 12-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 12-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 12-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 12-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 3-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 3-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 3-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-12 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-12 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-12 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-12 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-12 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-12 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-12 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 6-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 12-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/b3043ac9-a7b0-49fc-bc86-74b7f87f1177/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/b3043ac9-a7b0-49fc-bc86-74b7f87f1177/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0844691   -0.2186989    0.0497607
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                -0.1440471   -0.4983346    0.2102404
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                 0.0238416   -0.1519938    0.1996769
0-3 months     ki1000108-IRC              INDIA                          Full or late term    NA                -0.2255486   -0.2956926   -0.1554046
0-3 months     ki1000108-IRC              INDIA                          Preterm              NA                -0.3714389   -0.5115197   -0.2313581
0-3 months     ki1000108-IRC              INDIA                          Early term           NA                -0.4184486   -0.5126058   -0.3242915
0-3 months     ki1000109-EE               PAKISTAN                       Full or late term    NA                -0.4103750   -0.5922430   -0.2285070
0-3 months     ki1000109-EE               PAKISTAN                       Preterm              NA                -0.4163141   -0.4621288   -0.3704994
0-3 months     ki1000109-EE               PAKISTAN                       Early term           NA                -0.3662243   -0.4515149   -0.2809337
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Full or late term    NA                -0.0073727   -0.1404901    0.1257447
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Preterm              NA                 0.0141607   -0.0019954    0.0303169
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Early term           NA                -0.0096698   -0.0662196    0.0468801
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                -0.0951623   -0.1295755   -0.0607490
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                -0.0991797   -0.1264468   -0.0719125
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                -0.1521217   -0.1781888   -0.1260545
0-3 months     ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.3065177   -0.3391856   -0.2738498
0-3 months     ki1101329-Keneba           GAMBIA                         Preterm              NA                -0.1680650   -0.2291333   -0.1069968
0-3 months     ki1101329-Keneba           GAMBIA                         Early term           NA                -0.2917288   -0.3241841   -0.2592734
0-3 months     ki1119695-PROBIT           BELARUS                        Full or late term    NA                -0.4572223   -0.5153175   -0.3991271
0-3 months     ki1119695-PROBIT           BELARUS                        Preterm              NA                -0.3542874   -0.4379144   -0.2706603
0-3 months     ki1119695-PROBIT           BELARUS                        Early term           NA                -0.4191717   -0.4818533   -0.3564901
0-3 months     ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                -0.5284242   -0.5605743   -0.4962742
0-3 months     ki1135781-COHORTS          GUATEMALA                      Preterm              NA                -0.4534454   -0.5211626   -0.3857282
0-3 months     ki1135781-COHORTS          GUATEMALA                      Early term           NA                -0.5243155   -0.5687241   -0.4799068
0-3 months     ki1135781-COHORTS          INDIA                          Full or late term    NA                -0.0769598   -0.0987059   -0.0552138
0-3 months     ki1135781-COHORTS          INDIA                          Preterm              NA                -0.0471884   -0.0771911   -0.0171858
0-3 months     ki1135781-COHORTS          INDIA                          Early term           NA                -0.0403393   -0.0664385   -0.0142401
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0493621    0.0427951    0.0559290
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                 0.1131048    0.1026695    0.1235401
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                 0.0939572    0.0850443    0.1028701
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.1538266   -0.2190038   -0.0886495
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                -0.0458103   -0.1563819    0.0647612
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                -0.0954865   -0.1650152   -0.0259579
3-6 months     ki1000108-IRC              INDIA                          Full or late term    NA                -0.0655865   -0.1026605   -0.0285125
3-6 months     ki1000108-IRC              INDIA                          Preterm              NA                -0.0281134   -0.1105113    0.0542844
3-6 months     ki1000108-IRC              INDIA                          Early term           NA                -0.0063137   -0.0671349    0.0545074
3-6 months     ki1000109-EE               PAKISTAN                       Full or late term    NA                 0.0368568   -0.0477586    0.1214723
3-6 months     ki1000109-EE               PAKISTAN                       Preterm              NA                 0.0954915    0.0596658    0.1313173
3-6 months     ki1000109-EE               PAKISTAN                       Early term           NA                 0.0364057   -0.0095337    0.0823450
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Full or late term    NA                -0.0342896   -0.1869208    0.1183417
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Preterm              NA                -0.0111841   -0.0356026    0.0132344
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Early term           NA                -0.1018389   -0.1742506   -0.0294272
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                -0.0133211   -0.0421681    0.0155258
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                 0.0858112    0.0608768    0.1107456
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                -0.0037900   -0.0266389    0.0190588
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.1003429   -0.1209418   -0.0797439
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                -0.0749114   -0.1170062   -0.0328166
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                -0.0735343   -0.1074425   -0.0396260
3-6 months     ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0652079   -0.0977030   -0.0327129
3-6 months     ki1101329-Keneba           GAMBIA                         Preterm              NA                 0.0117772   -0.0389121    0.0624664
3-6 months     ki1101329-Keneba           GAMBIA                         Early term           NA                -0.0332136   -0.0630591   -0.0033681
3-6 months     ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0318004    0.0106357    0.0529650
3-6 months     ki1119695-PROBIT           BELARUS                        Preterm              NA                 0.1163723    0.0710303    0.1617142
3-6 months     ki1119695-PROBIT           BELARUS                        Early term           NA                 0.0591667    0.0391359    0.0791975
3-6 months     ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                -0.1002421   -0.1223122   -0.0781719
3-6 months     ki1135781-COHORTS          GUATEMALA                      Preterm              NA                -0.1099684   -0.1566952   -0.0632416
3-6 months     ki1135781-COHORTS          GUATEMALA                      Early term           NA                -0.0829082   -0.1109806   -0.0548358
3-6 months     ki1135781-COHORTS          INDIA                          Full or late term    NA                -0.0862596   -0.1044678   -0.0680514
3-6 months     ki1135781-COHORTS          INDIA                          Preterm              NA                -0.0394554   -0.0649224   -0.0139884
3-6 months     ki1135781-COHORTS          INDIA                          Early term           NA                -0.0508152   -0.0717760   -0.0298544
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -0.0311516   -0.0386681   -0.0236352
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                 0.0449553    0.0337087    0.0562019
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                 0.0035382   -0.0059749    0.0130514
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.1060566   -0.1318982   -0.0802151
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                -0.0937551   -0.1326213   -0.0548888
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                -0.1280027   -0.1668821   -0.0891232
6-12 months    ki1000108-IRC              INDIA                          Full or late term    NA                -0.0291179   -0.0451856   -0.0130502
6-12 months    ki1000108-IRC              INDIA                          Preterm              NA                 0.0025298   -0.0267494    0.0318091
6-12 months    ki1000108-IRC              INDIA                          Early term           NA                -0.0158335   -0.0375586    0.0058916
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Full or late term    NA                -0.1207988   -0.1826537   -0.0589439
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Preterm              NA                -0.0848243   -0.0903755   -0.0792731
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Early term           NA                -0.1013460   -0.1200862   -0.0826058
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                -0.0487499   -0.0625799   -0.0349198
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                -0.0329006   -0.0440360   -0.0217651
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                -0.0270695   -0.0374323   -0.0167067
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0570797   -0.0677316   -0.0464278
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                -0.0695404   -0.0918763   -0.0472044
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                -0.0482195   -0.0677976   -0.0286413
6-12 months    ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0746963   -0.0869338   -0.0624588
6-12 months    ki1101329-Keneba           GAMBIA                         Preterm              NA                -0.0820164   -0.0981595   -0.0658733
6-12 months    ki1101329-Keneba           GAMBIA                         Early term           NA                -0.0571011   -0.0705140   -0.0436882
6-12 months    ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0348600    0.0168330    0.0528871
6-12 months    ki1119695-PROBIT           BELARUS                        Preterm              NA                 0.0864172    0.0587959    0.1140386
6-12 months    ki1119695-PROBIT           BELARUS                        Early term           NA                 0.0475531    0.0311554    0.0639507
6-12 months    ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                -0.1134543   -0.1240025   -0.1029061
6-12 months    ki1135781-COHORTS          GUATEMALA                      Preterm              NA                -0.0899605   -0.1088471   -0.0710739
6-12 months    ki1135781-COHORTS          GUATEMALA                      Early term           NA                -0.1076297   -0.1208339   -0.0944255
6-12 months    ki1135781-COHORTS          INDIA                          Full or late term    NA                -0.0912036   -0.1018644   -0.0805428
6-12 months    ki1135781-COHORTS          INDIA                          Preterm              NA                -0.0781912   -0.0927802   -0.0636022
6-12 months    ki1135781-COHORTS          INDIA                          Early term           NA                -0.0848407   -0.0981174   -0.0715639
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                -0.1020500   -0.1099499   -0.0941501
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                -0.0908741   -0.1016813   -0.0800669
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Early term           NA                -0.1024467   -0.1104960   -0.0943974
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -0.0824070   -0.0865239   -0.0782902
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                -0.0606412   -0.0667800   -0.0545024
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                -0.0754958   -0.0811196   -0.0698719
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0408056   -0.0530697   -0.0285415
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                -0.0471430   -0.0706546   -0.0236314
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                -0.0559967   -0.0746594   -0.0373339
12-24 months   ki1000108-IRC              INDIA                          Full or late term    NA                -0.0329514   -0.0423584   -0.0235445
12-24 months   ki1000108-IRC              INDIA                          Preterm              NA                -0.0318989   -0.0451966   -0.0186012
12-24 months   ki1000108-IRC              INDIA                          Early term           NA                -0.0329198   -0.0423626   -0.0234769
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                -0.0186845   -0.0278886   -0.0094805
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                 0.0025704   -0.0037168    0.0088576
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                -0.0081231   -0.0134595   -0.0027868
12-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0276097   -0.0338291   -0.0213902
12-24 months   ki1101329-Keneba           GAMBIA                         Preterm              NA                -0.0241483   -0.0310971   -0.0171996
12-24 months   ki1101329-Keneba           GAMBIA                         Early term           NA                -0.0152358   -0.0217558   -0.0087158
12-24 months   ki1119695-PROBIT           BELARUS                        Full or late term    NA                -0.0439090   -0.0689011   -0.0189168
12-24 months   ki1119695-PROBIT           BELARUS                        Preterm              NA                -0.0332571   -0.0706073    0.0040931
12-24 months   ki1119695-PROBIT           BELARUS                        Early term           NA                -0.0429279   -0.0631611   -0.0226946
12-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                -0.0389545   -0.0442479   -0.0336610
12-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm              NA                -0.0264699   -0.0355263   -0.0174136
12-24 months   ki1135781-COHORTS          GUATEMALA                      Early term           NA                -0.0267770   -0.0338182   -0.0197357
12-24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                -0.0339288   -0.0385157   -0.0293419
12-24 months   ki1135781-COHORTS          INDIA                          Preterm              NA                -0.0324901   -0.0389725   -0.0260077
12-24 months   ki1135781-COHORTS          INDIA                          Early term           NA                -0.0361307   -0.0416154   -0.0306459
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                -0.0570957   -0.0611022   -0.0530892
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                -0.0579866   -0.0631358   -0.0528375
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term           NA                -0.0580309   -0.0619331   -0.0541286
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -0.0226076   -0.0252843   -0.0199309
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                -0.0156408   -0.0206088   -0.0106727
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                -0.0149156   -0.0181629   -0.0116683


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0645622   -0.1717754    0.0426511
0-3 months     ki1000108-IRC              INDIA                          NA                   NA                -0.2552533   -0.3120978   -0.1984087
0-3 months     ki1000109-EE               PAKISTAN                       NA                   NA                -0.3938516   -0.4364614   -0.3512419
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                 0.0124065   -0.0035539    0.0283669
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.1220821   -0.1402761   -0.1038881
0-3 months     ki1101329-Keneba           GAMBIA                         NA                   NA                -0.2869811   -0.3108317   -0.2631304
0-3 months     ki1119695-PROBIT           BELARUS                        NA                   NA                -0.4375900   -0.4969173   -0.3782626
0-3 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.5349474   -0.5599715   -0.5099233
0-3 months     ki1135781-COHORTS          INDIA                          NA                   NA                -0.0630591   -0.0790628   -0.0470554
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                 0.0732196    0.0679849    0.0784544
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0963982   -0.1464314   -0.0463649
3-6 months     ki1000108-IRC              INDIA                          NA                   NA                -0.0533200   -0.0841764   -0.0224636
3-6 months     ki1000109-EE               PAKISTAN                       NA                   NA                 0.0701161    0.0419135    0.0983187
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0183559   -0.0366653   -0.0000465
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0267740    0.0099602    0.0435879
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0857474   -0.1027530   -0.0687418
3-6 months     ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0387574   -0.0597399   -0.0177750
3-6 months     ki1119695-PROBIT           BELARUS                        NA                   NA                 0.0470780    0.0278572    0.0662989
3-6 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0990042   -0.1156213   -0.0823871
3-6 months     ki1135781-COHORTS          INDIA                          NA                   NA                -0.0614636   -0.0743514   -0.0485759
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0072058   -0.0128771   -0.0015345
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0976775   -0.1183059   -0.0770491
6-12 months    ki1000108-IRC              INDIA                          NA                   NA                -0.0262272   -0.0395135   -0.0129410
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0866765   -0.0910798   -0.0822732
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0315658   -0.0388594   -0.0242722
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0605003   -0.0699708   -0.0510298
6-12 months    ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0633234   -0.0720864   -0.0545604
6-12 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.0422873    0.0257506    0.0588239
6-12 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.1074247   -0.1156062   -0.0992433
6-12 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.0891165   -0.0967571   -0.0814759
6-12 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.0997523   -0.1048942   -0.0946103
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0767730   -0.0799829   -0.0735630
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0466658   -0.0572396   -0.0360921
12-24 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0317691   -0.0390870   -0.0244512
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0057326   -0.0097260   -0.0017391
12-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0203627   -0.0246735   -0.0160519
12-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                -0.0430497   -0.0603171   -0.0257823
12-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0331016   -0.0373272   -0.0288759
12-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -0.0339532   -0.0372308   -0.0306756
12-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.0576585   -0.0601967   -0.0551203
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0193495   -0.0213977   -0.0173013


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level         estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ------------------  -----------  -----------  -----------
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    -0.0595780   -0.4380920    0.3189360
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term     0.1083107   -0.1124774    0.3290987
0-3 months     ki1000108-IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          Preterm              Full or late term    -0.1458903   -0.3024070    0.0106264
0-3 months     ki1000108-IRC              INDIA                          Early term           Full or late term    -0.1929001   -0.3102923   -0.0755078
0-3 months     ki1000109-EE               PAKISTAN                       Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE               PAKISTAN                       Preterm              Full or late term    -0.0059391   -0.1934878    0.1816096
0-3 months     ki1000109-EE               PAKISTAN                       Early term           Full or late term     0.0441507   -0.1564731    0.2447745
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Preterm              Full or late term     0.0215334   -0.1171526    0.1602194
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Early term           Full or late term    -0.0022971   -0.1555424    0.1509483
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term    -0.0040174   -0.0474733    0.0394385
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term    -0.0569594   -0.0999336   -0.0139852
0-3 months     ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         Preterm              Full or late term     0.1384527    0.0698412    0.2070642
0-3 months     ki1101329-Keneba           GAMBIA                         Early term           Full or late term     0.0147889   -0.0303764    0.0599543
0-3 months     ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        Preterm              Full or late term     0.1029349    0.0395887    0.1662811
0-3 months     ki1119695-PROBIT           BELARUS                        Early term           Full or late term     0.0380505    0.0076046    0.0684965
0-3 months     ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term     0.0749788   -0.0000089    0.1499665
0-3 months     ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term     0.0041088   -0.0506868    0.0589043
0-3 months     ki1135781-COHORTS          INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          Preterm              Full or late term     0.0297714   -0.0067080    0.0662508
0-3 months     ki1135781-COHORTS          INDIA                          Early term           Full or late term     0.0366206    0.0031362    0.0701049
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term     0.0637427    0.0518047    0.0756807
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term     0.0445952    0.0342693    0.0549211
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term     0.1080163   -0.0203423    0.2363749
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term     0.0583401   -0.0369520    0.1536322
3-6 months     ki1000108-IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          Preterm              Full or late term     0.0374731   -0.0528008    0.1277469
3-6 months     ki1000108-IRC              INDIA                          Early term           Full or late term     0.0592728   -0.0116233    0.1301689
3-6 months     ki1000109-EE               PAKISTAN                       Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE               PAKISTAN                       Preterm              Full or late term     0.0586347   -0.0329489    0.1502183
3-6 months     ki1000109-EE               PAKISTAN                       Early term           Full or late term    -0.0004511   -0.0965673    0.0956650
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Preterm              Full or late term     0.0231054   -0.1305794    0.1767903
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Early term           Full or late term    -0.0675493   -0.2219916    0.0868929
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term     0.0991323    0.0614943    0.1367704
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term     0.0095311   -0.0263982    0.0454604
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term     0.0254315   -0.0211273    0.0719903
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term     0.0268086   -0.0125280    0.0661452
3-6 months     ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         Preterm              Full or late term     0.0769851    0.0168230    0.1371472
3-6 months     ki1101329-Keneba           GAMBIA                         Early term           Full or late term     0.0319944   -0.0120323    0.0760210
3-6 months     ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        Preterm              Full or late term     0.0845719    0.0389445    0.1301993
3-6 months     ki1119695-PROBIT           BELARUS                        Early term           Full or late term     0.0273663    0.0122985    0.0424342
3-6 months     ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term    -0.0097263   -0.0614032    0.0419505
3-6 months     ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term     0.0173339   -0.0183636    0.0530314
3-6 months     ki1135781-COHORTS          INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          Preterm              Full or late term     0.0468042    0.0156929    0.0779154
3-6 months     ki1135781-COHORTS          INDIA                          Early term           Full or late term     0.0354443    0.0080578    0.0628309
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term     0.0761069    0.0634392    0.0887747
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term     0.0346899    0.0227865    0.0465932
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term     0.0123016   -0.0344166    0.0590197
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term    -0.0219460   -0.0685778    0.0246858
6-12 months    ki1000108-IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA                          Preterm              Full or late term     0.0316477   -0.0012501    0.0645456
6-12 months    ki1000108-IRC              INDIA                          Early term           Full or late term     0.0132844   -0.0131718    0.0397406
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Preterm              Full or late term     0.0359745   -0.0287521    0.1007012
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Early term           Full or late term     0.0194528   -0.0397705    0.0786761
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term     0.0158493   -0.0017005    0.0333991
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term     0.0216804    0.0046072    0.0387536
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    -0.0124606   -0.0370123    0.0120911
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term     0.0088603   -0.0130413    0.0307618
6-12 months    ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6-12 months    ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    -0.0073201   -0.0273192    0.0126790
6-12 months    ki1101329-Keneba           GAMBIA                         Early term           Full or late term     0.0175952   -0.0004349    0.0356253
6-12 months    ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS                        Preterm              Full or late term     0.0515572    0.0282176    0.0748968
6-12 months    ki1119695-PROBIT           BELARUS                        Early term           Full or late term     0.0126930    0.0010418    0.0243443
6-12 months    ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term     0.0234938    0.0023286    0.0446590
6-12 months    ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term     0.0058246   -0.0106809    0.0223300
6-12 months    ki1135781-COHORTS          INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          INDIA                          Preterm              Full or late term     0.0130124   -0.0048186    0.0308434
6-12 months    ki1135781-COHORTS          INDIA                          Early term           Full or late term     0.0063630   -0.0104111    0.0231370
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term     0.0111759   -0.0021242    0.0244760
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    -0.0003967   -0.0115548    0.0107613
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term     0.0217658    0.0148955    0.0286362
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term     0.0069113    0.0001664    0.0136561
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    -0.0063374   -0.0326130    0.0199381
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term    -0.0151911   -0.0373587    0.0069765
12-24 months   ki1000108-IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA                          Preterm              Full or late term     0.0010526   -0.0147151    0.0168203
12-24 months   ki1000108-IRC              INDIA                          Early term           Full or late term     0.0000317   -0.0128184    0.0128817
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term     0.0212549    0.0101152    0.0323946
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term     0.0105614   -0.0000846    0.0212074
12-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
12-24 months   ki1101329-Keneba           GAMBIA                         Preterm              Full or late term     0.0034613   -0.0057236    0.0126462
12-24 months   ki1101329-Keneba           GAMBIA                         Early term           Full or late term     0.0123739    0.0034516    0.0212962
12-24 months   ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
12-24 months   ki1119695-PROBIT           BELARUS                        Preterm              Full or late term     0.0106519   -0.0367710    0.0580747
12-24 months   ki1119695-PROBIT           BELARUS                        Early term           Full or late term     0.0009811   -0.0280587    0.0300209
12-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term     0.0124845    0.0021262    0.0228429
12-24 months   ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term     0.0121775    0.0035732    0.0207817
12-24 months   ki1135781-COHORTS          INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          INDIA                          Preterm              Full or late term     0.0014387   -0.0063939    0.0092713
12-24 months   ki1135781-COHORTS          INDIA                          Early term           Full or late term    -0.0022019   -0.0092204    0.0048167
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    -0.0008909   -0.0073409    0.0055590
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    -0.0009352   -0.0064692    0.0045989
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term     0.0069668    0.0014294    0.0125043
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term     0.0076920    0.0034921    0.0118919
