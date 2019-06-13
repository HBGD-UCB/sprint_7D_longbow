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
![](/tmp/c22e01b6-0dab-4e2d-8aba-46d012b4ec7b/0b9e1951-645c-4de1-ab80-b078a466decd/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c22e01b6-0dab-4e2d-8aba-46d012b4ec7b/0b9e1951-645c-4de1-ab80-b078a466decd/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.3697254   0.2315675   0.5078833
0-24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              NA                0.1685835   0.0430704   0.2940966
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.4689230   0.3026580   0.6351881
0-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                0.2980277   0.1987612   0.3972942
0-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                0.5662411   0.4707164   0.6617658
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.5470140   0.4766923   0.6173357
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.8283325   0.7529577   0.9037073
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.4282351   0.3341369   0.5223333
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.4695944   0.3557427   0.5834461
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.2487168   0.1679721   0.3294614
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.3374911   0.2683298   0.4066524
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.3085883   0.2840711   0.3331055
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                0.2484627   0.0654430   0.4314825
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                0.1630128   0.1409667   0.1850588
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.3676213   0.3549744   0.3802682
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.5790071   0.4971082   0.6609060
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.1701140   0.0551235   0.2851046
0-6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              NA                0.2860917   0.1623935   0.4097899
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                0.2340343   0.1023514   0.3657171
0-6 months    ki0047075b-MAL-ED          NEPAL                          optimal              NA                0.0718518   0.0148153   0.1288883
0-6 months    ki0047075b-MAL-ED          PERU                           optimal              NA                0.3562660   0.2654932   0.4470388
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.4067155   0.3141421   0.4992890
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2980918   0.2050451   0.3911385
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.2178809   0.1672478   0.2685139
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.2629519   0.1665271   0.3593766
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.1018447   0.0451804   0.1585091
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.2120067   0.1509206   0.2730929
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1608289   0.1419229   0.1797350
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                0.0933777   0.0788330   0.1079224
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.2303806   0.2192259   0.2415352
0-6 months    ki1148112-LCNI-5           MALAWI                         optimal              NA                0.2296979   0.1295256   0.3298701
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.2479655   0.0987116   0.3972194
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.4018319   0.2198470   0.5838167
6-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                0.1190466   0.0392834   0.1988099
6-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                0.3376334   0.2275395   0.4477274
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.3283498   0.2435230   0.4131767
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.9277978   0.8550881   1.0005074
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.3033394   0.2064085   0.4002704
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.3729039   0.2260401   0.5197678
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.2444364   0.1415893   0.3472836
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.1648937   0.1034110   0.2263764
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2182131   0.1885551   0.2478711
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                0.2480696   0.0719729   0.4241664
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                0.0763155   0.0627917   0.0898393
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.2124026   0.1985722   0.2262330
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.5354457   0.4402393   0.6306520


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
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           1.6505120   1.1667677   2.3348177
0-24 months   ki0047075b-MAL-ED          BRAZIL                         observed             optimal           1.3420314   0.6693552   2.6907212
0-24 months   ki0047075b-MAL-ED          INDIA                          observed             optimal           1.2953896   0.9349164   1.7948494
0-24 months   ki0047075b-MAL-ED          NEPAL                          observed             optimal           1.1560597   0.8755711   1.5264026
0-24 months   ki0047075b-MAL-ED          PERU                           observed             optimal           1.1326966   0.9885727   1.2978322
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             optimal           1.0765518   1.0068532   1.1510752
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.0374759   0.9689845   1.1108086
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.6133314   1.2911887   2.0158464
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           1.4151508   1.1270384   1.7769153
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.8149964   1.3387360   2.4606883
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.4206899   1.1836790   1.7051581
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.1228995   1.0644233   1.1845883
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             optimal           1.4327952   0.7662937   2.6790017
0-24 months   ki1119695-PROBIT           BELARUS                        observed             optimal           1.0396383   0.9943033   1.0870402
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.1850457   1.1555704   1.2152728
0-24 months   ki1148112-LCNI-5           MALAWI                         observed             optimal           1.0984981   0.9645795   1.2510094
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           2.0366143   1.0724028   3.8677610
0-6 months    ki0047075b-MAL-ED          BRAZIL                         observed             optimal           0.6484646   0.4349773   0.9667318
0-6 months    ki0047075b-MAL-ED          INDIA                          observed             optimal           1.4654914   0.8684319   2.4730379
0-6 months    ki0047075b-MAL-ED          NEPAL                          observed             optimal           2.3975587   1.1586876   4.9610333
0-6 months    ki0047075b-MAL-ED          PERU                           observed             optimal           1.2389038   1.0022645   1.5314149
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             optimal           0.9379565   0.7949218   1.1067282
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.4021477   1.0821779   1.8167237
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.9409631   1.4722408   2.5589142
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           1.3301352   0.9422536   1.8776894
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           2.4216941   1.4214907   4.1256704
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.4306682   1.1014921   1.8582172
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.2081328   1.1145799   1.3095382
0-6 months    ki1119695-PROBIT           BELARUS                        observed             optimal           1.0388821   0.9602898   1.1239065
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.2221154   1.1780526   1.2678263
0-6 months    ki1148112-LCNI-5           MALAWI                         observed             optimal           1.5582800   1.0532325   2.3055087
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           1.6993639   0.9780962   2.9525088
6-24 months   ki0047075b-MAL-ED          INDIA                          observed             optimal           1.0275522   0.6859161   1.5393481
6-24 months   ki0047075b-MAL-ED          NEPAL                          observed             optimal           1.7661686   0.9750571   3.1991475
6-24 months   ki0047075b-MAL-ED          PERU                           observed             optimal           1.1607023   0.8708919   1.5469540
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             optimal           1.0932680   0.9557393   1.2505868
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             optimal           0.8399571   0.7647776   0.9225270
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.6564585   1.2288176   2.2329226
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           1.5390372   1.0619447   2.2304696
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.2264178   0.8311389   1.8096863
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.5940321   1.1439279   2.2212399
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.0436375   0.9445659   1.1531003
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             optimal           1.4350656   0.7882339   2.6126932
6-24 months   ki1119695-PROBIT           BELARUS                        observed             optimal           1.0522437   0.9886132   1.1199697
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.1584390   1.1028553   1.2168242
6-24 months   ki1148112-LCNI-5           MALAWI                         observed             optimal           1.1185095   0.9517393   1.3145023


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.2405108    0.1134300    0.3675917
0-24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              NA                 0.0576608   -0.0600127    0.1753344
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.1385150   -0.0131200    0.2901499
0-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                 0.0465101   -0.0364723    0.1294926
0-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                 0.0751382   -0.0015033    0.1517798
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.0418749    0.0056748    0.0780750
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0310425   -0.0252895    0.0873745
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.2626500    0.1632454    0.3620546
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.1949525    0.0891674    0.3007376
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.2027033    0.1270300    0.2783765
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.1419791    0.0807038    0.2032544
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0379254    0.0214188    0.0544319
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.1075335   -0.0370309    0.2520979
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0064615   -0.0005673    0.0134904
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0680267    0.0587981    0.0772554
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.0570311   -0.0181954    0.1322576
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.1763426    0.0654900    0.2871953
0-6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              NA                -0.1005714   -0.2119789    0.0108362
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.1089409   -0.0137224    0.2316043
0-6 months    ki0047075b-MAL-ED          NEPAL                          optimal              NA                 0.1004171    0.0425748    0.1582594
0-6 months    ki0047075b-MAL-ED          PERU                           optimal              NA                 0.0851133    0.0094262    0.1608005
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                -0.0252341   -0.0927357    0.0422676
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.1198769    0.0428760    0.1968779
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.2050179    0.1340545    0.2759812
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.0868097   -0.0037852    0.1774045
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.1447920    0.0882944    0.2012897
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0913045    0.0355060    0.1471031
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0334738    0.0203333    0.0466143
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0036307   -0.0037278    0.0109892
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0511711    0.0426593    0.0596828
0-6 months    ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.1282357    0.0377648    0.2187067
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.1734181    0.0365076    0.3103286
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.0110714   -0.1512682    0.1734109
6-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                 0.0912098    0.0178233    0.1645962
6-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                 0.0542585   -0.0449035    0.1534204
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.0306245   -0.0134871    0.0747362
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.1484874   -0.2280419   -0.0689329
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.1991297    0.1085230    0.2897364
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.2010091    0.0639111    0.3381071
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0553448   -0.0396454    0.1503349
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0979521    0.0424972    0.1534071
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0095223   -0.0122490    0.0312935
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.1079266   -0.0298044    0.2456575
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0039870   -0.0009726    0.0089466
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0336529    0.0231691    0.0441367
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.0634554   -0.0226857    0.1495965


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.3941274    0.1429314    0.5717010
0-24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              NA                 0.2548610   -0.4939751    0.6283524
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.2280314   -0.0696144    0.4428502
0-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                 0.1349928   -0.1421117    0.3448648
0-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                 0.1171510   -0.0115594    0.2294844
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.0711083    0.0068065    0.1312470
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0361222   -0.0320083    0.0997549
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.3801645    0.2255199    0.5039305
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.2933615    0.1127188    0.4372270
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.4490347    0.2530268    0.5936096
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.2961166    0.1551764    0.4135441
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.1094484    0.0605241    0.1558248
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.3020636   -0.3049826    0.6267266
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0381270   -0.0057293    0.0800709
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.1561507    0.1346265    0.1771395
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.0896661   -0.0367211    0.2006455
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.5089890    0.0675146    0.7414525
0-6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              NA                -0.5421042   -1.2989707   -0.0344130
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.3176350   -0.1515008    0.5956390
0-6 months    ki0047075b-MAL-ED          NEPAL                          optimal              NA                 0.5829091    0.1369546    0.7984291
0-6 months    ki0047075b-MAL-ED          PERU                           optimal              NA                 0.1928349    0.0022594    0.3470091
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                -0.0661476   -0.2579855    0.0964358
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.2868084    0.0759375    0.4495586
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.4847919    0.3207633    0.6092093
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.2481967   -0.0612854    0.4674306
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.5870659    0.2965132    0.7576152
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.3010259    0.0921405    0.4618498
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.1722765    0.1028010    0.2363720
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0374269   -0.0413523    0.1102463
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.1817467    0.1511415    0.2112484
0-6 months    ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.3582668    0.0505420    0.5662562
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.4115445   -0.0223943    0.6613050
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.0268135   -0.4579043    0.3503743
6-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                 0.4338026   -0.0255810    0.6874167
6-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                 0.1384526   -0.1482481    0.3535684
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.0853112   -0.0463104    0.2003754
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.1905369   -0.3075697   -0.0839791
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.3963024    0.1862096    0.5521565
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.3502431    0.0583314    0.5516639
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.1846172   -0.2031684    0.4474180
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.3726601    0.1258190    0.5498010
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0418129   -0.0586874    0.1327728
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.3031677   -0.2686590    0.6172532
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0496498   -0.0115179    0.1071187
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.1367694    0.0932627    0.1781886
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.1059531   -0.0507078    0.2392558
