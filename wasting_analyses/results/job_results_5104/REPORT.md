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

**Outcome Variable:** wast_rec90d

## Predictor Variables

**Intervention Variable:** vagbrth

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        vagbrth    wast_rec90d   n_cell       n
------------  -------------------------  -----------------------------  --------  ------------  -------  ------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0       11     326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    1        9     326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0      109     326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1      197     326
0-24 months   ki1000108-IRC              INDIA                          0                    0       24     395
0-24 months   ki1000108-IRC              INDIA                          0                    1       39     395
0-24 months   ki1000108-IRC              INDIA                          1                    0      138     395
0-24 months   ki1000108-IRC              INDIA                          1                    1      194     395
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0       26     307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    1       43     307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0      102     307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1      136     307
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0       18     190
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    1       43     190
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0       58     190
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1       71     190
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0       24     705
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1       32     705
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0      240     705
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1      409     705
0-24 months   ki1119695-PROBIT           BELARUS                        0                    0       68    4431
0-24 months   ki1119695-PROBIT           BELARUS                        0                    1      391    4431
0-24 months   ki1119695-PROBIT           BELARUS                        1                    0      547    4431
0-24 months   ki1119695-PROBIT           BELARUS                        1                    1     3425    4431
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0      119    3543
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    1      182    3543
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0     1494    3543
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1     1748    3543
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0      412   15099
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    1      482   15099
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0     8303   15099
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1     5902   15099
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0      168    3577
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    1       94    3577
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0     2414    3577
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1      901    3577
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0        8     203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    1        8     203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0       58     203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    1      129     203
0-6 months    ki1000108-IRC              INDIA                          0                    0       16     240
0-6 months    ki1000108-IRC              INDIA                          0                    1       31     240
0-6 months    ki1000108-IRC              INDIA                          1                    0       71     240
0-6 months    ki1000108-IRC              INDIA                          1                    1      122     240
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0        6     184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    1       40     184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0       33     184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1      105     184
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0        4     112
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    1       37     112
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0       10     112
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    1       61     112
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0        8     335
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1       17     335
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0       91     335
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1      219     335
0-6 months    ki1119695-PROBIT           BELARUS                        0                    0       50    4263
0-6 months    ki1119695-PROBIT           BELARUS                        0                    1      388    4263
0-6 months    ki1119695-PROBIT           BELARUS                        1                    0      438    4263
0-6 months    ki1119695-PROBIT           BELARUS                        1                    1     3387    4263
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0       42    2499
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    1      177    2499
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0      600    2499
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1     1680    2499
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0      164    9454
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    1      482    9454
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0     2906    9454
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1     5902    9454
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0       34    1020
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    1       66    1020
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0      368    1020
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    1      552    1020
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0        3     123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    1        1     123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0       51     123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1       68     123
6-24 months   ki1000108-IRC              INDIA                          0                    0        8     155
6-24 months   ki1000108-IRC              INDIA                          0                    1        8     155
6-24 months   ki1000108-IRC              INDIA                          1                    0       67     155
6-24 months   ki1000108-IRC              INDIA                          1                    1       72     155
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0       20     123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    1        3     123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0       69     123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1       31     123
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0       14      78
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    1        6      78
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0       48      78
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1       10      78
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0       16     370
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1       15     370
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0      149     370
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1      190     370
6-24 months   ki1119695-PROBIT           BELARUS                        0                    0       18     168
6-24 months   ki1119695-PROBIT           BELARUS                        0                    1        3     168
6-24 months   ki1119695-PROBIT           BELARUS                        1                    0      109     168
6-24 months   ki1119695-PROBIT           BELARUS                        1                    1       38     168
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0       77    1044
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    1        5    1044
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0      894    1044
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1       68    1044
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0      248    5645
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    1        0    5645
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0     5397    5645
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1        0    5645
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0      134    2557
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    1       28    2557
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0     2046    2557
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1      349    2557


The following strata were considered:

* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/b644e9e5-a141-4da9-9b55-ee61ee3c4dd4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b644e9e5-a141-4da9-9b55-ee61ee3c4dd4/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b644e9e5-a141-4da9-9b55-ee61ee3c4dd4/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b644e9e5-a141-4da9-9b55-ee61ee3c4dd4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.4500000   0.2006580   0.6993420
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.6437908   0.5870303   0.7005514
0-24 months   ki1000108-IRC              INDIA                          0                    NA                0.6190476   0.4772971   0.7607982
0-24 months   ki1000108-IRC              INDIA                          1                    NA                0.5843373   0.5284088   0.6402659
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.6231884   0.4993419   0.7470349
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.5714286   0.5076148   0.6352423
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.7049180   0.5781341   0.8317019
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.5503876   0.4655006   0.6352746
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.5714286   0.4271663   0.7156908
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.6302003   0.5909976   0.6694030
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                0.8518519   0.8199332   0.8837705
0-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.8622860   0.8516399   0.8729321
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.6046512   0.5491551   0.6601472
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.5391733   0.5218641   0.5564826
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.5391499   0.4925424   0.5857573
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4154875   0.4040452   0.4269298
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.3587786   0.2702891   0.4472682
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2717949   0.2497826   0.2938071
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.5000000   0.2472620   0.7527380
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.6898396   0.6225361   0.7571431
0-6 months    ki1000108-IRC              INDIA                          0                    NA                0.6595745   0.5187984   0.8003505
0-6 months    ki1000108-IRC              INDIA                          1                    NA                0.6321244   0.5625866   0.7016621
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.8695652   0.7703543   0.9687761
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.7608696   0.6908322   0.8309069
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.6800000   0.4929570   0.8670430
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7064516   0.6550297   0.7578735
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.8858447   0.8559825   0.9157070
0-6 months    ki1119695-PROBIT           BELARUS                        1                    NA                0.8854902   0.8753187   0.8956617
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.8082192   0.7558565   0.8605819
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.7368421   0.7187854   0.7548988
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.7461300   0.6986414   0.7936186
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.6700727   0.6561863   0.6839590
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.6600000   0.5285681   0.7914319
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.6000000   0.5551873   0.6448127
6-24 months   ki1000108-IRC              INDIA                          0                    NA                0.5000000   0.2294903   0.7705097
6-24 months   ki1000108-IRC              INDIA                          1                    NA                0.5179856   0.4297875   0.6061838
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.3000000   0.0725547   0.5274453
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1724138   0.0793318   0.2654957
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.4838710   0.2943667   0.6733752
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.5604720   0.5059373   0.6150067
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0609756   0.0065400   0.1154112
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0706861   0.0547411   0.0866311
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1728395   0.0883086   0.2573705
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.1457203   0.1260213   0.1654192


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6319018   0.5759256   0.6878781
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.5898734   0.5376978   0.6420491
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.5830619   0.5262762   0.6398476
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.6000000   0.5288495   0.6711505
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6255319   0.5876598   0.6634040
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.8612051   0.8511051   0.8713052
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.5447361   0.5281997   0.5612725
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4228095   0.4116714   0.4339475
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2781661   0.2567200   0.2996121
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6748768   0.6092233   0.7405304
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.6375000   0.5751450   0.6998550
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.7880435   0.7295878   0.8464992
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7044776   0.6548846   0.7540707
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.8855266   0.8758983   0.8951550
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.7430972   0.7259776   0.7602169
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.6752697   0.6619203   0.6886192
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.6058824   0.5634305   0.6483342
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.5161290   0.4322562   0.6000019
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2051282   0.1132549   0.2970015
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.5540541   0.5015831   0.6065250
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0699234   0.0546210   0.0852257
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1474384   0.1282205   0.1666563


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.4306463   0.8163766   2.5071137
0-24 months   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          1                    0                 0.9439296   0.7364714   1.2098271
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 0.9169435   0.7299469   1.1518446
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 0.7807824   0.6159403   0.9897407
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.1028505   0.8503520   1.4303246
0-24 months   ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        1                    0                 1.0122488   0.9730912   1.0529821
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 0.8917098   0.8090819   0.9827760
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 0.7706345   0.7037956   0.8438211
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 0.7575559   0.5843514   0.9820991
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.3796791   0.8245122   2.3086554
0-6 months    ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          1                    0                 0.9583821   0.7537882   1.2185071
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 0.8750000   0.7556881   1.0131495
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.0388994   0.7816335   1.3808416
0-6 months    ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        1                    0                 0.9995998   0.9646267   1.0358408
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 0.9116860   0.8506734   0.9770746
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 0.8980642   0.8399195   0.9602340
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 0.9090909   0.7349192   1.1245403
6-24 months   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          1                    0                 1.0359712   0.5874383   1.8269773
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 0.5747126   0.2266054   1.4575764
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.1583088   0.7736858   1.7341395
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.1592516   0.4616155   2.9112199
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 0.8430957   0.5075861   1.4003740


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.1819018   -0.0576922    0.4214959
0-24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0291742   -0.1572589    0.0989105
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0401265   -0.1480853    0.0678323
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.1049180   -0.2085775   -0.0012585
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0541033   -0.0835572    0.1917639
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0093533   -0.0208102    0.0395168
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0599151   -0.1130993   -0.0067308
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.1163404   -0.1614849   -0.0711960
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0806126   -0.1651135    0.0038884
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.1748768   -0.0657175    0.4154712
0-6 months    ki1000108-IRC              INDIA                          0                    NA                -0.0220745   -0.1483923    0.1042433
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0815217   -0.1728369    0.0097935
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0244776   -0.1550298    0.2039850
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                -0.0003181   -0.0286238    0.0279876
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0651219   -0.1156627   -0.0145812
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0708603   -0.1169600   -0.0247606
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0541176   -0.1793749    0.0711396
6-24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0161290   -0.2390237    0.2712818
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0948718   -0.2780930    0.0883494
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0701831   -0.1104929    0.2508590
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0089478   -0.0433206    0.0612162
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0254011   -0.1067015    0.0558993


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.2878641   -0.2169136    0.5832592
0-24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0494584   -0.2903597    0.1464683
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0688203   -0.2708308    0.1010786
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.1748634   -0.3619837   -0.0134512
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0864917   -0.1627010    0.2822769
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0108607   -0.0247933    0.0452742
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.1099892   -0.2121531   -0.0164359
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.2751604   -0.3867182   -0.1725772
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.2898001   -0.6315788   -0.0196164
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.2591241   -0.2023404    0.5434761
0-6 months    ki1000108-IRC              INDIA                          0                    NA                -0.0346266   -0.2530595    0.1457291
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.1034483   -0.2274251    0.0080062
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0347458   -0.2569309    0.2587375
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                -0.0003592   -0.0328402    0.0311003
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0876358   -0.1579839   -0.0215614
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.1049363   -0.1754778   -0.0386280
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0893204   -0.3172442    0.0991656
6-24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0312500   -0.6139924    0.4185372
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.4625000   -1.6271554    0.1858471
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.1266719   -0.2694429    0.3991837
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.1279653   -1.0561158    0.6301548
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.1722828   -0.8751776    0.2671377
