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

**Outcome Variable:** whz

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

agecat      studyid                    country                        gagebrth             n_cell      n
----------  -------------------------  -----------------------------  ------------------  -------  -----
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term        54     87
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                  10     87
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Early term               23     87
Birth       ki1000108-IRC              INDIA                          Full or late term       213    328
Birth       ki1000108-IRC              INDIA                          Preterm                  32    328
Birth       ki1000108-IRC              INDIA                          Early term               83    328
Birth       ki1000109-EE               PAKISTAN                       Full or late term         0      1
Birth       ki1000109-EE               PAKISTAN                       Preterm                   1      1
Birth       ki1000109-EE               PAKISTAN                       Early term                0      1
Birth       ki1000304b-SAS-CompFeed    INDIA                          Full or late term         0     61
Birth       ki1000304b-SAS-CompFeed    INDIA                          Preterm                  54     61
Birth       ki1000304b-SAS-CompFeed    INDIA                          Early term                7     61
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term         6     23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                   3     23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Early term               14     23
Birth       ki1101329-Keneba           GAMBIA                         Full or late term       680   1401
Birth       ki1101329-Keneba           GAMBIA                         Preterm                 207   1401
Birth       ki1101329-Keneba           GAMBIA                         Early term              514   1401
Birth       ki1119695-PROBIT           BELARUS                        Full or late term      3183   6739
Birth       ki1119695-PROBIT           BELARUS                        Preterm                 194   6739
Birth       ki1119695-PROBIT           BELARUS                        Early term             3362   6739
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term       135    276
Birth       ki1135781-COHORTS          GUATEMALA                      Preterm                  48    276
Birth       ki1135781-COHORTS          GUATEMALA                      Early term               93    276
Birth       ki1135781-COHORTS          INDIA                          Full or late term       553   1229
Birth       ki1135781-COHORTS          INDIA                          Preterm                 259   1229
Birth       ki1135781-COHORTS          INDIA                          Early term              417   1229
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term      1135   2874
Birth       ki1135781-COHORTS          PHILIPPINES                    Preterm                 579   2874
Birth       ki1135781-COHORTS          PHILIPPINES                    Early term             1160   2874
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term      3995   7266
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm                1265   7266
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term             2006   7266
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term       212    346
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                  51    346
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term               83    346
6 months    ki1000108-IRC              INDIA                          Full or late term       249    388
6 months    ki1000108-IRC              INDIA                          Preterm                  42    388
6 months    ki1000108-IRC              INDIA                          Early term               97    388
6 months    ki1000109-EE               PAKISTAN                       Full or late term        25    376
6 months    ki1000109-EE               PAKISTAN                       Preterm                 243    376
6 months    ki1000109-EE               PAKISTAN                       Early term              108    376
6 months    ki1000304b-SAS-CompFeed    INDIA                          Full or late term        11    410
6 months    ki1000304b-SAS-CompFeed    INDIA                          Preterm                 370    410
6 months    ki1000304b-SAS-CompFeed    INDIA                          Early term               29    410
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term       155    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                 251    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term              309    715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term      1167   1902
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                 290   1902
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term              445   1902
6 months    ki1101329-Keneba           GAMBIA                         Full or late term       658   1374
6 months    ki1101329-Keneba           GAMBIA                         Preterm                 207   1374
6 months    ki1101329-Keneba           GAMBIA                         Early term              509   1374
6 months    ki1119695-PROBIT           BELARUS                        Full or late term      3579   7664
6 months    ki1119695-PROBIT           BELARUS                        Preterm                 222   7664
6 months    ki1119695-PROBIT           BELARUS                        Early term             3863   7664
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term       174    348
6 months    ki1135781-COHORTS          GUATEMALA                      Preterm                  68    348
6 months    ki1135781-COHORTS          GUATEMALA                      Early term              106    348
6 months    ki1135781-COHORTS          INDIA                          Full or late term       568   1312
6 months    ki1135781-COHORTS          INDIA                          Preterm                 299   1312
6 months    ki1135781-COHORTS          INDIA                          Early term              445   1312
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term      1028   2685
6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm                 572   2685
6 months    ki1135781-COHORTS          PHILIPPINES                    Early term             1085   2685
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term      3193   6211
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm                1274   6211
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term             1744   6211
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term       214    350
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                  52    350
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term               84    350
24 months   ki1000108-IRC              INDIA                          Full or late term       250    390
24 months   ki1000108-IRC              INDIA                          Preterm                  42    390
24 months   ki1000108-IRC              INDIA                          Early term               98    390
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term        79    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                 208    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term              227    514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term         5      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                   0      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                1      6
24 months   ki1101329-Keneba           GAMBIA                         Full or late term       558   1157
24 months   ki1101329-Keneba           GAMBIA                         Preterm                 168   1157
24 months   ki1101329-Keneba           GAMBIA                         Early term              431   1157
24 months   ki1119695-PROBIT           BELARUS                        Full or late term       686   1589
24 months   ki1119695-PROBIT           BELARUS                        Preterm                  54   1589
24 months   ki1119695-PROBIT           BELARUS                        Early term              849   1589
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term       164    323
24 months   ki1135781-COHORTS          GUATEMALA                      Preterm                  68    323
24 months   ki1135781-COHORTS          GUATEMALA                      Early term               91    323
24 months   ki1135781-COHORTS          INDIA                          Full or late term       559   1298
24 months   ki1135781-COHORTS          INDIA                          Preterm                 303   1298
24 months   ki1135781-COHORTS          INDIA                          Early term              436   1298
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term       939   2428
24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm                 517   2428
24 months   ki1135781-COHORTS          PHILIPPINES                    Early term              972   2428
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term      1635   3211
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                 686   3211
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term              890   3211


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
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
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
![](/tmp/53fa5aa1-843c-44db-a4b8-fd5b91de5dcf/333f3acf-6580-4861-bc62-c8dba8bb082a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.8520675   -1.4387149   -0.2654201
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.7724773   -1.0044600   -0.5404947
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed           1.6437853    1.4996490    1.7879217
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -1.1307057   -1.4783418   -0.7830695
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -1.3902975   -1.7377197   -1.0428753
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.8952545   -0.9991633   -0.7913457
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.6072148   -0.6791524   -0.5352773
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.7493812   -0.7882387   -0.7105238
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.8492132   -1.1087177   -0.5897088
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.6724234   -0.8517633   -0.4930834
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -0.4086064   -0.7647471   -0.0524657
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.5233534   -0.9313381   -0.1153686
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.1940568    0.0242973    0.3638164
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1626242    0.0799544    0.2452940
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.1132871   -0.2167977   -0.0097765
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.5983594    0.5247799    0.6719388
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.1314079   -0.1170561    0.3798719
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.7459695   -0.8562993   -0.6356397
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.3380164   -0.4095856   -0.2664472
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.6273676   -0.6776075   -0.5771276
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.4446241   -0.6280868   -0.2611613
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.6618876   -0.7991881   -0.5245871
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.5250072   -0.7648643   -0.2851501
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.7759827   -0.8710330   -0.6809324
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.7523721    0.5912533    0.9134908
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.4151313   -0.5899565   -0.2403062
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.6344748   -0.7208809   -0.5480687
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.5677354   -0.6255577   -0.5099131
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.3026884   -1.3648505   -1.2405262


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.5788506   -0.9164861   -0.2412151
Birth       ki1000108-IRC              INDIA                          observed             observed          -1.0135366   -1.2024730   -0.8246002
Birth       ki1101329-Keneba           GAMBIA                         observed             observed           1.6988437    1.6151574    1.7825300
Birth       ki1119695-PROBIT           BELARUS                        observed             observed          -1.1877267   -1.5203042   -0.8551491
Birth       ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.2710507   -1.4361198   -1.1059817
Birth       ki1135781-COHORTS          INDIA                          observed             observed          -1.0098535   -1.0741510   -0.9455561
Birth       ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.7417745   -0.7882773   -0.6952718
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.7708602   -0.7985260   -0.7431943
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.4909778   -0.6451612   -0.3367945
6 months    ki1000108-IRC              INDIA                          observed             observed          -0.5999270   -0.7403711   -0.4594828
6 months    ki1000109-EE               PAKISTAN                       observed             observed          -0.7212766   -0.8346857   -0.6078675
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.7953902   -0.9899672   -0.6008132
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed           0.0297622   -0.0491685    0.1086930
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0815655    0.0271217    0.1360092
6 months    ki1101329-Keneba           GAMBIA                         observed             observed          -0.1978234   -0.2595091   -0.1361378
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.5810067    0.5014871    0.6605262
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed           0.0507471   -0.0753087    0.1768029
6 months    ki1135781-COHORTS          INDIA                          observed             observed          -0.6460976   -0.7081436   -0.5840516
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.2920968   -0.3336448   -0.2505489
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.6042215   -0.6338031   -0.5746400
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.5369143   -0.6415957   -0.4322329
24 months   ki1000108-IRC              INDIA                          observed             observed          -0.7414957   -0.8350522   -0.6479392
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.6103502   -0.7050157   -0.5156847
24 months   ki1101329-Keneba           GAMBIA                         observed             observed          -0.7953404   -0.8531640   -0.7375168
24 months   ki1119695-PROBIT           BELARUS                        observed             observed           0.8061601    0.6592496    0.9530705
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -0.5375232   -0.6362258   -0.4388206
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -0.5717874   -0.6260792   -0.5174955
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.6079283   -0.6449298   -0.5709269
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.2987979   -1.3354348   -1.2621609


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.2732169   -0.1633417    0.7097756
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.2410592   -0.3877272   -0.0943913
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed           0.0550583   -0.0634286    0.1735453
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0570210   -0.1815359    0.0674939
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.1192468   -0.1940012    0.4324948
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.1145991   -0.1911124   -0.0380857
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.1345597   -0.1911511   -0.0779683
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0214789   -0.0527026    0.0097448
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.3582354    0.1185661    0.5979047
6 months    ki1000108-IRC              INDIA                          optimal              observed           0.0724964   -0.0551967    0.2001894
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -0.3126702   -0.6633442    0.0380038
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.2720369   -0.8233723    0.2792985
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.1642946   -0.3117462   -0.0168429
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0810587   -0.1454013   -0.0167162
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0845363   -0.1662064   -0.0028663
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0173527   -0.0438389    0.0091335
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0806608   -0.2852455    0.1239239
6 months    ki1135781-COHORTS          INDIA                          optimal              observed           0.0998720    0.0062919    0.1934520
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed           0.0459195   -0.0151423    0.1069814
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed           0.0231460   -0.0183006    0.0645926
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0922902   -0.2525680    0.0679876
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.0796081   -0.1682222    0.0090059
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0853430   -0.3030715    0.1323855
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0193577   -0.0944435    0.0557281
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.0537880   -0.0125322    0.1201082
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1223919   -0.2587083    0.0139246
24 months   ki1135781-COHORTS          INDIA                          optimal              observed           0.0626874   -0.0108894    0.1362643
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0401929   -0.0865043    0.0061185
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed           0.0038905   -0.0415689    0.0493498
