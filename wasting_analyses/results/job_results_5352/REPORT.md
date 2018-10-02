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

* arm
* W_mage
* meducyrs
* feducyrs
* single
* brthmon
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_single
* delta_brthmon

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        mwtkg         pers_wast   n_cell       n
------------  -------------------------  -----------------------------  -----------  ----------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg               0       45     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg               1        2     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg                0      149     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg                1        9     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg            0       41     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg            1        2     248
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg               0      139     216
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg               1        1     216
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg                0       40     216
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg                1        0     216
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg            0       35     216
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg            1        1     216
0-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg               0       39     240
0-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg               1        2     240
0-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg                0      132     240
0-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg                1       17     240
0-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg            0       48     240
0-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg            1        2     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg               0       80     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg               1        0     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg                0       73     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg                1        3     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg            0       81     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg            1        1     238
0-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg               0      103     283
0-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg               1        0     283
0-24 months   ki0047075b-MAL-ED          PERU                           <52 kg                0      110     283
0-24 months   ki0047075b-MAL-ED          PERU                           <52 kg                1        1     283
0-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg            0       69     283
0-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg            1        0     283
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg               0      189     265
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg               1        1     265
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                0       30     265
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                1        0     265
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg            0       44     265
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg            1        1     265
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg               0       97     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg               1        0     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                0       97     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                1        0     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg            0       59     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg            1        0     253
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg               0       97    1359
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg               1        3    1359
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg                0      942    1359
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg                1      101    1359
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg            0      207    1359
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg            1        9    1359
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg               0       68     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg               1        1     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg                0      340     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg                1       44     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg            0       79     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg            1        2     534
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg               0      117     639
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg               1        0     639
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg                0      396     639
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg                1       14     639
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg            0      111     639
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg            1        1     639
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg               0      188     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg               1        0     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg                0      366     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg                1       25     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg            0      150     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg            1        1     730
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg               0     1311    2126
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg               1       31    2126
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                0      334    2126
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                1       13    2126
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg            0      424    2126
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg            1       13    2126
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg               0      451    1633
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg               1       32    1633
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg                0      511    1633
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg                1      102    1633
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg            0      480    1633
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg            1       57    1633
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg               0    10177   13758
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg               1       90   13758
0-24 months   ki1119695-PROBIT           BELARUS                        <52 kg                0     1126   13758
0-24 months   ki1119695-PROBIT           BELARUS                        <52 kg                1        4   13758
0-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg            0     2345   13758
0-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg            1       16   13758
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg               0     4614    9004
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg               1       57    9004
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                0     1884    9004
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                1       63    9004
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg            0     2345    9004
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg            1       41    9004
0-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg               0       96     717
0-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg               1        1     717
0-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg                0      426     717
0-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg                1        3     717
0-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg            0      189     717
0-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg            1        2     717
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg               0       45     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg               1        2     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg                0      153     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg                1        5     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg            0       43     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg            1        0     248
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg               0      139     216
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg               1        1     216
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg                0       40     216
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg                1        0     216
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg            0       36     216
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg            1        0     216
0-6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg               0       38     239
0-6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg               1        2     239
0-6 months    ki0047075b-MAL-ED          INDIA                          <52 kg                0      135     239
0-6 months    ki0047075b-MAL-ED          INDIA                          <52 kg                1       14     239
0-6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg            0       47     239
0-6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg            1        3     239
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg               0       80     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg               1        0     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg                0       72     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg                1        3     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg            0       80     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg            1        2     237
0-6 months    ki0047075b-MAL-ED          PERU                           >=58 kg               0      103     283
0-6 months    ki0047075b-MAL-ED          PERU                           >=58 kg               1        0     283
0-6 months    ki0047075b-MAL-ED          PERU                           <52 kg                0      111     283
0-6 months    ki0047075b-MAL-ED          PERU                           <52 kg                1        0     283
0-6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg            0       69     283
0-6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg            1        0     283
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg               0      189     263
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg               1        1     263
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                0       28     263
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                1        1     263
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg            0       44     263
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg            1        0     263
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg               0       97     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg               1        0     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                0       97     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                1        0     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg            0       59     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg            1        0     253
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg               0      115     636
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg               1        1     636
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg                0      398     636
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg                1       11     636
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg            0      109     636
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg            1        2     636
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg               0     1258    2022
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg               1       27    2022
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                0      314    2022
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                1        9    2022
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg            0      399    2022
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg            1       15    2022
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg               0       38     234
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg               1        3     234
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg                0      140     234
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg                1       12     234
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg            0       39     234
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg            1        2     234
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg               0      127     196
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg               1        1     196
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg                0       35     196
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg                1        0     196
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg            0       32     196
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg            1        1     196
6-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg               0       38     230
6-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg               1        2     230
6-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg                0      121     230
6-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg                1       22     230
6-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg            0       44     230
6-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg            1        3     230
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg               0       78     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg               1        0     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg                0       72     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg                1        2     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg            0       79     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg            1        0     231
6-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg               0       91     250
6-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg               1        1     250
6-24 months   ki0047075b-MAL-ED          PERU                           <52 kg                0       97     250
6-24 months   ki0047075b-MAL-ED          PERU                           <52 kg                1        1     250
6-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg            0       60     250
6-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg            1        0     250
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg               0      178     251
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg               1        1     251
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                0       30     251
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                1        0     251
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg            0       41     251
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg            1        1     251
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg               0       92     238
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg               1        0     238
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                0       90     238
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                1        0     238
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg            0       56     238
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg            1        0     238
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg               0       78    1198
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg               1       10    1198
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg                0      760    1198
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg                1      167    1198
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg            0      173    1198
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg            1       10    1198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg               0       63     492
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg               1        2     492
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg                0      305     492
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg                1       47     492
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg            0       69     492
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg            1        6     492
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg               0      111     600
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg               1        3     600
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg                0      351     600
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg                1       30     600
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg            0      100     600
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg            1        5     600
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg               0      172     697
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg               1        6     697
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg                0      341     697
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg                1       32     697
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg            0      142     697
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg            1        4     697
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg               0     1011    1673
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg               1       46    1673
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                0      255    1673
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                1       18    1673
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg            0      325    1673
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg            1       18    1673
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg               0      451    1633
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg               1       32    1633
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg                0      511    1633
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg                1      102    1633
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg            0      480    1633
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg            1       57    1633
6-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg               0     5197    7052
6-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg               1        2    7052
6-24 months   ki1119695-PROBIT           BELARUS                        <52 kg                0      610    7052
6-24 months   ki1119695-PROBIT           BELARUS                        <52 kg                1        0    7052
6-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg            0     1243    7052
6-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg            1        0    7052
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg               0     1050    2205
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg               1       29    2205
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                0      518    2205
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                1       37    2205
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg            0      544    2205
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg            1       27    2205
6-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg               0       92     693
6-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg               1        1     693
6-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg                0      413     693
6-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg                1        3     693
6-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg            0      182     693
6-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg            1        2     693


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
* agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
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
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
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
* agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
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
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/93ce1011-1628-4897-9e43-0ec2cc36c5aa/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/93ce1011-1628-4897-9e43-0ec2cc36c5aa/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/93ce1011-1628-4897-9e43-0ec2cc36c5aa/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/93ce1011-1628-4897-9e43-0ec2cc36c5aa/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0230626   0.0150303   0.0310949
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.0374813   0.0175904   0.0573722
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.0298615   0.0138892   0.0458338
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.0664825   0.0422250   0.0907400
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg               NA                0.1702678   0.1271645   0.2133712
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg           NA                0.1093480   0.0729245   0.1457714
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0123444   0.0091914   0.0154974
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.0374311   0.0293086   0.0455537
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.0188851   0.0136383   0.0241318
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0210117   0.0131679   0.0288554
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.0278638   0.0099107   0.0458168
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.0362319   0.0182271   0.0542366
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.1148251   0.0551893   0.1744609
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                0.1799620   0.1621677   0.1977563
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                0.0546898   0.0153871   0.0939924
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0437117   0.0314869   0.0559366
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.0878707   0.0564868   0.1192547
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.0552346   0.0320306   0.0784386
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.0666119   0.0426295   0.0905944
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg               NA                0.1700186   0.1267053   0.2133320
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg           NA                0.1093020   0.0727109   0.1458931
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0279370   0.0182581   0.0376159
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.0707725   0.0509475   0.0905976
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.0530847   0.0356624   0.0705070


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0268109   0.0199430   0.0336788
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1169626   0.0922087   0.1417166
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0178809   0.0151436   0.0206183
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0252226   0.0183864   0.0320587
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1560935   0.1404638   0.1717232
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0490137   0.0386653   0.0593622
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1169626   0.0922087   0.1417166
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0421769   0.0337857   0.0505680


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.6251973   0.8615226   3.065812
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.2947993   0.6839972   2.451041
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg               >=58 kg           2.5610925   1.7562119   3.734854
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg           >=58 kg           1.6447633   1.0781269   2.509210
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           3.0322378   2.1689349   4.239162
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.5298493   1.0490721   2.230961
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.3261094   0.6297729   2.792381
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.7243693   0.9261992   3.210378
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           1.5672706   0.9056718   2.712172
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg           0.4762877   0.1568976   1.445847
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           2.0102317   1.2771537   3.164092
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.2636103   0.7629789   2.092733
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg               >=58 kg           2.5523748   1.7557058   3.710540
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg           >=58 kg           1.6408768   1.0796200   2.493912
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           2.5332937   1.6228728   3.954455
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.9001601   1.1790965   3.062182


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0037483   -0.0017419   0.0092384
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.0504801    0.0293377   0.0716226
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0055366    0.0028528   0.0082203
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0042109   -0.0012717   0.0096935
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.0412684   -0.0225499   0.1050867
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0053020   -0.0029152   0.0135192
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.0503507    0.0292534   0.0714480
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0142399    0.0057004   0.0227794


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.1398046   -0.0876414   0.3196874
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.4315920    0.2445401   0.5723299
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.3096344    0.1519519   0.4379981
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.1669490   -0.0755193   0.3547544
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.2643827   -0.2662254   0.5726410
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.1081737   -0.0740607   0.2594887
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.4304854    0.2455545   0.5700857
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.3376237    0.1176336   0.5027662
