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

**Intervention Variable:** mage

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        mage       pers_wast   n_cell      n
------------  -------------------------  -----------------------------  --------  ----------  -------  -----
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)            0      162    248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)            1        7    248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                0       31    248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                1        4    248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30               0       42    248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30               1        2    248
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)            0      127    217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)            1        1    217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <20                0       40    217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <20                1        0    217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30               0       48    217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30               1        1    217
0-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)            0      165    239
0-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)            1       19    239
0-24 months   ki0047075b-MAL-ED          INDIA                          <20                0       32    239
0-24 months   ki0047075b-MAL-ED          INDIA                          <20                1        2    239
0-24 months   ki0047075b-MAL-ED          INDIA                          >=30               0       21    239
0-24 months   ki0047075b-MAL-ED          INDIA                          >=30               1        0    239
0-24 months   ki0047075b-MAL-ED          NEPAL                          [20-30)            0      183    238
0-24 months   ki0047075b-MAL-ED          NEPAL                          [20-30)            1        4    238
0-24 months   ki0047075b-MAL-ED          NEPAL                          <20                0        5    238
0-24 months   ki0047075b-MAL-ED          NEPAL                          <20                1        0    238
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=30               0       46    238
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=30               1        0    238
0-24 months   ki0047075b-MAL-ED          PERU                           [20-30)            0      143    284
0-24 months   ki0047075b-MAL-ED          PERU                           [20-30)            1        0    284
0-24 months   ki0047075b-MAL-ED          PERU                           <20                0       77    284
0-24 months   ki0047075b-MAL-ED          PERU                           <20                1        1    284
0-24 months   ki0047075b-MAL-ED          PERU                           >=30               0       63    284
0-24 months   ki0047075b-MAL-ED          PERU                           >=30               1        0    284
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)            0      133    273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)            1        1    273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                0       42    273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                1        0    273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30               0       96    273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30               1        1    273
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)            0      132    253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)            1        0    253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                0       15    253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                1        0    253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30               0      106    253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30               1        0    253
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)            0      277    373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)            1       19    373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                0       33    373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                1        1    373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30               0       40    373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30               1        3    373
0-24 months   ki1000108-IRC              INDIA                          [20-30)            0      307    410
0-24 months   ki1000108-IRC              INDIA                          [20-30)            1       37    410
0-24 months   ki1000108-IRC              INDIA                          <20                0       33    410
0-24 months   ki1000108-IRC              INDIA                          <20                1        4    410
0-24 months   ki1000108-IRC              INDIA                          >=30               0       22    410
0-24 months   ki1000108-IRC              INDIA                          >=30               1        7    410
0-24 months   ki1000109-EE               PAKISTAN                       [20-30)            0      152    374
0-24 months   ki1000109-EE               PAKISTAN                       [20-30)            1        9    374
0-24 months   ki1000109-EE               PAKISTAN                       <20                0        1    374
0-24 months   ki1000109-EE               PAKISTAN                       <20                1        0    374
0-24 months   ki1000109-EE               PAKISTAN                       >=30               0      193    374
0-24 months   ki1000109-EE               PAKISTAN                       >=30               1       19    374
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)            0      295    428
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)            1       26    428
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                0       60    428
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                1        4    428
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30               0       41    428
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30               1        2    428
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)            0       60     94
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)            1        9     94
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                0        7     94
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                1        1     94
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30               0        9     94
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30               1        8     94
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)            0      322    532
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)            1       36    532
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                0       58    532
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                1        3    532
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30               0      105    532
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30               1        8    532
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)            0      439    640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)            1        9    640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                0       73    640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                1        1    640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30               0      113    640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30               1        5    640
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)            0      458    730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)            1       16    730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                0      128    730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                1        5    730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30               0      118    730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30               1        5    730
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)            0     1369   2148
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)            1       35   2148
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                0      147   2148
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                1        6   2148
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30               0      574   2148
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30               1       17   2148
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)            0     1109   2419
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)            1       51   2419
0-24 months   ki1101329-Keneba           GAMBIA                         <20                0      338   2419
0-24 months   ki1101329-Keneba           GAMBIA                         <20                1       16   2419
0-24 months   ki1101329-Keneba           GAMBIA                         >=30               0      842   2419
0-24 months   ki1101329-Keneba           GAMBIA                         >=30               1       63   2419
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)            0      159    250
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)            1        2    250
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                0       35    250
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                1        1    250
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30               0       52    250
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30               1        1    250
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)            0      335    592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)            1       48    592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                0      100    592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                1       20    592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30               0       72    592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30               1       17    592
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)            0     5676   7972
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)            1       68   7972
0-24 months   ki1119695-PROBIT           BELARUS                        <20                0      790   7972
0-24 months   ki1119695-PROBIT           BELARUS                        <20                1        7   7972
0-24 months   ki1119695-PROBIT           BELARUS                        >=30               0     1411   7972
0-24 months   ki1119695-PROBIT           BELARUS                        >=30               1       20   7972
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)            0     6073   9311
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)            1      117   9311
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                0     1395   9311
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                1       19   9311
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30               0     1677   9311
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30               1       30   9311
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)            0      226    514
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)            1       11    514
0-24 months   ki1135781-COHORTS          GUATEMALA                      <20                0       71    514
0-24 months   ki1135781-COHORTS          GUATEMALA                      <20                1        5    514
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30               0      191    514
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30               1       10    514
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)            0     2483   4068
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)            1      254   4068
0-24 months   ki1135781-COHORTS          INDIA                          <20                0      233   4068
0-24 months   ki1135781-COHORTS          INDIA                          <20                1       40   4068
0-24 months   ki1135781-COHORTS          INDIA                          >=30               0      947   4068
0-24 months   ki1135781-COHORTS          INDIA                          >=30               1      111   4068
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)            0     1589   2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)            1       87   2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                0      327   2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                1       17   2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30               0      751   2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30               1       40   2811
0-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)            0      311    581
0-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)            1        1    581
0-24 months   ki1148112-LCNI-5           MALAWI                         <20                0       93    581
0-24 months   ki1148112-LCNI-5           MALAWI                         <20                1        2    581
0-24 months   ki1148112-LCNI-5           MALAWI                         >=30               0      172    581
0-24 months   ki1148112-LCNI-5           MALAWI                         >=30               1        2    581
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)            0     3372   7758
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)            1      201   7758
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                0     3427   7758
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                1      216   7758
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30               0      508   7758
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30               1       34   7758
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)            0      164    248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)            1        5    248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <20                0       33    248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <20                1        2    248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30               0       44    248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30               1        0    248
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)            0      128    217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)            1        0    217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <20                0       40    217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <20                1        0    217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=30               0       48    217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=30               1        1    217
0-6 months    ki0047075b-MAL-ED          INDIA                          [20-30)            0      168    238
0-6 months    ki0047075b-MAL-ED          INDIA                          [20-30)            1       15    238
0-6 months    ki0047075b-MAL-ED          INDIA                          <20                0       32    238
0-6 months    ki0047075b-MAL-ED          INDIA                          <20                1        2    238
0-6 months    ki0047075b-MAL-ED          INDIA                          >=30               0       19    238
0-6 months    ki0047075b-MAL-ED          INDIA                          >=30               1        2    238
0-6 months    ki0047075b-MAL-ED          NEPAL                          [20-30)            0      181    237
0-6 months    ki0047075b-MAL-ED          NEPAL                          [20-30)            1        5    237
0-6 months    ki0047075b-MAL-ED          NEPAL                          <20                0        5    237
0-6 months    ki0047075b-MAL-ED          NEPAL                          <20                1        0    237
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=30               0       46    237
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=30               1        0    237
0-6 months    ki0047075b-MAL-ED          PERU                           [20-30)            0      143    284
0-6 months    ki0047075b-MAL-ED          PERU                           [20-30)            1        0    284
0-6 months    ki0047075b-MAL-ED          PERU                           <20                0       78    284
0-6 months    ki0047075b-MAL-ED          PERU                           <20                1        0    284
0-6 months    ki0047075b-MAL-ED          PERU                           >=30               0       63    284
0-6 months    ki0047075b-MAL-ED          PERU                           >=30               1        0    284
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)            0      133    271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)            1        1    271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                0       40    271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                1        0    271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30               0       96    271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30               1        1    271
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)            0      132    253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)            1        0    253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                0       15    253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                1        0    253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30               0      106    253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30               1        0    253
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)            0      242    358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)            1       42    358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                0       29    358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                1        4    358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30               0       37    358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30               1        4    358
0-6 months    ki1000108-IRC              INDIA                          [20-30)            0      285    402
0-6 months    ki1000108-IRC              INDIA                          [20-30)            1       53    402
0-6 months    ki1000108-IRC              INDIA                          <20                0       30    402
0-6 months    ki1000108-IRC              INDIA                          <20                1        5    402
0-6 months    ki1000108-IRC              INDIA                          >=30               0       23    402
0-6 months    ki1000108-IRC              INDIA                          >=30               1        6    402
0-6 months    ki1000109-EE               PAKISTAN                       [20-30)            0      145    364
0-6 months    ki1000109-EE               PAKISTAN                       [20-30)            1       14    364
0-6 months    ki1000109-EE               PAKISTAN                       <20                0        1    364
0-6 months    ki1000109-EE               PAKISTAN                       <20                1        0    364
0-6 months    ki1000109-EE               PAKISTAN                       >=30               0      191    364
0-6 months    ki1000109-EE               PAKISTAN                       >=30               1       13    364
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)            0      101    168
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)            1       10    168
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                0       20    168
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                1        0    168
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30               0       36    168
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30               1        1    168
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)            0      437    637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)            1       10    637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <20                0       73    637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <20                1        0    637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30               0      113    637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30               1        4    637
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)            0      164    250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)            1        0    250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                0       40    250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                1        2    250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30               0       41    250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30               1        3    250
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)            0     1311   2044
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)            1       27   2044
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                0      137   2044
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                1        6   2044
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30               0      544   2044
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30               1       19   2044
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)            0      944   2031
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)            1       11   2031
0-6 months    ki1101329-Keneba           GAMBIA                         <20                0      295   2031
0-6 months    ki1101329-Keneba           GAMBIA                         <20                1        4   2031
0-6 months    ki1101329-Keneba           GAMBIA                         >=30               0      741   2031
0-6 months    ki1101329-Keneba           GAMBIA                         >=30               1       36   2031
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)            0      315    542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)            1       38    542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <20                0       89    542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <20                1       13    542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30               0       73    542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30               1       14    542
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)            0     4319   6657
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)            1      469   6657
0-6 months    ki1119695-PROBIT           BELARUS                        <20                0      594   6657
0-6 months    ki1119695-PROBIT           BELARUS                        <20                1       45   6657
0-6 months    ki1119695-PROBIT           BELARUS                        >=30               0     1117   6657
0-6 months    ki1119695-PROBIT           BELARUS                        >=30               1      113   6657
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)            0      394    609
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)            1       11    609
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                0       97    609
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                1        1    609
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30               0      104    609
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30               1        2    609
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)            0      476    853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)            1       31    853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <20                0       83    853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <20                1        6    853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30               0      242    853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30               1       15    853
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)            0       13     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)            1        1     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                0        8     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                1        1     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30               0        2     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30               1        0     25
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)            0      162    248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)            1        7    248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                0       31    248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                1        4    248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30               0       42    248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30               1        2    248
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)            0      127    217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)            1        1    217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <20                0       40    217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <20                1        0    217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30               0       48    217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30               1        1    217
6-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)            0      165    239
6-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)            1       19    239
6-24 months   ki0047075b-MAL-ED          INDIA                          <20                0       32    239
6-24 months   ki0047075b-MAL-ED          INDIA                          <20                1        2    239
6-24 months   ki0047075b-MAL-ED          INDIA                          >=30               0       21    239
6-24 months   ki0047075b-MAL-ED          INDIA                          >=30               1        0    239
6-24 months   ki0047075b-MAL-ED          NEPAL                          [20-30)            0      183    238
6-24 months   ki0047075b-MAL-ED          NEPAL                          [20-30)            1        4    238
6-24 months   ki0047075b-MAL-ED          NEPAL                          <20                0        5    238
6-24 months   ki0047075b-MAL-ED          NEPAL                          <20                1        0    238
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=30               0       46    238
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=30               1        0    238
6-24 months   ki0047075b-MAL-ED          PERU                           [20-30)            0      143    284
6-24 months   ki0047075b-MAL-ED          PERU                           [20-30)            1        0    284
6-24 months   ki0047075b-MAL-ED          PERU                           <20                0       77    284
6-24 months   ki0047075b-MAL-ED          PERU                           <20                1        1    284
6-24 months   ki0047075b-MAL-ED          PERU                           >=30               0       63    284
6-24 months   ki0047075b-MAL-ED          PERU                           >=30               1        0    284
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)            0      133    273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)            1        1    273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                0       42    273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                1        0    273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30               0       96    273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30               1        1    273
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)            0      132    253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)            1        0    253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                0       15    253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                1        0    253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30               0      106    253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30               1        0    253
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)            0      277    373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)            1       19    373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                0       33    373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                1        1    373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30               0       40    373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30               1        3    373
6-24 months   ki1000108-IRC              INDIA                          [20-30)            0      307    410
6-24 months   ki1000108-IRC              INDIA                          [20-30)            1       37    410
6-24 months   ki1000108-IRC              INDIA                          <20                0       33    410
6-24 months   ki1000108-IRC              INDIA                          <20                1        4    410
6-24 months   ki1000108-IRC              INDIA                          >=30               0       22    410
6-24 months   ki1000108-IRC              INDIA                          >=30               1        7    410
6-24 months   ki1000109-EE               PAKISTAN                       [20-30)            0      152    374
6-24 months   ki1000109-EE               PAKISTAN                       [20-30)            1        9    374
6-24 months   ki1000109-EE               PAKISTAN                       <20                0        1    374
6-24 months   ki1000109-EE               PAKISTAN                       <20                1        0    374
6-24 months   ki1000109-EE               PAKISTAN                       >=30               0      193    374
6-24 months   ki1000109-EE               PAKISTAN                       >=30               1       19    374
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)            0      295    428
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)            1       26    428
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                0       60    428
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                1        4    428
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30               0       41    428
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30               1        2    428
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)            0       60     94
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)            1        9     94
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                0        7     94
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                1        1     94
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30               0        9     94
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30               1        8     94
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)            0      322    532
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)            1       36    532
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                0       58    532
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                1        3    532
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30               0      105    532
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30               1        8    532
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)            0      439    640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)            1        9    640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                0       73    640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                1        1    640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30               0      113    640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30               1        5    640
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)            0      458    730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)            1       16    730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                0      128    730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                1        5    730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30               0      118    730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30               1        5    730
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)            0     1369   2148
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)            1       35   2148
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                0      147   2148
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                1        6   2148
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30               0      574   2148
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30               1       17   2148
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)            0     1109   2419
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)            1       51   2419
6-24 months   ki1101329-Keneba           GAMBIA                         <20                0      338   2419
6-24 months   ki1101329-Keneba           GAMBIA                         <20                1       16   2419
6-24 months   ki1101329-Keneba           GAMBIA                         >=30               0      842   2419
6-24 months   ki1101329-Keneba           GAMBIA                         >=30               1       63   2419
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)            0      159    250
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)            1        2    250
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                0       35    250
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                1        1    250
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30               0       52    250
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30               1        1    250
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)            0      335    592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)            1       48    592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                0      100    592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                1       20    592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30               0       72    592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30               1       17    592
6-24 months   ki1119695-PROBIT           BELARUS                        [20-30)            0     5676   7972
6-24 months   ki1119695-PROBIT           BELARUS                        [20-30)            1       68   7972
6-24 months   ki1119695-PROBIT           BELARUS                        <20                0      790   7972
6-24 months   ki1119695-PROBIT           BELARUS                        <20                1        7   7972
6-24 months   ki1119695-PROBIT           BELARUS                        >=30               0     1411   7972
6-24 months   ki1119695-PROBIT           BELARUS                        >=30               1       20   7972
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)            0     6073   9311
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)            1      117   9311
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                0     1395   9311
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                1       19   9311
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30               0     1677   9311
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30               1       30   9311
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)            0      226    514
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)            1       11    514
6-24 months   ki1135781-COHORTS          GUATEMALA                      <20                0       71    514
6-24 months   ki1135781-COHORTS          GUATEMALA                      <20                1        5    514
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=30               0      191    514
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=30               1       10    514
6-24 months   ki1135781-COHORTS          INDIA                          [20-30)            0     2483   4068
6-24 months   ki1135781-COHORTS          INDIA                          [20-30)            1      254   4068
6-24 months   ki1135781-COHORTS          INDIA                          <20                0      233   4068
6-24 months   ki1135781-COHORTS          INDIA                          <20                1       40   4068
6-24 months   ki1135781-COHORTS          INDIA                          >=30               0      947   4068
6-24 months   ki1135781-COHORTS          INDIA                          >=30               1      111   4068
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)            0     1589   2811
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)            1       87   2811
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                0      327   2811
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                1       17   2811
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30               0      751   2811
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30               1       40   2811
6-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)            0      311    581
6-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)            1        1    581
6-24 months   ki1148112-LCNI-5           MALAWI                         <20                0       93    581
6-24 months   ki1148112-LCNI-5           MALAWI                         <20                1        2    581
6-24 months   ki1148112-LCNI-5           MALAWI                         >=30               0      172    581
6-24 months   ki1148112-LCNI-5           MALAWI                         >=30               1        2    581
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)            0     3372   7758
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)            1      201   7758
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                0     3427   7758
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                1      216   7758
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30               0      508   7758
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30               1       34   7758


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
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
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
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

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
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
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
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
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
![](/tmp/333a2921-0199-4500-a262-c4fe26df5e5c/626aa46f-fa9e-4d26-bfc6-a5eacb27e0c9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/333a2921-0199-4500-a262-c4fe26df5e5c/626aa46f-fa9e-4d26-bfc6-a5eacb27e0c9/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/333a2921-0199-4500-a262-c4fe26df5e5c/626aa46f-fa9e-4d26-bfc6-a5eacb27e0c9/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/333a2921-0199-4500-a262-c4fe26df5e5c/626aa46f-fa9e-4d26-bfc6-a5eacb27e0c9/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                0.0337553    0.0174859   0.0500247
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                0.0375940    0.0052452   0.0699428
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.0406504    0.0057272   0.0755736
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.0249288    0.0167717   0.0330858
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.0392157    0.0084514   0.0699799
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.0287648    0.0152861   0.0422435
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                0.0439655    0.0321650   0.0557661
0-24 months   ki1101329-Keneba           GAMBIA                         <20                  NA                0.0451977    0.0235531   0.0668424
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                0.0696133    0.0530292   0.0861973
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                0.1253264    0.0921400   0.1585128
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.1666667    0.0999309   0.2334024
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.1910112    0.1092738   0.2727487
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                0.0118384    0.0050103   0.0186665
0-24 months   ki1119695-PROBIT           BELARUS                        <20                  NA                0.0087829   -0.0000427   0.0176085
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                 NA                0.0139762    0.0031925   0.0247600
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.0189015    0.0155089   0.0222940
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.0134371    0.0074355   0.0194386
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.0175747    0.0113410   0.0238084
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                0.0464135    0.0196034   0.0732236
0-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.0657895    0.0099984   0.1215806
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.0497512    0.0196632   0.0798393
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                0.0928023    0.0819307   0.1036740
0-24 months   ki1135781-COHORTS          INDIA                          <20                  NA                0.1465201    0.1045669   0.1884734
0-24 months   ki1135781-COHORTS          INDIA                          >=30                 NA                0.1049149    0.0864474   0.1233825
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                0.0519093    0.0412866   0.0625320
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.0494186    0.0265107   0.0723265
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.0505689    0.0352964   0.0658414
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                0.0562552    0.0480856   0.0644249
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                0.0592918    0.0512529   0.0673307
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.0627306    0.0434465   0.0820148
0-6 months    ki1000108-IRC              INDIA                          [20-30)              NA                0.1568047    0.1179920   0.1956175
0-6 months    ki1000108-IRC              INDIA                          <20                  NA                0.1428571    0.0267838   0.2589305
0-6 months    ki1000108-IRC              INDIA                          >=30                 NA                0.2068966    0.0592812   0.3545119
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.0201794    0.0126432   0.0277156
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.0419580    0.0090891   0.0748270
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.0337478    0.0188278   0.0486678
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                0.1076487    0.0752868   0.1400106
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.1274510    0.0626748   0.1922272
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.1609195    0.0836345   0.2382046
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)              NA                0.0979532    0.0445346   0.1513718
0-6 months    ki1119695-PROBIT           BELARUS                        <20                  NA                0.0704225    0.0398221   0.1010230
0-6 months    ki1119695-PROBIT           BELARUS                        >=30                 NA                0.0918699    0.0449882   0.1387516
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                0.0611440    0.0402763   0.0820117
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.0674157    0.0152924   0.1195391
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.0583658    0.0296873   0.0870443
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                0.0337553    0.0174859   0.0500247
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                0.0375940    0.0052452   0.0699428
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.0406504    0.0057272   0.0755736
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.0249288    0.0167717   0.0330858
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.0392157    0.0084514   0.0699799
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.0287648    0.0152861   0.0422435
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                0.0439655    0.0321650   0.0557661
6-24 months   ki1101329-Keneba           GAMBIA                         <20                  NA                0.0451977    0.0235531   0.0668424
6-24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                0.0696133    0.0530292   0.0861973
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                0.1253264    0.0921400   0.1585128
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.1666667    0.0999309   0.2334024
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.1910112    0.1092738   0.2727487
6-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                0.0118384    0.0050103   0.0186665
6-24 months   ki1119695-PROBIT           BELARUS                        <20                  NA                0.0087829   -0.0000427   0.0176085
6-24 months   ki1119695-PROBIT           BELARUS                        >=30                 NA                0.0139762    0.0031925   0.0247600
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.0189015    0.0155089   0.0222940
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.0134371    0.0074355   0.0194386
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.0175747    0.0113410   0.0238084
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                0.0464135    0.0196034   0.0732236
6-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.0657895    0.0099984   0.1215806
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.0497512    0.0196632   0.0798393
6-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                0.0928023    0.0819307   0.1036740
6-24 months   ki1135781-COHORTS          INDIA                          <20                  NA                0.1465201    0.1045669   0.1884734
6-24 months   ki1135781-COHORTS          INDIA                          >=30                 NA                0.1049149    0.0864474   0.1233825
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                0.0519093    0.0412866   0.0625320
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.0494186    0.0265107   0.0723265
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.0505689    0.0352964   0.0658414
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                0.0562552    0.0480856   0.0644249
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                0.0592918    0.0512529   0.0673307
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.0627306    0.0434465   0.0820148


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0356164   0.0221630   0.0490699
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0270019   0.0201456   0.0338581
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.0537412   0.0447529   0.0627295
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1435811   0.1153098   0.1718524
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0119167   0.0046062   0.0192272
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0178284   0.0151404   0.0205163
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0505837   0.0316200   0.0695473
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0995575   0.0903557   0.1087594
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0512273   0.0430760   0.0593786
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0581335   0.0523249   0.0639422
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.1592040   0.1233945   0.1950135
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0254403   0.0186125   0.0322681
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1199262   0.0925504   0.1473020
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0941866   0.0454872   0.1428859
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0609613   0.0448957   0.0770269
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0356164   0.0221630   0.0490699
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0270019   0.0201456   0.0338581
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.0537412   0.0447529   0.0627295
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1435811   0.1153098   0.1718524
6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0119167   0.0046062   0.0192272
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0178284   0.0151404   0.0205163
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0505837   0.0316200   0.0695473
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0995575   0.0903557   0.1087594
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0512273   0.0430760   0.0593786
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0581335   0.0523249   0.0639422


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  [20-30)           1.1137218   0.4153797   2.986127
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [20-30)           1.2042683   0.4496864   3.225052
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           1.5731092   0.6723736   3.680502
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           1.1538796   0.6515543   2.043480
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ki1101329-Keneba           GAMBIA                         <20                  [20-30)           1.0280270   0.5937273   1.780008
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           1.5833604   1.1059104   2.266938
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           1.3298611   0.8228527   2.149268
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           1.5241105   0.9214446   2.520947
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT           BELARUS                        <20                  [20-30)           0.7418998   0.3300901   1.667470
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                 [20-30)           1.1805812   0.7970988   1.748556
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           0.7109008   0.4392980   1.150426
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           0.9298064   0.6248112   1.383682
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)           1.4174641   0.5080398   3.954817
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)           1.0719131   0.4644682   2.473792
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          INDIA                          <20                  [20-30)           1.5788411   1.1587274   2.151273
0-24 months   ki1135781-COHORTS          INDIA                          >=30                 [20-30)           1.1305204   0.9150605   1.396712
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           0.9520182   0.5735666   1.580180
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           0.9741779   0.6763961   1.403057
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)           1.0539780   0.8742819   1.270608
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           1.1151071   0.7956617   1.562805
0-6 months    ki1000108-IRC              INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-6 months    ki1000108-IRC              INDIA                          <20                  [20-30)           0.9110512   0.3896386   2.130216
0-6 months    ki1000108-IRC              INDIA                          >=30                 [20-30)           1.3194535   0.6200390   2.807819
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           2.0792541   0.8729867   4.952306
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           1.6723900   0.9375588   2.983160
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           1.1839525   0.6559706   2.136900
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           1.4948578   0.8482588   2.634337
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT           BELARUS                        <20                  [20-30)           0.7189405   0.4707561   1.097969
0-6 months    ki1119695-PROBIT           BELARUS                        >=30                 [20-30)           0.9378959   0.7643033   1.150916
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           1.1025734   0.4735529   2.567122
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           0.9545626   0.5247893   1.736296
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  [20-30)           1.1137218   0.4153797   2.986127
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [20-30)           1.2042683   0.4496864   3.225052
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           1.5731092   0.6723736   3.680502
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           1.1538796   0.6515543   2.043480
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.000000
6-24 months   ki1101329-Keneba           GAMBIA                         <20                  [20-30)           1.0280270   0.5937273   1.780008
6-24 months   ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           1.5833604   1.1059104   2.266938
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           1.3298611   0.8228527   2.149268
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           1.5241105   0.9214446   2.520947
6-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)           1.0000000   1.0000000   1.000000
6-24 months   ki1119695-PROBIT           BELARUS                        <20                  [20-30)           0.7418998   0.3300901   1.667470
6-24 months   ki1119695-PROBIT           BELARUS                        >=30                 [20-30)           1.1805812   0.7970988   1.748556
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           0.7109008   0.4392980   1.150426
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           0.9298064   0.6248112   1.383682
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)           1.4174641   0.5080398   3.954817
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)           1.0719131   0.4644682   2.473792
6-24 months   ki1135781-COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          INDIA                          <20                  [20-30)           1.5788411   1.1587274   2.151273
6-24 months   ki1135781-COHORTS          INDIA                          >=30                 [20-30)           1.1305204   0.9150605   1.396712
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           0.9520182   0.5735666   1.580180
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           0.9741779   0.6763961   1.403057
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)           1.0539780   0.8742819   1.270608
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           1.1151071   0.7956617   1.562805


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0018612   -0.0082359   0.0119582
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0020731   -0.0030809   0.0072270
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0097757    0.0004758   0.0190756
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0182547   -0.0035527   0.0400621
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                 0.0000783   -0.0015237   0.0016803
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0010731   -0.0029255   0.0007793
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.0041702   -0.0162151   0.0245554
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0067552    0.0001352   0.0133752
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                -0.0006820   -0.0073698   0.0060058
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0018783   -0.0037354   0.0074920
0-6 months    ki1000108-IRC              INDIA                          [20-30)              NA                 0.0023992   -0.0135867   0.0183852
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0052609   -0.0001296   0.0106515
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0122775   -0.0085201   0.0330750
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)              NA                -0.0037666   -0.0102809   0.0027476
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                -0.0001827   -0.0134459   0.0130805
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0018612   -0.0082359   0.0119582
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0020731   -0.0030809   0.0072270
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0097757    0.0004758   0.0190756
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0182547   -0.0035527   0.0400621
6-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                 0.0000783   -0.0015237   0.0016803
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0010731   -0.0029255   0.0007793
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.0041702   -0.0162151   0.0245554
6-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0067552    0.0001352   0.0133752
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                -0.0006820   -0.0073698   0.0060058
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0018783   -0.0037354   0.0074920


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0522558   -0.2773402   0.2968051
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0767757   -0.1340989   0.2484402
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.1819032   -0.0077975   0.3358959
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.1271387   -0.0370152   0.2653079
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                 0.0065680   -0.1355954   0.1309341
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0601894   -0.1689331   0.0384381
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.0824408   -0.4219145   0.4079005
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0678521   -0.0008186   0.1318109
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                -0.0133129   -0.1526293   0.1091644
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0323100   -0.0693796   0.1243296
0-6 months    ki1000108-IRC              INDIA                          [20-30)              NA                 0.0150703   -0.0905985   0.1105008
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.2067954   -0.0268777   0.3872947
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.1023752   -0.0874828   0.2590869
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)              NA                -0.0399913   -0.0984047   0.0153156
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                -0.0029965   -0.2459623   0.1925903
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0522558   -0.2773402   0.2968051
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0767757   -0.1340989   0.2484402
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.1819032   -0.0077975   0.3358959
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.1271387   -0.0370152   0.2653079
6-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                 0.0065680   -0.1355954   0.1309341
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0601894   -0.1689331   0.0384381
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.0824408   -0.4219145   0.4079005
6-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0678521   -0.0008186   0.1318109
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                -0.0133129   -0.1526293   0.1091644
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0323100   -0.0693796   0.1243296
