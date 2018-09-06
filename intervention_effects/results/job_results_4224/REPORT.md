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
* intXnchldlt5

## Data Summary

agecat      studyid                    country                        intXnchldlt5    stunted   n_cell       n
----------  -------------------------  -----------------------------  -------------  --------  -------  ------
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1_Birth               0    15730   24208
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1_Birth               1     8478   24208
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+_Birth              0      690     934
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+_Birth              1      244     934
6 months    iLiNS_DYADM_LNS            MALAWI                         1_6 months            0       38      42
6 months    iLiNS_DYADM_LNS            MALAWI                         1_6 months            1        4      42
6 months    iLiNS_DYADM_LNS            MALAWI                         2+_6 months           0       28      33
6 months    iLiNS_DYADM_LNS            MALAWI                         2+_6 months           1        5      33
6 months    ki1000107-Serrinha-VitA    BRAZIL                         1_6 months            0       14      16
6 months    ki1000107-Serrinha-VitA    BRAZIL                         1_6 months            1        2      16
6 months    ki1000107-Serrinha-VitA    BRAZIL                         2+_6 months           0        3       6
6 months    ki1000107-Serrinha-VitA    BRAZIL                         2+_6 months           1        3       6
6 months    ki1017093b-PROVIDE         BANGLADESH                     1_6 months            0       23      29
6 months    ki1017093b-PROVIDE         BANGLADESH                     1_6 months            1        6      29
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1_6 months            0     1052    1173
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1_6 months            1      121    1173
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+_6 months           0       46      53
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+_6 months           1        7      53
6 months    ki1148112-iLiNS-DOSE       MALAWI                         1_6 months            0      595     845
6 months    ki1148112-iLiNS-DOSE       MALAWI                         1_6 months            1      250     845
6 months    ki1148112-iLiNS-DOSE       MALAWI                         2+_6 months           0       92     150
6 months    ki1148112-iLiNS-DOSE       MALAWI                         2+_6 months           1       58     150
6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         1_6 months            0       53      60
6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         1_6 months            1        7      60
6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         2+_6 months           0       35      43
6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         2+_6 months           1        8      43
6 months    ki1148112-LCNI-5           MALAWI                         1_6 months            0      263     390
6 months    ki1148112-LCNI-5           MALAWI                         1_6 months            1      127     390
6 months    ki1148112-LCNI-5           MALAWI                         2+_6 months           0       37      63
6 months    ki1148112-LCNI-5           MALAWI                         2+_6 months           1       26      63
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1_6 months            0    16106   21667
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1_6 months            1     5561   21667
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+_6 months           0      535     719
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+_6 months           1      184     719
24 months   iLiNS_DYADM_LNS            MALAWI                         2+_24 months          0        0       2
24 months   iLiNS_DYADM_LNS            MALAWI                         2+_24 months          1        2       2
24 months   ki1000107-Serrinha-VitA    BRAZIL                         1_24 months           0       34      50
24 months   ki1000107-Serrinha-VitA    BRAZIL                         1_24 months           1       16      50
24 months   ki1000107-Serrinha-VitA    BRAZIL                         2+_24 months          0       14      29
24 months   ki1000107-Serrinha-VitA    BRAZIL                         2+_24 months          1       15      29
24 months   ki1017093b-PROVIDE         BANGLADESH                     1_24 months           0        1       1
24 months   ki1017093b-PROVIDE         BANGLADESH                     1_24 months           1        0       1
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1_24 months           0        3       4
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1_24 months           1        1       4
24 months   ki1148112-iLiNS-DOSE       MALAWI                         1_24 months           0      179     347
24 months   ki1148112-iLiNS-DOSE       MALAWI                         1_24 months           1      168     347
24 months   ki1148112-iLiNS-DOSE       MALAWI                         2+_24 months          0       21      59
24 months   ki1148112-iLiNS-DOSE       MALAWI                         2+_24 months          1       38      59
24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         2+_24 months          0        0       2
24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         2+_24 months          1        2       2
24 months   ki1148112-LCNI-5           MALAWI                         1_24 months           0      122     181
24 months   ki1148112-LCNI-5           MALAWI                         1_24 months           1       59     181
24 months   ki1148112-LCNI-5           MALAWI                         2+_24 months          0       14      26
24 months   ki1148112-LCNI-5           MALAWI                         2+_24 months          1       12      26
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1_24 months           0       57     121
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1_24 months           1       64     121
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+_24 months          0        3       5
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+_24 months          1        2       5


The following strata were considered:

* agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXnchldlt5: 2+_24 months
* agecat: 24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL, intXnchldlt5: 1_24 months
* agecat: 24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL, intXnchldlt5: 2+_24 months
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXnchldlt5: 1_24 months
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXnchldlt5: 1_24 months
* agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXnchldlt5: 1_24 months
* agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXnchldlt5: 2+_24 months
* agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXnchldlt5: 2+_24 months
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXnchldlt5: 1_24 months
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXnchldlt5: 2+_24 months
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXnchldlt5: 1_24 months
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXnchldlt5: 2+_24 months
* agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXnchldlt5: 1_6 months
* agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXnchldlt5: 2+_6 months
* agecat: 6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL, intXnchldlt5: 1_6 months
* agecat: 6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL, intXnchldlt5: 2+_6 months
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXnchldlt5: 1_6 months
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXnchldlt5: 1_6 months
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXnchldlt5: 2+_6 months
* agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXnchldlt5: 1_6 months
* agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXnchldlt5: 2+_6 months
* agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXnchldlt5: 1_6 months
* agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXnchldlt5: 2+_6 months
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXnchldlt5: 1_6 months
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXnchldlt5: 2+_6 months
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXnchldlt5: 1_6 months
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXnchldlt5: 2+_6 months
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXnchldlt5: 1_Birth
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXnchldlt5: 2+_Birth

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXnchldlt5: 1_6 months
* agecat: 6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL, intXnchldlt5: 1_6 months
* agecat: 6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL, intXnchldlt5: 2+_6 months
* agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXnchldlt5: 2+_24 months
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXnchldlt5: 1_24 months
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXnchldlt5: 1_24 months
* agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXnchldlt5: 2+_24 months
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXnchldlt5: 2+_24 months

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/1361b753-9f18-4d32-962a-dc19e0652938/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/1361b753-9f18-4d32-962a-dc19e0652938/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/1361b753-9f18-4d32-962a-dc19e0652938/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/1361b753-9f18-4d32-962a-dc19e0652938/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intXnchldlt5   intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1_Birth        Control              NA                0.3691130    0.3555767   0.3826493
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1_Birth        Maternal             NA                0.3315833    0.3182020   0.3449645
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+_Birth       Control              NA                0.2635983    0.2019324   0.3252643
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+_Birth       Maternal             NA                0.2587719    0.1958567   0.3216872
6 months    iLiNS_DYADM_LNS            MALAWI                         2+_6 months    Control              NA                0.1250000   -0.0395618   0.2895618
6 months    iLiNS_DYADM_LNS            MALAWI                         2+_6 months    LNS                  NA                0.1764706   -0.0075563   0.3604975
6 months    ki1017093b-PROVIDE         BANGLADESH                     1_6 months     Control              NA                0.2500000   -0.1818558   0.6818558
6 months    ki1017093b-PROVIDE         BANGLADESH                     1_6 months     Other                NA                0.2000000    0.0404275   0.3595725
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1_6 months     Control              NA                0.1258503    0.0879206   0.1637801
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1_6 months     Other                NA                0.0816993    0.0509968   0.1124019
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1_6 months     Zinc                 NA                0.1029668    0.0780720   0.1278617
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+_6 months    Control              NA                0.0625000   -0.0572430   0.1822430
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+_6 months    Other                NA                0.1818182   -0.0482897   0.4119261
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+_6 months    Zinc                 NA                0.1538462    0.0138340   0.2938583
6 months    ki1148112-iLiNS-DOSE       MALAWI                         1_6 months     Control              NA                0.3185185    0.2398805   0.3971566
6 months    ki1148112-iLiNS-DOSE       MALAWI                         1_6 months     LNS                  NA                0.2915493    0.2581000   0.3249986
6 months    ki1148112-iLiNS-DOSE       MALAWI                         2+_6 months    Control              NA                0.3846154    0.1969861   0.5722446
6 months    ki1148112-iLiNS-DOSE       MALAWI                         2+_6 months    LNS                  NA                0.3870968    0.3010776   0.4731160
6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         1_6 months     Control              NA                0.0555556   -0.0511565   0.1622676
6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         1_6 months     Maternal             NA                0.1428571    0.0361360   0.2495783
6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         2+_6 months    Control              NA                0.1250000   -0.0389671   0.2889671
6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         2+_6 months    Maternal             NA                0.2222222    0.0635513   0.3808931
6 months    ki1148112-LCNI-5           MALAWI                         1_6 months     Control              NA                0.3061224    0.2147571   0.3974878
6 months    ki1148112-LCNI-5           MALAWI                         1_6 months     LNS                  NA                0.3283582    0.2633527   0.3933637
6 months    ki1148112-LCNI-5           MALAWI                         1_6 months     Other                NA                0.3406593    0.2431604   0.4381583
6 months    ki1148112-LCNI-5           MALAWI                         2+_6 months    Control              NA                0.2222222    0.0286211   0.4158233
6 months    ki1148112-LCNI-5           MALAWI                         2+_6 months    LNS                  NA                0.4193548    0.2442541   0.5944555
6 months    ki1148112-LCNI-5           MALAWI                         2+_6 months    Other                NA                0.6428571    0.3898477   0.8958666
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1_6 months     Control              NA                0.2672333    0.2525904   0.2818763
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1_6 months     Maternal             NA                0.2463279    0.2331089   0.2595469
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+_6 months    Control              NA                0.2513661    0.1868254   0.3159068
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+_6 months    Maternal             NA                0.2606232    0.1874300   0.3338165
24 months   ki1000107-Serrinha-VitA    BRAZIL                         1_24 months    Control              NA                0.3928571    0.2101234   0.5755909
24 months   ki1000107-Serrinha-VitA    BRAZIL                         1_24 months    VitA                 NA                0.2272727    0.0503798   0.4041657
24 months   ki1000107-Serrinha-VitA    BRAZIL                         2+_24 months   Control              NA                0.5555556    0.3219386   0.7891725
24 months   ki1000107-Serrinha-VitA    BRAZIL                         2+_24 months   VitA                 NA                0.4545455    0.1550849   0.7540060
24 months   ki1148112-iLiNS-DOSE       MALAWI                         1_24 months    Control              NA                0.5333333    0.4069174   0.6597493
24 months   ki1148112-iLiNS-DOSE       MALAWI                         1_24 months    LNS                  NA                0.4738676    0.4160167   0.5317185
24 months   ki1148112-iLiNS-DOSE       MALAWI                         2+_24 months   Control              NA                0.4285714    0.0588253   0.7983176
24 months   ki1148112-iLiNS-DOSE       MALAWI                         2+_24 months   LNS                  NA                0.6730769    0.5444850   0.8016688
24 months   ki1148112-LCNI-5           MALAWI                         1_24 months    Control              NA                0.3461538    0.2164891   0.4758186
24 months   ki1148112-LCNI-5           MALAWI                         1_24 months    LNS                  NA                0.3295455    0.2310645   0.4280264
24 months   ki1148112-LCNI-5           MALAWI                         1_24 months    Other                NA                0.2926829    0.1530252   0.4323407
24 months   ki1148112-LCNI-5           MALAWI                         2+_24 months   Control              NA                0.3000000    0.0103494   0.5896506
24 months   ki1148112-LCNI-5           MALAWI                         2+_24 months   LNS                  NA                0.5454545    0.2453750   0.8455341
24 months   ki1148112-LCNI-5           MALAWI                         2+_24 months   Other                NA                0.6000000    0.1620895   1.0379105
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1_24 months    Control              NA                0.4905660    0.3114087   0.6697234
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1_24 months    Maternal             NA                0.5588235    0.4091539   0.7084932


### Parameter: E(Y)


agecat      studyid                    country                        intXnchldlt5   intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1_Birth        NA                   NA                0.3502148   0.3405588   0.3598708
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+_Birth       NA                   NA                0.2612420   0.2171986   0.3052854
6 months    iLiNS_DYADM_LNS            MALAWI                         2+_6 months    NA                   NA                0.1515152   0.0272861   0.2757442
6 months    ki1017093b-PROVIDE         BANGLADESH                     1_6 months     NA                   NA                0.2068966   0.0568553   0.3569378
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1_6 months     NA                   NA                0.1031543   0.0857408   0.1205678
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+_6 months    NA                   NA                0.1320755   0.0400520   0.2240989
6 months    ki1148112-iLiNS-DOSE       MALAWI                         1_6 months     NA                   NA                0.2958580   0.2650652   0.3266508
6 months    ki1148112-iLiNS-DOSE       MALAWI                         2+_6 months    NA                   NA                0.3866667   0.3084730   0.4648603
6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         1_6 months     NA                   NA                0.1166667   0.0347527   0.1985806
6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         2+_6 months    NA                   NA                0.1860465   0.0683580   0.3037350
6 months    ki1148112-LCNI-5           MALAWI                         1_6 months     NA                   NA                0.3256410   0.2790729   0.3722091
6 months    ki1148112-LCNI-5           MALAWI                         2+_6 months    NA                   NA                0.4126984   0.2901524   0.5352444
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1_6 months     NA                   NA                0.2566576   0.2467626   0.2665526
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+_6 months    NA                   NA                0.2559110   0.2071800   0.3046420
24 months   ki1000107-Serrinha-VitA    BRAZIL                         1_24 months    NA                   NA                0.3200000   0.1893891   0.4506109
24 months   ki1000107-Serrinha-VitA    BRAZIL                         2+_24 months   NA                   NA                0.5172414   0.3321523   0.7023304
24 months   ki1148112-iLiNS-DOSE       MALAWI                         1_24 months    NA                   NA                0.4841499   0.4314922   0.5368075
24 months   ki1148112-iLiNS-DOSE       MALAWI                         2+_24 months   NA                   NA                0.6440678   0.5208471   0.7672885
24 months   ki1148112-LCNI-5           MALAWI                         1_24 months    NA                   NA                0.3259669   0.2574907   0.3944430
24 months   ki1148112-LCNI-5           MALAWI                         2+_24 months   NA                   NA                0.4615385   0.2661228   0.6569541
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1_24 months    NA                   NA                0.5289256   0.4136162   0.6442351


### Parameter: RR


agecat      studyid                    country                        intXnchldlt5   intervention_level   baseline_level     estimate    ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------  -------------------  ---------------  ----------  ----------  -----------
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1_Birth        Control              Control           1.0000000   1.0000000    1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1_Birth        Maternal             Control           0.8983245   0.8506314    0.9486917
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+_Birth       Control              Control           1.0000000   1.0000000    1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+_Birth       Maternal             Control           0.9816903   0.7005593    1.3756379
6 months    iLiNS_DYADM_LNS            MALAWI                         2+_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    iLiNS_DYADM_LNS            MALAWI                         2+_6 months    LNS                  Control           1.4117647   0.2632549    7.5709126
6 months    ki1017093b-PROVIDE         BANGLADESH                     1_6 months     Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     1_6 months     Other                Control           0.8000000   0.1193226    5.3636102
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1_6 months     Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1_6 months     Other                Control           0.6491786   0.4010084    1.0509327
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1_6 months     Zinc                 Control           0.8181690   0.5559557    1.2040535
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+_6 months    Other                Control           2.9090909   0.2927842   28.9046035
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+_6 months    Zinc                 Control           2.4615385   0.2951513   20.5290327
6 months    ki1148112-iLiNS-DOSE       MALAWI                         1_6 months     Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1148112-iLiNS-DOSE       MALAWI                         1_6 months     LNS                  Control           0.9153292   0.6971784    1.2017406
6 months    ki1148112-iLiNS-DOSE       MALAWI                         2+_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1148112-iLiNS-DOSE       MALAWI                         2+_6 months    LNS                  Control           1.0064516   0.5888212    1.7202927
6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         1_6 months     Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         1_6 months     Maternal             Control           2.5714286   0.3274194   20.1950312
6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         2+_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         2+_6 months    Maternal             Control           1.7777778   0.3992714    7.9156530
6 months    ki1148112-LCNI-5           MALAWI                         1_6 months     Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1148112-LCNI-5           MALAWI                         1_6 months     LNS                  Control           1.0726368   0.7497393    1.5345997
6 months    ki1148112-LCNI-5           MALAWI                         1_6 months     Other                Control           1.1128205   0.7359340    1.6827182
6 months    ki1148112-LCNI-5           MALAWI                         2+_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1148112-LCNI-5           MALAWI                         2+_6 months    LNS                  Control           1.8870968   0.7181636    4.9586668
6 months    ki1148112-LCNI-5           MALAWI                         2+_6 months    Other                Control           2.8928571   1.1121175    7.5249445
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1_6 months     Control              Control           1.0000000   1.0000000    1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1_6 months     Maternal             Control           0.9217708   0.8537170    0.9952496
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+_6 months    Maternal             Control           1.0368272   0.7087628    1.5167426
24 months   ki1000107-Serrinha-VitA    BRAZIL                         1_24 months    Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1000107-Serrinha-VitA    BRAZIL                         1_24 months    VitA                 Control           0.5785124   0.2336290    1.4325133
24 months   ki1000107-Serrinha-VitA    BRAZIL                         2+_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1000107-Serrinha-VitA    BRAZIL                         2+_24 months   VitA                 Control           0.8181818   0.3744681    1.7876595
24 months   ki1148112-iLiNS-DOSE       MALAWI                         1_24 months    Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1148112-iLiNS-DOSE       MALAWI                         1_24 months    LNS                  Control           0.8885017   0.6805591    1.1599806
24 months   ki1148112-iLiNS-DOSE       MALAWI                         2+_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1148112-iLiNS-DOSE       MALAWI                         2+_24 months   LNS                  Control           1.5705128   0.6490540    3.8001624
24 months   ki1148112-LCNI-5           MALAWI                         1_24 months    Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1148112-LCNI-5           MALAWI                         1_24 months    LNS                  Control           0.9520202   0.5895736    1.5372848
24 months   ki1148112-LCNI-5           MALAWI                         1_24 months    Other                Control           0.8455285   0.4609692    1.5509028
24 months   ki1148112-LCNI-5           MALAWI                         2+_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1148112-LCNI-5           MALAWI                         2+_24 months   LNS                  Control           1.8181818   0.5984555    5.5238608
24 months   ki1148112-LCNI-5           MALAWI                         2+_24 months   Other                Control           2.0000000   0.5962033    6.7091209
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1_24 months    Control              Control           1.0000000   1.0000000    1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1_24 months    Maternal             Control           1.1391403   0.7242405    1.7917260


### Parameter: PAR


agecat      studyid                    country                        intXnchldlt5   intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1_Birth        Control              NA                -0.0188982   -0.0286706   -0.0091258
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+_Birth       Control              NA                -0.0023564   -0.0453683    0.0406555
6 months    iLiNS_DYADM_LNS            MALAWI                         2+_6 months    Control              NA                 0.0265152   -0.1009740    0.1540043
6 months    ki1017093b-PROVIDE         BANGLADESH                     1_6 months     Control              NA                -0.0431034   -0.4400463    0.3538394
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1_6 months     Control              NA                -0.0226960   -0.0546448    0.0092527
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+_6 months    Control              NA                 0.0695755   -0.0493764    0.1885274
6 months    ki1148112-iLiNS-DOSE       MALAWI                         1_6 months     Control              NA                -0.0226605   -0.0944672    0.0491462
6 months    ki1148112-iLiNS-DOSE       MALAWI                         2+_6 months    Control              NA                 0.0020513   -0.1685790    0.1726815
6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         1_6 months     Control              NA                 0.0611111   -0.0450250    0.1672472
6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         2+_6 months    Control              NA                 0.0610465   -0.0829264    0.2050194
6 months    ki1148112-LCNI-5           MALAWI                         1_6 months     Control              NA                 0.0195186   -0.0599861    0.0990233
6 months    ki1148112-LCNI-5           MALAWI                         2+_6 months    Control              NA                 0.1904762    0.0141782    0.3667742
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1_6 months     Control              NA                -0.0105757   -0.0205992   -0.0005522
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+_6 months    Control              NA                 0.0045449   -0.0433630    0.0524527
24 months   ki1000107-Serrinha-VitA    BRAZIL                         1_24 months    Control              NA                -0.0728571   -0.1871034    0.0413892
24 months   ki1000107-Serrinha-VitA    BRAZIL                         2+_24 months   Control              NA                -0.0383142   -0.1835183    0.1068899
24 months   ki1148112-iLiNS-DOSE       MALAWI                         1_24 months    Control              NA                -0.0491835   -0.1641933    0.0658263
24 months   ki1148112-iLiNS-DOSE       MALAWI                         2+_24 months   Control              NA                 0.2154964   -0.1301268    0.5611195
24 months   ki1148112-LCNI-5           MALAWI                         1_24 months    Control              NA                -0.0201870   -0.1290054    0.0886314
24 months   ki1148112-LCNI-5           MALAWI                         2+_24 months   Control              NA                 0.1615385   -0.0783537    0.4014306
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1_24 months    Control              NA                 0.0383596   -0.0929836    0.1697028


### Parameter: PAF


agecat      studyid                    country                        intXnchldlt5   intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1_Birth        Control              NA                -0.0539617   -0.0823235   -0.0263431
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+_Birth       Control              NA                -0.0090198   -0.1878600    0.1428948
6 months    iLiNS_DYADM_LNS            MALAWI                         2+_6 months    Control              NA                 0.1750000   -1.2637606    0.6993388
6 months    ki1017093b-PROVIDE         BANGLADESH                     1_6 months     Control              NA                -0.2083333   -4.9014206    0.7525902
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1_6 months     Control              NA                -0.2200202   -0.5705315    0.0522639
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+_6 months    Control              NA                 0.5267857   -1.7581390    0.9188106
6 months    ki1148112-iLiNS-DOSE       MALAWI                         1_6 months     Control              NA                -0.0765926   -0.3488186    0.1406913
6 months    ki1148112-iLiNS-DOSE       MALAWI                         2+_6 months    Control              NA                 0.0053050   -0.5501005    0.3617072
6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         1_6 months     Control              NA                 0.5238095   -1.7920562    0.9187848
6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         2+_6 months    Control              NA                 0.3281250   -1.0647878    0.7813741
6 months    ki1148112-LCNI-5           MALAWI                         1_6 months     Control              NA                 0.0599389   -0.2188285    0.2749474
6 months    ki1148112-LCNI-5           MALAWI                         2+_6 months    Control              NA                 0.4615385   -0.1785770    0.7539908
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1_6 months     Control              NA                -0.0412056   -0.0809014   -0.0029677
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+_6 months    Control              NA                 0.0177596   -0.1880694    0.1879293
24 months   ki1000107-Serrinha-VitA    BRAZIL                         1_24 months    Control              NA                -0.2276786   -0.6445410    0.0835165
24 months   ki1000107-Serrinha-VitA    BRAZIL                         2+_24 months   Control              NA                -0.0740741   -0.3970158    0.1742147
24 months   ki1148112-iLiNS-DOSE       MALAWI                         1_24 months    Control              NA                -0.1015873   -0.3670354    0.1123167
24 months   ki1148112-iLiNS-DOSE       MALAWI                         2+_24 months   Control              NA                 0.3345865   -0.5025247    0.7053125
24 months   ki1148112-LCNI-5           MALAWI                         1_24 months    Control              NA                -0.0619296   -0.4542036    0.2245278
24 months   ki1148112-LCNI-5           MALAWI                         2+_24 months   Control              NA                 0.3500000   -0.4514503    0.7089118
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1_24 months    Control              NA                 0.0725236   -0.2139281    0.2913810
