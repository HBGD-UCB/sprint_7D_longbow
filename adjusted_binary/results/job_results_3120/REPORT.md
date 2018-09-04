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

**Outcome Variable:** stunted

## Predictor Variables

**Intervention Variable:** hdlvry

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_nrooms
* brthmon
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_nrooms
* delta_brthmon
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        hdlvry    stunted   n_cell      n
----------  -------------------------  -----------------------------  -------  --------  -------  -----
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0               0       74     90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0               1       16     90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1               0        0     90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1               1        0     90
Birth       ki1000108-IRC              INDIA                          0               0      337    388
Birth       ki1000108-IRC              INDIA                          0               1       44    388
Birth       ki1000108-IRC              INDIA                          1               0        6    388
Birth       ki1000108-IRC              INDIA                          1               1        1    388
Birth       ki1000109-EE               PAKISTAN                       0               0        2      4
Birth       ki1000109-EE               PAKISTAN                       0               1        2      4
Birth       ki1000109-EE               PAKISTAN                       1               0        0      4
Birth       ki1000109-EE               PAKISTAN                       1               1        0      4
Birth       ki1000304b-SAS-CompFeed    INDIA                          0               0        6    180
Birth       ki1000304b-SAS-CompFeed    INDIA                          0               1        5    180
Birth       ki1000304b-SAS-CompFeed    INDIA                          1               0      129    180
Birth       ki1000304b-SAS-CompFeed    INDIA                          1               1       40    180
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0               0       18     27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0               1        4     27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1               0        4     27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1               1        1     27
Birth       ki1135781-COHORTS          INDIA                          0               0     2613   4694
Birth       ki1135781-COHORTS          INDIA                          0               1      325   4694
Birth       ki1135781-COHORTS          INDIA                          1               0     1534   4694
Birth       ki1135781-COHORTS          INDIA                          1               1      222   4694
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0               0       12    600
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0               1       10    600
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               0      426    600
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               1      152    600
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               0       74   1640
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               1       20   1640
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               0     1074   1640
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               1      472   1640
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0               0      249    366
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0               1      109    366
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1               0        7    366
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1               1        1    366
6 months    ki1000108-IRC              INDIA                          0               0      303    407
6 months    ki1000108-IRC              INDIA                          0               1       96    407
6 months    ki1000108-IRC              INDIA                          1               0        4    407
6 months    ki1000108-IRC              INDIA                          1               1        4    407
6 months    ki1000109-EE               PAKISTAN                       0               0      246    740
6 months    ki1000109-EE               PAKISTAN                       0               1      250    740
6 months    ki1000109-EE               PAKISTAN                       1               0      110    740
6 months    ki1000109-EE               PAKISTAN                       1               1      134    740
6 months    ki1000304b-SAS-CompFeed    INDIA                          0               0      109   1091
6 months    ki1000304b-SAS-CompFeed    INDIA                          0               1       38   1091
6 months    ki1000304b-SAS-CompFeed    INDIA                          1               0      655   1091
6 months    ki1000304b-SAS-CompFeed    INDIA                          1               1      289   1091
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0               0       45    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0               1       31    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1               0      172    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1               1      132    380
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               0      364    583
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               1       69    583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               0      125    583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               1       25    583
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0               0      449    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0               1      105    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1               0      116    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1               1       45    715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               0     1707   1921
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1      182   1921
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0       27   1921
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        5   1921
6 months    ki1113344-GMS-Nepal        NEPAL                          0               0      220   1054
6 months    ki1113344-GMS-Nepal        NEPAL                          0               1       38   1054
6 months    ki1113344-GMS-Nepal        NEPAL                          1               0      626   1054
6 months    ki1113344-GMS-Nepal        NEPAL                          1               1      170   1054
6 months    ki1135781-COHORTS          INDIA                          0               0     2457   4699
6 months    ki1135781-COHORTS          INDIA                          0               1      443   4699
6 months    ki1135781-COHORTS          INDIA                          1               0     1323   4699
6 months    ki1135781-COHORTS          INDIA                          1               1      476   4699
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0               0       67    663
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0               1       10    663
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               0      440    663
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               1      146    663
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0               0     1718   8066
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0               1      441   8066
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               0     4342   8066
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               1     1565   8066
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0               0      102    369
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0               1      259    369
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               0        3    369
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               1        5    369
24 months   ki1000108-IRC              INDIA                          0               0      236    409
24 months   ki1000108-IRC              INDIA                          0               1      165    409
24 months   ki1000108-IRC              INDIA                          1               0        3    409
24 months   ki1000108-IRC              INDIA                          1               1        5    409
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               0      294    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               1      138    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               0       93    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               1       52    577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0               0      302    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0               1       89    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1               0       80    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1               1       43    514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               0        5      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1        1      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0        0      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        0      6
24 months   ki1113344-GMS-Nepal        NEPAL                          0               0      146    934
24 months   ki1113344-GMS-Nepal        NEPAL                          0               1       94    934
24 months   ki1113344-GMS-Nepal        NEPAL                          1               0      370    934
24 months   ki1113344-GMS-Nepal        NEPAL                          1               1      324    934
24 months   ki1135781-COHORTS          INDIA                          0               0     1324   3559
24 months   ki1135781-COHORTS          INDIA                          0               1      909   3559
24 months   ki1135781-COHORTS          INDIA                          1               0      468   3559
24 months   ki1135781-COHORTS          INDIA                          1               1      858   3559
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               0       41    581
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               1       28    581
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               0      230    581
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               1      282    581
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               0     1396   8000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               1      667   8000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               0     3478   8000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               1     2459   8000


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

* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
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
![](/tmp/056a59fb-21cb-4fdf-828e-3e78b541ccfd/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/056a59fb-21cb-4fdf-828e-3e78b541ccfd/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/056a59fb-21cb-4fdf-828e-3e78b541ccfd/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/056a59fb-21cb-4fdf-828e-3e78b541ccfd/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.4545455    0.3211332   0.5879577
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.2366864    0.1571441   0.3162286
Birth       ki1135781-COHORTS          INDIA                          0                    NA                0.1116181    0.1002252   0.1230111
Birth       ki1135781-COHORTS          INDIA                          1                    NA                0.1192336    0.1045591   0.1339082
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.4350723    0.1748720   0.6952726
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2633272    0.1958485   0.3308060
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.2177916    0.1033324   0.3322509
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.3062072    0.2695015   0.3429128
6 months    ki1000109-EE               PAKISTAN                       0                    NA                0.5033407    0.4416502   0.5650313
6 months    ki1000109-EE               PAKISTAN                       1                    NA                0.5542561    0.4678640   0.6406481
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.2594468    0.2278773   0.2910164
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.3050885    0.2828134   0.3273637
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.4078947    0.2972611   0.5185283
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.4342105    0.3784199   0.4900011
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1590812    0.1248539   0.1933086
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1697973    0.1120414   0.2275532
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1896454    0.1570480   0.2222429
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2789873    0.2093810   0.3485936
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0963473    0.0830377   0.1096569
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1562500    0.0304145   0.2820855
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1041789    0.0553838   0.1529741
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.2061116    0.1669892   0.2452339
6 months    ki1135781-COHORTS          INDIA                          0                    NA                0.1612357    0.1478778   0.1745935
6 months    ki1135781-COHORTS          INDIA                          1                    NA                0.2503326    0.2309941   0.2696710
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1012802   -0.0088882   0.2114486
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2487127    0.1751852   0.3222402
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.2106603    0.1822099   0.2391107
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2642727    0.2454281   0.2831173
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.3170984    0.2733031   0.3608936
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3345908    0.2594066   0.4097749
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.2311937    0.1898925   0.2724949
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.3746183    0.2956385   0.4535980
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.4700816    0.4023040   0.5378592
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.4779622    0.4276408   0.5282837
24 months   ki1135781-COHORTS          INDIA                          0                    NA                0.4268495    0.4067984   0.4469007
24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.6236860    0.5990557   0.6483163
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.3967324    0.2036721   0.5897926
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.5520699    0.4872118   0.6169281
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.3313801    0.2949409   0.3678194
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.4066039    0.3853706   0.4278371


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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2352941   0.1668442   0.3037440
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2486982   0.2326357   0.2647607
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3292894   0.2909105   0.3676684
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2568093   0.2190047   0.2946140
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4475375   0.4023913   0.4926837
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.4964878   0.4800590   0.5129165
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.5335628   0.4674074   0.5997182
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3907500   0.3719518   0.4095482


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    0                 0.5207101   0.3121948   0.8684928
Birth       ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          INDIA                          1                    0                 1.0682282   0.9106873   1.2530223
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 0.6052493   0.3189239   1.1486339
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.4059638   0.8223815   2.4036706
6 months    ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000109-EE               PAKISTAN                       1                    0                 1.1011548   0.9030164   1.3427685
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0                 1.1759194   1.0239057   1.3505016
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 1.0645161   0.7885142   1.4371264
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.0673625   0.7142240   1.5951055
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.4710993   1.0869446   1.9910242
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.6217376   0.7163325   3.6715252
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.9784383   1.1932462   3.2803107
6 months    ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          INDIA                          1                    0                 1.5525878   1.3871591   1.7377452
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 2.4556893   0.8278288   7.2846101
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.2544970   1.0782789   1.4595135
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.0551640   0.8106504   1.3734296
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.6203656   1.2328616   2.1296669
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.0167645   0.8523052   1.2129576
24 months   ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          INDIA                          1                    0                 1.4611379   1.3753927   1.5522286
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.3915425   0.8656378   2.2369524
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.2270013   1.0878948   1.3838950


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.2045455   -0.3860759   -0.0230150
Birth       ki1135781-COHORTS          INDIA                          0                    NA                 0.0049136   -0.0023936    0.0122209
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.1650723   -0.4220956    0.0919510
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0822084   -0.0294223    0.1938391
6 months    ki1000109-EE               PAKISTAN                       0                    NA                 0.0155782   -0.0199268    0.0510831
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0402782    0.0084376    0.0721188
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0210526   -0.0780768    0.1201821
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0021538   -0.0154145    0.0197221
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0201448    0.0026504    0.0376391
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0009979   -0.0011377    0.0031334
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0931645    0.0470467    0.1392823
6 months    ki1135781-COHORTS          INDIA                          0                    NA                 0.0343378    0.0247791    0.0438966
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.1340139    0.0257878    0.2422401
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0380379    0.0132284    0.0628475
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0121911   -0.0103051    0.0346872
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0256157    0.0034696    0.0477617
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0225441   -0.0825046    0.0374165
24 months   ki1135781-COHORTS          INDIA                          0                    NA                 0.0696383    0.0572138    0.0820627
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.1368305   -0.0315446    0.3052055
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0593699    0.0281772    0.0905625


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.8181818   -2.0446729   -0.0857603
Birth       ki1135781-COHORTS          INDIA                          0                    NA                 0.0421654   -0.0225246    0.1027628
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.6113789   -1.9510272    0.1201226
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.2740279   -0.2101344    0.5644818
6 months    ki1000109-EE               PAKISTAN                       0                    NA                 0.0300205   -0.0408927    0.0961025
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.1343838    0.0251982    0.2313398
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0490798   -0.2125598    0.2542641
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0133579   -0.1018002    0.1164800
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0960234    0.0093823    0.1750866
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0102507   -0.0118966    0.0319133
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.4720933    0.1926813    0.6548012
6 months    ki1135781-COHORTS          INDIA                          0                    NA                 0.1755751    0.1261765    0.2221811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.5695592   -0.2013254    0.8457709
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.1529482    0.0474225    0.2467838
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0370223   -0.0337592    0.1029575
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0997459    0.0099355    0.1814094
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0503736   -0.1944862    0.0763520
24 months   ki1135781-COHORTS          INDIA                          0                    NA                 0.1402618    0.1146869    0.1650979
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.2564468   -0.1489327    0.5187956
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.1519382    0.0678558    0.2284361
