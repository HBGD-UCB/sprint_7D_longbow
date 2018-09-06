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

unadjusted

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







# Results Detail

## Results Plots
![](/tmp/768941c2-6f40-4b3a-9357-053c9224729b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/768941c2-6f40-4b3a-9357-053c9224729b/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0821329   -0.2176995    0.0534337
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                -0.1566869   -0.5326169    0.2192430
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                 0.0238298   -0.1533574    0.2010170
0-3 months     ki1000108-IRC              INDIA                          Full or late term    NA                -0.2127493   -0.2850034   -0.1404953
0-3 months     ki1000108-IRC              INDIA                          Preterm              NA                -0.2613060   -0.4309995   -0.0916126
0-3 months     ki1000108-IRC              INDIA                          Early term           NA                -0.3580275   -0.4642409   -0.2518142
0-3 months     ki1000109-EE               PAKISTAN                       Full or late term    NA                -0.3601538   -0.6013733   -0.1189342
0-3 months     ki1000109-EE               PAKISTAN                       Preterm              NA                -0.4156357   -0.4624867   -0.3687847
0-3 months     ki1000109-EE               PAKISTAN                       Early term           NA                -0.3525742   -0.4397938   -0.2653545
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Full or late term    NA                 0.0027806   -0.1743668    0.1799280
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Preterm              NA                 0.0142596   -0.0018747    0.0303939
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Early term           NA                -0.0096085   -0.0634321    0.0442151
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                -0.0971370   -0.1369681   -0.0573059
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                -0.1020033   -0.1318744   -0.0721321
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                -0.1518238   -0.1794534   -0.1241942
0-3 months     ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.3123819   -0.3474041   -0.2773597
0-3 months     ki1101329-Keneba           GAMBIA                         Preterm              NA                -0.1913191   -0.2631621   -0.1194761
0-3 months     ki1101329-Keneba           GAMBIA                         Early term           NA                -0.2921173   -0.3267514   -0.2574832
0-3 months     ki1119695-PROBIT           BELARUS                        Full or late term    NA                -0.4566790   -0.5146360   -0.3987221
0-3 months     ki1119695-PROBIT           BELARUS                        Preterm              NA                -0.3548120   -0.4510534   -0.2585707
0-3 months     ki1119695-PROBIT           BELARUS                        Early term           NA                -0.4223553   -0.4860328   -0.3586778
0-3 months     ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                -0.5371614   -0.5695101   -0.5048126
0-3 months     ki1135781-COHORTS          GUATEMALA                      Preterm              NA                -0.5043657   -0.5766624   -0.4320691
0-3 months     ki1135781-COHORTS          GUATEMALA                      Early term           NA                -0.5473697   -0.5930561   -0.5016832
0-3 months     ki1135781-COHORTS          INDIA                          Full or late term    NA                -0.0807919   -0.1040956   -0.0574883
0-3 months     ki1135781-COHORTS          INDIA                          Preterm              NA                -0.0566422   -0.0908294   -0.0224549
0-3 months     ki1135781-COHORTS          INDIA                          Early term           NA                -0.0442623   -0.0727161   -0.0158085
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0509284    0.0443099    0.0575469
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                 0.1054950    0.0944264    0.1165635
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                 0.0916723    0.0824752    0.1008694
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.1420513   -0.2095460   -0.0745566
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                 0.0029364   -0.1285345    0.1344073
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                -0.0453563   -0.1267659    0.0360533
3-6 months     ki1000108-IRC              INDIA                          Full or late term    NA                -0.0657194   -0.1034361   -0.0280028
3-6 months     ki1000108-IRC              INDIA                          Preterm              NA                -0.0520939   -0.1425819    0.0383941
3-6 months     ki1000108-IRC              INDIA                          Early term           NA                -0.0222761   -0.0876015    0.0430493
3-6 months     ki1000109-EE               PAKISTAN                       Full or late term    NA                 0.0051246   -0.0968645    0.1071136
3-6 months     ki1000109-EE               PAKISTAN                       Preterm              NA                 0.0966545    0.0603781    0.1329310
3-6 months     ki1000109-EE               PAKISTAN                       Early term           NA                 0.0264159   -0.0211853    0.0740171
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Full or late term    NA                -0.0445317   -0.2262948    0.1372313
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Preterm              NA                -0.0106537   -0.0351916    0.0138841
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Early term           NA                -0.1088257   -0.1843938   -0.0332577
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                -0.0089165   -0.0460645    0.0282315
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                 0.0839241    0.0564066    0.1114416
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                -0.0022965   -0.0270494    0.0224563
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0974512   -0.1185015   -0.0764008
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                -0.0604407   -0.1069128   -0.0139686
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                -0.0711675   -0.1073839   -0.0349512
3-6 months     ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0628621   -0.0957419   -0.0299822
3-6 months     ki1101329-Keneba           GAMBIA                         Preterm              NA                 0.0183079   -0.0343066    0.0709223
3-6 months     ki1101329-Keneba           GAMBIA                         Early term           NA                -0.0310623   -0.0617487   -0.0003759
3-6 months     ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0315309    0.0106550    0.0524069
3-6 months     ki1119695-PROBIT           BELARUS                        Preterm              NA                 0.1190082    0.0636445    0.1743719
3-6 months     ki1119695-PROBIT           BELARUS                        Early term           NA                 0.0588882    0.0387823    0.0789941
3-6 months     ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                -0.1011246   -0.1232513   -0.0789978
3-6 months     ki1135781-COHORTS          GUATEMALA                      Preterm              NA                -0.1157578   -0.1634486   -0.0680670
3-6 months     ki1135781-COHORTS          GUATEMALA                      Early term           NA                -0.0853088   -0.1135762   -0.0570415
3-6 months     ki1135781-COHORTS          INDIA                          Full or late term    NA                -0.0834717   -0.1024659   -0.0644774
3-6 months     ki1135781-COHORTS          INDIA                          Preterm              NA                -0.0396740   -0.0675844   -0.0117635
3-6 months     ki1135781-COHORTS          INDIA                          Early term           NA                -0.0479734   -0.0702153   -0.0257315
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -0.0307389   -0.0383324   -0.0231455
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                 0.0432721    0.0310167    0.0555276
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                 0.0036448   -0.0061328    0.0134223
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.1009513   -0.1276219   -0.0742808
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                -0.0671508   -0.1133831   -0.0209184
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                -0.1084027   -0.1521885   -0.0646170
6-12 months    ki1000108-IRC              INDIA                          Full or late term    NA                -0.0314718   -0.0483602   -0.0145833
6-12 months    ki1000108-IRC              INDIA                          Preterm              NA                -0.0217294   -0.0631460    0.0196872
6-12 months    ki1000108-IRC              INDIA                          Early term           NA                -0.0147455   -0.0395225    0.0100314
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Full or late term    NA                -0.1260310   -0.1960734   -0.0559887
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Preterm              NA                -0.0845785   -0.0900496   -0.0791074
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Early term           NA                -0.1046004   -0.1279385   -0.0812623
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                -0.0442212   -0.0604595   -0.0279828
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                -0.0313409   -0.0433972   -0.0192845
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                -0.0258495   -0.0368763   -0.0148228
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0588492   -0.0698993   -0.0477990
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                -0.0782668   -0.1059102   -0.0506233
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                -0.0542488   -0.0764536   -0.0320440
6-12 months    ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0707084   -0.0837467   -0.0576702
6-12 months    ki1101329-Keneba           GAMBIA                         Preterm              NA                -0.0701231   -0.0895437   -0.0507026
6-12 months    ki1101329-Keneba           GAMBIA                         Early term           NA                -0.0517031   -0.0663176   -0.0370886
6-12 months    ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0345790    0.0162820    0.0528760
6-12 months    ki1119695-PROBIT           BELARUS                        Preterm              NA                 0.0822203    0.0509360    0.1135046
6-12 months    ki1119695-PROBIT           BELARUS                        Early term           NA                 0.0477622    0.0313294    0.0641949
6-12 months    ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                -0.1133679   -0.1244221   -0.1023137
6-12 months    ki1135781-COHORTS          GUATEMALA                      Preterm              NA                -0.0873562   -0.1092358   -0.0654765
6-12 months    ki1135781-COHORTS          GUATEMALA                      Early term           NA                -0.1072836   -0.1215627   -0.0930046
6-12 months    ki1135781-COHORTS          INDIA                          Full or late term    NA                -0.0935474   -0.1045842   -0.0825107
6-12 months    ki1135781-COHORTS          INDIA                          Preterm              NA                -0.0830955   -0.0990712   -0.0671198
6-12 months    ki1135781-COHORTS          INDIA                          Early term           NA                -0.0875316   -0.1013742   -0.0736889
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                -0.1026697   -0.1107542   -0.0945852
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                -0.0903130   -0.1015591   -0.0790670
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Early term           NA                -0.1020138   -0.1102521   -0.0937755
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -0.0825072   -0.0866823   -0.0783321
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                -0.0619298   -0.0684007   -0.0554590
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                -0.0761013   -0.0818232   -0.0703793
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0410110   -0.0538311   -0.0281908
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                -0.0512996   -0.0812607   -0.0213384
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                -0.0585575   -0.0813555   -0.0357595
12-24 months   ki1000108-IRC              INDIA                          Full or late term    NA                -0.0324612   -0.0424081   -0.0225142
12-24 months   ki1000108-IRC              INDIA                          Preterm              NA                -0.0285953   -0.0494471   -0.0077435
12-24 months   ki1000108-IRC              INDIA                          Early term           NA                -0.0314240   -0.0426781   -0.0201699
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                -0.0204333   -0.0309633   -0.0099033
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                 0.0024056   -0.0040983    0.0089095
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                -0.0083817   -0.0139039   -0.0028595
12-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0251353   -0.0317201   -0.0185505
12-24 months   ki1101329-Keneba           GAMBIA                         Preterm              NA                -0.0193639   -0.0280764   -0.0106514
12-24 months   ki1101329-Keneba           GAMBIA                         Early term           NA                -0.0147462   -0.0217888   -0.0077035
12-24 months   ki1119695-PROBIT           BELARUS                        Full or late term    NA                -0.0433308   -0.0691184   -0.0175433
12-24 months   ki1119695-PROBIT           BELARUS                        Preterm              NA                -0.0353336   -0.0765942    0.0059270
12-24 months   ki1119695-PROBIT           BELARUS                        Early term           NA                -0.0433170   -0.0635827   -0.0230513
12-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                -0.0385996   -0.0441562   -0.0330430
12-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm              NA                -0.0258574   -0.0362677   -0.0154471
12-24 months   ki1135781-COHORTS          GUATEMALA                      Early term           NA                -0.0257404   -0.0338628   -0.0176179
12-24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                -0.0340097   -0.0388094   -0.0292100
12-24 months   ki1135781-COHORTS          INDIA                          Preterm              NA                -0.0311253   -0.0381319   -0.0241187
12-24 months   ki1135781-COHORTS          INDIA                          Early term           NA                -0.0357651   -0.0415526   -0.0299775
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                -0.0575066   -0.0616166   -0.0533966
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                -0.0579278   -0.0633963   -0.0524594
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term           NA                -0.0576600   -0.0616574   -0.0536627
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -0.0228891   -0.0256276   -0.0201506
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                -0.0163540   -0.0217143   -0.0109937
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                -0.0148048   -0.0182281   -0.0113816


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
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    -0.0745540   -0.4741809    0.3250728
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term     0.1059627   -0.1171373    0.3290627
0-3 months     ki1000108-IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          Preterm              Full or late term    -0.0485567   -0.2329924    0.1358789
0-3 months     ki1000108-IRC              INDIA                          Early term           Full or late term    -0.1452782   -0.2737380   -0.0168184
0-3 months     ki1000109-EE               PAKISTAN                       Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE               PAKISTAN                       Preterm              Full or late term    -0.0554819   -0.3012092    0.1902453
0-3 months     ki1000109-EE               PAKISTAN                       Early term           Full or late term     0.0075796   -0.2489241    0.2640833
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Preterm              Full or late term     0.0114790   -0.1689628    0.1919208
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Early term           Full or late term    -0.0123890   -0.2057453    0.1809673
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term    -0.0048662   -0.0546538    0.0449213
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term    -0.0546868   -0.1031627   -0.0062109
0-3 months     ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         Preterm              Full or late term     0.1210628    0.0411380    0.2009875
0-3 months     ki1101329-Keneba           GAMBIA                         Early term           Full or late term     0.0202646   -0.0289906    0.0695198
0-3 months     ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        Preterm              Full or late term     0.1018670    0.0306301    0.1731039
0-3 months     ki1119695-PROBIT           BELARUS                        Early term           Full or late term     0.0343238    0.0018311    0.0668165
0-3 months     ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term     0.0327956   -0.0464082    0.1119995
0-3 months     ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term    -0.0102083   -0.0661877    0.0457711
0-3 months     ki1135781-COHORTS          INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          Preterm              Full or late term     0.0241497   -0.0172245    0.0655240
0-3 months     ki1135781-COHORTS          INDIA                          Early term           Full or late term     0.0365296   -0.0002492    0.0733084
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term     0.0545666    0.0420553    0.0670778
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term     0.0407438    0.0301506    0.0513371
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term     0.1449877   -0.0027964    0.2927718
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term     0.0966950   -0.0090550    0.2024450
3-6 months     ki1000108-IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          Preterm              Full or late term     0.0136255   -0.0844083    0.1116593
3-6 months     ki1000108-IRC              INDIA                          Early term           Full or late term     0.0434433   -0.0319884    0.1188751
3-6 months     ki1000109-EE               PAKISTAN                       Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE               PAKISTAN                       Preterm              Full or late term     0.0915300   -0.0167185    0.1997785
3-6 months     ki1000109-EE               PAKISTAN                       Early term           Full or late term     0.0212914   -0.0912593    0.1338420
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Preterm              Full or late term     0.0338780   -0.1494257    0.2171817
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Early term           Full or late term    -0.0642940   -0.2423987    0.1138107
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term     0.0928406    0.0466108    0.1390704
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term     0.0066200   -0.0380195    0.0512594
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term     0.0370105   -0.0140069    0.0880279
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term     0.0262836   -0.0156060    0.0681732
3-6 months     ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         Preterm              Full or late term     0.0811700    0.0191267    0.1432132
3-6 months     ki1101329-Keneba           GAMBIA                         Early term           Full or late term     0.0317998   -0.0131751    0.0767747
3-6 months     ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        Preterm              Full or late term     0.0874773    0.0328372    0.1421174
3-6 months     ki1119695-PROBIT           BELARUS                        Early term           Full or late term     0.0273573    0.0126643    0.0420503
3-6 months     ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term    -0.0146332   -0.0672070    0.0379406
3-6 months     ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term     0.0158157   -0.0200819    0.0517133
3-6 months     ki1135781-COHORTS          INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          Preterm              Full or late term     0.0437977    0.0100372    0.0775583
3-6 months     ki1135781-COHORTS          INDIA                          Early term           Full or late term     0.0354983    0.0062496    0.0647469
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term     0.0740111    0.0604552    0.0875670
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term     0.0343837    0.0221813    0.0465860
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term     0.0338006   -0.0195731    0.0871743
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term    -0.0074514   -0.0587203    0.0438176
6-12 months    ki1000108-IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA                          Preterm              Full or late term     0.0097424   -0.0349852    0.0544699
6-12 months    ki1000108-IRC              INDIA                          Early term           Full or late term     0.0167262   -0.0132590    0.0467115
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Preterm              Full or late term     0.0414526   -0.0312083    0.1141134
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Early term           Full or late term     0.0214307   -0.0472730    0.0901344
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term     0.0128803   -0.0073444    0.0331050
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term     0.0183716   -0.0012567    0.0380000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    -0.0194176   -0.0491878    0.0103526
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term     0.0046004   -0.0202020    0.0294028
6-12 months    ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6-12 months    ki1101329-Keneba           GAMBIA                         Preterm              Full or late term     0.0005853   -0.0228060    0.0239766
6-12 months    ki1101329-Keneba           GAMBIA                         Early term           Full or late term     0.0190053   -0.0005798    0.0385905
6-12 months    ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS                        Preterm              Full or late term     0.0476413    0.0218672    0.0734154
6-12 months    ki1119695-PROBIT           BELARUS                        Early term           Full or late term     0.0131832    0.0010003    0.0253661
6-12 months    ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term     0.0260117    0.0014982    0.0505253
6-12 months    ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term     0.0060843   -0.0119736    0.0241421
6-12 months    ki1135781-COHORTS          INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          INDIA                          Preterm              Full or late term     0.0104520   -0.0089654    0.0298693
6-12 months    ki1135781-COHORTS          INDIA                          Early term           Full or late term     0.0060159   -0.0116881    0.0237198
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term     0.0123566   -0.0014937    0.0262070
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term     0.0006559   -0.0108866    0.0121984
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term     0.0205773    0.0133601    0.0277946
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term     0.0064059   -0.0004764    0.0132882
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    -0.0102886   -0.0428774    0.0223001
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term    -0.0175465   -0.0437019    0.0086089
12-24 months   ki1000108-IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA                          Preterm              Full or late term     0.0038659   -0.0192369    0.0269686
12-24 months   ki1000108-IRC              INDIA                          Early term           Full or late term     0.0010371   -0.0139827    0.0160570
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term     0.0228389    0.0104623    0.0352155
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term     0.0120516    0.0001615    0.0239417
12-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
12-24 months   ki1101329-Keneba           GAMBIA                         Preterm              Full or late term     0.0057714   -0.0051496    0.0166924
12-24 months   ki1101329-Keneba           GAMBIA                         Early term           Full or late term     0.0103891    0.0007476    0.0200307
12-24 months   ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
12-24 months   ki1119695-PROBIT           BELARUS                        Preterm              Full or late term     0.0079972   -0.0442462    0.0602407
12-24 months   ki1119695-PROBIT           BELARUS                        Early term           Full or late term     0.0000138   -0.0301455    0.0301731
12-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term     0.0127422    0.0009418    0.0245426
12-24 months   ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term     0.0128592    0.0030180    0.0227005
12-24 months   ki1135781-COHORTS          INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          INDIA                          Preterm              Full or late term     0.0028844   -0.0056086    0.0113773
12-24 months   ki1135781-COHORTS          INDIA                          Early term           Full or late term    -0.0017554   -0.0092742    0.0057635
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    -0.0004212   -0.0072620    0.0064195
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    -0.0001534   -0.0058868    0.0055799
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term     0.0065351    0.0005759    0.0124944
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term     0.0080843    0.0036500    0.0125186
