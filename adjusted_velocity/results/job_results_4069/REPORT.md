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

**Outcome Variable:** y_rate_len

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
![](/tmp/3c3af8d7-39a6-4c22-a894-15d979000cf5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/3c3af8d7-39a6-4c22-a894-15d979000cf5/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                3.5261960   3.2618413   3.7905508
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                3.3540586   2.5992486   4.1088685
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                3.6669104   3.2868339   4.0469869
0-3 months     ki1000108-IRC              INDIA                          Full or late term    NA                3.2378300   3.0942602   3.3813997
0-3 months     ki1000108-IRC              INDIA                          Preterm              NA                2.9301132   2.6372368   3.2229896
0-3 months     ki1000108-IRC              INDIA                          Early term           NA                2.9034892   2.7095063   3.0974720
0-3 months     ki1000109-EE               PAKISTAN                       Full or late term    NA                2.6622688   2.3158050   3.0087327
0-3 months     ki1000109-EE               PAKISTAN                       Preterm              NA                2.5936090   2.5002853   2.6869327
0-3 months     ki1000109-EE               PAKISTAN                       Early term           NA                2.7462770   2.5860604   2.9064936
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Full or late term    NA                3.5758701   3.2408088   3.9109314
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Preterm              NA                3.6039098   3.5734008   3.6344188
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Early term           NA                3.6264819   3.5138162   3.7391476
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                3.4344144   3.3583930   3.5104359
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                3.3314603   3.2727210   3.3901996
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                3.2592864   3.2025139   3.3160589
0-3 months     ki1101329-Keneba           GAMBIA                         Full or late term    NA                3.1201412   3.0545781   3.1857043
0-3 months     ki1101329-Keneba           GAMBIA                         Preterm              NA                3.3211874   3.2012616   3.4411133
0-3 months     ki1101329-Keneba           GAMBIA                         Early term           NA                3.1385121   3.0732725   3.2037517
0-3 months     ki1119695-PROBIT           BELARUS                        Full or late term    NA                2.8076121   2.6959415   2.9192827
0-3 months     ki1119695-PROBIT           BELARUS                        Preterm              NA                2.9434894   2.7748187   3.1121601
0-3 months     ki1119695-PROBIT           BELARUS                        Early term           NA                2.8631043   2.7434657   2.9827429
0-3 months     ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                2.6252549   2.5601146   2.6903953
0-3 months     ki1135781-COHORTS          GUATEMALA                      Preterm              NA                2.6909221   2.5547835   2.8270607
0-3 months     ki1135781-COHORTS          GUATEMALA                      Early term           NA                2.5973778   2.5051009   2.6896547
0-3 months     ki1135781-COHORTS          INDIA                          Full or late term    NA                3.5475713   3.5008075   3.5943352
0-3 months     ki1135781-COHORTS          INDIA                          Preterm              NA                3.6035717   3.5401780   3.6669653
0-3 months     ki1135781-COHORTS          INDIA                          Early term           NA                3.6217388   3.5679114   3.6755662
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                3.7035795   3.6900880   3.7170710
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                3.7855711   3.7642177   3.8069246
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                3.7717502   3.7534984   3.7900020
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                1.7037814   1.5645319   1.8430309
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                1.9125424   1.6688133   2.1562715
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                1.8051188   1.6493091   1.9609285
3-6 months     ki1000108-IRC              INDIA                          Full or late term    NA                1.8559296   1.7777703   1.9340888
3-6 months     ki1000108-IRC              INDIA                          Preterm              NA                1.9103314   1.7401541   2.0805088
3-6 months     ki1000108-IRC              INDIA                          Early term           NA                1.9783162   1.8511890   2.1054433
3-6 months     ki1000109-EE               PAKISTAN                       Full or late term    NA                1.9725443   1.8019918   2.1430967
3-6 months     ki1000109-EE               PAKISTAN                       Preterm              NA                2.0719480   1.9958824   2.1480136
3-6 months     ki1000109-EE               PAKISTAN                       Early term           NA                1.9666678   1.8680655   2.0652700
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Full or late term    NA                1.9301149   1.6017990   2.2584308
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Preterm              NA                1.9529285   1.8984253   2.0074317
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Early term           NA                1.7899169   1.6258046   1.9540292
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                1.9451046   1.8824806   2.0077287
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                2.1186788   2.0641664   2.1731912
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                1.9422697   1.8924003   1.9921391
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                1.7617877   1.7175747   1.8060008
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                1.8056211   1.7151863   1.8960559
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                1.8142896   1.7422511   1.8863281
3-6 months     ki1101329-Keneba           GAMBIA                         Full or late term    NA                1.9039233   1.8364145   1.9714321
3-6 months     ki1101329-Keneba           GAMBIA                         Preterm              NA                2.0518803   1.9577571   2.1460035
3-6 months     ki1101329-Keneba           GAMBIA                         Early term           NA                1.9705780   1.9086121   2.0325440
3-6 months     ki1119695-PROBIT           BELARUS                        Full or late term    NA                2.0633393   2.0183629   2.1083157
3-6 months     ki1119695-PROBIT           BELARUS                        Preterm              NA                2.2161347   2.1149632   2.3173062
3-6 months     ki1119695-PROBIT           BELARUS                        Early term           NA                2.1143475   2.0714697   2.1572253
3-6 months     ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                1.7472749   1.7028423   1.7917076
3-6 months     ki1135781-COHORTS          GUATEMALA                      Preterm              NA                1.7462573   1.6605738   1.8319408
3-6 months     ki1135781-COHORTS          GUATEMALA                      Early term           NA                1.7803943   1.7259221   1.8348664
3-6 months     ki1135781-COHORTS          INDIA                          Full or late term    NA                1.8199800   1.7802522   1.8597078
3-6 months     ki1135781-COHORTS          INDIA                          Preterm              NA                1.9085293   1.8516656   1.9653931
3-6 months     ki1135781-COHORTS          INDIA                          Early term           NA                1.8957564   1.8497341   1.9417787
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                1.8676396   1.8513997   1.8838794
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                2.0085916   1.9842076   2.0329756
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                1.9335591   1.9130388   1.9540794
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                1.0479398   0.9881041   1.1077756
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                1.0726660   0.9833362   1.1619957
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                1.0034523   0.9122800   1.0946247
6-12 months    ki1000108-IRC              INDIA                          Full or late term    NA                1.2467806   1.2095643   1.2839969
6-12 months    ki1000108-IRC              INDIA                          Preterm              NA                1.3057697   1.2347009   1.3768385
6-12 months    ki1000108-IRC              INDIA                          Early term           NA                1.2845376   1.2317879   1.3372872
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Full or late term    NA                1.0354651   0.8802036   1.1907266
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Preterm              NA                1.1005778   1.0866191   1.1145365
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Early term           NA                1.0699920   1.0200097   1.1199743
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                1.2029998   1.1690819   1.2369177
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                1.2158641   1.1893084   1.2424197
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                1.2419796   1.2166700   1.2672892
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                1.2070575   1.1820159   1.2320991
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                1.1661218   1.1136876   1.2185559
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                1.2167718   1.1707152   1.2628285
6-12 months    ki1101329-Keneba           GAMBIA                         Full or late term    NA                1.1556678   1.1272433   1.1840922
6-12 months    ki1101329-Keneba           GAMBIA                         Preterm              NA                1.1258074   1.0876757   1.1639391
6-12 months    ki1101329-Keneba           GAMBIA                         Early term           NA                1.1963643   1.1645399   1.2281887
6-12 months    ki1119695-PROBIT           BELARUS                        Full or late term    NA                1.4564048   1.4144863   1.4983233
6-12 months    ki1119695-PROBIT           BELARUS                        Preterm              NA                1.5574619   1.4926476   1.6222762
6-12 months    ki1119695-PROBIT           BELARUS                        Early term           NA                1.4812572   1.4437492   1.5187651
6-12 months    ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                1.0141442   0.9881291   1.0401593
6-12 months    ki1135781-COHORTS          GUATEMALA                      Preterm              NA                1.0542656   1.0088976   1.0996335
6-12 months    ki1135781-COHORTS          GUATEMALA                      Early term           NA                1.0150592   0.9836269   1.0464914
6-12 months    ki1135781-COHORTS          INDIA                          Full or late term    NA                1.1019225   1.0768465   1.1269985
6-12 months    ki1135781-COHORTS          INDIA                          Preterm              NA                1.1258756   1.0918662   1.1598849
6-12 months    ki1135781-COHORTS          INDIA                          Early term           NA                1.1154308   1.0842680   1.1465935
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                1.0671961   1.0483120   1.0860801
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                1.0824454   1.0571683   1.1077225
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Early term           NA                1.0613129   1.0420419   1.0805839
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                1.0925879   1.0828715   1.1023042
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                1.1287618   1.1146290   1.1428947
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                1.1033970   1.0903208   1.1164731
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.7555459   0.7218460   0.7892457
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                0.7298055   0.6561398   0.8034712
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                0.7061778   0.6516708   0.7606849
12-24 months   ki1000108-IRC              INDIA                          Full or late term    NA                0.8308656   0.8050126   0.8567186
12-24 months   ki1000108-IRC              INDIA                          Preterm              NA                0.8080478   0.7738266   0.8422691
12-24 months   ki1000108-IRC              INDIA                          Early term           NA                0.8174383   0.7891180   0.8457586
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                0.8598460   0.8325953   0.8870966
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                0.8826670   0.8647635   0.9005705
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                0.8750997   0.8585761   0.8916233
12-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.8270163   0.8101228   0.8439098
12-24 months   ki1101329-Keneba           GAMBIA                         Preterm              NA                0.8164634   0.7966810   0.8362458
12-24 months   ki1101329-Keneba           GAMBIA                         Early term           NA                0.8635989   0.8441934   0.8830045
12-24 months   ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.8561689   0.7791998   0.9331379
12-24 months   ki1119695-PROBIT           BELARUS                        Preterm              NA                0.8811837   0.7786062   0.9837613
12-24 months   ki1119695-PROBIT           BELARUS                        Early term           NA                0.8626279   0.8008659   0.9243899
12-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.7603677   0.7447748   0.7759607
12-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm              NA                0.7921480   0.7648129   0.8194832
12-24 months   ki1135781-COHORTS          GUATEMALA                      Early term           NA                0.7831643   0.7628804   0.8034482
12-24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                0.8340776   0.8201667   0.8479885
12-24 months   ki1135781-COHORTS          INDIA                          Preterm              NA                0.8304967   0.8115218   0.8494715
12-24 months   ki1135781-COHORTS          INDIA                          Early term           NA                0.8254350   0.8098023   0.8410678
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.7125900   0.7010329   0.7241470
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.7019710   0.6869905   0.7169515
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.7033262   0.6920980   0.7145544
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.7882494   0.7804167   0.7960821
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.7950431   0.7815046   0.8085817
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.8063783   0.7967953   0.8159613


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                3.5424620   3.3226559   3.7622681
0-3 months     ki1000108-IRC              INDIA                          NA                   NA                3.1786708   3.0648748   3.2924667
0-3 months     ki1000109-EE               PAKISTAN                       NA                   NA                2.6575645   2.5739973   2.7411317
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                3.6026497   3.5749572   3.6303422
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                3.3028656   3.2646714   3.3410598
0-3 months     ki1101329-Keneba           GAMBIA                         NA                   NA                3.1443710   3.0969764   3.1917656
0-3 months     ki1119695-PROBIT           BELARUS                        NA                   NA                2.8355739   2.7218468   2.9493011
0-3 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                2.6275446   2.5773487   2.6777405
0-3 months     ki1135781-COHORTS          INDIA                          NA                   NA                3.5676089   3.5348954   3.6003223
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                3.7366791   3.7256757   3.7476826
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                1.8085894   1.7027345   1.9144443
3-6 months     ki1000108-IRC              INDIA                          NA                   NA                1.8770590   1.8115784   1.9425395
3-6 months     ki1000109-EE               PAKISTAN                       NA                   NA                2.0241201   1.9636505   2.0845898
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                1.9372686   1.8951315   1.9794057
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                2.0057973   1.9693775   2.0422170
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.7930234   1.7563473   1.8296994
3-6 months     ki1101329-Keneba           GAMBIA                         NA                   NA                1.9509973   1.9060862   1.9959083
3-6 months     ki1119695-PROBIT           BELARUS                        NA                   NA                2.0914863   2.0503474   2.1326251
3-6 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                1.7551575   1.7203355   1.7899795
3-6 months     ki1135781-COHORTS          INDIA                          NA                   NA                1.8699710   1.8423785   1.8975635
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                1.9120583   1.8998349   1.9242816
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                1.0679211   1.0201335   1.1157087
6-12 months    ki1000108-IRC              INDIA                          NA                   NA                1.2481465   1.2180063   1.2782868
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                1.0971201   1.0858336   1.1084065
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                1.2281313   1.2106849   1.2455776
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.1945105   1.1722780   1.2167429
6-12 months    ki1101329-Keneba           GAMBIA                         NA                   NA                1.1776266   1.1570262   1.1982270
6-12 months    ki1119695-PROBIT           BELARUS                        NA                   NA                1.4709224   1.4326640   1.5091808
6-12 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                1.0213263   1.0014497   1.0412028
6-12 months    ki1135781-COHORTS          INDIA                          NA                   NA                1.1028264   1.0847215   1.1209313
6-12 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                1.0678997   1.0556267   1.0801728
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                1.1011985   1.0937157   1.1086814
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7386817   0.7107419   0.7666215
12-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.8299611   0.8097588   0.8501634
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.8755729   0.8637860   0.8873598
12-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.8441456   0.8319594   0.8563317
12-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.8601486   0.8069287   0.9133686
12-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7708974   0.7583131   0.7834816
12-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.8282794   0.8184657   0.8380931
12-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.7066944   0.6993116   0.7140773
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.7936261   0.7876858   0.7995663


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level         estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ------------------  -----------  -----------  -----------
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    -0.1721375   -0.9710302    0.6267553
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term     0.1407144   -0.3202116    0.6016403
0-3 months     ki1000108-IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          Preterm              Full or late term    -0.3077168   -0.6339849    0.0185514
0-3 months     ki1000108-IRC              INDIA                          Early term           Full or late term    -0.3343408   -0.5758409   -0.0928406
0-3 months     ki1000109-EE               PAKISTAN                       Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE               PAKISTAN                       Preterm              Full or late term    -0.0686598   -0.4276977    0.2903780
0-3 months     ki1000109-EE               PAKISTAN                       Early term           Full or late term     0.0840081   -0.2974088    0.4654250
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Preterm              Full or late term     0.0280397   -0.3202471    0.3763265
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Early term           Full or late term     0.0506118   -0.3335904    0.4348140
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term    -0.1029541   -0.1991166   -0.0067917
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term    -0.1751280   -0.2701536   -0.0801024
0-3 months     ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         Preterm              Full or late term     0.2010462    0.0661595    0.3359328
0-3 months     ki1101329-Keneba           GAMBIA                         Early term           Full or late term     0.0183709   -0.0720375    0.1087792
0-3 months     ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        Preterm              Full or late term     0.1358773    0.0082193    0.2635353
0-3 months     ki1119695-PROBIT           BELARUS                        Early term           Full or late term     0.0554922   -0.0016899    0.1126744
0-3 months     ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term     0.0656671   -0.0847287    0.2160630
0-3 months     ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term    -0.0278772   -0.1402340    0.0844796
0-3 months     ki1135781-COHORTS          INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          Preterm              Full or late term     0.0560003   -0.0227770    0.1347777
0-3 months     ki1135781-COHORTS          INDIA                          Early term           Full or late term     0.0741675    0.0028135    0.1455215
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term     0.0819916    0.0579978    0.1059855
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term     0.0681707    0.0473647    0.0889767
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term     0.2087610   -0.0719750    0.4894970
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term     0.1013374   -0.1076812    0.3103560
3-6 months     ki1000108-IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          Preterm              Full or late term     0.0544019   -0.1328243    0.2416281
3-6 months     ki1000108-IRC              INDIA                          Early term           Full or late term     0.1223866   -0.0265596    0.2713329
3-6 months     ki1000109-EE               PAKISTAN                       Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE               PAKISTAN                       Preterm              Full or late term     0.0994037   -0.0862463    0.2850537
3-6 months     ki1000109-EE               PAKISTAN                       Early term           Full or late term    -0.0058765   -0.2020920    0.1903390
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Preterm              Full or late term     0.0228136   -0.3085705    0.3541977
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Early term           Full or late term    -0.1401980   -0.4808947    0.2004986
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term     0.1735741    0.0920467    0.2551016
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term    -0.0028350   -0.0809444    0.0752744
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term     0.0438334   -0.0562381    0.1439048
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term     0.0525019   -0.0315324    0.1365361
3-6 months     ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         Preterm              Full or late term     0.1479570    0.0330708    0.2628433
3-6 months     ki1101329-Keneba           GAMBIA                         Early term           Full or late term     0.0666547   -0.0234895    0.1567990
3-6 months     ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        Preterm              Full or late term     0.1527954    0.0524653    0.2531255
3-6 months     ki1119695-PROBIT           BELARUS                        Early term           Full or late term     0.0510082    0.0190696    0.0829468
3-6 months     ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term    -0.0010176   -0.0952377    0.0932026
3-6 months     ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term     0.0331194   -0.0350355    0.1012742
3-6 months     ki1135781-COHORTS          INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          Preterm              Full or late term     0.0885493    0.0193270    0.1577717
3-6 months     ki1135781-COHORTS          INDIA                          Early term           Full or late term     0.0757764    0.0150990    0.1364538
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term     0.1409520    0.1135389    0.1683651
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term     0.0659195    0.0402431    0.0915960
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term     0.0247261   -0.0829446    0.1323968
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term    -0.0444875   -0.1534018    0.0644268
6-12 months    ki1000108-IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA                          Preterm              Full or late term     0.0589891   -0.0210950    0.1390732
6-12 months    ki1000108-IRC              INDIA                          Early term           Full or late term     0.0377569   -0.0265892    0.1021030
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Preterm              Full or late term     0.0651127   -0.0976457    0.2278710
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Early term           Full or late term     0.0345269   -0.1122764    0.1813301
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term     0.0128643   -0.0298033    0.0555318
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term     0.0389798   -0.0027810    0.0807406
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    -0.0409357   -0.0984794    0.0166079
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term     0.0097143   -0.0417400    0.0611687
6-12 months    ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6-12 months    ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    -0.0298604   -0.0768512    0.0171304
6-12 months    ki1101329-Keneba           GAMBIA                         Early term           Full or late term     0.0406965   -0.0015834    0.0829765
6-12 months    ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS                        Preterm              Full or late term     0.1010571    0.0451106    0.1570036
6-12 months    ki1119695-PROBIT           BELARUS                        Early term           Full or late term     0.0248523   -0.0018649    0.0515696
6-12 months    ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term     0.0401213   -0.0110250    0.0912677
6-12 months    ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term     0.0009149   -0.0390743    0.0409042
6-12 months    ki1135781-COHORTS          INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          INDIA                          Preterm              Full or late term     0.0239531   -0.0175465    0.0654526
6-12 months    ki1135781-COHORTS          INDIA                          Early term           Full or late term     0.0135082   -0.0259470    0.0529635
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term     0.0152493   -0.0160770    0.0465757
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    -0.0058832   -0.0325446    0.0207782
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term     0.0361740    0.0202663    0.0520817
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term     0.0108091   -0.0049643    0.0265825
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    -0.0257404   -0.1064807    0.0549999
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term    -0.0493680   -0.1133657    0.0146297
12-24 months   ki1000108-IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA                          Preterm              Full or late term    -0.0228178   -0.0644003    0.0187647
12-24 months   ki1000108-IRC              INDIA                          Early term           Full or late term    -0.0134273   -0.0504631    0.0236084
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term     0.0228211   -0.0096591    0.0553012
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term     0.0152538   -0.0164270    0.0469345
12-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
12-24 months   ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    -0.0105529   -0.0362721    0.0151662
12-24 months   ki1101329-Keneba           GAMBIA                         Early term           Full or late term     0.0365826    0.0111318    0.0620334
12-24 months   ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
12-24 months   ki1119695-PROBIT           BELARUS                        Preterm              Full or late term     0.0250149   -0.1027641    0.1527938
12-24 months   ki1119695-PROBIT           BELARUS                        Early term           Full or late term     0.0064591   -0.0818622    0.0947803
12-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term     0.0317803    0.0009556    0.0626050
12-24 months   ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term     0.0227966   -0.0020156    0.0476087
12-24 months   ki1135781-COHORTS          INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          INDIA                          Preterm              Full or late term    -0.0035809   -0.0266294    0.0194676
12-24 months   ki1135781-COHORTS          INDIA                          Early term           Full or late term    -0.0086425   -0.0289834    0.0116983
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    -0.0106190   -0.0293091    0.0080711
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    -0.0092638   -0.0251685    0.0066410
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term     0.0067937   -0.0084975    0.0220849
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term     0.0181289    0.0059449    0.0303128
