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

unadjusted

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







# Results Detail

## Results Plots
![](/tmp/7d7bab1a-e01c-4578-9f59-fa4b95c53edd/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7d7bab1a-e01c-4578-9f59-fa4b95c53edd/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7d7bab1a-e01c-4578-9f59-fa4b95c53edd/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7d7bab1a-e01c-4578-9f59-fa4b95c53edd/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                0.3958333   0.2572157   0.5344510
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg               NA                0.6975309   0.6266597   0.7684020
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           NA                0.5227273   0.3748507   0.6706038
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                0.2307692   0.1615571   0.2999813
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg               NA                0.2619048   0.1286336   0.3951759
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           NA                0.1666667   0.0446511   0.2886823
0-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                0.4523810   0.3015418   0.6032201
0-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg               NA                0.6600000   0.5840351   0.7359649
0-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg           NA                0.5800000   0.4429115   0.7170885
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                0.2750000   0.1769488   0.3730512
0-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg               NA                0.5131579   0.4005484   0.6257674
0-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg           NA                0.2560976   0.1614267   0.3507684
0-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                0.5961538   0.5016893   0.6906184
0-24 months   ki0047075b-MAL-ED          PERU                           <52 kg               NA                0.6347826   0.5466295   0.7229357
0-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg           NA                0.7183099   0.6134979   0.8231218
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                0.5463918   0.4762066   0.6165769
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               NA                0.8000000   0.6565987   0.9434013
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           NA                0.6304348   0.4906884   0.7701812
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.8265306   0.7514158   0.9016455
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.8888889   0.8268616   0.9509162
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.8644068   0.7768782   0.9519354
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.4311927   0.3357012   0.5266841
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                0.7431507   0.7007461   0.7855552
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                0.5527426   0.4772008   0.6282844
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.4756098   0.3674317   0.5837879
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                0.7041943   0.6621319   0.7462567
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.6382979   0.5410865   0.7355092
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.2500000   0.1724677   0.3275323
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                0.5277778   0.4806660   0.5748896
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                0.3760684   0.2882305   0.4639063
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.3489583   0.2814937   0.4164230
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                0.5467980   0.4983437   0.5952523
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                0.4649682   0.3868976   0.5430387
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.3035230   0.2800620   0.3269840
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.4631043   0.4137951   0.5124136
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.3830228   0.3396603   0.4263852
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.2470462   0.0911122   0.4029802
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg               NA                0.4516400   0.3940579   0.5092222
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg           NA                0.3443709   0.3012338   0.3875079
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.1573110   0.1373275   0.1772945
0-24 months   ki1119695-PROBIT           BELARUS                        <52 kg               NA                0.2599469   0.2275528   0.2923411
0-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                0.1790855   0.1561614   0.2020096
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.3652233   0.3528770   0.3775697
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.5622924   0.5424765   0.5821082
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.4717237   0.4537180   0.4897294
0-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                0.5175439   0.4257619   0.6093258
0-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg               NA                0.7123016   0.6727565   0.7518467
0-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg           NA                0.5227273   0.4566858   0.5887688
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                0.2083333   0.0932176   0.3234491
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg               NA                0.4135802   0.3375946   0.4895659
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           NA                0.2500000   0.1218027   0.3781973
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                0.1958042   0.1306178   0.2609906
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg               NA                0.1666667   0.0537022   0.2796312
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           NA                0.1666667   0.0446511   0.2886823
0-6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                0.2380952   0.1090184   0.3671721
0-6 months    ki0047075b-MAL-ED          INDIA                          <52 kg               NA                0.3600000   0.2830262   0.4369738
0-6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg           NA                0.3800000   0.2451814   0.5148186
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                0.1750000   0.0915621   0.2584379
0-6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg               NA                0.2763158   0.1755686   0.3770630
0-6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg           NA                0.0731707   0.0166869   0.1296545
0-6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              NA                0.3750000   0.2817954   0.4682046
0-6 months    ki0047075b-MAL-ED          PERU                           <52 kg               NA                0.4695652   0.3781932   0.5609372
0-6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg           NA                0.4929577   0.3764658   0.6094497
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                0.3453608   0.2783275   0.4123941
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               NA                0.5666667   0.3890155   0.7443178
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           NA                0.4130435   0.2704907   0.5555963
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.3061224   0.2146956   0.3975493
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.5252525   0.4266936   0.6238114
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.4237288   0.2973921   0.5500655
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.2201835   0.1722696   0.2680974
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                0.4643777   0.4221176   0.5066377
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                0.3122363   0.2443228   0.3801498
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.2560976   0.1615506   0.3506445
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                0.3863135   0.3414402   0.4311867
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.2553191   0.1671013   0.3435370
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.1083333   0.0526834   0.1639833
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                0.2824074   0.2399251   0.3248897
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                0.2564103   0.1772305   0.3355901
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.2031250   0.1461792   0.2600708
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                0.3546798   0.3081128   0.4012469
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                0.2929936   0.2217532   0.3642341
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.1598916   0.1411900   0.1785932
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.2875318   0.2427739   0.3322897
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.2236025   0.1864364   0.2607686
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0886273   0.0753270   0.1019276
0-6 months    ki1119695-PROBIT           BELARUS                        <52 kg               NA                0.1591512   0.1318016   0.1865008
0-6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                0.1037257   0.0854463   0.1220050
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.2291345   0.2183505   0.2399186
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.3733888   0.3540562   0.3927213
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.3103799   0.2936784   0.3270814
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
6-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                0.3709677   0.2503173   0.4916182
6-24 months   ki0047075b-MAL-ED          PERU                           <52 kg               NA                0.3518519   0.2240490   0.4796547
6-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg           NA                0.5000000   0.3261738   0.6738262
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                0.3277311   0.2431250   0.4123371
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               NA                0.5384615   0.2665960   0.8103271
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           NA                0.4166667   0.2187913   0.6145420
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.7611940   0.6587507   0.8636374
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.8181818   0.7038234   0.9325402
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.7647059   0.6216308   0.9077810
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.2911392   0.1936378   0.3886407
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                0.5647668   0.5186545   0.6108792
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                0.3750000   0.2731289   0.4768711
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.3461538   0.2166600   0.4756477
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                0.6288210   0.5661573   0.6914846
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.5625000   0.4407865   0.6842135
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.1683168   0.0952693   0.2413644
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                0.3840580   0.3266149   0.4415010
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                0.1750000   0.0916463   0.2583537
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.1879195   0.1251324   0.2507065
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                0.3107570   0.2534460   0.3680679
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                0.2547170   0.1716909   0.3377430
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.2036503   0.1791791   0.2281215
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.3194444   0.2572447   0.3816442
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.2444444   0.1969706   0.2919183
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.2470462   0.0911122   0.4029802
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg               NA                0.4516400   0.3940579   0.5092222
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg           NA                0.3443709   0.3012338   0.3875079
6-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0754193   0.0606799   0.0901587
6-24 months   ki1119695-PROBIT           BELARUS                        <52 kg               NA                0.1198738   0.0962525   0.1434952
6-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                0.0841210   0.0661186   0.1021234
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.2046213   0.1919510   0.2172916
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.3390335   0.3137330   0.3643339
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.2662953   0.2458455   0.2867451
6-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                0.4761905   0.3805968   0.5717841
6-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg               NA                0.6752941   0.6307445   0.7198437
6-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg           NA                0.5000000   0.4303078   0.5696922


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
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg               >=58 kg           1.7621832   1.2237501   2.537520
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           >=58 kg           1.3205742   0.8418822   2.071449
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg               >=58 kg           1.1349206   0.6287002   2.048743
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           >=58 kg           0.7222222   0.3274012   1.593167
0-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg               >=58 kg           1.4589474   1.0252893   2.076026
0-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg           >=58 kg           1.2821053   0.8519677   1.929409
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg               >=58 kg           1.8660287   1.2277016   2.836245
0-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg           >=58 kg           0.9312639   0.5572122   1.556413
0-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          PERU                           <52 kg               >=58 kg           1.0647966   0.8625050   1.314534
0-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg           >=58 kg           1.2049069   0.9714132   1.494524
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               >=58 kg           1.4641509   1.1743924   1.825402
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           >=58 kg           1.1538146   0.8930418   1.490734
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.0754458   0.9590191   1.206007
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.0458255   0.9127860   1.198256
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           1.7234771   1.3876003   2.140655
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg           1.2818924   0.9109777   1.803829
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           1.4806136   1.1703384   1.873148
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           1.3420622   1.0206873   1.764626
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           2.1111111   1.5288168   2.915189
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg           1.5042735   1.0202671   2.217889
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           1.5669436   1.2667497   1.938277
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           1.3324461   1.0314354   1.721303
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.5257634   1.3376591   1.740319
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.2619232   1.1002697   1.447327
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg               >=58 kg           1.8281603   0.9628513   3.471118
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg           >=58 kg           1.3939534   0.7375469   2.634552
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           1.6524395   1.4946603   1.826874
0-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           1.1384169   1.0087952   1.284694
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           1.5395849   1.4662077   1.616634
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.2916033   1.2273984   1.359167
0-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg               >=58 kg           1.3763115   1.1429113   1.657376
0-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg           >=58 kg           1.0100154   0.8123881   1.255719
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg               >=58 kg           1.9851852   1.1089488   3.553780
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           >=58 kg           1.2000000   0.5646690   2.550167
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg               >=58 kg           0.8511905   0.4000147   1.811247
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           >=58 kg           0.8511905   0.3808482   1.902399
0-6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          INDIA                          <52 kg               >=58 kg           1.5120000   0.8442293   2.707966
0-6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg           >=58 kg           1.5960000   0.8349394   3.050779
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg               >=58 kg           1.5789474   0.8663523   2.877669
0-6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg           >=58 kg           0.4181185   0.1687547   1.035959
0-6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          PERU                           <52 kg               >=58 kg           1.2521739   0.9132221   1.716931
0-6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg           >=58 kg           1.3145540   0.9328994   1.852346
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               >=58 kg           1.6407960   1.1348019   2.372407
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           >=58 kg           1.1959766   0.8049301   1.776999
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.7158249   1.2058435   2.441490
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.3841808   0.9076430   2.110914
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           2.1090486   1.5912668   2.795311
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg           1.4180731   1.0329858   1.946717
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           1.5084621   1.0243569   2.221353
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           0.9969605   0.6012813   1.653021
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           2.6068376   1.5263410   4.452217
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg           2.3668639   1.2997888   4.309965
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           1.7461160   1.2812347   2.379674
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           1.4424302   0.9952398   2.090556
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.7982921   1.4801286   2.184847
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.3984630   1.1412566   1.713636
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           1.7957356   1.5282534   2.110034
0-6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           1.1703579   0.9942931   1.377599
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           1.6295613   1.5194385   1.747665
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.3545750   1.2611194   1.454956
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
6-24 months   ki0047075b-MAL-ED          PERU                           <52 kg               >=58 kg           0.9484702   0.5824796   1.544424
6-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg           >=58 kg           1.3478261   0.8373007   2.169633
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               >=58 kg           1.6429980   0.9318888   2.896743
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           >=58 kg           1.2713675   0.7404925   2.182838
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.0748663   0.8852937   1.305033
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.0046136   0.7978212   1.265006
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           1.9398513   1.4041538   2.679922
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg           1.2880435   0.7526368   2.204325
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           1.8165939   1.2334615   2.675409
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           1.6250000   1.0547920   2.503456
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           2.2817562   1.4418202   3.610999
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg           1.0397059   0.5458379   1.980420
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           1.6536710   1.1290332   2.422097
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           1.3554582   0.8499000   2.161745
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.5685928   1.2477891   1.971874
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.2003145   0.9552371   1.508269
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg               >=58 kg           1.8281603   0.9628513   3.471118
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg           >=58 kg           1.3939534   0.7375469   2.634552
6-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           1.5894317   1.3724373   1.840735
6-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           1.1153775   0.9222683   1.348921
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           1.6568825   1.5037591   1.825598
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.3014053   1.1791532   1.436332
6-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg               >=58 kg           1.4181176   1.1480005   1.751792
6-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg           >=58 kg           1.0500000   0.8223400   1.340686


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                 0.2144029    0.0896473   0.3391584
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                -0.0045249   -0.0451180   0.0360682
0-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                 0.1550571    0.0184707   0.2916434
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                 0.0695378   -0.0129925   0.1520681
0-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                 0.0452255   -0.0294778   0.1199288
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                 0.0424971    0.0063797   0.0786146
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0328444   -0.0232176   0.0889064
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                 0.2596924    0.1621951   0.3571897
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                 0.1889371    0.0888626   0.2890117
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                 0.2014200    0.1287643   0.2740758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                 0.1305119    0.0712826   0.1897411
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0429906    0.0278385   0.0581427
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                 0.1089500   -0.0088494   0.2267495
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                 0.0121633    0.0078132   0.0165134
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.0704246    0.0616073   0.0792420
0-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                 0.1184943    0.0336743   0.2033143
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                 0.1381234    0.0300443   0.2462024
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                -0.0102838   -0.0475484   0.0269807
0-6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                 0.1048800   -0.0154098   0.2251697
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                -0.0027311   -0.0705017   0.0650396
0-6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              NA                 0.0663793   -0.0093421   0.1421007
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                 0.0361207   -0.0013724   0.0736137
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.1118463    0.0368538   0.1868388
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                 0.2027153    0.1343047   0.2711258
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                 0.0936640    0.0042236   0.1831044
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                 0.1383034    0.0830365   0.1935704
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                 0.1001863    0.0485133   0.1518592
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0344111    0.0215047   0.0473175
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                 0.0083811    0.0045535   0.0122088
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.0524171    0.0443891   0.0604452
0-6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                 0.0852063   -0.0590172   0.2294298
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                 0.1642408    0.0310577   0.2974239
6-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                 0.1225806   -0.0239297   0.2690910
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                 0.0890443    0.0162340   0.1618546
6-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                 0.0209241   -0.0717484   0.1135967
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                 0.0312433   -0.0128063   0.0752928
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0181163   -0.0552606   0.0914932
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                 0.2113299    0.1149281   0.3077317
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                 0.2277592    0.1075739   0.3479445
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                 0.1314643    0.0625750   0.2003537
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                 0.0749264    0.0192990   0.1305537
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0240850    0.0087303   0.0394398
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                 0.1089500   -0.0088494   0.2267495
6-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                 0.0048832    0.0016642   0.0081023
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.0414341    0.0322644   0.0506039
6-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                 0.1227106    0.0345548   0.2108665


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                 0.3513441    0.1069034   0.5288813
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                -0.0200000   -0.2161373   0.1445045
0-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                 0.2552640   -0.0098541   0.4507804
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                 0.2018293   -0.0769666   0.4084529
0-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                 0.0705128   -0.0539896   0.1803084
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                 0.0721649    0.0080152   0.1321663
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0382189   -0.0295971   0.1015681
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                 0.3758837    0.2225857   0.4989529
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                 0.2843097    0.1148337   0.4213374
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                 0.4461921    0.2599269   0.5855771
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                 0.2722002    0.1368983   0.3862918
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.1240660    0.0792695   0.1666831
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                 0.3060427   -0.1679589   0.5876766
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                 0.0717706    0.0435491   0.0991594
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.1616549    0.1410826   0.1817345
0-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                 0.1863006    0.0406527   0.3098363
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                 0.3986742   -0.0057608   0.6404785
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                -0.0554324   -0.2763152   0.1272238
0-6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                 0.3057946   -0.1486796   0.5804564
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                -0.0158537   -0.4962710   0.3103130
0-6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              NA                 0.1503906   -0.0401780   0.3060456
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                 0.0946852   -0.0092681   0.1879315
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.2675949    0.0640090   0.4268991
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                 0.4793470    0.3234321   0.5993314
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                 0.2677938   -0.0377840   0.4833936
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                 0.5607576    0.2831902   0.7308436
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                 0.3303084    0.1383375   0.4795098
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.1771006    0.1089749   0.2400175
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                 0.0863958    0.0451083   0.1258982
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.1861723    0.1573536   0.2140054
0-6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                 0.2380506   -0.2925147   0.5508238
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                 0.3897655   -0.0228150   0.6359203
6-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                 0.2968750   -0.1645763   0.5754810
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                 0.4235033   -0.0266294   0.6762723
6-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                 0.0533927   -0.2153095   0.2626854
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                 0.0870348   -0.0443387   0.2018821
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0232466   -0.0757380   0.1131230
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                 0.4205828    0.1988350   0.5809549
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                 0.3968531    0.1437372   0.5751466
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                 0.4385344    0.1610528   0.6242390
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                 0.2850583    0.0414740   0.4667420
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.1057589    0.0360797   0.1704011
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                 0.3060427   -0.1679589   0.5876766
6-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                 0.0608107    0.0184189   0.1013716
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.1683935    0.1305844   0.2045583
6-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                 0.2048930    0.0423577   0.3398420
