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
![](/tmp/099e39ab-fd2a-4ceb-a6ad-8aa8080bc9f3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/099e39ab-fd2a-4ceb-a6ad-8aa8080bc9f3/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.2613470   0.1482498   0.3744443
0-24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              NA                0.1721435   0.0501169   0.2941702
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.4698010   0.3271568   0.6124453
0-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                0.1647350   0.0831046   0.2463653
0-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                0.4092403   0.3244332   0.4940474
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.5463512   0.4761660   0.6165364
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.8298428   0.7547262   0.9049594
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.4294606   0.3338700   0.5250511
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.4635053   0.3610192   0.5659913
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.2503708   0.1804485   0.3202932
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.3469020   0.2809333   0.4128708
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2857531   0.2622260   0.3092802
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                0.2510562   0.0778763   0.4242361
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                0.1505784   0.1329248   0.1682320
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.3641439   0.3518418   0.3764459
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.5163838   0.4257045   0.6070632
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.1463166   0.0585938   0.2340395
0-6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              NA                0.1740104   0.0707370   0.2772838
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                0.1688578   0.0750811   0.2626344
0-6 months    ki0047075b-MAL-ED          NEPAL                          optimal              NA                0.0726181   0.0161342   0.1291020
0-6 months    ki0047075b-MAL-ED          PERU                           optimal              NA                0.4423064   0.3566931   0.5279197
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.3475824   0.2808339   0.4143308
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.3065081   0.2192736   0.3937425
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.2198885   0.1714465   0.2683305
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.2389418   0.1505096   0.3273740
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.1063877   0.0551985   0.1575768
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.2079549   0.1509731   0.2649366
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1605068   0.1418866   0.1791269
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                0.0757501   0.0645306   0.0869696
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.2268002   0.2160585   0.2375418
0-6 months    ki1148112-LCNI-5           MALAWI                         optimal              NA                0.2205015   0.1231313   0.3178718
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.2593638   0.1141097   0.4046178
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.2884926   0.1281879   0.4487974
6-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                0.1226441   0.0437017   0.2015865
6-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                0.1481966   0.0690520   0.2273413
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.3843692   0.1876884   0.5810499
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.7666027   0.6278824   0.9053229
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.2588168   0.1830418   0.3345918
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.3566007   0.2381279   0.4750736
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.1738051   0.1013808   0.2462294
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.1688787   0.1117299   0.2260275
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2046266   0.1802901   0.2289630
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                0.2498722   0.0728010   0.4269435
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                0.0626379   0.0508280   0.0744477
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.1973415   0.1847968   0.2098861
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.4756637   0.3825306   0.5687969


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.6150353   0.5549404   0.6751302
0-24 months   ki0047075b-MAL-ED          BRAZIL                         observed             NA                0.2268665   0.1715790   0.2821541
0-24 months   ki0047075b-MAL-ED          INDIA                          observed             NA                0.6098230   0.5481713   0.6714746
0-24 months   ki0047075b-MAL-ED          NEPAL                          observed             NA                0.3463989   0.2858974   0.4069004
0-24 months   ki0047075b-MAL-ED          PERU                           observed             NA                0.6461056   0.5908120   0.7013991
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             NA                0.5888470   0.5300483   0.6476458
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             NA                0.8600513   0.8173835   0.9027191
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.6907381   0.6499108   0.7315654
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             NA                0.6653616   0.6284343   0.7022889
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.4515150   0.4137778   0.4892523
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.4806788   0.4450201   0.5163376
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.3468755   0.3276401   0.3661108
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             NA                0.3574927   0.3075312   0.4074543
0-24 months   ki1119695-PROBIT           BELARUS                        observed             NA                0.1694426   0.1504514   0.1884339
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.4357254   0.4265437   0.4449071
0-24 months   ki1148112-LCNI-5           MALAWI                         observed             NA                0.6362846   0.6036893   0.6688798
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.3489372   0.2903032   0.4075712
0-6 months    ki0047075b-MAL-ED          BRAZIL                         observed             NA                0.1854007   0.1340351   0.2367664
0-6 months    ki0047075b-MAL-ED          INDIA                          observed             NA                0.3454237   0.2854913   0.4053561
0-6 months    ki0047075b-MAL-ED          NEPAL                          observed             NA                0.1721520   0.1240767   0.2202273
0-6 months    ki0047075b-MAL-ED          PERU                           observed             NA                0.4404704   0.3832220   0.4977188
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             NA                0.3821394   0.3240917   0.4401871
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             NA                0.4177265   0.3571892   0.4782638
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.4228562   0.3938145   0.4518978
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             NA                0.3498010   0.3125026   0.3870995
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.2465965   0.2139083   0.2792846
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.3032168   0.2704053   0.3360283
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.1943938   0.1784001   0.2103874
0-6 months    ki1119695-PROBIT           BELARUS                        observed             NA                0.0969955   0.0840038   0.1099872
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.2817802   0.2734460   0.2901145
0-6 months    ki1148112-LCNI-5           MALAWI                         observed             NA                0.3583743   0.3011925   0.4155560
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.4232781   0.3462846   0.5002715
6-24 months   ki0047075b-MAL-ED          INDIA                          observed             NA                0.4120983   0.3343364   0.4898601
6-24 months   ki0047075b-MAL-ED          NEPAL                          observed             NA                0.2105984   0.1532575   0.2679394
6-24 months   ki0047075b-MAL-ED          PERU                           observed             NA                0.4003552   0.3214396   0.4792708
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             NA                0.3522426   0.2767244   0.4277608
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             NA                0.7627324   0.6949974   0.8304674
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.4997058   0.4552059   0.5442056
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             NA                0.5746266   0.5223700   0.6268832
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.3002171   0.2581653   0.3422689
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.2635890   0.2251977   0.3019802
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.2280473   0.2073097   0.2487849
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             NA                0.3569790   0.3070175   0.4069406
6-24 months   ki1119695-PROBIT           BELARUS                        observed             NA                0.0799572   0.0655484   0.0943660
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.2464648   0.2363994   0.2565303
6-24 months   ki1148112-LCNI-5           MALAWI                         observed             NA                0.5987512   0.5631238   0.6343786


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          0.4249302   0.2829027   0.6382607
0-24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          0.7587876   0.3916488   1.4700891
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          0.7703891   0.5843633   1.0156343
0-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          0.4755643   0.3056822   0.7398580
0-24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          0.6333954   0.5327539   0.7530489
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          0.9278322   0.8678257   0.9919878
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.9648759   0.9016202   1.0325695
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          0.6217415   0.4982181   0.7758901
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          0.6966216   0.5665694   0.8565264
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          0.5545127   0.4272753   0.7196399
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          0.7216919   0.6094289   0.8546349
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.8237916   0.7786997   0.8714946
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              observed          0.7022693   0.3933130   1.2539179
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          0.8886688   0.8609577   0.9172717
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          0.8357187   0.8155762   0.8563586
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          0.8115612   0.6895554   0.9551539
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          0.4193208   0.2376327   0.7399232
0-6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          0.9385638   0.5602592   1.5723116
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          0.4888424   0.2929539   0.8157151
0-6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          0.4218255   0.2069252   0.8599086
0-6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          1.0041683   0.8482045   1.1888099
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          0.9095696   0.8169275   1.0127177
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.7337530   0.5811497   0.9264280
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          0.5200078   0.3992345   0.6773165
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          0.6830792   0.4811495   0.9697551
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          0.4314242   0.2724751   0.6830966
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          0.6858291   0.5353500   0.8786056
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.8256786   0.7626922   0.8938666
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          0.7809650   0.7389563   0.8253618
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          0.8048832   0.7768602   0.8339170
0-6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          0.6152828   0.4135618   0.9153961
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          0.6127503   0.3672840   1.0222684
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          0.7000579   0.4212485   1.1634014
6-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          0.5823599   0.3293319   1.0297912
6-24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          0.3701629   0.2309107   0.5933920
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          1.0912059   0.6828151   1.7438545
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          1.0050742   0.8684726   1.1631617
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          0.5179384   0.3795284   0.7068250
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          0.6205782   0.4550207   0.8463731
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          0.5789314   0.3928627   0.8531266
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          0.6406895   0.4751912   0.8638271
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.8972987   0.8328274   0.9667609
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              observed          0.6999633   0.3847729   1.2733450
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          0.7833922   0.7337371   0.8364076
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          0.8006880   0.7638838   0.8392655
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          0.7944264   0.6627844   0.9522150
