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

unadjusted

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
![](/tmp/4e746ae1-c82c-4e5e-b79b-cc3fcf0e3e03/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4e746ae1-c82c-4e5e-b79b-cc3fcf0e3e03/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4e746ae1-c82c-4e5e-b79b-cc3fcf0e3e03/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4e746ae1-c82c-4e5e-b79b-cc3fcf0e3e03/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.4629630   0.3229710   0.6029550
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.8135593   0.7326372   0.8944815
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.6261682   0.5186038   0.7337327
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.5606061   0.4359209   0.6852912
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.8148148   0.7154559   0.9141737
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.7500000   0.6093835   0.8906165
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.8103448   0.7144543   0.9062354
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.7600000   0.5500655   0.9699345
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.6052632   0.5310568   0.6794695
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.6717557   0.5859632   0.7575482
0-24 months   ki1000108-IRC              INDIA                          0                    NA                0.5879397   0.5126115   0.6632679
0-24 months   ki1000108-IRC              INDIA                          1                    NA                0.5988372   0.5233911   0.6742833
0-24 months   ki1000109-EE               PAKISTAN                       0                    NA                0.3771429   0.2994224   0.4548634
0-24 months   ki1000109-EE               PAKISTAN                       1                    NA                0.6444444   0.5032197   0.7856692
0-24 months   ki1000109-ResPak           PAKISTAN                       0                    NA                0.3495935   0.2578351   0.4413519
0-24 months   ki1000109-ResPak           PAKISTAN                       1                    NA                0.6231884   0.5187212   0.7276556
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.3220676   0.2764580   0.3676772
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.5922747   0.5361668   0.6483825
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.4117647   0.3351663   0.4883631
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.6125000   0.5488638   0.6761362
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.3306452   0.2494292   0.4118611
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.7569061   0.6980104   0.8158018
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.2469136   0.1512735   0.3425537
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.7837838   0.7389407   0.8286268
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.5858779   0.5404909   0.6312649
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7351351   0.6725513   0.7977189
0-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.5560712   0.5267202   0.5854221
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.4354067   0.3632744   0.5075390
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                0.1435185   0.0941707   0.1928664
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.0082781   0.0043603   0.0121960
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.5449735   0.4867517   0.6031953
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.4719101   0.4045164   0.5393038
0-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.5833333   0.4900081   0.6766585
0-24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                0.6363636   0.4924059   0.7803214
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.3878327   0.3272151   0.4484503
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.2142857   0.1088632   0.3197083
0-24 months   ki1114097-CMIN             PERU                           0                    NA                0.7659574   0.6300170   0.9018979
0-24 months   ki1114097-CMIN             PERU                           1                    NA                0.7659574   0.6369205   0.8949943
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                0.7241977   0.6983466   0.7500489
0-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.9093960   0.8997400   0.9190520
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.2650807   0.2395691   0.2905923
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.7036388   0.6854242   0.7218533
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.5421436   0.5077687   0.5765185
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.7191358   0.6870789   0.7511927
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.2563601   0.2419476   0.2707725
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.6956217   0.6802117   0.7110318
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1564405   0.1353359   0.1775451
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.5322034   0.4954982   0.5689086
0-6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                0.6388889   0.4741977   0.8035801
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    NA                0.7173913   0.5850476   0.8497350
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.6736842   0.5736014   0.7737671
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.6826923   0.5952108   0.7701738
0-6 months    ki1000108-IRC              INDIA                          0                    NA                0.5904762   0.4916299   0.6893225
0-6 months    ki1000108-IRC              INDIA                          1                    NA                0.6774194   0.5958072   0.7590315
0-6 months    ki1000109-EE               PAKISTAN                       0                    NA                0.5000000   0.3755970   0.6244030
0-6 months    ki1000109-EE               PAKISTAN                       1                    NA                0.6969697   0.5459552   0.8479842
0-6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                0.4909091   0.3529882   0.6288300
0-6 months    ki1000109-ResPak           PAKISTAN                       1                    NA                0.7307692   0.6160762   0.8454623
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.3765432   0.2994174   0.4536690
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.7062500   0.6368369   0.7756631
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.5227273   0.3741239   0.6713306
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.7657143   0.7031054   0.8283232
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.5151515   0.3413298   0.6889732
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.8476821   0.7921281   0.9032361
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.5555556   0.3230656   0.7880455
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.9277778   0.8894954   0.9660602
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.6345178   0.5657543   0.7032812
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7972028   0.7310467   0.8633589
0-6 months    ki1101329-Keneba           GAMBIA                         0                    NA                0.6354515   0.5801172   0.6907858
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.6272727   0.5391815   0.7153639
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.6923077   0.5884226   0.7961928
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.4900000   0.3921516   0.5878484
0-6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                0.4285714   0.2397328   0.6174101
0-6 months    ki1114097-CMIN             BANGLADESH                     1                    NA                0.6842105   0.4783236   0.8900975
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.3809524   0.1666819   0.5952229
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.5357143   0.3521310   0.7192976
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.7868369   0.7614198   0.8122541
0-6 months    ki1119695-PROBIT           BELARUS                        1                    NA                0.9164869   0.9069146   0.9260592
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.6356784   0.5881984   0.6831584
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.7660903   0.7479445   0.7842361
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.6138211   0.5501743   0.6774680
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.8036810   0.7697910   0.8375709
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.5350058   0.5113847   0.5586269
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.7924980   0.7766267   0.8083693
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1732283   0.1073484   0.2391083
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.7000000   0.6556013   0.7443987
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.4615385   0.2946477   0.6284292
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.5000000   0.2220017   0.7779983
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.5368421   0.4327344   0.6409498
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.6296296   0.4279076   0.8313516
6-24 months   ki1000108-IRC              INDIA                          0                    NA                0.5851064   0.4830603   0.6871525
6-24 months   ki1000108-IRC              INDIA                          1                    NA                0.3958333   0.2364317   0.5552350
6-24 months   ki1000109-EE               PAKISTAN                       0                    NA                0.3027523   0.2147628   0.3907418
6-24 months   ki1000109-EE               PAKISTAN                       1                    NA                0.5000000   0.2191014   0.7808986
6-24 months   ki1000109-ResPak           PAKISTAN                       0                    NA                0.2352941   0.1394834   0.3311049
6-24 months   ki1000109-ResPak           PAKISTAN                       1                    NA                0.2941176   0.0654094   0.5228259
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.2961877   0.2465617   0.3458137
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.3424658   0.2287942   0.4561373
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.3730159   0.2871826   0.4588491
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.2000000   0.0987132   0.3012868
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.2637363   0.1709577   0.3565148
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3000000   0.1324024   0.4675976
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1587302   0.0659564   0.2515039
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1666667   0.0676213   0.2657120
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.5565749   0.5014439   0.6117060
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.5238095   0.3560603   0.6915587
6-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.5321932   0.4993859   0.5650004
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.2222222   0.1343439   0.3101006
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
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0757381   0.0572819   0.0941944
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0502513   0.0208711   0.0796314
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.5174825   0.4788575   0.5561075
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.4591195   0.3777542   0.5404848
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1545084   0.1339564   0.1750604
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.1500000   0.1006326   0.1993674


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
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                 1.7572881   1.2780081   2.4163083
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    0                 0.8952962   0.6764271   1.1849840
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0                 0.9204545   0.7355355   1.1518636
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 0.9378723   0.6944323   1.2666526
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.1098573   0.9297740   1.3248200
0-24 months   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          1                    0                 1.0185351   0.8510063   1.2190435
0-24 months   ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-EE               PAKISTAN                       1                    0                 1.7087542   1.2649864   2.3081994
0-24 months   ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-ResPak           PAKISTAN                       1                    0                 1.7826087   1.3057983   2.4335256
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    0                 1.8389763   1.5509033   2.1805575
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0                 1.4875000   1.2023894   1.8402160
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 2.2891794   1.7697192   2.9611151
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 3.1743243   2.1462236   4.6949139
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.2547583   1.1183436   1.4078128
0-24 months   ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         1                    0                 0.7830054   0.6580137   0.9317395
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    0                 0.0576800   0.0321346   0.1035327
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 0.8659321   0.7244157   1.0350943
0-24 months   ki1114097-CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1114097-CMIN             BANGLADESH                     1                    0                 1.0909091   0.8269058   1.4391998
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    0                 0.5525210   0.3297494   0.9257923
0-24 months   ki1114097-CMIN             PERU                           0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1114097-CMIN             PERU                           1                    0                 1.0000000   0.7828607   1.2773665
0-24 months   ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        1                    0                 1.2557288   1.2098224   1.3033771
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 2.6544321   2.4026535   2.9325950
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 1.3264674   1.2275246   1.4333853
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 2.7134557   2.5544044   2.8824105
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 3.4019547   2.9237914   3.9583178
0-6 months    ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    0                 1.1228733   0.8178090   1.5417348
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.0133714   0.8328428   1.2330317
0-6 months    ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          1                    0                 1.1472425   0.9334382   1.4100186
0-6 months    ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000109-EE               PAKISTAN                       1                    0                 1.3939394   1.0022797   1.9386475
0-6 months    ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000109-ResPak           PAKISTAN                       1                    0                 1.4886040   1.0789869   2.0537245
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0                 1.8756148   1.4944387   2.3540147
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    0                 1.4648447   1.0897405   1.9690652
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.6455006   1.1668648   2.3204677
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.6700000   1.0967074   2.5429755
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.2563916   1.0960895   1.4401377
0-6 months    ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA                         1                    0                 0.9871292   0.8367899   1.1644788
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                 0.7077778   0.5513356   0.9086106
0-6 months    ki1114097-CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1114097-CMIN             BANGLADESH                     1                    0                 1.5964912   0.9364667   2.7217030
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                    0                 1.4062500   0.7278167   2.7170838
0-6 months    ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        1                    0                 1.1647736   1.1258938   1.2049960
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.2051539   1.1143260   1.3033851
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                 1.3093081   1.1706538   1.4643849
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.4812885   1.4111873   1.5548720
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 4.0409091   2.7481004   5.9419031
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                 1.0833333   0.5582161   2.1024313
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.1728395   0.8065797   1.7054143
6-24 months   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          1                    0                 0.6765152   0.4361894   1.0492523
6-24 months   ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000109-EE               PAKISTAN                       1                    0                 1.6515152   0.8773686   3.1087303
6-24 months   ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000109-ResPak           PAKISTAN                       1                    0                 1.2500000   0.5196355   3.0069156
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    0                 1.1562458   0.7972085   1.6769819
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0                 0.5361702   0.3073082   0.9354728
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.1375000   0.5881099   2.2001097
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.0500000   0.4561199   2.4171276
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.9411303   0.6730742   1.3159414
6-24 months   ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         1                    0                 0.4175593   0.2798213   0.6230969
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
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 0.6634869   0.3521595   1.2500440
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 0.8872174   0.7320083   1.0753358
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 0.9708211   0.6806712   1.3846534


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.1830547    0.0876113    0.2784981
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0250122   -0.0877684    0.0377441
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0259259   -0.0943876    0.0425358
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0151641   -0.0848611    0.0545329
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0271356   -0.0194735    0.0737447
0-24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0050522   -0.0444009    0.0545053
0-24 months   ki1000109-EE               PAKISTAN                       0                    NA                 0.0546753    0.0172081    0.0921425
0-24 months   ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0983232    0.0444909    0.1521555
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0855411    0.0602566    0.1108256
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.1175036    0.0580228    0.1769844
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.2529614    0.1876170    0.3183058
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.3933504    0.3098573    0.4768435
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0389458    0.0180046    0.0598871
0-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0167902   -0.0281858   -0.0053946
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                -0.0996161   -0.1363387   -0.0628935
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0233908   -0.0522917    0.0055100
0-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0098870   -0.0223141    0.0420881
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                -0.0364813   -0.0630207   -0.0099420
0-24 months   ki1114097-CMIN             PERU                           0                    NA                 0.0000000   -0.0937534    0.0937534
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.1370074    0.1164220    0.1575928
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.2892860    0.2672855    0.3112864
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0712809    0.0514186    0.0911432
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.1949770    0.1839350    0.2060189
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.1217798    0.1052550    0.1383046
0-6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0440379   -0.0746413    0.1627172
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0047077   -0.0647593    0.0741748
0-6 months    ki1000108-IRC              INDIA                          0                    NA                 0.0470784   -0.0225258    0.1166826
0-6 months    ki1000109-EE               PAKISTAN                       0                    NA                 0.0656566   -0.0022962    0.1336094
0-6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                 0.1165675    0.0261340    0.2070011
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.1638295    0.1091708    0.2184881
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.1941677    0.0646519    0.3236835
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.2728920    0.1219171    0.4238669
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.3383838    0.1236548    0.5531129
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0684234    0.0274543    0.1093925
0-6 months    ki1101329-Keneba           GAMBIA                         0                    NA                -0.0021997   -0.0301844    0.0257850
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.1136560   -0.1952729   -0.0320391
0-6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                 0.1033435   -0.0152904    0.2219773
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                 0.0884354   -0.0743117    0.2511825
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0986897    0.0779486    0.1194308
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.1094829    0.0667685    0.1521973
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.1263149    0.0778336    0.1747962
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.1529089    0.1355835    0.1702343
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.4021906    0.3386435    0.4657378
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0101597   -0.0747426    0.0950619
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0205349   -0.0306672    0.0717371
6-24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0639796   -0.1304065    0.0024473
6-24 months   ki1000109-EE               PAKISTAN                       0                    NA                 0.0195618   -0.0118026    0.0509261
6-24 months   ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0117647   -0.0380483    0.0615777
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0081601   -0.0138130    0.0301333
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0588797   -0.1067464   -0.0110131
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0089910   -0.0387066    0.0566886
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0031746   -0.0510959    0.0574451
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0037294   -0.0238886    0.0164298
6-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0280761   -0.0389822   -0.0171699
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                -0.0996161   -0.1363387   -0.0628935
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0119577   -0.0386809    0.0147656
6-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0053050   -0.0355463    0.0249363
6-24 months   ki1114097-CMIN             PERU                           0                    NA                -0.0599078   -0.1669760    0.0471603
6-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                -0.0078042   -0.0390473    0.0234388
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0051860   -0.0122841    0.0019121
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0106175   -0.0271100    0.0058750
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0006323   -0.0081396    0.0068751


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.2833587    0.1064137    0.4252657
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0416068   -0.1509864    0.0573784
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0328638   -0.1239566    0.0508462
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0190700   -0.1114149    0.0656022
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0429090   -0.0339316    0.1140389
0-24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0085199   -0.0785462    0.0885575
0-24 months   ki1000109-EE               PAKISTAN                       0                    NA                 0.1266165    0.0343001    0.2101079
0-24 months   ki1000109-ResPak           PAKISTAN                       0                    NA                 0.2195122    0.0830305    0.3356800
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.2098608    0.1417677    0.2725514
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.2220114    0.0999452    0.3275229
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.4334451    0.3062997    0.5372866
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.6143566    0.4507447    0.7292319
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0623309    0.0275160    0.0958995
0-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0311344   -0.0525915   -0.0101147
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                -2.2690329   -2.7203187   -1.8724895
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0448458   -0.1010884    0.0085239
0-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0166667   -0.0397298    0.0700041
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                -0.1038315   -0.1829142   -0.0300358
0-24 months   ki1114097-CMIN             PERU                           0                    NA                 0.0000000   -0.1302064    0.1152058
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.1590880    0.1341195    0.1833365
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.5218315    0.4796763    0.5605713
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.1162016    0.0820697    0.1490643
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.4319986    0.4069280    0.4560094
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.4377100    0.3789746    0.4908903
0-6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0644841   -0.1278785    0.2240388
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0069396   -0.1009950    0.1042929
0-6 months    ki1000108-IRC              INDIA                          0                    NA                 0.0738421   -0.0431381    0.1777039
0-6 months    ki1000109-EE               PAKISTAN                       0                    NA                 0.1160714   -0.0162631    0.2311738
0-6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                 0.1918881    0.0205781    0.3332344
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.3031787    0.1893452    0.4010274
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.2708454    0.0608113    0.4339088
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.3462905    0.1136960    0.5178448
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.3785311    0.0755521    0.5822116
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0973387    0.0356062    0.1551196
0-6 months    ki1101329-Keneba           GAMBIA                         0                    NA                -0.0034736   -0.0486458    0.0397527
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.1964152   -0.3512865   -0.0592938
0-6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                 0.1942857   -0.0715613    0.3941779
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                 0.1884058   -0.2502820    0.4731707
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.1114475    0.0873014    0.1349547
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.1469251    0.0871920    0.2027493
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.1706645    0.1003164    0.2355118
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.2222788    0.1956809    0.2479971
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.6989527    0.5686640    0.7898866
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0215385   -0.1763079    0.1861085
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0368421   -0.0594348    0.1243698
6-24 months   ki1000108-IRC              INDIA                          0                    NA                -0.1227717   -0.2630058    0.0018919
6-24 months   ki1000109-EE               PAKISTAN                       0                    NA                 0.0606916   -0.0417154    0.1530314
6-24 months   ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0476190   -0.1746873    0.2278545
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0268119   -0.0480427    0.0963201
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.1874339   -0.3524459   -0.0425550
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0329670   -0.1585994    0.1928593
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0196078   -0.3817338    0.3043748
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0067458   -0.0439222    0.0291066
6-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0556935   -0.0780310   -0.0338189
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                -2.2690329   -2.7203187   -1.8724895
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0241711   -0.0795076    0.0283287
6-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0086207   -0.0589574    0.0393233
6-24 months   ki1114097-CMIN             PERU                           0                    NA                -0.0838710   -0.2522147    0.0618411
6-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                -0.0319783   -0.1682528    0.0884000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0735056   -0.1774048    0.0212251
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0209474   -0.0540441    0.0111100
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0041089   -0.0540935    0.0435054
