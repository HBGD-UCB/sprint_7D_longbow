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



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/69c80b8d-9f42-4a19-a9d8-03a3ac49457c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/69c80b8d-9f42-4a19-a9d8-03a3ac49457c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/69c80b8d-9f42-4a19-a9d8-03a3ac49457c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/69c80b8d-9f42-4a19-a9d8-03a3ac49457c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

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
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0779308    0.0710020   0.0848597
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.1370187    0.1234808   0.1505565
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.1165067    0.1049593   0.1280542
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              NA                0.1592620    0.0954299   0.2230941
6 months    ki0047075b-MAL-ED          PERU                           <52 kg               NA                0.2292910    0.1566294   0.3019527
6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg           NA                0.1882129    0.0964443   0.2799816
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                0.1675978    0.1127706   0.2224250
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               NA                0.3103448    0.1416269   0.4790627
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           NA                0.2682927    0.1323978   0.4041876
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.2021272    0.1207803   0.2834741
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.2842096    0.1933270   0.3750923
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.2068985    0.1024380   0.3113590
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.1034060    0.0538760   0.1529360
6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                0.3259170    0.3007151   0.3511189
6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                0.1628349    0.1265671   0.1991026
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.1979778    0.1095616   0.2863940
6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                0.3097741    0.2637907   0.3557575
6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.1551907    0.0836811   0.2267004
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.0968979    0.0437930   0.1500028
6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                0.1803465    0.1416056   0.2190874
6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                0.1410820    0.0788810   0.2032829
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.1459155    0.0952983   0.1965326
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                0.2554158    0.2124603   0.2983714
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                0.1837296    0.1225906   0.2448687
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0896997    0.0739872   0.1054121
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.1437514    0.1086760   0.1788268
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.0866445    0.0603591   0.1129299
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0554697    0.0423666   0.0685728
6 months    ki1119695-PROBIT           BELARUS                        <52 kg               NA                0.1099835    0.0869324   0.1330346
6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                0.0651263    0.0498935   0.0803591
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.1247077    0.1147280   0.1346874
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.2563674    0.2361770   0.2765579
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.1827390    0.1666033   0.1988746
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                0.2523480    0.1752110   0.3294850
6 months    ki1148112-LCNI-5           MALAWI                         <52 kg               NA                0.4321461    0.3890941   0.4751981
6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg           NA                0.2820617    0.2229253   0.3411981
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                0.2500000    0.1154928   0.3845072
24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg               NA                0.5851852    0.5018781   0.6684922
24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           NA                0.2432432    0.1046722   0.3818143
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                0.3236791    0.1866053   0.4607528
24 months   ki0047075b-MAL-ED          INDIA                          <52 kg               NA                0.4646885    0.3845602   0.5448169
24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg           NA                0.4173648    0.2948588   0.5398707
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                0.1052632    0.0361148   0.1744115
24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg               NA                0.3513514    0.2423424   0.4603603
24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg           NA                0.1923077    0.1046527   0.2799627
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                0.2344175    0.1428261   0.3260089
24 months   ki0047075b-MAL-ED          PERU                           <52 kg               NA                0.4778190    0.3714009   0.5842371
24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg           NA                0.3992774    0.2716965   0.5268582
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                0.3059724    0.2369908   0.3749541
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               NA                0.5484711    0.3960625   0.7008797
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           NA                0.4774551    0.3351648   0.6197454
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.6097561    0.5039272   0.7155850
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.7619048    0.6706089   0.8532007
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.8125000    0.7018231   0.9231769
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.3468302    0.2356669   0.4579936
24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                0.6143049    0.5601195   0.6684903
24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.4941702    0.3783023   0.6100382
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.1582440    0.0929060   0.2235821
24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                0.4112375    0.3609912   0.4614838
24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                0.2281254    0.1505590   0.3056919
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.0945275    0.0494757   0.1395793
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                0.3452564    0.2899535   0.4005593
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                0.2027165    0.1278079   0.2776251
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0761671    0.0469158   0.1054185
24 months   ki1119695-PROBIT           BELARUS                        <52 kg               NA                0.1032654    0.0620275   0.1445033
24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                0.0930397    0.0509160   0.1351634
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.5509402    0.4839753   0.6179050
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.8407548    0.7834610   0.8980485
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.6983021    0.6234137   0.7731906
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                0.2501429    0.1581455   0.3421403
24 months   ki1148112-LCNI-5           MALAWI                         <52 kg               NA                0.5167975    0.4645651   0.5690298
24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg           NA                0.3601419    0.2858937   0.4343900


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
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           1.7582089   1.5394365    2.008072
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.4950022   1.3086923    1.707836
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
6 months    ki0047075b-MAL-ED          PERU                           <52 kg               >=58 kg           1.4397096   0.8603643    2.409170
6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg           >=58 kg           1.1817817   0.6296139    2.218198
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               >=58 kg           1.8517241   0.9818013    3.492440
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           >=58 kg           1.6008130   0.8759360    2.925559
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.4060930   0.8409600    2.351001
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.0236054   0.5366928    1.952268
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           3.1518193   1.8603322    5.339888
6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg           1.5747139   0.9718403    2.551576
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           1.5646911   0.9775236    2.504552
6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           0.7838795   0.4127941    1.488556
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           1.8612014   1.0328427    3.353919
6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg           1.4559858   0.7210233    2.940119
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           1.7504371   1.1903618    2.574033
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           1.2591513   0.7786310    2.036218
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.6025856   1.1867402    2.164147
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           0.9659400   0.6804750    1.371160
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
6 months    ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           1.9827663   1.6381848    2.399828
6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           1.1740868   0.9893240    1.393355
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           2.0557459   1.8375199    2.299889
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.4653380   1.3008231    1.650659
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
6 months    ki1148112-LCNI-5           MALAWI                         <52 kg               >=58 kg           1.7125005   1.2420793    2.361088
6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg           >=58 kg           1.1177487   0.7716450    1.619089
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg               >=58 kg           2.3407407   1.3416811    4.083733
24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           >=58 kg           0.9729730   0.4444189    2.130144
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          INDIA                          <52 kg               >=58 kg           1.4356458   0.9079361    2.270070
24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg           >=58 kg           1.2894400   0.7716495    2.154677
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg               >=58 kg           3.3378378   1.6141891    6.902018
24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg           >=58 kg           1.8269231   0.8212547    4.064084
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          PERU                           <52 kg               >=58 kg           2.0383249   1.3001568    3.195590
24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg           >=58 kg           1.7032748   1.0290346    2.819288
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               >=58 kg           1.7925507   1.2547481    2.560863
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           >=58 kg           1.5604512   1.0772108    2.260475
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.2495238   1.0119276    1.542906
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.3325000   1.0686815    1.661446
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           1.7711977   1.2694465    2.471267
24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           1.4248187   0.9599736    2.114754
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           2.5987550   1.6899082    3.996387
24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg           1.4416052   0.8443911    2.461212
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           3.6524437   2.2086909    6.039933
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           2.1445241   1.1734691    3.919135
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
24 months   ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           1.3557732   0.9341367    1.967721
24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           1.2215201   0.8320102    1.793381
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           1.5260364   1.3277019    1.753999
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.2674736   1.0780819    1.490137
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
24 months   ki1148112-LCNI-5           MALAWI                         <52 kg               >=58 kg           2.0660090   1.4109347    3.025224
24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg           >=58 kg           1.4397445   0.9444645    2.194751


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                0.0217955   -0.0711957   0.1147868
Birth       ki0047075b-MAL-ED          PERU                           >=58 kg              NA                0.0387571   -0.0090758   0.0865901
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0526065   -0.0178439   0.1230569
Birth       ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0003530   -0.0004288   0.0011348
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0233431    0.0178641   0.0288221
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              NA                0.0613262    0.0061607   0.1164917
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                0.0332054   -0.0009987   0.0674096
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0326906   -0.0335393   0.0989205
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.1808045    0.1231954   0.2384137
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.0701786   -0.0138528   0.1542100
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.0628959    0.0117174   0.1140744
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.0638748    0.0170223   0.1107272
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0068313   -0.0033593   0.0170219
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0043711    0.0020862   0.0066560
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0421268    0.0342267   0.0500269
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                0.1156328    0.0424810   0.1887847
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                0.2122642    0.0866039   0.3379244
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                0.0922501   -0.0351987   0.2196989
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                0.1096491    0.0429474   0.1763508
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                0.1337417    0.0542810   0.2132025
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                0.0444549    0.0049301   0.0839797
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.1051972    0.0258737   0.1845207
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.2079483    0.1031230   0.3127737
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.1698810    0.1060491   0.2337128
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.1622818    0.1153778   0.2091859
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0090559    0.0005718   0.0175399
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.1141974    0.0650780   0.1633169
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                0.1910336    0.1031591   0.2789080


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                0.1276596   -0.6273562   0.5323840
Birth       ki0047075b-MAL-ED          PERU                           >=58 kg              NA                0.3241506   -0.2015336   0.6198422
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.3536325   -0.3056963   0.6800244
Birth       ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.1472826   -0.2965904   0.4392008
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.2304944    0.1759108   0.2814627
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              NA                0.2780123   -0.0089542   0.4833598
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                0.1653631   -0.0200531   0.3170760
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.1392169   -0.1933831   0.3791202
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.6361641    0.3991232   0.7796944
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.2617078   -0.1261527   0.5159845
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.3936067   -0.0144827   0.6375366
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.3044696    0.0465622   0.4926124
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0707677   -0.0404834   0.1701235
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0730455    0.0306037   0.1136291
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.2525065    0.2049734   0.2971977
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                0.3142360    0.0846779   0.4862221
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                0.4591837    0.1069398   0.6724943
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                0.2217929   -0.1515987   0.4741169
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                0.5102041    0.1131669   0.7294868
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                0.3632715    0.1131092   0.5428714
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                0.1268591    0.0068801   0.2323435
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.1471385    0.0260530   0.2531702
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.3748312    0.1542936   0.5378585
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.5177324    0.2877466   0.6734561
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.6319157    0.4262953   0.7638400
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.1062610    0.0024970   0.1992310
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.1716899    0.0931876   0.2433964
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                0.4330095    0.1958605   0.6002208
