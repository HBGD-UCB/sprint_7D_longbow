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

**Outcome Variable:** pers_wast

## Predictor Variables

**Intervention Variable:** enstunt

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        enstunt    pers_wast   n_cell      n
------------  -------------------------  -----------------------------  --------  ----------  -------  -----
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  0      198    248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  1        9    248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  0       37    248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  1        4    248
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                  0      194    217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                  1        2    217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                  0       21    217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                  1        0    217
0-24 months   ki0047075b-MAL-ED          INDIA                          0                  0      183    241
0-24 months   ki0047075b-MAL-ED          INDIA                          0                  1       17    241
0-24 months   ki0047075b-MAL-ED          INDIA                          1                  0       37    241
0-24 months   ki0047075b-MAL-ED          INDIA                          1                  1        4    241
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                  0      208    238
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                  1        3    238
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                  0       26    238
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                  1        1    238
0-24 months   ki0047075b-MAL-ED          PERU                           0                  0      247    284
0-24 months   ki0047075b-MAL-ED          PERU                           0                  1        1    284
0-24 months   ki0047075b-MAL-ED          PERU                           1                  0       36    284
0-24 months   ki0047075b-MAL-ED          PERU                           1                  1        0    284
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      243    273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        2    273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0       28    273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0    273
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      214    253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        0    253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0       39    253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0    253
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  0      283    373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  1       15    373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  0       67    373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        8    373
0-24 months   ki1000108-IRC              INDIA                          0                  0      320    410
0-24 months   ki1000108-IRC              INDIA                          0                  1       42    410
0-24 months   ki1000108-IRC              INDIA                          1                  0       42    410
0-24 months   ki1000108-IRC              INDIA                          1                  1        6    410
0-24 months   ki1000109-EE               PAKISTAN                       0                  0      227    377
0-24 months   ki1000109-EE               PAKISTAN                       0                  1       20    377
0-24 months   ki1000109-EE               PAKISTAN                       1                  0      122    377
0-24 months   ki1000109-EE               PAKISTAN                       1                  1        8    377
0-24 months   ki1000109-ResPak           PAKISTAN                       0                  0      165    251
0-24 months   ki1000109-ResPak           PAKISTAN                       0                  1       22    251
0-24 months   ki1000109-ResPak           PAKISTAN                       1                  0       52    251
0-24 months   ki1000109-ResPak           PAKISTAN                       1                  1       12    251
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                  0      297    428
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                  1       18    428
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                  0       99    428
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                  1       14    428
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                  0       48     94
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                  1       10     94
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                  0       28     94
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                  1        8     94
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                  0      416    534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                  1       36    534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                  0       71    534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                  1       11    534
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  0      566    640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  1       12    640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  0       59    640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  1        3    640
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                  0      609    730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                  1       18    730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                  0       95    730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                  1        8    730
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  0     1964   2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  1       55   2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  0      144   2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  1        3   2166
0-24 months   ki1101329-Keneba           GAMBIA                         0                  0     2089   2441
0-24 months   ki1101329-Keneba           GAMBIA                         0                  1      105   2441
0-24 months   ki1101329-Keneba           GAMBIA                         1                  0      220   2441
0-24 months   ki1101329-Keneba           GAMBIA                         1                  1       27   2441
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                  0      196    256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                  1        1    256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                  0       56    256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                  1        3    256
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                  0      457    592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                  1       69    592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                  0       50    592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                  1       16    592
0-24 months   ki1114097-CMIN             BANGLADESH                     0                  0      152    257
0-24 months   ki1114097-CMIN             BANGLADESH                     0                  1        9    257
0-24 months   ki1114097-CMIN             BANGLADESH                     1                  0       85    257
0-24 months   ki1114097-CMIN             BANGLADESH                     1                  1       11    257
0-24 months   ki1114097-CMIN             BRAZIL                         0                  0      114    119
0-24 months   ki1114097-CMIN             BRAZIL                         0                  1        0    119
0-24 months   ki1114097-CMIN             BRAZIL                         1                  0        5    119
0-24 months   ki1114097-CMIN             BRAZIL                         1                  1        0    119
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                  0      966   1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                  1       21   1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                  0      151   1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                  1       15   1153
0-24 months   ki1114097-CMIN             PERU                           0                  0      736    830
0-24 months   ki1114097-CMIN             PERU                           0                  1        3    830
0-24 months   ki1114097-CMIN             PERU                           1                  0       89    830
0-24 months   ki1114097-CMIN             PERU                           1                  1        2    830
0-24 months   ki1114097-CONTENT          PERU                           0                  0      197    215
0-24 months   ki1114097-CONTENT          PERU                           0                  1        0    215
0-24 months   ki1114097-CONTENT          PERU                           1                  0       18    215
0-24 months   ki1114097-CONTENT          PERU                           1                  1        0    215
0-24 months   ki1119695-PROBIT           BELARUS                        0                  0     7815   7972
0-24 months   ki1119695-PROBIT           BELARUS                        0                  1       95   7972
0-24 months   ki1119695-PROBIT           BELARUS                        1                  0       62   7972
0-24 months   ki1119695-PROBIT           BELARUS                        1                  1        0   7972
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                  0     8270   9333
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                  1      147   9333
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                  0      896   9333
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                  1       20   9333
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                  0      394    515
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                  1       15    515
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                  0       95    515
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                  1       11    515
0-24 months   ki1135781-COHORTS          INDIA                          0                  0     4663   5705
0-24 months   ki1135781-COHORTS          INDIA                          0                  1      447   5705
0-24 months   ki1135781-COHORTS          INDIA                          1                  0      492   5705
0-24 months   ki1135781-COHORTS          INDIA                          1                  1      103   5705
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                  0     2524   2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                  1      127   2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                  0      143   2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                  1       17   2811
0-24 months   ki1148112-LCNI-5           MALAWI                         0                  0      454    719
0-24 months   ki1148112-LCNI-5           MALAWI                         0                  1        2    719
0-24 months   ki1148112-LCNI-5           MALAWI                         1                  0      259    719
0-24 months   ki1148112-LCNI-5           MALAWI                         1                  1        4    719
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  0     5293   7760
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  1      284   7760
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  0     2016   7760
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  1      167   7760
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  0      945   1378
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  1       57   1378
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  0      321   1378
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  1       55   1378
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  0      201    248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  1        6    248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  0       40    248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  1        1    248
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                  0      195    217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                  1        1    217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                  0       21    217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                  1        0    217
0-6 months    ki0047075b-MAL-ED          INDIA                          0                  0      183    240
0-6 months    ki0047075b-MAL-ED          INDIA                          0                  1       17    240
0-6 months    ki0047075b-MAL-ED          INDIA                          1                  0       38    240
0-6 months    ki0047075b-MAL-ED          INDIA                          1                  1        2    240
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                  0      206    237
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                  1        5    237
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                  0       26    237
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                  1        0    237
0-6 months    ki0047075b-MAL-ED          PERU                           0                  0      248    284
0-6 months    ki0047075b-MAL-ED          PERU                           0                  1        0    284
0-6 months    ki0047075b-MAL-ED          PERU                           1                  0       36    284
0-6 months    ki0047075b-MAL-ED          PERU                           1                  1        0    284
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      242    271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        2    271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0       27    271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0    271
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      214    253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        0    253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0       39    253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0    253
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  0      249    358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  1       37    358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  0       59    358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  1       13    358
0-6 months    ki1000108-IRC              INDIA                          0                  0      297    402
0-6 months    ki1000108-IRC              INDIA                          0                  1       58    402
0-6 months    ki1000108-IRC              INDIA                          1                  0       41    402
0-6 months    ki1000108-IRC              INDIA                          1                  1        6    402
0-6 months    ki1000109-EE               PAKISTAN                       0                  0      225    366
0-6 months    ki1000109-EE               PAKISTAN                       0                  1       18    366
0-6 months    ki1000109-EE               PAKISTAN                       1                  0      114    366
0-6 months    ki1000109-EE               PAKISTAN                       1                  1        9    366
0-6 months    ki1000109-ResPak           PAKISTAN                       0                  0      165    240
0-6 months    ki1000109-ResPak           PAKISTAN                       0                  1       17    240
0-6 months    ki1000109-ResPak           PAKISTAN                       1                  0       50    240
0-6 months    ki1000109-ResPak           PAKISTAN                       1                  1        8    240
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0                  0      140    169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0                  1        9    169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                  0       18    169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                  1        2    169
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  0      563    637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  1       12    637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  0       60    637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  1        2    637
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                  0      218    250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                  1        4    250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                  0       27    250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                  1        1    250
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  0     1868   2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  1       50   2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  0      141   2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  1        2   2061
0-6 months    ki1101329-Keneba           GAMBIA                         0                  0     1808   2037
0-6 months    ki1101329-Keneba           GAMBIA                         0                  1       42   2037
0-6 months    ki1101329-Keneba           GAMBIA                         1                  0      178   2037
0-6 months    ki1101329-Keneba           GAMBIA                         1                  1        9   2037
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                  0      428    542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                  1       57    542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                  0       49    542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                  1        8    542
0-6 months    ki1114097-CMIN             BANGLADESH                     0                  0      143    234
0-6 months    ki1114097-CMIN             BANGLADESH                     0                  1        4    234
0-6 months    ki1114097-CMIN             BANGLADESH                     1                  0       82    234
0-6 months    ki1114097-CMIN             BANGLADESH                     1                  1        5    234
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  0                  0        9     11
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  0                  1        0     11
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                  0        2     11
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                  1        0     11
0-6 months    ki1114097-CMIN             PERU                           0                  0      523    558
0-6 months    ki1114097-CMIN             PERU                           0                  1       12    558
0-6 months    ki1114097-CMIN             PERU                           1                  0       23    558
0-6 months    ki1114097-CMIN             PERU                           1                  1        0    558
0-6 months    ki1114097-CONTENT          PERU                           0                  0      197    215
0-6 months    ki1114097-CONTENT          PERU                           0                  1        0    215
0-6 months    ki1114097-CONTENT          PERU                           1                  0       18    215
0-6 months    ki1114097-CONTENT          PERU                           1                  1        0    215
0-6 months    ki1119695-PROBIT           BELARUS                        0                  0     6013   6657
0-6 months    ki1119695-PROBIT           BELARUS                        0                  1      627   6657
0-6 months    ki1119695-PROBIT           BELARUS                        1                  0       17   6657
0-6 months    ki1119695-PROBIT           BELARUS                        1                  1        0   6657
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                  0      569    610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                  1       12    610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                  0       27    610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                  1        2    610
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                  0      777    853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                  1       50    853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                  0       24    853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                  1        2    853
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  0       19     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  1        2     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  0        4     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  1        0     25
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  0      198    248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  1        9    248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  0       37    248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  1        4    248
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                  0      194    217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                  1        2    217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                  0       21    217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                  1        0    217
6-24 months   ki0047075b-MAL-ED          INDIA                          0                  0      183    241
6-24 months   ki0047075b-MAL-ED          INDIA                          0                  1       17    241
6-24 months   ki0047075b-MAL-ED          INDIA                          1                  0       37    241
6-24 months   ki0047075b-MAL-ED          INDIA                          1                  1        4    241
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                  0      208    238
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                  1        3    238
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                  0       26    238
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                  1        1    238
6-24 months   ki0047075b-MAL-ED          PERU                           0                  0      247    284
6-24 months   ki0047075b-MAL-ED          PERU                           0                  1        1    284
6-24 months   ki0047075b-MAL-ED          PERU                           1                  0       36    284
6-24 months   ki0047075b-MAL-ED          PERU                           1                  1        0    284
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      243    273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        2    273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0       28    273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0    273
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      214    253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        0    253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0       39    253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0    253
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  0      283    373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  1       15    373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  0       67    373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        8    373
6-24 months   ki1000108-IRC              INDIA                          0                  0      320    410
6-24 months   ki1000108-IRC              INDIA                          0                  1       42    410
6-24 months   ki1000108-IRC              INDIA                          1                  0       42    410
6-24 months   ki1000108-IRC              INDIA                          1                  1        6    410
6-24 months   ki1000109-EE               PAKISTAN                       0                  0      227    377
6-24 months   ki1000109-EE               PAKISTAN                       0                  1       20    377
6-24 months   ki1000109-EE               PAKISTAN                       1                  0      122    377
6-24 months   ki1000109-EE               PAKISTAN                       1                  1        8    377
6-24 months   ki1000109-ResPak           PAKISTAN                       0                  0      165    251
6-24 months   ki1000109-ResPak           PAKISTAN                       0                  1       22    251
6-24 months   ki1000109-ResPak           PAKISTAN                       1                  0       52    251
6-24 months   ki1000109-ResPak           PAKISTAN                       1                  1       12    251
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                  0      297    428
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                  1       18    428
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                  0       99    428
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                  1       14    428
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                  0       48     94
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                  1       10     94
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                  0       28     94
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                  1        8     94
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                  0      416    534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                  1       36    534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                  0       71    534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                  1       11    534
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  0      566    640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  1       12    640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  0       59    640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  1        3    640
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                  0      609    730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                  1       18    730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                  0       95    730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                  1        8    730
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  0     1964   2166
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  1       55   2166
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  0      144   2166
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  1        3   2166
6-24 months   ki1101329-Keneba           GAMBIA                         0                  0     2089   2441
6-24 months   ki1101329-Keneba           GAMBIA                         0                  1      105   2441
6-24 months   ki1101329-Keneba           GAMBIA                         1                  0      220   2441
6-24 months   ki1101329-Keneba           GAMBIA                         1                  1       27   2441
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                  0      196    256
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                  1        1    256
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                  0       56    256
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                  1        3    256
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                  0      457    592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                  1       69    592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                  0       50    592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                  1       16    592
6-24 months   ki1114097-CMIN             BANGLADESH                     0                  0      152    257
6-24 months   ki1114097-CMIN             BANGLADESH                     0                  1        9    257
6-24 months   ki1114097-CMIN             BANGLADESH                     1                  0       85    257
6-24 months   ki1114097-CMIN             BANGLADESH                     1                  1       11    257
6-24 months   ki1114097-CMIN             BRAZIL                         0                  0      114    119
6-24 months   ki1114097-CMIN             BRAZIL                         0                  1        0    119
6-24 months   ki1114097-CMIN             BRAZIL                         1                  0        5    119
6-24 months   ki1114097-CMIN             BRAZIL                         1                  1        0    119
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                  0      966   1153
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                  1       21   1153
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                  0      151   1153
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                  1       15   1153
6-24 months   ki1114097-CMIN             PERU                           0                  0      736    830
6-24 months   ki1114097-CMIN             PERU                           0                  1        3    830
6-24 months   ki1114097-CMIN             PERU                           1                  0       89    830
6-24 months   ki1114097-CMIN             PERU                           1                  1        2    830
6-24 months   ki1114097-CONTENT          PERU                           0                  0      197    215
6-24 months   ki1114097-CONTENT          PERU                           0                  1        0    215
6-24 months   ki1114097-CONTENT          PERU                           1                  0       18    215
6-24 months   ki1114097-CONTENT          PERU                           1                  1        0    215
6-24 months   ki1119695-PROBIT           BELARUS                        0                  0     7815   7972
6-24 months   ki1119695-PROBIT           BELARUS                        0                  1       95   7972
6-24 months   ki1119695-PROBIT           BELARUS                        1                  0       62   7972
6-24 months   ki1119695-PROBIT           BELARUS                        1                  1        0   7972
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                  0     8270   9333
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                  1      147   9333
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                  0      896   9333
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                  1       20   9333
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                  0      394    515
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                  1       15    515
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                  0       95    515
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                  1       11    515
6-24 months   ki1135781-COHORTS          INDIA                          0                  0     4663   5705
6-24 months   ki1135781-COHORTS          INDIA                          0                  1      447   5705
6-24 months   ki1135781-COHORTS          INDIA                          1                  0      492   5705
6-24 months   ki1135781-COHORTS          INDIA                          1                  1      103   5705
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                  0     2524   2811
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                  1      127   2811
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                  0      143   2811
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                  1       17   2811
6-24 months   ki1148112-LCNI-5           MALAWI                         0                  0      454    719
6-24 months   ki1148112-LCNI-5           MALAWI                         0                  1        2    719
6-24 months   ki1148112-LCNI-5           MALAWI                         1                  0      259    719
6-24 months   ki1148112-LCNI-5           MALAWI                         1                  1        4    719
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  0     5293   7760
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  1      284   7760
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  0     2016   7760
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  1      167   7760
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  0      945   1378
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  1       57   1378
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  0      321   1378
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  1       55   1378


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/637dc138-173d-4a03-9df3-135f12ab1b3c/87a1f058-1843-4893-9951-507defd2bacf/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/637dc138-173d-4a03-9df3-135f12ab1b3c/87a1f058-1843-4893-9951-507defd2bacf/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/637dc138-173d-4a03-9df3-135f12ab1b3c/87a1f058-1843-4893-9951-507defd2bacf/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/637dc138-173d-4a03-9df3-135f12ab1b3c/87a1f058-1843-4893-9951-507defd2bacf/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country         intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  --------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA           0                    NA                0.0503356   0.0254788   0.0751924
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA           1                    NA                0.1066667   0.0367112   0.1766221
0-24 months   ki1000108-IRC              INDIA           0                    NA                0.1160221   0.0829916   0.1490526
0-24 months   ki1000108-IRC              INDIA           1                    NA                0.1250000   0.0313265   0.2186735
0-24 months   ki1000109-EE               PAKISTAN        0                    NA                0.0809717   0.0469067   0.1150366
0-24 months   ki1000109-EE               PAKISTAN        1                    NA                0.0615385   0.0201733   0.1029036
0-24 months   ki1000109-ResPak           PAKISTAN        0                    NA                0.1176471   0.0713764   0.1639177
0-24 months   ki1000109-ResPak           PAKISTAN        1                    NA                0.1875000   0.0916842   0.2833158
0-24 months   ki1000304b-SAS-CompFeed    INDIA           0                    NA                0.0571429   0.0177033   0.0965824
0-24 months   ki1000304b-SAS-CompFeed    INDIA           1                    NA                0.1238938   0.1069266   0.1408610
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA           0                    NA                0.1724138   0.0746790   0.2701486
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA           1                    NA                0.2222222   0.0856882   0.3587562
0-24 months   ki1017093-NIH-Birth        BANGLADESH      0                    NA                0.0796460   0.0546630   0.1046291
0-24 months   ki1017093-NIH-Birth        BANGLADESH      1                    NA                0.1341463   0.0603118   0.2079809
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH      0                    NA                0.0287081   0.0156287   0.0417876
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH      1                    NA                0.0776699   0.0259454   0.1293945
0-24 months   ki1101329-Keneba           GAMBIA          0                    NA                0.0478578   0.0389238   0.0567918
0-24 months   ki1101329-Keneba           GAMBIA          1                    NA                0.1093117   0.0703907   0.1482328
0-24 months   ki1113344-GMS-Nepal        NEPAL           0                    NA                0.1311787   0.1023039   0.1600535
0-24 months   ki1113344-GMS-Nepal        NEPAL           1                    NA                0.2424242   0.1389471   0.3459014
0-24 months   ki1114097-CMIN             BANGLADESH      0                    NA                0.0559006   0.0203458   0.0914555
0-24 months   ki1114097-CMIN             BANGLADESH      1                    NA                0.1145833   0.0507432   0.1784234
0-24 months   ki1114097-CMIN             GUINEA-BISSAU   0                    NA                0.0212766   0.0122700   0.0302832
0-24 months   ki1114097-CMIN             GUINEA-BISSAU   1                    NA                0.0903614   0.0467291   0.1339938
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE        0                    NA                0.0174647   0.0146660   0.0202633
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE        1                    NA                0.0218341   0.0123696   0.0312985
0-24 months   ki1135781-COHORTS          GUATEMALA       0                    NA                0.0366748   0.0184409   0.0549087
0-24 months   ki1135781-COHORTS          GUATEMALA       1                    NA                0.1037736   0.0456611   0.1618861
0-24 months   ki1135781-COHORTS          INDIA           0                    NA                0.0874755   0.0797284   0.0952227
0-24 months   ki1135781-COHORTS          INDIA           1                    NA                0.1731092   0.1427066   0.2035119
0-24 months   ki1135781-COHORTS          PHILIPPINES     0                    NA                0.0479065   0.0397752   0.0560377
0-24 months   ki1135781-COHORTS          PHILIPPINES     1                    NA                0.1062500   0.0584929   0.1540071
0-24 months   kiGH5241-JiVitA-3          BANGLADESH      0                    NA                0.0509234   0.0448884   0.0569584
0-24 months   kiGH5241-JiVitA-3          BANGLADESH      1                    NA                0.0765002   0.0636317   0.0893687
0-24 months   kiGH5241-JiVitA-4          BANGLADESH      0                    NA                0.0568862   0.0403005   0.0734720
0-24 months   kiGH5241-JiVitA-4          BANGLADESH      1                    NA                0.1462766   0.1106474   0.1819058
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA           0                    NA                0.1293706   0.0904207   0.1683206
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA           1                    NA                0.1805556   0.0915833   0.2695278
0-6 months    ki1000108-IRC              INDIA           0                    NA                0.1633803   0.1248734   0.2018872
0-6 months    ki1000108-IRC              INDIA           1                    NA                0.1276596   0.0321362   0.2231830
0-6 months    ki1000109-EE               PAKISTAN        0                    NA                0.0740741   0.0411009   0.1070472
0-6 months    ki1000109-EE               PAKISTAN        1                    NA                0.0731707   0.0270859   0.1192556
0-6 months    ki1000109-ResPak           PAKISTAN        0                    NA                0.0934066   0.0510409   0.1357723
0-6 months    ki1000109-ResPak           PAKISTAN        1                    NA                0.1379310   0.0490022   0.2268599
0-6 months    ki1101329-Keneba           GAMBIA          0                    NA                0.0227027   0.0159135   0.0294919
0-6 months    ki1101329-Keneba           GAMBIA          1                    NA                0.0481283   0.0174435   0.0788132
0-6 months    ki1113344-GMS-Nepal        NEPAL           0                    NA                0.1175258   0.0888381   0.1462135
0-6 months    ki1113344-GMS-Nepal        NEPAL           1                    NA                0.1403509   0.0500941   0.2306077
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA           0                    NA                0.0503356   0.0254788   0.0751924
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA           1                    NA                0.1066667   0.0367112   0.1766221
6-24 months   ki1000108-IRC              INDIA           0                    NA                0.1160221   0.0829916   0.1490526
6-24 months   ki1000108-IRC              INDIA           1                    NA                0.1250000   0.0313265   0.2186735
6-24 months   ki1000109-EE               PAKISTAN        0                    NA                0.0809717   0.0469067   0.1150366
6-24 months   ki1000109-EE               PAKISTAN        1                    NA                0.0615385   0.0201733   0.1029036
6-24 months   ki1000109-ResPak           PAKISTAN        0                    NA                0.1176471   0.0713764   0.1639177
6-24 months   ki1000109-ResPak           PAKISTAN        1                    NA                0.1875000   0.0916842   0.2833158
6-24 months   ki1000304b-SAS-CompFeed    INDIA           0                    NA                0.0571429   0.0177033   0.0965824
6-24 months   ki1000304b-SAS-CompFeed    INDIA           1                    NA                0.1238938   0.1069266   0.1408610
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA           0                    NA                0.1724138   0.0746790   0.2701486
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA           1                    NA                0.2222222   0.0856882   0.3587562
6-24 months   ki1017093-NIH-Birth        BANGLADESH      0                    NA                0.0796460   0.0546630   0.1046291
6-24 months   ki1017093-NIH-Birth        BANGLADESH      1                    NA                0.1341463   0.0603118   0.2079809
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH      0                    NA                0.0287081   0.0156287   0.0417876
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH      1                    NA                0.0776699   0.0259454   0.1293945
6-24 months   ki1101329-Keneba           GAMBIA          0                    NA                0.0478578   0.0389238   0.0567918
6-24 months   ki1101329-Keneba           GAMBIA          1                    NA                0.1093117   0.0703907   0.1482328
6-24 months   ki1113344-GMS-Nepal        NEPAL           0                    NA                0.1311787   0.1023039   0.1600535
6-24 months   ki1113344-GMS-Nepal        NEPAL           1                    NA                0.2424242   0.1389471   0.3459014
6-24 months   ki1114097-CMIN             BANGLADESH      0                    NA                0.0559006   0.0203458   0.0914555
6-24 months   ki1114097-CMIN             BANGLADESH      1                    NA                0.1145833   0.0507432   0.1784234
6-24 months   ki1114097-CMIN             GUINEA-BISSAU   0                    NA                0.0212766   0.0122700   0.0302832
6-24 months   ki1114097-CMIN             GUINEA-BISSAU   1                    NA                0.0903614   0.0467291   0.1339938
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE        0                    NA                0.0174647   0.0146660   0.0202633
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE        1                    NA                0.0218341   0.0123696   0.0312985
6-24 months   ki1135781-COHORTS          GUATEMALA       0                    NA                0.0366748   0.0184409   0.0549087
6-24 months   ki1135781-COHORTS          GUATEMALA       1                    NA                0.1037736   0.0456611   0.1618861
6-24 months   ki1135781-COHORTS          INDIA           0                    NA                0.0874755   0.0797284   0.0952227
6-24 months   ki1135781-COHORTS          INDIA           1                    NA                0.1731092   0.1427066   0.2035119
6-24 months   ki1135781-COHORTS          PHILIPPINES     0                    NA                0.0479065   0.0397752   0.0560377
6-24 months   ki1135781-COHORTS          PHILIPPINES     1                    NA                0.1062500   0.0584929   0.1540071
6-24 months   kiGH5241-JiVitA-3          BANGLADESH      0                    NA                0.0509234   0.0448884   0.0569584
6-24 months   kiGH5241-JiVitA-3          BANGLADESH      1                    NA                0.0765002   0.0636317   0.0893687
6-24 months   kiGH5241-JiVitA-4          BANGLADESH      0                    NA                0.0568862   0.0403005   0.0734720
6-24 months   kiGH5241-JiVitA-4          BANGLADESH      1                    NA                0.1462766   0.1106474   0.1819058


### Parameter: E(Y)


agecat        studyid                    country         intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  --------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA           NA                   NA                0.0616622   0.0372186   0.0861058
0-24 months   ki1000108-IRC              INDIA           NA                   NA                0.1170732   0.0859146   0.1482317
0-24 months   ki1000109-EE               PAKISTAN        NA                   NA                0.0742706   0.0477670   0.1007741
0-24 months   ki1000109-ResPak           PAKISTAN        NA                   NA                0.1354582   0.0930379   0.1778785
0-24 months   ki1000304b-SAS-CompFeed    INDIA           NA                   NA                0.0747664   0.0516226   0.0979101
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA           NA                   NA                0.1914894   0.1115203   0.2714584
0-24 months   ki1017093-NIH-Birth        BANGLADESH      NA                   NA                0.0880150   0.0639627   0.1120673
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH      NA                   NA                0.0356164   0.0221630   0.0490699
0-24 months   ki1101329-Keneba           GAMBIA          NA                   NA                0.0540762   0.0451022   0.0630502
0-24 months   ki1113344-GMS-Nepal        NEPAL           NA                   NA                0.1435811   0.1153098   0.1718524
0-24 months   ki1114097-CMIN             BANGLADESH      NA                   NA                0.0778210   0.0450051   0.1106369
0-24 months   ki1114097-CMIN             GUINEA-BISSAU   NA                   NA                0.0312229   0.0211797   0.0412661
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE        NA                   NA                0.0178935   0.0152039   0.0205831
0-24 months   ki1135781-COHORTS          GUATEMALA       NA                   NA                0.0504854   0.0315576   0.0694132
0-24 months   ki1135781-COHORTS          INDIA           NA                   NA                0.0964067   0.0887472   0.1040661
0-24 months   ki1135781-COHORTS          PHILIPPINES     NA                   NA                0.0512273   0.0430760   0.0593786
0-24 months   kiGH5241-JiVitA-3          BANGLADESH      NA                   NA                0.0581186   0.0523097   0.0639274
0-24 months   kiGH5241-JiVitA-4          BANGLADESH      NA                   NA                0.0812772   0.0652971   0.0972574
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA           NA                   NA                0.1396648   0.1037072   0.1756225
0-6 months    ki1000108-IRC              INDIA           NA                   NA                0.1592040   0.1233945   0.1950135
0-6 months    ki1000109-EE               PAKISTAN        NA                   NA                0.0737705   0.0469540   0.1005870
0-6 months    ki1000109-ResPak           PAKISTAN        NA                   NA                0.1041667   0.0654385   0.1428949
0-6 months    ki1101329-Keneba           GAMBIA          NA                   NA                0.0250368   0.0182504   0.0318233
0-6 months    ki1113344-GMS-Nepal        NEPAL           NA                   NA                0.1199262   0.0925504   0.1473020
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA           NA                   NA                0.0616622   0.0372186   0.0861058
6-24 months   ki1000108-IRC              INDIA           NA                   NA                0.1170732   0.0859146   0.1482317
6-24 months   ki1000109-EE               PAKISTAN        NA                   NA                0.0742706   0.0477670   0.1007741
6-24 months   ki1000109-ResPak           PAKISTAN        NA                   NA                0.1354582   0.0930379   0.1778785
6-24 months   ki1000304b-SAS-CompFeed    INDIA           NA                   NA                0.0747664   0.0516226   0.0979101
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA           NA                   NA                0.1914894   0.1115203   0.2714584
6-24 months   ki1017093-NIH-Birth        BANGLADESH      NA                   NA                0.0880150   0.0639627   0.1120673
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH      NA                   NA                0.0356164   0.0221630   0.0490699
6-24 months   ki1101329-Keneba           GAMBIA          NA                   NA                0.0540762   0.0451022   0.0630502
6-24 months   ki1113344-GMS-Nepal        NEPAL           NA                   NA                0.1435811   0.1153098   0.1718524
6-24 months   ki1114097-CMIN             BANGLADESH      NA                   NA                0.0778210   0.0450051   0.1106369
6-24 months   ki1114097-CMIN             GUINEA-BISSAU   NA                   NA                0.0312229   0.0211797   0.0412661
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE        NA                   NA                0.0178935   0.0152039   0.0205831
6-24 months   ki1135781-COHORTS          GUATEMALA       NA                   NA                0.0504854   0.0315576   0.0694132
6-24 months   ki1135781-COHORTS          INDIA           NA                   NA                0.0964067   0.0887472   0.1040661
6-24 months   ki1135781-COHORTS          PHILIPPINES     NA                   NA                0.0512273   0.0430760   0.0593786
6-24 months   kiGH5241-JiVitA-3          BANGLADESH      NA                   NA                0.0581186   0.0523097   0.0639274
6-24 months   kiGH5241-JiVitA-4          BANGLADESH      NA                   NA                0.0812772   0.0652971   0.0972574


### Parameter: RR


agecat        studyid                    country         intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  --------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA           0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA           1                    0                 2.1191111   0.9324275   4.816065
0-24 months   ki1000108-IRC              INDIA           0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1000108-IRC              INDIA           1                    0                 1.0773810   0.4833037   2.401698
0-24 months   ki1000109-EE               PAKISTAN        0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1000109-EE               PAKISTAN        1                    0                 0.7600000   0.3438949   1.679583
0-24 months   ki1000109-ResPak           PAKISTAN        0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1000109-ResPak           PAKISTAN        1                    0                 1.5937500   0.8363108   3.037195
0-24 months   ki1000304b-SAS-CompFeed    INDIA           0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA           1                    0                 2.1681416   0.9625617   4.883674
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA           0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA           1                    0                 1.2888889   0.5586814   2.973492
0-24 months   ki1017093-NIH-Birth        BANGLADESH      0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH      1                    0                 1.6842818   0.8938906   3.173549
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH      0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH      1                    0                 2.7055016   1.2073171   6.062814
0-24 months   ki1101329-Keneba           GAMBIA          0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1101329-Keneba           GAMBIA          1                    0                 2.2840948   1.5279766   3.414378
0-24 months   ki1113344-GMS-Nepal        NEPAL           0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal        NEPAL           1                    0                 1.8480457   1.1432458   2.987348
0-24 months   ki1114097-CMIN             BANGLADESH      0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1114097-CMIN             BANGLADESH      1                    0                 2.0497685   0.8800068   4.774453
0-24 months   ki1114097-CMIN             GUINEA-BISSAU   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1114097-CMIN             GUINEA-BISSAU   1                    0                 4.2469879   2.2346098   8.071613
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE        0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE        1                    0                 1.2501856   0.7875306   1.984639
0-24 months   ki1135781-COHORTS          GUATEMALA       0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA       1                    0                 2.8295597   1.3381266   5.983297
0-24 months   ki1135781-COHORTS          INDIA           0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          INDIA           1                    0                 1.9789446   1.6255887   2.409110
0-24 months   ki1135781-COHORTS          PHILIPPINES     0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES     1                    0                 2.2178641   1.3717492   3.585875
0-24 months   kiGH5241-JiVitA-3          BANGLADESH      0                    0                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH      1                    0                 1.5022598   1.2305503   1.833964
0-24 months   kiGH5241-JiVitA-4          BANGLADESH      0                    0                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH      1                    0                 2.5713886   1.7825296   3.709357
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA           0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA           1                    0                 1.3956456   0.7834028   2.486367
0-6 months    ki1000108-IRC              INDIA           0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1000108-IRC              INDIA           1                    0                 0.7813646   0.3565714   1.712226
0-6 months    ki1000109-EE               PAKISTAN        0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1000109-EE               PAKISTAN        1                    0                 0.9878049   0.4567946   2.136099
0-6 months    ki1000109-ResPak           PAKISTAN        0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1000109-ResPak           PAKISTAN        1                    0                 1.4766734   0.6713277   3.248137
0-6 months    ki1101329-Keneba           GAMBIA          0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1101329-Keneba           GAMBIA          1                    0                 2.1199389   1.0483043   4.287058
0-6 months    ki1113344-GMS-Nepal        NEPAL           0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal        NEPAL           1                    0                 1.1942136   0.6002794   2.375804
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA           0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA           1                    0                 2.1191111   0.9324275   4.816065
6-24 months   ki1000108-IRC              INDIA           0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1000108-IRC              INDIA           1                    0                 1.0773810   0.4833037   2.401698
6-24 months   ki1000109-EE               PAKISTAN        0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1000109-EE               PAKISTAN        1                    0                 0.7600000   0.3438949   1.679583
6-24 months   ki1000109-ResPak           PAKISTAN        0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1000109-ResPak           PAKISTAN        1                    0                 1.5937500   0.8363108   3.037195
6-24 months   ki1000304b-SAS-CompFeed    INDIA           0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA           1                    0                 2.1681416   0.9625617   4.883674
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA           0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA           1                    0                 1.2888889   0.5586814   2.973492
6-24 months   ki1017093-NIH-Birth        BANGLADESH      0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH      1                    0                 1.6842818   0.8938906   3.173549
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH      0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH      1                    0                 2.7055016   1.2073171   6.062814
6-24 months   ki1101329-Keneba           GAMBIA          0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1101329-Keneba           GAMBIA          1                    0                 2.2840948   1.5279766   3.414378
6-24 months   ki1113344-GMS-Nepal        NEPAL           0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal        NEPAL           1                    0                 1.8480457   1.1432458   2.987348
6-24 months   ki1114097-CMIN             BANGLADESH      0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1114097-CMIN             BANGLADESH      1                    0                 2.0497685   0.8800068   4.774453
6-24 months   ki1114097-CMIN             GUINEA-BISSAU   0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1114097-CMIN             GUINEA-BISSAU   1                    0                 4.2469879   2.2346098   8.071613
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE        0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE        1                    0                 1.2501856   0.7875306   1.984639
6-24 months   ki1135781-COHORTS          GUATEMALA       0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          GUATEMALA       1                    0                 2.8295597   1.3381266   5.983297
6-24 months   ki1135781-COHORTS          INDIA           0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          INDIA           1                    0                 1.9789446   1.6255887   2.409110
6-24 months   ki1135781-COHORTS          PHILIPPINES     0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES     1                    0                 2.2178641   1.3717492   3.585875
6-24 months   kiGH5241-JiVitA-3          BANGLADESH      0                    0                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH      1                    0                 1.5022598   1.2305503   1.833964
6-24 months   kiGH5241-JiVitA-4          BANGLADESH      0                    0                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH      1                    0                 2.5713886   1.7825296   3.709357


### Parameter: PAR


agecat        studyid                    country         intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  --------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA           0                    NA                 0.0113266   -0.0037763   0.0264296
0-24 months   ki1000108-IRC              INDIA           0                    NA                 0.0010511   -0.0105808   0.0126829
0-24 months   ki1000109-EE               PAKISTAN        0                    NA                -0.0067011   -0.0252027   0.0118005
0-24 months   ki1000109-ResPak           PAKISTAN        0                    NA                 0.0178111   -0.0095808   0.0452030
0-24 months   ki1000304b-SAS-CompFeed    INDIA           0                    NA                 0.0176235    0.0012212   0.0340258
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA           0                    NA                 0.0190756   -0.0454182   0.0835694
0-24 months   ki1017093-NIH-Birth        BANGLADESH      0                    NA                 0.0083690   -0.0037161   0.0204540
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH      0                    NA                 0.0069083   -0.0007205   0.0145371
0-24 months   ki1101329-Keneba           GAMBIA          0                    NA                 0.0062184    0.0021113   0.0103255
0-24 months   ki1113344-GMS-Nepal        NEPAL           0                    NA                 0.0124024    0.0000972   0.0247075
0-24 months   ki1114097-CMIN             BANGLADESH      0                    NA                 0.0219204   -0.0055961   0.0494369
0-24 months   ki1114097-CMIN             GUINEA-BISSAU   0                    NA                 0.0099463    0.0033809   0.0165117
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE        0                    NA                 0.0004288   -0.0005402   0.0013979
0-24 months   ki1135781-COHORTS          GUATEMALA       0                    NA                 0.0138106    0.0010571   0.0265641
0-24 months   ki1135781-COHORTS          INDIA           0                    NA                 0.0089311    0.0055892   0.0122730
0-24 months   ki1135781-COHORTS          PHILIPPINES     0                    NA                 0.0033209    0.0005185   0.0061232
0-24 months   kiGH5241-JiVitA-3          BANGLADESH      0                    NA                 0.0071951    0.0032973   0.0110929
0-24 months   kiGH5241-JiVitA-4          BANGLADESH      0                    NA                 0.0243910    0.0139560   0.0348260
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA           0                    NA                 0.0102942   -0.0093548   0.0299432
0-6 months    ki1000108-IRC              INDIA           0                    NA                -0.0041763   -0.0162700   0.0079174
0-6 months    ki1000109-EE               PAKISTAN        0                    NA                -0.0003036   -0.0193471   0.0187400
0-6 months    ki1000109-ResPak           PAKISTAN        0                    NA                 0.0107601   -0.0131676   0.0346877
0-6 months    ki1101329-Keneba           GAMBIA          0                    NA                 0.0023341   -0.0005685   0.0052367
0-6 months    ki1113344-GMS-Nepal        NEPAL           0                    NA                 0.0024004   -0.0075769   0.0123778
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA           0                    NA                 0.0113266   -0.0037763   0.0264296
6-24 months   ki1000108-IRC              INDIA           0                    NA                 0.0010511   -0.0105808   0.0126829
6-24 months   ki1000109-EE               PAKISTAN        0                    NA                -0.0067011   -0.0252027   0.0118005
6-24 months   ki1000109-ResPak           PAKISTAN        0                    NA                 0.0178111   -0.0095808   0.0452030
6-24 months   ki1000304b-SAS-CompFeed    INDIA           0                    NA                 0.0176235    0.0012212   0.0340258
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA           0                    NA                 0.0190756   -0.0454182   0.0835694
6-24 months   ki1017093-NIH-Birth        BANGLADESH      0                    NA                 0.0083690   -0.0037161   0.0204540
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH      0                    NA                 0.0069083   -0.0007205   0.0145371
6-24 months   ki1101329-Keneba           GAMBIA          0                    NA                 0.0062184    0.0021113   0.0103255
6-24 months   ki1113344-GMS-Nepal        NEPAL           0                    NA                 0.0124024    0.0000972   0.0247075
6-24 months   ki1114097-CMIN             BANGLADESH      0                    NA                 0.0219204   -0.0055961   0.0494369
6-24 months   ki1114097-CMIN             GUINEA-BISSAU   0                    NA                 0.0099463    0.0033809   0.0165117
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE        0                    NA                 0.0004288   -0.0005402   0.0013979
6-24 months   ki1135781-COHORTS          GUATEMALA       0                    NA                 0.0138106    0.0010571   0.0265641
6-24 months   ki1135781-COHORTS          INDIA           0                    NA                 0.0089311    0.0055892   0.0122730
6-24 months   ki1135781-COHORTS          PHILIPPINES     0                    NA                 0.0033209    0.0005185   0.0061232
6-24 months   kiGH5241-JiVitA-3          BANGLADESH      0                    NA                 0.0071951    0.0032973   0.0110929
6-24 months   kiGH5241-JiVitA-4          BANGLADESH      0                    NA                 0.0243910    0.0139560   0.0348260


### Parameter: PAF


agecat        studyid                    country         intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  --------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA           0                    NA                 0.1836884   -0.0887240   0.3879397
0-24 months   ki1000108-IRC              INDIA           0                    NA                 0.0089779   -0.0955050   0.1034958
0-24 months   ki1000109-EE               PAKISTAN        0                    NA                -0.0902256   -0.3679311   0.1311026
0-24 months   ki1000109-ResPak           PAKISTAN        0                    NA                 0.1314879   -0.0923348   0.3094487
0-24 months   ki1000304b-SAS-CompFeed    INDIA           0                    NA                 0.2357143   -0.1195201   0.4782294
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA           0                    NA                 0.0996169   -0.3066793   0.3795801
0-24 months   ki1017093-NIH-Birth        BANGLADESH      0                    NA                 0.0950857   -0.0508086   0.2207240
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH      0                    NA                 0.1939639   -0.0356867   0.3726924
0-24 months   ki1101329-Keneba           GAMBIA          0                    NA                 0.1149934    0.0380674   0.1857676
0-24 months   ki1113344-GMS-Nepal        NEPAL           0                    NA                 0.0863789   -0.0021775   0.1671101
0-24 months   ki1114097-CMIN             BANGLADESH      0                    NA                 0.2816770   -0.1460941   0.5497857
0-24 months   ki1114097-CMIN             GUINEA-BISSAU   0                    NA                 0.3185579    0.1061796   0.4804736
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE        0                    NA                 0.0239663   -0.0315971   0.0765370
0-24 months   ki1135781-COHORTS          GUATEMALA       0                    NA                 0.2735565   -0.0006145   0.4726040
0-24 months   ki1135781-COHORTS          INDIA           0                    NA                 0.0926401    0.0579652   0.1260387
0-24 months   ki1135781-COHORTS          PHILIPPINES     0                    NA                 0.0648262    0.0094245   0.1171293
0-24 months   kiGH5241-JiVitA-3          BANGLADESH      0                    NA                 0.1238008    0.0566006   0.1862141
0-24 months   kiGH5241-JiVitA-4          BANGLADESH      0                    NA                 0.3000962    0.1618617   0.4155317
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA           0                    NA                 0.0737063   -0.0771820   0.2034586
0-6 months    ki1000108-IRC              INDIA           0                    NA                -0.0262324   -0.1049273   0.0468577
0-6 months    ki1000109-EE               PAKISTAN        0                    NA                -0.0041152   -0.2984759   0.2235148
0-6 months    ki1000109-ResPak           PAKISTAN        0                    NA                 0.1032967   -0.1552155   0.3039595
0-6 months    ki1101329-Keneba           GAMBIA          0                    NA                 0.0932273   -0.0274299   0.1997151
0-6 months    ki1113344-GMS-Nepal        NEPAL           0                    NA                 0.0200159   -0.0667132   0.0996934
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA           0                    NA                 0.1836884   -0.0887240   0.3879397
6-24 months   ki1000108-IRC              INDIA           0                    NA                 0.0089779   -0.0955050   0.1034958
6-24 months   ki1000109-EE               PAKISTAN        0                    NA                -0.0902256   -0.3679311   0.1311026
6-24 months   ki1000109-ResPak           PAKISTAN        0                    NA                 0.1314879   -0.0923348   0.3094487
6-24 months   ki1000304b-SAS-CompFeed    INDIA           0                    NA                 0.2357143   -0.1195201   0.4782294
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA           0                    NA                 0.0996169   -0.3066793   0.3795801
6-24 months   ki1017093-NIH-Birth        BANGLADESH      0                    NA                 0.0950857   -0.0508086   0.2207240
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH      0                    NA                 0.1939639   -0.0356867   0.3726924
6-24 months   ki1101329-Keneba           GAMBIA          0                    NA                 0.1149934    0.0380674   0.1857676
6-24 months   ki1113344-GMS-Nepal        NEPAL           0                    NA                 0.0863789   -0.0021775   0.1671101
6-24 months   ki1114097-CMIN             BANGLADESH      0                    NA                 0.2816770   -0.1460941   0.5497857
6-24 months   ki1114097-CMIN             GUINEA-BISSAU   0                    NA                 0.3185579    0.1061796   0.4804736
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE        0                    NA                 0.0239663   -0.0315971   0.0765370
6-24 months   ki1135781-COHORTS          GUATEMALA       0                    NA                 0.2735565   -0.0006145   0.4726040
6-24 months   ki1135781-COHORTS          INDIA           0                    NA                 0.0926401    0.0579652   0.1260387
6-24 months   ki1135781-COHORTS          PHILIPPINES     0                    NA                 0.0648262    0.0094245   0.1171293
6-24 months   kiGH5241-JiVitA-3          BANGLADESH      0                    NA                 0.1238008    0.0566006   0.1862141
6-24 months   kiGH5241-JiVitA-4          BANGLADESH      0                    NA                 0.3000962    0.1618617   0.4155317
