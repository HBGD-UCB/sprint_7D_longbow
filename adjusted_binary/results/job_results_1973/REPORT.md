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

**Outcome Variable:** stunted

## Predictor Variables

**Intervention Variable:** hdlvry

**Adjustment Set:**

unadjusted

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
##       stunted
## hdlvry  0  1
##      0 74 16
##      1  0  0
```




# Results Detail

## Results Plots
![](/tmp/a63289b7-d3d0-4743-8246-cd589d7c0bba/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a63289b7-d3d0-4743-8246-cd589d7c0bba/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a63289b7-d3d0-4743-8246-cd589d7c0bba/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a63289b7-d3d0-4743-8246-cd589d7c0bba/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.4545455   0.3211332   0.5879577
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.2366864   0.1571441   0.3162286
Birth       ki1135781-COHORTS          INDIA                          0                    NA                0.1106195   0.0992765   0.1219625
Birth       ki1135781-COHORTS          INDIA                          1                    NA                0.1264237   0.1108785   0.1419689
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.4545455   0.1768203   0.7322707
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2629758   0.1953339   0.3306176
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.2127660   0.0839179   0.3416140
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.3053040   0.2686150   0.3419930
6 months    ki1000109-EE               PAKISTAN                       0                    NA                0.5040323   0.4417211   0.5663434
6 months    ki1000109-EE               PAKISTAN                       1                    NA                0.5491803   0.4607676   0.6375931
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.2585034   0.2268011   0.2902057
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.3061441   0.2844641   0.3278240
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.4078947   0.2972611   0.5185283
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.4342105   0.3784199   0.4900011
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1593533   0.1248498   0.1938569
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1666667   0.1069756   0.2263577
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1895307   0.1568715   0.2221899
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2795031   0.2101368   0.3488694
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0963473   0.0830377   0.1096569
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1562500   0.0304145   0.2820855
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1472868   0.0860731   0.2085006
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.2135678   0.1732667   0.2538690
6 months    ki1135781-COHORTS          INDIA                          0                    NA                0.1527586   0.1396637   0.1658535
6 months    ki1135781-COHORTS          INDIA                          1                    NA                0.2645914   0.2442055   0.2849774
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1282051   0.0052540   0.2511562
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2491468   0.1752336   0.3230600
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.2044403   0.1750893   0.2337914
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2647954   0.2458100   0.2837808
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.3194444   0.2754384   0.3634505
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3586207   0.2804910   0.4367503
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.2276215   0.1860204   0.2692225
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.3495935   0.2652421   0.4339449
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.3916667   0.3042384   0.4790950
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.4668588   0.4143100   0.5194076
24 months   ki1135781-COHORTS          INDIA                          0                    NA                0.4070757   0.3866958   0.4274556
24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.6470588   0.6213335   0.6727841
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.4000000   0.2095503   0.5904497
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.5507812   0.4856834   0.6158791
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.3233301   0.2861564   0.3605038
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.4141992   0.3928233   0.4355751


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
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    0                 0.5207101   0.3121948   0.8684928
Birth       ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          INDIA                          1                    0                 1.1428702   0.9737860   1.3413133
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 0.5785467   0.2994589   1.1177370
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.4349288   0.7761467   2.6528759
6 months    ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000109-EE               PAKISTAN                       1                    0                 1.0895738   0.8894126   1.3347809
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0                 1.1842942   1.0376684   1.3516386
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 1.0645161   0.7885142   1.4371264
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.0458937   0.6882258   1.5894400
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.4747116   1.0901648   1.9949043
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.6217376   0.7163325   3.6715252
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.4500132   0.9186313   2.2887729
6 months    ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          INDIA                          1                    0                 1.7320884   1.5435253   1.9436871
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.9433447   0.7402346   5.1018808
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.2952209   1.1040090   1.5195503
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.1226387   0.8675523   1.4527281
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.5358546   1.1347332   2.0787700
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.1919799   0.9283203   1.5305235
24 months   ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          INDIA                          1                    0                 1.5895295   1.4910909   1.6944669
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.3769531   0.8651229   2.1915960
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.2810412   1.1303415   1.4518326


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.2045455   -0.3860759   -0.0230150
Birth       ki1135781-COHORTS          INDIA                          0                    NA                 0.0059123   -0.0012900    0.0131145
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.1845455   -0.4600090    0.0909181
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0872340   -0.0380355    0.2125035
6 months    ki1000109-EE               PAKISTAN                       0                    NA                 0.0148867   -0.0208440    0.0506173
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0412216    0.0115269    0.0709164
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0210526   -0.0780768    0.1201821
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0018816   -0.0158593    0.0196226
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0202595    0.0027767    0.0377424
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0009979   -0.0011377    0.0031334
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0500566   -0.0053463    0.1054595
6 months    ki1135781-COHORTS          INDIA                          0                    NA                 0.0428149    0.0334094    0.0522204
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.1067346   -0.0122702    0.2257395
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0441976    0.0187086    0.0696867
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0098450   -0.0127319    0.0324218
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0291879    0.0062351    0.0521406
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0558708   -0.0199820    0.1317236
24 months   ki1135781-COHORTS          INDIA                          0                    NA                 0.0894121    0.0766037    0.1022205
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.1326460   -0.0334276    0.2987197
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0674314    0.0357738    0.0990891


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.8181818   -2.0446729   -0.0857603
Birth       ki1135781-COHORTS          INDIA                          0                    NA                 0.0507353   -0.0130228    0.1104806
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.6835017   -2.1363257    0.0963381
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.2907801   -0.2779224    0.6063980
6 months    ki1000109-EE               PAKISTAN                       0                    NA                 0.0286878   -0.0427352    0.0952187
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.1375315    0.0354689    0.2287942
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0490798   -0.2125598    0.2542641
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0116702   -0.1047054    0.1157862
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0965704    0.0099200    0.1756373
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0102507   -0.0118966    0.0319133
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.2536524   -0.0840400    0.4861492
6 months    ki1135781-COHORTS          INDIA                          0                    NA                 0.2189197    0.1704333    0.2645722
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.4543064   -0.3476061    0.7790292
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.1777589    0.0685895    0.2741327
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0298977   -0.0411411    0.0960893
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.1136557    0.0202907    0.1981232
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.1248405   -0.0624110    0.2790886
24 months   ki1135781-COHORTS          INDIA                          0                    NA                 0.1800892    0.1534463    0.2058937
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.2490323   -0.1488662    0.5091225
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.1725642    0.0867779    0.2502919
