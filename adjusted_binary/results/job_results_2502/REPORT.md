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
        value: FALSE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
  output_directory:
    value: ''

---







## Methods
## Outcome Variable

**Outcome Variable:** stunted

## Predictor Variables

**Intervention Variable:** hdlvry

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* W_nrooms
* brthmon
* W_parity
* impsan
* delta_W_mage
* delta_meducyrs
* delta_W_nrooms
* delta_brthmon
* delta_W_parity
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        hdlvry    stunted   n_cell      n
----------  -------------------------  -----------------------------  -------  --------  -------  -----
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0               0      249    366
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0               1      109    366
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1               0        7    366
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1               1        1    366
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0               0      102    369
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0               1      259    369
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               0        3    369
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               1        5    369
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0               0       74     90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0               1       16     90
6 months    ki1000108-IRC              INDIA                          0               0      303    407
6 months    ki1000108-IRC              INDIA                          0               1       96    407
6 months    ki1000108-IRC              INDIA                          1               0        4    407
6 months    ki1000108-IRC              INDIA                          1               1        4    407
24 months   ki1000108-IRC              INDIA                          0               0      236    409
24 months   ki1000108-IRC              INDIA                          0               1      165    409
24 months   ki1000108-IRC              INDIA                          1               0        3    409
24 months   ki1000108-IRC              INDIA                          1               1        5    409
Birth       ki1000108-IRC              INDIA                          0               0      337    388
Birth       ki1000108-IRC              INDIA                          0               1       44    388
Birth       ki1000108-IRC              INDIA                          1               0        6    388
Birth       ki1000108-IRC              INDIA                          1               1        1    388
6 months    ki1000109-EE               PAKISTAN                       0               0      123    370
6 months    ki1000109-EE               PAKISTAN                       0               1      125    370
6 months    ki1000109-EE               PAKISTAN                       1               0       55    370
6 months    ki1000109-EE               PAKISTAN                       1               1       67    370
Birth       ki1000109-EE               PAKISTAN                       0               0        1      2
Birth       ki1000109-EE               PAKISTAN                       0               1        1      2
6 months    ki1000304b-SAS-CompFeed    INDIA                          0               0      109   1091
6 months    ki1000304b-SAS-CompFeed    INDIA                          0               1       38   1091
6 months    ki1000304b-SAS-CompFeed    INDIA                          1               0      655   1091
6 months    ki1000304b-SAS-CompFeed    INDIA                          1               1      289   1091
Birth       ki1000304b-SAS-CompFeed    INDIA                          0               0        6    180
Birth       ki1000304b-SAS-CompFeed    INDIA                          0               1        5    180
Birth       ki1000304b-SAS-CompFeed    INDIA                          1               0      129    180
Birth       ki1000304b-SAS-CompFeed    INDIA                          1               1       40    180
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0               0       45    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0               1       31    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1               0      172    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1               1      132    380
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               0      364    583
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               1       69    583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               0      125    583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               1       25    583
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               0      294    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               1      138    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               0       93    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               1       52    577
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0               0       18     27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0               1        4     27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1               0        4     27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1               1        1     27
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0               0      449    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0               1      105    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1               0      116    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1               1       45    715
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0               0      302    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0               1       89    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1               0       80    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1               1       43    514
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               0     1707   1921
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1      182   1921
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0       27   1921
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        5   1921
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               0        5      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1        1      6
6 months    ki1113344-GMS-Nepal        NEPAL                          0               0      110    527
6 months    ki1113344-GMS-Nepal        NEPAL                          0               1       19    527
6 months    ki1113344-GMS-Nepal        NEPAL                          1               0      313    527
6 months    ki1113344-GMS-Nepal        NEPAL                          1               1       85    527
24 months   ki1113344-GMS-Nepal        NEPAL                          0               0       73    467
24 months   ki1113344-GMS-Nepal        NEPAL                          0               1       47    467
24 months   ki1113344-GMS-Nepal        NEPAL                          1               0      185    467
24 months   ki1113344-GMS-Nepal        NEPAL                          1               1      162    467
Birth       ki1135781-COHORTS          INDIA                          0               0     2613   4694
Birth       ki1135781-COHORTS          INDIA                          0               1      325   4694
Birth       ki1135781-COHORTS          INDIA                          1               0     1534   4694
Birth       ki1135781-COHORTS          INDIA                          1               1      222   4694
6 months    ki1135781-COHORTS          INDIA                          0               0     2457   4699
6 months    ki1135781-COHORTS          INDIA                          0               1      443   4699
6 months    ki1135781-COHORTS          INDIA                          1               0     1323   4699
6 months    ki1135781-COHORTS          INDIA                          1               1      476   4699
24 months   ki1135781-COHORTS          INDIA                          0               0     1324   3559
24 months   ki1135781-COHORTS          INDIA                          0               1      909   3559
24 months   ki1135781-COHORTS          INDIA                          1               0      468   3559
24 months   ki1135781-COHORTS          INDIA                          1               1      858   3559
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0               0        6    300
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0               1        5    300
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               0      213    300
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               1       76    300
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0               0       34    332
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0               1        5    332
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               0      220    332
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               1       73    332
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               0       21    291
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               1       14    291
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               0      115    291
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               1      141    291
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               0      699   4005
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               1      334   4005
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               0     1741   4005
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               1     1231   4005
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0               0      860   4038
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0               1      221   4038
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               0     2174   4038
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               1      783   4038
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               0       37    820
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               1       10    820
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               0      537    820
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               1      236    820


The following strata were considered:

* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
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

```
##       stunted
## hdlvry  0  1
##      0 74 16
##      1  0  0
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/8a55cfe1-2b51-47d3-95b4-5d7b5f53d8cb/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8a55cfe1-2b51-47d3-95b4-5d7b5f53d8cb/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8a55cfe1-2b51-47d3-95b4-5d7b5f53d8cb/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8a55cfe1-2b51-47d3-95b4-5d7b5f53d8cb/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.4206235    0.3955018   0.4457453
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.2354777    0.1587392   0.3122161
Birth       ki1135781-COHORTS          INDIA                          0                    NA                0.1110597    0.0996152   0.1225042
Birth       ki1135781-COHORTS          INDIA                          1                    NA                0.1237303    0.1090172   0.1384435
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.3557681    0.1205420   0.5909942
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2659982    0.1986840   0.3333123
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1801957    0.0838319   0.2765595
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.3052255    0.2685693   0.3418818
6 months    ki1000109-EE               PAKISTAN                       0                    NA                0.5060044    0.4443973   0.5676116
6 months    ki1000109-EE               PAKISTAN                       1                    NA                0.5629106    0.4775823   0.6482390
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.2590004    0.2277608   0.2902400
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.3047195    0.2822971   0.3271419
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.5216206    0.4343759   0.6088653
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.4437166    0.3890137   0.4984196
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1594824    0.1250139   0.1939509
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1680453    0.1087609   0.2273297
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1896527    0.1570586   0.2222469
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2789561    0.2093731   0.3485391
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0968225    0.0835120   0.1101330
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.8476358    0.7501152   0.9451564
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1012236    0.0529160   0.1495312
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.2052156    0.1660841   0.2443471
6 months    ki1135781-COHORTS          INDIA                          0                    NA                0.1691607    0.1552429   0.1830784
6 months    ki1135781-COHORTS          INDIA                          1                    NA                0.2729249    0.2532851   0.2925648
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0330086   -0.0160393   0.0820566
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2431684    0.1715319   0.3148049
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.2099711    0.1816857   0.2382566
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2630596    0.2442814   0.2818378
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.3194444    0.2754384   0.3634505
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3586207    0.2804910   0.4367503
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.2299596    0.1884892   0.2714301
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.3763177    0.2939986   0.4586368
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.4505700    0.3813479   0.5197921
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.4727338    0.4224487   0.5230188
24 months   ki1135781-COHORTS          INDIA                          0                    NA                0.4440385    0.4238528   0.4642242
24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.6124945    0.5881197   0.6368692
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.6645780    0.5947061   0.7344499
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.5555120    0.4932407   0.6177834
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.3326349    0.2961157   0.3691541
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.4066280    0.3853758   0.4278802


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2500000   0.1698155   0.3301845
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                0.1165317   0.1073518   0.1257117
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2700000   0.2043793   0.3356207
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3000000   0.2644043   0.3355957
6 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.5189189   0.4679396   0.5698982
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2997250   0.2767096   0.3227405
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.4289474   0.3791199   0.4787748
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1612350   0.1313580   0.1911120
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2097902   0.1799252   0.2396552
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0973451   0.0840860   0.1106043
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1973435   0.1633315   0.2313554
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1955735   0.1842315   0.2069155
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2349398   0.1664503   0.3034292
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2486379   0.2325647   0.2647112
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3292894   0.2909105   0.3676684
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2568093   0.2190047   0.2946140
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4475375   0.4023913   0.4926837
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.4964878   0.4800590   0.5129165
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.5326460   0.4663548   0.5989373
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3907615   0.3719765   0.4095466


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000    1.000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    0                 0.5598300   0.4001436    0.783243
Birth       ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000    1.000000
Birth       ki1135781-COHORTS          INDIA                          1                    0                 1.1140881   0.9520990    1.303638
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000    1.000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 0.7476728   0.3724654    1.500850
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000    1.000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.6938557   0.9823056    2.920829
6 months    ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000    1.000000
6 months    ki1000109-EE               PAKISTAN                       1                    0                 1.1124619   0.9158092    1.351342
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000    1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0                 1.1765214   1.0263949    1.348606
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.0000000   1.0000000    1.000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 0.8506500   0.6907639    1.047544
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000    1.000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.0536918   0.6967510    1.593491
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000    1.000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.4708784   1.0868644    1.990573
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000    1.000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 8.7545341   7.3126650   10.480702
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000    1.000000
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                 2.0273488   1.2122699    3.390452
6 months    ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          INDIA                          1                    0                 1.6134067   1.4468510    1.799135
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 7.3668167   1.6920680   32.073172
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.2528371   1.0772164    1.457090
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000    1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.1226387   0.8675523    1.452728
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000    1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.6364512   1.2349903    2.168416
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000    1.000000
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.0491905   0.8734347    1.260312
24 months   ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          INDIA                          1                    0                 1.3793725   1.3000176    1.463571
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 0.8358869   0.7267432    0.961422
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.2224453   1.0842143    1.378300


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.1706235   -0.2590581   -0.0821890
Birth       ki1135781-COHORTS          INDIA                          0                    NA                 0.0054720   -0.0020808    0.0130248
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0857681   -0.3186871    0.1471508
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.1198043    0.0251867    0.2144219
6 months    ki1000109-EE               PAKISTAN                       0                    NA                 0.0129145   -0.0225870    0.0484160
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0407246    0.0094955    0.0719537
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -0.0926733   -0.1725381   -0.0128085
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0017526   -0.0159671    0.0194722
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0201375    0.0026442    0.0376308
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0005226   -0.0016467    0.0026920
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0961198    0.0504119    0.1418278
6 months    ki1135781-COHORTS          INDIA                          0                    NA                 0.0264129    0.0163319    0.0364939
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.2019311    0.1327064    0.2711559
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0386668    0.0139359    0.0633978
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0098450   -0.0127319    0.0324218
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0268497    0.0044931    0.0492064
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0030325   -0.0629813    0.0569163
24 months   ki1135781-COHORTS          INDIA                          0                    NA                 0.0524493    0.0398157    0.0650830
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.1319319   -0.2039672   -0.0598967
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0581266    0.0269397    0.0893135


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.6824941   -1.3570793   -0.2009721
Birth       ki1135781-COHORTS          INDIA                          0                    NA                 0.0469573   -0.0199284    0.1094567
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.3176598   -1.5581827    0.3213045
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.3993476   -0.0103654    0.6429180
6 months    ki1000109-EE               PAKISTAN                       0                    NA                 0.0248873   -0.0459848    0.0909574
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.1358733    0.0289358    0.2310343
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -0.2160481   -0.4237273   -0.0386631
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0108698   -0.1053488    0.1148689
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0959886    0.0093561    0.1750450
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0053689   -0.0171362    0.0273762
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.4870688    0.2092845    0.6672654
6 months    ki1135781-COHORTS          INDIA                          0                    NA                 0.1350534    0.0826426    0.1844699
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.8595018    0.4229598    0.9657914
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.1555145    0.0503778    0.2490111
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0298977   -0.0411411    0.0960893
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.1045512    0.0137251    0.1870130
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0067760   -0.1501718    0.1187422
24 months   ki1135781-COHORTS          INDIA                          0                    NA                 0.1056407    0.0797732    0.1307810
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.2476916   -0.4102309   -0.1038861
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.1487522    0.0646749    0.2252717
