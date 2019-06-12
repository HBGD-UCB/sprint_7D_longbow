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

**Outcome Variable:** haz

## Predictor Variables

**Intervention Variable:** impfloor

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_nrooms
* W_nchldlt5
* W_parity
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_nrooms
* delta_W_nchldlt5
* delta_W_parity
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        impfloor    n_cell       n
----------  -------------------------  -----------------------------  ---------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1              216     234
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               18     234
Birth       ki0047075b-MAL-ED          BRAZIL                         1              172     174
Birth       ki0047075b-MAL-ED          BRAZIL                         0                2     174
Birth       ki0047075b-MAL-ED          INDIA                          1              181     191
Birth       ki0047075b-MAL-ED          INDIA                          0               10     191
Birth       ki0047075b-MAL-ED          NEPAL                          1               66     164
Birth       ki0047075b-MAL-ED          NEPAL                          0               98     164
Birth       ki0047075b-MAL-ED          PERU                           1               56     259
Birth       ki0047075b-MAL-ED          PERU                           0              203     259
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1              197     218
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0               21     218
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                8     117
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              109     117
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1               71      71
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                0      71
Birth       ki1000108-IRC              INDIA                          1              287     287
Birth       ki1000108-IRC              INDIA                          0                0     287
Birth       ki1017093-NIH-Birth        BANGLADESH                     1               24      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                4      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1               21      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                6      27
Birth       ki1114097-CONTENT          PERU                           1                2       2
Birth       ki1114097-CONTENT          PERU                           0                0       2
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1             1076   19563
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0            18487   19563
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               71     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0              751     822
6 months    ki0047075b-MAL-ED          BANGLADESH                     1              221     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0               19     240
6 months    ki0047075b-MAL-ED          BRAZIL                         1              207     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                2     209
6 months    ki0047075b-MAL-ED          INDIA                          1              220     235
6 months    ki0047075b-MAL-ED          INDIA                          0               15     235
6 months    ki0047075b-MAL-ED          NEPAL                          1              103     229
6 months    ki0047075b-MAL-ED          NEPAL                          0              126     229
6 months    ki0047075b-MAL-ED          PERU                           1               58     270
6 months    ki0047075b-MAL-ED          PERU                           0              212     270
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1              229     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               20     249
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               14     245
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              231     245
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1              257     257
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                0     257
6 months    ki1000108-IRC              INDIA                          1              303     303
6 months    ki1000108-IRC              INDIA                          0                0     303
6 months    ki1017093-NIH-Birth        BANGLADESH                     1              477     535
6 months    ki1017093-NIH-Birth        BANGLADESH                     0               58     535
6 months    ki1017093b-PROVIDE         BANGLADESH                     1              539     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               44     583
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1              537     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0              178     715
6 months    ki1113344-GMS-Nepal        NEPAL                          1               78     441
6 months    ki1113344-GMS-Nepal        NEPAL                          0              363     441
6 months    ki1114097-CONTENT          PERU                           1              201     215
6 months    ki1114097-CONTENT          PERU                           0               14     215
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1             1465   16773
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0            15308   16773
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1              590    4824
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0             4234    4824
24 months   ki0047075b-MAL-ED          BANGLADESH                     1              195     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0               17     212
24 months   ki0047075b-MAL-ED          BRAZIL                         1              167     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                2     169
24 months   ki0047075b-MAL-ED          INDIA                          1              212     227
24 months   ki0047075b-MAL-ED          INDIA                          0               15     227
24 months   ki0047075b-MAL-ED          NEPAL                          1               98     221
24 months   ki0047075b-MAL-ED          NEPAL                          0              123     221
24 months   ki0047075b-MAL-ED          PERU                           1               49     201
24 months   ki0047075b-MAL-ED          PERU                           0              152     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              220     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               18     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               12     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              200     212
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              260     260
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                0     260
24 months   ki1000108-IRC              INDIA                          1              305     305
24 months   ki1000108-IRC              INDIA                          0                0     305
24 months   ki1017093-NIH-Birth        BANGLADESH                     1              377     427
24 months   ki1017093-NIH-Birth        BANGLADESH                     0               50     427
24 months   ki1017093b-PROVIDE         BANGLADESH                     1              532     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               45     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              346     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0              168     514
24 months   ki1113344-GMS-Nepal        NEPAL                          1               72     385
24 months   ki1113344-GMS-Nepal        NEPAL                          0              313     385
24 months   ki1114097-CONTENT          PERU                           1              154     164
24 months   ki1114097-CONTENT          PERU                           0               10     164
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              674    8609
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0             7935    8609
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1              566    4746
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0             4180    4746


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/04fe241b-92b5-4c60-a8d2-ebb472ae5ed8/b0463282-d98a-4eae-ada2-12d0454ca47e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -0.8506786   -1.3142055   -0.3871517
Birth       ki0047075b-MAL-ED       INDIA                          optimal              observed          -1.1205391   -1.3384266   -0.9026516
Birth       ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.8923490   -1.1664095   -0.6182885
Birth       ki0047075b-MAL-ED       PERU                           optimal              observed          -0.8648566   -1.0987355   -0.6309777
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed          -0.4945683   -0.9398854   -0.0492513
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.3701052   -1.7371752   -1.0030352
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -1.0540518   -1.5031103   -0.6049932
Birth       kiGH5241-JiVitA-3       BANGLADESH                     optimal              observed          -1.4262416   -1.4981226   -1.3543605
Birth       kiGH5241-JiVitA-4       BANGLADESH                     optimal              observed          -1.4425286   -1.6686731   -1.2163842
6 months    ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -1.5348623   -2.0476971   -1.0220275
6 months    ki0047075b-MAL-ED       INDIA                          optimal              observed          -1.2967348   -1.7972531   -0.7962165
6 months    ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.4539989   -0.6337432   -0.2742546
6 months    ki0047075b-MAL-ED       PERU                           optimal              observed          -1.1070723   -1.2624922   -0.9516524
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed          -1.1447275   -1.4593233   -0.8301317
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.4245581   -1.8637131   -0.9854032
6 months    ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -1.3578236   -1.4518258   -1.2638214
6 months    ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -1.0458980   -1.1225032   -0.9692927
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -1.3431792   -1.4558225   -1.2305358
6 months    ki1113344-GMS-Nepal     NEPAL                          optimal              observed          -1.0862870   -1.2674657   -0.9051082
6 months    ki1114097-CONTENT       PERU                           optimal              observed          -0.3595526   -0.8031438    0.0840386
6 months    kiGH5241-JiVitA-3       BANGLADESH                     optimal              observed          -1.0601610   -1.1338665   -0.9864554
6 months    kiGH5241-JiVitA-4       BANGLADESH                     optimal              observed          -1.1034482   -1.2533345   -0.9535619
24 months   ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -1.7758056   -2.1701053   -1.3815060
24 months   ki0047075b-MAL-ED       INDIA                          optimal              observed          -1.9171252   -2.1352620   -1.6989884
24 months   ki0047075b-MAL-ED       NEPAL                          optimal              observed          -1.0609149   -1.2471523   -0.8746774
24 months   ki0047075b-MAL-ED       PERU                           optimal              observed          -1.7494064   -1.9919085   -1.5069044
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed          -1.5616466   -1.8684421   -1.2548512
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.3496735   -3.0800942   -1.6192528
24 months   ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -2.1532930   -2.2956873   -2.0108988
24 months   ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -1.5313615   -1.6621026   -1.4006204
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -1.4666865   -1.5787268   -1.3546463
24 months   ki1113344-GMS-Nepal     NEPAL                          optimal              observed          -1.7320982   -1.9378307   -1.5263657
24 months   ki1114097-CONTENT       PERU                           optimal              observed          -0.6670270   -0.8444820   -0.4895721
24 months   kiGH5241-JiVitA-3       BANGLADESH                     optimal              observed          -1.7485987   -1.8612334   -1.6359639
24 months   kiGH5241-JiVitA-4       BANGLADESH                     optimal              observed          -1.5163745   -1.6745371   -1.3582118


### Parameter: E(Y)


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     observed             observed          -1.0229487   -1.1509575   -0.8949400
Birth       ki0047075b-MAL-ED       INDIA                          observed             observed          -1.0069634   -1.1525107   -0.8614160
Birth       ki0047075b-MAL-ED       NEPAL                          observed             observed          -0.6988415   -0.8600838   -0.5375991
Birth       ki0047075b-MAL-ED       PERU                           observed             observed          -0.9447876   -1.0604945   -0.8290808
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   observed             observed          -0.6917890   -0.8248091   -0.5587689
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.8777778   -1.0853531   -0.6702024
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     observed             observed          -1.1100000   -1.5086894   -0.7113106
Birth       kiGH5241-JiVitA-3       BANGLADESH                     observed             observed          -1.5749762   -1.5947643   -1.5551882
Birth       kiGH5241-JiVitA-4       BANGLADESH                     observed             observed          -1.4976642   -1.5817349   -1.4135935
6 months    ki0047075b-MAL-ED       BANGLADESH                     observed             observed          -1.2033681   -1.3212429   -1.0854932
6 months    ki0047075b-MAL-ED       INDIA                          observed             observed          -1.2159433   -1.3345235   -1.0973630
6 months    ki0047075b-MAL-ED       NEPAL                          observed             observed          -0.5534934   -0.6683107   -0.4386762
6 months    ki0047075b-MAL-ED       PERU                           observed             observed          -1.3280247   -1.4371552   -1.2188942
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   observed             observed          -1.0548494   -1.1845497   -0.9251491
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.3613469   -1.4843950   -1.2382988
6 months    ki1017093-NIH-Birth     BANGLADESH                     observed             observed          -1.4060639   -1.4948910   -1.3172368
6 months    ki1017093b-PROVIDE      BANGLADESH                     observed             observed          -1.0871041   -1.1635539   -1.0106543
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     observed             observed          -1.1986783   -1.2700937   -1.1272630
6 months    ki1113344-GMS-Nepal     NEPAL                          observed             observed          -1.3005896   -1.3898487   -1.2113304
6 months    ki1114097-CONTENT       PERU                           observed             observed          -0.3139217   -0.4868486   -0.1409948
6 months    kiGH5241-JiVitA-3       BANGLADESH                     observed             observed          -1.3134597   -1.3365976   -1.2903219
6 months    kiGH5241-JiVitA-4       BANGLADESH                     observed             observed          -1.3440174   -1.3812821   -1.3067527
24 months   ki0047075b-MAL-ED       BANGLADESH                     observed             observed          -1.9431132   -2.0691678   -1.8170586
24 months   ki0047075b-MAL-ED       INDIA                          observed             observed          -1.8458150   -1.9718703   -1.7197596
24 months   ki0047075b-MAL-ED       NEPAL                          observed             observed          -1.2618778   -1.3846215   -1.1391341
24 months   ki0047075b-MAL-ED       PERU                           observed             observed          -1.7500995   -1.8705474   -1.6296516
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   observed             observed          -1.6228361   -1.7581177   -1.4875546
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.6031840   -2.7387629   -2.4676050
24 months   ki1017093-NIH-Birth     BANGLADESH                     observed             observed          -2.1856460   -2.2886758   -2.0826161
24 months   ki1017093b-PROVIDE      BANGLADESH                     observed             observed          -1.5861179   -1.6693668   -1.5028689
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     observed             observed          -1.4295331   -1.5127726   -1.3462935
24 months   ki1113344-GMS-Nepal     NEPAL                          observed             observed          -1.8384978   -1.9325778   -1.7444179
24 months   ki1114097-CONTENT       PERU                           observed             observed          -0.6962195   -0.8674103   -0.5250287
24 months   kiGH5241-JiVitA-3       BANGLADESH                     observed             observed          -2.0124544   -2.0401076   -1.9848012
24 months   kiGH5241-JiVitA-4       BANGLADESH                     observed             observed          -1.7579225   -1.7933649   -1.7224800


### Parameter: PAR


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -0.1722701   -0.6182071    0.2736669
Birth       ki0047075b-MAL-ED       INDIA                          optimal              observed           0.1135757   -0.0576751    0.2848266
Birth       ki0047075b-MAL-ED       NEPAL                          optimal              observed           0.1935075    0.0015702    0.3854449
Birth       ki0047075b-MAL-ED       PERU                           optimal              observed          -0.0799311   -0.2641365    0.1042744
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed          -0.1972207   -0.6121714    0.2177301
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.4923274    0.2260687    0.7585861
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.0559482   -0.3010548    0.1891583
Birth       kiGH5241-JiVitA-3       BANGLADESH                     optimal              observed          -0.1487347   -0.2197904   -0.0776790
Birth       kiGH5241-JiVitA-4       BANGLADESH                     optimal              observed          -0.0551356   -0.2752453    0.1649742
6 months    ki0047075b-MAL-ED       BANGLADESH                     optimal              observed           0.3314943   -0.1500403    0.8130289
6 months    ki0047075b-MAL-ED       INDIA                          optimal              observed           0.0807916   -0.4010740    0.5626571
6 months    ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.0994945   -0.2255139    0.0265248
6 months    ki0047075b-MAL-ED       PERU                           optimal              observed          -0.2209524   -0.3438674   -0.0980374
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed           0.0898781   -0.1990109    0.3787670
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0632112   -0.3687237    0.4951461
6 months    ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -0.0482402   -0.0800292   -0.0164512
6 months    ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -0.0412061   -0.0687435   -0.0136687
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed           0.1445009    0.0609397    0.2280620
6 months    ki1113344-GMS-Nepal     NEPAL                          optimal              observed          -0.2143026   -0.3745506   -0.0540547
6 months    ki1114097-CONTENT       PERU                           optimal              observed           0.0456309   -0.3558615    0.4471233
6 months    kiGH5241-JiVitA-3       BANGLADESH                     optimal              observed          -0.2532988   -0.3263436   -0.1802539
6 months    kiGH5241-JiVitA-4       BANGLADESH                     optimal              observed          -0.2405692   -0.3818176   -0.0993209
24 months   ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -0.1673076   -0.5501501    0.2155349
24 months   ki0047075b-MAL-ED       INDIA                          optimal              observed           0.0713102   -0.1078080    0.2504284
24 months   ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.2009629   -0.3395474   -0.0623785
24 months   ki0047075b-MAL-ED       PERU                           optimal              observed          -0.0006931   -0.1958388    0.1944527
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed          -0.0611895   -0.3636543    0.2412753
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.2535105   -0.9702867    0.4632657
24 months   ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -0.0323529   -0.1293797    0.0646738
24 months   ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -0.0547563   -0.1559856    0.0464730
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed           0.0371535   -0.0323452    0.1066521
24 months   ki1113344-GMS-Nepal     NEPAL                          optimal              observed          -0.1063996   -0.2956442    0.0828450
24 months   ki1114097-CONTENT       PERU                           optimal              observed          -0.0291925   -0.0692137    0.0108288
24 months   kiGH5241-JiVitA-3       BANGLADESH                     optimal              observed          -0.2638557   -0.3758334   -0.1518781
24 months   kiGH5241-JiVitA-4       BANGLADESH                     optimal              observed          -0.2415480   -0.3922119   -0.0908841
