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

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/f242ad64-0d63-47ff-b40f-e9d986d2f4b0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f242ad64-0d63-47ff-b40f-e9d986d2f4b0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f242ad64-0d63-47ff-b40f-e9d986d2f4b0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f242ad64-0d63-47ff-b40f-e9d986d2f4b0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                0.3732838   0.2527319   0.4938357
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg               NA                0.6725507   0.6016909   0.7434105
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           NA                0.4305674   0.3130537   0.5480811
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                0.2307692   0.1615571   0.2999813
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg               NA                0.2619048   0.1286336   0.3951759
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           NA                0.1666667   0.0446511   0.2886823
0-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                0.4792190   0.3372297   0.6212083
0-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg               NA                0.6687527   0.5943242   0.7431813
0-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg           NA                0.6045120   0.4766947   0.7323293
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                0.2691065   0.1713364   0.3668767
0-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg               NA                0.5216457   0.4115762   0.6317152
0-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg           NA                0.2568705   0.1640867   0.3496542
0-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                0.5545619   0.4707315   0.6383923
0-24 months   ki0047075b-MAL-ED          PERU                           <52 kg               NA                0.6009697   0.5211016   0.6808379
0-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg           NA                0.7245662   0.6306991   0.8184334
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                0.5463918   0.4762066   0.6165769
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               NA                0.8000000   0.6565987   0.9434013
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           NA                0.6304348   0.4906884   0.7701812
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.8265306   0.7514158   0.9016455
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.8888889   0.8268616   0.9509162
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.8644068   0.7768782   0.9519354
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.4121126   0.3141252   0.5101000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                0.7423067   0.6998429   0.7847706
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                0.5484662   0.4710825   0.6258499
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.4440974   0.3409205   0.5472744
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                0.7070639   0.6652720   0.7488558
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.6041332   0.5128975   0.6953689
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.2392941   0.1681592   0.3104290
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                0.5332211   0.4868941   0.5795481
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                0.3597592   0.2797469   0.4397715
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.3460241   0.2808272   0.4112210
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                0.5586791   0.5109839   0.6063742
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                0.4749191   0.3987281   0.5511102
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.3043443   0.2810669   0.3276216
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.4779058   0.4323841   0.5234275
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.3877810   0.3462738   0.4292882
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.2501150   0.0732973   0.4269327
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg               NA                0.4505155   0.3941205   0.5069105
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg           NA                0.3440802   0.3015083   0.3866522
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.1587842   0.1385430   0.1790253
0-24 months   ki1119695-PROBIT           BELARUS                        <52 kg               NA                0.2661698   0.2338359   0.2985038
0-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                0.1845782   0.1599616   0.2091947
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.3655998   0.3532931   0.3779065
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.5681219   0.5487841   0.5874598
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.4743034   0.4565799   0.4920268
0-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                0.5153421   0.4247292   0.6059551
0-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg               NA                0.7123773   0.6729066   0.7518481
0-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg           NA                0.5239968   0.4581072   0.5898865
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                0.1841333   0.0833531   0.2849136
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg               NA                0.4047397   0.3305845   0.4788949
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           NA                0.1871586   0.0845788   0.2897384
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                0.1958042   0.1306178   0.2609906
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg               NA                0.1666667   0.0537022   0.2796312
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           NA                0.1666667   0.0446511   0.2886823
0-6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                0.2408150   0.1216534   0.3599766
0-6 months    ki0047075b-MAL-ED          INDIA                          <52 kg               NA                0.3592928   0.2840086   0.4345770
0-6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg           NA                0.3759526   0.2525363   0.4993690
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                0.1750000   0.0915621   0.2584379
0-6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg               NA                0.2763158   0.1755686   0.3770630
0-6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg           NA                0.0731707   0.0166869   0.1296545
0-6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              NA                0.3506413   0.2683189   0.4329637
0-6 months    ki0047075b-MAL-ED          PERU                           <52 kg               NA                0.4705129   0.3866854   0.5543403
0-6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg           NA                0.4930284   0.3835922   0.6024645
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                0.3469096   0.2799970   0.4138221
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               NA                0.5826067   0.4117172   0.7534962
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           NA                0.4194274   0.2795654   0.5592893
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.3069532   0.2199359   0.3939705
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.5322532   0.4377402   0.6267663
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.4354185   0.3205815   0.5502556
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.2243828   0.1766114   0.2721542
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                0.4645017   0.4220809   0.5069226
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                0.3164371   0.2520435   0.3808307
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.2553604   0.1666096   0.3441112
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                0.3917090   0.3468977   0.4365204
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.2632190   0.1808673   0.3455706
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.1005362   0.0492342   0.1518383
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                0.2834373   0.2412877   0.3255868
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                0.2529127   0.1772082   0.3286172
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.2181359   0.1604630   0.2758088
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                0.3540896   0.3080563   0.4001230
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                0.3037048   0.2322293   0.3751803
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.1604466   0.1418278   0.1790654
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.2932413   0.2510505   0.3354321
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.2273752   0.1914107   0.2633398
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0896155   0.0761726   0.1030584
0-6 months    ki1119695-PROBIT           BELARUS                        <52 kg               NA                0.1590815   0.1329476   0.1852154
0-6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                0.1067847   0.0869516   0.1266178
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.2291831   0.2184313   0.2399349
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.3755987   0.3567339   0.3944635
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.3118966   0.2954902   0.3283030
0-6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                0.2727273   0.1204950   0.4249596
0-6 months    ki1148112-LCNI-5           MALAWI                         <52 kg               NA                0.4311377   0.3558881   0.5063873
0-6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg           NA                0.2253521   0.1279867   0.3227175
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                0.2571429   0.1118902   0.4023955
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg               NA                0.5054945   0.4024461   0.6085429
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           NA                0.3636364   0.1989918   0.5282810
6-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                0.2903226   0.1300188   0.4506263
6-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg               NA                0.4838710   0.3819752   0.5857667
6-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg           NA                0.3225806   0.1574907   0.4876706
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                0.1212121   0.0422702   0.2001540
6-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg               NA                0.3333333   0.2072780   0.4593887
6-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg           NA                0.2000000   0.1092401   0.2907599
6-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                0.3503069   0.2407314   0.4598823
6-24 months   ki0047075b-MAL-ED          PERU                           <52 kg               NA                0.2929751   0.1892965   0.3966536
6-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg           NA                0.4913058   0.3386129   0.6439987
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                0.3277311   0.2431250   0.4123371
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               NA                0.5384615   0.2665960   0.8103271
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           NA                0.4166667   0.2187913   0.6145420
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.7611940   0.6587507   0.8636374
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.8181818   0.7038234   0.9325402
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.7647059   0.6216308   0.9077810
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.2555533   0.1529710   0.3581356
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                0.5633189   0.5163469   0.6102908
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                0.3572240   0.2730269   0.4414212
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.3301388   0.2115255   0.4487522
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                0.6256072   0.5637214   0.6874929
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.5317783   0.4228081   0.6407484
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.1791241   0.1078514   0.2503967
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                0.3898001   0.3330060   0.4465941
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                0.1782571   0.0967592   0.2597551
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.1661850   0.1084817   0.2238882
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                0.3321952   0.2748678   0.3895227
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                0.2616612   0.1793136   0.3440089
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.2043561   0.1800278   0.2286843
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.3338288   0.2774773   0.3901804
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.2461850   0.2009014   0.2914685
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.2499072   0.0735897   0.4262248
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg               NA                0.4504132   0.3938017   0.5070246
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg           NA                0.3440819   0.3013992   0.3867645
6-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0759640   0.0610938   0.0908342
6-24 months   ki1119695-PROBIT           BELARUS                        <52 kg               NA                0.1274079   0.1045941   0.1502216
6-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                0.0868418   0.0693078   0.1043758
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.2047881   0.1921760   0.2174003
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.3507138   0.3263232   0.3751044
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.2692555   0.2493856   0.2891255
6-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                0.4695320   0.3786654   0.5603986
6-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg               NA                0.6747778   0.6306433   0.7189123
6-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg           NA                0.4870198   0.4196838   0.5543557


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.6102362   0.5501413   0.6703311
0-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.2262443   0.1709568   0.2815319
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.6074380   0.5457864   0.6690897
0-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.3445378   0.2840363   0.4050393
0-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.6413793   0.5860858   0.6966728
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.5888889   0.5300901   0.6476877
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8593750   0.8167072   0.9020428
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.6908851   0.6500577   0.7317124
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.6645469   0.6276196   0.7014742
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.4514200   0.4136828   0.4891573
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.4794702   0.4438115   0.5151289
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3465136   0.3272783   0.3657490
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.3559962   0.3060347   0.4059578
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.1694743   0.1504830   0.1884655
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.4356480   0.4264663   0.4448297
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.6360382   0.6034429   0.6686335
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.3464567   0.2878227   0.4050907
0-6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.1855204   0.1341547   0.2368860
0-6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.3429752   0.2830428   0.4029076
0-6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1722689   0.1241936   0.2203442
0-6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.4413793   0.3841309   0.4986278
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3814815   0.3234338   0.4395292
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4179688   0.3574314   0.4785061
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.4228987   0.3938571   0.4519404
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.3497615   0.3124631   0.3870600
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2466368   0.2139486   0.2793250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3033113   0.2704998   0.3361228
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1943027   0.1783091   0.2102964
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0970084   0.0840167   0.1100001
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2815517   0.2732174   0.2898859
0-6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3579336   0.3007518   0.4151153
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4213836   0.3443902   0.4983771
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4129032   0.3351414   0.4906651
6-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.2102564   0.1529155   0.2675974
6-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.3918919   0.3129763   0.4708075
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3589744   0.2834562   0.4344926
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7793103   0.7115754   0.8470453
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5024691   0.4579693   0.5469690
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5739130   0.5216565   0.6261696
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2997812   0.2577294   0.3418330
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2628458   0.2244546   0.3012371
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2277354   0.2069978   0.2484730
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.3559962   0.3060347   0.4059578
6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0803025   0.0658938   0.0947113
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2460554   0.2359900   0.2561209
6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.5989011   0.5632737   0.6345285


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg               >=58 kg           1.8017141   1.2797447   2.536579
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           >=58 kg           1.1534586   0.7580206   1.755185
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg               >=58 kg           1.1349206   0.6287002   2.048743
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           >=58 kg           0.7222222   0.3274012   1.593167
0-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg               >=58 kg           1.3955055   1.0165487   1.915733
0-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg           >=58 kg           1.2614524   0.8769617   1.814517
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg               >=58 kg           1.9384357   1.2738058   2.949847
0-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg           >=58 kg           0.9545308   0.5721206   1.592547
0-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          PERU                           <52 kg               >=58 kg           1.0836838   0.8858394   1.325715
0-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg           >=58 kg           1.3065562   1.0713438   1.593409
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               >=58 kg           1.4641509   1.1743924   1.825402
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           >=58 kg           1.1538146   0.8930418   1.490734
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.0754458   0.9590191   1.206007
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.0458255   0.9127860   1.198256
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           1.8012233   1.4250901   2.276632
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg           1.3308650   0.9281548   1.908304
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           1.5921369   1.2529819   2.023094
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           1.3603619   1.0310173   1.794911
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           2.2283087   1.6349286   3.037050
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg           1.5034187   1.0374317   2.178715
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           1.6145668   1.3128839   1.985572
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           1.3725030   1.0720589   1.757146
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.5702803   1.3899244   1.774039
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.2741524   1.1171924   1.453164
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg               >=58 kg           1.8012334   0.8779236   3.695586
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg           >=58 kg           1.3756881   0.6718597   2.816835
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           1.6762995   1.5167743   1.852603
0-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           1.1624468   1.0223739   1.321711
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           1.5539448   1.4813428   1.630105
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.2973293   1.2337488   1.364186
0-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg               >=58 kg           1.3823386   1.1499412   1.661703
0-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg           >=58 kg           1.0167941   0.8194463   1.261669
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg               >=58 kg           2.1980794   1.2314780   3.923377
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           >=58 kg           1.0164296   0.4712806   2.192174
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg               >=58 kg           0.8511905   0.4000147   1.811247
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           >=58 kg           0.8511905   0.3808482   1.902399
0-6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          INDIA                          <52 kg               >=58 kg           1.4919867   0.8747909   2.544636
0-6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg           >=58 kg           1.5611677   0.8637064   2.821844
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg               >=58 kg           1.5789474   0.8663523   2.877669
0-6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg           >=58 kg           0.4181185   0.1687547   1.035959
0-6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          PERU                           <52 kg               >=58 kg           1.3418638   0.9997985   1.800962
0-6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg           >=58 kg           1.4060761   1.0175374   1.942975
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               >=58 kg           1.6794196   1.1823329   2.385496
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           >=58 kg           1.2090395   0.8225408   1.777148
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.7339881   1.2410663   2.422687
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.4185175   0.9633399   2.088766
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           2.0701308   1.5686101   2.731999
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg           1.4102558   1.0331363   1.925033
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           1.5339459   1.0639764   2.211506
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           1.0307744   0.6461068   1.644459
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           2.8192546   1.6569972   4.796747
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg           2.5156369   1.3927969   4.543684
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           1.6232524   1.2089612   2.179514
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           1.3922733   0.9775034   1.983037
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.8276561   1.5192738   2.198634
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.4171392   1.1647942   1.724153
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           1.7751566   1.5182886   2.075482
0-6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           1.1915879   1.0018773   1.417221
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           1.6388584   1.5300428   1.755413
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.3609056   1.2683402   1.460227
0-6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki1148112-LCNI-5           MALAWI                         <52 kg               >=58 kg           1.5808383   0.8808382   2.837127
0-6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg           >=58 kg           0.8262911   0.4079244   1.673734
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg               >=58 kg           1.9658120   1.0782881   3.583844
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           >=58 kg           1.4141414   0.6856329   2.916715
6-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg               >=58 kg           1.6666667   0.9230003   3.009509
6-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg           >=58 kg           1.1111111   0.5233538   2.358955
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg               >=58 kg           2.7500000   1.2949842   5.839839
6-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg           >=58 kg           1.6500000   0.7460183   3.649374
6-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          PERU                           <52 kg               >=58 kg           0.8363384   0.5190625   1.347549
6-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg           >=58 kg           1.4025011   0.9031687   2.177898
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               >=58 kg           1.6429980   0.9318888   2.896743
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           >=58 kg           1.2713675   0.7404925   2.182838
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.0748663   0.8852937   1.305033
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.0046136   0.7978212   1.265006
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           2.2043107   1.4889633   3.263335
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg           1.3978454   0.7782692   2.510663
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           1.8949820   1.3063759   2.748793
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           1.6107716   1.0647667   2.436764
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           2.1761456   1.4248386   3.323611
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg           0.9951601   0.5426434   1.825036
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           1.9989489   1.3582549   2.941861
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           1.5745182   0.9863939   2.513304
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.6335645   1.3287156   2.008355
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.2046864   0.9677043   1.499703
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg               >=58 kg           1.8023214   0.8795879   3.693050
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg           >=58 kg           1.3768383   0.6731081   2.816314
6-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           1.6772138   1.4432984   1.949040
6-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           1.1431968   0.9529150   1.371475
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           1.7125689   1.5607239   1.879187
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.3148004   1.1944217   1.447311
6-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg               >=58 kg           1.4371285   1.1721583   1.761996
6-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg           >=58 kg           1.0372452   0.8181427   1.315024


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                 0.2369524    0.1256479   0.3482569
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                -0.0045249   -0.0451180   0.0360682
0-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                 0.1282190   -0.0007410   0.2571791
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                 0.0754313   -0.0067457   0.1576083
0-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                 0.0868174    0.0187296   0.1549053
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                 0.0424971    0.0063797   0.0786146
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0328444   -0.0232176   0.0889064
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                 0.2787725    0.1778571   0.3796879
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                 0.2204495    0.1246131   0.3162858
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                 0.2121259    0.1448572   0.2793947
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                 0.1334461    0.0754759   0.1914163
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0421693    0.0270290   0.0573097
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                 0.1058812   -0.0326059   0.2443684
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                 0.0106901    0.0062071   0.0151731
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.0700482    0.0611902   0.0789062
0-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                 0.1206960    0.0370215   0.2043706
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                 0.1623234    0.0652651   0.2593816
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                -0.0102838   -0.0475484   0.0269807
0-6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                 0.1021602   -0.0090645   0.2133849
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                -0.0027311   -0.0705017   0.0650396
0-6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              NA                 0.0907380    0.0219039   0.1595721
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                 0.0345719   -0.0027877   0.0719316
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.1110155    0.0392034   0.1828277
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                 0.1985160    0.1299281   0.2671038
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                 0.0944011    0.0099950   0.1788073
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                 0.1461005    0.0940574   0.1981436
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                 0.0851754    0.0323921   0.1379586
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0338561    0.0209030   0.0468092
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                 0.0073929    0.0033161   0.0114698
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.0523685    0.0442982   0.0604388
0-6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                 0.0852063   -0.0590172   0.2294298
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                 0.1642408    0.0310577   0.2974239
6-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                 0.1225806   -0.0239297   0.2690910
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                 0.0890443    0.0162340   0.1618546
6-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                 0.0415850   -0.0448390   0.1280090
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                 0.0312433   -0.0128063   0.0752928
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0181163   -0.0552606   0.0914932
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                 0.2469158    0.1429099   0.3509218
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                 0.2437742    0.1327064   0.3548421
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                 0.1206571    0.0527512   0.1885630
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                 0.0966609    0.0441498   0.1491719
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0233793    0.0080275   0.0387311
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                 0.1060890   -0.0318874   0.2440654
6-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                 0.0043385    0.0011126   0.0075645
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.0412673    0.0320647   0.0504699
6-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                 0.1293691    0.0456418   0.2130964


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                 0.3882962    0.1760411   0.5458735
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                -0.0200000   -0.2161373   0.1445045
0-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                 0.2110817   -0.0334664   0.3977625
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                 0.2189348   -0.0597257   0.4243200
0-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                 0.1353605    0.0228521   0.2349147
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                 0.0721649    0.0080152   0.1321663
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0382189   -0.0295971   0.1015681
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                 0.4035006    0.2438954   0.5294149
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                 0.3317290    0.1690036   0.4625896
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                 0.4699081    0.3001005   0.5985175
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                 0.2783199    0.1468605   0.3895227
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.1216961    0.0770486   0.1641838
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                 0.2974223   -0.2755866   0.6130287
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                 0.0630781    0.0341221   0.0911661
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.1607908    0.1401617   0.1809249
0-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                 0.1897623    0.0461947   0.3117199
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                 0.4685242    0.1126246   0.6816832
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                -0.0554324   -0.2763152   0.1272238
0-6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                 0.2978647   -0.1100073   0.5558641
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                -0.0158537   -0.4962710   0.3103130
0-6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              NA                 0.2055783    0.0356026   0.3455957
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                 0.0906254   -0.0128369   0.1835190
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.2656072    0.0735830   0.4178294
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                 0.4694172    0.3130910   0.5901668
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                 0.2699014   -0.0144114   0.4745288
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                 0.5923712    0.3360812   0.7497266
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                 0.2808183    0.0865620   0.4337631
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.1742440    0.1060381   0.2372460
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                 0.0762093    0.0323966   0.1180381
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.1859997    0.1570838   0.2139236
0-6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                 0.2380506   -0.2925147   0.5508238
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                 0.3897655   -0.0228150   0.6359203
6-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                 0.2968750   -0.1645763   0.5754810
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                 0.4235033   -0.0266294   0.6762723
6-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                 0.1061135   -0.1419332   0.3002804
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                 0.0870348   -0.0443387   0.2018821
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0232466   -0.0757380   0.1131230
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                 0.4914050    0.2452223   0.6572912
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                 0.4247581    0.1939413   0.5894800
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                 0.4024839    0.1356101   0.5869625
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                 0.3677474    0.1394272   0.5354916
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.1026600    0.0331243   0.1671949
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                 0.2980059   -0.2726726   0.6127867
6-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                 0.0540274    0.0114584   0.0947633
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.1677154    0.1298488   0.2039342
6-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                 0.2160108    0.0623234   0.3445085
