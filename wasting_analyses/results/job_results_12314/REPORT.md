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
![](/tmp/3053767a-1be9-4ffd-a3a3-f5867b84236e/fe052ddf-1451-4378-a37a-88358606ccfb/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3053767a-1be9-4ffd-a3a3-f5867b84236e/fe052ddf-1451-4378-a37a-88358606ccfb/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3053767a-1be9-4ffd-a3a3-f5867b84236e/fe052ddf-1451-4378-a37a-88358606ccfb/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3053767a-1be9-4ffd-a3a3-f5867b84236e/fe052ddf-1451-4378-a37a-88358606ccfb/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0230999   0.0150608   0.0311389
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.0374640   0.0174791   0.0574488
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.0297483   0.0138158   0.0456807
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.0662526   0.0390309   0.0934743
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg               NA                0.1663948   0.1233972   0.2093924
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg           NA                0.1061453   0.0696525   0.1426380
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0122030   0.0090542   0.0153517
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.0323575   0.0244973   0.0402177
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.0171836   0.0119689   0.0223983
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0210117   0.0131679   0.0288554
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.0278638   0.0099107   0.0458168
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.0362319   0.0182271   0.0542366
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.1136364   0.0541967   0.1730760
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                0.1801510   0.1622455   0.1980565
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                0.0546448   0.0159938   0.0932958
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0435194   0.0312161   0.0558226
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.0659341   0.0364871   0.0953810
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.0524781   0.0288726   0.0760837
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.0662526   0.0390309   0.0934743
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg               NA                0.1663948   0.1233972   0.2093924
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg           NA                0.1061453   0.0696525   0.1426380
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0268767   0.0172249   0.0365285
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.0666667   0.0459093   0.0874241
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.0472855   0.0298725   0.0646985


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
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.6218276   0.8578117   3.066320
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.2878128   0.6799287   2.439170
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg               >=58 kg           2.5115212   1.6100279   3.917782
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg           >=58 kg           1.6021299   0.9883474   2.597083
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           2.6516098   1.8603838   3.779346
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.4081484   0.9454800   2.097223
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.3261094   0.6297729   2.792381
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.7243693   0.9261992   3.210378
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           1.5853290   0.9138810   2.750104
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg           0.4808743   0.1604387   1.441299
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.5150501   0.8930426   2.570288
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.2058562   0.7088645   2.051293
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg               >=58 kg           2.5115212   1.6100279   3.917782
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg           >=58 kg           1.6021299   0.9883474   2.597083
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           2.4804598   1.5421015   3.989803
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.7593454   1.0518764   2.942642


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0037111   -0.0017849   0.0092070
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.0507101    0.0281738   0.0732463
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0056780    0.0030095   0.0083465
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0042109   -0.0012717   0.0096935
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.0424571   -0.0209467   0.1058610
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0054944   -0.0027026   0.0136913
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.0507101    0.0281738   0.0732463
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0153001    0.0067915   0.0238088


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.1384161   -0.0892892   0.3185218
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.4335577    0.2174451   0.5899880
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.3175441    0.1605444   0.4451808
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.1669490   -0.0755193   0.3547544
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.2719981   -0.2558455   0.5779840
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.1120982   -0.0700827   0.2632629
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.4335577    0.2174451   0.5899880
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.3627612    0.1425286   0.5264294
