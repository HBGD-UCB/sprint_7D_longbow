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

**Outcome Variable:** ever_stunted

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

agecat        studyid                    country                        mwtkg         ever_stunted   n_cell       n
------------  -------------------------  -----------------------------  -----------  -------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg                  0       29     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg                  1       19     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg                   0       49     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg                   1      113     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg               0       21     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg               1       23     254
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg                  0      110     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg                  1       33     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg                   0       31     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg                   1       11     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg               0       30     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg               1        6     221
0-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg                  0       23     242
0-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg                  1       19     242
0-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg                   0       51     242
0-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg                   1       99     242
0-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg               0       21     242
0-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg               1       29     242
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg                  0       58     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg                  1       22     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg                   0       37     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg                   1       39     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg               0       61     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg               1       21     238
0-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg                  0       42     290
0-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg                  1       62     290
0-24 months   ki0047075b-MAL-ED          PERU                           <52 kg                   0       42     290
0-24 months   ki0047075b-MAL-ED          PERU                           <52 kg                   1       73     290
0-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg               0       20     290
0-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg               1       51     290
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg                  0       88     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg                  1      106     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                   0        6     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                   1       24     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg               0       17     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg               1       29     270
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg                  0       17     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg                  1       81     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                   0       11     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                   1       88     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg               0        8     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg               1       51     256
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg                  0       62    1514
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg                  1       47    1514
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg                   0      300    1514
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg                   1      868    1514
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg               0      106    1514
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg               1      131    1514
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg                  0       43     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg                  1       39     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg                   0      134     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg                   1      319     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg               0       34     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg               1       60     629
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg                  0       90     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg                  1       30     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg                   0      204     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg                   1      228     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg               0       73     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg               1       44     669
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg                  0      125     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg                  1       67     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg                   0      184     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg                   1      222     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg               0       84     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg               1       73     755
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg                  0     1028    2352
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg                  1      448    2352
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                   0      211    2352
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                   1      182    2352
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg               0      298    2352
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg               1      185    2352
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg                  0      701    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg                  1      230    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg                   0      652    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg                   1      537    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg               0      693    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg               1      364    3177
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg                  0     8662   13772
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg                  1     1617   13772
0-24 months   ki1119695-PROBIT           BELARUS                        <52 kg                   0      837   13772
0-24 months   ki1119695-PROBIT           BELARUS                        <52 kg                   1      294   13772
0-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg               0     1939   13772
0-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg               1      423   13772
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg                  0     3709   11204
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg                  1     2134   11204
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                   0     1054   11204
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                   1     1354   11204
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg               0     1560   11204
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg               1     1393   11204
0-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg                  0       55     838
0-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg                  1       59     838
0-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg                   0      145     838
0-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg                   1      359     838
0-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg               0      105     838
0-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg               1      115     838
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg                  0       38     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg                  1       10     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg                   0       95     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg                   1       67     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg               0       33     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg               1       11     254
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg                  0      115     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg                  1       28     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg                   0       35     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg                   1        7     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg               0       30     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg               1        6     221
0-6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg                  0       32     242
0-6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg                  1       10     242
0-6 months    ki0047075b-MAL-ED          INDIA                          <52 kg                   0       96     242
0-6 months    ki0047075b-MAL-ED          INDIA                          <52 kg                   1       54     242
0-6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg               0       31     242
0-6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg               1       19     242
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg                  0       66     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg                  1       14     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg                   0       55     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg                   1       21     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg               0       76     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg               1        6     238
0-6 months    ki0047075b-MAL-ED          PERU                           >=58 kg                  0       65     290
0-6 months    ki0047075b-MAL-ED          PERU                           >=58 kg                  1       39     290
0-6 months    ki0047075b-MAL-ED          PERU                           <52 kg                   0       61     290
0-6 months    ki0047075b-MAL-ED          PERU                           <52 kg                   1       54     290
0-6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg               0       36     290
0-6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg               1       35     290
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg                  0      127     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg                  1       67     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                   0       13     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                   1       17     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg               0       27     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg               1       19     270
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg                  0       68     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg                  1       30     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                   0       47     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                   1       52     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg               0       34     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg               1       25     256
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg                  0       85    1511
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg                  1       24    1511
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg                   0      624    1511
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg                   1      541    1511
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg               0      163    1511
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg               1       74    1511
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg                  0       61     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg                  1       21     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg                   0      278     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg                   1      175     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg               0       70     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg               1       24     629
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg                  0      107     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg                  1       13     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg                   0      310     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg                   1      122     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg               0       87     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg               1       30     669
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg                  0      153     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg                  1       39     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg                   0      262     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg                   1      144     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg               0      111     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg               1       46     755
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg                  0     1240    2352
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg                  1      236    2352
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                   0      280    2352
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                   1      113    2352
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg               0      375    2352
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg               1      108    2352
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg                  0     9368   13772
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg                  1      911   13772
0-6 months    ki1119695-PROBIT           BELARUS                        <52 kg                   0      951   13772
0-6 months    ki1119695-PROBIT           BELARUS                        <52 kg                   1      180   13772
0-6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg               0     2117   13772
0-6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg               1      245   13772
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg                  0     4498   11188
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg                  1     1337   11188
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                   0     1507   11188
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                   1      898   11188
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg               0     2033   11188
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg               1      915   11188
0-6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg                  0       24     271
0-6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg                  1        9     271
0-6 months    ki1148112-LCNI-5           MALAWI                         <52 kg                   0       95     271
0-6 months    ki1148112-LCNI-5           MALAWI                         <52 kg                   1       72     271
0-6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg               0       55     271
0-6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg               1       16     271
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg                  0       26     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg                  1        9     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg                   0       45     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg                   1       46     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg               0       21     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg               1       12     159
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg                  0      105     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg                  1        5     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg                   0       26     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg                   1        4     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg               0       28     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg               1        0     168
6-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg                  0       22     155
6-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg                  1        9     155
6-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg                   0       48     155
6-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg                   1       45     155
6-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg               0       21     155
6-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg               1       10     155
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg                  0       58     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg                  1        8     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg                   0       36     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg                   1       18     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg               0       60     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg               1       15     195
6-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg                  0       39     148
6-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg                  1       23     148
6-24 months   ki0047075b-MAL-ED          PERU                           <52 kg                   0       35     148
6-24 months   ki0047075b-MAL-ED          PERU                           <52 kg                   1       19     148
6-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg               0       16     148
6-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg               1       16     148
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg                  0       80     156
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg                  1       39     156
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                   0        6     156
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                   1        7     156
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg               0       14     156
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg               1       10     156
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg                  0       16     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg                  1       51     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                   0        8     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                   1       36     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg               0        8     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg               1       26     145
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg                  0       56     810
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg                  1       23     810
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg                   0      252     810
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg                   1      327     810
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg               0       95     810
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg               1       57     810
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg                  0       34     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg                  1       18     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg                   0       85     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg                   1      144     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg               0       28     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg               1       36     345
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg                  0       84     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg                  1       17     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg                   0      170     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg                   1      106     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg               0       66     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg               1       14     457
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg                  0      121     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg                  1       28     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg                   0      173     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg                   1       78     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg               0       79     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg               1       27     506
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg                  0      829    1572
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg                  1      212    1572
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                   0      147    1572
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                   1       69    1572
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg               0      238    1572
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg               1       77    1572
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg                  0      701    3177
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg                  1      230    3177
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg                   0      652    3177
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg                   1      537    3177
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg               0      693    3177
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg               1      364    3177
6-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg                  0     8655   12428
6-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg                  1      706   12428
6-24 months   ki1119695-PROBIT           BELARUS                        <52 kg                   0      837   12428
6-24 months   ki1119695-PROBIT           BELARUS                        <52 kg                   1      114   12428
6-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg               0     1938   12428
6-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg               1      178   12428
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg                  0     3098    7035
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg                  1      797    7035
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                   0      889    7035
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                   1      456    7035
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg               0     1317    7035
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg               1      478    7035
6-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg                  0       55     728
6-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg                  1       50     728
6-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg                   0      138     728
6-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg                   1      287     728
6-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg               0       99     728
6-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg               1       99     728


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
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
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

* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/37b4c317-5196-4fc0-8fcb-35ae93cebf2e/8bdcbe10-4bc8-418a-973a-a57477d4dfc2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/37b4c317-5196-4fc0-8fcb-35ae93cebf2e/8bdcbe10-4bc8-418a-973a-a57477d4dfc2/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.3925445   0.2389269   0.5461622
0-24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              NA                0.1640982   0.0401014   0.2880950
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.4675119   0.3048575   0.6301662
0-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                0.2860037   0.1859948   0.3860127
0-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                0.5388965   0.4364084   0.6413847
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.5467866   0.4764015   0.6171717
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.8273578   0.7515620   0.9031535
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.4282351   0.3341369   0.5223333
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.4648513   0.3539436   0.5757590
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.2497678   0.1692346   0.3303010
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.3424927   0.2720718   0.4129136
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.3042810   0.2806009   0.3279611
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                0.2485545   0.0661210   0.4309880
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                0.1629753   0.1423094   0.1836411
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.3660355   0.3532669   0.3788041
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.6100306   0.5285140   0.6915471
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.2794856   0.1372691   0.4217022
0-6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              NA                0.2739840   0.1456043   0.4023636
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                0.2433384   0.1071565   0.3795202
0-6 months    ki0047075b-MAL-ED          NEPAL                          optimal              NA                0.0746590   0.0169267   0.1323913
0-6 months    ki0047075b-MAL-ED          PERU                           optimal              NA                0.3473380   0.2573420   0.4373341
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.4697642   0.3769217   0.5626067
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.3090954   0.2159711   0.4022197
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.2178809   0.1672478   0.2685139
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.2167162   0.1268491   0.3065832
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.1082634   0.0502743   0.1662525
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.2136850   0.1527492   0.2746208
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1583849   0.1394165   0.1773533
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                0.0895470   0.0743288   0.1047651
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.2321703   0.2209289   0.2434117
0-6 months    ki1148112-LCNI-5           MALAWI                         optimal              NA                0.2300315   0.1290565   0.3310066
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.2614218   0.1088657   0.4139780
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.4243326   0.2453326   0.6033327
6-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                0.1206819   0.0412702   0.2000936
6-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                0.2780142   0.1565815   0.3994468
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.3268079   0.2419602   0.4116556
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.8718881   0.7693202   0.9744560
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.3033394   0.2064085   0.4002704
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.3606063   0.2152532   0.5059593
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.2364410   0.1311887   0.3416933
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.1679871   0.1052504   0.2307238
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2181003   0.1881163   0.2480843
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                0.2479047   0.0622035   0.4336059
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                0.0754353   0.0619794   0.0888912
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.2145396   0.2009010   0.2281783
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.5475710   0.4574667   0.6376753


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.6102362   0.5501413   0.6703311
0-24 months   ki0047075b-MAL-ED          BRAZIL                         observed             NA                0.2262443   0.1709568   0.2815319
0-24 months   ki0047075b-MAL-ED          INDIA                          observed             NA                0.6074380   0.5457864   0.6690897
0-24 months   ki0047075b-MAL-ED          NEPAL                          observed             NA                0.3445378   0.2840363   0.4050393
0-24 months   ki0047075b-MAL-ED          PERU                           observed             NA                0.6413793   0.5860858   0.6966728
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             NA                0.5888889   0.5300901   0.6476877
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             NA                0.8593750   0.8167072   0.9020428
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.6908851   0.6500577   0.7317124
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             NA                0.6645469   0.6276196   0.7014742
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.4514200   0.4136828   0.4891573
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.4794702   0.4438115   0.5151289
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.3465136   0.3272783   0.3657490
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             NA                0.3559962   0.3060347   0.4059578
0-24 months   ki1119695-PROBIT           BELARUS                        observed             NA                0.1694743   0.1504830   0.1884655
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.4356480   0.4264663   0.4448297
0-24 months   ki1148112-LCNI-5           MALAWI                         observed             NA                0.6360382   0.6034429   0.6686335
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.3464567   0.2878227   0.4050907
0-6 months    ki0047075b-MAL-ED          BRAZIL                         observed             NA                0.1855204   0.1341547   0.2368860
0-6 months    ki0047075b-MAL-ED          INDIA                          observed             NA                0.3429752   0.2830428   0.4029076
0-6 months    ki0047075b-MAL-ED          NEPAL                          observed             NA                0.1722689   0.1241936   0.2203442
0-6 months    ki0047075b-MAL-ED          PERU                           observed             NA                0.4413793   0.3841309   0.4986278
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             NA                0.3814815   0.3234338   0.4395292
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             NA                0.4179688   0.3574314   0.4785061
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.4228987   0.3938571   0.4519404
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             NA                0.3497615   0.3124631   0.3870600
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.2466368   0.2139486   0.2793250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.3033113   0.2704998   0.3361228
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.1943027   0.1783091   0.2102964
0-6 months    ki1119695-PROBIT           BELARUS                        observed             NA                0.0970084   0.0840167   0.1100001
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.2815517   0.2732174   0.2898859
0-6 months    ki1148112-LCNI-5           MALAWI                         observed             NA                0.3579336   0.3007518   0.4151153
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.4213836   0.3443902   0.4983771
6-24 months   ki0047075b-MAL-ED          INDIA                          observed             NA                0.4129032   0.3351414   0.4906651
6-24 months   ki0047075b-MAL-ED          NEPAL                          observed             NA                0.2102564   0.1529155   0.2675974
6-24 months   ki0047075b-MAL-ED          PERU                           observed             NA                0.3918919   0.3129763   0.4708075
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             NA                0.3589744   0.2834562   0.4344926
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             NA                0.7793103   0.7115754   0.8470453
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.5024691   0.4579693   0.5469690
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             NA                0.5739130   0.5216565   0.6261696
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.2997812   0.2577294   0.3418330
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.2628458   0.2244546   0.3012371
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.2277354   0.2069978   0.2484730
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             NA                0.3559962   0.3060347   0.4059578
6-24 months   ki1119695-PROBIT           BELARUS                        observed             NA                0.0803025   0.0658938   0.0947113
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.2460554   0.2359900   0.2561209
6-24 months   ki1148112-LCNI-5           MALAWI                         observed             NA                0.5989011   0.5632737   0.6345285


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           1.5545655   1.0834746   2.2304851
0-24 months   ki0047075b-MAL-ED          BRAZIL                         observed             optimal           1.3787134   0.6805252   2.7932109
0-24 months   ki0047075b-MAL-ED          INDIA                          observed             optimal           1.2992996   0.9445469   1.7872902
0-24 months   ki0047075b-MAL-ED          NEPAL                          observed             optimal           1.2046619   0.8987661   1.6146696
0-24 months   ki0047075b-MAL-ED          PERU                           observed             optimal           1.1901715   1.0157091   1.3946004
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             optimal           1.0769995   1.0072260   1.1516065
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.0386981   0.9695691   1.1127560
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.6133314   1.2911887   2.0158464
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           1.4295903   1.1432256   1.7876861
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.8073588   1.3359659   2.4450819
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.3999428   1.1650040   1.6822601
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.1387948   1.0824702   1.1980501
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             optimal           1.4322662   0.7677111   2.6720811
0-24 months   ki1119695-PROBIT           BELARUS                        observed             optimal           1.0398775   1.0021404   1.0790356
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.1901796   1.1600123   1.2211313
0-24 months   ki1148112-LCNI-5           MALAWI                         observed             optimal           1.0426333   0.9237954   1.1767586
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           1.2396225   0.7753252   1.9819607
0-6 months    ki0047075b-MAL-ED          BRAZIL                         observed             optimal           0.6771212   0.4417315   1.0379453
0-6 months    ki0047075b-MAL-ED          INDIA                          observed             optimal           1.4094580   0.8377458   2.3713301
0-6 months    ki0047075b-MAL-ED          NEPAL                          observed             optimal           2.3074105   1.1368405   4.6832805
0-6 months    ki0047075b-MAL-ED          PERU                           observed             optimal           1.2707487   1.0254384   1.5747432
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             optimal           0.8120702   0.6948986   0.9489988
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.3522320   1.0538536   1.7350905
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.9409631   1.4722408   2.5589142
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           1.6139151   1.0887212   2.3924602
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           2.2781178   1.3639988   3.8048571
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.4194318   1.0959010   1.8384750
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.2267757   1.1288621   1.3331821
0-6 months    ki1119695-PROBIT           BELARUS                        observed             optimal           1.0833247   0.9980096   1.1759329
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.2126947   1.1688694   1.2581631
0-6 months    ki1148112-LCNI-5           MALAWI                         observed             optimal           1.5560195   1.0484037   2.3094127
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           1.6118915   0.9450670   2.7492169
6-24 months   ki0047075b-MAL-ED          INDIA                          observed             optimal           0.9730650   0.6670359   1.4194970
6-24 months   ki0047075b-MAL-ED          NEPAL                          observed             optimal           1.7422363   0.9722000   3.1221840
6-24 months   ki0047075b-MAL-ED          PERU                           observed             optimal           1.4096113   0.9614006   2.0667805
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             optimal           1.0984262   0.9587921   1.2583960
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             optimal           0.8938192   0.8009942   0.9974015
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.6564585   1.2288176   2.2329226
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           1.5915227   1.0885835   2.3268262
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.2678901   0.8443456   1.9038948
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.5646792   1.1218247   2.1823561
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.0441773   0.9435037   1.1555931
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             optimal           1.4360205   0.7585653   2.7184935
6-24 months   ki1119695-PROBIT           BELARUS                        observed             optimal           1.0645220   0.9911258   1.1433534
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.1468997   1.0936725   1.2027173
6-24 months   ki1148112-LCNI-5           MALAWI                         observed             optimal           1.0937414   0.9391083   1.2738363


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.2176917    0.0783247    0.3570587
0-24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              NA                 0.0621462   -0.0541469    0.1784392
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.1399261   -0.0078342    0.2876864
0-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                 0.0585341   -0.0253135    0.1423816
0-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                 0.1024828    0.0177755    0.1871900
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.0421023    0.0059049    0.0782997
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0320172   -0.0247107    0.0887451
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.2626500    0.1632454    0.3620546
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.1996956    0.0969273    0.3024639
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.2016522    0.1261693    0.2771351
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.1369775    0.0743527    0.1996023
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0422326    0.0267873    0.0576779
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.1074417   -0.0366978    0.2515813
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0064990    0.0006220    0.0123761
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0696125    0.0602545    0.0789704
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.0260076   -0.0477638    0.0997791
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0669711   -0.0639573    0.1978994
0-6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              NA                -0.0884636   -0.2039517    0.0270245
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.0996368   -0.0270065    0.2262802
0-6 months    ki0047075b-MAL-ED          NEPAL                          optimal              NA                 0.0976099    0.0393295    0.1558904
0-6 months    ki0047075b-MAL-ED          PERU                           optimal              NA                 0.0940413    0.0194878    0.1685948
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                -0.0882827   -0.1603332   -0.0162322
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.1088733    0.0318697    0.1858769
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.2050179    0.1340545    0.2759812
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.1330453    0.0475027    0.2185880
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.1383734    0.0806964    0.1960503
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0896263    0.0339694    0.1452831
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0359178    0.0225532    0.0492825
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0074615    0.0002411    0.0146818
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0493814    0.0407868    0.0579759
0-6 months    ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.1279020    0.0365961    0.2192079
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.1599618    0.0206378    0.2992858
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                -0.0114294   -0.1716732    0.1488144
6-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                 0.0895745    0.0163953    0.1627537
6-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                 0.1138777    0.0055970    0.2221585
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.0321665   -0.0122297    0.0765626
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0925777   -0.1860729    0.0009175
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.1991297    0.1085230    0.2897364
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.2133068    0.0777604    0.3488532
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0633402   -0.0321645    0.1588448
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0948588    0.0383118    0.1514058
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0096351   -0.0124786    0.0317488
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.1080915   -0.0391072    0.2552902
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0048672   -0.0007734    0.0105079
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0315158    0.0212756    0.0417560
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.0513301   -0.0321401    0.1348003


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.3567335    0.0770435    0.5516670
0-24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              NA                 0.2746861   -0.4694532    0.6419891
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.2303546   -0.0587086    0.4404938
0-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                 0.1698916   -0.1126365    0.3806782
0-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                 0.1597850    0.0154661    0.2829487
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.0714945    0.0071742    0.1316478
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0372564   -0.0313860    0.1013304
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.3801645    0.2255199    0.5039305
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.3004989    0.1252820    0.4406177
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.4467064    0.2514779    0.5910157
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.2856851    0.1416338    0.4055616
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.1218786    0.0761870    0.1653103
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.3018058   -0.3025733    0.6257599
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0383482    0.0021358    0.0732465
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.1597906    0.1379402    0.1810873
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.0408900   -0.0824908    0.1502080
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.1933028   -0.2897814    0.4954491
0-6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              NA                -0.4768404   -1.2638185    0.0365581
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.2905074   -0.1936795    0.5782957
0-6 months    ki0047075b-MAL-ED          NEPAL                          optimal              NA                 0.5666137    0.1203692    0.7864745
0-6 months    ki0047075b-MAL-ED          PERU                           optimal              NA                 0.2130623    0.0248073    0.3649758
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                -0.2314207   -0.4390589   -0.0537421
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.2604819    0.0511016    0.4236612
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.4847919    0.3207633    0.6092093
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.3803887    0.0814912    0.5820202
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.5610411    0.2668615    0.7371780
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.2954928    0.0875089    0.4560709
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.1848551    0.1141522    0.2499149
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0769157   -0.0019944    0.1496114
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.1753901    0.1444724    0.2051905
0-6 months    ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.3573345    0.0461690    0.5669895
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.3796108   -0.0581261    0.6362601
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                -0.0276806   -0.4991697    0.2955251
6-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                 0.4260251   -0.0285949    0.6797114
6-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                 0.2905846   -0.0401492    0.5161557
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.0896066   -0.0429790    0.2053376
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.1187944   -0.2484485   -0.0026053
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.3963024    0.1862096    0.5521565
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.3716709    0.0813750    0.5702300
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.2112881   -0.1843492    0.4747609
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.3608914    0.1085952    0.5417796
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0423083   -0.0598793    0.1346435
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.3036311   -0.3182781    0.6321492
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0606112   -0.0089536    0.1253798
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.1280842    0.0856495    0.1685494
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.0857071   -0.0648399    0.2149698
