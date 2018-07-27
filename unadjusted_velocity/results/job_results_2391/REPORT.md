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

**Outcome Variable:** y_rate_haz

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
![](/tmp/20435506-d7fe-4300-a7e5-95320a7b4f00/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/20435506-d7fe-4300-a7e5-95320a7b4f00/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [18.5-25)            NA                -0.0327745   -0.0734690    0.0079200
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <18.5                NA                -0.0973296   -0.1774763   -0.0171828
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [25-30)              NA                -0.0057477   -0.0780670    0.0665716
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                 0.0447760   -0.0729637    0.1625156
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [18.5-25)            NA                 0.2201664    0.1343810    0.3059519
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <18.5                NA                 0.3585008    0.1357292    0.5812724
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [25-30)              NA                 0.1487288    0.0592124    0.2382451
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                 0.1819975    0.0866926    0.2773024
0-3 months     ki0047075b-MAL-ED          INDIA                          [18.5-25)            NA                -0.0094898   -0.0557653    0.0367857
0-3 months     ki0047075b-MAL-ED          INDIA                          <18.5                NA                 0.0059316   -0.0733688    0.0852321
0-3 months     ki0047075b-MAL-ED          INDIA                          [25-30)              NA                -0.0957663   -0.2099983    0.0184657
0-3 months     ki0047075b-MAL-ED          INDIA                          >=30                 NA                -0.0144465   -0.2872053    0.2583123
0-3 months     ki0047075b-MAL-ED          NEPAL                          [18.5-25)            NA                 0.0789351    0.0310660    0.1268042
0-3 months     ki0047075b-MAL-ED          NEPAL                          [25-30)              NA                 0.0391113   -0.0127382    0.0909608
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=30                 NA                 0.2347508    0.1016876    0.3678140
0-3 months     ki0047075b-MAL-ED          PERU                           [18.5-25)            NA                -0.1432917   -0.1837315   -0.1028519
0-3 months     ki0047075b-MAL-ED          PERU                           <18.5                NA                -0.1683951   -0.4989930    0.1622028
0-3 months     ki0047075b-MAL-ED          PERU                           [25-30)              NA                -0.1535944   -0.2092293   -0.0979595
0-3 months     ki0047075b-MAL-ED          PERU                           >=30                 NA                -0.3044496   -0.4519605   -0.1569386
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [18.5-25)            NA                -0.0414233   -0.0882767    0.0054301
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <18.5                NA                -0.0080470   -0.2038247    0.1877307
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                -0.0576882   -0.1340225    0.0186462
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                -0.1198722   -0.3010483    0.0613039
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [18.5-25)            NA                -0.1152883   -0.1475827   -0.0829940
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <18.5                NA                -0.1122864   -0.1716046   -0.0529682
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                -0.1535042   -0.2501506   -0.0568577
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                -0.1318888   -0.2556606   -0.0081170
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [18.5-25)            NA                -0.0475424   -0.0699729   -0.0251119
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <18.5                NA                -0.0271459   -0.0680712    0.0137794
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                -0.0215326   -0.0710244    0.0279591
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                -0.0803884   -0.2019273    0.0411505
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [18.5-25)            NA                -0.1238117   -0.1472510   -0.1003724
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <18.5                NA                -0.1420810   -0.2035445   -0.0806175
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                -0.1138372   -0.1504633   -0.0772111
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                -0.1005199   -0.1655965   -0.0354432
0-3 months     ki1119695-PROBIT           BELARUS                        [18.5-25)            NA                -0.4268704   -0.4838159   -0.3699249
0-3 months     ki1119695-PROBIT           BELARUS                        <18.5                NA                -0.3954028   -0.4720402   -0.3187655
0-3 months     ki1119695-PROBIT           BELARUS                        [25-30)              NA                -0.4496181   -0.5221291   -0.3771071
0-3 months     ki1119695-PROBIT           BELARUS                        >=30                 NA                -0.4726162   -0.5270830   -0.4181494
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            NA                -0.1493634   -0.1627847   -0.1359421
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <18.5                NA                -0.1460963   -0.1958106   -0.0963819
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                -0.1469662   -0.1713723   -0.1225602
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                -0.2027059   -0.2465707   -0.1588412
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [18.5-25)            NA                -0.0172635   -0.0467279    0.0122010
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <18.5                NA                -0.0286659   -0.1026376    0.0453059
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [25-30)              NA                -0.0239195   -0.0668507    0.0190116
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                -0.1094203   -0.2134741   -0.0053664
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [18.5-25)            NA                 0.0844449    0.0252676    0.1436221
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <18.5                NA                -0.0847461   -0.2034780    0.0339859
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [25-30)              NA                 0.0705454    0.0101695    0.1309213
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                 0.0199538   -0.0615994    0.1015069
3-6 months     ki0047075b-MAL-ED          INDIA                          [18.5-25)            NA                -0.0491789   -0.0847344   -0.0136234
3-6 months     ki0047075b-MAL-ED          INDIA                          <18.5                NA                -0.0256463   -0.0882630    0.0369705
3-6 months     ki0047075b-MAL-ED          INDIA                          [25-30)              NA                 0.0150845   -0.0452643    0.0754333
3-6 months     ki0047075b-MAL-ED          INDIA                          >=30                 NA                -0.2443219   -0.4422934   -0.0463503
3-6 months     ki0047075b-MAL-ED          NEPAL                          [18.5-25)            NA                -0.0362644   -0.0717649   -0.0007638
3-6 months     ki0047075b-MAL-ED          NEPAL                          [25-30)              NA                -0.0084067   -0.0522069    0.0353936
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=30                 NA                 0.0296742   -0.0639185    0.1232668
3-6 months     ki0047075b-MAL-ED          PERU                           [18.5-25)            NA                 0.0159385   -0.0249830    0.0568601
3-6 months     ki0047075b-MAL-ED          PERU                           <18.5                NA                 0.0610216   -0.1589844    0.2810276
3-6 months     ki0047075b-MAL-ED          PERU                           [25-30)              NA                 0.0273243   -0.0246053    0.0792540
3-6 months     ki0047075b-MAL-ED          PERU                           >=30                 NA                 0.1191439   -0.0146921    0.2529800
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [18.5-25)            NA                 0.0098812   -0.0542303    0.0739926
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <18.5                NA                -0.0275228   -0.3769600    0.3219143
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              NA                -0.0027027   -0.0683768    0.0629714
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                -0.0244337   -0.0919362    0.0430689
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [18.5-25)            NA                -0.0620872   -0.0989665   -0.0252078
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <18.5                NA                -0.1376564   -0.2923715    0.0170586
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                -0.0798779   -0.1553456   -0.0044102
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                -0.0752529   -0.2477028    0.0971970
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [18.5-25)            NA                -0.0115855   -0.0255668    0.0023958
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <18.5                NA                -0.0129258   -0.0560705    0.0302190
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [25-30)              NA                 0.0519767   -0.0258481    0.1298016
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                -0.1805502   -0.5536625    0.1925621
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [18.5-25)            NA                -0.0585887   -0.0851705   -0.0320069
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <18.5                NA                -0.0613416   -0.1106430   -0.0120402
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                 0.0110212   -0.0652139    0.0872562
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                -0.0269613   -0.1260425    0.0721199
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [18.5-25)            NA                -0.0240906   -0.0438203   -0.0043609
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <18.5                NA                -0.0263835   -0.0685737    0.0158067
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                -0.0335964   -0.0761548    0.0089621
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                -0.0707153   -0.1887318    0.0473013
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [18.5-25)            NA                 0.0361780    0.0143551    0.0580009
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <18.5                NA                 0.0083046   -0.0359935    0.0526027
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                 0.0149423   -0.0212290    0.0511137
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                -0.0043868   -0.0628612    0.0540876
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [18.5-25)            NA                -0.0925920   -0.1150812   -0.0701028
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <18.5                NA                -0.1040058   -0.2033041   -0.0047075
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                -0.0741678   -0.1050927   -0.0432430
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                -0.0688833   -0.1157806   -0.0219861
3-6 months     ki1119695-PROBIT           BELARUS                        [18.5-25)            NA                 0.0494201    0.0302410    0.0685993
3-6 months     ki1119695-PROBIT           BELARUS                        <18.5                NA                 0.0527073    0.0075420    0.0978726
3-6 months     ki1119695-PROBIT           BELARUS                        [25-30)              NA                 0.0435786    0.0184534    0.0687037
3-6 months     ki1119695-PROBIT           BELARUS                        >=30                 NA                 0.0349706    0.0119486    0.0579927
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            NA                 0.0030563   -0.0087491    0.0148618
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <18.5                NA                 0.0173202   -0.0271399    0.0617804
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                -0.0120914   -0.0332330    0.0090501
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                 0.0222236   -0.0143655    0.0588128
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [18.5-25)            NA                -0.0801706   -0.0925511   -0.0677901
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     <18.5                NA                -0.0928033   -0.1240873   -0.0615193
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)              NA                -0.0761050   -0.0998632   -0.0523467
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                -0.0777220   -0.1631474    0.0077033
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [18.5-25)            NA                -0.0245913   -0.0549503    0.0057677
6-12 months    ki0047075b-MAL-ED          BRAZIL                         <18.5                NA                -0.0202116   -0.0933952    0.0529720
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [25-30)              NA                 0.0304295   -0.0014336    0.0622926
6-12 months    ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                 0.0200034   -0.0229622    0.0629690
6-12 months    ki0047075b-MAL-ED          INDIA                          [18.5-25)            NA                -0.0736523   -0.0897165   -0.0575882
6-12 months    ki0047075b-MAL-ED          INDIA                          <18.5                NA                -0.0866091   -0.1168193   -0.0563990
6-12 months    ki0047075b-MAL-ED          INDIA                          [25-30)              NA                -0.0907469   -0.1116210   -0.0698727
6-12 months    ki0047075b-MAL-ED          INDIA                          >=30                 NA                -0.0601280   -0.1261503    0.0058943
6-12 months    ki0047075b-MAL-ED          NEPAL                          [18.5-25)            NA                -0.0448973   -0.0586572   -0.0311374
6-12 months    ki0047075b-MAL-ED          NEPAL                          [25-30)              NA                -0.0570120   -0.0751552   -0.0388689
6-12 months    ki0047075b-MAL-ED          NEPAL                          >=30                 NA                -0.0353055   -0.0755750    0.0049640
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [18.5-25)            NA                -0.0627096   -0.0926394   -0.0327798
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <18.5                NA                 0.0100999   -0.0500907    0.0702905
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              NA                -0.0530814   -0.0835802   -0.0225826
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                -0.0508427   -0.0814947   -0.0201907
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [18.5-25)            NA                -0.1219619   -0.1393441   -0.1045798
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <18.5                NA                -0.0857045   -0.1549869   -0.0164221
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                -0.1390673   -0.1801193   -0.0980154
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                -0.1354561   -0.1924600   -0.0784522
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [18.5-25)            NA                -0.0855555   -0.0904083   -0.0807027
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          <18.5                NA                -0.0841231   -0.0990896   -0.0691567
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)              NA                -0.0831899   -0.1308921   -0.0354878
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                -0.0610452   -0.2491711    0.1270807
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [18.5-25)            NA                -0.0539166   -0.0654471   -0.0423860
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     <18.5                NA                -0.0575185   -0.0777312   -0.0373058
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                -0.0445474   -0.0717594   -0.0173355
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                -0.0296095   -0.0782900    0.0190710
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [18.5-25)            NA                -0.0633241   -0.0718246   -0.0548236
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     <18.5                NA                -0.0849343   -0.1018979   -0.0679707
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                -0.0352093   -0.0529086   -0.0175100
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                -0.0671781   -0.0964222   -0.0379340
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [18.5-25)            NA                -0.0374709   -0.0464297   -0.0285122
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <18.5                NA                -0.0307288   -0.0541097   -0.0073479
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                -0.0157371   -0.0319272    0.0004530
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                -0.0293623   -0.0620613    0.0033367
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [18.5-25)            NA                -0.0588566   -0.0718428   -0.0458703
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <18.5                NA                -0.0342248   -0.1040203    0.0355706
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                -0.0615658   -0.0778010   -0.0453306
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                -0.0593364   -0.0833039   -0.0353690
6-12 months    ki1119695-PROBIT           BELARUS                        [18.5-25)            NA                 0.0425838    0.0265173    0.0586504
6-12 months    ki1119695-PROBIT           BELARUS                        <18.5                NA                 0.0424629    0.0158611    0.0690647
6-12 months    ki1119695-PROBIT           BELARUS                        [25-30)              NA                 0.0427984    0.0208310    0.0647658
6-12 months    ki1119695-PROBIT           BELARUS                        >=30                 NA                 0.0448634    0.0270413    0.0626855
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            NA                -0.0455300   -0.0513537   -0.0397063
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <18.5                NA                -0.0664549   -0.0902230   -0.0426868
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                -0.0624993   -0.0730388   -0.0519598
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                -0.0340852   -0.0555982   -0.0125723
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [18.5-25)            NA                 0.0034762   -0.0150092    0.0219615
12-24 months   ki0047075b-MAL-ED          BRAZIL                         <18.5                NA                 0.0031939   -0.0532002    0.0595881
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)              NA                -0.0033606   -0.0188228    0.0121016
12-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                -0.0033501   -0.0273903    0.0206900
12-24 months   ki0047075b-MAL-ED          INDIA                          [18.5-25)            NA                -0.0104176   -0.0171149   -0.0037202
12-24 months   ki0047075b-MAL-ED          INDIA                          <18.5                NA                -0.0107111   -0.0220950    0.0006728
12-24 months   ki0047075b-MAL-ED          INDIA                          [25-30)              NA                -0.0073959   -0.0205478    0.0057561
12-24 months   ki0047075b-MAL-ED          INDIA                          >=30                 NA                -0.0076411   -0.0298210    0.0145388
12-24 months   ki0047075b-MAL-ED          NEPAL                          [18.5-25)            NA                -0.0346592   -0.0412251   -0.0280934
12-24 months   ki0047075b-MAL-ED          NEPAL                          [25-30)              NA                -0.0244193   -0.0318356   -0.0170031
12-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                 NA                -0.0157043   -0.0438019    0.0123933
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [18.5-25)            NA                -0.0125598   -0.0243508   -0.0007688
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <18.5                NA                -0.0568653   -0.0838330   -0.0298976
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              NA                -0.0095644   -0.0240727    0.0049438
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                -0.0163155   -0.0302642   -0.0023669
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [18.5-25)            NA                -0.0421397   -0.0514967   -0.0327827
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <18.5                NA                -0.0356599   -0.0650927   -0.0062272
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                -0.0371773   -0.0543764   -0.0199781
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                -0.0074123   -0.0432759    0.0284514
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [18.5-25)            NA                -0.0397155   -0.0454681   -0.0339629
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     <18.5                NA                -0.0459954   -0.0565002   -0.0354907
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                -0.0336433   -0.0461296   -0.0211569
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                -0.0516208   -0.0859727   -0.0172688
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [18.5-25)            NA                -0.0117427   -0.0166135   -0.0068719
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     <18.5                NA                -0.0075912   -0.0154926    0.0003102
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                 0.0044297   -0.0058971    0.0147565
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                -0.0051064   -0.0248869    0.0146740
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [18.5-25)            NA                -0.0091289   -0.0142860   -0.0039719
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <18.5                NA                -0.0052194   -0.0175021    0.0070633
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                 0.0010267   -0.0069096    0.0089630
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                 0.0036795   -0.0120155    0.0193745
12-24 months   ki1119695-PROBIT           BELARUS                        [18.5-25)            NA                -0.0412205   -0.0645824   -0.0178586
12-24 months   ki1119695-PROBIT           BELARUS                        <18.5                NA                -0.0167779   -0.0420238    0.0084681
12-24 months   ki1119695-PROBIT           BELARUS                        [25-30)              NA                -0.0481652   -0.0652439   -0.0310865
12-24 months   ki1119695-PROBIT           BELARUS                        >=30                 NA                -0.0513663   -0.0724221   -0.0303105
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            NA                -0.0563258   -0.0676493   -0.0450023
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <18.5                NA                -0.0443233   -0.0893236    0.0006769
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                -0.0395374   -0.0627946   -0.0162802
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                -0.0632089   -0.0992261   -0.0271918


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0339062   -0.0659795   -0.0018330
0-3 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.1928587    0.1409027    0.2448147
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0204797   -0.0596747    0.0187152
0-3 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.0746202    0.0395269    0.1097135
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                -0.1572370   -0.1898325   -0.1246414
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0461667   -0.0847570   -0.0075763
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.1191165   -0.1460676   -0.0921654
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0408226   -0.0589776   -0.0226676
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.1220821   -0.1402761   -0.1038881
0-3 months     ki1119695-PROBIT           BELARUS                        NA                   NA                -0.4366058   -0.4962029   -0.3770087
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.1519662   -0.1630450   -0.1408873
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0225211   -0.0456381    0.0005960
3-6 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0597008    0.0230362    0.0963653
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0417054   -0.0700621   -0.0133486
3-6 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0214542   -0.0480456    0.0051373
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                 0.0272742   -0.0038596    0.0584080
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0042614   -0.0425659    0.0340432
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0705448   -0.1027245   -0.0383652
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0097258   -0.0280274    0.0085758
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0509007   -0.0730097   -0.0287917
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0274690   -0.0439444   -0.0109937
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0267740    0.0099602    0.0435879
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0834282   -0.1002569   -0.0665996
3-6 months     ki1119695-PROBIT           BELARUS                        NA                   NA                 0.0464482    0.0273518    0.0655445
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                 0.0016781   -0.0080142    0.0113704
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0807393   -0.0911050   -0.0703737
6-12 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0049191   -0.0143947    0.0242329
6-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0785153   -0.0906466   -0.0663840
6-12 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0488126   -0.0594641   -0.0381610
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0546626   -0.0720558   -0.0372694
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1240143   -0.1396706   -0.1083579
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0849448   -0.0896851   -0.0802045
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0530976   -0.0624028   -0.0437924
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0626151   -0.0695574   -0.0556729
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0315658   -0.0388594   -0.0242722
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0594137   -0.0686815   -0.0501459
6-12 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.0428870    0.0262524    0.0595217
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0493390   -0.0542083   -0.0444698
12-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.0005342   -0.0110966    0.0100282
12-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0098524   -0.0150104   -0.0046944
12-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0295113   -0.0345712   -0.0244514
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0139716   -0.0215484   -0.0063947
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0393265   -0.0471437   -0.0315094
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0404278   -0.0450901   -0.0357656
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0081718   -0.0120131   -0.0043304
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0057326   -0.0097260   -0.0017391
12-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                -0.0433028   -0.0606990   -0.0259066
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0531778   -0.0628925   -0.0434630


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <18.5                [18.5-25)         -0.0645551   -0.1544414    0.0253312
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [25-30)              [18.5-25)          0.0270268   -0.0559559    0.1100095
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=30                 [18.5-25)          0.0775505   -0.0470234    0.2021244
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <18.5                [18.5-25)          0.1383344   -0.1003837    0.3770525
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [25-30)              [18.5-25)         -0.0714377   -0.1954228    0.0525475
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=30                 [18.5-25)         -0.0381689   -0.1663960    0.0900581
0-3 months     ki0047075b-MAL-ED          INDIA                          [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          <18.5                [18.5-25)          0.0154214   -0.0763935    0.1072364
0-3 months     ki0047075b-MAL-ED          INDIA                          [25-30)              [18.5-25)         -0.0862765   -0.2095257    0.0369727
0-3 months     ki0047075b-MAL-ED          INDIA                          >=30                 [18.5-25)         -0.0049567   -0.2816131    0.2716997
0-3 months     ki0047075b-MAL-ED          NEPAL                          [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          [25-30)              [18.5-25)         -0.0398238   -0.1103917    0.0307441
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=30                 [18.5-25)          0.1558157    0.0144040    0.2972274
0-3 months     ki0047075b-MAL-ED          PERU                           [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           <18.5                [18.5-25)         -0.0251034   -0.3581655    0.3079587
0-3 months     ki0047075b-MAL-ED          PERU                           [25-30)              [18.5-25)         -0.0103027   -0.0790822    0.0584769
0-3 months     ki0047075b-MAL-ED          PERU                           >=30                 [18.5-25)         -0.1611578   -0.3141116   -0.0082041
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <18.5                [18.5-25)          0.0333763   -0.1679298    0.2346824
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              [18.5-25)         -0.0162649   -0.1058315    0.0733017
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 [18.5-25)         -0.0784489   -0.2655853    0.1086874
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <18.5                [18.5-25)          0.0030019   -0.0645375    0.0705414
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [25-30)              [18.5-25)         -0.0382158   -0.1401151    0.0636834
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=30                 [18.5-25)         -0.0166005   -0.1445160    0.1113151
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <18.5                [18.5-25)          0.0203965   -0.0262726    0.0670657
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [25-30)              [18.5-25)          0.0260098   -0.0283277    0.0803473
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=30                 [18.5-25)         -0.0328460   -0.1564374    0.0907454
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <18.5                [18.5-25)         -0.0182693   -0.0840504    0.0475118
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              [18.5-25)          0.0099745   -0.0335097    0.0534586
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [18.5-25)          0.0232918   -0.0458773    0.0924610
0-3 months     ki1119695-PROBIT           BELARUS                        [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        <18.5                [18.5-25)          0.0314676   -0.0165570    0.0794922
0-3 months     ki1119695-PROBIT           BELARUS                        [25-30)              [18.5-25)         -0.0227477   -0.0507382    0.0052429
0-3 months     ki1119695-PROBIT           BELARUS                        >=30                 [18.5-25)         -0.0457458   -0.0700098   -0.0214817
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <18.5                [18.5-25)          0.0032671   -0.0482271    0.0547613
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              [18.5-25)          0.0023972   -0.0254558    0.0302501
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [18.5-25)         -0.0533425   -0.0992146   -0.0074705
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <18.5                [18.5-25)         -0.0114024   -0.0910264    0.0682215
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [25-30)              [18.5-25)         -0.0066561   -0.0587256    0.0454135
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=30                 [18.5-25)         -0.0921568   -0.2003019    0.0159883
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <18.5                [18.5-25)         -0.1691909   -0.3018530   -0.0365288
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [25-30)              [18.5-25)         -0.0138994   -0.0984405    0.0706416
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=30                 [18.5-25)         -0.0644911   -0.1652525    0.0362703
3-6 months     ki0047075b-MAL-ED          INDIA                          [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          <18.5                [18.5-25)          0.0235326   -0.0484747    0.0955399
3-6 months     ki0047075b-MAL-ED          INDIA                          [25-30)              [18.5-25)          0.0642634   -0.0057806    0.1343074
3-6 months     ki0047075b-MAL-ED          INDIA                          >=30                 [18.5-25)         -0.1951430   -0.3962821    0.0059961
3-6 months     ki0047075b-MAL-ED          NEPAL                          [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          [25-30)              [18.5-25)          0.0278577   -0.0285227    0.0842381
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=30                 [18.5-25)          0.0659385   -0.0341608    0.1660378
3-6 months     ki0047075b-MAL-ED          PERU                           [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           <18.5                [18.5-25)          0.0450831   -0.1786963    0.2688625
3-6 months     ki0047075b-MAL-ED          PERU                           [25-30)              [18.5-25)          0.0113858   -0.0547297    0.0775013
3-6 months     ki0047075b-MAL-ED          PERU                           >=30                 [18.5-25)          0.1032054   -0.0367469    0.2431577
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <18.5                [18.5-25)         -0.0374040   -0.3926737    0.3178657
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              [18.5-25)         -0.0125839   -0.1043628    0.0791950
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 [18.5-25)         -0.0343149   -0.1274109    0.0587812
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <18.5                [18.5-25)         -0.0755693   -0.2346190    0.0834804
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              [18.5-25)         -0.0177907   -0.1017875    0.0662061
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 [18.5-25)         -0.0131658   -0.1895150    0.1631835
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <18.5                [18.5-25)         -0.0013403   -0.0406827    0.0380021
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [25-30)              [18.5-25)          0.0635622   -0.0123690    0.1394934
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=30                 [18.5-25)         -0.1689648   -0.5407940    0.2028644
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <18.5                [18.5-25)         -0.0027529   -0.0587638    0.0532580
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [25-30)              [18.5-25)          0.0696099   -0.0111266    0.1503463
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=30                 [18.5-25)          0.0316274   -0.0709576    0.1342124
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <18.5                [18.5-25)         -0.0022929   -0.0488683    0.0442826
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [25-30)              [18.5-25)         -0.0095058   -0.0564150    0.0374035
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=30                 [18.5-25)         -0.0466247   -0.1662790    0.0730297
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <18.5                [18.5-25)         -0.0278734   -0.0772552    0.0215083
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              [18.5-25)         -0.0212357   -0.0634803    0.0210089
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [18.5-25)         -0.0405648   -0.1029787    0.0218491
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <18.5                [18.5-25)         -0.0114138   -0.1132269    0.0903993
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              [18.5-25)          0.0184241   -0.0198134    0.0566617
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [18.5-25)          0.0237086   -0.0283021    0.0757194
3-6 months     ki1119695-PROBIT           BELARUS                        [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        <18.5                [18.5-25)          0.0032872   -0.0397004    0.0462748
3-6 months     ki1119695-PROBIT           BELARUS                        [25-30)              [18.5-25)         -0.0058416   -0.0220804    0.0103972
3-6 months     ki1119695-PROBIT           BELARUS                        >=30                 [18.5-25)         -0.0144495   -0.0348065    0.0059075
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <18.5                [18.5-25)          0.0142639   -0.0317369    0.0602647
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              [18.5-25)         -0.0151478   -0.0393621    0.0090666
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [18.5-25)          0.0191673   -0.0192792    0.0576138
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     <18.5                [18.5-25)         -0.0126327   -0.0462774    0.0210120
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)              [18.5-25)          0.0040656   -0.0227248    0.0308561
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 [18.5-25)          0.0024486   -0.0838693    0.0887664
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BRAZIL                         <18.5                [18.5-25)          0.0043797   -0.0748510    0.0836104
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [25-30)              [18.5-25)          0.0550208    0.0110103    0.0990313
6-12 months    ki0047075b-MAL-ED          BRAZIL                         >=30                 [18.5-25)          0.0445947   -0.0080143    0.0972037
6-12 months    ki0047075b-MAL-ED          INDIA                          [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA                          <18.5                [18.5-25)         -0.0129568   -0.0471724    0.0212588
6-12 months    ki0047075b-MAL-ED          INDIA                          [25-30)              [18.5-25)         -0.0170946   -0.0434344    0.0092453
6-12 months    ki0047075b-MAL-ED          INDIA                          >=30                 [18.5-25)          0.0135243   -0.0544242    0.0814728
6-12 months    ki0047075b-MAL-ED          NEPAL                          [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          NEPAL                          [25-30)              [18.5-25)         -0.0121147   -0.0348856    0.0106561
6-12 months    ki0047075b-MAL-ED          NEPAL                          >=30                 [18.5-25)          0.0095918   -0.0329637    0.0521472
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <18.5                [18.5-25)          0.0728095    0.0055882    0.1400307
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              [18.5-25)          0.0096282   -0.0331032    0.0523596
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 [18.5-25)          0.0118669   -0.0309740    0.0547077
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <18.5                [18.5-25)          0.0362574   -0.0351722    0.1076871
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              [18.5-25)         -0.0171054   -0.0616857    0.0274749
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 [18.5-25)         -0.0134942   -0.0730894    0.0461010
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          <18.5                [18.5-25)          0.0014324   -0.0153553    0.0182200
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)              [18.5-25)          0.0023656   -0.0483922    0.0531233
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 [18.5-25)          0.0245103   -0.1673564    0.2163771
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     <18.5                [18.5-25)         -0.0036019   -0.0268722    0.0196684
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)              [18.5-25)          0.0093692   -0.0201849    0.0389232
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 [18.5-25)          0.0243071   -0.0257203    0.0743346
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     <18.5                [18.5-25)         -0.0216102   -0.0405844   -0.0026360
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)              [18.5-25)          0.0281148    0.0084801    0.0477496
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 [18.5-25)         -0.0038540   -0.0343085    0.0266005
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <18.5                [18.5-25)          0.0067421   -0.0182964    0.0317805
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              [18.5-25)          0.0217338    0.0032304    0.0402373
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [18.5-25)          0.0081086   -0.0257955    0.0420126
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <18.5                [18.5-25)          0.0246317   -0.0463615    0.0956250
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              [18.5-25)         -0.0027092   -0.0234992    0.0180807
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [18.5-25)         -0.0004799   -0.0277394    0.0267796
6-12 months    ki1119695-PROBIT           BELARUS                        [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS                        <18.5                [18.5-25)         -0.0001209   -0.0229176    0.0226757
6-12 months    ki1119695-PROBIT           BELARUS                        [25-30)              [18.5-25)          0.0002146   -0.0138212    0.0142504
6-12 months    ki1119695-PROBIT           BELARUS                        >=30                 [18.5-25)          0.0022795   -0.0084223    0.0129814
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <18.5                [18.5-25)         -0.0209249   -0.0453961    0.0035463
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              [18.5-25)         -0.0169693   -0.0290108   -0.0049278
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [18.5-25)          0.0114448   -0.0108425    0.0337321
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BRAZIL                         <18.5                [18.5-25)         -0.0002822   -0.0596288    0.0590643
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)              [18.5-25)         -0.0068368   -0.0309363    0.0172628
12-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 [18.5-25)         -0.0068263   -0.0371518    0.0234992
12-24 months   ki0047075b-MAL-ED          INDIA                          [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          <18.5                [18.5-25)         -0.0002935   -0.0135014    0.0129144
12-24 months   ki0047075b-MAL-ED          INDIA                          [25-30)              [18.5-25)          0.0030217   -0.0117373    0.0177807
12-24 months   ki0047075b-MAL-ED          INDIA                          >=30                 [18.5-25)          0.0027765   -0.0203925    0.0259455
12-24 months   ki0047075b-MAL-ED          NEPAL                          [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          NEPAL                          [25-30)              [18.5-25)          0.0102399    0.0003348    0.0201450
12-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                 [18.5-25)          0.0189549   -0.0098996    0.0478095
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <18.5                [18.5-25)         -0.0443055   -0.0737382   -0.0148728
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              [18.5-25)          0.0029954   -0.0157000    0.0216907
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 [18.5-25)         -0.0037557   -0.0220203    0.0145088
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <18.5                [18.5-25)          0.0064798   -0.0244045    0.0373641
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              [18.5-25)          0.0049625   -0.0146172    0.0245422
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 [18.5-25)          0.0347275   -0.0023367    0.0717917
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     <18.5                [18.5-25)         -0.0062799   -0.0182566    0.0056968
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              [18.5-25)          0.0060723   -0.0076755    0.0198200
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 [18.5-25)         -0.0119052   -0.0467356    0.0229251
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     <18.5                [18.5-25)          0.0041515   -0.0051305    0.0134336
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              [18.5-25)          0.0161724    0.0047545    0.0275902
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 [18.5-25)          0.0066363   -0.0137350    0.0270076
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <18.5                [18.5-25)          0.0039095   -0.0094119    0.0172310
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              [18.5-25)          0.0101557    0.0006910    0.0196203
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [18.5-25)          0.0128085   -0.0037120    0.0293290
12-24 months   ki1119695-PROBIT           BELARUS                        [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
12-24 months   ki1119695-PROBIT           BELARUS                        <18.5                [18.5-25)          0.0244426   -0.0039981    0.0528833
12-24 months   ki1119695-PROBIT           BELARUS                        [25-30)              [18.5-25)         -0.0069447   -0.0292551    0.0153657
12-24 months   ki1119695-PROBIT           BELARUS                        >=30                 [18.5-25)         -0.0101458   -0.0373129    0.0170213
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <18.5                [18.5-25)          0.0120025   -0.0344006    0.0584055
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              [18.5-25)          0.0167884   -0.0090789    0.0426558
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [18.5-25)         -0.0068831   -0.0446383    0.0308721
