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

**Outcome Variable:** y_rate_haz

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
![](/tmp/1c42546f-12c0-40b4-b41b-766a3d4096d4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/1c42546f-12c0-40b4-b41b-766a3d4096d4/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [18.5-25)            NA                -0.0330869   -0.0726775    0.0065037
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <18.5                NA                -0.1266807   -0.1849880   -0.0683735
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [25-30)              NA                 0.0004818   -0.0568444    0.0578079
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                 0.0233337   -0.0057603    0.0524276
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [18.5-25)            NA                 0.2110371    0.1374765    0.2845976
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <18.5                NA                 0.3864837    0.2746583    0.4983092
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [25-30)              NA                 0.1544011    0.0807340    0.2280683
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                 0.1357937    0.0672641    0.2043233
0-3 months     ki0047075b-MAL-ED          INDIA                          [18.5-25)            NA                -0.0095152   -0.0557724    0.0367420
0-3 months     ki0047075b-MAL-ED          INDIA                          <18.5                NA                 0.0059485   -0.0732853    0.0851822
0-3 months     ki0047075b-MAL-ED          INDIA                          [25-30)              NA                -0.0957425   -0.2098014    0.0183164
0-3 months     ki0047075b-MAL-ED          INDIA                          >=30                 NA                -0.0145567   -0.2867759    0.2576625
0-3 months     ki0047075b-MAL-ED          NEPAL                          [18.5-25)            NA                 0.0819021    0.0383703    0.1254339
0-3 months     ki0047075b-MAL-ED          NEPAL                          [25-30)              NA                 0.0605846    0.0160720    0.1050972
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=30                 NA                 0.5488524    0.5100289    0.5876759
0-3 months     ki0047075b-MAL-ED          PERU                           [18.5-25)            NA                -0.1424662   -0.1783918   -0.1065407
0-3 months     ki0047075b-MAL-ED          PERU                           <18.5                NA                -0.0673605   -0.1443225    0.0096015
0-3 months     ki0047075b-MAL-ED          PERU                           [25-30)              NA                -0.1595247   -0.2092610   -0.1097885
0-3 months     ki0047075b-MAL-ED          PERU                           >=30                 NA                -0.3545493   -0.4193118   -0.2897868
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [18.5-25)            NA                -0.0414233   -0.0882767    0.0054301
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <18.5                NA                -0.0080470   -0.2038247    0.1877307
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                -0.0576882   -0.1340225    0.0186462
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                -0.1198722   -0.3010483    0.0613039
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [18.5-25)            NA                -0.1162932   -0.1484792   -0.0841072
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <18.5                NA                -0.1093700   -0.1652456   -0.0534945
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                -0.1319005   -0.2169968   -0.0468042
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                -0.1224809   -0.2321310   -0.0128308
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [18.5-25)            NA                -0.0472287   -0.0689925   -0.0254650
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <18.5                NA                -0.0330323   -0.0666332    0.0005686
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                -0.0074596   -0.0438926    0.0289733
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                -0.0126453   -0.0669688    0.0416782
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [18.5-25)            NA                -0.1235766   -0.1468353   -0.1003179
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <18.5                NA                -0.1652242   -0.2156062   -0.1148422
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                -0.1187458   -0.1567066   -0.0807849
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                -0.1132461   -0.1605994   -0.0658928
0-3 months     ki1119695-PROBIT           BELARUS                        [18.5-25)            NA                -0.4282626   -0.4849142   -0.3716111
0-3 months     ki1119695-PROBIT           BELARUS                        <18.5                NA                -0.3823471   -0.4437181   -0.3209760
0-3 months     ki1119695-PROBIT           BELARUS                        [25-30)              NA                -0.4466929   -0.5172342   -0.3761516
0-3 months     ki1119695-PROBIT           BELARUS                        >=30                 NA                -0.4647571   -0.5129664   -0.4165478
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            NA                -0.1510861   -0.1645022   -0.1376701
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <18.5                NA                -0.1596234   -0.2030144   -0.1162324
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                -0.1394071   -0.1642813   -0.1145330
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                -0.1881212   -0.2262618   -0.1499806
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [18.5-25)            NA                -0.0102710   -0.0385556    0.0180136
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <18.5                NA                 0.0525392    0.0027699    0.1023084
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [25-30)              NA                 0.0261393   -0.0096704    0.0619489
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                 0.0589874    0.0195858    0.0983889
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [18.5-25)            NA                 0.0933111    0.0377425    0.1488796
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <18.5                NA                -0.1105063   -0.2050429   -0.0159697
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [25-30)              NA                 0.0738588    0.0160211    0.1316965
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                 0.0183366   -0.0478995    0.0845728
3-6 months     ki0047075b-MAL-ED          INDIA                          [18.5-25)            NA                -0.0509659   -0.0841967   -0.0177352
3-6 months     ki0047075b-MAL-ED          INDIA                          <18.5                NA                -0.0263885   -0.0820307    0.0292538
3-6 months     ki0047075b-MAL-ED          INDIA                          [25-30)              NA                 0.0114411   -0.0396212    0.0625034
3-6 months     ki0047075b-MAL-ED          INDIA                          >=30                 NA                -0.2256048   -0.3650876   -0.0861221
3-6 months     ki0047075b-MAL-ED          NEPAL                          [18.5-25)            NA                -0.0525717   -0.0848530   -0.0202905
3-6 months     ki0047075b-MAL-ED          NEPAL                          [25-30)              NA                -0.0049856   -0.0399279    0.0299566
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=30                 NA                 0.2118652    0.1512470    0.2724834
3-6 months     ki0047075b-MAL-ED          PERU                           [18.5-25)            NA                 0.0163118   -0.0207706    0.0533941
3-6 months     ki0047075b-MAL-ED          PERU                           <18.5                NA                 0.0323453   -0.0549389    0.1196296
3-6 months     ki0047075b-MAL-ED          PERU                           [25-30)              NA                 0.0303109   -0.0127455    0.0733674
3-6 months     ki0047075b-MAL-ED          PERU                           >=30                 NA                 0.1754002    0.1179118    0.2328886
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [18.5-25)            NA                 0.0137955   -0.0457055    0.0732965
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <18.5                NA                -0.0899483   -0.2683208    0.0884242
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              NA                 0.0158572   -0.0421895    0.0739039
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                 0.0029773   -0.0538184    0.0597729
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [18.5-25)            NA                -0.0606906   -0.0975580   -0.0238233
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <18.5                NA                -0.1397845   -0.2955195    0.0159504
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                -0.0825634   -0.1563881   -0.0087387
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                -0.0818327   -0.2542916    0.0906261
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [18.5-25)            NA                -0.0115893   -0.0259875    0.0028090
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <18.5                NA                -0.0097647   -0.0511625    0.0316332
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [25-30)              NA                 0.0629029   -0.0081893    0.1339952
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                -0.0602171   -0.2564402    0.1360061
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [18.5-25)            NA                -0.0581292   -0.0845966   -0.0316619
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <18.5                NA                -0.0646073   -0.1120060   -0.0172086
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                 0.0159104   -0.0502847    0.0821056
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                -0.0210075   -0.1117736    0.0697587
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [18.5-25)            NA                -0.0252290   -0.0447913   -0.0056667
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <18.5                NA                -0.0341986   -0.0726590    0.0042618
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                -0.0412295   -0.0790596   -0.0033993
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                -0.0920230   -0.1689312   -0.0151148
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [18.5-25)            NA                 0.0344454    0.0124408    0.0564501
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <18.5                NA                -0.0094642   -0.0479305    0.0290022
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                 0.0061001   -0.0301795    0.0423797
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                -0.0194255   -0.0632440    0.0243931
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [18.5-25)            NA                -0.0939416   -0.1156044   -0.0722788
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <18.5                NA                -0.1626438   -0.2076800   -0.1176077
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                -0.0727879   -0.1039689   -0.0416069
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                -0.0870324   -0.1272246   -0.0468402
3-6 months     ki1119695-PROBIT           BELARUS                        [18.5-25)            NA                 0.0478814    0.0287065    0.0670563
3-6 months     ki1119695-PROBIT           BELARUS                        <18.5                NA                 0.0444936    0.0139645    0.0750228
3-6 months     ki1119695-PROBIT           BELARUS                        [25-30)              NA                 0.0443619    0.0191931    0.0695308
3-6 months     ki1119695-PROBIT           BELARUS                        >=30                 NA                 0.0448298    0.0231489    0.0665107
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            NA                 0.0024786   -0.0093035    0.0142607
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <18.5                NA                 0.0189799   -0.0193330    0.0572927
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                -0.0125880   -0.0343510    0.0091750
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                 0.0461009    0.0150829    0.0771188
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [18.5-25)            NA                -0.0815018   -0.0933599   -0.0696437
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     <18.5                NA                -0.1011126   -0.1280078   -0.0742173
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)              NA                -0.0814130   -0.1031158   -0.0597103
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                -0.1393214   -0.1928717   -0.0857711
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [18.5-25)            NA                -0.0247408   -0.0519102    0.0024286
6-12 months    ki0047075b-MAL-ED          BRAZIL                         <18.5                NA                -0.0256304   -0.0766806    0.0254198
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [25-30)              NA                 0.0345969    0.0042864    0.0649073
6-12 months    ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                 0.0244953   -0.0126586    0.0616492
6-12 months    ki0047075b-MAL-ED          INDIA                          [18.5-25)            NA                -0.0743044   -0.0893770   -0.0592317
6-12 months    ki0047075b-MAL-ED          INDIA                          <18.5                NA                -0.0798696   -0.1060217   -0.0537175
6-12 months    ki0047075b-MAL-ED          INDIA                          [25-30)              NA                -0.0870122   -0.1050777   -0.0689466
6-12 months    ki0047075b-MAL-ED          INDIA                          >=30                 NA                -0.0599689   -0.1081894   -0.0117485
6-12 months    ki0047075b-MAL-ED          NEPAL                          [18.5-25)            NA                -0.0349822   -0.0478785   -0.0220859
6-12 months    ki0047075b-MAL-ED          NEPAL                          [25-30)              NA                -0.0593119   -0.0741364   -0.0444874
6-12 months    ki0047075b-MAL-ED          NEPAL                          >=30                 NA                -0.0075646   -0.0257369    0.0106078
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [18.5-25)            NA                -0.0495936   -0.0737810   -0.0254061
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <18.5                NA                 0.0934834    0.0642248    0.1227420
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              NA                -0.0355685   -0.0606874   -0.0104496
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                -0.0222474   -0.0445852    0.0000905
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [18.5-25)            NA                -0.1222344   -0.1392557   -0.1052131
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <18.5                NA                -0.0881279   -0.1543308   -0.0219250
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                -0.1357336   -0.1737007   -0.0977665
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                -0.1353449   -0.1879976   -0.0826921
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [18.5-25)            NA                -0.0858800   -0.0903085   -0.0814514
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          <18.5                NA                -0.0841011   -0.0976727   -0.0705295
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)              NA                -0.0997382   -0.1362351   -0.0632413
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                -0.1294801   -0.1750863   -0.0838738
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [18.5-25)            NA                -0.0535323   -0.0649840   -0.0420805
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     <18.5                NA                -0.0590631   -0.0784387   -0.0396875
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                -0.0484701   -0.0738791   -0.0230610
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                -0.0365932   -0.0807161    0.0075296
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [18.5-25)            NA                -0.0638606   -0.0722979   -0.0554233
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     <18.5                NA                -0.0898725   -0.1054577   -0.0742872
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                -0.0340918   -0.0494040   -0.0187795
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                -0.0729883   -0.0918819   -0.0540946
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [18.5-25)            NA                -0.0375254   -0.0465127   -0.0285382
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <18.5                NA                -0.0363074   -0.0533383   -0.0192766
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                -0.0174107   -0.0326721   -0.0021493
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                -0.0339499   -0.0579411   -0.0099586
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [18.5-25)            NA                -0.0599560   -0.0722656   -0.0476464
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <18.5                NA                -0.0619843   -0.0882505   -0.0357181
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                -0.0647928   -0.0803689   -0.0492167
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                -0.0617497   -0.0799840   -0.0435155
6-12 months    ki1119695-PROBIT           BELARUS                        [18.5-25)            NA                 0.0419471    0.0260953    0.0577989
6-12 months    ki1119695-PROBIT           BELARUS                        <18.5                NA                 0.0373626    0.0190785    0.0556467
6-12 months    ki1119695-PROBIT           BELARUS                        [25-30)              NA                 0.0426493    0.0207056    0.0645930
6-12 months    ki1119695-PROBIT           BELARUS                        >=30                 NA                 0.0426676    0.0251509    0.0601844
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            NA                -0.0467336   -0.0524729   -0.0409943
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <18.5                NA                -0.0731478   -0.0927406   -0.0535550
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                -0.0684446   -0.0789000   -0.0579893
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                -0.0450347   -0.0629676   -0.0271019
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [18.5-25)            NA                 0.0014931   -0.0145679    0.0175540
12-24 months   ki0047075b-MAL-ED          BRAZIL                         <18.5                NA                 0.0142659   -0.0102384    0.0387703
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)              NA                -0.0005978   -0.0145694    0.0133737
12-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                -0.0019388   -0.0203442    0.0164666
12-24 months   ki0047075b-MAL-ED          INDIA                          [18.5-25)            NA                -0.0104209   -0.0171174   -0.0037244
12-24 months   ki0047075b-MAL-ED          INDIA                          <18.5                NA                -0.0107110   -0.0220935    0.0006714
12-24 months   ki0047075b-MAL-ED          INDIA                          [25-30)              NA                -0.0073866   -0.0205369    0.0057638
12-24 months   ki0047075b-MAL-ED          INDIA                          >=30                 NA                -0.0076317   -0.0297943    0.0145310
12-24 months   ki0047075b-MAL-ED          NEPAL                          [18.5-25)            NA                -0.0334831   -0.0390681   -0.0278981
12-24 months   ki0047075b-MAL-ED          NEPAL                          [25-30)              NA                -0.0137555   -0.0205641   -0.0069470
12-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                 NA                 0.0368348    0.0267953    0.0468743
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [18.5-25)            NA                -0.0179137   -0.0272309   -0.0085965
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <18.5                NA                -0.1018934   -0.1107535   -0.0930334
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              NA                -0.0148270   -0.0269561   -0.0026979
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                -0.0206793   -0.0307728   -0.0105859
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [18.5-25)            NA                -0.0417491   -0.0505476   -0.0329507
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <18.5                NA                -0.0326344   -0.0557057   -0.0095631
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                -0.0387862   -0.0536018   -0.0239705
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                -0.0068459   -0.0358823    0.0221905
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [18.5-25)            NA                -0.0395569   -0.0452609   -0.0338529
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     <18.5                NA                -0.0461574   -0.0560559   -0.0362590
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                -0.0321929   -0.0433958   -0.0209900
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                -0.0509963   -0.0748512   -0.0271413
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [18.5-25)            NA                -0.0112671   -0.0160928   -0.0064414
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     <18.5                NA                -0.0052042   -0.0127418    0.0023334
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                 0.0086597   -0.0006918    0.0180112
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                 0.0038945   -0.0116342    0.0194232
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [18.5-25)            NA                -0.0095688   -0.0146579   -0.0044796
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <18.5                NA                -0.0064166   -0.0150309    0.0021978
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                 0.0023593   -0.0050496    0.0097681
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                 0.0166435    0.0072631    0.0260239
12-24 months   ki1119695-PROBIT           BELARUS                        [18.5-25)            NA                -0.0410959   -0.0639023   -0.0182895
12-24 months   ki1119695-PROBIT           BELARUS                        <18.5                NA                -0.0028916   -0.0210146    0.0152314
12-24 months   ki1119695-PROBIT           BELARUS                        [25-30)              NA                -0.0481452   -0.0635134   -0.0327769
12-24 months   ki1119695-PROBIT           BELARUS                        >=30                 NA                -0.0571486   -0.0735038   -0.0407934
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            NA                -0.0551830   -0.0660427   -0.0443232
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <18.5                NA                -0.0398999   -0.0713813   -0.0084186
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                -0.0373530   -0.0554991   -0.0192069
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                -0.0583705   -0.0781369   -0.0386041


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
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <18.5                [18.5-25)         -0.0935939   -0.1638417   -0.0233460
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [25-30)              [18.5-25)          0.0335687   -0.0356435    0.1027809
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=30                 [18.5-25)          0.0564205    0.0077761    0.1050649
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <18.5                [18.5-25)          0.1754466    0.0451698    0.3057235
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [25-30)              [18.5-25)         -0.0566359   -0.1574635    0.0441916
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=30                 [18.5-25)         -0.0752433   -0.1720658    0.0215791
0-3 months     ki0047075b-MAL-ED          INDIA                          [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          <18.5                [18.5-25)          0.0154637   -0.0762617    0.1071892
0-3 months     ki0047075b-MAL-ED          INDIA                          [25-30)              [18.5-25)         -0.0862273   -0.2092974    0.0368429
0-3 months     ki0047075b-MAL-ED          INDIA                          >=30                 [18.5-25)         -0.0050415   -0.2811536    0.2710707
0-3 months     ki0047075b-MAL-ED          NEPAL                          [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          [25-30)              [18.5-25)         -0.0213175   -0.0825846    0.0399496
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=30                 [18.5-25)          0.4669503    0.4128013    0.5210993
0-3 months     ki0047075b-MAL-ED          PERU                           [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           <18.5                [18.5-25)          0.0751058   -0.0099640    0.1601755
0-3 months     ki0047075b-MAL-ED          PERU                           [25-30)              [18.5-25)         -0.0170585   -0.0783368    0.0442198
0-3 months     ki0047075b-MAL-ED          PERU                           >=30                 [18.5-25)         -0.2120831   -0.2861931   -0.1379730
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <18.5                [18.5-25)          0.0333763   -0.1679298    0.2346824
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              [18.5-25)         -0.0162649   -0.1058315    0.0733017
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 [18.5-25)         -0.0784489   -0.2655853    0.1086874
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <18.5                [18.5-25)          0.0069232   -0.0573868    0.0712332
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [25-30)              [18.5-25)         -0.0156073   -0.1063367    0.0751222
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=30                 [18.5-25)         -0.0061877   -0.1203651    0.1079898
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <18.5                [18.5-25)          0.0141964   -0.0258892    0.0542820
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [25-30)              [18.5-25)          0.0397691   -0.0025236    0.0820618
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=30                 [18.5-25)          0.0345835   -0.0237010    0.0928680
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <18.5                [18.5-25)         -0.0416476   -0.0971369    0.0138416
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              [18.5-25)          0.0048308   -0.0397073    0.0493689
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [18.5-25)          0.0103305   -0.0425310    0.0631920
0-3 months     ki1119695-PROBIT           BELARUS                        [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        <18.5                [18.5-25)          0.0459156    0.0059800    0.0858512
0-3 months     ki1119695-PROBIT           BELARUS                        [25-30)              [18.5-25)         -0.0184303   -0.0441678    0.0073073
0-3 months     ki1119695-PROBIT           BELARUS                        >=30                 [18.5-25)         -0.0364944   -0.0603916   -0.0125973
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <18.5                [18.5-25)         -0.0085373   -0.0539247    0.0368501
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              [18.5-25)          0.0116790   -0.0165492    0.0399071
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [18.5-25)         -0.0370351   -0.0774590    0.0033888
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <18.5                [18.5-25)          0.0628101    0.0061639    0.1194564
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [25-30)              [18.5-25)          0.0364102   -0.0089903    0.0818108
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=30                 [18.5-25)          0.0692584    0.0212288    0.1172879
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <18.5                [18.5-25)         -0.2038174   -0.3134714   -0.0941634
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [25-30)              [18.5-25)         -0.0194523   -0.0996419    0.0607374
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=30                 [18.5-25)         -0.0749744   -0.1614505    0.0115017
3-6 months     ki0047075b-MAL-ED          INDIA                          [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          <18.5                [18.5-25)          0.0245775   -0.0381876    0.0873425
3-6 months     ki0047075b-MAL-ED          INDIA                          [25-30)              [18.5-25)          0.0624070    0.0032234    0.1215906
3-6 months     ki0047075b-MAL-ED          INDIA                          >=30                 [18.5-25)         -0.1746389   -0.3176638   -0.0316140
3-6 months     ki0047075b-MAL-ED          NEPAL                          [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          [25-30)              [18.5-25)          0.0475861    0.0005746    0.0945976
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=30                 [18.5-25)          0.2644369    0.1957904    0.3330834
3-6 months     ki0047075b-MAL-ED          PERU                           [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           <18.5                [18.5-25)          0.0160335   -0.0787218    0.1107889
3-6 months     ki0047075b-MAL-ED          PERU                           [25-30)              [18.5-25)          0.0139992   -0.0424757    0.0704740
3-6 months     ki0047075b-MAL-ED          PERU                           >=30                 [18.5-25)          0.1590884    0.0908157    0.2273611
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <18.5                [18.5-25)         -0.1037438   -0.2916824    0.0841947
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              [18.5-25)          0.0020617   -0.0807679    0.0848913
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 [18.5-25)         -0.0108182   -0.0928892    0.0712527
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <18.5                [18.5-25)         -0.0790939   -0.2391872    0.0809994
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              [18.5-25)         -0.0218728   -0.1039791    0.0602335
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 [18.5-25)         -0.0211421   -0.1974903    0.1552061
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <18.5                [18.5-25)          0.0018246   -0.0352212    0.0388704
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [25-30)              [18.5-25)          0.0744922    0.0053537    0.1436307
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=30                 [18.5-25)         -0.0486278   -0.2445477    0.1472921
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <18.5                [18.5-25)         -0.0064780   -0.0606053    0.0476492
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [25-30)              [18.5-25)          0.0740397    0.0028816    0.1451978
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=30                 [18.5-25)          0.0371218   -0.0574512    0.1316948
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <18.5                [18.5-25)         -0.0089695   -0.0520998    0.0341607
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [25-30)              [18.5-25)         -0.0160004   -0.0585604    0.0265595
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=30                 [18.5-25)         -0.0667940   -0.1461519    0.0125640
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <18.5                [18.5-25)         -0.0439096   -0.0883528    0.0005336
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              [18.5-25)         -0.0283454   -0.0708667    0.0141759
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [18.5-25)         -0.0538709   -0.1029069   -0.0048350
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <18.5                [18.5-25)         -0.0687022   -0.1185816   -0.0188228
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              [18.5-25)          0.0211537   -0.0167123    0.0590197
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [18.5-25)          0.0069092   -0.0387260    0.0525444
3-6 months     ki1119695-PROBIT           BELARUS                        [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        <18.5                [18.5-25)         -0.0033878   -0.0340768    0.0273012
3-6 months     ki1119695-PROBIT           BELARUS                        [25-30)              [18.5-25)         -0.0035194   -0.0202017    0.0131629
3-6 months     ki1119695-PROBIT           BELARUS                        >=30                 [18.5-25)         -0.0030516   -0.0251981    0.0190949
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <18.5                [18.5-25)          0.0165013   -0.0235598    0.0565623
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              [18.5-25)         -0.0150666   -0.0397887    0.0096555
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [18.5-25)          0.0436222    0.0104689    0.0767756
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     <18.5                [18.5-25)         -0.0196108   -0.0482277    0.0090062
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)              [18.5-25)          0.0000888   -0.0240273    0.0242048
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 [18.5-25)         -0.0578196   -0.1123757   -0.0032635
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BRAZIL                         <18.5                [18.5-25)         -0.0008896   -0.0586921    0.0569129
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [25-30)              [18.5-25)          0.0593376    0.0186005    0.1000748
6-12 months    ki0047075b-MAL-ED          BRAZIL                         >=30                 [18.5-25)          0.0492360    0.0032329    0.0952392
6-12 months    ki0047075b-MAL-ED          INDIA                          [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA                          <18.5                [18.5-25)         -0.0055652   -0.0347052    0.0235748
6-12 months    ki0047075b-MAL-ED          INDIA                          [25-30)              [18.5-25)         -0.0127078   -0.0353237    0.0099081
6-12 months    ki0047075b-MAL-ED          INDIA                          >=30                 [18.5-25)          0.0143354   -0.0356018    0.0642727
6-12 months    ki0047075b-MAL-ED          NEPAL                          [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          NEPAL                          [25-30)              [18.5-25)         -0.0243297   -0.0438963   -0.0047632
6-12 months    ki0047075b-MAL-ED          NEPAL                          >=30                 [18.5-25)          0.0274176    0.0047578    0.0500775
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <18.5                [18.5-25)          0.1430770    0.1065931    0.1795608
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              [18.5-25)          0.0140251   -0.0194538    0.0475039
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 [18.5-25)          0.0273462   -0.0035958    0.0582882
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <18.5                [18.5-25)          0.0341065   -0.0340473    0.1022603
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              [18.5-25)         -0.0134992   -0.0547755    0.0277770
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 [18.5-25)         -0.0131105   -0.0681346    0.0419137
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          <18.5                [18.5-25)          0.0017789   -0.0132417    0.0167995
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)              [18.5-25)         -0.0138582   -0.0529812    0.0252648
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 [18.5-25)         -0.0436001   -0.0930210    0.0058209
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     <18.5                [18.5-25)         -0.0055309   -0.0279359    0.0168741
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)              [18.5-25)          0.0050622   -0.0228153    0.0329397
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 [18.5-25)          0.0169390   -0.0286151    0.0624931
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     <18.5                [18.5-25)         -0.0260119   -0.0437070   -0.0083168
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)              [18.5-25)          0.0297688    0.0123264    0.0472112
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 [18.5-25)         -0.0091277   -0.0297948    0.0115394
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <18.5                [18.5-25)          0.0012180   -0.0179949    0.0204309
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              [18.5-25)          0.0201147    0.0023827    0.0378466
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [18.5-25)          0.0035755   -0.0221016    0.0292527
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <18.5                [18.5-25)         -0.0020283   -0.0308890    0.0268324
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              [18.5-25)         -0.0048368   -0.0245595    0.0148859
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [18.5-25)         -0.0017938   -0.0236805    0.0200930
6-12 months    ki1119695-PROBIT           BELARUS                        [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS                        <18.5                [18.5-25)         -0.0045846   -0.0206402    0.0114711
6-12 months    ki1119695-PROBIT           BELARUS                        [25-30)              [18.5-25)          0.0007022   -0.0135590    0.0149633
6-12 months    ki1119695-PROBIT           BELARUS                        >=30                 [18.5-25)          0.0007205   -0.0109548    0.0123958
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <18.5                [18.5-25)         -0.0264142   -0.0468138   -0.0060146
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              [18.5-25)         -0.0217111   -0.0336284   -0.0097937
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [18.5-25)          0.0016988   -0.0171183    0.0205160
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BRAZIL                         <18.5                [18.5-25)          0.0127729   -0.0164909    0.0420366
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)              [18.5-25)         -0.0020909   -0.0233558    0.0191740
12-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 [18.5-25)         -0.0034319   -0.0277941    0.0209302
12-24 months   ki0047075b-MAL-ED          INDIA                          [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          <18.5                [18.5-25)         -0.0002902   -0.0134954    0.0129151
12-24 months   ki0047075b-MAL-ED          INDIA                          [25-30)              [18.5-25)          0.0030343   -0.0117220    0.0177907
12-24 months   ki0047075b-MAL-ED          INDIA                          >=30                 [18.5-25)          0.0027892   -0.0203620    0.0259404
12-24 months   ki0047075b-MAL-ED          NEPAL                          [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          NEPAL                          [25-30)              [18.5-25)          0.0197276    0.0108524    0.0286027
12-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                 [18.5-25)          0.0703180    0.0588913    0.0817446
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <18.5                [18.5-25)         -0.0839797   -0.0962067   -0.0717528
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              [18.5-25)          0.0030867   -0.0116509    0.0178244
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 [18.5-25)         -0.0027656   -0.0158584    0.0103271
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <18.5                [18.5-25)          0.0091147   -0.0151306    0.0333600
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              [18.5-25)          0.0029629   -0.0134432    0.0193691
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 [18.5-25)          0.0349032    0.0047889    0.0650175
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     <18.5                [18.5-25)         -0.0066006   -0.0180012    0.0048001
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              [18.5-25)          0.0073640   -0.0051872    0.0199151
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 [18.5-25)         -0.0114394   -0.0359339    0.0130551
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     <18.5                [18.5-25)          0.0060629   -0.0028850    0.0150109
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              [18.5-25)          0.0199268    0.0094093    0.0304443
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 [18.5-25)          0.0151616   -0.0010972    0.0314205
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <18.5                [18.5-25)          0.0031522   -0.0068387    0.0131431
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              [18.5-25)          0.0119281    0.0029601    0.0208960
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [18.5-25)          0.0262122    0.0156318    0.0367927
12-24 months   ki1119695-PROBIT           BELARUS                        [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
12-24 months   ki1119695-PROBIT           BELARUS                        <18.5                [18.5-25)          0.0382043    0.0153905    0.0610182
12-24 months   ki1119695-PROBIT           BELARUS                        [25-30)              [18.5-25)         -0.0070492   -0.0282216    0.0141231
12-24 months   ki1119695-PROBIT           BELARUS                        >=30                 [18.5-25)         -0.0160527   -0.0395280    0.0074227
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            [18.5-25)          0.0000000    0.0000000    0.0000000
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <18.5                [18.5-25)          0.0152830   -0.0176852    0.0482513
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              [18.5-25)          0.0178300   -0.0028030    0.0384630
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [18.5-25)         -0.0031875   -0.0251601    0.0187851
