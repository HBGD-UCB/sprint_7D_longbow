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

**Outcome Variable:** wasted

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

agecat      studyid                    country                        mwtkg         wasted   n_cell       n
----------  -------------------------  -----------------------------  -----------  -------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=58 kg            0       42     233
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=58 kg            1        4     233
Birth       ki0047075b-MAL-ED          BANGLADESH                     <52 kg             0      118     233
Birth       ki0047075b-MAL-ED          BANGLADESH                     <52 kg             1       26     233
Birth       ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg         0       34     233
Birth       ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg         1        9     233
Birth       ki0047075b-MAL-ED          BRAZIL                         >=58 kg            0      113     176
Birth       ki0047075b-MAL-ED          BRAZIL                         >=58 kg            1        4     176
Birth       ki0047075b-MAL-ED          BRAZIL                         <52 kg             0       30     176
Birth       ki0047075b-MAL-ED          BRAZIL                         <52 kg             1        1     176
Birth       ki0047075b-MAL-ED          BRAZIL                         [52-58) kg         0       27     176
Birth       ki0047075b-MAL-ED          BRAZIL                         [52-58) kg         1        1     176
Birth       ki0047075b-MAL-ED          INDIA                          >=58 kg            0       32     195
Birth       ki0047075b-MAL-ED          INDIA                          >=58 kg            1        4     195
Birth       ki0047075b-MAL-ED          INDIA                          <52 kg             0       98     195
Birth       ki0047075b-MAL-ED          INDIA                          <52 kg             1       23     195
Birth       ki0047075b-MAL-ED          INDIA                          [52-58) kg         0       33     195
Birth       ki0047075b-MAL-ED          INDIA                          [52-58) kg         1        5     195
Birth       ki0047075b-MAL-ED          NEPAL                          >=58 kg            0       51     167
Birth       ki0047075b-MAL-ED          NEPAL                          >=58 kg            1        5     167
Birth       ki0047075b-MAL-ED          NEPAL                          <52 kg             0       39     167
Birth       ki0047075b-MAL-ED          NEPAL                          <52 kg             1        9     167
Birth       ki0047075b-MAL-ED          NEPAL                          [52-58) kg         0       57     167
Birth       ki0047075b-MAL-ED          NEPAL                          [52-58) kg         1        6     167
Birth       ki0047075b-MAL-ED          PERU                           >=58 kg            0       94     269
Birth       ki0047075b-MAL-ED          PERU                           >=58 kg            1        3     269
Birth       ki0047075b-MAL-ED          PERU                           <52 kg             0      101     269
Birth       ki0047075b-MAL-ED          PERU                           <52 kg             1        3     269
Birth       ki0047075b-MAL-ED          PERU                           [52-58) kg         0       68     269
Birth       ki0047075b-MAL-ED          PERU                           [52-58) kg         1        0     269
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg            0      156     226
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg            1        9     226
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg             0       22     226
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg             1        1     226
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg         0       35     226
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg         1        3     226
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg            0       51     116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg            1        0     116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg             0       36     116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg             1        1     116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg         0       27     116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg         1        1     116
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=58 kg            0       12     162
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=58 kg            1        0     162
Birth       ki1000304b-SAS-CompFeed    INDIA                          <52 kg             0      115     162
Birth       ki1000304b-SAS-CompFeed    INDIA                          <52 kg             1        9     162
Birth       ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg         0       25     162
Birth       ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg         1        1     162
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=58 kg            0        1      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=58 kg            1        1      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     <52 kg             0       18      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     <52 kg             1        5      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg         0        2      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg         1        1      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg            0        3      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg            1        1      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg             0       16      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg             1        1      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg         0        1      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg         1        1      23
Birth       ki1119695-PROBIT           BELARUS                        >=58 kg            0     8150   13707
Birth       ki1119695-PROBIT           BELARUS                        >=58 kg            1     2083   13707
Birth       ki1119695-PROBIT           BELARUS                        <52 kg             0      871   13707
Birth       ki1119695-PROBIT           BELARUS                        <52 kg             1      253   13707
Birth       ki1119695-PROBIT           BELARUS                        [52-58) kg         0     1826   13707
Birth       ki1119695-PROBIT           BELARUS                        [52-58) kg         1      524   13707
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg            0     4692   10285
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg            1      763   10285
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg             0     1749   10285
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg             1      393   10285
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg         0     2268   10285
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg         1      420   10285
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg            0       44     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg            1        2     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg             0      148     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg             1        6     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg         0       41     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg         1        0     241
6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg            0      136     208
6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg            1        1     208
6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg             0       37     208
6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg             1        0     208
6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg         0       34     208
6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg         1        0     208
6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg            0       39     235
6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg            1        1     235
6 months    ki0047075b-MAL-ED          INDIA                          <52 kg             0      130     235
6 months    ki0047075b-MAL-ED          INDIA                          <52 kg             1       16     235
6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg         0       48     235
6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg         1        1     235
6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg            0       79     236
6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg            1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg             0       72     236
6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg             1        3     236
6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg         0       81     236
6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg         1        1     236
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg            0      100     272
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg            1        0     272
6 months    ki0047075b-MAL-ED          PERU                           <52 kg             0      107     272
6 months    ki0047075b-MAL-ED          PERU                           <52 kg             1        0     272
6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg         0       65     272
6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg         1        0     272
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg            0      175     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg            1        4     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg             0       28     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg             1        1     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg         0       39     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg         1        2     249
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg            0       94     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg            1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg             0       94     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg             1        1     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg         0       58     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg         1        0     247
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg            0       90    1328
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg            1        9    1328
6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg             0      884    1328
6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg             1      132    1328
6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg         0      188    1328
6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg         1       25    1328
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg            0       69     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg            1        2     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg             0      356     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg             1       28     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg         0       77     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg         1        4     536
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg            0      102     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg            1        4     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg             0      351     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg             1       18     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg         0      104     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg         1        2     581
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg            0      182     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg            1        2     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg             0      365     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg             1       18     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg         0      147     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg         1        1     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg            0     1209    1988
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg            1       46    1988
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg             0      308    1988
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg             1       16    1988
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg         0      386    1988
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg         1       23    1988
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg            0     9670   13065
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg            1       70   13065
6 months    ki1119695-PROBIT           BELARUS                        <52 kg             0     1072   13065
6 months    ki1119695-PROBIT           BELARUS                        <52 kg             1       11   13065
6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg         0     2220   13065
6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg         1       22   13065
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg            0     4044    7916
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg            1      112    7916
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg             0     1589    7916
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg             1       82    7916
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg         0     2027    7916
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg         1       62    7916
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg            0      113     837
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg            1        1     837
6 months    ki1148112-LCNI-5           MALAWI                         <52 kg             0      494     837
6 months    ki1148112-LCNI-5           MALAWI                         <52 kg             1       10     837
6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg         0      216     837
6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg         1        3     837
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg            0       38     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg            1        2     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg             0      119     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg             1       16     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg         0       34     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg         1        3     212
24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg            0      107     168
24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg            1        2     168
24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg             0       28     168
24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg             1        0     168
24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg         0       30     168
24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg         1        1     168
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg            0       37     226
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg            1        1     226
24 months   ki0047075b-MAL-ED          INDIA                          <52 kg             0      119     226
24 months   ki0047075b-MAL-ED          INDIA                          <52 kg             1       22     226
24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg         0       43     226
24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg         1        4     226
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg            0       75     228
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg            1        1     228
24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg             0       71     228
24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg             1        3     228
24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg         0       77     228
24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg         1        1     228
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg            0       77     201
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg            1        0     201
24 months   ki0047075b-MAL-ED          PERU                           <52 kg             0       72     201
24 months   ki0047075b-MAL-ED          PERU                           <52 kg             1        3     201
24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg         0       49     201
24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg         1        0     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg            0      167     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg            1        1     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg             0       28     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg             1        0     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg         0       38     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg         1        0     234
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg            0       81     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg            1        1     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg             0       81     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg             1        3     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg         0       48     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg         1        0     214
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg            0       56     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg            1        0     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg             0      259     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg             1       49     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg         0       60     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg         1        4     428
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg            0      106     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg            1        6     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg             0      308     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg             1       53     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg         0       98     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg         1        6     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg            0      130     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg            1        8     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg             0      243     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg             1       30     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg         0       96     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg         1        7     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg            0        4       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg            1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg             0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg             1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg         0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg         1        0       6
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg            0     2931    3949
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg            1       26    3949
24 months   ki1119695-PROBIT           BELARUS                        <52 kg             0      318    3949
24 months   ki1119695-PROBIT           BELARUS                        <52 kg             1        4    3949
24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg         0      657    3949
24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg         1       13    3949
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg            0      138     413
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg            1       29     413
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg             0      101     413
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg             1       28     413
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg         0      101     413
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg         1       16     413
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg            0       73     562
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg            1        0     562
24 months   ki1148112-LCNI-5           MALAWI                         <52 kg             0      330     562
24 months   ki1148112-LCNI-5           MALAWI                         <52 kg             1        7     562
24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg         0      149     562
24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg         1        3     562


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
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI

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
![](/tmp/4794ac32-d379-4ba3-96c0-8e1824379ab0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4794ac32-d379-4ba3-96c0-8e1824379ab0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4794ac32-d379-4ba3-96c0-8e1824379ab0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4794ac32-d379-4ba3-96c0-8e1824379ab0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                0.0892857   0.0143756   0.1641958
Birth       ki0047075b-MAL-ED          NEPAL                          <52 kg               NA                0.1875000   0.0767499   0.2982501
Birth       ki0047075b-MAL-ED          NEPAL                          [52-58) kg           NA                0.0952381   0.0225347   0.1679415
Birth       ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.2035571   0.1380576   0.2690566
Birth       ki1119695-PROBIT           BELARUS                        <52 kg               NA                0.2250890   0.1491063   0.3010717
Birth       ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                0.2229787   0.1566067   0.2893507
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.1398717   0.1306668   0.1490766
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.1834734   0.1670814   0.1998654
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.1562500   0.1425231   0.1699769
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.0909091   0.0223007   0.1595175
6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                0.1299213   0.0972077   0.1626348
6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                0.1173709   0.0835538   0.1511880
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0366534   0.0262546   0.0470522
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.0493827   0.0257847   0.0729807
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.0562347   0.0339026   0.0785668
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0071869   0.0053050   0.0090687
6 months    ki1119695-PROBIT           BELARUS                        <52 kg               NA                0.0101570   0.0025233   0.0177907
6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                0.0098127   0.0051490   0.0144764
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0269490   0.0220255   0.0318725
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.0490724   0.0387143   0.0594305
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.0296793   0.0224016   0.0369569
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.0535714   0.0118339   0.0953089
24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                0.1468144   0.1102737   0.1833551
24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                0.0576923   0.0128422   0.1025424
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.0579710   0.0189437   0.0969984
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                0.1098901   0.0727545   0.1470257
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                0.0679612   0.0193093   0.1166131
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.1736527   0.1161301   0.2311753
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.2170543   0.1458297   0.2882788
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.1367521   0.0744194   0.1990849


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1197605   0.0703691   0.1691519
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                0.2086525   0.1430546   0.2742504
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1532329   0.1462710   0.1601947
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1250000   0.0995459   0.1504541
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0427565   0.0338612   0.0516519
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0078837   0.0058935   0.0098738
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0323396   0.0284424   0.0362368
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1126516   0.0868319   0.1384714
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0875486   0.0630907   0.1120065
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1767554   0.1399213   0.2135896


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki0047075b-MAL-ED          NEPAL                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
Birth       ki0047075b-MAL-ED          NEPAL                          <52 kg               >=58 kg           2.1000000   0.7526752   5.859101
Birth       ki0047075b-MAL-ED          NEPAL                          [52-58) kg           >=58 kg           1.0666667   0.3430858   3.316307
Birth       ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
Birth       ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           1.1057779   0.9402837   1.300400
Birth       ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           1.0954111   1.0232019   1.172716
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           1.3117265   1.1739574   1.465664
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.1170953   1.0009651   1.246699
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           1.4291337   0.6448248   3.167408
6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg           1.2910797   0.6535444   2.550533
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.3472893   0.7728747   2.348619
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.5342298   0.9417407   2.499479
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6 months    ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           1.4132700   0.6610782   3.021325
6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           1.3653625   0.8580904   2.172516
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           1.8209370   1.3773859   2.407322
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.1013130   0.8111640   1.495247
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           2.7405355   1.2095689   6.209266
24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg           1.0769231   0.3582567   3.237241
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           1.8956044   0.8924902   4.026169
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           1.1723301   0.4388000   3.132082
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           1.2499332   0.7841336   1.992432
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           0.7875037   0.4482751   1.383441


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                0.0304748   -0.0350051   0.0959546
Birth       ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0050954    0.0012233   0.0089675
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0133612    0.0067795   0.0199429
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.0340909   -0.0312943   0.0994761
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0061032   -0.0010196   0.0132259
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0006968   -0.0002776   0.0016712
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0053906    0.0016522   0.0091289
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.0590802    0.0174581   0.1007024
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.0295776   -0.0065257   0.0656810
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0031028   -0.0415031   0.0477086


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                0.2544643   -0.5355267   0.6380242
Birth       ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0244205    0.0045307   0.0439128
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0871953    0.0433449   0.1290357
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.2727272   -0.4916470   0.6454083
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.1427420   -0.0381470   0.2921125
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0883854   -0.0371253   0.1987070
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.1666867    0.0445926   0.2731781
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.5244505    0.0033677   0.7730885
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.3378422   -0.2166810   0.6396320
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0175539   -0.2701596   0.2400953
