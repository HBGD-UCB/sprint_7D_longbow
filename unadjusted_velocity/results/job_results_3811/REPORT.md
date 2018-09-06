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
![](/tmp/21246d0f-2393-4c90-81dd-bb56db995018/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/21246d0f-2393-4c90-81dd-bb56db995018/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                3.5364262   3.2685606   3.8042918
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                3.3284229   2.5129848   4.1438609
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                3.6640223   3.2780679   4.0499768
0-3 months     ki1000108-IRC              INDIA                          Full or late term    NA                3.2558089   3.1097988   3.4018190
0-3 months     ki1000108-IRC              INDIA                          Preterm              NA                3.1370989   2.8052075   3.4689902
0-3 months     ki1000108-IRC              INDIA                          Early term           NA                3.0039913   2.7938393   3.2141434
0-3 months     ki1000109-EE               PAKISTAN                       Full or late term    NA                2.7542155   2.3008896   3.2075413
0-3 months     ki1000109-EE               PAKISTAN                       Preterm              NA                2.6005304   2.5055920   2.6954687
0-3 months     ki1000109-EE               PAKISTAN                       Early term           NA                2.7636531   2.5994846   2.9278216
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Full or late term    NA                3.5537416   3.1261038   3.9813795
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Preterm              NA                3.6043876   3.5736470   3.6351282
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Early term           NA                3.5913579   3.4763000   3.7064159
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                3.3854628   3.2999185   3.4710070
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                3.3124888   3.2511808   3.3737967
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                3.2512127   3.1929346   3.3094908
0-3 months     ki1101329-Keneba           GAMBIA                         Full or late term    NA                3.1188866   3.0491650   3.1886082
0-3 months     ki1101329-Keneba           GAMBIA                         Preterm              NA                3.2606970   3.1181427   3.4032513
0-3 months     ki1101329-Keneba           GAMBIA                         Early term           NA                3.1309607   3.0615776   3.2003439
0-3 months     ki1119695-PROBIT           BELARUS                        Full or late term    NA                2.8094400   2.6979359   2.9209442
0-3 months     ki1119695-PROBIT           BELARUS                        Preterm              NA                2.9404424   2.7537711   3.1271137
0-3 months     ki1119695-PROBIT           BELARUS                        Early term           NA                2.8570603   2.7357841   2.9783365
0-3 months     ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                2.6261074   2.5605550   2.6916598
0-3 months     ki1135781-COHORTS          GUATEMALA                      Preterm              NA                2.6866288   2.5486618   2.8245958
0-3 months     ki1135781-COHORTS          GUATEMALA                      Early term           NA                2.5981483   2.5050128   2.6912839
0-3 months     ki1135781-COHORTS          INDIA                          Full or late term    NA                3.5321084   3.4830834   3.5811334
0-3 months     ki1135781-COHORTS          INDIA                          Preterm              NA                3.5828959   3.5142161   3.6515756
0-3 months     ki1135781-COHORTS          INDIA                          Early term           NA                3.6036703   3.5468443   3.6604963
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                3.6995766   3.6858574   3.7132959
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                3.7803784   3.7575938   3.8031630
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                3.7745598   3.7555396   3.7935799
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                1.7243159   1.5815654   1.8670664
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                2.0037911   1.7270187   2.2805635
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                1.8953710   1.7198881   2.0708540
3-6 months     ki1000108-IRC              INDIA                          Full or late term    NA                1.8534837   1.7738452   1.9331223
3-6 months     ki1000108-IRC              INDIA                          Preterm              NA                1.8547223   1.6586514   2.0507931
3-6 months     ki1000108-IRC              INDIA                          Early term           NA                1.9469889   1.8080350   2.0859428
3-6 months     ki1000109-EE               PAKISTAN                       Full or late term    NA                1.8911253   1.6668945   2.1153560
3-6 months     ki1000109-EE               PAKISTAN                       Preterm              NA                2.0756610   1.9983391   2.1529829
3-6 months     ki1000109-EE               PAKISTAN                       Early term           NA                1.9406175   1.8368136   2.0444215
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Full or late term    NA                1.8941574   1.5431476   2.2451671
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Preterm              NA                1.9528681   1.8983937   2.0073424
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Early term           NA                1.7517140   1.5865177   1.9169103
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                1.9487395   1.8684141   2.0290650
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                2.1145066   2.0546731   2.1743400
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                1.9449565   1.8909115   1.9990016
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                1.7693266   1.7239667   1.8146865
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                1.8412441   1.7412669   1.9412212
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                1.8245524   1.7460949   1.9030099
3-6 months     ki1101329-Keneba           GAMBIA                         Full or late term    NA                1.9095203   1.8389904   1.9800501
3-6 months     ki1101329-Keneba           GAMBIA                         Preterm              NA                2.0468778   1.9377156   2.1560400
3-6 months     ki1101329-Keneba           GAMBIA                         Early term           NA                1.9651325   1.8985570   2.0317079
3-6 months     ki1119695-PROBIT           BELARUS                        Full or late term    NA                2.0628999   2.0185776   2.1072221
3-6 months     ki1119695-PROBIT           BELARUS                        Preterm              NA                2.2204422   2.0966074   2.3442769
3-6 months     ki1119695-PROBIT           BELARUS                        Early term           NA                2.1134529   2.0704460   2.1564598
3-6 months     ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                1.7534936   1.7068958   1.8000913
3-6 months     ki1135781-COHORTS          GUATEMALA                      Preterm              NA                1.7150647   1.6169303   1.8131990
3-6 months     ki1135781-COHORTS          GUATEMALA                      Early term           NA                1.7815984   1.7219740   1.8412229
3-6 months     ki1135781-COHORTS          INDIA                          Full or late term    NA                1.8237607   1.7830452   1.8644762
3-6 months     ki1135781-COHORTS          INDIA                          Preterm              NA                1.9134562   1.8541296   1.9727827
3-6 months     ki1135781-COHORTS          INDIA                          Early term           NA                1.8997954   1.8519867   1.9476041
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                1.8659429   1.8494905   1.8823953
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                2.0081524   1.9816906   2.0346141
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                1.9352371   1.9141963   1.9562778
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                1.0592031   0.9976182   1.1207879
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                1.1340011   1.0270870   1.2409152
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                1.0490010   0.9464874   1.1515146
6-12 months    ki1000108-IRC              INDIA                          Full or late term    NA                1.2411093   1.2029239   1.2792946
6-12 months    ki1000108-IRC              INDIA                          Preterm              NA                1.2366994   1.1430457   1.3303531
6-12 months    ki1000108-IRC              INDIA                          Early term           NA                1.2712821   1.2142816   1.3282827
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Full or late term    NA                1.0175072   0.8431418   1.1918726
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Preterm              NA                1.1013669   1.0873789   1.1153549
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Early term           NA                1.0608250   1.0036891   1.1179608
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                1.2115141   1.1729026   1.2501255
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                1.2182767   1.1897860   1.2467674
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                1.2439352   1.2171966   1.2706739
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                1.2030525   1.1770950   1.2290099
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                1.1425798   1.0774925   1.2076671
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                1.2025883   1.1507060   1.2544705
6-12 months    ki1101329-Keneba           GAMBIA                         Full or late term    NA                1.1632219   1.1328702   1.1935735
6-12 months    ki1101329-Keneba           GAMBIA                         Preterm              NA                1.1475003   1.1020227   1.1929779
6-12 months    ki1101329-Keneba           GAMBIA                         Early term           NA                1.2074081   1.1726883   1.2421279
6-12 months    ki1119695-PROBIT           BELARUS                        Full or late term    NA                1.4556439   1.4128557   1.4984321
6-12 months    ki1119695-PROBIT           BELARUS                        Preterm              NA                1.5538285   1.4803720   1.6272850
6-12 months    ki1119695-PROBIT           BELARUS                        Early term           NA                1.4814908   1.4439719   1.5190097
6-12 months    ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                1.0135760   0.9863384   1.0408137
6-12 months    ki1135781-COHORTS          GUATEMALA                      Preterm              NA                1.0582549   1.0057417   1.1107680
6-12 months    ki1135781-COHORTS          GUATEMALA                      Early term           NA                1.0154697   0.9813298   1.0496097
6-12 months    ki1135781-COHORTS          INDIA                          Full or late term    NA                1.0953206   1.0691012   1.1215400
6-12 months    ki1135781-COHORTS          INDIA                          Preterm              NA                1.1110749   1.0734913   1.1486586
6-12 months    ki1135781-COHORTS          INDIA                          Early term           NA                1.1067661   1.0738937   1.1396385
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                1.0649505   1.0455715   1.0843295
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                1.0829439   1.0565675   1.1093203
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Early term           NA                1.0626743   1.0428857   1.0824628
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                1.0922793   1.0824012   1.1021574
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                1.1251258   1.1102523   1.1399993
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                1.1016621   1.0883438   1.1149805
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.7547053   0.7204844   0.7889262
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                0.7278923   0.6469335   0.8088511
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                0.7034691   0.6457783   0.7611599
12-24 months   ki1000108-IRC              INDIA                          Full or late term    NA                0.8331786   0.8058206   0.8605367
12-24 months   ki1000108-IRC              INDIA                          Preterm              NA                0.8207956   0.7690135   0.8725778
12-24 months   ki1000108-IRC              INDIA                          Early term           NA                0.8258847   0.7923708   0.8593987
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                0.8562236   0.8245502   0.8878970
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                0.8832069   0.8645308   0.9018830
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                0.8748991   0.8576932   0.8921051
12-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.8305124   0.8126946   0.8483302
12-24 months   ki1101329-Keneba           GAMBIA                         Preterm              NA                0.8312337   0.8075662   0.8549013
12-24 months   ki1101329-Keneba           GAMBIA                         Early term           NA                0.8664343   0.8453202   0.8875485
12-24 months   ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.8573248   0.7797107   0.9349390
12-24 months   ki1119695-PROBIT           BELARUS                        Preterm              NA                0.8802662   0.7685429   0.9919895
12-24 months   ki1119695-PROBIT           BELARUS                        Early term           NA                0.8616876   0.8001874   0.9231878
12-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.7619588   0.7455264   0.7783912
12-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm              NA                0.7837131   0.7501472   0.8172790
12-24 months   ki1135781-COHORTS          GUATEMALA                      Early term           NA                0.7822433   0.7584973   0.8059894
12-24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                0.8324940   0.8177698   0.8472182
12-24 months   ki1135781-COHORTS          INDIA                          Preterm              NA                0.8278084   0.8068430   0.8487738
12-24 months   ki1135781-COHORTS          INDIA                          Early term           NA                0.8233160   0.8064413   0.8401907
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.7119454   0.6999944   0.7238965
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.7018101   0.6857757   0.7178445
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.7042728   0.6927014   0.7158443
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.7878978   0.7798882   0.7959074
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.7919303   0.7772457   0.8066149
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.8058566   0.7956774   0.8160358


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
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    -0.2080034   -1.0663105    0.6503038
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term     0.1275961   -0.3422047    0.5973969
0-3 months     ki1000108-IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          Preterm              Full or late term    -0.1187100   -0.4812991    0.2438790
0-3 months     ki1000108-IRC              INDIA                          Early term           Full or late term    -0.2518176   -0.5077138    0.0040786
0-3 months     ki1000109-EE               PAKISTAN                       Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE               PAKISTAN                       Preterm              Full or late term    -0.1536851   -0.6168456    0.3094754
0-3 months     ki1000109-EE               PAKISTAN                       Early term           Full or late term     0.0094376   -0.4726989    0.4915742
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Preterm              Full or late term     0.0506459   -0.3902931    0.4915850
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Early term           Full or late term     0.0376163   -0.4378149    0.5130475
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term    -0.0729740   -0.1782189    0.0322709
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term    -0.1342500   -0.2377592   -0.0307408
0-3 months     ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         Preterm              Full or late term     0.1418104   -0.0168806    0.3005014
0-3 months     ki1101329-Keneba           GAMBIA                         Early term           Full or late term     0.0120741   -0.0862881    0.1104363
0-3 months     ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        Preterm              Full or late term     0.1310024   -0.0080107    0.2700155
0-3 months     ki1119695-PROBIT           BELARUS                        Early term           Full or late term     0.0476203   -0.0128108    0.1080514
0-3 months     ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term     0.0605214   -0.0922269    0.2132696
0-3 months     ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term    -0.0279591   -0.1418510    0.0859327
0-3 months     ki1135781-COHORTS          INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          Preterm              Full or late term     0.0507875   -0.0335948    0.1351697
0-3 months     ki1135781-COHORTS          INDIA                          Early term           Full or late term     0.0715619   -0.0034891    0.1466129
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term     0.0808018    0.0551562    0.1064474
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term     0.0749831    0.0532963    0.0966700
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term     0.2794752   -0.0319420    0.5908924
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term     0.1710552   -0.0551571    0.3972674
3-6 months     ki1000108-IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          Preterm              Full or late term     0.0012385   -0.2103887    0.2128657
3-6 months     ki1000108-IRC              INDIA                          Early term           Full or late term     0.0935051   -0.0666525    0.2536628
3-6 months     ki1000109-EE               PAKISTAN                       Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE               PAKISTAN                       Preterm              Full or late term     0.1845357   -0.0526522    0.4217236
3-6 months     ki1000109-EE               PAKISTAN                       Early term           Full or late term     0.0494923   -0.1976002    0.2965847
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Preterm              Full or late term     0.0587107   -0.2966344    0.4140559
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Early term           Full or late term    -0.1424433   -0.4784488    0.1935621
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term     0.1657670    0.0656061    0.2659280
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term    -0.0037830   -0.1005975    0.0930315
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term     0.0719175   -0.0378684    0.1817034
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term     0.0552259   -0.0354003    0.1458520
3-6 months     ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         Preterm              Full or late term     0.1373575    0.0073927    0.2673223
3-6 months     ki1101329-Keneba           GAMBIA                         Early term           Full or late term     0.0556122   -0.0413762    0.1526006
3-6 months     ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        Preterm              Full or late term     0.1575423    0.0367502    0.2783343
3-6 months     ki1119695-PROBIT           BELARUS                        Early term           Full or late term     0.0505530    0.0195130    0.0815930
3-6 months     ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term    -0.0384289   -0.1470646    0.0702068
3-6 months     ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term     0.0281048   -0.0475683    0.1037780
3-6 months     ki1135781-COHORTS          INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          Preterm              Full or late term     0.0896955    0.0177414    0.1616496
3-6 months     ki1135781-COHORTS          INDIA                          Early term           Full or late term     0.0760347    0.0132380    0.1388315
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term     0.1422095    0.1128314    0.1715875
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term     0.0692942    0.0429067    0.0956817
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term     0.0747980   -0.0485848    0.1981808
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term    -0.0102021   -0.1297920    0.1093878
6-12 months    ki1000108-IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA                          Preterm              Full or late term    -0.0044098   -0.1055491    0.0967294
6-12 months    ki1000108-IRC              INDIA                          Early term           Full or late term     0.0301729   -0.0384360    0.0987818
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Preterm              Full or late term     0.0838597   -0.0971097    0.2648290
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Early term           Full or late term     0.0433177   -0.1242794    0.2109149
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term     0.0067627   -0.0412224    0.0547477
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term     0.0324211   -0.0145448    0.0793871
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    -0.0604727   -0.1305451    0.0095998
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    -0.0004642   -0.0584776    0.0575492
6-12 months    ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6-12 months    ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    -0.0157216   -0.0703973    0.0389542
6-12 months    ki1101329-Keneba           GAMBIA                         Early term           Full or late term     0.0441863   -0.0019298    0.0903023
6-12 months    ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS                        Preterm              Full or late term     0.0981846    0.0360515    0.1603177
6-12 months    ki1119695-PROBIT           BELARUS                        Early term           Full or late term     0.0258469   -0.0024727    0.0541665
6-12 months    ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term     0.0446788   -0.0144780    0.1038356
6-12 months    ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term     0.0018937   -0.0417804    0.0455677
6-12 months    ki1135781-COHORTS          INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          INDIA                          Preterm              Full or late term     0.0157543   -0.0300713    0.0615800
6-12 months    ki1135781-COHORTS          INDIA                          Early term           Full or late term     0.0114455   -0.0306027    0.0534937
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term     0.0179934   -0.0147366    0.0507235
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    -0.0022762   -0.0299733    0.0254210
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term     0.0328465    0.0161711    0.0495219
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term     0.0093828   -0.0067569    0.0255226
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    -0.0268130   -0.1147072    0.0610812
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term    -0.0512362   -0.1183130    0.0158406
12-24 months   ki1000108-IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA                          Preterm              Full or late term    -0.0123830   -0.0709479    0.0461820
12-24 months   ki1000108-IRC              INDIA                          Early term           Full or late term    -0.0072939   -0.0505565    0.0359687
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term     0.0269833   -0.0097863    0.0637529
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term     0.0186755   -0.0173696    0.0547207
12-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
12-24 months   ki1101329-Keneba           GAMBIA                         Preterm              Full or late term     0.0007214   -0.0289034    0.0303461
12-24 months   ki1101329-Keneba           GAMBIA                         Early term           Full or late term     0.0359219    0.0082944    0.0635495
12-24 months   ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
12-24 months   ki1119695-PROBIT           BELARUS                        Preterm              Full or late term     0.0229414   -0.1155290    0.1614117
12-24 months   ki1119695-PROBIT           BELARUS                        Early term           Full or late term     0.0043628   -0.0851811    0.0939067
12-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term     0.0217543   -0.0156180    0.0591267
12-24 months   ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term     0.0202845   -0.0085928    0.0491618
12-24 months   ki1135781-COHORTS          INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          INDIA                          Preterm              Full or late term    -0.0046856   -0.0303049    0.0209337
12-24 months   ki1135781-COHORTS          INDIA                          Early term           Full or late term    -0.0091780   -0.0315734    0.0132175
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    -0.0101353   -0.0301335    0.0098628
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    -0.0076726   -0.0243076    0.0089624
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term     0.0040325   -0.0125043    0.0205693
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term     0.0179588    0.0050972    0.0308203
