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
      W: []
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
        value: FALSE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
  output_directory:
    value: ''

---







## Methods
## Outcome Variable

**Outcome Variable:** y_rate_haz

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

agecat         studyid                    country                        vagbrth    n_cell       n
-------------  -------------------------  -----------------------------  --------  -------  ------
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0             148     634
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1             486     634
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0             193     469
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1             276     469
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0             852   20010
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1           19158   20010
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0             100    1805
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1            1705    1805
0-3 months     ki1119695-PROBIT           BELARUS                        0            1424   12745
0-3 months     ki1119695-PROBIT           BELARUS                        1           11321   12745
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0              10      87
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1              77      87
0-3 months     ki1000108-IRC              INDIA                          0              66     377
0-3 months     ki1000108-IRC              INDIA                          1             311     377
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       0             683    7802
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1            7119    7802
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0             133     574
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1             441     574
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0             182     443
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1             261     443
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0             769   12550
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1           11781   12550
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0             128    1762
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1            1634    1762
3-6 months     ki1119695-PROBIT           BELARUS                        0            1473   13309
3-6 months     ki1119695-PROBIT           BELARUS                        1           11836   13309
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0              21     307
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1             286     307
3-6 months     ki1000108-IRC              INDIA                          0              67     397
3-6 months     ki1000108-IRC              INDIA                          1             330     397
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0             159    1641
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            1482    1641
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       0             509    5842
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1            5333    5842
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0             121     545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1             424     545
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0             176     420
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1             244     420
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     0             591    9804
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1            9213    9804
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0             237    2808
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1            2571    2808
6-12 months    ki1119695-PROBIT           BELARUS                        0            1444   12896
6-12 months    ki1119695-PROBIT           BELARUS                        1           11452   12896
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0              22     323
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1             301     323
6-12 months    ki1000108-IRC              INDIA                          0              68     400
6-12 months    ki1000108-IRC              INDIA                          1             332     400
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0             102    1065
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             963    1065
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       0             369    4533
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1            4164    4533
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0             101     458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1             357     458
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0              94     241
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1             147     241
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0             262    4628
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1            4366    4628
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0             257    3115
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1            2858    3115
12-24 months   ki1119695-PROBIT           BELARUS                        0             298    2533
12-24 months   ki1119695-PROBIT           BELARUS                        1            2235    2533
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0              23     324
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1             301     324
12-24 months   ki1000108-IRC              INDIA                          0              67     396
12-24 months   ki1000108-IRC              INDIA                          1             329     396
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1       2
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1       2
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0              20     297
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1             277     297


The following strata were considered:

* agecat: 0-3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-3 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 12-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 12-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 12-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 3-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-12 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-12 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-12 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 12-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/4a5f3687-0181-4145-bad2-129add39b81a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/4a5f3687-0181-4145-bad2-129add39b81a/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.1172875   -0.1158481    0.3504232
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0980462   -0.2143438    0.0182514
0-3 months     ki1000108-IRC              INDIA                          0                    NA                -0.2956980   -0.4515384   -0.1398576
0-3 months     ki1000108-IRC              INDIA                          1                    NA                -0.2518137   -0.3109986   -0.1926288
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0138869   -0.0559543    0.0281806
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0496667   -0.0695223   -0.0298110
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0687556   -0.1066504   -0.0308607
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.1188747   -0.1508922   -0.0868572
0-3 months     ki1119695-PROBIT           BELARUS                        0                    NA                -0.4433356   -0.5014058   -0.3852653
0-3 months     ki1119695-PROBIT           BELARUS                        1                    NA                -0.4368672   -0.4974544   -0.3762800
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.2456002   -0.2792603   -0.2119400
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.1340683   -0.1450246   -0.1231119
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0881041    0.0643940    0.1118142
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0697865    0.0646992    0.0748739
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0300017   -0.0399086    0.0999120
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                 0.0694710    0.0540590    0.0848831
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.1496482   -0.3216775    0.0223812
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0941663   -0.1436836   -0.0446491
3-6 months     ki1000108-IRC              INDIA                          0                    NA                -0.0569315   -0.1313094    0.0174464
3-6 months     ki1000108-IRC              INDIA                          1                    NA                -0.0508686   -0.0837706   -0.0179666
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0442034   -0.0793596   -0.0090473
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0221277   -0.0407067   -0.0035487
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0123906   -0.0427971    0.0180158
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0108551   -0.0346816    0.0129713
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0712699   -0.1281048   -0.0144350
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0860182   -0.1035991   -0.0684373
3-6 months     ki1119695-PROBIT           BELARUS                        0                    NA                 0.0679022    0.0435200    0.0922844
3-6 months     ki1119695-PROBIT           BELARUS                        1                    NA                 0.0444865    0.0237462    0.0652267
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0052017   -0.0248550    0.0352584
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0025909   -0.0124423    0.0072605
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0041860   -0.0161038    0.0244759
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0039800   -0.0090401    0.0010801
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0003222   -0.0568602    0.0562157
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0098512   -0.0242042    0.0045018
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.1211446   -0.1867833   -0.0555060
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0977457   -0.1192707   -0.0762208
6-12 months    ki1000108-IRC              INDIA                          0                    NA                -0.0158461   -0.0481699    0.0164777
6-12 months    ki1000108-IRC              INDIA                          1                    NA                -0.0280979   -0.0421451   -0.0140507
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0460805   -0.0612808   -0.0308803
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0673337   -0.0750733   -0.0595942
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0242592   -0.0388115   -0.0097070
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0227202   -0.0355622   -0.0098782
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0524279   -0.0834517   -0.0214042
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0603407   -0.0700819   -0.0505996
6-12 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0356550    0.0178048    0.0535053
6-12 months    ki1119695-PROBIT           BELARUS                        1                    NA                 0.0431235    0.0262646    0.0599825
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0385585   -0.0555982   -0.0215188
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0497628   -0.0546082   -0.0449174
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0671239   -0.0800303   -0.0542175
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0753599   -0.0782932   -0.0724266
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0261949   -0.0396399   -0.0127499
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0384738   -0.0432174   -0.0337303
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0271023   -0.0720727    0.0178681
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0469256   -0.0573074   -0.0365438
12-24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0290299   -0.0457822   -0.0122777
12-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0323264   -0.0401171   -0.0245357
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0079002   -0.0167754    0.0009750
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0082486   -0.0124891   -0.0040081
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0122841   -0.0225691   -0.0019990
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0166303   -0.0234141   -0.0098465
12-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                -0.0382392   -0.0722100   -0.0042685
12-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                -0.0436911   -0.0619355   -0.0254467
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0677260   -0.1129912   -0.0224609
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0505390   -0.0599674   -0.0411105
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0155719   -0.0243193   -0.0068245
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0189933   -0.0208689   -0.0171177
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0091915   -0.0159513   -0.0024316
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0146340   -0.0167651   -0.0125030


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0732952   -0.1806423    0.0340519
0-3 months     ki1000108-IRC              INDIA                          NA                   NA                -0.2594964   -0.3154509   -0.2035418
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0413143   -0.0594662   -0.0231624
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0982500   -0.1228099   -0.0736901
0-3 months     ki1119695-PROBIT           BELARUS                        NA                   NA                -0.4375900   -0.4969173   -0.3782626
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.1438320   -0.1542778   -0.1333861
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                 0.0705665    0.0656128    0.0755202
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                 0.0672843    0.0522760    0.0822927
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0979615   -0.1455947   -0.0503283
3-6 months     ki1000108-IRC              INDIA                          NA                   NA                -0.0518918   -0.0819849   -0.0217987
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0272428   -0.0436954   -0.0107902
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0114860   -0.0302773    0.0073054
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0845892   -0.1013959   -0.0677825
3-6 months     ki1119695-PROBIT           BELARUS                        NA                   NA                 0.0470780    0.0278572    0.0662989
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0019119   -0.0112787    0.0074549
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0034796   -0.0083626    0.0014034
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0091589   -0.0232046    0.0048867
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0993395   -0.1199006   -0.0787784
6-12 months    ki1000108-IRC              INDIA                          NA                   NA                -0.0260151   -0.0389122   -0.0131180
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0626151   -0.0695574   -0.0556729
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0233651   -0.0330011   -0.0137291
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0595829   -0.0688798   -0.0502860
6-12 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.0422873    0.0257506    0.0588239
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0488507   -0.0535137   -0.0441878
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0748634   -0.0776939   -0.0720329
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0374375   -0.0419664   -0.0329085
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0455184   -0.0556929   -0.0353439
12-24 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0317687   -0.0388357   -0.0247017
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0081718   -0.0120131   -0.0043304
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0149351   -0.0207045   -0.0091656
12-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                -0.0430497   -0.0603171   -0.0257823
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0516964   -0.0610161   -0.0423766
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0187996   -0.0206536   -0.0169456
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0141850   -0.0162455   -0.0121244


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.2153337   -0.4758666    0.0451991
0-3 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          1                    0                  0.0438843   -0.1228163    0.2105849
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0357798   -0.0822977    0.0107381
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0501191   -0.0997290   -0.0005093
0-3 months     ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        1                    0                  0.0064683   -0.0272772    0.0402138
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.1115319    0.0761335    0.1469303
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.0183176   -0.0426940    0.0060588
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.0394693   -0.0323923    0.1113309
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.0554819   -0.1235323    0.2344960
3-6 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          1                    0                  0.0060629   -0.0752673    0.0873931
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0220758   -0.0176877    0.0618392
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  0.0015355   -0.0370942    0.0401652
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0147483   -0.0742403    0.0447437
3-6 months     ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        1                    0                 -0.0234157   -0.0518779    0.0050465
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.0077926   -0.0394226    0.0238374
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.0081660   -0.0291981    0.0128660
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0095290   -0.0674547    0.0483968
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.0233989   -0.0456790    0.0924768
6-12 months    ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA                          1                    0                 -0.0122518   -0.0474959    0.0229924
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0212532   -0.0383104   -0.0041960
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  0.0015390   -0.0178693    0.0209474
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0079128   -0.0404299    0.0246043
6-12 months    ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS                        1                    0                  0.0074685   -0.0053593    0.0202962
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.0112043   -0.0289195    0.0065109
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.0082360   -0.0216192    0.0051472
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0122790   -0.0263815    0.0018236
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0198234   -0.0659766    0.0263298
12-24 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA                          1                    0                 -0.0032965   -0.0217717    0.0151787
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0003484   -0.0101846    0.0094878
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0043462   -0.0166670    0.0079746
12-24 months   ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1119695-PROBIT           BELARUS                        1                    0                 -0.0054519   -0.0412483    0.0303446
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.0171871   -0.0290496    0.0634237
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.0034214   -0.0123074    0.0054646
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0054426   -0.0124088    0.0015236
