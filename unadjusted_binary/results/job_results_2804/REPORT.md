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

**Outcome Variable:** stunted

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

agecat      studyid                    country                        mwtkg         stunted   n_cell       n
----------  -------------------------  -----------------------------  -----------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=58 kg             0       40     246
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=58 kg             1        7     246
Birth       ki0047075b-MAL-ED          BANGLADESH                     <52 kg              0      126     246
Birth       ki0047075b-MAL-ED          BANGLADESH                     <52 kg              1       30     246
Birth       ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg          0       38     246
Birth       ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg          1        5     246
Birth       ki0047075b-MAL-ED          BRAZIL                         >=58 kg             0      110     184
Birth       ki0047075b-MAL-ED          BRAZIL                         >=58 kg             1       11     184
Birth       ki0047075b-MAL-ED          BRAZIL                         <52 kg              0       28     184
Birth       ki0047075b-MAL-ED          BRAZIL                         <52 kg              1        5     184
Birth       ki0047075b-MAL-ED          BRAZIL                         [52-58) kg          0       27     184
Birth       ki0047075b-MAL-ED          BRAZIL                         [52-58) kg          1        3     184
Birth       ki0047075b-MAL-ED          INDIA                          >=58 kg             0       33     198
Birth       ki0047075b-MAL-ED          INDIA                          >=58 kg             1        3     198
Birth       ki0047075b-MAL-ED          INDIA                          <52 kg              0      101     198
Birth       ki0047075b-MAL-ED          INDIA                          <52 kg              1       22     198
Birth       ki0047075b-MAL-ED          INDIA                          [52-58) kg          0       32     198
Birth       ki0047075b-MAL-ED          INDIA                          [52-58) kg          1        7     198
Birth       ki0047075b-MAL-ED          NEPAL                          >=58 kg             0       50     172
Birth       ki0047075b-MAL-ED          NEPAL                          >=58 kg             1        7     172
Birth       ki0047075b-MAL-ED          NEPAL                          <52 kg              0       43     172
Birth       ki0047075b-MAL-ED          NEPAL                          <52 kg              1        9     172
Birth       ki0047075b-MAL-ED          NEPAL                          [52-58) kg          0       61     172
Birth       ki0047075b-MAL-ED          NEPAL                          [52-58) kg          1        2     172
Birth       ki0047075b-MAL-ED          PERU                           >=58 kg             0       91     276
Birth       ki0047075b-MAL-ED          PERU                           >=58 kg             1        8     276
Birth       ki0047075b-MAL-ED          PERU                           <52 kg              0       89     276
Birth       ki0047075b-MAL-ED          PERU                           <52 kg              1       18     276
Birth       ki0047075b-MAL-ED          PERU                           [52-58) kg          0       63     276
Birth       ki0047075b-MAL-ED          PERU                           [52-58) kg          1        7     276
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg             0      152     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg             1       14     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg              0       19     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg              1        4     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg          0       34     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg          1        5     228
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg             0       47     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg             1        5     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg              0       33     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg              1        7     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg          0       23     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg          1        6     121
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=58 kg             0       11     182
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=58 kg             1        3     182
Birth       ki1000304b-SAS-CompFeed    INDIA                          <52 kg              0      105     182
Birth       ki1000304b-SAS-CompFeed    INDIA                          <52 kg              1       36     182
Birth       ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg          0       23     182
Birth       ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg          1        4     182
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=58 kg             0        2      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=58 kg             1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     <52 kg              0       22      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     <52 kg              1        1      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg          0        3      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg          1        0      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg             0        4      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg             1        0      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg              0       16      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg              1        4      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg          0        2      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg          1        1      27
Birth       ki1119695-PROBIT           BELARUS                        >=58 kg             0    10253   13767
Birth       ki1119695-PROBIT           BELARUS                        >=58 kg             1       21   13767
Birth       ki1119695-PROBIT           BELARUS                        <52 kg              0     1125   13767
Birth       ki1119695-PROBIT           BELARUS                        <52 kg              1        6   13767
Birth       ki1119695-PROBIT           BELARUS                        [52-58) kg          0     2356   13767
Birth       ki1119695-PROBIT           BELARUS                        [52-58) kg          1        6   13767
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg             0     5286   10990
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg             1      449   10990
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg              0     2030   10990
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg              1      328   10990
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg          0     2561   10990
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg          1      336   10990
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg             0       40     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg             1        6     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg              0      115     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg              1       39     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg          0       41     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg          1        0     241
6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg             0      134     208
6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg             1        3     208
6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg              0       36     208
6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg              1        1     208
6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg          0       32     208
6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg          1        2     208
6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg             0       36     235
6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg             1        4     235
6 months    ki0047075b-MAL-ED          INDIA                          <52 kg              0      116     235
6 months    ki0047075b-MAL-ED          INDIA                          <52 kg              1       30     235
6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg          0       38     235
6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg          1       11     235
6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg             0       77     236
6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg             1        2     236
6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg              0       66     236
6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg              1        9     236
6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg          0       81     236
6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg          1        1     236
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg             0       81     272
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg             1       19     272
6 months    ki0047075b-MAL-ED          PERU                           <52 kg              0       79     272
6 months    ki0047075b-MAL-ED          PERU                           <52 kg              1       28     272
6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg          0       52     272
6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg          1       13     272
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg             0      149     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg             1       30     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg              0       20     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg              1        9     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg          0       30     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg          1       11     249
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg             0       75     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg             1       19     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg              0       68     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg              1       27     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg          0       46     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg          1       12     247
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg             0       88    1330
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg             1       11    1330
6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg              0      686    1330
6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg              1      333    1330
6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg          0      178    1330
6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg          1       34    1330
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg             0       57     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg             1       14     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg              0      268     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg              1      117     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg          0       68     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg          1       13     537
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg             0       96     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg             1       11     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg              0      302     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg              1       67     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg          0       91     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg          1       15     582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg             0      159     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg             1       25     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg              0      285     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg              1       98     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg          0      121     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg          1       27     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg             0     1143    1989
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg             1      112    1989
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg              0      280    1989
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg              1       45    1989
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg          0      374    1989
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg          1       35    1989
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg             0     9206   13068
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg             1      536   13068
6 months    ki1119695-PROBIT           BELARUS                        <52 kg              0      977   13068
6 months    ki1119695-PROBIT           BELARUS                        <52 kg              1      106   13068
6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg          0     2103   13068
6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg          1      140   13068
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg             0     3647    7942
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg             1      524    7942
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg              0     1254    7942
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg              1      421    7942
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg          0     1716    7942
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg          1      380    7942
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg             0       86     837
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg             1       28     837
6 months    ki1148112-LCNI-5           MALAWI                         <52 kg              0      286     837
6 months    ki1148112-LCNI-5           MALAWI                         <52 kg              1      218     837
6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg          0      157     837
6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg          1       62     837
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg             0       30     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg             1       10     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg              0       56     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg              1       79     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg          0       28     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg          1        9     212
24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg             0      106     168
24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg             1        3     168
24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg              0       26     168
24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg              1        2     168
24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg          0       30     168
24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg          1        1     168
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg             0       27     226
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg             1       11     226
24 months   ki0047075b-MAL-ED          INDIA                          <52 kg              0       77     226
24 months   ki0047075b-MAL-ED          INDIA                          <52 kg              1       64     226
24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg          0       28     226
24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg          1       19     226
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg             0       68     228
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg             1        8     228
24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg              0       48     228
24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg              1       26     228
24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg          0       63     228
24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg          1       15     228
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg             0       59     201
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg             1       18     201
24 months   ki0047075b-MAL-ED          PERU                           <52 kg              0       39     201
24 months   ki0047075b-MAL-ED          PERU                           <52 kg              1       36     201
24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg          0       29     201
24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg          1       20     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg             0      117     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg             1       51     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg              0       15     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg              1       13     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg          0       20     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg          1       18     234
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg             0       32     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg             1       50     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg              0       20     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg              1       64     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg          0        9     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg          1       39     214
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg             0       38     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg             1       19     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg              0      120     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg              1      188     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg          0       33     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg          1       31     429
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg             0       93     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg             1       18     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg              0      214     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg              1      147     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg          0       80     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg          1       24     576
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg             0      121     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg             1       17     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg              0      180     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg              1       93     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg          0       81     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg          1       22     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg             0        3       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg             1        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg              0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg              1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg          0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg          1        0       6
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg             0     2781    4013
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg             1      230    4013
24 months   ki1119695-PROBIT           BELARUS                        <52 kg              0      283    4013
24 months   ki1119695-PROBIT           BELARUS                        <52 kg              1       42    4013
24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg          0      607    4013
24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg          1       70    4013
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg             0       83     436
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg             1      100     436
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg              0       25     436
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg              1      107     436
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg          0       38     436
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg          1       83     436
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg             0       57     578
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg             1       20     578
24 months   ki1148112-LCNI-5           MALAWI                         <52 kg              0      169     578
24 months   ki1148112-LCNI-5           MALAWI                         <52 kg              1      179     578
24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg          0       97     578
24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg          1       56     578


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

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/8c2ad1d1-8d44-42cf-959c-7a5425a6b501/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8c2ad1d1-8d44-42cf-959c-7a5425a6b501/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8c2ad1d1-8d44-42cf-959c-7a5425a6b501/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8c2ad1d1-8d44-42cf-959c-7a5425a6b501/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                0.1489362    0.0469445   0.2509279
Birth       ki0047075b-MAL-ED          BANGLADESH                     <52 kg               NA                0.1923077    0.1303362   0.2542791
Birth       ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           NA                0.1162791    0.0202712   0.2122869
Birth       ki0047075b-MAL-ED          PERU                           >=58 kg              NA                0.0808081    0.0270246   0.1345916
Birth       ki0047075b-MAL-ED          PERU                           <52 kg               NA                0.1682243    0.0972188   0.2392298
Birth       ki0047075b-MAL-ED          PERU                           [52-58) kg           NA                0.1000000    0.0295942   0.1704058
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0961538    0.0156940   0.1766137
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.1750000    0.0567595   0.2932405
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.2068966    0.0588519   0.3549412
Birth       ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0020440    0.0003496   0.0037384
Birth       ki1119695-PROBIT           BELARUS                        <52 kg               NA                0.0053050   -0.0001768   0.0107869
Birth       ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                0.0025402    0.0003101   0.0047704
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0782912    0.0713385   0.0852439
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.1391009    0.1251328   0.1530690
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.1159821    0.1043215   0.1276426
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              NA                0.1900000    0.1129687   0.2670313
6 months    ki0047075b-MAL-ED          PERU                           <52 kg               NA                0.2616822    0.1782441   0.3451204
6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg           NA                0.2000000    0.1025793   0.2974207
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                0.1675978    0.1127706   0.2224250
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               NA                0.3103448    0.1416269   0.4790627
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           NA                0.2682927    0.1323978   0.4041876
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.2021277    0.1207801   0.2834752
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.2842105    0.1933281   0.3750930
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.2068966    0.1024350   0.3113581
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.1111111    0.0585489   0.1636733
6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                0.3267910    0.3021800   0.3514019
6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                0.1603774    0.1251940   0.1955608
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.1971831    0.1045499   0.2898163
6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                0.3038961    0.2579105   0.3498817
6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.1604938    0.0804825   0.2405051
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.1028037    0.0452097   0.1603978
6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                0.1815718    0.1422057   0.2209380
6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                0.1415094    0.0751001   0.2079188
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.1358696    0.0863252   0.1854139
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                0.2558747    0.2121437   0.2996057
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                0.1824324    0.1201689   0.2446960
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0892430    0.0734660   0.1050200
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.1384615    0.1009022   0.1760208
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.0855746    0.0584575   0.1126916
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0550195    0.0420333   0.0680057
6 months    ki1119695-PROBIT           BELARUS                        <52 kg               NA                0.0978763    0.0749637   0.1207888
6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                0.0624164    0.0470842   0.0777486
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.1256293    0.1155705   0.1356882
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.2513433    0.2305682   0.2721184
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.1812977    0.1648032   0.1977922
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                0.2456140    0.1665501   0.3246780
6 months    ki1148112-LCNI-5           MALAWI                         <52 kg               NA                0.4325397    0.3892611   0.4758183
6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg           NA                0.2831050    0.2234033   0.3428068
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                0.2500000    0.1154928   0.3845072
24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg               NA                0.5851852    0.5018781   0.6684922
24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           NA                0.2432432    0.1046722   0.3818143
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                0.2894737    0.1449584   0.4339890
24 months   ki0047075b-MAL-ED          INDIA                          <52 kg               NA                0.4539007    0.3715404   0.5362610
24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg           NA                0.4042553    0.2636441   0.5448666
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                0.1052632    0.0361148   0.1744115
24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg               NA                0.3513514    0.2423424   0.4603603
24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg           NA                0.1923077    0.1046527   0.2799627
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                0.2337662    0.1389992   0.3285333
24 months   ki0047075b-MAL-ED          PERU                           <52 kg               NA                0.4800000    0.3666497   0.5933503
24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg           NA                0.4081633    0.2702040   0.5461226
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                0.3035714    0.2338940   0.3732489
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               NA                0.4642857    0.2791636   0.6494078
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           NA                0.4736842    0.3145902   0.6327783
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.6097561    0.5039272   0.7155850
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.7619048    0.6706089   0.8532007
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.8125000    0.7018231   0.9231769
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.3333333    0.2108122   0.4558545
24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                0.6103896    0.5558643   0.6649149
24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.4843750    0.3617941   0.6069559
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.1621622    0.0935314   0.2307929
24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                0.4072022    0.3564763   0.4579282
24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                0.2307692    0.1497243   0.3118142
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.1231884    0.0683014   0.1780754
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                0.3406593    0.2843857   0.3969329
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                0.2135922    0.1343660   0.2928185
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0763866    0.0469952   0.1057780
24 months   ki1119695-PROBIT           BELARUS                        <52 kg               NA                0.1292308    0.0796715   0.1787900
24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                0.1033973    0.0562627   0.1505320
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.5464481    0.4742361   0.6186600
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.8106061    0.7436873   0.8775248
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.6859504    0.6031563   0.7687445
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                0.2597403    0.1617144   0.3577661
24 months   ki1148112-LCNI-5           MALAWI                         <52 kg               NA                0.5143678    0.4618115   0.5669242
24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg           NA                0.3660131    0.2896177   0.4424084


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1707317   0.1236156   0.2178478
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                0.1195652   0.0812181   0.1579123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1487603   0.0850915   0.2124292
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                0.0023970   0.0011029   0.0036912
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1012739   0.0956332   0.1069146
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.2205882   0.1712211   0.2699554
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.2008032   0.1509453   0.2506612
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2348178   0.1818480   0.2877876
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2842105   0.2659845   0.3024365
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2681564   0.2306532   0.3056597
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1597938   0.1299995   0.1895881
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2097902   0.1799252   0.2396552
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0965309   0.0835493   0.1095126
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0598408   0.0469716   0.0727101
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1668346   0.1586345   0.1750346
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3679809   0.3352903   0.4006715
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4622642   0.3949918   0.5295365
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4159292   0.3515272   0.4803312
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.2149123   0.1614774   0.2683472
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.3681592   0.3013164   0.4350020
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3504274   0.2891665   0.4116882
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7149533   0.6543278   0.7755787
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5547786   0.5076945   0.6018626
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3281250   0.2897474   0.3665026
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2568093   0.2190047   0.2946140
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0852230   0.0552609   0.1151851
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.6651376   0.6207877   0.7094875
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.4411765   0.4006626   0.4816903


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     <52 kg               >=58 kg           1.2912088   0.6057693    2.752236
Birth       ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           >=58 kg           0.7807309   0.2670760    2.282275
Birth       ki0047075b-MAL-ED          PERU                           >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
Birth       ki0047075b-MAL-ED          PERU                           <52 kg               >=58 kg           2.0817757   0.9465750    4.578391
Birth       ki0047075b-MAL-ED          PERU                           [52-58) kg           >=58 kg           1.2375000   0.4696521    3.260725
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.8199999   0.6208455    5.335304
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           2.1517241   0.7155263    6.470644
Birth       ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
Birth       ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           2.5954276   0.6078635   11.081836
Birth       ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           1.2427725   0.3611349    4.276749
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           1.7767124   1.5538136    2.031587
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.4814188   1.2954492    1.694086
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
6 months    ki0047075b-MAL-ED          PERU                           <52 kg               >=58 kg           1.3772750   0.8222730    2.306881
6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg           >=58 kg           1.0526316   0.5585235    1.983862
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               >=58 kg           1.8517241   0.9818013    3.492440
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           >=58 kg           1.6008130   0.8759360    2.925559
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.4060942   0.8409589    2.351008
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.0235935   0.5366802    1.952268
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           2.9411187   1.7515592    4.938560
6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg           1.4433962   0.8888559    2.343904
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           1.5411874   0.9408243    2.524657
6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           0.8139330   0.4102941    1.614663
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           1.7661986   0.9686108    3.220548
6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg           1.3765008   0.6628049    2.858691
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           1.8832376   1.2589540    2.817088
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           1.3427027   0.8148385    2.212525
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.5515110   1.1223725    2.144730
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           0.9588936   0.6670865    1.378347
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
6 months    ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           1.7789377   1.4517024    2.179937
6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           1.1344415   0.9511763    1.353017
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           2.0006734   1.7831937    2.244677
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.4431159   1.2784004    1.629054
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
6 months    ki1148112-LCNI-5           MALAWI                         <52 kg               >=58 kg           1.7610544   1.2571127    2.467013
6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg           >=58 kg           1.1526419   0.7844504    1.693649
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg               >=58 kg           2.3407407   1.3416811    4.083733
24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           >=58 kg           0.9729730   0.4444189    2.130144
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          INDIA                          <52 kg               >=58 kg           1.5680206   0.9218500    2.667124
24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg           >=58 kg           1.3965184   0.7599715    2.566233
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg               >=58 kg           3.3378378   1.6141891    6.902018
24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg           >=58 kg           1.8269231   0.8212547    4.064084
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          PERU                           <52 kg               >=58 kg           2.0533333   1.2844206    3.282552
24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg           >=58 kg           1.7460317   1.0299725    2.959911
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               >=58 kg           1.5294118   0.9654262    2.422868
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           >=58 kg           1.5603715   1.0388584    2.343687
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.2495238   1.0119276    1.542906
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.3325000   1.0686815    1.661446
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           1.8311688   1.2544433    2.673042
24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           1.4531250   0.9300257    2.270445
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           2.5110803   1.6153274    3.903558
24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg           1.4230769   0.8210772    2.466452
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           2.7653523   1.7194045    4.447571
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           1.7338664   0.9710389    3.095955
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
24 months   ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           1.6917993   1.1652466    2.456291
24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           1.3536061   0.9132675    2.006257
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           1.4834091   1.2693795    1.733526
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.2552893   1.0495825    1.501312
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
24 months   ki1148112-LCNI-5           MALAWI                         <52 kg               >=58 kg           1.9803161   1.3394648    2.927775
24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg           >=58 kg           1.4091503   0.9154998    2.168984


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                0.0217955   -0.0711957   0.1147868
Birth       ki0047075b-MAL-ED          PERU                           >=58 kg              NA                0.0387571   -0.0090758   0.0865901
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0526065   -0.0178439   0.1230569
Birth       ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0003530   -0.0004288   0.0011348
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0229827    0.0175324   0.0284330
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              NA                0.0305882   -0.0327192   0.0938957
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                0.0332054   -0.0009987   0.0674096
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0326902   -0.0335404   0.0989207
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.1730994    0.1128340   0.2333649
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.0709733   -0.0168808   0.1588274
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.0569901    0.0023540   0.1116261
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.0739206    0.0282786   0.1195626
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0072879   -0.0028769   0.0174527
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0048213    0.0025348   0.0071079
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0412052    0.0333220   0.0490885
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                0.1223668    0.0474204   0.1973133
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                0.2122642    0.0866039   0.3379244
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                0.1264555   -0.0077426   0.2606536
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                0.1096491    0.0429474   0.1763508
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                0.1343930    0.0533501   0.2154358
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                0.0468559    0.0064006   0.0873112
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.1051972    0.0258737   0.1845207
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.2214452    0.1063831   0.3365074
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.1659628    0.0998747   0.2320510
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.1336209    0.0804785   0.1867634
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0088364    0.0000641   0.0176088
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.1186895    0.0657357   0.1716434
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                0.1814362    0.0882148   0.2746576


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                0.1276596   -0.6273562   0.5323840
Birth       ki0047075b-MAL-ED          PERU                           >=58 kg              NA                0.3241506   -0.2015336   0.6198422
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.3536325   -0.3056963   0.6800244
Birth       ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.1472826   -0.2965904   0.4392008
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.2269360    0.1725292   0.2777655
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              NA                0.1386667   -0.2007227   0.3821262
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                0.1653631   -0.0200531   0.3170760
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.1392150   -0.1933887   0.3791203
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.6090535    0.3587329   0.7616607
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.2646714   -0.1465927   0.5284217
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.3566476   -0.0862704   0.6189693
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.3523551    0.0991330   0.5343997
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0754980   -0.0355930   0.1746720
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0805692    0.0382642   0.1210134
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.2469824    0.1993890   0.2917467
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                0.3325359    0.0950235   0.5077128
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                0.4591837    0.1069398   0.6724943
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                0.3040314   -0.1063867   0.5622034
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                0.5102041    0.1131669   0.7294868
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                0.3650404    0.1056168   0.5492159
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                0.1337108    0.0103960   0.2416593
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.1471385    0.0260530   0.2531702
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.3991597    0.1495221   0.5755220
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.5057915    0.2639459   0.6681738
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.5203118    0.2763564   0.6820248
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.1036861   -0.0040036   0.1998249
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.1784436    0.0926522   0.2561232
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                0.4112554    0.1574010   0.5886297
