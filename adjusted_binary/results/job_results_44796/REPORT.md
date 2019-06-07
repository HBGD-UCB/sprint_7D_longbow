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

**Intervention Variable:** mwtkg

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        mwtkg         pers_wast   n_cell      n
------------  -------------------------  -----------------------------  -----------  ----------  -------  -----
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg               0       45    248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg               1        2    248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg                0      149    248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg                1        9    248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg            0       41    248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg            1        2    248
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg               0      139    216
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg               1        1    216
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg                0       40    216
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg                1        0    216
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg            0       35    216
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg            1        1    216
0-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg               0       39    240
0-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg               1        2    240
0-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg                0      132    240
0-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg                1       17    240
0-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg            0       48    240
0-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg            1        2    240
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg               0       80    238
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg               1        0    238
0-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg                0       73    238
0-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg                1        3    238
0-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg            0       81    238
0-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg            1        1    238
0-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg               0      103    283
0-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg               1        0    283
0-24 months   ki0047075b-MAL-ED          PERU                           <52 kg                0      110    283
0-24 months   ki0047075b-MAL-ED          PERU                           <52 kg                1        1    283
0-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg            0       69    283
0-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg            1        0    283
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg               0      189    265
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg               1        1    265
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                0       30    265
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                1        0    265
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg            0       44    265
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg            1        1    265
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg               0       97    253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg               1        0    253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                0       97    253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                1        0    253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg            0       59    253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg            1        0    253
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg               0       28    427
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg               1        2    427
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg                0      303    427
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg                1       26    427
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg            0       64    427
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg            1        4    427
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg               0       68    534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg               1        1    534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg                0      340    534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg                1       44    534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg            0       79    534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg            1        2    534
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg               0      117    639
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg               1        0    639
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg                0      396    639
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg                1       14    639
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg            0      111    639
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg            1        1    639
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg               0      188    730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg               1        0    730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg                0      366    730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg                1       25    730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg            0      150    730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg            1        1    730
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg               0     1311   2126
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg               1       31   2126
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                0      334   2126
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                1       13   2126
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg            0      424   2126
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg            1       13   2126
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg               0     4929   6710
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg               1       59   6710
0-24 months   ki1119695-PROBIT           BELARUS                        <52 kg                0      545   6710
0-24 months   ki1119695-PROBIT           BELARUS                        <52 kg                1        1   6710
0-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg            0     1167   6710
0-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg            1        9   6710
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg               0     4614   9004
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg               1       57   9004
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                0     1884   9004
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                1       63   9004
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg            0     2345   9004
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg            1       41   9004
0-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg               0       96    717
0-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg               1        1    717
0-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg                0      426    717
0-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg                1        3    717
0-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg            0      189    717
0-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg            1        2    717
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg               0       45    248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg               1        2    248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg                0      153    248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg                1        5    248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg            0       43    248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg            1        0    248
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg               0      139    216
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg               1        1    216
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg                0       40    216
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg                1        0    216
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg            0       36    216
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg            1        0    216
0-6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg               0       38    239
0-6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg               1        2    239
0-6 months    ki0047075b-MAL-ED          INDIA                          <52 kg                0      135    239
0-6 months    ki0047075b-MAL-ED          INDIA                          <52 kg                1       14    239
0-6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg            0       47    239
0-6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg            1        3    239
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg               0       80    237
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg               1        0    237
0-6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg                0       72    237
0-6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg                1        3    237
0-6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg            0       80    237
0-6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg            1        2    237
0-6 months    ki0047075b-MAL-ED          PERU                           >=58 kg               0      103    283
0-6 months    ki0047075b-MAL-ED          PERU                           >=58 kg               1        0    283
0-6 months    ki0047075b-MAL-ED          PERU                           <52 kg                0      111    283
0-6 months    ki0047075b-MAL-ED          PERU                           <52 kg                1        0    283
0-6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg            0       69    283
0-6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg            1        0    283
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg               0      189    263
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg               1        1    263
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                0       28    263
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                1        1    263
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg            0       44    263
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg            1        0    263
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg               0       97    253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg               1        0    253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                0       97    253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                1        0    253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg            0       59    253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg            1        0    253
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg               0       14    169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg               1        2    169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg                0      124    169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg                1        8    169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg            0       20    169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg            1        1    169
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg               0      115    636
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg               1        1    636
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg                0      398    636
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg                1       11    636
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg            0      109    636
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg            1        2    636
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg               0       64    250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg               1        0    250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg                0      126    250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg                1        4    250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg            0       55    250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg            1        1    250
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg               0     1258   2022
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg               1       27   2022
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                0      314   2022
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                1        9   2022
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg            0      399   2022
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg            1       15   2022
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg               0     4381   6503
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg               1      462   6503
0-6 months    ki1119695-PROBIT           BELARUS                        <52 kg                0      476   6503
0-6 months    ki1119695-PROBIT           BELARUS                        <52 kg                1       48   6503
0-6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg            0     1031   6503
0-6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg            1      105   6503
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg               0      316    609
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg               1        8    609
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                0      119    609
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                1        2    609
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg            0      160    609
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg            1        4    609
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg               0       45    248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg               1        2    248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg                0      149    248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg                1        9    248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg            0       41    248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg            1        2    248
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg               0      139    216
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg               1        1    216
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg                0       40    216
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg                1        0    216
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg            0       35    216
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg            1        1    216
6-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg               0       39    240
6-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg               1        2    240
6-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg                0      132    240
6-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg                1       17    240
6-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg            0       48    240
6-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg            1        2    240
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg               0       80    238
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg               1        0    238
6-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg                0       73    238
6-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg                1        3    238
6-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg            0       81    238
6-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg            1        1    238
6-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg               0      103    283
6-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg               1        0    283
6-24 months   ki0047075b-MAL-ED          PERU                           <52 kg                0      110    283
6-24 months   ki0047075b-MAL-ED          PERU                           <52 kg                1        1    283
6-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg            0       69    283
6-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg            1        0    283
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg               0      189    265
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg               1        1    265
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                0       30    265
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                1        0    265
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg            0       44    265
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg            1        1    265
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg               0       97    253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg               1        0    253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                0       97    253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                1        0    253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg            0       59    253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg            1        0    253
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg               0       28    427
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg               1        2    427
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg                0      303    427
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg                1       26    427
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg            0       64    427
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg            1        4    427
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg               0       68    534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg               1        1    534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg                0      340    534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg                1       44    534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg            0       79    534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg            1        2    534
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg               0      117    639
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg               1        0    639
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg                0      396    639
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg                1       14    639
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg            0      111    639
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg            1        1    639
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg               0      188    730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg               1        0    730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg                0      366    730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg                1       25    730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg            0      150    730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg            1        1    730
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg               0     1311   2126
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg               1       31   2126
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                0      334   2126
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                1       13   2126
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg            0      424   2126
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg            1       13   2126
6-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg               0     4929   6710
6-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg               1       59   6710
6-24 months   ki1119695-PROBIT           BELARUS                        <52 kg                0      545   6710
6-24 months   ki1119695-PROBIT           BELARUS                        <52 kg                1        1   6710
6-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg            0     1167   6710
6-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg            1        9   6710
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg               0     4614   9004
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg               1       57   9004
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                0     1884   9004
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                1       63   9004
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg            0     2345   9004
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg            1       41   9004
6-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg               0       96    717
6-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg               1        1    717
6-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg                0      426    717
6-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg                1        3    717
6-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg            0      189    717
6-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg            1        2    717


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
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
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
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
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
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
![](/tmp/6d514eaf-ca2c-43e0-a273-d615e4206d6e/032606f2-6933-49fa-a6a8-f5e1dbc454bb/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6d514eaf-ca2c-43e0-a273-d615e4206d6e/032606f2-6933-49fa-a6a8-f5e1dbc454bb/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6d514eaf-ca2c-43e0-a273-d615e4206d6e/032606f2-6933-49fa-a6a8-f5e1dbc454bb/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6d514eaf-ca2c-43e0-a273-d615e4206d6e/032606f2-6933-49fa-a6a8-f5e1dbc454bb/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0230999   0.0150608   0.0311389
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.0374640   0.0174791   0.0574488
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.0297483   0.0138158   0.0456807
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0122030   0.0090542   0.0153517
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.0323575   0.0244973   0.0402177
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.0171836   0.0119689   0.0223983
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0210117   0.0131679   0.0288554
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.0278638   0.0099107   0.0458168
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.0362319   0.0182271   0.0542366
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0953954   0.0436672   0.1471236
0-6 months    ki1119695-PROBIT           BELARUS                        <52 kg               NA                0.0916031   0.0393780   0.1438281
0-6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                0.0924296   0.0453812   0.1394779
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0230999   0.0150608   0.0311389
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.0374640   0.0174791   0.0574488
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.0297483   0.0138158   0.0456807
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0122030   0.0090542   0.0153517
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.0323575   0.0244973   0.0402177
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.0171836   0.0119689   0.0223983


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0268109   0.0199430   0.0336788
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0178809   0.0151436   0.0206183
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0252226   0.0183864   0.0320587
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0945717   0.0455825   0.1435610
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0268109   0.0199430   0.0336788
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0178809   0.0151436   0.0206183


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.6218276   0.8578117   3.066320
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.2878128   0.6799287   2.439170
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           2.6516098   1.8603838   3.779346
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.4081484   0.9454800   2.097223
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.3261094   0.6297729   2.792381
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.7243693   0.9261992   3.210378
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           0.9602459   0.6816638   1.352679
0-6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           0.9689101   0.7059993   1.329727
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.6218276   0.8578117   3.066320
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.2878128   0.6799287   2.439170
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           2.6516098   1.8603838   3.779346
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.4081484   0.9454800   2.097223


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0037111   -0.0017849   0.0092070
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.0056780    0.0030095   0.0083465
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0042109   -0.0012717   0.0096935
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                -0.0008237   -0.0068638   0.0052165
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0037111   -0.0017849   0.0092070
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.0056780    0.0030095   0.0083465


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.1384161   -0.0892892   0.3185218
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.3175441    0.1605444   0.4451808
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.1669490   -0.0755193   0.3547544
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                -0.0087096   -0.0728468   0.0515934
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.1384161   -0.0892892   0.3185218
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.3175441    0.1605444   0.4451808
