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

unadjusted

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







# Results Detail

## Results Plots
![](/tmp/e9a8095d-03dd-4a5b-b637-32500bf5ffb2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/e9a8095d-03dd-4a5b-b637-32500bf5ffb2/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [18.5-25)            NA                3.5768962   3.4979412   3.6558513
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <18.5                NA                3.3993019   3.2449736   3.5536303
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [25-30)              NA                3.6189164   3.4718960   3.7659368
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                3.6338728   3.4849865   3.7827592
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [18.5-25)            NA                4.1155921   3.9387030   4.2924812
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <18.5                NA                4.3101110   3.9286057   4.6916163
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [25-30)              NA                3.9622420   3.7953228   4.1291612
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                4.0292604   3.8363942   4.2221267
0-3 months     ki0047075b-MAL-ED          INDIA                          [18.5-25)            NA                3.6038658   3.5128676   3.6948640
0-3 months     ki0047075b-MAL-ED          INDIA                          <18.5                NA                3.5992026   3.4459956   3.7524096
0-3 months     ki0047075b-MAL-ED          INDIA                          [25-30)              NA                3.4462630   3.2031164   3.6894096
0-3 months     ki0047075b-MAL-ED          INDIA                          >=30                 NA                3.5753480   3.0055253   4.1451707
0-3 months     ki0047075b-MAL-ED          NEPAL                          [18.5-25)            NA                3.8188853   3.7158680   3.9219025
0-3 months     ki0047075b-MAL-ED          NEPAL                          [25-30)              NA                3.7500536   3.6378599   3.8622473
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=30                 NA                4.2324316   3.9444217   4.5204415
0-3 months     ki0047075b-MAL-ED          PERU                           [18.5-25)            NA                3.3564932   3.2755173   3.4374691
0-3 months     ki0047075b-MAL-ED          PERU                           <18.5                NA                3.2603545   2.6770107   3.8436982
0-3 months     ki0047075b-MAL-ED          PERU                           [25-30)              NA                3.3161426   3.2095879   3.4226973
0-3 months     ki0047075b-MAL-ED          PERU                           >=30                 NA                2.9798196   2.7264035   3.2332356
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [18.5-25)            NA                3.4850357   3.3930209   3.5770505
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <18.5                NA                3.5645980   3.1622003   3.9669958
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                3.4912891   3.3320630   3.6505151
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                3.2604808   2.8755711   3.6453906
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [18.5-25)            NA                3.3257154   3.2599165   3.3915144
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <18.5                NA                3.2958636   3.1809863   3.4107409
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                3.2763496   3.0752303   3.4774689
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                3.2135837   2.9343722   3.4927953
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [18.5-25)            NA                3.4674479   3.4184862   3.5164096
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <18.5                NA                3.4994585   3.4156159   3.5833011
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                3.5442920   3.4365126   3.6520714
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                3.4438984   3.1906397   3.6971571
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [18.5-25)            NA                3.3067160   3.2573733   3.3560587
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <18.5                NA                3.2810164   3.1497640   3.4122688
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                3.3015332   3.2262836   3.3767829
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                3.2998099   3.1592519   3.4403680
0-3 months     ki1119695-PROBIT           BELARUS                        [18.5-25)            NA                2.8544234   2.7451412   2.9637057
0-3 months     ki1119695-PROBIT           BELARUS                        <18.5                NA                2.9002260   2.7534943   3.0469576
0-3 months     ki1119695-PROBIT           BELARUS                        [25-30)              NA                2.8170371   2.6775042   2.9565699
0-3 months     ki1119695-PROBIT           BELARUS                        >=30                 NA                2.7748663   2.6718552   2.8778773
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            NA                3.3555146   3.3285030   3.3825262
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <18.5                NA                3.3420648   3.2443516   3.4397781
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                3.3688139   3.3198922   3.4177356
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                3.2698599   3.1820296   3.3576903
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [18.5-25)            NA                1.9437562   1.8816204   2.0058920
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <18.5                NA                1.8966679   1.7350001   2.0583357
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [25-30)              NA                1.9294517   1.8389519   2.0199516
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                1.6887967   1.4382724   1.9393210
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [18.5-25)            NA                2.2058442   2.0770162   2.3346721
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <18.5                NA                1.8073439   1.5400611   2.0746267
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [25-30)              NA                2.1698041   2.0407615   2.2988467
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                2.0552526   1.8767090   2.2337962
3-6 months     ki0047075b-MAL-ED          INDIA                          [18.5-25)            NA                1.8657520   1.7881620   1.9433419
3-6 months     ki0047075b-MAL-ED          INDIA                          <18.5                NA                1.9149479   1.7763992   2.0534966
3-6 months     ki0047075b-MAL-ED          INDIA                          [25-30)              NA                1.9977919   1.8735093   2.1220746
3-6 months     ki0047075b-MAL-ED          INDIA                          >=30                 NA                1.4444152   1.0462734   1.8425571
3-6 months     ki0047075b-MAL-ED          NEPAL                          [18.5-25)            NA                1.9309453   1.8568202   2.0050704
3-6 months     ki0047075b-MAL-ED          NEPAL                          [25-30)              NA                1.9976617   1.9048500   2.0904733
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=30                 NA                2.1134025   1.9122995   2.3145055
3-6 months     ki0047075b-MAL-ED          PERU                           [18.5-25)            NA                1.9963008   1.9088654   2.0837362
3-6 months     ki0047075b-MAL-ED          PERU                           <18.5                NA                2.0838224   1.6034396   2.5642052
3-6 months     ki0047075b-MAL-ED          PERU                           [25-30)              NA                2.0166120   1.9079892   2.1252348
3-6 months     ki0047075b-MAL-ED          PERU                           >=30                 NA                2.2013720   1.9145809   2.4881630
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [18.5-25)            NA                1.9919710   1.8559054   2.1280365
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <18.5                NA                1.8828421   1.1631569   2.6025273
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              NA                1.9852941   1.8444873   2.1261008
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                1.9365065   1.7940197   2.0789933
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [18.5-25)            NA                1.8460921   1.7684699   1.9237143
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <18.5                NA                1.6711338   1.3354701   2.0067976
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                1.8222271   1.6635316   1.9809226
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                1.8128033   1.4536161   2.1719904
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [18.5-25)            NA                1.9540797   1.9213111   1.9868483
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <18.5                NA                1.9359328   1.8448726   2.0269929
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [25-30)              NA                2.1027657   1.9259212   2.2796101
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                1.6646681   0.8650399   2.4642962
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [18.5-25)            NA                1.8188493   1.7611982   1.8765004
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <18.5                NA                1.7920579   1.6841912   1.8999247
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                1.9830731   1.8190556   2.1470907
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                1.8649324   1.6468454   2.0830193
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [18.5-25)            NA                1.9710415   1.9289397   2.0131433
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <18.5                NA                1.9573981   1.8676219   2.0471743
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                1.9658260   1.8744838   2.0571682
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                1.8945888   1.6472185   2.1419590
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [18.5-25)            NA                2.0293049   1.9823590   2.0762508
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <18.5                NA                1.9570629   1.8571227   2.0570030
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                1.9753300   1.8968580   2.0538021
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                1.9362995   1.8048030   2.0677960
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [18.5-25)            NA                1.7782837   1.7299672   1.8266002
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <18.5                NA                1.7520157   1.5448842   1.9591473
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                1.8173514   1.7502656   1.8844371
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                1.8325938   1.7320715   1.9331162
3-6 months     ki1119695-PROBIT           BELARUS                        [18.5-25)            NA                2.0963669   2.0556987   2.1370351
3-6 months     ki1119695-PROBIT           BELARUS                        <18.5                NA                2.0940354   1.9939714   2.1940995
3-6 months     ki1119695-PROBIT           BELARUS                        [25-30)              NA                2.0863579   2.0321588   2.1405570
3-6 months     ki1119695-PROBIT           BELARUS                        >=30                 NA                2.0694265   2.0201373   2.1187156
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            NA                1.9815996   1.9563615   2.0068377
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <18.5                NA                2.0017202   1.9063959   2.0970445
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                1.9574504   1.9123698   2.0025309
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                2.0316129   1.9531136   2.1101122
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [18.5-25)            NA                1.1153503   1.0866014   1.1440993
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     <18.5                NA                1.0691232   0.9918373   1.1464091
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)              NA                1.1391537   1.0802749   1.1980325
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                1.0898479   0.8863183   1.2933776
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [18.5-25)            NA                1.3160509   1.2450489   1.3870529
6-12 months    ki0047075b-MAL-ED          BRAZIL                         <18.5                NA                1.3081554   1.1199732   1.4963375
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [25-30)              NA                1.4429107   1.3652405   1.5205808
6-12 months    ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                1.4133284   1.3151656   1.5114913
6-12 months    ki0047075b-MAL-ED          INDIA                          [18.5-25)            NA                1.1311904   1.0933209   1.1690598
6-12 months    ki0047075b-MAL-ED          INDIA                          <18.5                NA                1.0992156   1.0309177   1.1675135
6-12 months    ki0047075b-MAL-ED          INDIA                          [25-30)              NA                1.0884919   1.0397008   1.1372830
6-12 months    ki0047075b-MAL-ED          INDIA                          >=30                 NA                1.1698252   1.0115531   1.3280973
6-12 months    ki0047075b-MAL-ED          NEPAL                          [18.5-25)            NA                1.2295998   1.1956351   1.2635645
6-12 months    ki0047075b-MAL-ED          NEPAL                          [25-30)              NA                1.2030867   1.1602469   1.2459264
6-12 months    ki0047075b-MAL-ED          NEPAL                          >=30                 NA                1.2709211   1.1738545   1.3679878
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [18.5-25)            NA                1.1591353   1.0886010   1.2296697
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <18.5                NA                1.2991051   1.1592788   1.4389314
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              NA                1.1949134   1.1226421   1.2671847
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                1.2082593   1.1351524   1.2813662
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [18.5-25)            NA                1.0049168   0.9632204   1.0466133
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <18.5                NA                1.0821423   0.9198871   1.2443975
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                0.9778874   0.8824662   1.0733086
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.9589667   0.8175574   1.1003760
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [18.5-25)            NA                1.1027153   1.0887091   1.1167214
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          <18.5                NA                1.0928277   1.0594668   1.1261887
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)              NA                1.1275841   1.0054665   1.2497018
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                1.1621120   0.7486950   1.5755290
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [18.5-25)            NA                1.1673390   1.1393810   1.1952970
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     <18.5                NA                1.1423125   1.0950420   1.1895830
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                1.2033043   1.1382831   1.2683255
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                1.2349154   1.1158376   1.3539933
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [18.5-25)            NA                1.1708550   1.1498313   1.1918788
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     <18.5                NA                1.1078895   1.0639856   1.1517934
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                1.2507632   1.2085151   1.2930113
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                1.1774107   1.1048948   1.2499267
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [18.5-25)            NA                1.2142652   1.1928759   1.2356546
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <18.5                NA                1.2097755   1.1549374   1.2646137
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                1.2689749   1.2298357   1.3081141
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                1.2521780   1.1753766   1.3289795
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [18.5-25)            NA                1.1955797   1.1650047   1.2261547
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <18.5                NA                1.2403812   1.0788460   1.4019164
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                1.1950084   1.1570954   1.2329215
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                1.2035691   1.1474265   1.2597118
6-12 months    ki1119695-PROBIT           BELARUS                        [18.5-25)            NA                1.4710006   1.4339401   1.5080611
6-12 months    ki1119695-PROBIT           BELARUS                        <18.5                NA                1.4637565   1.4047571   1.5227559
6-12 months    ki1119695-PROBIT           BELARUS                        [25-30)              NA                1.4742794   1.4221823   1.5263766
6-12 months    ki1119695-PROBIT           BELARUS                        >=30                 NA                1.4782661   1.4351461   1.5213862
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            NA                1.2053713   1.1917123   1.2190304
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <18.5                NA                1.1512044   1.0949386   1.2074703
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                1.1715147   1.1468866   1.1961428
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                1.2434924   1.1933266   1.2936582
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [18.5-25)            NA                0.9920702   0.9383350   1.0458055
12-24 months   ki0047075b-MAL-ED          BRAZIL                         <18.5                NA                0.9533311   0.7516123   1.1550498
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)              NA                0.9776518   0.9336004   1.0217031
12-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                0.9852938   0.9168815   1.0537062
12-24 months   ki0047075b-MAL-ED          INDIA                          [18.5-25)            NA                0.8778148   0.8556551   0.8999746
12-24 months   ki0047075b-MAL-ED          INDIA                          <18.5                NA                0.8771337   0.8391487   0.9151188
12-24 months   ki0047075b-MAL-ED          INDIA                          [25-30)              NA                0.8886195   0.8423702   0.9348687
12-24 months   ki0047075b-MAL-ED          INDIA                          >=30                 NA                0.9037311   0.8191100   0.9883523
12-24 months   ki0047075b-MAL-ED          NEPAL                          [18.5-25)            NA                0.8458072   0.8253520   0.8662625
12-24 months   ki0047075b-MAL-ED          NEPAL                          [25-30)              NA                0.8727490   0.8499812   0.8955169
12-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                 NA                0.9289655   0.8576060   1.0003249
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [18.5-25)            NA                0.8731915   0.8389688   0.9074143
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <18.5                NA                0.7031632   0.6202431   0.7860834
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              NA                0.8881695   0.8452830   0.9310560
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                0.8761005   0.8341361   0.9180650
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [18.5-25)            NA                0.7534881   0.7260960   0.7808802
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <18.5                NA                0.7817417   0.6839785   0.8795050
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                0.7851681   0.7325566   0.8377795
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.8603152   0.7395984   0.9810321
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [18.5-25)            NA                0.7540954   0.7363258   0.7718649
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     <18.5                NA                0.7136785   0.6817588   0.7455983
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                0.7984398   0.7575326   0.8393470
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.7401045   0.6219312   0.8582777
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [18.5-25)            NA                0.8477793   0.8328101   0.8627485
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     <18.5                NA                0.8374974   0.8112971   0.8636977
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                0.9137881   0.8817981   0.9457781
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.8803347   0.8353152   0.9253543
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [18.5-25)            NA                0.8628435   0.8480578   0.8776292
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <18.5                NA                0.8570883   0.8201298   0.8940467
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                0.9040062   0.8802371   0.9277752
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.9279302   0.8742276   0.9816327
12-24 months   ki1119695-PROBIT           BELARUS                        [18.5-25)            NA                0.8626754   0.7940814   0.9312693
12-24 months   ki1119695-PROBIT           BELARUS                        <18.5                NA                0.9393254   0.8525254   1.0261254
12-24 months   ki1119695-PROBIT           BELARUS                        [25-30)              NA                0.8500651   0.7961260   0.9040042
12-24 months   ki1119695-PROBIT           BELARUS                        >=30                 NA                0.8395544   0.7807328   0.8983759
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            NA                0.6948345   0.6633314   0.7263375
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <18.5                NA                0.7372791   0.6119910   0.8625672
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.7497165   0.6830326   0.8164003
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.7080406   0.6049537   0.8111275


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
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <18.5                [18.5-25)         -0.1775943   -0.3509469   -0.0042416
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [25-30)              [18.5-25)          0.0420201   -0.1248597    0.2089000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=30                 [18.5-25)          0.0569766   -0.1115495    0.2255027
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <18.5                [18.5-25)          0.1945189   -0.2259999    0.6150377
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [25-30)              [18.5-25)         -0.1533501   -0.3965615    0.0898613
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=30                 [18.5-25)         -0.0863316   -0.3480321    0.1753689
0-3 months     ki0047075b-MAL-ED          INDIA                          [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          <18.5                [18.5-25)         -0.0046632   -0.1828571    0.1735306
0-3 months     ki0047075b-MAL-ED          INDIA                          [25-30)              [18.5-25)         -0.1576028   -0.4172197    0.1020141
0-3 months     ki0047075b-MAL-ED          INDIA                          >=30                 [18.5-25)         -0.0285178   -0.6055608    0.5485252
0-3 months     ki0047075b-MAL-ED          NEPAL                          [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          [25-30)              [18.5-25)         -0.0688317   -0.2211471    0.0834837
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=30                 [18.5-25)          0.4135463    0.1076669    0.7194258
0-3 months     ki0047075b-MAL-ED          PERU                           [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           <18.5                [18.5-25)         -0.0961387   -0.6850759    0.4927985
0-3 months     ki0047075b-MAL-ED          PERU                           [25-30)              [18.5-25)         -0.0403506   -0.1741826    0.0934814
0-3 months     ki0047075b-MAL-ED          PERU                           >=30                 [18.5-25)         -0.3766736   -0.6427127   -0.1106345
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <18.5                [18.5-25)          0.0795623   -0.3332218    0.4923464
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              [18.5-25)          0.0062533   -0.1776479    0.1901545
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 [18.5-25)         -0.2245549   -0.6203102    0.1712004
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <18.5                [18.5-25)         -0.0298518   -0.1622387    0.1025351
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [25-30)              [18.5-25)         -0.0493658   -0.2609751    0.1622434
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=30                 [18.5-25)         -0.1121317   -0.3989916    0.1747281
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <18.5                [18.5-25)          0.0320106   -0.0650813    0.1291024
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [25-30)              [18.5-25)          0.0768441   -0.0415351    0.1952233
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=30                 [18.5-25)         -0.0235495   -0.2814976    0.2343985
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <18.5                [18.5-25)         -0.0256996   -0.1659205    0.1145213
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              [18.5-25)         -0.0051828   -0.0951673    0.0848017
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [18.5-25)         -0.0069061   -0.1558734    0.1420612
0-3 months     ki1119695-PROBIT           BELARUS                        [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        <18.5                [18.5-25)          0.0458025   -0.0461364    0.1377415
0-3 months     ki1119695-PROBIT           BELARUS                        [25-30)              [18.5-25)         -0.0373864   -0.0926649    0.0178922
0-3 months     ki1119695-PROBIT           BELARUS                        >=30                 [18.5-25)         -0.0795572   -0.1245757   -0.0345386
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <18.5                [18.5-25)         -0.0134498   -0.1148278    0.0879282
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              [18.5-25)          0.0132993   -0.0425842    0.0691827
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [18.5-25)         -0.0856547   -0.1775448    0.0062355
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <18.5                [18.5-25)         -0.0470883   -0.2202857    0.1261091
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [25-30)              [18.5-25)         -0.0143045   -0.1240819    0.0954730
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=30                 [18.5-25)         -0.2549595   -0.5130744    0.0031554
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <18.5                [18.5-25)         -0.3985002   -0.6952101   -0.1017904
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [25-30)              [18.5-25)         -0.0360401   -0.2183821    0.1463020
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=30                 [18.5-25)         -0.1505916   -0.3707607    0.0695775
3-6 months     ki0047075b-MAL-ED          INDIA                          [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          <18.5                [18.5-25)          0.0491959   -0.1095994    0.2079912
3-6 months     ki0047075b-MAL-ED          INDIA                          [25-30)              [18.5-25)          0.1320399   -0.0144741    0.2785540
3-6 months     ki0047075b-MAL-ED          INDIA                          >=30                 [18.5-25)         -0.4213367   -0.8269685   -0.0157049
3-6 months     ki0047075b-MAL-ED          NEPAL                          [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          [25-30)              [18.5-25)          0.0667163   -0.0520630    0.1854957
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=30                 [18.5-25)          0.1824572   -0.0318719    0.3967863
3-6 months     ki0047075b-MAL-ED          PERU                           [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           <18.5                [18.5-25)          0.0875216   -0.4007535    0.5757967
3-6 months     ki0047075b-MAL-ED          PERU                           [25-30)              [18.5-25)          0.0203112   -0.1191301    0.1597524
3-6 months     ki0047075b-MAL-ED          PERU                           >=30                 [18.5-25)          0.2050712   -0.0947522    0.5048945
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <18.5                [18.5-25)         -0.1091289   -0.8415636    0.6233058
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              [18.5-25)         -0.0066769   -0.2024839    0.1891301
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 [18.5-25)         -0.0554645   -0.2524831    0.1415541
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <18.5                [18.5-25)         -0.1749583   -0.5194802    0.1695636
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              [18.5-25)         -0.0238650   -0.2005271    0.1527970
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 [18.5-25)         -0.0332889   -0.4007676    0.3341899
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <18.5                [18.5-25)         -0.0181469   -0.0990622    0.0627684
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [25-30)              [18.5-25)          0.1486860   -0.0221277    0.3194996
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=30                 [18.5-25)         -0.2894116   -1.0896346    0.5108113
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <18.5                [18.5-25)         -0.0267914   -0.1490979    0.0955151
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [25-30)              [18.5-25)          0.1642238   -0.0096308    0.3380784
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=30                 [18.5-25)          0.0460831   -0.1794952    0.2716613
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <18.5                [18.5-25)         -0.0136434   -0.1128015    0.0855147
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [25-30)              [18.5-25)         -0.0052155   -0.1057936    0.0953626
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=30                 [18.5-25)         -0.0764527   -0.3273802    0.1744748
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <18.5                [18.5-25)         -0.0722420   -0.1826592    0.0381752
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              [18.5-25)         -0.0539749   -0.1454176    0.0374679
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [18.5-25)         -0.0930054   -0.2326308    0.0466200
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <18.5                [18.5-25)         -0.0262680   -0.2389602    0.1864242
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              [18.5-25)          0.0390676   -0.0436063    0.1217415
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [18.5-25)          0.0543101   -0.0572212    0.1658414
3-6 months     ki1119695-PROBIT           BELARUS                        [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        <18.5                [18.5-25)         -0.0023315   -0.0965403    0.0918773
3-6 months     ki1119695-PROBIT           BELARUS                        [25-30)              [18.5-25)         -0.0100090   -0.0455430    0.0255249
3-6 months     ki1119695-PROBIT           BELARUS                        >=30                 [18.5-25)         -0.0269405   -0.0705369    0.0166560
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <18.5                [18.5-25)          0.0201206   -0.0784881    0.1187293
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              [18.5-25)         -0.0241492   -0.0758137    0.0275153
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [18.5-25)          0.0500133   -0.0324433    0.1324700
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     <18.5                [18.5-25)         -0.0462271   -0.1286868    0.0362327
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)              [18.5-25)          0.0238034   -0.0417193    0.0893261
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 [18.5-25)         -0.0255024   -0.2310525    0.1800477
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BRAZIL                         <18.5                [18.5-25)         -0.0078956   -0.2090269    0.1932358
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [25-30)              [18.5-25)          0.1268598    0.0216270    0.2320925
6-12 months    ki0047075b-MAL-ED          BRAZIL                         >=30                 [18.5-25)          0.0972775   -0.0238721    0.2184271
6-12 months    ki0047075b-MAL-ED          INDIA                          [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA                          <18.5                [18.5-25)         -0.0319748   -0.1100690    0.0461194
6-12 months    ki0047075b-MAL-ED          INDIA                          [25-30)              [18.5-25)         -0.0426985   -0.1044615    0.0190645
6-12 months    ki0047075b-MAL-ED          INDIA                          >=30                 [18.5-25)          0.0386348   -0.1241047    0.2013744
6-12 months    ki0047075b-MAL-ED          NEPAL                          [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          NEPAL                          [25-30)              [18.5-25)         -0.0265131   -0.0811835    0.0281572
6-12 months    ki0047075b-MAL-ED          NEPAL                          >=30                 [18.5-25)          0.0413213   -0.0615161    0.1441588
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <18.5                [18.5-25)          0.1399697   -0.0166396    0.2965791
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              [18.5-25)          0.0357780   -0.0652083    0.1367643
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 [18.5-25)          0.0491240   -0.0524620    0.1507100
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <18.5                [18.5-25)          0.0772255   -0.0903017    0.2447526
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              [18.5-25)         -0.0270294   -0.1311630    0.0771041
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 [18.5-25)         -0.0459501   -0.1933787    0.1014785
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          <18.5                [18.5-25)         -0.0098876   -0.0485421    0.0287670
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)              [18.5-25)          0.0248689   -0.1068242    0.1565619
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 [18.5-25)          0.0593967   -0.3634770    0.4822704
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     <18.5                [18.5-25)         -0.0250265   -0.0799460    0.0298930
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)              [18.5-25)          0.0359653   -0.0348118    0.1067424
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 [18.5-25)          0.0675765   -0.0547394    0.1898924
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     <18.5                [18.5-25)         -0.0629656   -0.1116436   -0.0142875
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)              [18.5-25)          0.0799081    0.0327181    0.1270982
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 [18.5-25)          0.0065557   -0.0689464    0.0820578
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <18.5                [18.5-25)         -0.0044897   -0.0633516    0.0543723
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              [18.5-25)          0.0547097    0.0101072    0.0993122
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [18.5-25)          0.0379128   -0.0418115    0.1176372
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <18.5                [18.5-25)          0.0448015   -0.1196019    0.2092048
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              [18.5-25)         -0.0005713   -0.0492768    0.0481342
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [18.5-25)          0.0079894   -0.0559389    0.0719177
6-12 months    ki1119695-PROBIT           BELARUS                        [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS                        <18.5                [18.5-25)         -0.0072441   -0.0588350    0.0443468
6-12 months    ki1119695-PROBIT           BELARUS                        [25-30)              [18.5-25)          0.0032788   -0.0308909    0.0374485
6-12 months    ki1119695-PROBIT           BELARUS                        >=30                 [18.5-25)          0.0072656   -0.0198498    0.0343810
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <18.5                [18.5-25)         -0.0541669   -0.1120669    0.0037331
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              [18.5-25)         -0.0338566   -0.0620189   -0.0056944
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [18.5-25)          0.0381211   -0.0138710    0.0901131
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BRAZIL                         <18.5                [18.5-25)         -0.0387392   -0.2474925    0.1700141
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)              [18.5-25)         -0.0144185   -0.0839023    0.0550653
12-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 [18.5-25)         -0.0067764   -0.0937691    0.0802162
12-24 months   ki0047075b-MAL-ED          INDIA                          [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          <18.5                [18.5-25)         -0.0006811   -0.0446574    0.0432953
12-24 months   ki0047075b-MAL-ED          INDIA                          [25-30)              [18.5-25)          0.0108047   -0.0404793    0.0620886
12-24 months   ki0047075b-MAL-ED          INDIA                          >=30                 [18.5-25)          0.0259163   -0.0615582    0.1133908
12-24 months   ki0047075b-MAL-ED          NEPAL                          [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          NEPAL                          [25-30)              [18.5-25)          0.0269418   -0.0036652    0.0575488
12-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                 [18.5-25)          0.0831582    0.0089249    0.1573916
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <18.5                [18.5-25)         -0.1700283   -0.2597331   -0.0803235
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              [18.5-25)          0.0149780   -0.0398896    0.0698455
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 [18.5-25)          0.0029090   -0.0512409    0.0570588
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <18.5                [18.5-25)          0.0282536   -0.0732746    0.1297818
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              [18.5-25)          0.0316800   -0.0276352    0.0909952
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 [18.5-25)          0.1068271   -0.0169585    0.2306128
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     <18.5                [18.5-25)         -0.0404168   -0.0769494   -0.0038843
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              [18.5-25)          0.0443444   -0.0002555    0.0889444
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 [18.5-25)         -0.0139909   -0.1334927    0.1055109
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     <18.5                [18.5-25)         -0.0102820   -0.0404570    0.0198931
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              [18.5-25)          0.0660087    0.0306897    0.1013278
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 [18.5-25)          0.0325554   -0.0148876    0.0799984
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <18.5                [18.5-25)         -0.0057552   -0.0455616    0.0340511
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              [18.5-25)          0.0411627    0.0131701    0.0691553
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [18.5-25)          0.0650867    0.0093859    0.1207875
12-24 months   ki1119695-PROBIT           BELARUS                        [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
12-24 months   ki1119695-PROBIT           BELARUS                        <18.5                [18.5-25)          0.0766500   -0.0154181    0.1687181
12-24 months   ki1119695-PROBIT           BELARUS                        [25-30)              [18.5-25)         -0.0126103   -0.0715543    0.0463337
12-24 months   ki1119695-PROBIT           BELARUS                        >=30                 [18.5-25)         -0.0231210   -0.0985772    0.0523352
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <18.5                [18.5-25)          0.0424446   -0.0867434    0.1716327
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              [18.5-25)          0.0548820   -0.0188688    0.1286328
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [18.5-25)          0.0132061   -0.0945870    0.1209992
