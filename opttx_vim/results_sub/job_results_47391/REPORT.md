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

**Intervention Variable:** vagbrth

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* W_mhtcm
* single
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_single
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        vagbrth    n_cell       n
----------  -------------------------  -----------------------------  --------  -------  ------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0              10      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1              78      88
Birth       ki1000108-IRC              INDIA                          0              66     343
Birth       ki1000108-IRC              INDIA                          1             277     343
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0               1      17
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1              16      17
Birth       ki1119695-PROBIT           BELARUS                        0            1593   13824
Birth       ki1119695-PROBIT           BELARUS                        1           12231   13824
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0            1099   12813
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1           11714   12813
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0               2   15689
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1           15687   15689
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               1     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1             682     683
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0              25     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1             343     368
6 months    ki1000108-IRC              INDIA                          0              68     408
6 months    ki1000108-IRC              INDIA                          1             340     408
6 months    ki1017093b-PROVIDE         BANGLADESH                     0             134     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     1             448     582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0             187     457
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1             270     457
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0             189    2004
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            1815    2004
6 months    ki1119695-PROBIT           BELARUS                        0            1798   15757
6 months    ki1119695-PROBIT           BELARUS                        1           13959   15757
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0             706    8197
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1            7491    8197
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0            1075   16705
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1           15630   16705
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0             337    4056
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1            3719    4056
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0              25     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1             347     372
24 months   ki1000108-IRC              INDIA                          0              69     409
24 months   ki1000108-IRC              INDIA                          1             340     409
24 months   ki1017093b-PROVIDE         BANGLADESH                     0             137     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1             441     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0              99     260
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1             161     260
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               2       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               4       6
24 months   ki1119695-PROBIT           BELARUS                        0             463    3971
24 months   ki1119695-PROBIT           BELARUS                        1            3508    3971
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0              28     417
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1             389     417
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0             475    8555
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1            8080    8555
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0             323    4008
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1            3685    4008


The following strata were considered:

* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/931911df-7e7f-48a0-8db9-2936d9d4b127/f12cfa87-f887-43ac-b4c7-a18fe4569c54/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.6175276   -1.5296085    0.2945533
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.9590904   -1.1602763   -0.7579045
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -1.0772437   -1.2858667   -0.8686208
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.5066941   -0.5357089   -0.4776794
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.5134311   -0.6816019   -0.3452603
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.4677844   -0.7960680   -0.1395008
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1628515   -0.3222452   -0.0034577
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0369394   -0.1771287    0.1032499
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.2996518    0.0981208    0.5011828
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.5847261    0.5094677    0.6599846
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.4294200    0.3348019    0.5240380
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.3905438   -0.4761493   -0.3049383
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.2497706   -0.4093487   -0.0901924
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.1684788   -0.6442219    0.3072643
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.5192213   -0.7796655   -0.2587771
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.9373709   -1.0865428   -0.7881990
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.7238290   -0.9096887   -0.5379692
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.7629115    0.5743138    0.9515091
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.7734262   -1.1209573   -0.4258951
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.1313626   -1.2328097   -1.0299155
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.2294931   -1.3342009   -1.1247853


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.6275000   -0.9746292   -0.2803708
Birth       ki1000108-IRC              INDIA                          observed             observed          -1.0105831   -1.1973019   -0.8238643
Birth       ki1119695-PROBIT           BELARUS                        observed             observed          -1.1463469   -1.3562674   -0.9364264
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.5165387   -0.5425056   -0.4905717
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.5026766   -0.6536848   -0.3516685
6 months    ki1000108-IRC              INDIA                          observed             observed          -0.5989297   -0.7344491   -0.4634104
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.2083706   -0.2927992   -0.1239419
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed           0.0515536   -0.0469240    0.1500313
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0769382    0.0241090    0.1297674
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.5789633    0.5190130    0.6389137
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed           0.3058247    0.2796439    0.3320055
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.5935070   -0.6130727   -0.5739413
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.3758037   -0.4184544   -0.3331531
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.5571505   -0.6585247   -0.4557763
24 months   ki1000108-IRC              INDIA                          observed             observed          -0.7458150   -0.8368180   -0.6548120
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.8879412   -0.9708680   -0.8050144
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.8343077   -0.9482310   -0.7203844
24 months   ki1119695-PROBIT           BELARUS                        observed             observed           0.6863435    0.5745700    0.7981170
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -1.1870743   -1.2881393   -1.0860094
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.2983928   -1.3216893   -1.2750962
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.2433658   -1.2774681   -1.2092634


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0099724   -0.8577298    0.8377851
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.0514927   -0.1523798    0.0493945
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0691032   -0.1641200    0.0259136
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0098445   -0.0226230    0.0029339
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.0107545   -0.0783440    0.0998530
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.1311454   -0.4352942    0.1730035
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0455191   -0.1875807    0.0965425
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.0884930   -0.0091131    0.1860991
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.2227136   -0.4153174   -0.0301099
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0057628   -0.0500331    0.0385075
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1235953   -0.2142489   -0.0329416
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.2029632   -0.2848207   -0.1211058
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.1260332   -0.2795759    0.0275096
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.3886718   -0.8498081    0.0724646
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.2265937   -0.4607565    0.0075690
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed           0.0494297   -0.0787750    0.1776344
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.1104787   -0.2407567    0.0197992
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0765680   -0.1962087    0.0430728
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.4136481   -0.7529966   -0.0742997
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1670302   -0.2658528   -0.0682076
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0138727   -0.1112929    0.0835475
