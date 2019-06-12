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

**Intervention Variable:** pers_wast

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* month
* brthmon
* delta_W_mage
* delta_meducyrs
* delta_month
* delta_brthmon

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        pers_wast    n_cell      n
----------  -------------------------  -----------------------------  ----------  -------  -----
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               246    255
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                 9    255
Birth       ki0047075b-MAL-ED          BRAZIL                         0               191    191
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 0    191
Birth       ki0047075b-MAL-ED          INDIA                          0               191    206
Birth       ki0047075b-MAL-ED          INDIA                          1                15    206
Birth       ki0047075b-MAL-ED          NEPAL                          0               170    173
Birth       ki0047075b-MAL-ED          NEPAL                          1                 3    173
Birth       ki0047075b-MAL-ED          PERU                           0               286    286
Birth       ki0047075b-MAL-ED          PERU                           1                 0    286
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0               255    261
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 6    261
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               123    123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0    123
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                78     90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                12     90
Birth       ki1000108-IRC              INDIA                          0               319    388
Birth       ki1000108-IRC              INDIA                          1                69    388
Birth       ki1000109-EE               PAKISTAN                       0                 2      2
Birth       ki1000109-EE               PAKISTAN                       1                 0      2
Birth       ki1000109-ResPak           PAKISTAN                       0                 6      7
Birth       ki1000109-ResPak           PAKISTAN                       1                 1      7
Birth       ki1101329-Keneba           GAMBIA                         0              1507   1541
Birth       ki1101329-Keneba           GAMBIA                         1                34   1541
Birth       ki1114097-CMIN             BANGLADESH                     0                 5      8
Birth       ki1114097-CMIN             BANGLADESH                     1                 3      8
Birth       ki1114097-CMIN             PERU                           0                10     10
Birth       ki1114097-CMIN             PERU                           1                 0     10
Birth       ki1114097-CONTENT          PERU                           0                 2      2
Birth       ki1114097-CONTENT          PERU                           1                 0      2
6 months    ki0047075b-MAL-ED          BANGLADESH                     0               234    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 7    241
6 months    ki0047075b-MAL-ED          BRAZIL                         0               208    209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                 1    209
6 months    ki0047075b-MAL-ED          INDIA                          0               218    236
6 months    ki0047075b-MAL-ED          INDIA                          1                18    236
6 months    ki0047075b-MAL-ED          NEPAL                          0               232    236
6 months    ki0047075b-MAL-ED          NEPAL                          1                 4    236
6 months    ki0047075b-MAL-ED          PERU                           0               273    273
6 months    ki0047075b-MAL-ED          PERU                           1                 0    273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               252    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 2    254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               247    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0    247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0               313    366
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                53    366
6 months    ki1000108-IRC              INDIA                          0               337    407
6 months    ki1000108-IRC              INDIA                          1                70    407
6 months    ki1000109-EE               PAKISTAN                       0               344    372
6 months    ki1000109-EE               PAKISTAN                       1                28    372
6 months    ki1000109-ResPak           PAKISTAN                       0               206    235
6 months    ki1000109-ResPak           PAKISTAN                       1                29    235
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               569    583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                14    583
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              1978   2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                51   2029
6 months    ki1101329-Keneba           GAMBIA                         0              2004   2057
6 months    ki1101329-Keneba           GAMBIA                         1                53   2057
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0               270    280
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                10    280
6 months    ki1113344-GMS-Nepal        NEPAL                          0               497    563
6 months    ki1113344-GMS-Nepal        NEPAL                          1                66    563
6 months    ki1114097-CMIN             BANGLADESH                     0               232    243
6 months    ki1114097-CMIN             BANGLADESH                     1                11    243
6 months    ki1114097-CMIN             PERU                           0               614    627
6 months    ki1114097-CMIN             PERU                           1                13    627
6 months    ki1114097-CONTENT          PERU                           0               215    215
6 months    ki1114097-CONTENT          PERU                           1                 0    215
24 months   ki0047075b-MAL-ED          BANGLADESH                     0               206    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 6    212
24 months   ki0047075b-MAL-ED          BRAZIL                         0               168    169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                 1    169
24 months   ki0047075b-MAL-ED          INDIA                          0               209    227
24 months   ki0047075b-MAL-ED          INDIA                          1                18    227
24 months   ki0047075b-MAL-ED          NEPAL                          0               224    228
24 months   ki0047075b-MAL-ED          NEPAL                          1                 4    228
24 months   ki0047075b-MAL-ED          PERU                           0               201    201
24 months   ki0047075b-MAL-ED          PERU                           1                 0    201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               236    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 2    238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               214    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0    214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0               312    368
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                56    368
24 months   ki1000108-IRC              INDIA                          0               339    409
24 months   ki1000108-IRC              INDIA                          1                70    409
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               564    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                13    577
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 6      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0      6
24 months   ki1101329-Keneba           GAMBIA                         0              1522   1564
24 months   ki1101329-Keneba           GAMBIA                         1                42   1564
24 months   ki1113344-GMS-Nepal        NEPAL                          0               440    499
24 months   ki1113344-GMS-Nepal        NEPAL                          1                59    499
24 months   ki1114097-CMIN             BANGLADESH                     0               233    242
24 months   ki1114097-CMIN             BANGLADESH                     1                 9    242
24 months   ki1114097-CMIN             PERU                           0               228    234
24 months   ki1114097-CMIN             PERU                           1                 6    234
24 months   ki1114097-CONTENT          PERU                           0               164    164
24 months   ki1114097-CONTENT          PERU                           1                 0    164


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
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/30740857-4e54-481e-8eb2-4ced3d7034b4/90e9c4bf-9bf4-4544-8010-6588691e79d3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.7201972   -1.8502521    0.4098577
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.7902179   -1.2975551   -0.2828806
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.0966277   -0.7790750    0.9723303
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.8853434   -1.0926171   -0.6780697
Birth       ki1000108-IRC              INDIA                          optimal              observed           0.0568166   -0.3704426    0.4840757
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed           0.0899587   -0.2254152    0.4053326
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.9252301   -2.4860699    0.6356097
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.1631120   -1.4484099   -0.8778141
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -1.6443797   -1.9165972   -1.3721623
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.7041236   -1.0387248   -0.3695224
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -2.1712717   -2.5039672   -1.8385761
6 months    ki1000109-ResPak           PAKISTAN                       optimal              observed          -0.9765125   -1.6106960   -0.3423291
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.0645102   -1.1408804   -0.9881399
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.5415362   -0.6962733   -0.3867990
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.8897488   -0.9369275   -0.8425701
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -1.5369142   -1.6532302   -1.4205981
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.2712489   -1.3809962   -1.1615017
6 months    ki1114097-CMIN             BANGLADESH                     optimal              observed          -1.7718407   -1.9135988   -1.6300826
6 months    ki1114097-CMIN             PERU                           optimal              observed          -0.5938931   -0.6779664   -0.5098198
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.2621883   -1.7678237   -0.7565530
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.5603022   -1.9993253   -1.1212792
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -2.4962465   -2.6029330   -2.3895600
24 months   ki1000108-IRC              INDIA                          optimal              observed          -1.7039110   -1.9085596   -1.4992625
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.6338057   -1.7024164   -1.5651950
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -1.5414298   -1.5939463   -1.4889133
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.8516837   -1.9395424   -1.7638250
24 months   ki1114097-CMIN             BANGLADESH                     optimal              observed          -2.5003156   -2.6281530   -2.3724782
24 months   ki1114097-CMIN             PERU                           optimal              observed          -1.4452617   -1.5700172   -1.3205063


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.0715686   -1.1969582   -0.9461791
Birth       ki0047075b-MAL-ED          INDIA                          observed             observed          -1.0106311   -1.1499962   -0.8712660
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.7064368   -0.8290380   -0.5838355
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.9654444   -1.1742112   -0.7566777
Birth       ki1000108-IRC              INDIA                          observed             observed          -0.3080412   -0.4687931   -0.1472894
Birth       ki1101329-Keneba           GAMBIA                         observed             observed           0.0341467   -0.0293905    0.0976838
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.2056777   -1.3231497   -1.0882058
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -1.2203672   -1.3387619   -1.1019726
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -1.4251321   -1.5673802   -1.2828839
6 months    ki1000108-IRC              INDIA                          observed             observed          -1.2344062   -1.3658524   -1.1029600
6 months    ki1000109-EE               PAKISTAN                       observed             observed          -2.2004704   -2.3234073   -2.0775336
6 months    ki1000109-ResPak           PAKISTAN                       observed             observed          -1.4029220   -1.6085859   -1.1972581
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.0871041   -1.1635539   -1.0106543
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.5434389   -0.5924056   -0.4944722
6 months    ki1101329-Keneba           GAMBIA                         observed             observed          -0.9121372   -0.9593127   -0.8649617
6 months    ki1112895-Guatemala BSC    GUATEMALA                      observed             observed          -1.5785476   -1.6926664   -1.4644288
6 months    ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.3321522   -1.4103691   -1.2539352
6 months    ki1114097-CMIN             BANGLADESH                     observed             observed          -1.7844376   -1.9222926   -1.6465825
6 months    ki1114097-CMIN             PERU                           observed             observed          -0.5098299   -0.5892202   -0.4304395
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.9431132   -2.0691678   -1.8170586
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -1.8458150   -1.9718703   -1.7197596
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -2.5530299   -2.6529925   -2.4530672
24 months   ki1000108-IRC              INDIA                          observed             observed          -1.7824776   -1.8765600   -1.6883952
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.5861179   -1.6693668   -1.5028689
24 months   ki1101329-Keneba           GAMBIA                         observed             observed          -1.5604961   -1.6126979   -1.5082943
24 months   ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.8835905   -1.9681499   -1.7990312
24 months   ki1114097-CMIN             BANGLADESH                     observed             observed          -2.5109504   -2.6361514   -2.3857494
24 months   ki1114097-CMIN             PERU                           observed             observed          -1.4696439   -1.5956384   -1.3436493


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.3513714   -1.4564759    0.7537331
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.2204132   -0.7128243    0.2719979
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.8030645   -1.6659538    0.0598249
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0801010   -0.1991899    0.0389878
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.3648578   -0.7388094    0.0090938
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0558120   -0.3609695    0.2493455
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.2804476   -1.8056653    1.2447701
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.0572552   -0.3304168    0.2159064
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.2192477   -0.0365097    0.4750051
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.5302826   -0.8316217   -0.2289435
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -0.0291988   -0.3303035    0.2719060
6 months    ki1000109-ResPak           PAKISTAN                       optimal              observed          -0.4264094   -1.0206324    0.1678136
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0225939   -0.0416255   -0.0035623
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0019027   -0.1502623    0.1464569
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0223884   -0.0334523   -0.0113244
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.0416335   -0.0748031   -0.0084638
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0609033   -0.1545873    0.0327808
6 months    ki1114097-CMIN             BANGLADESH                     optimal              observed          -0.0125969   -0.0400472    0.0148535
6 months    ki1114097-CMIN             PERU                           optimal              observed           0.0840632    0.0357547    0.1323717
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.6809249   -1.1904881   -0.1713616
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.2855127   -0.7118634    0.1408380
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0567834   -0.1022783   -0.0112884
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.0785666   -0.2703605    0.1132274
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed           0.0476879   -0.0186488    0.1140245
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0190663   -0.0304743   -0.0076582
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0319068   -0.0675069    0.0036932
24 months   ki1114097-CMIN             BANGLADESH                     optimal              observed          -0.0106348   -0.0342062    0.0129366
24 months   ki1114097-CMIN             PERU                           optimal              observed          -0.0243822   -0.0584774    0.0097130
