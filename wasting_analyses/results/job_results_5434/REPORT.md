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

**Outcome Variable:** swasted

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

agecat      studyid                    country                        mwtkg         swasted   n_cell       n
----------  -------------------------  -----------------------------  -----------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=58 kg             0       45     233
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=58 kg             1        1     233
Birth       ki0047075b-MAL-ED          BANGLADESH                     <52 kg              0      137     233
Birth       ki0047075b-MAL-ED          BANGLADESH                     <52 kg              1        7     233
Birth       ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg          0       43     233
Birth       ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg          1        0     233
Birth       ki0047075b-MAL-ED          BRAZIL                         >=58 kg             0      117     176
Birth       ki0047075b-MAL-ED          BRAZIL                         >=58 kg             1        0     176
Birth       ki0047075b-MAL-ED          BRAZIL                         <52 kg              0       31     176
Birth       ki0047075b-MAL-ED          BRAZIL                         <52 kg              1        0     176
Birth       ki0047075b-MAL-ED          BRAZIL                         [52-58) kg          0       28     176
Birth       ki0047075b-MAL-ED          BRAZIL                         [52-58) kg          1        0     176
Birth       ki0047075b-MAL-ED          INDIA                          >=58 kg             0       35     195
Birth       ki0047075b-MAL-ED          INDIA                          >=58 kg             1        1     195
Birth       ki0047075b-MAL-ED          INDIA                          <52 kg              0      116     195
Birth       ki0047075b-MAL-ED          INDIA                          <52 kg              1        5     195
Birth       ki0047075b-MAL-ED          INDIA                          [52-58) kg          0       37     195
Birth       ki0047075b-MAL-ED          INDIA                          [52-58) kg          1        1     195
Birth       ki0047075b-MAL-ED          NEPAL                          >=58 kg             0       54     167
Birth       ki0047075b-MAL-ED          NEPAL                          >=58 kg             1        2     167
Birth       ki0047075b-MAL-ED          NEPAL                          <52 kg              0       47     167
Birth       ki0047075b-MAL-ED          NEPAL                          <52 kg              1        1     167
Birth       ki0047075b-MAL-ED          NEPAL                          [52-58) kg          0       62     167
Birth       ki0047075b-MAL-ED          NEPAL                          [52-58) kg          1        1     167
Birth       ki0047075b-MAL-ED          PERU                           >=58 kg             0       97     269
Birth       ki0047075b-MAL-ED          PERU                           >=58 kg             1        0     269
Birth       ki0047075b-MAL-ED          PERU                           <52 kg              0      104     269
Birth       ki0047075b-MAL-ED          PERU                           <52 kg              1        0     269
Birth       ki0047075b-MAL-ED          PERU                           [52-58) kg          0       68     269
Birth       ki0047075b-MAL-ED          PERU                           [52-58) kg          1        0     269
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg             0      165     226
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg             1        0     226
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg              0       23     226
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg              1        0     226
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg          0       37     226
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg          1        1     226
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg             0       51     116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg             1        0     116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg              0       36     116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg              1        1     116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg          0       28     116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg          1        0     116
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=58 kg             0       12     162
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=58 kg             1        0     162
Birth       ki1000304b-SAS-CompFeed    INDIA                          <52 kg              0      120     162
Birth       ki1000304b-SAS-CompFeed    INDIA                          <52 kg              1        4     162
Birth       ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg          0       26     162
Birth       ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg          1        0     162
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=58 kg             0        2      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=58 kg             1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     <52 kg              0       21      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     <52 kg              1        2      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg          0        3      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg          1        0      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg             0        4      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg             1        0      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg              0       16      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg              1        1      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg          0        2      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg          1        0      23
Birth       ki1119695-PROBIT           BELARUS                        >=58 kg             0     9561   13707
Birth       ki1119695-PROBIT           BELARUS                        >=58 kg             1      672   13707
Birth       ki1119695-PROBIT           BELARUS                        <52 kg              0     1050   13707
Birth       ki1119695-PROBIT           BELARUS                        <52 kg              1       74   13707
Birth       ki1119695-PROBIT           BELARUS                        [52-58) kg          0     2196   13707
Birth       ki1119695-PROBIT           BELARUS                        [52-58) kg          1      154   13707
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg             0     5164   10285
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg             1      291   10285
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg              0     1989   10285
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg              1      153   10285
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg          0     2537   10285
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg          1      151   10285
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg             0       45     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg             1        1     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg              0      153     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg              1        1     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg          0       41     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg          1        0     241
6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg             0      137     208
6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg             1        0     208
6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg              0       37     208
6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg              1        0     208
6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg          0       34     208
6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg          1        0     208
6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg             0       39     235
6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg             1        1     235
6 months    ki0047075b-MAL-ED          INDIA                          <52 kg              0      142     235
6 months    ki0047075b-MAL-ED          INDIA                          <52 kg              1        4     235
6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg          0       49     235
6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg          1        0     235
6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg             0       79     236
6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg             1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg              0       75     236
6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg              1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg          0       82     236
6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg          1        0     236
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg             0      100     272
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg             1        0     272
6 months    ki0047075b-MAL-ED          PERU                           <52 kg              0      107     272
6 months    ki0047075b-MAL-ED          PERU                           <52 kg              1        0     272
6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg          0       65     272
6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg          1        0     272
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg             0      178     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg             1        1     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg              0       28     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg              1        1     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg          0       40     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg          1        1     249
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg             0       94     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg             1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg              0       95     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg              1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg          0       58     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg          1        0     247
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg             0       95    1328
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg             1        4    1328
6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg              0      982    1328
6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg              1       34    1328
6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg          0      208    1328
6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg          1        5    1328
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg             0       71     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg             1        0     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg              0      380     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg              1        4     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg          0       80     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg          1        1     536
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg             0      106     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg             1        0     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg              0      365     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg              1        4     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg          0      105     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg          1        1     581
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg             0      184     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg             1        0     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg              0      383     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg              1        0     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg          0      148     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg          1        0     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg             0     1250    1988
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg             1        5    1988
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg              0      319    1988
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg              1        5    1988
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg          0      407    1988
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg          1        2    1988
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg             0     9734   13065
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg             1        6   13065
6 months    ki1119695-PROBIT           BELARUS                        <52 kg              0     1081   13065
6 months    ki1119695-PROBIT           BELARUS                        <52 kg              1        2   13065
6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg          0     2239   13065
6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg          1        3   13065
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg             0     4122    7916
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg             1       34    7916
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg              0     1649    7916
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg              1       22    7916
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg          0     2069    7916
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg          1       20    7916
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg             0      114     837
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg             1        0     837
6 months    ki1148112-LCNI-5           MALAWI                         <52 kg              0      504     837
6 months    ki1148112-LCNI-5           MALAWI                         <52 kg              1        0     837
6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg          0      219     837
6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg          1        0     837
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg             0       40     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg             1        0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg              0      135     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg              1        0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg          0       37     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg          1        0     212
24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg             0      108     168
24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg             1        1     168
24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg              0       28     168
24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg              1        0     168
24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg          0       31     168
24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg          1        0     168
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg             0       38     226
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg             1        0     226
24 months   ki0047075b-MAL-ED          INDIA                          <52 kg              0      139     226
24 months   ki0047075b-MAL-ED          INDIA                          <52 kg              1        2     226
24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg          0       47     226
24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg          1        0     226
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg             0       76     228
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg             1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg              0       74     228
24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg              1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg          0       78     228
24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg          1        0     228
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg             0       77     201
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg             1        0     201
24 months   ki0047075b-MAL-ED          PERU                           <52 kg              0       74     201
24 months   ki0047075b-MAL-ED          PERU                           <52 kg              1        1     201
24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg          0       49     201
24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg          1        0     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg             0      168     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg             1        0     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg              0       28     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg              1        0     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg          0       38     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg          1        0     234
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg             0       82     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg             1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg              0       84     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg              1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg          0       48     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg          1        0     214
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg             0       56     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg             1        0     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg              0      298     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg              1       10     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg          0       64     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg          1        0     428
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg             0      112     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg             1        0     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg              0      353     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg              1        8     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg          0      103     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg          1        1     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg             0      138     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg             1        0     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg              0      270     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg              1        3     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg          0      102     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg          1        1     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg             0        4       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg             1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg              0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg              1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg          0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg          1        0       6
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg             0     2955    3949
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg             1        2    3949
24 months   ki1119695-PROBIT           BELARUS                        <52 kg              0      321    3949
24 months   ki1119695-PROBIT           BELARUS                        <52 kg              1        1    3949
24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg          0      669    3949
24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg          1        1    3949
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg             0      151     413
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg             1       16     413
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg              0      119     413
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg              1       10     413
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg          0      113     413
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg          1        4     413
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg             0       73     562
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg             1        0     562
24 months   ki1148112-LCNI-5           MALAWI                         <52 kg              0      336     562
24 months   ki1148112-LCNI-5           MALAWI                         <52 kg              1        1     562
24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg          0      152     562
24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg          1        0     562


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
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
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

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/e19943e7-aa7c-4376-baa6-62683cb9b67c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e19943e7-aa7c-4376-baa6-62683cb9b67c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e19943e7-aa7c-4376-baa6-62683cb9b67c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e19943e7-aa7c-4376-baa6-62683cb9b67c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat     studyid              country    intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  -------------------  ---------  -------------------  ---------------  ----------  ----------  ----------
Birth      ki1119695-PROBIT     BELARUS    >=58 kg              NA                0.0656699   0.0325769   0.0987629
Birth      ki1119695-PROBIT     BELARUS    <52 kg               NA                0.0658363   0.0230246   0.1086480
Birth      ki1119695-PROBIT     BELARUS    [52-58) kg           NA                0.0655319   0.0341210   0.0969428
Birth      ki1126311-ZVITAMBO   ZIMBABWE   >=58 kg              NA                0.0533456   0.0473818   0.0593093
Birth      ki1126311-ZVITAMBO   ZIMBABWE   <52 kg               NA                0.0714286   0.0605216   0.0823355
Birth      ki1126311-ZVITAMBO   ZIMBABWE   [52-58) kg           NA                0.0561756   0.0474705   0.0648807
6 months   ki1126311-ZVITAMBO   ZIMBABWE   >=58 kg              NA                0.0081809   0.0054422   0.0109197
6 months   ki1126311-ZVITAMBO   ZIMBABWE   <52 kg               NA                0.0131658   0.0077002   0.0186313
6 months   ki1126311-ZVITAMBO   ZIMBABWE   [52-58) kg           NA                0.0095740   0.0053979   0.0137500


### Parameter: E(Y)


agecat     studyid              country    intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  -------------------  ---------  -------------------  ---------------  ----------  ----------  ----------
Birth      ki1119695-PROBIT     BELARUS    NA                   NA                0.0656599   0.0326461   0.0986736
Birth      ki1126311-ZVITAMBO   ZIMBABWE   NA                   NA                0.0578512   0.0533391   0.0623634
6 months   ki1126311-ZVITAMBO   ZIMBABWE   NA                   NA                0.0096008   0.0074526   0.0117490


### Parameter: RR


agecat     studyid              country    intervention_level   baseline_level     estimate    ci_lower   ci_upper
---------  -------------------  ---------  -------------------  ---------------  ----------  ----------  ---------
Birth      ki1119695-PROBIT     BELARUS    >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
Birth      ki1119695-PROBIT     BELARUS    <52 kg               >=58 kg           1.0025340   0.7256488   1.385070
Birth      ki1119695-PROBIT     BELARUS    [52-58) kg           >=58 kg           0.9978989   0.8545274   1.165325
Birth      ki1126311-ZVITAMBO   ZIMBABWE   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
Birth      ki1126311-ZVITAMBO   ZIMBABWE   <52 kg               >=58 kg           1.3389789   1.1081152   1.617941
Birth      ki1126311-ZVITAMBO   ZIMBABWE   [52-58) kg           >=58 kg           1.0530511   0.8698910   1.274777
6 months   ki1126311-ZVITAMBO   ZIMBABWE   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6 months   ki1126311-ZVITAMBO   ZIMBABWE   <52 kg               >=58 kg           1.6093216   0.9441342   2.743165
6 months   ki1126311-ZVITAMBO   ZIMBABWE   [52-58) kg           >=58 kg           1.1702757   0.6752935   2.028074


### Parameter: PAR


agecat     studyid              country    intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------  -------------------  ---------  -------------------  ---------------  -----------  -----------  ----------
Birth      ki1119695-PROBIT     BELARUS    >=58 kg              NA                -0.0000100   -0.0028129   0.0027929
Birth      ki1126311-ZVITAMBO   ZIMBABWE   >=58 kg              NA                 0.0045057    0.0002398   0.0087716
6 months   ki1126311-ZVITAMBO   ZIMBABWE   >=58 kg              NA                 0.0014199   -0.0006392   0.0034789


### Parameter: PAF


agecat     studyid              country    intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------  -------------------  ---------  -------------------  ---------------  -----------  -----------  ----------
Birth      ki1119695-PROBIT     BELARUS    >=58 kg              NA                -0.0001524   -0.0437659   0.0416386
Birth      ki1126311-ZVITAMBO   ZIMBABWE   >=58 kg              NA                 0.0778840    0.0013564   0.1485472
6 months   ki1126311-ZVITAMBO   ZIMBABWE   >=58 kg              NA                 0.1478902   -0.0927359   0.3355291
