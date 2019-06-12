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

**Intervention Variable:** anywast06

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

agecat      studyid                    country                        anywast06    n_cell      n
----------  -------------------------  -----------------------------  ----------  -------  -----
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               198    255
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                57    255
Birth       ki0047075b-MAL-ED          BRAZIL                         0               178    191
Birth       ki0047075b-MAL-ED          BRAZIL                         1                13    191
Birth       ki0047075b-MAL-ED          INDIA                          0               144    206
Birth       ki0047075b-MAL-ED          INDIA                          1                62    206
Birth       ki0047075b-MAL-ED          NEPAL                          0               141    173
Birth       ki0047075b-MAL-ED          NEPAL                          1                32    173
Birth       ki0047075b-MAL-ED          PERU                           0               275    286
Birth       ki0047075b-MAL-ED          PERU                           1                11    286
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0               230    261
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                31    261
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               117    123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 6    123
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                36     90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                54     90
Birth       ki1000108-IRC              INDIA                          0               164    388
Birth       ki1000108-IRC              INDIA                          1               224    388
Birth       ki1000109-EE               PAKISTAN                       0                 0      2
Birth       ki1000109-EE               PAKISTAN                       1                 2      2
Birth       ki1000109-ResPak           PAKISTAN                       0                 6      7
Birth       ki1000109-ResPak           PAKISTAN                       1                 1      7
Birth       ki1101329-Keneba           GAMBIA                         0              1287   1541
Birth       ki1101329-Keneba           GAMBIA                         1               254   1541
Birth       ki1114097-CMIN             BANGLADESH                     0                 5      8
Birth       ki1114097-CMIN             BANGLADESH                     1                 3      8
Birth       ki1114097-CMIN             PERU                           0                10     10
Birth       ki1114097-CMIN             PERU                           1                 0     10
Birth       ki1114097-CONTENT          PERU                           0                 2      2
Birth       ki1114097-CONTENT          PERU                           1                 0      2
6 months    ki0047075b-MAL-ED          BANGLADESH                     0               184    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                57    241
6 months    ki0047075b-MAL-ED          BRAZIL                         0               195    209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                14    209
6 months    ki0047075b-MAL-ED          INDIA                          0               162    236
6 months    ki0047075b-MAL-ED          INDIA                          1                74    236
6 months    ki0047075b-MAL-ED          NEPAL                          0               193    236
6 months    ki0047075b-MAL-ED          NEPAL                          1                43    236
6 months    ki0047075b-MAL-ED          PERU                           0               263    273
6 months    ki0047075b-MAL-ED          PERU                           1                10    273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               226    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                28    254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               236    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                11    247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0               174    366
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1               192    366
6 months    ki1000108-IRC              INDIA                          0               165    407
6 months    ki1000108-IRC              INDIA                          1               242    407
6 months    ki1000109-EE               PAKISTAN                       0               270    372
6 months    ki1000109-EE               PAKISTAN                       1               102    372
6 months    ki1000109-ResPak           PAKISTAN                       0               140    235
6 months    ki1000109-ResPak           PAKISTAN                       1                95    235
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               435    583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               148    583
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              1728   2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               301   2029
6 months    ki1101329-Keneba           GAMBIA                         0              1695   2057
6 months    ki1101329-Keneba           GAMBIA                         1               362   2057
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0               270    280
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                10    280
6 months    ki1113344-GMS-Nepal        NEPAL                          0               391    563
6 months    ki1113344-GMS-Nepal        NEPAL                          1               172    563
6 months    ki1114097-CMIN             BANGLADESH                     0               201    243
6 months    ki1114097-CMIN             BANGLADESH                     1                42    243
6 months    ki1114097-CMIN             PERU                           0               581    627
6 months    ki1114097-CMIN             PERU                           1                46    627
6 months    ki1114097-CONTENT          PERU                           0               211    215
6 months    ki1114097-CONTENT          PERU                           1                 4    215
24 months   ki0047075b-MAL-ED          BANGLADESH                     0               163    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                49    212
24 months   ki0047075b-MAL-ED          BRAZIL                         0               157    169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                12    169
24 months   ki0047075b-MAL-ED          INDIA                          0               154    227
24 months   ki0047075b-MAL-ED          INDIA                          1                73    227
24 months   ki0047075b-MAL-ED          NEPAL                          0               187    228
24 months   ki0047075b-MAL-ED          NEPAL                          1                41    228
24 months   ki0047075b-MAL-ED          PERU                           0               193    201
24 months   ki0047075b-MAL-ED          PERU                           1                 8    201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               214    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                24    238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               203    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                11    214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0               174    368
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               194    368
24 months   ki1000108-IRC              INDIA                          0               166    409
24 months   ki1000108-IRC              INDIA                          1               243    409
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               431    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               146    577
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 5      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1      6
24 months   ki1101329-Keneba           GAMBIA                         0              1297   1564
24 months   ki1101329-Keneba           GAMBIA                         1               267   1564
24 months   ki1113344-GMS-Nepal        NEPAL                          0               351    499
24 months   ki1113344-GMS-Nepal        NEPAL                          1               148    499
24 months   ki1114097-CMIN             BANGLADESH                     0               200    242
24 months   ki1114097-CMIN             BANGLADESH                     1                42    242
24 months   ki1114097-CMIN             PERU                           0               220    234
24 months   ki1114097-CMIN             PERU                           1                14    234
24 months   ki1114097-CONTENT          PERU                           0               161    164
24 months   ki1114097-CONTENT          PERU                           1                 3    164


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

* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/c5e1d2eb-c9c4-45f4-bffa-39ad79ddda10/7c2920c9-fa55-4153-beff-018b6c7b0dd0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.9243697   -1.1941941   -0.6545453
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.2144192   -0.6323423    0.2035038
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.8623854   -1.1139269   -0.6108439
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.9431824   -1.1681236   -0.7182412
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.9829102   -1.7862914   -0.1795290
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.5271452   -0.9473655   -0.1069249
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.2502987   -1.7250265   -0.7755709
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.9093616   -1.2146017   -0.6041214
Birth       ki1000108-IRC              INDIA                          optimal              observed           0.1191186   -0.1000466    0.3382838
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed           0.0699846   -0.0977767    0.2377459
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.1658690   -1.2917249   -1.0400130
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.1350984   -0.3553582    0.6255550
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.2236224   -1.3879403   -1.0593045
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.6852622   -0.8301510   -0.5403733
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -1.1390371   -1.8158787   -0.4621954
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -1.1843712   -1.4052918   -0.9634506
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.0356980   -2.3377108   -1.7336851
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -1.5058787   -1.7194575   -1.2922999
6 months    ki1000108-IRC              INDIA                          optimal              observed          -1.0959266   -1.2686672   -0.9231859
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -2.2728100   -2.4526077   -2.0930124
6 months    ki1000109-ResPak           PAKISTAN                       optimal              observed          -1.0104204   -1.3514733   -0.6693676
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.0452630   -1.1331739   -0.9573521
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.5778226   -0.6389045   -0.5167408
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.8850663   -0.9342427   -0.8358898
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -1.5386551   -1.6547150   -1.4225952
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.2220883   -1.3471234   -1.0970531
6 months    ki1114097-CMIN             BANGLADESH                     optimal              observed          -1.7701248   -1.9194733   -1.6207763
6 months    ki1114097-CMIN             PERU                           optimal              observed          -0.4707465   -0.5483279   -0.3931650
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -2.0041423   -2.2677217   -1.7405629
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.0834129   -0.0890455    0.2558713
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.7177239   -1.9224186   -1.5130293
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -1.3924121   -1.7055223   -1.0793018
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -1.4705591   -2.2888033   -0.6523150
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -1.5067316   -2.0289885   -0.9844748
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.2193035   -2.3803312   -2.0582758
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -2.4975610   -2.6439584   -2.3511637
24 months   ki1000108-IRC              INDIA                          optimal              observed          -1.8588621   -1.9809832   -1.7367411
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.5650794   -1.6651063   -1.4650526
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -1.5971083   -1.6696275   -1.5245892
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.9534360   -2.0781511   -1.8287208
24 months   ki1114097-CMIN             BANGLADESH                     optimal              observed          -2.5961478   -2.7918221   -2.4004734
24 months   ki1114097-CMIN             PERU                           optimal              observed          -1.5886679   -2.0664892   -1.1108466


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.0715686   -1.1969582   -0.9461791
Birth       ki0047075b-MAL-ED          BRAZIL                         observed             observed          -0.7609424   -0.9178311   -0.6040538
Birth       ki0047075b-MAL-ED          INDIA                          observed             observed          -1.0106311   -1.1499962   -0.8712660
Birth       ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.7089017   -0.8656064   -0.5521971
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.9163986   -1.0263706   -0.8064266
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.7064368   -0.8290380   -0.5838355
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.9338211   -1.1465079   -0.7211344
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.9654444   -1.1742112   -0.7566777
Birth       ki1000108-IRC              INDIA                          observed             observed          -0.3080412   -0.4687931   -0.1472894
Birth       ki1101329-Keneba           GAMBIA                         observed             observed           0.0341467   -0.0293905    0.0976838
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.2056777   -1.3231497   -1.0882058
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0510207   -0.0930194    0.1950608
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -1.2203672   -1.3387619   -1.1019726
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.5610593   -0.6737915   -0.4483272
6 months    ki0047075b-MAL-ED          PERU                           observed             observed          -1.3268010   -1.4351217   -1.2184802
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.0633760   -1.1911088   -0.9356432
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.3601215   -1.4821830   -1.2380600
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
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0418343   -0.1253834    0.2090521
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -1.8458150   -1.9718703   -1.7197596
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -1.2752193   -1.3954783   -1.1549603
24 months   ki0047075b-MAL-ED          PERU                           observed             observed          -1.7500995   -1.8705474   -1.6296516
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.6228361   -1.7581177   -1.4875546
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.6058879   -2.7403043   -2.4714714
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
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1471989   -0.3814447    0.0870469
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.5465232   -0.9684372   -0.1246091
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.1482457   -0.3599804    0.0634891
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.2342807    0.0499603    0.4186010
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed           0.0665116   -0.7102652    0.8432884
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.1792915   -0.5609573    0.2023742
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.3164776   -0.1791560    0.8121111
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0560829   -0.3047232    0.1925574
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.4271599   -0.5654084   -0.2889113
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0358380   -0.1826435    0.1109676
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0398088   -0.1154862    0.0358686
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0840777   -0.5588578    0.3907024
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed           0.0032552   -0.1192128    0.1257232
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.1242029    0.0130504    0.2353554
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.1877639   -0.8425357    0.4670079
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.1209952   -0.0456738    0.2876642
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.6755765    0.3745244    0.9766286
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.0807467   -0.0718810    0.2333743
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.1384797   -0.2482036   -0.0287557
6 months    ki1000109-EE               PAKISTAN                       optimal              observed           0.0723396   -0.0509245    0.1956037
6 months    ki1000109-ResPak           PAKISTAN                       optimal              observed          -0.3925015   -0.6510699   -0.1339331
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0418410   -0.0883198    0.0046377
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0343838   -0.0038757    0.0726432
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0270709   -0.0528108   -0.0013311
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.0398925   -0.0726654   -0.0071196
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.1100639   -0.2138071   -0.0063206
6 months    ki1114097-CMIN             BANGLADESH                     optimal              observed          -0.0143128   -0.0794815    0.0508560
6 months    ki1114097-CMIN             PERU                           optimal              observed          -0.0390834   -0.0732984   -0.0048685
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.0610291   -0.1676269    0.2896851
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0415786   -0.0905072    0.0073500
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.1280910   -0.2948476    0.0386655
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.1171928   -0.1427897    0.3771753
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.2795404   -1.0782134    0.5191327
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.1161045   -0.6044984    0.3722894
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.3865844   -0.5199264   -0.2532423
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0554689   -0.1598473    0.0489095
24 months   ki1000108-IRC              INDIA                          optimal              observed           0.0763845   -0.0146760    0.1674450
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0210384   -0.0660967    0.0240198
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed           0.0366123   -0.0160188    0.0892434
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed           0.0698454   -0.0240842    0.1637750
24 months   ki1114097-CMIN             BANGLADESH                     optimal              observed           0.0851974   -0.0478027    0.2181974
24 months   ki1114097-CMIN             PERU                           optimal              observed           0.1190240   -0.3422486    0.5802966
