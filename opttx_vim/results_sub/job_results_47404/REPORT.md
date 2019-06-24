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

**Intervention Variable:** parity

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_mhtcm
* vagbrth
* W_nrooms
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_vagbrth
* delta_W_nrooms
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        parity    n_cell       n
----------  -------------------------  -----------------------------  -------  -------  ------
Birth       ki1000304b-SAS-CompFeed    INDIA                          1             41     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          2             44     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          3+            81     166
Birth       ki1101329-Keneba           GAMBIA                         1            142    1292
Birth       ki1101329-Keneba           GAMBIA                         2            133    1292
Birth       ki1101329-Keneba           GAMBIA                         3+          1017    1292
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1           5561   12915
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2           3882   12915
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3+          3472   12915
Birth       ki1135781-COHORTS          GUATEMALA                      1             94     756
Birth       ki1135781-COHORTS          GUATEMALA                      2            118     756
Birth       ki1135781-COHORTS          GUATEMALA                      3+           544     756
Birth       ki1135781-COHORTS          INDIA                          1            641    3855
Birth       ki1135781-COHORTS          INDIA                          2            982    3855
Birth       ki1135781-COHORTS          INDIA                          3+          2232    3855
Birth       ki1135781-COHORTS          PHILIPPINES                    1            640    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    2            657    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    3+          1602    2899
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1           4604   15692
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2           5539   15692
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+          5549   15692
6 months    ki1000304b-SAS-CompFeed    INDIA                          1            392    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          2            302    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          3+           640    1334
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1             72     373
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2             84     373
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+           217     373
6 months    ki1017093b-PROVIDE         BANGLADESH                     1            211     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     2            212     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+           159     582
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            679    1994
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2            657    1994
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+           658    1994
6 months    ki1101329-Keneba           GAMBIA                         1            195    1623
6 months    ki1101329-Keneba           GAMBIA                         2            164    1623
6 months    ki1101329-Keneba           GAMBIA                         3+          1264    1623
6 months    ki1113344-GMS-Nepal        NEPAL                          1            153     563
6 months    ki1113344-GMS-Nepal        NEPAL                          2            149     563
6 months    ki1113344-GMS-Nepal        NEPAL                          3+           261     563
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1           3285    8263
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2           2514    8263
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+          2464    8263
6 months    ki1135781-COHORTS          GUATEMALA                      1            132     963
6 months    ki1135781-COHORTS          GUATEMALA                      2            139     963
6 months    ki1135781-COHORTS          GUATEMALA                      3+           692     963
6 months    ki1135781-COHORTS          INDIA                          1            741    4285
6 months    ki1135781-COHORTS          INDIA                          2           1093    4285
6 months    ki1135781-COHORTS          INDIA                          3+          2451    4285
6 months    ki1135781-COHORTS          PHILIPPINES                    1            574    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    2            607    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    3+          1525    2706
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1           6390   16776
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2           5685   16776
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+          4701   16776
24 months   ki1017093b-PROVIDE         BANGLADESH                     1            211     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     2            213     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+           154     578
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2              1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+             4       6
24 months   ki1101329-Keneba           GAMBIA                         1            137    1376
24 months   ki1101329-Keneba           GAMBIA                         2            139    1376
24 months   ki1101329-Keneba           GAMBIA                         3+          1100    1376
24 months   ki1113344-GMS-Nepal        NEPAL                          1            136     498
24 months   ki1113344-GMS-Nepal        NEPAL                          2            130     498
24 months   ki1113344-GMS-Nepal        NEPAL                          3+           232     498
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1            160     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2            121     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+           141     422
24 months   ki1135781-COHORTS          GUATEMALA                      1            167    1076
24 months   ki1135781-COHORTS          GUATEMALA                      2            151    1076
24 months   ki1135781-COHORTS          GUATEMALA                      3+           758    1076
24 months   ki1135781-COHORTS          INDIA                          1            561    3354
24 months   ki1135781-COHORTS          INDIA                          2            837    3354
24 months   ki1135781-COHORTS          INDIA                          3+          1956    3354
24 months   ki1135781-COHORTS          PHILIPPINES                    1            523    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    2            544    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    3+          1382    2449
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1           3158    8595
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2           2909    8595
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+          2528    8595


The following strata were considered:

* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/48ac47bc-f1ea-4a6e-82ab-daba9bb0a7df/66b6f1a7-7b2f-4e15-9638-d6dad84db413/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.5351641   -0.9904736   -0.0798546
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed           1.3148271    1.1911387    1.4385155
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.3215184   -0.3993791   -0.2436577
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -1.2972583   -1.5120032   -1.0825133
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.9768082   -1.0441674   -0.9094489
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.6088349   -0.6823454   -0.5353245
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.6899047   -0.7277156   -0.6520937
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.5757433   -0.6607003   -0.4907862
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.6179698   -0.8489845   -0.3869552
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.2452628   -0.4349760   -0.0555495
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1684252    0.0628093    0.2740412
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed           0.0760902   -0.2220355    0.3742159
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.4084770   -0.5693924   -0.2475615
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.3520073    0.2884388    0.4155759
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.1062860   -0.1457944    0.3583664
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.5771723   -0.6772365   -0.4771080
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.2799948   -0.3964428   -0.1635467
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.6108130   -0.6520863   -0.5695397
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.0698139   -1.2020916   -0.9375361
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.8566625   -1.0798210   -0.6335041
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.2372057   -1.4540349   -1.0203764
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.9019364   -1.0602396   -0.7436331
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.4464956   -0.6755801   -0.2174111
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.5469427   -0.6360081   -0.4578774
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.4445452   -0.5610402   -0.3280503
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.1914457   -1.2700226   -1.1128687


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.2697590   -0.5399211    0.0004030
Birth       ki1101329-Keneba           GAMBIA                         observed             observed           1.7138545    1.6262621    1.8014469
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.5152877   -0.5411394   -0.4894359
Birth       ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.0621429   -1.1631387   -0.9611471
Birth       ki1135781-COHORTS          INDIA                          observed             observed          -0.9498080   -0.9874148   -0.9122013
Birth       ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.7427251   -0.7890855   -0.6963647
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.7238886   -0.7437224   -0.7040548
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.6657084   -0.8024377   -0.5289791
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             observed          -0.9946381   -1.1114079   -0.8778682
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.2083706   -0.2927992   -0.1239419
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0797179    0.0266621    0.1327737
6 months    ki1101329-Keneba           GAMBIA                         observed             observed          -0.1874118   -0.2456850   -0.1291387
6 months    ki1113344-GMS-Nepal        NEPAL                          observed             observed          -0.6047987   -0.6909649   -0.5186325
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed           0.3048076    0.2787350    0.3308802
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed           0.1940810    0.1226351    0.2655269
6 months    ki1135781-COHORTS          INDIA                          observed             observed          -0.7068611   -0.7417800   -0.6719423
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.2938433   -0.3352064   -0.2524802
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.5932502   -0.6127743   -0.5737261
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.8879412   -0.9708680   -0.8050144
24 months   ki1101329-Keneba           GAMBIA                         observed             observed          -0.7834078   -0.8357743   -0.7310414
24 months   ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.1315863   -1.2192240   -1.0439487
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -1.1802133   -1.2803837   -1.0800428
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -0.2813755   -0.3354674   -0.2272835
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -0.6564729   -0.6914450   -0.6215007
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.6099592   -0.6467541   -0.5731643
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.2971774   -1.3204904   -1.2738644


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed           0.2654051    0.0366219    0.4941882
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed           0.3990274    0.2984150    0.4996398
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1937692   -0.2681103   -0.1194282
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.2351154    0.0371083    0.4331225
Birth       ki1135781-COHORTS          INDIA                          optimal              observed           0.0270001   -0.0286684    0.0826686
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.1338902   -0.1938899   -0.0738904
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0339839   -0.0691167    0.0011488
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.0899651   -0.1965938    0.0166636
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.3766683   -0.6115746   -0.1417620
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed           0.0368922   -0.1329478    0.2067322
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0887073   -0.1803813    0.0029666
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.2635020   -0.5556316    0.0286276
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.1963217   -0.3557270   -0.0369165
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0471998   -0.1062883    0.0118887
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.0877950   -0.1569681    0.3325582
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.1296888   -0.2240895   -0.0352882
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0138486   -0.1242448    0.0965477
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed           0.0175628   -0.0190299    0.0541556
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed           0.1818727    0.0564521    0.3072933
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed           0.0732547   -0.1441036    0.2906130
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed           0.1056193   -0.1007440    0.3119827
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.2782769   -0.4267510   -0.1298029
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.1651201   -0.0528842    0.3831244
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.1095302   -0.1934104   -0.0256499
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.1654139   -0.2764214   -0.0544065
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1057317   -0.1793681   -0.0320953
