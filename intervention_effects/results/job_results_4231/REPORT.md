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

**Outcome Variable:** sstunted

## Predictor Variables

**Intervention Variable:** tr

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country
* intXpredexfd6

## Data Summary

agecat      studyid                    country      intXpredexfd6    sstunted   n_cell       n
----------  -------------------------  -----------  --------------  ---------  -------  ------
Birth       ki1000304b-SAS-CompFeed    INDIA        0_Birth                 0        1       1
Birth       ki1000304b-SAS-CompFeed    INDIA        0_Birth                 1        0       1
Birth       ki1000304b-SAS-CompFeed    INDIA        1_Birth                 0       35      36
Birth       ki1000304b-SAS-CompFeed    INDIA        1_Birth                 1        1      36
Birth       kiGH5241-JiVitA-3          BANGLADESH   0_Birth                 0     6878    7972
Birth       kiGH5241-JiVitA-3          BANGLADESH   0_Birth                 1     1094    7972
Birth       kiGH5241-JiVitA-3          BANGLADESH   1_Birth                 0    27582   30192
Birth       kiGH5241-JiVitA-3          BANGLADESH   1_Birth                 1     2610   30192
Birth       kiGH5241-JiVitA-4          BANGLADESH   0_Birth                 0      264     296
Birth       kiGH5241-JiVitA-4          BANGLADESH   0_Birth                 1       32     296
Birth       kiGH5241-JiVitA-4          BANGLADESH   1_Birth                 0     1148    1238
Birth       kiGH5241-JiVitA-4          BANGLADESH   1_Birth                 1       90    1238
6 months    iLiNS_DYADM_LNS            MALAWI       0_6 months              0        2       3
6 months    iLiNS_DYADM_LNS            MALAWI       0_6 months              1        1       3
6 months    iLiNS_DYADM_LNS            MALAWI       1_6 months              0       59      61
6 months    iLiNS_DYADM_LNS            MALAWI       1_6 months              1        2      61
6 months    ki1000304b-SAS-CompFeed    INDIA        0_6 months              0       14      14
6 months    ki1000304b-SAS-CompFeed    INDIA        0_6 months              1        0      14
6 months    ki1000304b-SAS-CompFeed    INDIA        1_6 months              0      233     257
6 months    ki1000304b-SAS-CompFeed    INDIA        1_6 months              1       24     257
6 months    ki1000304b-SAS-FoodSuppl   INDIA        0_6 months              0      133     160
6 months    ki1000304b-SAS-FoodSuppl   INDIA        0_6 months              1       27     160
6 months    ki1017093b-PROVIDE         BANGLADESH   0_6 months              0       18      18
6 months    ki1017093b-PROVIDE         BANGLADESH   0_6 months              1        0      18
6 months    ki1017093b-PROVIDE         BANGLADESH   1_6 months              0       27      28
6 months    ki1017093b-PROVIDE         BANGLADESH   1_6 months              1        1      28
6 months    ki1148112-iLiNS-DOSE       MALAWI       0_6 months              0      144     161
6 months    ki1148112-iLiNS-DOSE       MALAWI       0_6 months              1       17     161
6 months    ki1148112-iLiNS-DOSE       MALAWI       1_6 months              0      958    1014
6 months    ki1148112-iLiNS-DOSE       MALAWI       1_6 months              1       56    1014
6 months    ki1148112-iLiNS-DYAD-M     MALAWI       0_6 months              0        2       3
6 months    ki1148112-iLiNS-DYAD-M     MALAWI       0_6 months              1        1       3
6 months    ki1148112-iLiNS-DYAD-M     MALAWI       1_6 months              0       89      94
6 months    ki1148112-iLiNS-DYAD-M     MALAWI       1_6 months              1        5      94
6 months    ki1148112-LCNI-5           MALAWI       0_6 months              0      208     225
6 months    ki1148112-LCNI-5           MALAWI       0_6 months              1       17     225
6 months    ki1148112-LCNI-5           MALAWI       1_6 months              0       44      47
6 months    ki1148112-LCNI-5           MALAWI       1_6 months              1        3      47
6 months    kiGH5241-JiVitA-3          BANGLADESH   0_6 months              0     6098    6848
6 months    kiGH5241-JiVitA-3          BANGLADESH   0_6 months              1      750    6848
6 months    kiGH5241-JiVitA-3          BANGLADESH   1_6 months              0    25170   26422
6 months    kiGH5241-JiVitA-3          BANGLADESH   1_6 months              1     1252   26422
6 months    kiGH5241-JiVitA-4          BANGLADESH   0_6 months              0     1616    1796
6 months    kiGH5241-JiVitA-4          BANGLADESH   0_6 months              1      180    1796
6 months    kiGH5241-JiVitA-4          BANGLADESH   1_6 months              0     6364    6656
6 months    kiGH5241-JiVitA-4          BANGLADESH   1_6 months              1      292    6656
24 months   iLiNS_DYADM_LNS            MALAWI       1_24 months             0        6       7
24 months   iLiNS_DYADM_LNS            MALAWI       1_24 months             1        1       7
24 months   ki1017093b-PROVIDE         BANGLADESH   0_24 months             0        1       1
24 months   ki1017093b-PROVIDE         BANGLADESH   0_24 months             1        0       1
24 months   ki1017093b-PROVIDE         BANGLADESH   1_24 months             0        1       1
24 months   ki1017093b-PROVIDE         BANGLADESH   1_24 months             1        0       1
24 months   ki1148112-iLiNS-DOSE       MALAWI       0_24 months             0       50      59
24 months   ki1148112-iLiNS-DOSE       MALAWI       0_24 months             1        9      59
24 months   ki1148112-iLiNS-DOSE       MALAWI       1_24 months             0      347     442
24 months   ki1148112-iLiNS-DOSE       MALAWI       1_24 months             1       95     442
24 months   ki1148112-iLiNS-DYAD-M     MALAWI       1_24 months             0       10      12
24 months   ki1148112-iLiNS-DYAD-M     MALAWI       1_24 months             1        2      12
24 months   ki1148112-LCNI-5           MALAWI       0_24 months             0       37      44
24 months   ki1148112-LCNI-5           MALAWI       0_24 months             1        7      44
24 months   ki1148112-LCNI-5           MALAWI       1_24 months             0        7       7
24 months   ki1148112-LCNI-5           MALAWI       1_24 months             1        0       7
24 months   kiGH5241-JiVitA-3          BANGLADESH   0_24 months             0       30      40
24 months   kiGH5241-JiVitA-3          BANGLADESH   0_24 months             1       10      40
24 months   kiGH5241-JiVitA-3          BANGLADESH   1_24 months             0       58      80
24 months   kiGH5241-JiVitA-3          BANGLADESH   1_24 months             1       22      80
24 months   kiGH5241-JiVitA-4          BANGLADESH   0_24 months             0      344     396
24 months   kiGH5241-JiVitA-4          BANGLADESH   0_24 months             1       52     396
24 months   kiGH5241-JiVitA-4          BANGLADESH   1_24 months             0     1216    1332
24 months   kiGH5241-JiVitA-4          BANGLADESH   1_24 months             1      116    1332


The following strata were considered:

* agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXpredexfd6: 1_24 months
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXpredexfd6: 0_24 months
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXpredexfd6: 1_24 months
* agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXpredexfd6: 0_24 months
* agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXpredexfd6: 1_24 months
* agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXpredexfd6: 1_24 months
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXpredexfd6: 0_24 months
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXpredexfd6: 1_24 months
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXpredexfd6: 0_24 months
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXpredexfd6: 1_24 months
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXpredexfd6: 0_24 months
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXpredexfd6: 1_24 months
* agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXpredexfd6: 0_6 months
* agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXpredexfd6: 1_6 months
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXpredexfd6: 0_6 months
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXpredexfd6: 1_6 months
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA, intXpredexfd6: 0_6 months
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXpredexfd6: 0_6 months
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXpredexfd6: 1_6 months
* agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXpredexfd6: 0_6 months
* agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXpredexfd6: 1_6 months
* agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXpredexfd6: 0_6 months
* agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXpredexfd6: 1_6 months
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXpredexfd6: 0_6 months
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXpredexfd6: 1_6 months
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXpredexfd6: 0_6 months
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXpredexfd6: 1_6 months
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXpredexfd6: 0_6 months
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXpredexfd6: 1_6 months
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXpredexfd6: 0_Birth
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXpredexfd6: 1_Birth
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXpredexfd6: 0_Birth
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXpredexfd6: 1_Birth
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXpredexfd6: 0_Birth
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXpredexfd6: 1_Birth

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXpredexfd6: 0_Birth
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXpredexfd6: 1_Birth
* agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXpredexfd6: 0_6 months
* agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXpredexfd6: 1_6 months
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXpredexfd6: 0_6 months
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXpredexfd6: 0_6 months
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXpredexfd6: 1_6 months
* agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXpredexfd6: 0_6 months
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXpredexfd6: 1_6 months
* agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXpredexfd6: 1_24 months
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXpredexfd6: 0_24 months
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXpredexfd6: 1_24 months
* agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXpredexfd6: 1_24 months
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXpredexfd6: 1_24 months

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
![](/tmp/2e89b17d-1b95-4e21-8150-0e6fabefa08d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/2e89b17d-1b95-4e21-8150-0e6fabefa08d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/2e89b17d-1b95-4e21-8150-0e6fabefa08d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/2e89b17d-1b95-4e21-8150-0e6fabefa08d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country      intXpredexfd6   intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------  --------------  -------------------  ---------------  ----------  -----------  ----------
Birth       kiGH5241-JiVitA-3          BANGLADESH   0_Birth         Control              NA                0.1501883    0.1343213   0.1660554
Birth       kiGH5241-JiVitA-3          BANGLADESH   0_Birth         Maternal             NA                0.1224490    0.1041948   0.1407032
Birth       kiGH5241-JiVitA-3          BANGLADESH   1_Birth         Control              NA                0.0918853    0.0851009   0.0986696
Birth       kiGH5241-JiVitA-3          BANGLADESH   1_Birth         Maternal             NA                0.0812767    0.0745867   0.0879666
Birth       kiGH5241-JiVitA-4          BANGLADESH   0_Birth         Control              NA                0.1500000    0.0402428   0.2597572
Birth       kiGH5241-JiVitA-4          BANGLADESH   0_Birth         LNS                  NA                0.0789474   -0.0223740   0.1802688
Birth       kiGH5241-JiVitA-4          BANGLADESH   0_Birth         Other                NA                0.1000000    0.0263159   0.1736841
Birth       kiGH5241-JiVitA-4          BANGLADESH   1_Birth         Control              NA                0.0606061    0.0206440   0.1005681
Birth       kiGH5241-JiVitA-4          BANGLADESH   1_Birth         LNS                  NA                0.0568182    0.0177105   0.0959258
Birth       kiGH5241-JiVitA-4          BANGLADESH   1_Birth         Other                NA                0.0899281    0.0545855   0.1252707
6 months    ki1000304b-SAS-CompFeed    INDIA        1_6 months      Control              NA                0.0927835    0.0084390   0.1771280
6 months    ki1000304b-SAS-CompFeed    INDIA        1_6 months      Other                NA                0.0937500    0.0649045   0.1225955
6 months    ki1000304b-SAS-FoodSuppl   INDIA        0_6 months      Control              NA                0.1707317    0.0551944   0.2862690
6 months    ki1000304b-SAS-FoodSuppl   INDIA        0_6 months      Other                NA                0.1680672    0.1006732   0.2354613
6 months    ki1148112-iLiNS-DOSE       MALAWI       0_6 months      Control              NA                0.1500000   -0.0069788   0.3069788
6 months    ki1148112-iLiNS-DOSE       MALAWI       0_6 months      LNS                  NA                0.0992908    0.0497756   0.1488059
6 months    ki1148112-iLiNS-DOSE       MALAWI       1_6 months      Control              NA                0.0424242    0.0116552   0.0731933
6 months    ki1148112-iLiNS-DOSE       MALAWI       1_6 months      LNS                  NA                0.0577150    0.0420206   0.0734093
6 months    ki1148112-iLiNS-DYAD-M     MALAWI       1_6 months      Control              NA                0.0645161   -0.0224283   0.1514606
6 months    ki1148112-iLiNS-DYAD-M     MALAWI       1_6 months      Maternal             NA                0.0476190   -0.0052493   0.1004874
6 months    ki1148112-LCNI-5           MALAWI       0_6 months      Control              NA                0.0566038   -0.0057478   0.1189553
6 months    ki1148112-LCNI-5           MALAWI       0_6 months      LNS                  NA                0.0689655    0.0227503   0.1151808
6 months    ki1148112-LCNI-5           MALAWI       0_6 months      Other                NA                0.1071429    0.0259545   0.1883312
6 months    kiGH5241-JiVitA-3          BANGLADESH   0_6 months      Control              NA                0.1108597    0.0917730   0.1299464
6 months    kiGH5241-JiVitA-3          BANGLADESH   0_6 months      Maternal             NA                0.1080918    0.0879801   0.1282035
6 months    kiGH5241-JiVitA-3          BANGLADESH   1_6 months      Control              NA                0.0524038    0.0467159   0.0580916
6 months    kiGH5241-JiVitA-3          BANGLADESH   1_6 months      Maternal             NA                0.0425690    0.0376688   0.0474692
6 months    kiGH5241-JiVitA-4          BANGLADESH   0_6 months      Control              NA                0.1214953    0.0706364   0.1723543
6 months    kiGH5241-JiVitA-4          BANGLADESH   0_6 months      LNS                  NA                0.0931174    0.0516047   0.1346301
6 months    kiGH5241-JiVitA-4          BANGLADESH   0_6 months      Other                NA                0.0938215    0.0655315   0.1221116
6 months    kiGH5241-JiVitA-4          BANGLADESH   1_6 months      Control              NA                0.0441860    0.0297954   0.0585767
6 months    kiGH5241-JiVitA-4          BANGLADESH   1_6 months      LNS                  NA                0.0444685    0.0320693   0.0568678
6 months    kiGH5241-JiVitA-4          BANGLADESH   1_6 months      Other                NA                0.0433376    0.0310675   0.0556078
24 months   ki1148112-iLiNS-DOSE       MALAWI       0_24 months     Control              NA                0.0000000    0.0000000   0.0000000
24 months   ki1148112-iLiNS-DOSE       MALAWI       0_24 months     LNS                  NA                0.1730769    0.0693693   0.2767845
24 months   ki1148112-iLiNS-DOSE       MALAWI       1_24 months     Control              NA                0.2361111    0.1379031   0.3343191
24 months   ki1148112-iLiNS-DOSE       MALAWI       1_24 months     LNS                  NA                0.2108108    0.1692029   0.2524187
24 months   ki1148112-LCNI-5           MALAWI       0_24 months     Control              NA                0.2142857   -0.0031371   0.4317085
24 months   ki1148112-LCNI-5           MALAWI       0_24 months     LNS                  NA                0.1000000   -0.0329984   0.2329984
24 months   ki1148112-LCNI-5           MALAWI       0_24 months     Other                NA                0.2000000   -0.0507842   0.4507842
24 months   kiGH5241-JiVitA-3          BANGLADESH   0_24 months     Control              NA                0.2307692   -0.0042113   0.4657498
24 months   kiGH5241-JiVitA-3          BANGLADESH   0_24 months     Maternal             NA                0.2857143   -0.0576374   0.6290660
24 months   kiGH5241-JiVitA-3          BANGLADESH   1_24 months     Control              NA                0.3846154    0.0866006   0.6826301
24 months   kiGH5241-JiVitA-3          BANGLADESH   1_24 months     Maternal             NA                0.2222222    0.0611931   0.3832514
24 months   kiGH5241-JiVitA-4          BANGLADESH   0_24 months     Control              NA                0.2093023    0.0763936   0.3422110
24 months   kiGH5241-JiVitA-4          BANGLADESH   0_24 months     LNS                  NA                0.1384615    0.0611676   0.2157555
24 months   kiGH5241-JiVitA-4          BANGLADESH   0_24 months     Other                NA                0.0888889    0.0331110   0.1446667
24 months   kiGH5241-JiVitA-4          BANGLADESH   1_24 months     Control              NA                0.0898876    0.0428389   0.1369363
24 months   kiGH5241-JiVitA-4          BANGLADESH   1_24 months     LNS                  NA                0.0919540    0.0407969   0.1431111
24 months   kiGH5241-JiVitA-4          BANGLADESH   1_24 months     Other                NA                0.0828025    0.0482897   0.1173153


### Parameter: E(Y)


agecat      studyid                    country      intXpredexfd6   intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  --------------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3          BANGLADESH   0_Birth         NA                   NA                0.1372303   0.1251688   0.1492918
Birth       kiGH5241-JiVitA-3          BANGLADESH   1_Birth         NA                   NA                0.0864467   0.0816708   0.0912227
Birth       kiGH5241-JiVitA-4          BANGLADESH   0_Birth         NA                   NA                0.1081081   0.0554142   0.1608020
Birth       kiGH5241-JiVitA-4          BANGLADESH   1_Birth         NA                   NA                0.0726979   0.0505384   0.0948574
6 months    ki1000304b-SAS-CompFeed    INDIA        1_6 months      NA                   NA                0.0933852   0.0568074   0.1299631
6 months    ki1000304b-SAS-FoodSuppl   INDIA        0_6 months      NA                   NA                0.1687500   0.1105347   0.2269653
6 months    ki1148112-iLiNS-DOSE       MALAWI       0_6 months      NA                   NA                0.1055901   0.0579724   0.1532077
6 months    ki1148112-iLiNS-DOSE       MALAWI       1_6 months      NA                   NA                0.0552268   0.0411605   0.0692932
6 months    ki1148112-iLiNS-DYAD-M     MALAWI       1_6 months      NA                   NA                0.0531915   0.0075816   0.0988014
6 months    ki1148112-LCNI-5           MALAWI       0_6 months      NA                   NA                0.0755556   0.0409459   0.1101652
6 months    kiGH5241-JiVitA-3          BANGLADESH   0_6 months      NA                   NA                0.1095210   0.0956770   0.1233651
6 months    kiGH5241-JiVitA-3          BANGLADESH   1_6 months      NA                   NA                0.0473848   0.0436246   0.0511449
6 months    kiGH5241-JiVitA-4          BANGLADESH   0_6 months      NA                   NA                0.1002227   0.0785813   0.1218642
6 months    kiGH5241-JiVitA-4          BANGLADESH   1_6 months      NA                   NA                0.0438702   0.0362494   0.0514910
24 months   ki1148112-iLiNS-DOSE       MALAWI       0_24 months     NA                   NA                0.1525424   0.0600111   0.2450736
24 months   ki1148112-iLiNS-DOSE       MALAWI       1_24 months     NA                   NA                0.2149321   0.1765938   0.2532704
24 months   ki1148112-LCNI-5           MALAWI       0_24 months     NA                   NA                0.1590909   0.0497680   0.2684138
24 months   kiGH5241-JiVitA-3          BANGLADESH   0_24 months     NA                   NA                0.2500000   0.0552973   0.4447027
24 months   kiGH5241-JiVitA-3          BANGLADESH   1_24 months     NA                   NA                0.2750000   0.1274070   0.4225930
24 months   kiGH5241-JiVitA-4          BANGLADESH   0_24 months     NA                   NA                0.1313131   0.0844417   0.1781845
24 months   kiGH5241-JiVitA-4          BANGLADESH   1_24 months     NA                   NA                0.0870871   0.0625574   0.1116168


### Parameter: RR


agecat      studyid                    country      intXpredexfd6   intervention_level   baseline_level            estimate          ci_lower           ci_upper
----------  -------------------------  -----------  --------------  -------------------  ---------------  -----------------  ----------------  -----------------
Birth       kiGH5241-JiVitA-3          BANGLADESH   0_Birth         Control              Control                  1.0000000         1.0000000          1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH   0_Birth         Maternal             Control                  0.8153029         0.6790976          0.9788267
Birth       kiGH5241-JiVitA-3          BANGLADESH   1_Birth         Control              Control                  1.0000000         1.0000000          1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH   1_Birth         Maternal             Control                  0.8845449         0.7919508          0.9879648
Birth       kiGH5241-JiVitA-4          BANGLADESH   0_Birth         Control              Control                  1.0000000         1.0000000          1.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH   0_Birth         LNS                  Control                  0.5263158         0.1201762          2.3050176
Birth       kiGH5241-JiVitA-4          BANGLADESH   0_Birth         Other                Control                  0.6666667         0.2359724          1.8834594
Birth       kiGH5241-JiVitA-4          BANGLADESH   1_Birth         Control              Control                  1.0000000         1.0000000          1.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH   1_Birth         LNS                  Control                  0.9375000         0.3614278          2.4317614
Birth       kiGH5241-JiVitA-4          BANGLADESH   1_Birth         Other                Control                  1.4838129         0.6886503          3.1971246
6 months    ki1000304b-SAS-CompFeed    INDIA        1_6 months      Control              Control                  1.0000000         1.0000000          1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA        1_6 months      Other                Control                  1.0104167         0.3870726          2.6375981
6 months    ki1000304b-SAS-FoodSuppl   INDIA        0_6 months      Control              Control                  1.0000000         1.0000000          1.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA        0_6 months      Other                Control                  0.9843938         0.4482821          2.1616545
6 months    ki1148112-iLiNS-DOSE       MALAWI       0_6 months      Control              Control                  1.0000000         1.0000000          1.0000000
6 months    ki1148112-iLiNS-DOSE       MALAWI       0_6 months      LNS                  Control                  0.6619385         0.2076602          2.1099982
6 months    ki1148112-iLiNS-DOSE       MALAWI       1_6 months      Control              Control                  1.0000000         1.0000000          1.0000000
6 months    ki1148112-iLiNS-DOSE       MALAWI       1_6 months      LNS                  Control                  1.3604239         0.6270205          2.9516629
6 months    ki1148112-iLiNS-DYAD-M     MALAWI       1_6 months      Control              Control                  1.0000000         1.0000000          1.0000000
6 months    ki1148112-iLiNS-DYAD-M     MALAWI       1_6 months      Maternal             Control                  0.7380952         0.1287670          4.2307794
6 months    ki1148112-LCNI-5           MALAWI       0_6 months      Control              Control                  1.0000000         1.0000000          1.0000000
6 months    ki1148112-LCNI-5           MALAWI       0_6 months      LNS                  Control                  1.2183908         0.3356006          4.4233421
6 months    ki1148112-LCNI-5           MALAWI       0_6 months      Other                Control                  1.8928571         0.4971205          7.2073235
6 months    kiGH5241-JiVitA-3          BANGLADESH   0_6 months      Control              Control                  1.0000000         1.0000000          1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH   0_6 months      Maternal             Control                  0.9750320         0.7566372          1.2564641
6 months    kiGH5241-JiVitA-3          BANGLADESH   1_6 months      Control              Control                  1.0000000         1.0000000          1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH   1_6 months      Maternal             Control                  0.8123265         0.6934183          0.9516253
6 months    kiGH5241-JiVitA-4          BANGLADESH   0_6 months      Control              Control                  1.0000000         1.0000000          1.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH   0_6 months      LNS                  Control                  0.7664279         0.4157937          1.4127480
6 months    kiGH5241-JiVitA-4          BANGLADESH   0_6 months      Other                Control                  0.7722232         0.4609699          1.2936390
6 months    kiGH5241-JiVitA-4          BANGLADESH   1_6 months      Control              Control                  1.0000000         1.0000000          1.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH   1_6 months      LNS                  Control                  1.0063934         0.6553454          1.5454868
6 months    kiGH5241-JiVitA-4          BANGLADESH   1_6 months      Other                Control                  0.9807993         0.6370350          1.5100698
24 months   ki1148112-iLiNS-DOSE       MALAWI       0_24 months     Control              Control                  1.0000000         1.0000000          1.0000000
24 months   ki1148112-iLiNS-DOSE       MALAWI       0_24 months     LNS                  Control           20016137.4218532   7956708.3482394   50353203.8319796
24 months   ki1148112-iLiNS-DOSE       MALAWI       1_24 months     Control              Control                  1.0000000         1.0000000          1.0000000
24 months   ki1148112-iLiNS-DOSE       MALAWI       1_24 months     LNS                  Control                  0.8928458         0.5634177          1.4148890
24 months   ki1148112-LCNI-5           MALAWI       0_24 months     Control              Control                  1.0000000         1.0000000          1.0000000
24 months   ki1148112-LCNI-5           MALAWI       0_24 months     LNS                  Control                  0.4666667         0.0876006          2.4860309
24 months   ki1148112-LCNI-5           MALAWI       0_24 months     Other                Control                  0.9333333         0.1860004          4.6833818
24 months   kiGH5241-JiVitA-3          BANGLADESH   0_24 months     Control              Control                  1.0000000         1.0000000          1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH   0_24 months     Maternal             Control                  1.2380952         0.2562655          5.9816083
24 months   kiGH5241-JiVitA-3          BANGLADESH   1_24 months     Control              Control                  1.0000000         1.0000000          1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH   1_24 months     Maternal             Control                  0.5777778         0.1999985          1.6691480
24 months   kiGH5241-JiVitA-4          BANGLADESH   0_24 months     Control              Control                  1.0000000         1.0000000          1.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH   0_24 months     LNS                  Control                  0.6615385         0.2840662          1.5406027
24 months   kiGH5241-JiVitA-4          BANGLADESH   0_24 months     Other                Control                  0.4246914         0.1739792          1.0366912
24 months   kiGH5241-JiVitA-4          BANGLADESH   1_24 months     Control              Control                  1.0000000         1.0000000          1.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH   1_24 months     LNS                  Control                  1.0229885         0.4765834          2.1958496
24 months   kiGH5241-JiVitA-4          BANGLADESH   1_24 months     Other                Control                  0.9211783         0.4718018          1.7985722


### Parameter: PAR


agecat      studyid                    country      intXpredexfd6   intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  --------------  -------------------  ---------------  -----------  -----------  -----------
Birth       kiGH5241-JiVitA-3          BANGLADESH   0_Birth         Control              NA                -0.0129580   -0.0243649   -0.0015512
Birth       kiGH5241-JiVitA-3          BANGLADESH   1_Birth         Control              NA                -0.0054385   -0.0103486   -0.0005285
Birth       kiGH5241-JiVitA-4          BANGLADESH   0_Birth         Control              NA                -0.0418919   -0.1333142    0.0495304
Birth       kiGH5241-JiVitA-4          BANGLADESH   1_Birth         Control              NA                 0.0120918   -0.0230666    0.0472503
6 months    ki1000304b-SAS-CompFeed    INDIA        1_6 months      Control              NA                 0.0006017   -0.0548883    0.0560917
6 months    ki1000304b-SAS-FoodSuppl   INDIA        0_6 months      Control              NA                -0.0019817   -0.1014633    0.0974999
6 months    ki1148112-iLiNS-DOSE       MALAWI       0_6 months      Control              NA                -0.0444099   -0.1885886    0.0997687
6 months    ki1148112-iLiNS-DOSE       MALAWI       1_6 months      Control              NA                 0.0128026   -0.0161195    0.0417247
6 months    ki1148112-iLiNS-DYAD-M     MALAWI       1_6 months      Control              NA                -0.0113246   -0.0795423    0.0568930
6 months    ki1148112-LCNI-5           MALAWI       0_6 months      Control              NA                 0.0189518   -0.0380921    0.0759956
6 months    kiGH5241-JiVitA-3          BANGLADESH   0_6 months      Control              NA                -0.0013387   -0.0147495    0.0120721
6 months    kiGH5241-JiVitA-3          BANGLADESH   1_6 months      Control              NA                -0.0050190   -0.0088869   -0.0011512
6 months    kiGH5241-JiVitA-4          BANGLADESH   0_6 months      Control              NA                -0.0212726   -0.0639744    0.0214292
6 months    kiGH5241-JiVitA-4          BANGLADESH   1_6 months      Control              NA                -0.0003159   -0.0128961    0.0122644
24 months   ki1148112-iLiNS-DOSE       MALAWI       0_24 months     Control              NA                 0.1525424    0.0600111    0.2450736
24 months   ki1148112-iLiNS-DOSE       MALAWI       1_24 months     Control              NA                -0.0211790   -0.1104675    0.0681095
24 months   ki1148112-LCNI-5           MALAWI       0_24 months     Control              NA                -0.0551948   -0.2259038    0.1155142
24 months   kiGH5241-JiVitA-3          BANGLADESH   0_24 months     Control              NA                 0.0192308   -0.1268664    0.1653279
24 months   kiGH5241-JiVitA-3          BANGLADESH   1_24 months     Control              NA                -0.1096154   -0.3395462    0.1203154
24 months   kiGH5241-JiVitA-4          BANGLADESH   0_24 months     Control              NA                -0.0779892   -0.1881407    0.0321623
24 months   kiGH5241-JiVitA-4          BANGLADESH   1_24 months     Control              NA                -0.0028006   -0.0432003    0.0375991


### Parameter: PAF


agecat      studyid                    country      intXpredexfd6   intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  --------------  -------------------  ---------------  -----------  -----------  -----------
Birth       kiGH5241-JiVitA-3          BANGLADESH   0_Birth         Control              NA                -0.0944253   -0.1820003   -0.0133388
Birth       kiGH5241-JiVitA-3          BANGLADESH   1_Birth         Control              NA                -0.0629120   -0.1214367   -0.0074415
Birth       kiGH5241-JiVitA-4          BANGLADESH   0_Birth         Control              NA                -0.3875000   -1.5581847    0.2474522
Birth       kiGH5241-JiVitA-4          BANGLADESH   1_Birth         Control              NA                 0.1663300   -0.4863153    0.5323968
6 months    ki1000304b-SAS-CompFeed    INDIA        1_6 months      Control              NA                 0.0064433   -0.8099256    0.4545881
6 months    ki1000304b-SAS-FoodSuppl   INDIA        0_6 months      Control              NA                -0.0117435   -0.8118439    0.4350370
6 months    ki1148112-iLiNS-DOSE       MALAWI       0_6 months      Control              NA                -0.4205882   -2.6916707    0.4533448
6 months    ki1148112-iLiNS-DOSE       MALAWI       1_6 months      Control              NA                 0.2318181   -0.5129346    0.6099611
6 months    ki1148112-iLiNS-DYAD-M     MALAWI       1_6 months      Control              NA                -0.2129032   -2.4594085    0.5747440
6 months    ki1148112-LCNI-5           MALAWI       0_6 months      Control              NA                 0.2508324   -1.0313249    0.7237015
6 months    kiGH5241-JiVitA-3          BANGLADESH   0_6 months      Control              NA                -0.0122232   -0.1424321    0.1031451
6 months    kiGH5241-JiVitA-3          BANGLADESH   1_6 months      Control              NA                -0.1059205   -0.1900868   -0.0277066
6 months    kiGH5241-JiVitA-4          BANGLADESH   0_6 months      Control              NA                -0.2122534   -0.7158847    0.1435566
6 months    kiGH5241-JiVitA-4          BANGLADESH   1_6 months      Control              NA                -0.0071997   -0.3390313    0.2423991
24 months   ki1148112-iLiNS-DOSE       MALAWI       0_24 months     Control              NA                 0.9999999    0.9999999    1.0000000
24 months   ki1148112-iLiNS-DOSE       MALAWI       1_24 months     Control              NA                -0.0985380   -0.6032110    0.2472695
24 months   ki1148112-LCNI-5           MALAWI       0_24 months     Control              NA                -0.3469388   -1.9587759    0.3868261
24 months   kiGH5241-JiVitA-3          BANGLADESH   0_24 months     Control              NA                 0.0769231   -0.7363135    0.5092643
24 months   kiGH5241-JiVitA-3          BANGLADESH   1_24 months     Control              NA                -0.3986014   -1.5113424    0.2210995
24 months   kiGH5241-JiVitA-4          BANGLADESH   0_24 months     Control              NA                -0.5939177   -1.6264883    0.0327108
24 months   kiGH5241-JiVitA-4          BANGLADESH   1_24 months     Control              NA                -0.0321581   -0.6181344    0.3416182
