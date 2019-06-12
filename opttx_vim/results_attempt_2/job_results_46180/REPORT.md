---
title: "Optimal Treatment Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowOptTX','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
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
      W: []
      A: ['parity_cat']
      Y: ['haz']
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
        value: FALSE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
      maximize:
        input: checkbox
        value: TRUE
  output_directory:
    value: '~/tmp/'
editor_options: 
  chunk_output_type: console
---







## Methods
## Outcome Variable

**Outcome Variable:** haz

## Predictor Variables

**Intervention Variable:** gagebrth

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* single
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_single
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        gagebrth             n_cell       n
----------  -------------------------  -----------------------------  ------------------  -------  ------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term        57      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                  10      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Early term               23      90
Birth       ki1000108-IRC              INDIA                          Full or late term       238     369
Birth       ki1000108-IRC              INDIA                          Preterm                  36     369
Birth       ki1000108-IRC              INDIA                          Early term               95     369
Birth       ki1000109-EE               PAKISTAN                       Full or late term         0       2
Birth       ki1000109-EE               PAKISTAN                       Preterm                   1       2
Birth       ki1000109-EE               PAKISTAN                       Early term                1       2
Birth       ki1000304b-SAS-CompFeed    INDIA                          Full or late term         1     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Preterm                 171     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Early term               15     187
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term         7      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                   5      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Early term               15      27
Birth       ki1101329-Keneba           GAMBIA                         Full or late term       734    1515
Birth       ki1101329-Keneba           GAMBIA                         Preterm                 235    1515
Birth       ki1101329-Keneba           GAMBIA                         Early term              546    1515
Birth       ki1119695-PROBIT           BELARUS                        Full or late term      7095   13884
Birth       ki1119695-PROBIT           BELARUS                        Preterm                 472   13884
Birth       ki1119695-PROBIT           BELARUS                        Early term             6317   13884
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term       341     617
Birth       ki1135781-COHORTS          GUATEMALA                      Preterm                  95     617
Birth       ki1135781-COHORTS          GUATEMALA                      Early term              181     617
Birth       ki1135781-COHORTS          INDIA                          Full or late term       570    1293
Birth       ki1135781-COHORTS          INDIA                          Preterm                 285    1293
Birth       ki1135781-COHORTS          INDIA                          Early term              438    1293
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term      1164    3024
Birth       ki1135781-COHORTS          PHILIPPINES                    Preterm                 649    3024
Birth       ki1135781-COHORTS          PHILIPPINES                    Early term             1211    3024
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term      9542   18434
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm                3774   18434
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term             5118   18434
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term       212     347
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                  52     347
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term               83     347
6 months    ki1000108-IRC              INDIA                          Full or late term       249     388
6 months    ki1000108-IRC              INDIA                          Preterm                  42     388
6 months    ki1000108-IRC              INDIA                          Early term               97     388
6 months    ki1000109-EE               PAKISTAN                       Full or late term        25     372
6 months    ki1000109-EE               PAKISTAN                       Preterm                 239     372
6 months    ki1000109-EE               PAKISTAN                       Early term              108     372
6 months    ki1000304b-SAS-CompFeed    INDIA                          Full or late term        25    1327
6 months    ki1000304b-SAS-CompFeed    INDIA                          Preterm                1210    1327
6 months    ki1000304b-SAS-CompFeed    INDIA                          Early term               92    1327
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term       155     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                 251     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term              309     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term      1167    1903
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                 291    1903
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term              445    1903
6 months    ki1101329-Keneba           GAMBIA                         Full or late term       658    1374
6 months    ki1101329-Keneba           GAMBIA                         Preterm                 207    1374
6 months    ki1101329-Keneba           GAMBIA                         Early term              509    1374
6 months    ki1119695-PROBIT           BELARUS                        Full or late term      8008   15761
6 months    ki1119695-PROBIT           BELARUS                        Preterm                 551   15761
6 months    ki1119695-PROBIT           BELARUS                        Early term             7202   15761
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term       389     713
6 months    ki1135781-COHORTS          GUATEMALA                      Preterm                 113     713
6 months    ki1135781-COHORTS          GUATEMALA                      Early term              211     713
6 months    ki1135781-COHORTS          INDIA                          Full or late term       568    1312
6 months    ki1135781-COHORTS          INDIA                          Preterm                 299    1312
6 months    ki1135781-COHORTS          INDIA                          Early term              445    1312
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term      1028    2687
6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm                 573    2687
6 months    ki1135781-COHORTS          PHILIPPINES                    Early term             1086    2687
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term      6610   12482
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm                2401   12482
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term             3471   12482
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term       214     350
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                  52     350
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term               84     350
24 months   ki1000108-IRC              INDIA                          Full or late term       250     390
24 months   ki1000108-IRC              INDIA                          Preterm                  42     390
24 months   ki1000108-IRC              INDIA                          Early term               98     390
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term        79     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                 208     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term              227     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term         5       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                   0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                1       6
24 months   ki1101329-Keneba           GAMBIA                         Full or late term       557    1156
24 months   ki1101329-Keneba           GAMBIA                         Preterm                 167    1156
24 months   ki1101329-Keneba           GAMBIA                         Early term              432    1156
24 months   ki1119695-PROBIT           BELARUS                        Full or late term      2024    4035
24 months   ki1119695-PROBIT           BELARUS                        Preterm                 137    4035
24 months   ki1119695-PROBIT           BELARUS                        Early term             1874    4035
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term       375     663
24 months   ki1135781-COHORTS          GUATEMALA                      Preterm                 108     663
24 months   ki1135781-COHORTS          GUATEMALA                      Early term              180     663
24 months   ki1135781-COHORTS          INDIA                          Full or late term       565    1308
24 months   ki1135781-COHORTS          INDIA                          Preterm                 305    1308
24 months   ki1135781-COHORTS          INDIA                          Early term              438    1308
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term       938    2424
24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm                 513    2424
24 months   ki1135781-COHORTS          PHILIPPINES                    Early term              973    2424
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term      3401    6493
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                1296    6493
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term             1796    6493


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

* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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
![](/tmp/80302917-5c05-4c14-a2a1-d438fa3b5815/cea4cd72-0cc0-4d1e-8941-ff021ea656d0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.6853651   -1.3286730   -0.0420571
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.0699966   -0.3564728    0.2164795
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.3624723   -2.0142069   -0.7107377
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed           0.2367971    0.1499917    0.3236025
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           1.5132971    1.3578009    1.6687934
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.2370228    0.1123581    0.3616874
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.3984979   -0.4869592   -0.3100366
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed           0.0009799   -0.0573047    0.0592646
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.2701324   -1.2941204   -1.2461444
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -1.3771896   -1.6421612   -1.1122179
6 months    ki1000108-IRC              INDIA                          optimal              observed          -1.0925854   -1.2746257   -0.9105450
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -1.9771974   -2.2954749   -1.6589198
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.8625330   -1.0869261   -0.6381400
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.8785735   -1.0390283   -0.7181188
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.4583388   -0.5228462   -0.3938314
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.7524071   -0.8348460   -0.6699682
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.1543012    0.0485659    0.2600365
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -1.6608625   -1.7584398   -1.5632852
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.8692179   -0.9607416   -0.7776942
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -1.0035350   -1.0674278   -0.9396422
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.2159728   -1.2476443   -1.1843014
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -2.4882871   -2.6241582   -2.3524159
24 months   ki1000108-IRC              INDIA                          optimal              observed          -1.7676624   -1.9128203   -1.6225046
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.2805219   -1.4895447   -1.0714991
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -1.5073200   -1.6032907   -1.4113494
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.2146581   -0.5258055    0.0964894
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -2.7270993   -2.8642152   -2.5899833
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -1.8156289   -1.9120739   -1.7191839
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -2.3032595   -2.3719887   -2.2345303
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.9812225   -2.0230056   -1.9394393


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.9654444   -1.1742112   -0.7566777
Birth       ki1000108-IRC              INDIA                          observed             observed          -0.3102981   -0.4751168   -0.1454794
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.1100000   -1.5086894   -0.7113106
Birth       ki1101329-Keneba           GAMBIA                         observed             observed           0.0288383   -0.0354675    0.0931441
Birth       ki1119695-PROBIT           BELARUS                        observed             observed           1.3254775    1.1669293    1.4840258
Birth       ki1135781-COHORTS          GUATEMALA                      observed             observed           0.0530794   -0.0441925    0.1503513
Birth       ki1135781-COHORTS          INDIA                          observed             observed          -0.6072158   -0.6675691   -0.5468624
Birth       ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.2492460   -0.2884729   -0.2100192
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.5660681   -1.5858219   -1.5463144
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -1.3856004   -1.5319935   -1.2392073
6 months    ki1000108-IRC              INDIA                          observed             observed          -1.2321263   -1.3660720   -1.0981806
6 months    ki1000109-EE               PAKISTAN                       observed             observed          -2.2004704   -2.3234073   -2.0775336
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -1.4018312   -1.4804646   -1.3231978
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.1986783   -1.2700937   -1.1272630
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.5419570   -0.5926042   -0.4913098
6 months    ki1101329-Keneba           GAMBIA                         observed             observed          -0.8948084   -0.9510697   -0.8385471
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.1069986    0.0122286    0.2017686
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.8315428   -1.9081267   -1.7549589
6 months    ki1135781-COHORTS          INDIA                          observed             observed          -0.9630335   -1.0220763   -0.9039908
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -1.1409862   -1.1830414   -1.0989310
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.3404486   -1.3659169   -1.3149804
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -2.5330857   -2.6360668   -2.4301046
24 months   ki1000108-IRC              INDIA                          observed             observed          -1.7805128   -1.8756216   -1.6854041
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.4295331   -1.5127726   -1.3462935
24 months   ki1101329-Keneba           GAMBIA                         observed             observed          -1.5664092   -1.6263058   -1.5065125
24 months   ki1119695-PROBIT           BELARUS                        observed             observed          -0.1314048   -0.4282725    0.1654630
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -2.8606184   -2.9431264   -2.7781104
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -1.9130810   -1.9742771   -1.8518850
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -2.3902929   -2.4353250   -2.3452608
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -2.0468674   -2.0777591   -2.0159757


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.2800794   -0.8981794    0.3380206
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.2403015   -0.4935640    0.0129611
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.2524723   -0.3900483    0.8949928
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -0.2079588   -0.2747507   -0.1411669
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -0.1878196   -0.2416041   -0.1340351
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1839433   -0.2734426   -0.0944441
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.2087179   -0.2766496   -0.1407861
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.2502260   -0.2983762   -0.2020758
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.2959357   -0.3138944   -0.2779771
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0084108   -0.2456170    0.2287953
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.1395409   -0.2599220   -0.0191599
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -0.2232730   -0.5387248    0.0921787
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.5392982   -0.7593971   -0.3191992
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.3201048   -0.4609810   -0.1792286
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0836182   -0.1238997   -0.0433367
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.1424013   -0.2032309   -0.0815717
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0473026   -0.0977461    0.0031408
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1706803   -0.2415649   -0.0997957
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.0938157   -0.1617938   -0.0258376
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.1374512   -0.1895343   -0.0853682
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1244758   -0.1445130   -0.1044386
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0447986   -0.1250521    0.0354548
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.0128504   -0.1161857    0.0904849
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.1490112   -0.3407267    0.0427044
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0590891   -0.1343061    0.0161278
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.0832533   -0.2132758    0.3797823
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1335191   -0.2450325   -0.0220057
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.0974521   -0.1686553   -0.0262490
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0870334   -0.1420551   -0.0320118
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0656449   -0.0913330   -0.0399569
