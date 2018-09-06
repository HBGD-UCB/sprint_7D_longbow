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

agecat      studyid                    country      intXpredexfd6    stunted   n_cell       n
----------  -------------------------  -----------  --------------  --------  -------  ------
Birth       ki1000304b-SAS-CompFeed    INDIA        0_Birth                0        1       1
Birth       ki1000304b-SAS-CompFeed    INDIA        0_Birth                1        0       1
Birth       ki1000304b-SAS-CompFeed    INDIA        1_Birth                0       32      36
Birth       ki1000304b-SAS-CompFeed    INDIA        1_Birth                1        4      36
Birth       kiGH5241-JiVitA-3          BANGLADESH   0_Birth                0     4950    7972
Birth       kiGH5241-JiVitA-3          BANGLADESH   0_Birth                1     3022    7972
Birth       kiGH5241-JiVitA-3          BANGLADESH   1_Birth                0    21130   30192
Birth       kiGH5241-JiVitA-3          BANGLADESH   1_Birth                1     9062   30192
Birth       kiGH5241-JiVitA-4          BANGLADESH   0_Birth                0      182     296
Birth       kiGH5241-JiVitA-4          BANGLADESH   0_Birth                1      114     296
Birth       kiGH5241-JiVitA-4          BANGLADESH   1_Birth                0      878    1238
Birth       kiGH5241-JiVitA-4          BANGLADESH   1_Birth                1      360    1238
6 months    iLiNS_DYADM_LNS            MALAWI       0_6 months             0        2       3
6 months    iLiNS_DYADM_LNS            MALAWI       0_6 months             1        1       3
6 months    iLiNS_DYADM_LNS            MALAWI       1_6 months             0       44      61
6 months    iLiNS_DYADM_LNS            MALAWI       1_6 months             1       17      61
6 months    ki1000304b-SAS-CompFeed    INDIA        0_6 months             0       11      14
6 months    ki1000304b-SAS-CompFeed    INDIA        0_6 months             1        3      14
6 months    ki1000304b-SAS-CompFeed    INDIA        1_6 months             0      181     257
6 months    ki1000304b-SAS-CompFeed    INDIA        1_6 months             1       76     257
6 months    ki1000304b-SAS-FoodSuppl   INDIA        0_6 months             0       84     160
6 months    ki1000304b-SAS-FoodSuppl   INDIA        0_6 months             1       76     160
6 months    ki1017093b-PROVIDE         BANGLADESH   0_6 months             0       14      18
6 months    ki1017093b-PROVIDE         BANGLADESH   0_6 months             1        4      18
6 months    ki1017093b-PROVIDE         BANGLADESH   1_6 months             0       22      28
6 months    ki1017093b-PROVIDE         BANGLADESH   1_6 months             1        6      28
6 months    ki1148112-iLiNS-DOSE       MALAWI       0_6 months             0      110     161
6 months    ki1148112-iLiNS-DOSE       MALAWI       0_6 months             1       51     161
6 months    ki1148112-iLiNS-DOSE       MALAWI       1_6 months             0      727    1014
6 months    ki1148112-iLiNS-DOSE       MALAWI       1_6 months             1      287    1014
6 months    ki1148112-iLiNS-DYAD-M     MALAWI       0_6 months             0        2       3
6 months    ki1148112-iLiNS-DYAD-M     MALAWI       0_6 months             1        1       3
6 months    ki1148112-iLiNS-DYAD-M     MALAWI       1_6 months             0       70      94
6 months    ki1148112-iLiNS-DYAD-M     MALAWI       1_6 months             1       24      94
6 months    ki1148112-LCNI-5           MALAWI       0_6 months             0      145     225
6 months    ki1148112-LCNI-5           MALAWI       0_6 months             1       80     225
6 months    ki1148112-LCNI-5           MALAWI       1_6 months             0       30      47
6 months    ki1148112-LCNI-5           MALAWI       1_6 months             1       17      47
6 months    kiGH5241-JiVitA-3          BANGLADESH   0_6 months             0     4632    6848
6 months    kiGH5241-JiVitA-3          BANGLADESH   0_6 months             1     2216    6848
6 months    kiGH5241-JiVitA-3          BANGLADESH   1_6 months             0    20294   26422
6 months    kiGH5241-JiVitA-3          BANGLADESH   1_6 months             1     6128   26422
6 months    kiGH5241-JiVitA-4          BANGLADESH   0_6 months             0     1222    1796
6 months    kiGH5241-JiVitA-4          BANGLADESH   0_6 months             1      574    1796
6 months    kiGH5241-JiVitA-4          BANGLADESH   1_6 months             0     5074    6656
6 months    kiGH5241-JiVitA-4          BANGLADESH   1_6 months             1     1582    6656
24 months   iLiNS_DYADM_LNS            MALAWI       1_24 months            0        5       7
24 months   iLiNS_DYADM_LNS            MALAWI       1_24 months            1        2       7
24 months   ki1017093b-PROVIDE         BANGLADESH   0_24 months            0        1       1
24 months   ki1017093b-PROVIDE         BANGLADESH   0_24 months            1        0       1
24 months   ki1017093b-PROVIDE         BANGLADESH   1_24 months            0        1       1
24 months   ki1017093b-PROVIDE         BANGLADESH   1_24 months            1        0       1
24 months   ki1148112-iLiNS-DOSE       MALAWI       0_24 months            0       27      59
24 months   ki1148112-iLiNS-DOSE       MALAWI       0_24 months            1       32      59
24 months   ki1148112-iLiNS-DOSE       MALAWI       1_24 months            0      202     442
24 months   ki1148112-iLiNS-DOSE       MALAWI       1_24 months            1      240     442
24 months   ki1148112-iLiNS-DYAD-M     MALAWI       1_24 months            0        9      12
24 months   ki1148112-iLiNS-DYAD-M     MALAWI       1_24 months            1        3      12
24 months   ki1148112-LCNI-5           MALAWI       0_24 months            0       27      44
24 months   ki1148112-LCNI-5           MALAWI       0_24 months            1       17      44
24 months   ki1148112-LCNI-5           MALAWI       1_24 months            0        6       7
24 months   ki1148112-LCNI-5           MALAWI       1_24 months            1        1       7
24 months   kiGH5241-JiVitA-3          BANGLADESH   0_24 months            0       18      40
24 months   kiGH5241-JiVitA-3          BANGLADESH   0_24 months            1       22      40
24 months   kiGH5241-JiVitA-3          BANGLADESH   1_24 months            0       38      80
24 months   kiGH5241-JiVitA-3          BANGLADESH   1_24 months            1       42      80
24 months   kiGH5241-JiVitA-4          BANGLADESH   0_24 months            0      234     396
24 months   kiGH5241-JiVitA-4          BANGLADESH   0_24 months            1      162     396
24 months   kiGH5241-JiVitA-4          BANGLADESH   1_24 months            0      750    1332
24 months   kiGH5241-JiVitA-4          BANGLADESH   1_24 months            1      582    1332


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
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXpredexfd6: 0_6 months
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXpredexfd6: 0_6 months
* agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXpredexfd6: 0_6 months
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
![](/tmp/5c630cef-8987-4c8e-84df-9c8301c81995/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/5c630cef-8987-4c8e-84df-9c8301c81995/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/5c630cef-8987-4c8e-84df-9c8301c81995/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/5c630cef-8987-4c8e-84df-9c8301c81995/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country      intXpredexfd6   intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------  --------------  -------------------  ---------------  ----------  -----------  ----------
Birth       kiGH5241-JiVitA-3          BANGLADESH   0_Birth         Control              NA                0.4034840    0.3809444   0.4260236
Birth       kiGH5241-JiVitA-3          BANGLADESH   0_Birth         Maternal             NA                0.3512352    0.3233783   0.3790922
Birth       kiGH5241-JiVitA-3          BANGLADESH   1_Birth         Control              NA                0.3135789    0.3014129   0.3257449
Birth       kiGH5241-JiVitA-3          BANGLADESH   1_Birth         Maternal             NA                0.2873756    0.2755561   0.2991952
Birth       kiGH5241-JiVitA-4          BANGLADESH   0_Birth         Control              NA                0.3750000    0.2270859   0.5229141
Birth       kiGH5241-JiVitA-4          BANGLADESH   0_Birth         LNS                  NA                0.4210526    0.2524572   0.5896480
Birth       kiGH5241-JiVitA-4          BANGLADESH   0_Birth         Other                NA                0.3714286    0.2543774   0.4884797
Birth       kiGH5241-JiVitA-4          BANGLADESH   1_Birth         Control              NA                0.2848485    0.2116311   0.3580658
Birth       kiGH5241-JiVitA-4          BANGLADESH   1_Birth         LNS                  NA                0.3181818    0.2410489   0.3953147
Birth       kiGH5241-JiVitA-4          BANGLADESH   1_Birth         Other                NA                0.2769784    0.2204503   0.3335066
6 months    iLiNS_DYADM_LNS            MALAWI       1_6 months      Control              NA                0.2903226    0.1292107   0.4514344
6 months    iLiNS_DYADM_LNS            MALAWI       1_6 months      LNS                  NA                0.2666667    0.1071111   0.4262222
6 months    ki1000304b-SAS-CompFeed    INDIA        1_6 months      Control              NA                0.3092784    0.1900328   0.4285239
6 months    ki1000304b-SAS-CompFeed    INDIA        1_6 months      Other                NA                0.2875000    0.2339413   0.3410587
6 months    ki1000304b-SAS-FoodSuppl   INDIA        0_6 months      Control              NA                0.5853659    0.4340920   0.7366397
6 months    ki1000304b-SAS-FoodSuppl   INDIA        0_6 months      Other                NA                0.4369748    0.3475767   0.5263729
6 months    ki1017093b-PROVIDE         BANGLADESH   1_6 months      Control              NA                0.3333333   -0.0507835   0.7174502
6 months    ki1017093b-PROVIDE         BANGLADESH   1_6 months      Other                NA                0.1818182    0.0176922   0.3459442
6 months    ki1148112-iLiNS-DOSE       MALAWI       0_6 months      Control              NA                0.3000000    0.0985368   0.5014632
6 months    ki1148112-iLiNS-DOSE       MALAWI       0_6 months      LNS                  NA                0.3191489    0.2419673   0.3963306
6 months    ki1148112-iLiNS-DOSE       MALAWI       1_6 months      Control              NA                0.3151515    0.2442301   0.3860729
6 months    ki1148112-iLiNS-DOSE       MALAWI       1_6 months      LNS                  NA                0.2767962    0.2466857   0.3069068
6 months    ki1148112-iLiNS-DYAD-M     MALAWI       1_6 months      Control              NA                0.2903226    0.1296800   0.4509651
6 months    ki1148112-iLiNS-DYAD-M     MALAWI       1_6 months      Maternal             NA                0.2380952    0.1323585   0.3438320
6 months    ki1148112-LCNI-5           MALAWI       0_6 months      Control              NA                0.3962264    0.2642531   0.5281997
6 months    ki1148112-LCNI-5           MALAWI       0_6 months      LNS                  NA                0.3362069    0.2500468   0.4223670
6 months    ki1148112-LCNI-5           MALAWI       0_6 months      Other                NA                0.3571429    0.2313663   0.4829194
6 months    ki1148112-LCNI-5           MALAWI       1_6 months      Control              NA                0.2666667    0.0404589   0.4928745
6 months    ki1148112-LCNI-5           MALAWI       1_6 months      LNS                  NA                0.2608696    0.0794741   0.4422650
6 months    ki1148112-LCNI-5           MALAWI       1_6 months      Other                NA                0.7777778    0.5032297   1.0523258
6 months    kiGH5241-JiVitA-3          BANGLADESH   0_6 months      Control              NA                0.3240950    0.2973351   0.3508549
6 months    kiGH5241-JiVitA-3          BANGLADESH   0_6 months      Maternal             NA                0.3230676    0.2951111   0.3510242
6 months    kiGH5241-JiVitA-3          BANGLADESH   1_6 months      Control              NA                0.2440872    0.2306004   0.2575740
6 months    kiGH5241-JiVitA-3          BANGLADESH   1_6 months      Maternal             NA                0.2202611    0.2080748   0.2324473
6 months    kiGH5241-JiVitA-4          BANGLADESH   0_6 months      Control              NA                0.2990654    0.2273176   0.3708133
6 months    kiGH5241-JiVitA-4          BANGLADESH   0_6 months      LNS                  NA                0.2914980    0.2333439   0.3496520
6 months    kiGH5241-JiVitA-4          BANGLADESH   0_6 months      Other                NA                0.3455378    0.2941389   0.3969367
6 months    kiGH5241-JiVitA-4          BANGLADESH   1_6 months      Control              NA                0.2255814    0.1917254   0.2594373
6 months    kiGH5241-JiVitA-4          BANGLADESH   1_6 months      LNS                  NA                0.2299349    0.2009727   0.2588972
6 months    kiGH5241-JiVitA-4          BANGLADESH   1_6 months      Other                NA                0.2490298    0.2230171   0.2750424
24 months   ki1148112-iLiNS-DOSE       MALAWI       0_24 months     Control              NA                0.2857143   -0.0518162   0.6232448
24 months   ki1148112-iLiNS-DOSE       MALAWI       0_24 months     LNS                  NA                0.5769231    0.4414893   0.7123569
24 months   ki1148112-iLiNS-DOSE       MALAWI       1_24 months     Control              NA                0.5694444    0.4549422   0.6839467
24 months   ki1148112-iLiNS-DOSE       MALAWI       1_24 months     LNS                  NA                0.5378378    0.4869795   0.5886961
24 months   ki1148112-LCNI-5           MALAWI       0_24 months     Control              NA                0.3571429    0.1032477   0.6110380
24 months   ki1148112-LCNI-5           MALAWI       0_24 months     LNS                  NA                0.5000000    0.2783360   0.7216640
24 months   ki1148112-LCNI-5           MALAWI       0_24 months     Other                NA                0.2000000   -0.0507842   0.4507842
24 months   kiGH5241-JiVitA-3          BANGLADESH   0_24 months     Control              NA                0.4615385    0.1835057   0.7395712
24 months   kiGH5241-JiVitA-3          BANGLADESH   0_24 months     Maternal             NA                0.7142857    0.3709340   1.0576374
24 months   kiGH5241-JiVitA-3          BANGLADESH   1_24 months     Control              NA                0.5384615    0.2330873   0.8438358
24 months   kiGH5241-JiVitA-3          BANGLADESH   1_24 months     Maternal             NA                0.5185185    0.3356023   0.7014348
24 months   kiGH5241-JiVitA-4          BANGLADESH   0_24 months     Control              NA                0.4651163    0.3028706   0.6273620
24 months   kiGH5241-JiVitA-4          BANGLADESH   0_24 months     LNS                  NA                0.4307692    0.3056746   0.5558638
24 months   kiGH5241-JiVitA-4          BANGLADESH   0_24 months     Other                NA                0.3666667    0.2620154   0.4713180
24 months   kiGH5241-JiVitA-4          BANGLADESH   1_24 months     Control              NA                0.4325843    0.3519158   0.5132527
24 months   kiGH5241-JiVitA-4          BANGLADESH   1_24 months     LNS                  NA                0.4310345    0.3443701   0.5176988
24 months   kiGH5241-JiVitA-4          BANGLADESH   1_24 months     Other                NA                0.4426752    0.3802475   0.5051028


### Parameter: E(Y)


agecat      studyid                    country      intXpredexfd6   intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  --------------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3          BANGLADESH   0_Birth         NA                   NA                0.3790768   0.3612523   0.3969013
Birth       kiGH5241-JiVitA-3          BANGLADESH   1_Birth         NA                   NA                0.3001457   0.2915966   0.3086949
Birth       kiGH5241-JiVitA-4          BANGLADESH   0_Birth         NA                   NA                0.3851351   0.3041471   0.4661232
Birth       kiGH5241-JiVitA-4          BANGLADESH   1_Birth         NA                   NA                0.2907916   0.2518865   0.3296967
6 months    iLiNS_DYADM_LNS            MALAWI       1_6 months      NA                   NA                0.2786885   0.1652414   0.3921356
6 months    ki1000304b-SAS-CompFeed    INDIA        1_6 months      NA                   NA                0.2957198   0.2395510   0.3518887
6 months    ki1000304b-SAS-FoodSuppl   INDIA        0_6 months      NA                   NA                0.4750000   0.3973796   0.5526204
6 months    ki1017093b-PROVIDE         BANGLADESH   1_6 months      NA                   NA                0.2142857   0.0595127   0.3690587
6 months    ki1148112-iLiNS-DOSE       MALAWI       0_6 months      NA                   NA                0.3167702   0.2446854   0.3888550
6 months    ki1148112-iLiNS-DOSE       MALAWI       1_6 months      NA                   NA                0.2830375   0.2552970   0.3107779
6 months    ki1148112-iLiNS-DYAD-M     MALAWI       1_6 months      NA                   NA                0.2553191   0.1666988   0.3439395
6 months    ki1148112-LCNI-5           MALAWI       0_6 months      NA                   NA                0.3555556   0.2928696   0.4182416
6 months    ki1148112-LCNI-5           MALAWI       1_6 months      NA                   NA                0.3617021   0.2228488   0.5005555
6 months    kiGH5241-JiVitA-3          BANGLADESH   0_6 months      NA                   NA                0.3235981   0.3042651   0.3429312
6 months    kiGH5241-JiVitA-3          BANGLADESH   1_6 months      NA                   NA                0.2319279   0.2228159   0.2410400
6 months    kiGH5241-JiVitA-4          BANGLADESH   0_6 months      NA                   NA                0.3195991   0.2851973   0.3540009
6 months    kiGH5241-JiVitA-4          BANGLADESH   1_6 months      NA                   NA                0.2376803   0.2206903   0.2546703
24 months   ki1148112-iLiNS-DOSE       MALAWI       0_24 months     NA                   NA                0.5423729   0.4141578   0.6705879
24 months   ki1148112-iLiNS-DOSE       MALAWI       1_24 months     NA                   NA                0.5429864   0.4964934   0.5894795
24 months   ki1148112-LCNI-5           MALAWI       0_24 months     NA                   NA                0.3863636   0.2408286   0.5318987
24 months   kiGH5241-JiVitA-3          BANGLADESH   0_24 months     NA                   NA                0.5500000   0.3263037   0.7736963
24 months   kiGH5241-JiVitA-3          BANGLADESH   1_24 months     NA                   NA                0.5250000   0.3666127   0.6833873
24 months   kiGH5241-JiVitA-4          BANGLADESH   0_24 months     NA                   NA                0.4090909   0.3365982   0.4815837
24 months   kiGH5241-JiVitA-4          BANGLADESH   1_24 months     NA                   NA                0.4369369   0.3939807   0.4798931


### Parameter: RR


agecat      studyid                    country      intXpredexfd6   intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  --------------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3          BANGLADESH   0_Birth         Control              Control           1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH   0_Birth         Maternal             Control           0.8705060   0.7900203   0.9591913
Birth       kiGH5241-JiVitA-3          BANGLADESH   1_Birth         Control              Control           1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH   1_Birth         Maternal             Control           0.9164380   0.8660504   0.9697572
Birth       kiGH5241-JiVitA-4          BANGLADESH   0_Birth         Control              Control           1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH   0_Birth         LNS                  Control           1.1228070   0.6400633   1.9696420
Birth       kiGH5241-JiVitA-4          BANGLADESH   0_Birth         Other                Control           0.9904762   0.5978764   1.6408795
Birth       kiGH5241-JiVitA-4          BANGLADESH   1_Birth         Control              Control           1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH   1_Birth         LNS                  Control           1.1170213   0.7845663   1.5903518
Birth       kiGH5241-JiVitA-4          BANGLADESH   1_Birth         Other                Control           0.9723710   0.7002624   1.3502160
6 months    iLiNS_DYADM_LNS            MALAWI       1_6 months      Control              Control           1.0000000   1.0000000   1.0000000
6 months    iLiNS_DYADM_LNS            MALAWI       1_6 months      LNS                  Control           0.9185185   0.4061397   2.0773056
6 months    ki1000304b-SAS-CompFeed    INDIA        1_6 months      Control              Control           1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA        1_6 months      Other                Control           0.9295833   0.6059180   1.4261421
6 months    ki1000304b-SAS-FoodSuppl   INDIA        0_6 months      Control              Control           1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA        0_6 months      Other                Control           0.7464986   0.5368882   1.0379445
6 months    ki1017093b-PROVIDE         BANGLADESH   1_6 months      Control              Control           1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH   1_6 months      Other                Control           0.5454545   0.1261915   2.3576925
6 months    ki1148112-iLiNS-DOSE       MALAWI       0_6 months      Control              Control           1.0000000   1.0000000   1.0000000
6 months    ki1148112-iLiNS-DOSE       MALAWI       0_6 months      LNS                  Control           1.0638298   0.5210619   2.1719756
6 months    ki1148112-iLiNS-DOSE       MALAWI       1_6 months      Control              Control           1.0000000   1.0000000   1.0000000
6 months    ki1148112-iLiNS-DOSE       MALAWI       1_6 months      LNS                  Control           0.8782957   0.6840500   1.1277004
6 months    ki1148112-iLiNS-DYAD-M     MALAWI       1_6 months      Control              Control           1.0000000   1.0000000   1.0000000
6 months    ki1148112-iLiNS-DYAD-M     MALAWI       1_6 months      Maternal             Control           0.8201058   0.4034027   1.6672512
6 months    ki1148112-LCNI-5           MALAWI       0_6 months      Control              Control           1.0000000   1.0000000   1.0000000
6 months    ki1148112-LCNI-5           MALAWI       0_6 months      LNS                  Control           0.8485222   0.5573767   1.2917473
6 months    ki1148112-LCNI-5           MALAWI       0_6 months      Other                Control           0.9013605   0.5551134   1.4635763
6 months    ki1148112-LCNI-5           MALAWI       1_6 months      Control              Control           1.0000000   1.0000000   1.0000000
6 months    ki1148112-LCNI-5           MALAWI       1_6 months      LNS                  Control           0.9782609   0.3266609   2.9296264
6 months    ki1148112-LCNI-5           MALAWI       1_6 months      Other                Control           2.9166667   1.1637515   7.3099321
6 months    kiGH5241-JiVitA-3          BANGLADESH   0_6 months      Control              Control           1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH   0_6 months      Maternal             Control           0.9968300   0.8844630   1.1234727
6 months    kiGH5241-JiVitA-3          BANGLADESH   1_6 months      Control              Control           1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH   1_6 months      Maternal             Control           0.9023868   0.8344972   0.9757994
6 months    kiGH5241-JiVitA-4          BANGLADESH   0_6 months      Control              Control           1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH   0_6 months      LNS                  Control           0.9746964   0.7132826   1.3319167
6 months    kiGH5241-JiVitA-4          BANGLADESH   0_6 months      Other                Control           1.1553919   0.8712120   1.5322682
6 months    kiGH5241-JiVitA-4          BANGLADESH   1_6 months      Control              Control           1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH   1_6 months      LNS                  Control           1.0192991   0.8378447   1.2400517
6 months    kiGH5241-JiVitA-4          BANGLADESH   1_6 months      Other                Control           1.1039463   0.9194784   1.3254226
24 months   ki1148112-iLiNS-DOSE       MALAWI       0_24 months     Control              Control           1.0000000   1.0000000   1.0000000
24 months   ki1148112-iLiNS-DOSE       MALAWI       0_24 months     LNS                  Control           2.0192308   0.6054771   6.7340169
24 months   ki1148112-iLiNS-DOSE       MALAWI       1_24 months     Control              Control           1.0000000   1.0000000   1.0000000
24 months   ki1148112-iLiNS-DOSE       MALAWI       1_24 months     LNS                  Control           0.9444957   0.7563084   1.1795085
24 months   ki1148112-LCNI-5           MALAWI       0_24 months     Control              Control           1.0000000   1.0000000   1.0000000
24 months   ki1148112-LCNI-5           MALAWI       0_24 months     LNS                  Control           1.4000000   0.6057191   3.2358236
24 months   ki1148112-LCNI-5           MALAWI       0_24 months     Other                Control           0.5600000   0.1324906   2.3669601
24 months   kiGH5241-JiVitA-3          BANGLADESH   0_24 months     Control              Control           1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH   0_24 months     Maternal             Control           1.5476190   0.7160769   3.3447872
24 months   kiGH5241-JiVitA-3          BANGLADESH   1_24 months     Control              Control           1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH   1_24 months     Maternal             Control           0.9629630   0.4937984   1.8778871
24 months   kiGH5241-JiVitA-4          BANGLADESH   0_24 months     Control              Control           1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH   0_24 months     LNS                  Control           0.9261538   0.5883840   1.4578250
24 months   kiGH5241-JiVitA-4          BANGLADESH   0_24 months     Other                Control           0.7883333   0.5023638   1.2370905
24 months   kiGH5241-JiVitA-4          BANGLADESH   1_24 months     Control              Control           1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH   1_24 months     LNS                  Control           0.9964174   0.7574078   1.3108494
24 months   kiGH5241-JiVitA-4          BANGLADESH   1_24 months     Other                Control           1.0233270   0.8100031   1.2928322


### Parameter: PAR


agecat      studyid                    country      intXpredexfd6   intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  --------------  -------------------  ---------------  -----------  -----------  -----------
Birth       kiGH5241-JiVitA-3          BANGLADESH   0_Birth         Control              NA                -0.0244072   -0.0413136   -0.0075009
Birth       kiGH5241-JiVitA-3          BANGLADESH   1_Birth         Control              NA                -0.0134332   -0.0222235   -0.0046428
Birth       kiGH5241-JiVitA-4          BANGLADESH   0_Birth         Control              NA                 0.0101351   -0.1186353    0.1389056
Birth       kiGH5241-JiVitA-4          BANGLADESH   1_Birth         Control              NA                 0.0059431   -0.0574285    0.0693148
6 months    iLiNS_DYADM_LNS            MALAWI       1_6 months      Control              NA                -0.0116341   -0.1231900    0.0999219
6 months    ki1000304b-SAS-CompFeed    INDIA        1_6 months      Control              NA                -0.0135585   -0.0956081    0.0684910
6 months    ki1000304b-SAS-FoodSuppl   INDIA        0_6 months      Control              NA                -0.1103659   -0.2414413    0.0207096
6 months    ki1017093b-PROVIDE         BANGLADESH   1_6 months      Control              NA                -0.1190476   -0.4480864    0.2099912
6 months    ki1148112-iLiNS-DOSE       MALAWI       0_6 months      Control              NA                 0.0167702   -0.1721737    0.2057141
6 months    ki1148112-iLiNS-DOSE       MALAWI       1_6 months      Control              NA                -0.0321140   -0.0966311    0.0324030
6 months    ki1148112-iLiNS-DYAD-M     MALAWI       1_6 months      Control              NA                -0.0350034   -0.1639941    0.0939872
6 months    ki1148112-LCNI-5           MALAWI       0_6 months      Control              NA                -0.0406709   -0.1553058    0.0739641
6 months    ki1148112-LCNI-5           MALAWI       1_6 months      Control              NA                 0.0950355   -0.0993573    0.2894282
6 months    kiGH5241-JiVitA-3          BANGLADESH   0_6 months      Control              NA                -0.0004969   -0.0192127    0.0182189
6 months    kiGH5241-JiVitA-3          BANGLADESH   1_6 months      Control              NA                -0.0121592   -0.0215198   -0.0027987
6 months    kiGH5241-JiVitA-4          BANGLADESH   0_6 months      Control              NA                 0.0205337   -0.0417193    0.0827866
6 months    kiGH5241-JiVitA-4          BANGLADESH   1_6 months      Control              NA                 0.0120989   -0.0168901    0.0410879
24 months   ki1148112-iLiNS-DOSE       MALAWI       0_24 months     Control              NA                 0.2566586   -0.0647951    0.5781123
24 months   ki1148112-iLiNS-DOSE       MALAWI       1_24 months     Control              NA                -0.0264580   -0.1313436    0.0784276
24 months   ki1148112-LCNI-5           MALAWI       0_24 months     Control              NA                 0.0292208   -0.1820171    0.2404587
24 months   kiGH5241-JiVitA-3          BANGLADESH   0_24 months     Control              NA                 0.0884615   -0.0753963    0.2523194
24 months   kiGH5241-JiVitA-3          BANGLADESH   1_24 months     Control              NA                -0.0134615   -0.2537223    0.2267992
24 months   kiGH5241-JiVitA-4          BANGLADESH   0_24 months     Control              NA                -0.0560254   -0.1975475    0.0854968
24 months   kiGH5241-JiVitA-4          BANGLADESH   1_24 months     Control              NA                 0.0043527   -0.0654478    0.0741531


### Parameter: PAF


agecat      studyid                    country      intXpredexfd6   intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  --------------  -------------------  ---------------  -----------  -----------  -----------
Birth       kiGH5241-JiVitA-3          BANGLADESH   0_Birth         Control              NA                -0.0643860   -0.1105359   -0.0201539
Birth       kiGH5241-JiVitA-3          BANGLADESH   1_Birth         Control              NA                -0.0447555   -0.0745057   -0.0158290
Birth       kiGH5241-JiVitA-4          BANGLADESH   0_Birth         Control              NA                 0.0263158   -0.3722101    0.3090993
Birth       kiGH5241-JiVitA-4          BANGLADESH   1_Birth         Control              NA                 0.0204377   -0.2235390    0.2157648
6 months    iLiNS_DYADM_LNS            MALAWI       1_6 months      Control              NA                -0.0417457   -0.5297105    0.2905624
6 months    ki1000304b-SAS-CompFeed    INDIA        1_6 months      Control              NA                -0.0458492   -0.3584062    0.1947913
6 months    ki1000304b-SAS-FoodSuppl   INDIA        0_6 months      Control              NA                -0.2323492   -0.5456350    0.0174365
6 months    ki1017093b-PROVIDE         BANGLADESH   1_6 months      Control              NA                -0.5555556   -3.1529922    0.4173471
6 months    ki1148112-iLiNS-DOSE       MALAWI       0_6 months      Control              NA                 0.0529412   -0.7778474    0.4955020
6 months    ki1148112-iLiNS-DOSE       MALAWI       1_6 months      Control              NA                -0.1134621   -0.3663764    0.0926380
6 months    ki1148112-iLiNS-DYAD-M     MALAWI       1_6 months      Control              NA                -0.1370968   -0.7724189    0.2704946
6 months    ki1148112-LCNI-5           MALAWI       0_6 months      Control              NA                -0.1143868   -0.4884734    0.1656835
6 months    ki1148112-LCNI-5           MALAWI       1_6 months      Control              NA                 0.2627451   -0.5250649    0.6435924
6 months    kiGH5241-JiVitA-3          BANGLADESH   0_6 months      Control              NA                -0.0015355   -0.0610758    0.0546637
6 months    kiGH5241-JiVitA-3          BANGLADESH   1_6 months      Control              NA                -0.0524268   -0.0934841   -0.0129111
6 months    kiGH5241-JiVitA-4          BANGLADESH   0_6 months      Control              NA                 0.0642483   -0.1526199    0.2403122
6 months    kiGH5241-JiVitA-4          BANGLADESH   1_6 months      Control              NA                 0.0509041   -0.0793797    0.1654623
24 months   ki1148112-iLiNS-DOSE       MALAWI       0_24 months     Control              NA                 0.4732143   -0.6308463    0.8298410
24 months   ki1148112-iLiNS-DOSE       MALAWI       1_24 months     Control              NA                -0.0487269   -0.2609057    0.1277476
24 months   ki1148112-LCNI-5           MALAWI       0_24 months     Control              NA                 0.0756303   -0.6702188    0.4884147
24 months   kiGH5241-JiVitA-3          BANGLADESH   0_24 months     Control              NA                 0.1608392   -0.2075079    0.4168229
24 months   kiGH5241-JiVitA-3          BANGLADESH   1_24 months     Control              NA                -0.0256410   -0.6008654    0.3428932
24 months   kiGH5241-JiVitA-4          BANGLADESH   0_24 months     Control              NA                -0.1369509   -0.5407808    0.1610374
24 months   kiGH5241-JiVitA-4          BANGLADESH   1_24 months     Control              NA                 0.0099618   -0.1633613    0.1574624
