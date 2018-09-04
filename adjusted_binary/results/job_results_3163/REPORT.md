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

**Outcome Variable:** sstunted

## Predictor Variables

**Intervention Variable:** mwtkg

**Adjustment Set:**

* arm
* W_mage
* W_fage
* meducyrs
* feducyrs
* single
* brthmon
* delta_W_mage
* delta_W_fage
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

agecat      studyid                    country                        mwtkg         sstunted   n_cell       n
----------  -------------------------  -----------------------------  -----------  ---------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              0       47     246
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              1        0     246
Birth       ki0047075b-MAL-ED          BANGLADESH                     <52 kg               0      149     246
Birth       ki0047075b-MAL-ED          BANGLADESH                     <52 kg               1        7     246
Birth       ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           0       43     246
Birth       ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           1        0     246
Birth       ki0047075b-MAL-ED          BRAZIL                         >=58 kg              0      115     184
Birth       ki0047075b-MAL-ED          BRAZIL                         >=58 kg              1        6     184
Birth       ki0047075b-MAL-ED          BRAZIL                         <52 kg               0       33     184
Birth       ki0047075b-MAL-ED          BRAZIL                         <52 kg               1        0     184
Birth       ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           0       28     184
Birth       ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           1        2     184
Birth       ki0047075b-MAL-ED          INDIA                          >=58 kg              0       36     198
Birth       ki0047075b-MAL-ED          INDIA                          >=58 kg              1        0     198
Birth       ki0047075b-MAL-ED          INDIA                          <52 kg               0      118     198
Birth       ki0047075b-MAL-ED          INDIA                          <52 kg               1        5     198
Birth       ki0047075b-MAL-ED          INDIA                          [52-58) kg           0       37     198
Birth       ki0047075b-MAL-ED          INDIA                          [52-58) kg           1        2     198
Birth       ki0047075b-MAL-ED          NEPAL                          >=58 kg              0       56     172
Birth       ki0047075b-MAL-ED          NEPAL                          >=58 kg              1        1     172
Birth       ki0047075b-MAL-ED          NEPAL                          <52 kg               0       47     172
Birth       ki0047075b-MAL-ED          NEPAL                          <52 kg               1        5     172
Birth       ki0047075b-MAL-ED          NEPAL                          [52-58) kg           0       63     172
Birth       ki0047075b-MAL-ED          NEPAL                          [52-58) kg           1        0     172
Birth       ki0047075b-MAL-ED          PERU                           >=58 kg              0       96     276
Birth       ki0047075b-MAL-ED          PERU                           >=58 kg              1        3     276
Birth       ki0047075b-MAL-ED          PERU                           <52 kg               0      104     276
Birth       ki0047075b-MAL-ED          PERU                           <52 kg               1        3     276
Birth       ki0047075b-MAL-ED          PERU                           [52-58) kg           0       69     276
Birth       ki0047075b-MAL-ED          PERU                           [52-58) kg           1        1     276
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              0      166     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              1        0     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               0       23     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               1        0     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           0       38     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           1        1     228
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              0       51     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              1        1     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               0       37     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               1        3     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           0       27     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           1        2     121
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              0       14     182
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              1        0     182
Birth       ki1000304b-SAS-CompFeed    INDIA                          <52 kg               0      132     182
Birth       ki1000304b-SAS-CompFeed    INDIA                          <52 kg               1        9     182
Birth       ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           0       26     182
Birth       ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           1        1     182
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              0        2      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     <52 kg               0       23      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     <52 kg               1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           0        3      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           1        0      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              0        4      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              1        0      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               0       20      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               1        0      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           0        2      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           1        1      27
Birth       ki1119695-PROBIT           BELARUS                        >=58 kg              0    10271   13767
Birth       ki1119695-PROBIT           BELARUS                        >=58 kg              1        3   13767
Birth       ki1119695-PROBIT           BELARUS                        <52 kg               0     1131   13767
Birth       ki1119695-PROBIT           BELARUS                        <52 kg               1        0   13767
Birth       ki1119695-PROBIT           BELARUS                        [52-58) kg           0     2360   13767
Birth       ki1119695-PROBIT           BELARUS                        [52-58) kg           1        2   13767
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              0     5607   10990
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              1      128   10990
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               0     2254   10990
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               1      104   10990
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           0     2800   10990
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           1       97   10990
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              0       45     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              1        1     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg               0      147     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg               1        7     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           0       41     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           1        0     241
6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg              0      137     208
6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg              1        0     208
6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg               0       37     208
6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg               1        0     208
6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           0       34     208
6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           1        0     208
6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              0       40     235
6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              1        0     235
6 months    ki0047075b-MAL-ED          INDIA                          <52 kg               0      140     235
6 months    ki0047075b-MAL-ED          INDIA                          <52 kg               1        6     235
6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg           0       46     235
6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg           1        3     235
6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              0       79     236
6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg               0       74     236
6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg               1        1     236
6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg           0       82     236
6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg           1        0     236
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              0       96     272
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              1        4     272
6 months    ki0047075b-MAL-ED          PERU                           <52 kg               0      101     272
6 months    ki0047075b-MAL-ED          PERU                           <52 kg               1        6     272
6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg           0       63     272
6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg           1        2     272
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              0      176     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              1        3     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               0       28     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               1        1     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           0       39     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           1        2     249
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              0       89     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              1        5     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               0       87     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               1        8     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           0       57     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           1        1     247
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              0       98    1330
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              1        1    1330
6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg               0      901    1330
6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg               1      118    1330
6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           0      204    1330
6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           1        8    1330
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              0       69     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              1        2     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg               0      353     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg               1       32     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           0       80     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           1        1     537
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              0      105     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              1        2     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg               0      359     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg               1       10     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           0      104     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           1        2     582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              0      181     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              1        3     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               0      369     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               1       14     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           0      142     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           1        6     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              0     1246    1989
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              1        9    1989
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               0      318    1989
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               1        7    1989
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           0      406    1989
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           1        3    1989
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              0     9608   13068
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              1      134   13068
6 months    ki1119695-PROBIT           BELARUS                        <52 kg               0     1061   13068
6 months    ki1119695-PROBIT           BELARUS                        <52 kg               1       22   13068
6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           0     2217   13068
6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           1       26   13068
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              0     4048    7942
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              1      123    7942
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               0     1561    7942
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               1      114    7942
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           0     2002    7942
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           1       94    7942
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              0      108     837
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              1        6     837
6 months    ki1148112-LCNI-5           MALAWI                         <52 kg               0      452     837
6 months    ki1148112-LCNI-5           MALAWI                         <52 kg               1       52     837
6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg           0      206     837
6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg           1       13     837
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              0       40     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              1        0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg               0      109     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg               1       26     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           0       37     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           1        0     212
24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg              0      109     168
24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg              1        0     168
24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg               0       27     168
24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg               1        1     168
24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           0       31     168
24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           1        0     168
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              0       36     226
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              1        2     226
24 months   ki0047075b-MAL-ED          INDIA                          <52 kg               0      122     226
24 months   ki0047075b-MAL-ED          INDIA                          <52 kg               1       19     226
24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg           0       40     226
24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg           1        7     226
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              0       75     228
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              1        1     228
24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg               0       68     228
24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg               1        6     228
24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg           0       78     228
24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg           1        0     228
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              0       76     201
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              1        1     201
24 months   ki0047075b-MAL-ED          PERU                           <52 kg               0       65     201
24 months   ki0047075b-MAL-ED          PERU                           <52 kg               1       10     201
24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg           0       45     201
24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg           1        4     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              0      154     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              1       14     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               0       22     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               1        6     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           0       32     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           1        6     234
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              0       63     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              1       19     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               0       48     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               1       36     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           0       34     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           1       14     214
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              0       48     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              1        9     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               0      232     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               1       76     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           0       56     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           1        8     429
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              0      110     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              1        1     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               0      317     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               1       44     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           0      100     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           1        4     576
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              0      137     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              1        1     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               0      245     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               1       28     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           0       97     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           1        6     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              0        3       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              1        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           1        0       6
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              0     2965    4013
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              1       46    4013
24 months   ki1119695-PROBIT           BELARUS                        <52 kg               0      317    4013
24 months   ki1119695-PROBIT           BELARUS                        <52 kg               1        8    4013
24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           0      666    4013
24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           1       11    4013
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              0      138     436
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              1       45     436
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               0       84     436
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               1       48     436
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           0       89     436
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           1       32     436
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              0       73     578
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              1        4     578
24 months   ki1148112-LCNI-5           MALAWI                         <52 kg               0      297     578
24 months   ki1148112-LCNI-5           MALAWI                         <52 kg               1       51     578
24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg           0      141     578
24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg           1       12     578


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/480555b5-fdb0-454e-8896-7c91b2881dc2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/480555b5-fdb0-454e-8896-7c91b2881dc2/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/480555b5-fdb0-454e-8896-7c91b2881dc2/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/480555b5-fdb0-454e-8896-7c91b2881dc2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1126311-ZVITAMBO    ZIMBABWE                       >=58 kg              NA                0.0222600    0.0184469   0.0260731
Birth       ki1126311-ZVITAMBO    ZIMBABWE                       <52 kg               NA                0.0454868    0.0372883   0.0536852
Birth       ki1126311-ZVITAMBO    ZIMBABWE                       [52-58) kg           NA                0.0351506    0.0285193   0.0417819
6 months    ki1119695-PROBIT      BELARUS                        >=58 kg              NA                0.0139444    0.0091785   0.0187103
6 months    ki1119695-PROBIT      BELARUS                        <52 kg               NA                0.0294266    0.0177551   0.0410981
6 months    ki1119695-PROBIT      BELARUS                        [52-58) kg           NA                0.0162692    0.0081480   0.0243904
6 months    ki1126311-ZVITAMBO    ZIMBABWE                       >=58 kg              NA                0.0295063    0.0243836   0.0346289
6 months    ki1126311-ZVITAMBO    ZIMBABWE                       <52 kg               NA                0.0706828    0.0588003   0.0825652
6 months    ki1126311-ZVITAMBO    ZIMBABWE                       [52-58) kg           NA                0.0455710    0.0368429   0.0542991
6 months    ki1148112-LCNI-5      MALAWI                         >=58 kg              NA                0.0526316    0.0116170   0.0936461
6 months    ki1148112-LCNI-5      MALAWI                         <52 kg               NA                0.1031746    0.0766021   0.1297471
6 months    ki1148112-LCNI-5      MALAWI                         [52-58) kg           NA                0.0593607    0.0280461   0.0906753
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   >=58 kg              NA                0.0833333    0.0414503   0.1252164
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   <52 kg               NA                0.2142857    0.0619759   0.3665956
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   [52-58) kg           NA                0.1578947    0.0417089   0.2740806
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.2323023    0.1414783   0.3231263
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.4284332    0.3242315   0.5326348
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.2899403    0.1618314   0.4180492
24 months   ki1017093-NIH-Birth   BANGLADESH                     >=58 kg              NA                0.1578947    0.0631218   0.2526677
24 months   ki1017093-NIH-Birth   BANGLADESH                     <52 kg               NA                0.2467532    0.1985496   0.2949569
24 months   ki1017093-NIH-Birth   BANGLADESH                     [52-58) kg           NA                0.1250000    0.0438808   0.2061192
24 months   ki1119695-PROBIT      BELARUS                        >=58 kg              NA                0.0152773    0.0048389   0.0257157
24 months   ki1119695-PROBIT      BELARUS                        <52 kg               NA                0.0246154   -0.0186703   0.0679010
24 months   ki1119695-PROBIT      BELARUS                        [52-58) kg           NA                0.0162482   -0.0076028   0.0400991
24 months   ki1126311-ZVITAMBO    ZIMBABWE                       >=58 kg              NA                0.2541298    0.1957077   0.3125520
24 months   ki1126311-ZVITAMBO    ZIMBABWE                       <52 kg               NA                0.3913974    0.3174622   0.4653325
24 months   ki1126311-ZVITAMBO    ZIMBABWE                       [52-58) kg           NA                0.2720688    0.1991396   0.3449980


### Parameter: E(Y)


agecat      studyid               country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO    ZIMBABWE                       NA                   NA                0.0299363   0.0267501   0.0331225
6 months    ki1119695-PROBIT      BELARUS                        NA                   NA                0.0139272   0.0091775   0.0186768
6 months    ki1126311-ZVITAMBO    ZIMBABWE                       NA                   NA                0.0416772   0.0372816   0.0460727
6 months    ki1148112-LCNI-5      MALAWI                         NA                   NA                0.0848268   0.0659398   0.1037138
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                0.1111111   0.0707584   0.1514638
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3224299   0.2596598   0.3852000
24 months   ki1017093-NIH-Birth   BANGLADESH                     NA                   NA                0.2167832   0.1777459   0.2558205
24 months   ki1119695-PROBIT      BELARUS                        NA                   NA                0.0161974   0.0032099   0.0291848
24 months   ki1126311-ZVITAMBO    ZIMBABWE                       NA                   NA                0.2866972   0.2442008   0.3291937


### Parameter: RR


agecat      studyid               country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1126311-ZVITAMBO    ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
Birth       ki1126311-ZVITAMBO    ZIMBABWE                       <52 kg               >=58 kg           2.0434328   1.5936129   2.620221
Birth       ki1126311-ZVITAMBO    ZIMBABWE                       [52-58) kg           >=58 kg           1.5790938   1.2240497   2.037121
6 months    ki1119695-PROBIT      BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6 months    ki1119695-PROBIT      BELARUS                        <52 kg               >=58 kg           2.1102850   1.4887571   2.991289
6 months    ki1119695-PROBIT      BELARUS                        [52-58) kg           >=58 kg           1.1667194   0.7229633   1.882854
6 months    ki1126311-ZVITAMBO    ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6 months    ki1126311-ZVITAMBO    ZIMBABWE                       <52 kg               >=58 kg           2.3955178   1.8814931   3.049974
6 months    ki1126311-ZVITAMBO    ZIMBABWE                       [52-58) kg           >=58 kg           1.5444525   1.1929416   1.999539
6 months    ki1148112-LCNI-5      MALAWI                         >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6 months    ki1148112-LCNI-5      MALAWI                         <52 kg               >=58 kg           1.9603175   0.8627530   4.454166
6 months    ki1148112-LCNI-5      MALAWI                         [52-58) kg           >=58 kg           1.1278539   0.4401123   2.890295
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   <52 kg               >=58 kg           2.5714286   1.0767404   6.140983
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   [52-58) kg           >=58 kg           1.8947368   0.7772246   4.619035
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.8442919   1.1660649   2.917001
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.2481165   0.6925880   2.249238
24 months   ki1017093-NIH-Birth   BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
24 months   ki1017093-NIH-Birth   BANGLADESH                     <52 kg               >=58 kg           1.5627706   0.8313053   2.937852
24 months   ki1017093-NIH-Birth   BANGLADESH                     [52-58) kg           >=58 kg           0.7916667   0.3270664   1.916235
24 months   ki1119695-PROBIT      BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
24 months   ki1119695-PROBIT      BELARUS                        <52 kg               >=58 kg           1.6112375   0.3803958   6.824696
24 months   ki1119695-PROBIT      BELARUS                        [52-58) kg           >=58 kg           1.0635476   0.2689766   4.205323
24 months   ki1126311-ZVITAMBO    ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
24 months   ki1126311-ZVITAMBO    ZIMBABWE                       <52 kg               >=58 kg           1.5401472   1.1456149   2.070550
24 months   ki1126311-ZVITAMBO    ZIMBABWE                       [52-58) kg           >=58 kg           1.0705897   0.7525098   1.523119


### Parameter: PAR


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1126311-ZVITAMBO    ZIMBABWE                       >=58 kg              NA                 0.0076763    0.0045719   0.0107808
6 months    ki1119695-PROBIT      BELARUS                        >=58 kg              NA                -0.0000172   -0.0014857   0.0014512
6 months    ki1126311-ZVITAMBO    ZIMBABWE                       >=58 kg              NA                 0.0121709    0.0079048   0.0164370
6 months    ki1148112-LCNI-5      MALAWI                         >=58 kg              NA                 0.0321952   -0.0075626   0.0719530
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   >=58 kg              NA                 0.0277778   -0.0016109   0.0571664
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0901276    0.0142663   0.1659890
24 months   ki1017093-NIH-Birth   BANGLADESH                     >=58 kg              NA                 0.0588885   -0.0312171   0.1489941
24 months   ki1119695-PROBIT      BELARUS                        >=58 kg              NA                 0.0009200   -0.0052791   0.0071192
24 months   ki1126311-ZVITAMBO    ZIMBABWE                       >=58 kg              NA                 0.0325674   -0.0139874   0.0791222


### Parameter: PAF


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1126311-ZVITAMBO    ZIMBABWE                       >=58 kg              NA                 0.2564222    0.1494042   0.3499758
6 months    ki1119695-PROBIT      BELARUS                        >=58 kg              NA                -0.0012361   -0.1124947   0.0988957
6 months    ki1126311-ZVITAMBO    ZIMBABWE                       >=58 kg              NA                 0.2920281    0.1873549   0.3832188
6 months    ki1148112-LCNI-5      MALAWI                         >=58 kg              NA                 0.3795404   -0.3062459   0.7052851
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   >=58 kg              NA                 0.2500000   -0.0488300   0.4636881
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.2795263    0.0040203   0.4788223
24 months   ki1017093-NIH-Birth   BANGLADESH                     >=58 kg              NA                 0.2716469   -0.2857423   0.5873992
24 months   ki1119695-PROBIT      BELARUS                        >=58 kg              NA                 0.0568020   -0.3768638   0.3538776
24 months   ki1126311-ZVITAMBO    ZIMBABWE                       >=58 kg              NA                 0.1135951   -0.0627918   0.2607079
