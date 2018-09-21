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

**Outcome Variable:** wast_rec90d

## Predictor Variables

**Intervention Variable:** enwast

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* vagbrth
* W_nrooms
* brthmon
* W_parity
* impfloor
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_vagbrth
* delta_W_nrooms
* delta_brthmon
* delta_W_parity
* delta_impfloor
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        enwast    wast_rec90d   n_cell       n
------------  -------------------------  -----------------------------  -------  ------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   0       29     113
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   1       25     113
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   0       11     113
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   1       48     113
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                   0        4      22
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                   1       11      22
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   0        1      22
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   1        6      22
0-24 months   ki0047075b-MAL-ED          INDIA                          0                   0       40     173
0-24 months   ki0047075b-MAL-ED          INDIA                          0                   1       67     173
0-24 months   ki0047075b-MAL-ED          INDIA                          1                   0       29     173
0-24 months   ki0047075b-MAL-ED          INDIA                          1                   1       37     173
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                   0       10      90
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                   1       44      90
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                   0        9      90
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                   1       27      90
0-24 months   ki0047075b-MAL-ED          PERU                           0                   0        6      34
0-24 months   ki0047075b-MAL-ED          PERU                           0                   1       22      34
0-24 months   ki0047075b-MAL-ED          PERU                           1                   0        0      34
0-24 months   ki0047075b-MAL-ED          PERU                           1                   1        6      34
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0       11      83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1       47      83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        6      83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1       19      83
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0        8      44
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1       32      44
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        0      44
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        4      44
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                   0       75     321
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                   1      115     321
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   0       43     321
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   1       88     321
0-24 months   ki1000108-IRC              INDIA                          0                   0       82     371
0-24 months   ki1000108-IRC              INDIA                          0                   1      117     371
0-24 months   ki1000108-IRC              INDIA                          1                   0       69     371
0-24 months   ki1000108-IRC              INDIA                          1                   1      103     371
0-24 months   ki1000109-EE               PAKISTAN                       0                   0      218     440
0-24 months   ki1000109-EE               PAKISTAN                       0                   1      132     440
0-24 months   ki1000109-EE               PAKISTAN                       1                   0       32     440
0-24 months   ki1000109-EE               PAKISTAN                       1                   1       58     440
0-24 months   ki1000109-ResPak           PAKISTAN                       0                   0       80     192
0-24 months   ki1000109-ResPak           PAKISTAN                       0                   1       43     192
0-24 months   ki1000109-ResPak           PAKISTAN                       1                   0       26     192
0-24 months   ki1000109-ResPak           PAKISTAN                       1                   1       43     192
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                   0      341     736
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                   1      162     736
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                   0       95     736
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                   1      138     736
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                   0      119     234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                   1       13     234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                   0      102     234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                   1        0     234
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                   0      100     410
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                   1       70     410
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                   0       93     410
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                   1      147     410
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                   0       83     305
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                   1       41     305
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   0       44     305
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   1      137     305
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                   0       61     303
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                   1       20     303
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                   0       48     303
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                   1      174     303
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   0      217     709
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   1      307     709
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0       49     709
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1      136     709
0-24 months   ki1101329-Keneba           GAMBIA                         0                   0      574    1502
0-24 months   ki1101329-Keneba           GAMBIA                         0                   1      719    1502
0-24 months   ki1101329-Keneba           GAMBIA                         1                   0      118    1502
0-24 months   ki1101329-Keneba           GAMBIA                         1                   1       91    1502
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                   0       13      38
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                   1       17      38
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                   0        8      38
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                   1        0      38
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                   0      185     820
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                   1       31     820
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                   0      599     820
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                   1        5     820
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                   0      344    1112
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                   1      412    1112
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0      188    1112
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1      168    1112
0-24 months   ki1114097-CMIN             BANGLADESH                     0                   0       60     177
0-24 months   ki1114097-CMIN             BANGLADESH                     0                   1       84     177
0-24 months   ki1114097-CMIN             BANGLADESH                     1                   0       12     177
0-24 months   ki1114097-CMIN             BANGLADESH                     1                   1       21     177
0-24 months   ki1114097-CMIN             BRAZIL                         0                   0        4      13
0-24 months   ki1114097-CMIN             BRAZIL                         0                   1        1      13
0-24 months   ki1114097-CMIN             BRAZIL                         1                   0        3      13
0-24 months   ki1114097-CMIN             BRAZIL                         1                   1        5      13
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                   0      161     333
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                   1      102     333
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                   0       55     333
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                   1       15     333
0-24 months   ki1114097-CMIN             PERU                           0                   0       11      94
0-24 months   ki1114097-CMIN             PERU                           0                   1       36      94
0-24 months   ki1114097-CMIN             PERU                           1                   0       11      94
0-24 months   ki1114097-CMIN             PERU                           1                   1       36      94
0-24 months   ki1114097-CONTENT          PERU                           0                   0        2       9
0-24 months   ki1114097-CONTENT          PERU                           0                   1        6       9
0-24 months   ki1114097-CONTENT          PERU                           1                   0        0       9
0-24 months   ki1114097-CONTENT          PERU                           1                   1        1       9
0-24 months   ki1119695-PROBIT           BELARUS                        0                   0      318    4431
0-24 months   ki1119695-PROBIT           BELARUS                        0                   1      835    4431
0-24 months   ki1119695-PROBIT           BELARUS                        1                   0      297    4431
0-24 months   ki1119695-PROBIT           BELARUS                        1                   1     2981    4431
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                   0      865    3458
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                   1      312    3458
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                   0      676    3458
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                   1     1605    3458
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                   0      135     366
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                   1        3     366
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                   0       66     366
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                   1      162     366
0-24 months   ki1135781-COHORTS          INDIA                          0                   0     1123    2497
0-24 months   ki1135781-COHORTS          INDIA                          0                   1        0    2497
0-24 months   ki1135781-COHORTS          INDIA                          1                   0      730    2497
0-24 months   ki1135781-COHORTS          INDIA                          1                   1      644    2497
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                   0      440    1609
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                   1      521    1609
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                   0      182    1609
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                   1      466    1609
0-24 months   ki1148112-LCNI-5           MALAWI                         0                   0       48      79
0-24 months   ki1148112-LCNI-5           MALAWI                         0                   1       13      79
0-24 months   ki1148112-LCNI-5           MALAWI                         1                   0       18      79
0-24 months   ki1148112-LCNI-5           MALAWI                         1                   1        0      79
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   0     5320   12864
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   1     1834   12864
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0     1738   12864
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1     3972   12864
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   0     2076    3641
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   1      385    3641
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   0      552    3641
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   1      628    3641
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   0        8      60
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   1        7      60
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   0        4      60
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   1       41      60
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                   0        0      14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                   1        7      14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                   0        1      14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                   1        6      14
0-6 months    ki0047075b-MAL-ED          INDIA                          0                   0       13      82
0-6 months    ki0047075b-MAL-ED          INDIA                          0                   1       23      82
0-6 months    ki0047075b-MAL-ED          INDIA                          1                   0       13      82
0-6 months    ki0047075b-MAL-ED          INDIA                          1                   1       33      82
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                   0        4      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                   1       11      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                   0        5      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                   1       22      42
0-6 months    ki0047075b-MAL-ED          PERU                           0                   0        0      11
0-6 months    ki0047075b-MAL-ED          PERU                           0                   1        5      11
0-6 months    ki0047075b-MAL-ED          PERU                           1                   0        0      11
0-6 months    ki0047075b-MAL-ED          PERU                           1                   1        6      11
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0        3      33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1        8      33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        5      33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1       17      33
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0        1      12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1        8      12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        0      12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        3      12
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                   0       31     199
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                   1       64     199
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                   0       33     199
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                   1       71     199
0-6 months    ki1000108-IRC              INDIA                          0                   0       43     229
0-6 months    ki1000108-IRC              INDIA                          0                   1       62     229
0-6 months    ki1000108-IRC              INDIA                          1                   0       40     229
0-6 months    ki1000108-IRC              INDIA                          1                   1       84     229
0-6 months    ki1000109-EE               PAKISTAN                       0                   0       66     198
0-6 months    ki1000109-EE               PAKISTAN                       0                   1       66     198
0-6 months    ki1000109-EE               PAKISTAN                       1                   0       20     198
0-6 months    ki1000109-EE               PAKISTAN                       1                   1       46     198
0-6 months    ki1000109-ResPak           PAKISTAN                       0                   0       28     107
0-6 months    ki1000109-ResPak           PAKISTAN                       0                   1       27     107
0-6 months    ki1000109-ResPak           PAKISTAN                       1                   0       14     107
0-6 months    ki1000109-ResPak           PAKISTAN                       1                   1       38     107
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                   0      101     322
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                   1       61     322
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                   0       47     322
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                   1      113     322
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                   0        0      78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                   1        0      78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                   0       78      78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                   1        0      78
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0                   0       21     219
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0                   1       23     219
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                   0       41     219
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                   1      134     219
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                   0       16     184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                   1       17     184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   0       23     184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   1      128     184
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                   0        8     198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                   1       10     198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                   0       13     198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                   1      167     198
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   0       72     340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   1      125     340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0       29     340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1      114     340
0-6 months    ki1101329-Keneba           GAMBIA                         0                   0      109     409
0-6 months    ki1101329-Keneba           GAMBIA                         0                   1      190     409
0-6 months    ki1101329-Keneba           GAMBIA                         1                   0       41     409
0-6 months    ki1101329-Keneba           GAMBIA                         1                   1       69     409
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                   0        1      10
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                   1        4      10
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                   0        5      10
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                   1        0      10
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                   0       48     356
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                   1      108     356
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                   0      102     356
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                   1       98     356
0-6 months    ki1114097-CMIN             BANGLADESH                     0                   0       16      47
0-6 months    ki1114097-CMIN             BANGLADESH                     0                   1       12      47
0-6 months    ki1114097-CMIN             BANGLADESH                     1                   0        6      47
0-6 months    ki1114097-CMIN             BANGLADESH                     1                   1       13      47
0-6 months    ki1114097-CMIN             BRAZIL                         0                   0        1       9
0-6 months    ki1114097-CMIN             BRAZIL                         0                   1        0       9
0-6 months    ki1114097-CMIN             BRAZIL                         1                   0        3       9
0-6 months    ki1114097-CMIN             BRAZIL                         1                   1        5       9
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  0                   0       13      49
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  0                   1        8      49
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                   0       13      49
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                   1       15      49
0-6 months    ki1114097-CMIN             PERU                           0                   0        4      52
0-6 months    ki1114097-CMIN             PERU                           0                   1       12      52
0-6 months    ki1114097-CMIN             PERU                           1                   0        6      52
0-6 months    ki1114097-CMIN             PERU                           1                   1       30      52
0-6 months    ki1114097-CONTENT          PERU                           0                   0        0       4
0-6 months    ki1114097-CONTENT          PERU                           0                   1        3       4
0-6 months    ki1114097-CONTENT          PERU                           1                   0        0       4
0-6 months    ki1114097-CONTENT          PERU                           1                   1        1       4
0-6 months    ki1119695-PROBIT           BELARUS                        0                   0      217    4263
0-6 months    ki1119695-PROBIT           BELARUS                        0                   1      801    4263
0-6 months    ki1119695-PROBIT           BELARUS                        1                   0      271    4263
0-6 months    ki1119695-PROBIT           BELARUS                        1                   1     2974    4263
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                   0      145    2480
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                   1      253    2480
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                   0      487    2480
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                   1     1595    2480
0-6 months    ki1135781-COHORTS          GUATEMALA                      0                   0       16     212
0-6 months    ki1135781-COHORTS          GUATEMALA                      0                   1        0     212
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                   0       36     212
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                   1      160     212
0-6 months    ki1135781-COHORTS          INDIA                          0                   0      533    1718
0-6 months    ki1135781-COHORTS          INDIA                          0                   1        0    1718
0-6 months    ki1135781-COHORTS          INDIA                          1                   0      541    1718
0-6 months    ki1135781-COHORTS          INDIA                          1                   1      644    1718
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                   0       95     735
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                   1      151     735
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                   0       96     735
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                   1      393     735
0-6 months    ki1148112-LCNI-5           MALAWI                         0                   0        0       4
0-6 months    ki1148112-LCNI-5           MALAWI                         0                   1        0       4
0-6 months    ki1148112-LCNI-5           MALAWI                         1                   0        4       4
0-6 months    ki1148112-LCNI-5           MALAWI                         1                   1        0       4
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                   0     1594    8440
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                   1     1834    8440
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   0     1040    8440
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   1     3972    8440
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                   0      210    1074
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                   1       44    1074
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   0      246    1074
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   1      574    1074
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   0       21      53
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   1       18      53
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   0        7      53
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   1        7      53
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                   0        4       8
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                   1        4       8
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   0        0       8
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   1        0       8
6-24 months   ki0047075b-MAL-ED          INDIA                          0                   0       27      91
6-24 months   ki0047075b-MAL-ED          INDIA                          0                   1       44      91
6-24 months   ki0047075b-MAL-ED          INDIA                          1                   0       16      91
6-24 months   ki0047075b-MAL-ED          INDIA                          1                   1        4      91
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                   0        6      48
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                   1       33      48
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                   0        4      48
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                   1        5      48
6-24 months   ki0047075b-MAL-ED          PERU                           0                   0        6      23
6-24 months   ki0047075b-MAL-ED          PERU                           0                   1       17      23
6-24 months   ki0047075b-MAL-ED          PERU                           1                   0        0      23
6-24 months   ki0047075b-MAL-ED          PERU                           1                   1        0      23
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0        8      50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1       39      50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        1      50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        2      50
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0        7      32
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1       24      32
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        0      32
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        1      32
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                   0       44     122
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                   1       51     122
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   0       10     122
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   1       17     122
6-24 months   ki1000108-IRC              INDIA                          0                   0       39     142
6-24 months   ki1000108-IRC              INDIA                          0                   1       55     142
6-24 months   ki1000108-IRC              INDIA                          1                   0       29     142
6-24 months   ki1000108-IRC              INDIA                          1                   1       19     142
6-24 months   ki1000109-EE               PAKISTAN                       0                   0      152     242
6-24 months   ki1000109-EE               PAKISTAN                       0                   1       66     242
6-24 months   ki1000109-EE               PAKISTAN                       1                   0       12     242
6-24 months   ki1000109-EE               PAKISTAN                       1                   1       12     242
6-24 months   ki1000109-ResPak           PAKISTAN                       0                   0       52      85
6-24 months   ki1000109-ResPak           PAKISTAN                       0                   1       16      85
6-24 months   ki1000109-ResPak           PAKISTAN                       1                   0       12      85
6-24 months   ki1000109-ResPak           PAKISTAN                       1                   1        5      85
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                   0      240     414
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                   1      101     414
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                   0       48     414
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                   1       25     414
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                   0      119     156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                   1       13     156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                   0       24     156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                   1        0     156
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                   0       79     191
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                   1       47     191
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                   0       52     191
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                   1       13     191
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                   0       67     121
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                   1       24     121
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   0       21     121
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   1        9     121
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                   0       53     105
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                   1       10     105
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                   0       35     105
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                   1        7     105
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   0      145     369
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   1      182     369
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0       20     369
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1       22     369
6-24 months   ki1101329-Keneba           GAMBIA                         0                   0      465    1093
6-24 months   ki1101329-Keneba           GAMBIA                         0                   1      529    1093
6-24 months   ki1101329-Keneba           GAMBIA                         1                   0       77    1093
6-24 months   ki1101329-Keneba           GAMBIA                         1                   1       22    1093
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                   0       12      28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                   1       13      28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                   0        3      28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                   1        0      28
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                   0      185     820
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                   1       31     820
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                   0      599     820
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                   1        5     820
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                   0      296     756
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                   1      304     756
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0       86     756
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1       70     756
6-24 months   ki1114097-CMIN             BANGLADESH                     0                   0       44     130
6-24 months   ki1114097-CMIN             BANGLADESH                     0                   1       72     130
6-24 months   ki1114097-CMIN             BANGLADESH                     1                   0        6     130
6-24 months   ki1114097-CMIN             BANGLADESH                     1                   1        8     130
6-24 months   ki1114097-CMIN             BRAZIL                         0                   0        3       4
6-24 months   ki1114097-CMIN             BRAZIL                         0                   1        1       4
6-24 months   ki1114097-CMIN             BRAZIL                         1                   0        0       4
6-24 months   ki1114097-CMIN             BRAZIL                         1                   1        0       4
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                   0      148     284
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                   1       94     284
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                   0       42     284
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                   1        0     284
6-24 months   ki1114097-CMIN             PERU                           0                   0        7      42
6-24 months   ki1114097-CMIN             PERU                           0                   1       24      42
6-24 months   ki1114097-CMIN             PERU                           1                   0        5      42
6-24 months   ki1114097-CMIN             PERU                           1                   1        6      42
6-24 months   ki1114097-CONTENT          PERU                           0                   0        2       5
6-24 months   ki1114097-CONTENT          PERU                           0                   1        3       5
6-24 months   ki1114097-CONTENT          PERU                           1                   0        0       5
6-24 months   ki1114097-CONTENT          PERU                           1                   1        0       5
6-24 months   ki1119695-PROBIT           BELARUS                        0                   0      101     168
6-24 months   ki1119695-PROBIT           BELARUS                        0                   1       34     168
6-24 months   ki1119695-PROBIT           BELARUS                        1                   0       26     168
6-24 months   ki1119695-PROBIT           BELARUS                        1                   1        7     168
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                   0      720     978
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                   1       59     978
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                   0      189     978
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                   1       10     978
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                   0      119     154
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                   1        3     154
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                   0       30     154
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                   1        2     154
6-24 months   ki1135781-COHORTS          INDIA                          0                   0      590     779
6-24 months   ki1135781-COHORTS          INDIA                          0                   1        0     779
6-24 months   ki1135781-COHORTS          INDIA                          1                   0      189     779
6-24 months   ki1135781-COHORTS          INDIA                          1                   1        0     779
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                   0      345     874
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                   1      370     874
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                   0       86     874
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                   1       73     874
6-24 months   ki1148112-LCNI-5           MALAWI                         0                   0       48      75
6-24 months   ki1148112-LCNI-5           MALAWI                         0                   1       13      75
6-24 months   ki1148112-LCNI-5           MALAWI                         1                   0       14      75
6-24 months   ki1148112-LCNI-5           MALAWI                         1                   1        0      75
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   0     3726    4424
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   1        0    4424
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0      698    4424
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1        0    4424
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   0     1866    2567
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   1      341    2567
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   0      306    2567
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   1       54    2567


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
* agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
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
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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
* agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
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

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/6a9f8242-6b6c-483d-ac06-a3ef605de250/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6a9f8242-6b6c-483d-ac06-a3ef605de250/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6a9f8242-6b6c-483d-ac06-a3ef605de250/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6a9f8242-6b6c-483d-ac06-a3ef605de250/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.4654099   0.3255254   0.6052944
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.8121760   0.7311032   0.8932487
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.6261682   0.5186038   0.7337327
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.5606061   0.4359209   0.6852912
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.8148148   0.7154559   0.9141737
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.7500000   0.6093835   0.8906165
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.8103448   0.7144543   0.9062354
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.7600000   0.5500655   0.9699345
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.5836513   0.5112940   0.6560087
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.6326264   0.5494197   0.7158332
0-24 months   ki1000108-IRC              INDIA                          0                    NA                0.5879397   0.5126115   0.6632679
0-24 months   ki1000108-IRC              INDIA                          1                    NA                0.5988372   0.5233911   0.6742833
0-24 months   ki1000109-EE               PAKISTAN                       0                    NA                0.3797214   0.3021661   0.4572767
0-24 months   ki1000109-EE               PAKISTAN                       1                    NA                0.6333325   0.4949002   0.7717648
0-24 months   ki1000109-ResPak           PAKISTAN                       0                    NA                0.3556604   0.2643984   0.4469225
0-24 months   ki1000109-ResPak           PAKISTAN                       1                    NA                0.6088260   0.5056499   0.7120022
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.3218244   0.2770743   0.3665746
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.5910215   0.5384723   0.6435707
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.3981495   0.3247387   0.4715602
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.6269596   0.5649317   0.6889876
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.3035708   0.2339416   0.3732001
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.7593993   0.7038314   0.8149673
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.2468010   0.1520136   0.3415884
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.7838096   0.7389154   0.8287037
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.5844399   0.5398672   0.6290126
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7321881   0.6753847   0.7889914
0-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.5556721   0.5265223   0.5848218
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.4789944   0.4200001   0.5379887
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                0.1435185   0.0941707   0.1928664
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.0082781   0.0043603   0.0121960
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.5220612   0.4639835   0.5801390
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.3724239   0.3066923   0.4381555
0-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.5833333   0.4900081   0.6766585
0-24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                0.6363636   0.4924059   0.7803214
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.3882956   0.3277329   0.4488584
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.2137280   0.1085912   0.3188647
0-24 months   ki1114097-CMIN             PERU                           0                    NA                0.7420023   0.6034547   0.8805500
0-24 months   ki1114097-CMIN             PERU                           1                    NA                0.7641392   0.6351683   0.8931101
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                0.7342893   0.7097811   0.7587975
0-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.9056007   0.8958613   0.9153401
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.2736368   0.2492580   0.2980156
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.7068706   0.6890352   0.7247061
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.5479788   0.5139697   0.5819880
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.7287502   0.6974509   0.7600495
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.2619032   0.2476408   0.2761655
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.7008713   0.6858596   0.7158829
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1569812   0.1359571   0.1780052
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.5261330   0.4929605   0.5593055
0-6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                0.6033267   0.4489710   0.7576823
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    NA                0.6974089   0.5691672   0.8256506
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.6736842   0.5736014   0.7737671
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.6826923   0.5952108   0.7701738
0-6 months    ki1000108-IRC              INDIA                          0                    NA                0.5546433   0.4603217   0.6489649
0-6 months    ki1000108-IRC              INDIA                          1                    NA                0.6514822   0.5726600   0.7303045
0-6 months    ki1000109-EE               PAKISTAN                       0                    NA                0.4999685   0.3759323   0.6240048
0-6 months    ki1000109-EE               PAKISTAN                       1                    NA                0.6969801   0.5497821   0.8441781
0-6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                0.5108444   0.3760805   0.6456083
0-6 months    ki1000109-ResPak           PAKISTAN                       1                    NA                0.7166694   0.6028048   0.8305341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.3610322   0.2908218   0.4312426
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.6882154   0.6249958   0.7514351
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.5080413   0.3862638   0.6298188
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.7706886   0.7096241   0.8317530
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.5296881   0.3615522   0.6978240
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.8480508   0.7925810   0.9035206
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.5555556   0.3230656   0.7880455
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.9277778   0.8894954   0.9660602
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.6370250   0.5691936   0.7048564
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7992572   0.7347649   0.8637495
0-6 months    ki1101329-Keneba           GAMBIA                         0                    NA                0.6354016   0.5811262   0.6896770
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.6329892   0.5556785   0.7102999
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.6985098   0.5949185   0.8021010
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.4842273   0.3867240   0.5817305
0-6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                0.4285714   0.2397328   0.6174101
0-6 months    ki1114097-CMIN             BANGLADESH                     1                    NA                0.6842105   0.4783236   0.8900975
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.3809524   0.1666819   0.5952229
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.5357143   0.3521310   0.7192976
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.7931660   0.7691749   0.8171572
0-6 months    ki1119695-PROBIT           BELARUS                        1                    NA                0.9137032   0.9040561   0.9233503
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.6747621   0.6324775   0.7170467
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.7680843   0.7500464   0.7861222
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.6075192   0.5475378   0.6675006
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.8032195   0.7697327   0.8367063
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.5402290   0.5172930   0.5631649
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.7934837   0.7778932   0.8090742
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1534902   0.0889755   0.2180049
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.6958992   0.6516096   0.7401889
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.4615385   0.2946477   0.6284292
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.5000000   0.2220017   0.7779983
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.5377065   0.4339783   0.6414346
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.6279398   0.4274946   0.8283850
6-24 months   ki1000108-IRC              INDIA                          0                    NA                0.5909719   0.4901530   0.6917908
6-24 months   ki1000108-IRC              INDIA                          1                    NA                0.4050519   0.2507020   0.5594019
6-24 months   ki1000109-EE               PAKISTAN                       0                    NA                0.3027880   0.2148023   0.3907737
6-24 months   ki1000109-EE               PAKISTAN                       1                    NA                0.4996151   0.2189211   0.7803091
6-24 months   ki1000109-ResPak           PAKISTAN                       0                    NA                0.2352941   0.1394834   0.3311049
6-24 months   ki1000109-ResPak           PAKISTAN                       1                    NA                0.2941176   0.0654094   0.5228259
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.2960832   0.2466289   0.3455375
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.3441463   0.2321534   0.4561393
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.3407309   0.2604628   0.4209990
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.1469627   0.0532283   0.2406971
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.2637363   0.1709577   0.3565148
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3000000   0.1324024   0.4675976
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1587302   0.0659564   0.2515039
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1666667   0.0676213   0.2657120
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.5574492   0.5026066   0.6122919
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.5427379   0.4105970   0.6748789
6-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.5339975   0.5012707   0.5667244
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.2810496   0.2100520   0.3520472
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                0.1435185   0.0941707   0.1928664
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.0082781   0.0043603   0.0121960
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.5066667   0.4439393   0.5693940
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.4487179   0.3376573   0.5597786
6-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.6206897   0.5245844   0.7167949
6-24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                0.5714286   0.3095408   0.8333163
6-24 months   ki1114097-CMIN             PERU                           0                    NA                0.7741935   0.6202313   0.9281558
6-24 months   ki1114097-CMIN             PERU                           1                    NA                0.5454545   0.2014380   0.8894711
6-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                0.2518519   0.1787895   0.3249142
6-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.2121212   0.0713837   0.3528587
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0759476   0.0574667   0.0944286
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0491835   0.0208816   0.0774853
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.5180343   0.4796599   0.5564088
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.4688783   0.3945082   0.5432483
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1544319   0.1339004   0.1749633
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.1493605   0.1010674   0.1976537


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.6460177   0.5560255   0.7360099
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.6011561   0.5195404   0.6827718
0-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.7888889   0.7072560   0.8705218
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.7951807   0.7027530   0.8876084
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6323988   0.5759881   0.6888094
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.5929919   0.5395365   0.6464474
0-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.4318182   0.3609837   0.5026527
0-24 months   ki1000109-ResPak           PAKISTAN                       NA                   NA                0.4479167   0.3740054   0.5218280
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.4076087   0.3701341   0.4450833
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5292683   0.4780194   0.5805172
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.5836066   0.5266519   0.6405613
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.6402640   0.5865752   0.6939528
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6248237   0.5870504   0.6625970
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.5392810   0.5118929   0.5666690
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0439024   0.0298653   0.0579396
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5215827   0.4763879   0.5667776
0-24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.5932203   0.5126081   0.6738326
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.3513514   0.2981655   0.4045372
0-24 months   ki1114097-CMIN             PERU                           NA                   NA                0.7659574   0.6722800   0.8596349
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.8612051   0.8511051   0.8713052
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.5543667   0.5376789   0.5710545
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6134245   0.5884697   0.6383792
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4513371   0.4391602   0.4635139
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2782203   0.2573778   0.2990627
0-6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.6829268   0.5789176   0.7869360
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6783920   0.6122576   0.7445263
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.6375546   0.5740609   0.7010483
0-6 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.5656566   0.4663360   0.6649772
0-6 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                0.6074766   0.5141409   0.7008124
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5403727   0.4853771   0.5953682
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.7168950   0.6571882   0.7766017
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.7880435   0.7295878   0.8464992
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.8939394   0.8505280   0.9373508
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7029412   0.6536517   0.7522307
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.6332518   0.5863603   0.6801434
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5786517   0.5056622   0.6516412
0-6 months    ki1114097-CMIN             BANGLADESH                     NA                   NA                0.5319149   0.3859754   0.6778543
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.4693878   0.3282220   0.6105535
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.8855266   0.8758983   0.8951550
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.7451613   0.7280223   0.7623003
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.7401361   0.7083482   0.7719239
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.6879147   0.6739342   0.7018952
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.5754190   0.5335745   0.6172635
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4716981   0.3290250   0.6143712
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.5573770   0.4641535   0.6506006
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.5211268   0.4331712   0.6090823
6-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.3223140   0.2372605   0.4073676
6-24 months   ki1000109-ResPak           PAKISTAN                       NA                   NA                0.2470588   0.1575173   0.3366003
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3043478   0.2587781   0.3499175
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.3141361   0.2465700   0.3817023
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2727273   0.1912257   0.3542288
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1619048   0.0936117   0.2301978
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.5528455   0.5003746   0.6053165
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.5041171   0.4725613   0.5356729
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0439024   0.0298653   0.0579396
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4947090   0.4398332   0.5495848
6-24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.6153846   0.5250517   0.7057175
6-24 months   ki1114097-CMIN             PERU                           NA                   NA                0.7142857   0.5638781   0.8646933
6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.2440476   0.1791134   0.3089818
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0705521   0.0546681   0.0864362
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.5068650   0.4719234   0.5418065
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1538761   0.1349014   0.1728508


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                 1.7450768   1.2711766   2.3956490
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    0                 0.8952962   0.6764271   1.1849840
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0                 0.9204545   0.7355355   1.1518636
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 0.9378723   0.6944323   1.2666526
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.0839116   0.9061790   1.2965035
0-24 months   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          1                    0                 1.0185351   0.8510063   1.2190435
0-24 months   ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-EE               PAKISTAN                       1                    0                 1.6678873   1.2399840   2.2434547
0-24 months   ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-ResPak           PAKISTAN                       1                    0                 1.7118183   1.2611630   2.3235076
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    0                 1.8364717   1.5585174   2.1639980
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0                 1.5746840   1.2776971   1.9407023
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 2.5015556   1.9678938   3.1799381
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 3.1758772   2.1547134   4.6809919
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.2528030   1.1243104   1.3959805
0-24 months   ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         1                    0                 0.8620092   0.7546295   0.9846684
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    0                 0.0576800   0.0321346   0.1035327
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 0.7133720   0.5786590   0.8794466
0-24 months   ki1114097-CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1114097-CMIN             BANGLADESH                     1                    0                 1.0909091   0.8269058   1.4391998
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    0                 0.5504259   0.3286501   0.9218577
0-24 months   ki1114097-CMIN             PERU                           0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1114097-CMIN             PERU                           1                    0                 1.0298339   0.8000722   1.3255778
0-24 months   ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        1                    0                 1.2333024   1.1909500   1.2771608
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 2.5832443   2.3549568   2.8336617
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 1.3298875   1.2334547   1.4338594
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 2.6760703   2.5241360   2.8371498
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 3.3515675   2.8926049   3.8833524
0-6 months    ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    0                 1.1559391   0.8427198   1.5855747
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.0133714   0.8328428   1.2330317
0-6 months    ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          1                    0                 1.1745968   0.9529434   1.4478064
0-6 months    ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000109-EE               PAKISTAN                       1                    0                 1.3940478   1.0101318   1.9238771
0-6 months    ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000109-ResPak           PAKISTAN                       1                    0                 1.4029114   1.0352404   1.9011628
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0                 1.9062439   1.5389624   2.3611790
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    0                 1.5169801   1.1791281   1.9516357
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.6010380   1.1578723   2.2138217
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.6700000   1.0967074   2.5429755
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.2546717   1.0986534   1.4328458
0-6 months    ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA                         1                    0                 0.9962034   0.8618388   1.1515160
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                 0.6932290   0.5402478   0.8895298
0-6 months    ki1114097-CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1114097-CMIN             BANGLADESH                     1                    0                 1.5964912   0.9364667   2.7217030
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                    0                 1.4062500   0.7278167   2.7170838
0-6 months    ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        1                    0                 1.1519697   1.1157734   1.1893402
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.1383038   1.0646658   1.2170351
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                 1.3221303   1.1882270   1.4711233
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.4687915   1.4017584   1.5390301
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 4.5338358   2.9634596   6.9363749
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                 1.0833333   0.5582161   2.1024313
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.1678115   0.8045059   1.6951817
6-24 months   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          1                    0                 0.6853996   0.4514134   1.0406707
6-24 months   ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000109-EE               PAKISTAN                       1                    0                 1.6500490   0.8766773   3.1056602
6-24 months   ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000109-ResPak           PAKISTAN                       1                    0                 1.2500000   0.5196355   3.0069156
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    0                 1.1623298   0.8072713   1.6735522
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0                 0.4313160   0.2177657   0.8542826
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.1375000   0.5881099   2.2001097
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.0500000   0.4561199   2.4171276
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.9736097   0.7487255   1.2660392
6-24 months   ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         1                    0                 0.5263126   0.4058596   0.6825141
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    0                 0.0576800   0.0321346   0.1035327
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 0.8856275   0.6713732   1.1682566
6-24 months   ki1114097-CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1114097-CMIN             BANGLADESH                     1                    0                 0.9206349   0.5675381   1.4934129
6-24 months   ki1114097-CMIN             PERU                           0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1114097-CMIN             PERU                           1                    0                 0.7045455   0.3636165   1.3651316
6-24 months   ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1119695-PROBIT           BELARUS                        1                    0                 0.8422460   0.4082767   1.7374939
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 0.6475970   0.3467141   1.2095900
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 0.9051104   0.7597616   1.0782655
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 0.9671614   0.6817670   1.3720247


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.1806078    0.0854390    0.2757766
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0250122   -0.0877684    0.0377441
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0259259   -0.0943876    0.0425358
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0151641   -0.0848611    0.0545329
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0487474    0.0033612    0.0941337
0-24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0050522   -0.0444009    0.0545053
0-24 months   ki1000109-EE               PAKISTAN                       0                    NA                 0.0520968    0.0156128    0.0885807
0-24 months   ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0922562    0.0395560    0.1449565
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0857843    0.0609216    0.1106469
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.1311188    0.0728195    0.1894181
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.2800357    0.2207374    0.3393341
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.3934631    0.3106293    0.4762968
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0403838    0.0199661    0.0608015
0-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0163911   -0.0274343   -0.0053479
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                -0.0996161   -0.1363387   -0.0628935
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0004785   -0.0292818    0.0283248
0-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0098870   -0.0223141    0.0420881
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                -0.0369443   -0.0634984   -0.0103902
0-24 months   ki1114097-CMIN             PERU                           0                    NA                 0.0239551   -0.0724380    0.1203482
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.1269158    0.1075123    0.1463194
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.2807299    0.2595727    0.3018872
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0654457    0.0459683    0.0849230
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.1894339    0.1785307    0.2003371
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.1212391    0.1050076    0.1374706
0-6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0796002   -0.0345956    0.1937959
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0047077   -0.0647593    0.0741748
0-6 months    ki1000108-IRC              INDIA                          0                    NA                 0.0829113    0.0156972    0.1501254
0-6 months    ki1000109-EE               PAKISTAN                       0                    NA                 0.0656880   -0.0004666    0.1318426
0-6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0966322    0.0099555    0.1833090
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.1793405    0.1285533    0.2301276
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.2088537    0.1016376    0.3160697
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.2583554    0.1127469    0.4039639
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.3383838    0.1236548    0.5531129
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0659162    0.0259918    0.1058406
0-6 months    ki1101329-Keneba           GAMBIA                         0                    NA                -0.0021498   -0.0281452    0.0238457
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.1198581   -0.2011624   -0.0385538
0-6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                 0.1033435   -0.0152904    0.2219773
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                 0.0884354   -0.0743117    0.2511825
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0923606    0.0728818    0.1118394
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0703992    0.0323735    0.1084249
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.1326169    0.0871668    0.1780669
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.1476857    0.1308880    0.1644835
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.4219288    0.3590682    0.4847895
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0101597   -0.0747426    0.0950619
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0196706   -0.0313678    0.0707090
6-24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0698452   -0.1366654   -0.0030249
6-24 months   ki1000109-EE               PAKISTAN                       0                    NA                 0.0195260   -0.0118153    0.0508673
6-24 months   ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0117647   -0.0380483    0.0615777
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0082646   -0.0135012    0.0300304
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0265948   -0.0723946    0.0192049
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0089910   -0.0387066    0.0566886
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0031746   -0.0510959    0.0574451
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0046037   -0.0248093    0.0156019
6-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0298804   -0.0412230   -0.0185378
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                -0.0996161   -0.1363387   -0.0628935
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0119577   -0.0386809    0.0147656
6-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0053050   -0.0355463    0.0249363
6-24 months   ki1114097-CMIN             PERU                           0                    NA                -0.0599078   -0.1669760    0.0471603
6-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                -0.0078042   -0.0390473    0.0234388
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0053955   -0.0125269    0.0017359
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0111694   -0.0275992    0.0052605
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0005557   -0.0080576    0.0069461


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.2795710    0.1034167    0.4211157
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0416068   -0.1509864    0.0573784
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0328638   -0.1239566    0.0508462
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0190700   -0.1114149    0.0656022
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0770834    0.0021048    0.1464283
0-24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0085199   -0.0785462    0.0885575
0-24 months   ki1000109-EE               PAKISTAN                       0                    NA                 0.1206452    0.0308256    0.2021406
0-24 months   ki1000109-ResPak           PAKISTAN                       0                    NA                 0.2059674    0.0731188    0.3197750
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.2104574    0.1440150    0.2717424
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.2477360    0.1290447    0.3502524
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.4798365    0.3706523    0.5700785
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.6145325    0.4527155    0.7285047
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0646323    0.0307655    0.0973157
0-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0303944   -0.0511941   -0.0100062
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                -2.2690329   -2.7203187   -1.8724895
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0009174   -0.0576760    0.0527953
0-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0166667   -0.0397298    0.0700041
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                -0.1051491   -0.1843512   -0.0312437
0-24 months   ki1114097-CMIN             PERU                           0                    NA                 0.0312747   -0.1034499    0.1495503
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.1473700    0.1239258    0.1701869
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.5063975    0.4665037    0.5433082
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.1066890    0.0733588    0.1388204
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.4197171    0.3951167    0.4433171
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.4357666    0.3779575    0.4882033
0-6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                 0.1165574   -0.0686368    0.2696575
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0069396   -0.1009950    0.1042929
0-6 months    ki1000108-IRC              INDIA                          0                    NA                 0.1300458    0.0164821    0.2304966
0-6 months    ki1000109-EE               PAKISTAN                       0                    NA                 0.1161270   -0.0129183    0.2287320
0-6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                 0.1590715   -0.0022944    0.2944581
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.3318829    0.2286934    0.4212672
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.2913309    0.1229386    0.4273925
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.3278441    0.1063226    0.4944556
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.3785311    0.0755521    0.5822116
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0937720    0.0337410    0.1500734
0-6 months    ki1101329-Keneba           GAMBIA                         0                    NA                -0.0033948   -0.0452899    0.0368212
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.2071334   -0.3617690   -0.0700574
0-6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                 0.1942857   -0.0715613    0.3941779
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                 0.1884058   -0.2502820    0.4731707
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.1043002    0.0816831    0.1263602
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0944751    0.0418457    0.1442137
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.1791790    0.1134268    0.2400548
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.2146861    0.1890318    0.2395289
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.7332549    0.6021900    0.8211384
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0215385   -0.1763079    0.1861085
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0352913   -0.0606076    0.1225192
6-24 months   ki1000108-IRC              INDIA                          0                    NA                -0.1340272   -0.2762733   -0.0076350
6-24 months   ki1000109-EE               PAKISTAN                       0                    NA                 0.0605808   -0.0417464    0.1528567
6-24 months   ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0476190   -0.1746873    0.2278545
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0271552   -0.0469489    0.0960141
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0846602   -0.2427388    0.0533106
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0329670   -0.1585994    0.1928593
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0196078   -0.3817338    0.3043748
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0083273   -0.0456143    0.0276301
6-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0592728   -0.0826011   -0.0364472
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                -2.2690329   -2.7203187   -1.8724895
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0241711   -0.0795076    0.0283287
6-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0086207   -0.0589574    0.0393233
6-24 months   ki1114097-CMIN             PERU                           0                    NA                -0.0838710   -0.2522147    0.0618411
6-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                -0.0319783   -0.1682528    0.0884000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0764750   -0.1808480    0.0186726
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0220362   -0.0550319    0.0099277
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0036117   -0.0535611    0.0439696
