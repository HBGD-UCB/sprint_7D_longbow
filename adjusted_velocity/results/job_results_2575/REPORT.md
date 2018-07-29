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
        value: FALSE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
  output_directory:
    value: ''

---







## Methods
## Outcome Variable

**Outcome Variable:** y_rate_len

## Predictor Variables

**Intervention Variable:** mbmi

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

agecat         studyid                    country                        mbmi         n_cell       n
-------------  -------------------------  -----------------------------  ----------  -------  ------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [18.5-25)       157     244
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <18.5            32     244
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [25-30)          49     244
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=30              6     244
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [18.5-25)       400     566
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <18.5            94     566
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [25-30)          58     566
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=30             14     566
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [18.5-25)       401     633
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <18.5           118     633
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [25-30)          95     633
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=30             19     633
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [18.5-25)       459     720
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <18.5            66     720
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)         157     720
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=30             38     720
0-3 months     ki1119695-PROBIT           BELARUS                        [18.5-25)      7460   12593
0-3 months     ki1119695-PROBIT           BELARUS                        <18.5           485   12593
0-3 months     ki1119695-PROBIT           BELARUS                        [25-30)        3251   12593
0-3 months     ki1119695-PROBIT           BELARUS                        >=30           1397   12593
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [18.5-25)        68     180
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <18.5             9     180
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [25-30)          67     180
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=30             36     180
0-3 months     ki0047075b-MAL-ED          INDIA                          [18.5-25)       120     201
0-3 months     ki0047075b-MAL-ED          INDIA                          <18.5            39     201
0-3 months     ki0047075b-MAL-ED          INDIA                          [25-30)          32     201
0-3 months     ki0047075b-MAL-ED          INDIA                          >=30             10     201
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [18.5-25)       756    1074
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <18.5           263    1074
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [25-30)          51    1074
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=30              4    1074
0-3 months     ki0047075b-MAL-ED          NEPAL                          [18.5-25)       102     175
0-3 months     ki0047075b-MAL-ED          NEPAL                          [25-30)          62     175
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=30             11     175
0-3 months     ki0047075b-MAL-ED          PERU                           [18.5-25)       146     270
0-3 months     ki0047075b-MAL-ED          PERU                           <18.5             5     270
0-3 months     ki0047075b-MAL-ED          PERU                           [25-30)         103     270
0-3 months     ki0047075b-MAL-ED          PERU                           >=30             16     270
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [18.5-25)        94     223
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <18.5             4     223
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)          68     223
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=30             57     223
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [18.5-25)       160     229
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <18.5            12     229
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)          48     229
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30              9     229
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)      4710    6904
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <18.5           337    6904
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)        1435    6904
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=30            422    6904
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [18.5-25)       147     231
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <18.5            30     231
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [25-30)          48     231
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=30              6     231
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [18.5-25)       363     523
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <18.5            91     523
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [25-30)          55     523
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=30             14     523
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [18.5-25)       363     573
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <18.5           101     573
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [25-30)          91     573
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=30             18     573
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [18.5-25)       440     695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <18.5            64     695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)         155     695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=30             36     695
3-6 months     ki1119695-PROBIT           BELARUS                        [18.5-25)      6540   11058
3-6 months     ki1119695-PROBIT           BELARUS                        <18.5           433   11058
3-6 months     ki1119695-PROBIT           BELARUS                        [25-30)        2874   11058
3-6 months     ki1119695-PROBIT           BELARUS                        >=30           1211   11058
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [18.5-25)        81     207
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <18.5             9     207
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [25-30)          78     207
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=30             39     207
3-6 months     ki0047075b-MAL-ED          INDIA                          [18.5-25)       136     228
3-6 months     ki0047075b-MAL-ED          INDIA                          <18.5            46     228
3-6 months     ki0047075b-MAL-ED          INDIA                          [25-30)          37     228
3-6 months     ki0047075b-MAL-ED          INDIA                          >=30              9     228
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [18.5-25)       726    1036
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <18.5           256    1036
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [25-30)          49    1036
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=30              5    1036
3-6 months     ki0047075b-MAL-ED          NEPAL                          [18.5-25)       131     233
3-6 months     ki0047075b-MAL-ED          NEPAL                          [25-30)          86     233
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=30             16     233
3-6 months     ki0047075b-MAL-ED          PERU                           [18.5-25)       145     266
3-6 months     ki0047075b-MAL-ED          PERU                           <18.5             5     266
3-6 months     ki0047075b-MAL-ED          PERU                           [25-30)         100     266
3-6 months     ki0047075b-MAL-ED          PERU                           >=30             16     266
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [18.5-25)        93     237
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <18.5             6     237
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)          74     237
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=30             64     237
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [18.5-25)       165     239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <18.5            13     239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)          51     239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30             10     239
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [18.5-25)       838    1623
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <18.5            27    1623
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)         528    1623
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30            230    1623
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)      3652    5375
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <18.5           254    5375
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)        1142    5375
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=30            327    5375
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [18.5-25)       142     220
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     <18.5            26     220
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)          47     220
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=30              5     220
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [18.5-25)       331     482
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     <18.5            89     482
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)          53     482
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=30              9     482
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [18.5-25)       341     545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     <18.5            96     545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)          90     545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=30             18     545
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [18.5-25)       429     676
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <18.5            60     676
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)         152     676
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30             35     676
6-12 months    ki1119695-PROBIT           BELARUS                        [18.5-25)      6403   10803
6-12 months    ki1119695-PROBIT           BELARUS                        <18.5           424   10803
6-12 months    ki1119695-PROBIT           BELARUS                        [25-30)        2778   10803
6-12 months    ki1119695-PROBIT           BELARUS                        >=30           1198   10803
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [18.5-25)        74     193
6-12 months    ki0047075b-MAL-ED          BRAZIL                         <18.5             9     193
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [25-30)          72     193
6-12 months    ki0047075b-MAL-ED          BRAZIL                         >=30             38     193
6-12 months    ki0047075b-MAL-ED          INDIA                          [18.5-25)       131     223
6-12 months    ki0047075b-MAL-ED          INDIA                          <18.5            44     223
6-12 months    ki0047075b-MAL-ED          INDIA                          [25-30)          38     223
6-12 months    ki0047075b-MAL-ED          INDIA                          >=30             10     223
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [18.5-25)       727    1042
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          <18.5           259    1042
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)          50    1042
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=30              6    1042
6-12 months    ki1148112-LCNI-5           MALAWI                         [18.5-25)       335     433
6-12 months    ki1148112-LCNI-5           MALAWI                         <18.5            76     433
6-12 months    ki1148112-LCNI-5           MALAWI                         [25-30)          21     433
6-12 months    ki1148112-LCNI-5           MALAWI                         >=30              1     433
6-12 months    ki0047075b-MAL-ED          NEPAL                          [18.5-25)       127     230
6-12 months    ki0047075b-MAL-ED          NEPAL                          [25-30)          87     230
6-12 months    ki0047075b-MAL-ED          NEPAL                          >=30             16     230
6-12 months    ki0047075b-MAL-ED          PERU                           [18.5-25)       125     236
6-12 months    ki0047075b-MAL-ED          PERU                           <18.5             4     236
6-12 months    ki0047075b-MAL-ED          PERU                           [25-30)          91     236
6-12 months    ki0047075b-MAL-ED          PERU                           >=30             16     236
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [18.5-25)        91     228
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <18.5             6     228
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)          70     228
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30             61     228
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [18.5-25)       154     223
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <18.5            13     223
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)          48     223
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30              8     223
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [18.5-25)       552    1059
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <18.5            17    1059
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)         347    1059
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30            143    1059
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)      2872    4133
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <18.5           208    4133
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)         825    4133
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30            228    4133
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     [18.5-25)       131     206
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     <18.5            27     206
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)          44     206
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30              4     206
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [18.5-25)       286     421
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     <18.5            79     421
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)          48     421
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30              8     421
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [18.5-25)       285     458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     <18.5            84     458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)          73     458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30             16     458
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [18.5-25)       312     495
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <18.5            39     495
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)         119     495
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30             25     495
12-24 months   ki1119695-PROBIT           BELARUS                        [18.5-25)      1488    2520
12-24 months   ki1119695-PROBIT           BELARUS                        <18.5            89    2520
12-24 months   ki1119695-PROBIT           BELARUS                        [25-30)         670    2520
12-24 months   ki1119695-PROBIT           BELARUS                        >=30            273    2520
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [18.5-25)        62     164
12-24 months   ki0047075b-MAL-ED          BRAZIL                         <18.5             6     164
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)          65     164
12-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30             31     164
12-24 months   ki0047075b-MAL-ED          INDIA                          [18.5-25)       132     224
12-24 months   ki0047075b-MAL-ED          INDIA                          <18.5            45     224
12-24 months   ki0047075b-MAL-ED          INDIA                          [25-30)          38     224
12-24 months   ki0047075b-MAL-ED          INDIA                          >=30              9     224
12-24 months   ki1148112-LCNI-5           MALAWI                         [18.5-25)       235     309
12-24 months   ki1148112-LCNI-5           MALAWI                         <18.5            56     309
12-24 months   ki1148112-LCNI-5           MALAWI                         [25-30)          17     309
12-24 months   ki1148112-LCNI-5           MALAWI                         >=30              1     309
12-24 months   ki0047075b-MAL-ED          NEPAL                          [18.5-25)       126     226
12-24 months   ki0047075b-MAL-ED          NEPAL                          [25-30)          84     226
12-24 months   ki0047075b-MAL-ED          NEPAL                          >=30             16     226
12-24 months   ki0047075b-MAL-ED          PERU                           [18.5-25)        99     191
12-24 months   ki0047075b-MAL-ED          PERU                           <18.5             3     191
12-24 months   ki0047075b-MAL-ED          PERU                           [25-30)          73     191
12-24 months   ki0047075b-MAL-ED          PERU                           >=30             16     191
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [18.5-25)        89     226
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <18.5             7     226
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)          71     226
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30             59     226
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [18.5-25)       141     207
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <18.5            11     207
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)          47     207
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30              8     207
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [18.5-25)         1       2
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)           1       2
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)       194     268
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <18.5            19     268
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)          42     268
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30             13     268


The following strata were considered:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-3 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 12-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 12-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 3-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 3-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-12 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-12 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-12 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-12 months, studyid: ki1148112-LCNI-5, country: MALAWI

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-12 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The
## following learners failed for one or more folds and will be dropped from
## all folds: Lrnr_mean
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The
## following learners failed for one or more folds and will be dropped from
## all folds: Lrnr_mean
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The
## following learners failed for one or more folds and will be dropped from
## all folds: Lrnr_mean
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The
## following learners failed for one or more folds and will be dropped from
## all folds: Lrnr_mean
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/47af215f-a1a6-49bc-811e-ffddb7402107/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/47af215f-a1a6-49bc-811e-ffddb7402107/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [18.5-25)            NA                3.5770883   3.4982843   3.6558923
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <18.5                NA                3.4047359   3.2503556   3.5591162
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [25-30)              NA                3.6174079   3.4714521   3.7633636
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                3.6123752   3.4551047   3.7696458
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [18.5-25)            NA                4.0970215   3.9312385   4.2628045
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <18.5                NA                4.2633757   3.9732644   4.5534869
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [25-30)              NA                3.9579715   3.8023688   4.1135742
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                3.9666194   3.8033746   4.1298642
0-3 months     ki0047075b-MAL-ED          INDIA                          [18.5-25)            NA                3.5898116   3.5055776   3.6740456
0-3 months     ki0047075b-MAL-ED          INDIA                          <18.5                NA                3.6119203   3.4901116   3.7337291
0-3 months     ki0047075b-MAL-ED          INDIA                          [25-30)              NA                3.4605741   3.2997816   3.6213666
0-3 months     ki0047075b-MAL-ED          INDIA                          >=30                 NA                3.5662070   3.2306227   3.9017912
0-3 months     ki0047075b-MAL-ED          NEPAL                          [18.5-25)            NA                3.8337587   3.7352215   3.9322959
0-3 months     ki0047075b-MAL-ED          NEPAL                          [25-30)              NA                3.7790086   3.6852789   3.8727384
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=30                 NA                5.0344876   4.9450731   5.1239021
0-3 months     ki0047075b-MAL-ED          PERU                           [18.5-25)            NA                3.3629283   3.2911000   3.4347566
0-3 months     ki0047075b-MAL-ED          PERU                           <18.5                NA                3.4720927   3.3550725   3.5891129
0-3 months     ki0047075b-MAL-ED          PERU                           [25-30)              NA                3.2968021   3.1982533   3.3953510
0-3 months     ki0047075b-MAL-ED          PERU                           >=30                 NA                2.7156197   2.5895626   2.8416768
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [18.5-25)            NA                3.4842748   3.3925311   3.5760185
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <18.5                NA                3.5812932   3.1874509   3.9751354
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                3.4900361   3.3322826   3.6477896
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                3.2584001   2.8741193   3.6426810
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [18.5-25)            NA                3.3233768   3.2578351   3.3889184
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <18.5                NA                3.3039908   3.1952191   3.4127626
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                3.3134499   3.1373780   3.4895218
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                3.2192646   2.9841204   3.4544088
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [18.5-25)            NA                3.4675189   3.4198116   3.5152261
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <18.5                NA                3.4819484   3.4125214   3.5513754
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                3.5753872   3.4954119   3.6553624
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                3.5472433   3.4361976   3.6582890
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [18.5-25)            NA                3.3086920   3.2598547   3.3575294
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <18.5                NA                3.2516301   3.1434328   3.3598275
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                3.2882435   3.2103448   3.3661422
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                3.2548620   3.1450565   3.3646675
0-3 months     ki1119695-PROBIT           BELARUS                        [18.5-25)            NA                2.8527282   2.7439489   2.9615075
0-3 months     ki1119695-PROBIT           BELARUS                        <18.5                NA                2.9270871   2.8113525   3.0428217
0-3 months     ki1119695-PROBIT           BELARUS                        [25-30)              NA                2.8219812   2.6863019   2.9576606
0-3 months     ki1119695-PROBIT           BELARUS                        >=30                 NA                2.7901312   2.6981447   2.8821177
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            NA                3.3521304   3.3251249   3.3791360
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <18.5                NA                3.3168130   3.2314840   3.4021421
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                3.3857633   3.3359916   3.4355350
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                3.2908331   3.2157162   3.3659501
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [18.5-25)            NA                1.9571604   1.8973044   2.0170163
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <18.5                NA                2.0615820   1.9462900   2.1768740
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [25-30)              NA                2.0284514   1.9512432   2.1056596
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                2.0425814   1.9362251   2.1489378
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [18.5-25)            NA                2.2202760   2.0980597   2.3424922
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <18.5                NA                1.7458936   1.5230420   1.9687452
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [25-30)              NA                2.1749189   2.0505051   2.2993328
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                2.0484749   1.8974916   2.1994582
3-6 months     ki0047075b-MAL-ED          INDIA                          [18.5-25)            NA                1.8517162   1.7802475   1.9231849
3-6 months     ki0047075b-MAL-ED          INDIA                          <18.5                NA                1.8430992   1.7327567   1.9534417
3-6 months     ki0047075b-MAL-ED          INDIA                          [25-30)              NA                1.8744793   1.7814841   1.9674745
3-6 months     ki0047075b-MAL-ED          INDIA                          >=30                 NA                1.0891037   0.8721468   1.3060605
3-6 months     ki0047075b-MAL-ED          NEPAL                          [18.5-25)            NA                1.8980195   1.8316180   1.9644211
3-6 months     ki0047075b-MAL-ED          NEPAL                          [25-30)              NA                2.0522839   1.9797242   2.1248437
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=30                 NA                2.5579827   2.4427734   2.6731921
3-6 months     ki0047075b-MAL-ED          PERU                           [18.5-25)            NA                1.9978338   1.9190882   2.0765793
3-6 months     ki0047075b-MAL-ED          PERU                           <18.5                NA                2.0463070   1.8701653   2.2224487
3-6 months     ki0047075b-MAL-ED          PERU                           [25-30)              NA                2.0185335   1.9297955   2.1072715
3-6 months     ki0047075b-MAL-ED          PERU                           >=30                 NA                2.3120606   2.1976422   2.4264789
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [18.5-25)            NA                2.0159667   1.8959703   2.1359631
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <18.5                NA                1.6887135   1.4334624   1.9439647
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              NA                2.0473239   1.9314232   2.1632246
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                2.0116668   1.9035636   2.1197701
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [18.5-25)            NA                1.8461111   1.7684898   1.9237323
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <18.5                NA                1.6711139   1.3354465   2.0067813
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                1.8221893   1.6635148   1.9808639
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                1.8127081   1.4535220   2.1718943
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [18.5-25)            NA                1.9524251   1.9188763   1.9859739
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <18.5                NA                1.9398270   1.8520915   2.0275626
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [25-30)              NA                2.1027071   1.9434409   2.2619733
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                1.7183851   1.1157826   2.3209876
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [18.5-25)            NA                1.8197109   1.7623181   1.8771038
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <18.5                NA                1.7882378   1.6840484   1.8924271
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                1.9917218   1.8486761   2.1347675
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                1.8867757   1.6862337   2.0873178
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [18.5-25)            NA                1.9686289   1.9269189   2.0103389
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <18.5                NA                1.9401954   1.8588461   2.0215447
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                1.9535327   1.8726731   2.0343923
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                1.8579401   1.7016836   2.0141967
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [18.5-25)            NA                2.0262304   1.9788791   2.0735816
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <18.5                NA                1.9230018   1.8370036   2.0089999
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                1.9543392   1.8768493   2.0318291
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                1.8986464   1.8021945   1.9950984
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [18.5-25)            NA                1.7763674   1.7298646   1.8228702
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <18.5                NA                1.6423145   1.5545534   1.7300755
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                1.8222337   1.7546742   1.8897933
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                1.7945203   1.7095060   1.8795345
3-6 months     ki1119695-PROBIT           BELARUS                        [18.5-25)            NA                2.0933067   2.0526607   2.1339527
3-6 months     ki1119695-PROBIT           BELARUS                        <18.5                NA                2.0752722   2.0065141   2.1440304
3-6 months     ki1119695-PROBIT           BELARUS                        [25-30)              NA                2.0878476   2.0337034   2.1419917
3-6 months     ki1119695-PROBIT           BELARUS                        >=30                 NA                2.0904783   2.0439703   2.1369863
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            NA                1.9805516   1.9553593   2.0057440
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <18.5                NA                2.0052080   1.9224182   2.0879978
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                1.9570693   1.9105153   2.0036233
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                2.0836871   2.0163524   2.1510218
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [18.5-25)            NA                1.1136746   1.0850761   1.1422731
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     <18.5                NA                1.0460029   0.9731754   1.1188305
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)              NA                1.1291101   1.0717227   1.1864975
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.9393187   0.8143609   1.0642765
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [18.5-25)            NA                1.3186974   1.2523308   1.3850641
6-12 months    ki0047075b-MAL-ED          BRAZIL                         <18.5                NA                1.3232263   1.1712972   1.4751554
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [25-30)              NA                1.4472566   1.3724462   1.5220670
6-12 months    ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                1.4217697   1.3338547   1.5096846
6-12 months    ki0047075b-MAL-ED          INDIA                          [18.5-25)            NA                1.1322478   1.0972125   1.1672832
6-12 months    ki0047075b-MAL-ED          INDIA                          <18.5                NA                1.1292194   1.0760867   1.1823520
6-12 months    ki0047075b-MAL-ED          INDIA                          [25-30)              NA                1.1104637   1.0720632   1.1488641
6-12 months    ki0047075b-MAL-ED          INDIA                          >=30                 NA                1.2159889   1.1361553   1.2958226
6-12 months    ki0047075b-MAL-ED          NEPAL                          [18.5-25)            NA                1.2545927   1.2227616   1.2864237
6-12 months    ki0047075b-MAL-ED          NEPAL                          [25-30)              NA                1.2200188   1.1843733   1.2556642
6-12 months    ki0047075b-MAL-ED          NEPAL                          >=30                 NA                1.3709075   1.3249678   1.4168472
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [18.5-25)            NA                1.1909780   1.1349780   1.2469779
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <18.5                NA                1.4963784   1.4367775   1.5559793
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              NA                1.2358987   1.1771829   1.2946145
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                1.2797852   1.2282968   1.3312737
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [18.5-25)            NA                1.0045051   0.9639485   1.0450617
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <18.5                NA                1.0758561   0.9230091   1.2287031
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                0.9843251   0.8972968   1.0713535
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.9541785   0.8305683   1.0777888
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [18.5-25)            NA                1.1021523   1.0893944   1.1149103
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          <18.5                NA                1.0931130   1.0638779   1.1223480
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)              NA                1.0888937   0.9908701   1.1869173
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                1.0353686   0.9230030   1.1477342
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [18.5-25)            NA                1.1674068   1.1394570   1.1953567
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     <18.5                NA                1.1414749   1.0942141   1.1887357
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                1.2040264   1.1388638   1.2691890
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                1.2364443   1.1159411   1.3569475
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [18.5-25)            NA                1.1702031   1.1492778   1.1911283
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     <18.5                NA                1.0951738   1.0542806   1.1360669
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                1.2587687   1.2216492   1.2958881
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                1.1708287   1.1237861   1.2178714
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [18.5-25)            NA                1.2144742   1.1930673   1.2358811
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <18.5                NA                1.1946918   1.1549936   1.2343899
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                1.2625758   1.2257595   1.2993921
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                1.2436655   1.1892842   1.2980467
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [18.5-25)            NA                1.1925341   1.1635949   1.2214734
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <18.5                NA                1.1766295   1.1084135   1.2448456
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                1.1878765   1.1516365   1.2241165
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                1.1971284   1.1550700   1.2391869
6-12 months    ki1119695-PROBIT           BELARUS                        [18.5-25)            NA                1.4697536   1.4332626   1.5062445
6-12 months    ki1119695-PROBIT           BELARUS                        <18.5                NA                1.4491800   1.4081479   1.4902122
6-12 months    ki1119695-PROBIT           BELARUS                        [25-30)              NA                1.4739526   1.4218557   1.5260495
6-12 months    ki1119695-PROBIT           BELARUS                        >=30                 NA                1.4724583   1.4291554   1.5157612
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            NA                1.2026459   1.1891851   1.2161066
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <18.5                NA                1.1360111   1.0895854   1.1824368
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                1.1584806   1.1342904   1.1826708
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                1.2223263   1.1809957   1.2636569
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [18.5-25)            NA                0.9863509   0.9401767   1.0325252
12-24 months   ki0047075b-MAL-ED          BRAZIL                         <18.5                NA                1.0080324   0.9227507   1.0933141
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)              NA                0.9894196   0.9496553   1.0291839
12-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                1.0053234   0.9549472   1.0556995
12-24 months   ki0047075b-MAL-ED          INDIA                          [18.5-25)            NA                0.8773765   0.8553441   0.8994089
12-24 months   ki0047075b-MAL-ED          INDIA                          <18.5                NA                0.8789179   0.8415491   0.9162868
12-24 months   ki0047075b-MAL-ED          INDIA                          [25-30)              NA                0.8874384   0.8411126   0.9337641
12-24 months   ki0047075b-MAL-ED          INDIA                          >=30                 NA                0.9061995   0.8290802   0.9833189
12-24 months   ki0047075b-MAL-ED          NEPAL                          [18.5-25)            NA                0.8548456   0.8367263   0.8729649
12-24 months   ki0047075b-MAL-ED          NEPAL                          [25-30)              NA                0.9147216   0.8937137   0.9357296
12-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                 NA                1.0728369   1.0441796   1.1014941
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [18.5-25)            NA                0.8595637   0.8294641   0.8896634
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <18.5                NA                0.5641671   0.5288234   0.5995108
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              NA                0.8709161   0.8317781   0.9100542
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                0.8611888   0.8274059   0.8949716
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [18.5-25)            NA                0.7556152   0.7298956   0.7813348
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <18.5                NA                0.7810986   0.7063683   0.8558288
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                0.7797985   0.7361341   0.8234630
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.8648730   0.7631678   0.9665782
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [18.5-25)            NA                0.7543929   0.7367504   0.7720353
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     <18.5                NA                0.7119848   0.6819202   0.7420493
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                0.8020401   0.7656390   0.8384412
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.7190664   0.6393551   0.7987777
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [18.5-25)            NA                0.8487311   0.8340283   0.8634338
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     <18.5                NA                0.8383629   0.8138098   0.8629160
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                0.9253824   0.8972075   0.9535573
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.9057058   0.8718737   0.9395378
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [18.5-25)            NA                0.8618526   0.8470751   0.8766301
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <18.5                NA                0.8449634   0.8162059   0.8737209
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                0.9052433   0.8823714   0.9281152
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.9593494   0.9226583   0.9960405
12-24 months   ki1119695-PROBIT           BELARUS                        [18.5-25)            NA                0.8641894   0.7965277   0.9318510
12-24 months   ki1119695-PROBIT           BELARUS                        <18.5                NA                0.9807913   0.9180549   1.0435277
12-24 months   ki1119695-PROBIT           BELARUS                        [25-30)              NA                0.8514837   0.8035885   0.8993789
12-24 months   ki1119695-PROBIT           BELARUS                        >=30                 NA                0.8255088   0.7804766   0.8705411
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            NA                0.6947722   0.6636493   0.7258950
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <18.5                NA                0.7363945   0.6409907   0.8317982
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.7595681   0.6996856   0.8194506
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.7104143   0.6386586   0.7821701


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                3.5634447   3.5006347   3.6262547
0-3 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                4.0509714   3.9492443   4.1526985
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                3.5764512   3.4977133   3.6551891
0-3 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                3.8204935   3.7444190   3.8965681
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                3.3169985   3.2535876   3.3804093
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                3.4816904   3.4044928   3.5588880
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                3.3129255   3.2581305   3.3677204
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                3.4842409   3.4451170   3.5233649
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                3.3028656   3.2646714   3.3410598
0-3 months     ki1119695-PROBIT           BELARUS                        NA                   NA                2.8377102   2.7235014   2.9519189
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                3.3523868   3.3301424   3.3746313
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                1.9280462   1.8787523   1.9773401
3-6 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                2.1465654   2.0670402   2.2260907
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                1.8804733   1.8192508   1.9416958
3-6 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.9680995   1.9120346   2.0241643
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                2.0179168   1.9519428   2.0838909
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                1.9721457   1.8908533   2.0534381
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.8300902   1.7622436   1.8979368
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                1.9552312   1.9134079   1.9970545
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                1.8326915   1.7846731   1.8807099
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.9654067   1.9302800   2.0005334
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                2.0057973   1.9693775   2.0422170
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.7982528   1.7619937   1.8345119
3-6 months     ki1119695-PROBIT           BELARUS                        NA                   NA                2.0907239   2.0499674   2.1314804
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                1.9804622   1.9597476   2.0011769
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                1.1143928   1.0896103   1.1391753
6-12 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                1.3821617   1.3363222   1.4280012
6-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                1.1193380   1.0909904   1.1476855
6-12 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.2224454   1.1966480   1.2482429
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                1.1869461   1.1457857   1.2281065
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.0019524   0.9648566   1.0390481
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                1.1017930   1.0897842   1.1138017
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                1.1679344   1.1454934   1.1903754
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.1731762   1.1558671   1.1904853
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                1.2281313   1.2106849   1.2455776
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.1971906   1.1754499   1.2189312
6-12 months    ki1119695-PROBIT           BELARUS                        NA                   NA                1.4723651   1.4336785   1.5110518
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                1.1979900   1.1865747   1.2094054
12-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.9836574   0.9529821   1.0143327
12-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.8805522   0.8631583   0.8979461
12-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.8617083   0.8463512   0.8770654
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.8733901   0.8508889   0.8958912
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7663111   0.7428636   0.7897586
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.7513013   0.7366996   0.7659029
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.8575519   0.8455586   0.8695452
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.8755729   0.8637860   0.8873598
12-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.8595250   0.8059960   0.9130539
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.7070851   0.6798868   0.7342834


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <18.5                [18.5-25)         -0.1723524   -0.3455766    0.0008717
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [25-30)              [18.5-25)          0.0403195   -0.1252035    0.2058426
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=30                 [18.5-25)          0.0352869   -0.1406689    0.2112427
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <18.5                [18.5-25)          0.1663541   -0.1660752    0.4987835
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [25-30)              [18.5-25)         -0.1390500   -0.3647628    0.0866629
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=30                 [18.5-25)         -0.1304021   -0.3607094    0.0999052
0-3 months     ki0047075b-MAL-ED          INDIA                          [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          <18.5                [18.5-25)          0.0221087   -0.1147293    0.1589468
0-3 months     ki0047075b-MAL-ED          INDIA                          [25-30)              [18.5-25)         -0.1292375   -0.3027251    0.0442501
0-3 months     ki0047075b-MAL-ED          INDIA                          >=30                 [18.5-25)         -0.0236046   -0.3638344    0.3166252
0-3 months     ki0047075b-MAL-ED          NEPAL                          [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          [25-30)              [18.5-25)         -0.0547501   -0.1910864    0.0815862
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=30                 [18.5-25)          1.2007288    1.0756939    1.3257638
0-3 months     ki0047075b-MAL-ED          PERU                           [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           <18.5                [18.5-25)          0.1091644   -0.0284022    0.2467309
0-3 months     ki0047075b-MAL-ED          PERU                           [25-30)              [18.5-25)         -0.0661262   -0.1879085    0.0556561
0-3 months     ki0047075b-MAL-ED          PERU                           >=30                 [18.5-25)         -0.6473086   -0.7923411   -0.5022762
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <18.5                [18.5-25)          0.0970184   -0.3067778    0.5008145
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              [18.5-25)          0.0057613   -0.1760668    0.1875894
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 [18.5-25)         -0.2258747   -0.6207864    0.1690371
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <18.5                [18.5-25)         -0.0193860   -0.1460111    0.1072392
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [25-30)              [18.5-25)         -0.0099269   -0.1972829    0.1774291
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=30                 [18.5-25)         -0.1041122   -0.3480573    0.1398330
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <18.5                [18.5-25)          0.0144296   -0.0696020    0.0984611
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [25-30)              [18.5-25)          0.1078683    0.0151042    0.2006324
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=30                 [18.5-25)          0.0797244   -0.0408273    0.2002762
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <18.5                [18.5-25)         -0.0570619   -0.1757673    0.0616435
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              [18.5-25)         -0.0204485   -0.1123720    0.0714749
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [18.5-25)         -0.0538301   -0.1740988    0.0664386
0-3 months     ki1119695-PROBIT           BELARUS                        [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        <18.5                [18.5-25)          0.0743589    0.0001507    0.1485671
0-3 months     ki1119695-PROBIT           BELARUS                        [25-30)              [18.5-25)         -0.0307469   -0.0819937    0.0204999
0-3 months     ki1119695-PROBIT           BELARUS                        >=30                 [18.5-25)         -0.0625970   -0.1072083   -0.0179857
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <18.5                [18.5-25)         -0.0353174   -0.1247569    0.0541222
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              [18.5-25)          0.0336329   -0.0229267    0.0901925
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [18.5-25)         -0.0612973   -0.1411035    0.0185089
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <18.5                [18.5-25)          0.1044216   -0.0238898    0.2327331
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [25-30)              [18.5-25)          0.0712910   -0.0258121    0.1683941
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=30                 [18.5-25)          0.0854211   -0.0356795    0.2065216
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <18.5                [18.5-25)         -0.4743824   -0.7285070   -0.2202577
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [25-30)              [18.5-25)         -0.0453570   -0.2197205    0.1290064
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=30                 [18.5-25)         -0.1718011   -0.3660665    0.0224644
3-6 months     ki0047075b-MAL-ED          INDIA                          [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          <18.5                [18.5-25)         -0.0086170   -0.1355989    0.1183649
3-6 months     ki0047075b-MAL-ED          INDIA                          [25-30)              [18.5-25)          0.0227631   -0.0893206    0.1348468
3-6 months     ki0047075b-MAL-ED          INDIA                          >=30                 [18.5-25)         -0.7626125   -0.9890089   -0.5362162
3-6 months     ki0047075b-MAL-ED          NEPAL                          [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          [25-30)              [18.5-25)          0.1542644    0.0587350    0.2497938
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=30                 [18.5-25)          0.6599632    0.5268994    0.7930270
3-6 months     ki0047075b-MAL-ED          PERU                           [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           <18.5                [18.5-25)          0.0484732   -0.1441824    0.2411289
3-6 months     ki0047075b-MAL-ED          PERU                           [25-30)              [18.5-25)          0.0206997   -0.0969444    0.1383439
3-6 months     ki0047075b-MAL-ED          PERU                           >=30                 [18.5-25)          0.3142268    0.1758273    0.4526262
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <18.5                [18.5-25)         -0.3272531   -0.6084906   -0.0460156
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              [18.5-25)          0.0313573   -0.1345974    0.1973120
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 [18.5-25)         -0.0042998   -0.1645675    0.1559679
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <18.5                [18.5-25)         -0.1749972   -0.5195221    0.1695278
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              [18.5-25)         -0.0239218   -0.2005585    0.1527149
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 [18.5-25)         -0.0334029   -0.4008800    0.3340741
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <18.5                [18.5-25)         -0.0125980   -0.0888001    0.0636040
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [25-30)              [18.5-25)          0.1502820   -0.0020014    0.3025655
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=30                 [18.5-25)         -0.2340400   -0.8393652    0.3712852
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <18.5                [18.5-25)         -0.0314732   -0.1501413    0.0871949
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [25-30)              [18.5-25)          0.1720108    0.0182114    0.3258103
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=30                 [18.5-25)          0.0670648   -0.1416332    0.2757628
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <18.5                [18.5-25)         -0.0284335   -0.1198026    0.0629357
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [25-30)              [18.5-25)         -0.0150962   -0.1060232    0.0758308
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=30                 [18.5-25)         -0.1106888   -0.2724073    0.0510298
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <18.5                [18.5-25)         -0.1032286   -0.2017595   -0.0046977
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              [18.5-25)         -0.0718912   -0.1628567    0.0190743
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [18.5-25)         -0.1275839   -0.2350786   -0.0200893
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <18.5                [18.5-25)         -0.1340530   -0.2331370   -0.0349689
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              [18.5-25)          0.0458663   -0.0359458    0.1276785
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [18.5-25)          0.0181529   -0.0786764    0.1149821
3-6 months     ki1119695-PROBIT           BELARUS                        [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        <18.5                [18.5-25)         -0.0180345   -0.0851791    0.0491101
3-6 months     ki1119695-PROBIT           BELARUS                        [25-30)              [18.5-25)         -0.0054591   -0.0415371    0.0306189
3-6 months     ki1119695-PROBIT           BELARUS                        >=30                 [18.5-25)         -0.0028284   -0.0503494    0.0446925
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <18.5                [18.5-25)          0.0246564   -0.0618329    0.1111456
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              [18.5-25)         -0.0234823   -0.0763622    0.0293975
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [18.5-25)          0.1031354    0.0312957    0.1749752
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     <18.5                [18.5-25)         -0.0676717   -0.1458732    0.0105299
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)              [18.5-25)          0.0154355   -0.0486421    0.0795131
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 [18.5-25)         -0.1743559   -0.3025829   -0.0461290
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BRAZIL                         <18.5                [18.5-25)          0.0045288   -0.1613390    0.1703967
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [25-30)              [18.5-25)          0.1285592    0.0286170    0.2285013
6-12 months    ki0047075b-MAL-ED          BRAZIL                         >=30                 [18.5-25)          0.1030722   -0.0069310    0.2130754
6-12 months    ki0047075b-MAL-ED          INDIA                          [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA                          <18.5                [18.5-25)         -0.0030285   -0.0642925    0.0582356
6-12 months    ki0047075b-MAL-ED          INDIA                          [25-30)              [18.5-25)         -0.0217841   -0.0716470    0.0280787
6-12 months    ki0047075b-MAL-ED          INDIA                          >=30                 [18.5-25)          0.0837411   -0.0016638    0.1691459
6-12 months    ki0047075b-MAL-ED          NEPAL                          [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          NEPAL                          [25-30)              [18.5-25)         -0.0345739   -0.0825796    0.0134317
6-12 months    ki0047075b-MAL-ED          NEPAL                          >=30                 [18.5-25)          0.1163148    0.0591720    0.1734576
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <18.5                [18.5-25)          0.3054005    0.2270181    0.3837828
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              [18.5-25)          0.0449207   -0.0325212    0.1223626
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 [18.5-25)          0.0888073    0.0171215    0.1604931
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <18.5                [18.5-25)          0.0713510   -0.0860961    0.2287981
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              [18.5-25)         -0.0201800   -0.1152634    0.0749034
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 [18.5-25)         -0.0503265   -0.1794433    0.0787903
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          <18.5                [18.5-25)         -0.0090393   -0.0420581    0.0239794
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)              [18.5-25)         -0.0132586   -0.1197075    0.0931903
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 [18.5-25)         -0.0667837   -0.1892530    0.0556857
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     <18.5                [18.5-25)         -0.0259319   -0.0808276    0.0289637
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)              [18.5-25)          0.0366195   -0.0342935    0.1075326
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 [18.5-25)          0.0690375   -0.0546867    0.1927617
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     <18.5                [18.5-25)         -0.0750293   -0.1209529   -0.0291057
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)              [18.5-25)          0.0885656    0.0459683    0.1311629
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 [18.5-25)          0.0006257   -0.0508635    0.0521148
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <18.5                [18.5-25)         -0.0197824   -0.0647947    0.0252298
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              [18.5-25)          0.0481016    0.0054621    0.0907412
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [18.5-25)          0.0291913   -0.0293834    0.0877660
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <18.5                [18.5-25)         -0.0159046   -0.0896097    0.0578005
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              [18.5-25)         -0.0046576   -0.0506814    0.0413661
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [18.5-25)          0.0045943   -0.0461567    0.0553453
6-12 months    ki1119695-PROBIT           BELARUS                        [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS                        <18.5                [18.5-25)         -0.0205736   -0.0577345    0.0165873
6-12 months    ki1119695-PROBIT           BELARUS                        [25-30)              [18.5-25)          0.0041990   -0.0305399    0.0389379
6-12 months    ki1119695-PROBIT           BELARUS                        >=30                 [18.5-25)          0.0027047   -0.0269261    0.0323355
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <18.5                [18.5-25)         -0.0666347   -0.1149361   -0.0183333
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              [18.5-25)         -0.0441653   -0.0718339   -0.0164967
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [18.5-25)          0.0196804   -0.0237597    0.0631206
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BRAZIL                         <18.5                [18.5-25)          0.0216815   -0.0750260    0.1183889
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)              [18.5-25)          0.0030686   -0.0575413    0.0636786
12-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 [18.5-25)          0.0189724   -0.0486746    0.0866194
12-24 months   ki0047075b-MAL-ED          INDIA                          [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          <18.5                [18.5-25)          0.0015414   -0.0416167    0.0446995
12-24 months   ki0047075b-MAL-ED          INDIA                          [25-30)              [18.5-25)          0.0100618   -0.0411672    0.0612908
12-24 months   ki0047075b-MAL-ED          INDIA                          >=30                 [18.5-25)          0.0288230   -0.0510312    0.1086771
12-24 months   ki0047075b-MAL-ED          NEPAL                          [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          NEPAL                          [25-30)              [18.5-25)          0.0598760    0.0320191    0.0877329
12-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                 [18.5-25)          0.2179912    0.1839255    0.2520570
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <18.5                [18.5-25)         -0.2953966   -0.3412895   -0.2495037
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              [18.5-25)          0.0113524   -0.0378438    0.0605487
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 [18.5-25)          0.0016250   -0.0433353    0.0465853
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <18.5                [18.5-25)          0.0254834   -0.0524911    0.1034578
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              [18.5-25)          0.0241833   -0.0236128    0.0719794
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 [18.5-25)          0.1092578    0.0044992    0.2140163
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     <18.5                [18.5-25)         -0.0424081   -0.0771878   -0.0076284
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              [18.5-25)          0.0476473    0.0073642    0.0879304
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 [18.5-25)         -0.0353265   -0.1169920    0.0463391
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     <18.5                [18.5-25)         -0.0103682   -0.0389612    0.0182249
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              [18.5-25)          0.0766514    0.0449306    0.1083721
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 [18.5-25)          0.0569747    0.0200983    0.0938511
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <18.5                [18.5-25)         -0.0168892   -0.0491905    0.0154121
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              [18.5-25)          0.0433907    0.0161672    0.0706143
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [18.5-25)          0.0974968    0.0579747    0.1370190
12-24 months   ki1119695-PROBIT           BELARUS                        [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
12-24 months   ki1119695-PROBIT           BELARUS                        <18.5                [18.5-25)          0.1166019    0.0434291    0.1897747
12-24 months   ki1119695-PROBIT           BELARUS                        [25-30)              [18.5-25)         -0.0127056   -0.0699024    0.0444911
12-24 months   ki1119695-PROBIT           BELARUS                        >=30                 [18.5-25)         -0.0386805   -0.1059933    0.0286322
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <18.5                [18.5-25)          0.0416223   -0.0587294    0.1419740
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              [18.5-25)          0.0647959   -0.0026951    0.1322870
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [18.5-25)          0.0156422   -0.0625702    0.0938546
