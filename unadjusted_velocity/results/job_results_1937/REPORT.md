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

**Outcome Variable:** y_rate_lencm

## Predictor Variables

**Intervention Variable:** mhtcm

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* diffcat
* studyid
* country

## Data Summary

diffcat        studyid                     country                        mhtcm        n_cell       n
-------------  --------------------------  -----------------------------  ----------  -------  ------
0-3 months     ki0047075b-MAL-ED           BANGLADESH                     >=160             3     244
0-3 months     ki0047075b-MAL-ED           BANGLADESH                     <145             56     244
0-3 months     ki0047075b-MAL-ED           BANGLADESH                     [145-150)        87     244
0-3 months     ki0047075b-MAL-ED           BANGLADESH                     [150-155)        78     244
0-3 months     ki0047075b-MAL-ED           BANGLADESH                     [155-160)        20     244
3-6 months     ki0047075b-MAL-ED           BANGLADESH                     >=160             3     231
3-6 months     ki0047075b-MAL-ED           BANGLADESH                     <145             49     231
3-6 months     ki0047075b-MAL-ED           BANGLADESH                     [145-150)        84     231
3-6 months     ki0047075b-MAL-ED           BANGLADESH                     [150-155)        75     231
3-6 months     ki0047075b-MAL-ED           BANGLADESH                     [155-160)        20     231
6-12 months    ki0047075b-MAL-ED           BANGLADESH                     >=160             4     220
6-12 months    ki0047075b-MAL-ED           BANGLADESH                     <145             48     220
6-12 months    ki0047075b-MAL-ED           BANGLADESH                     [145-150)        81     220
6-12 months    ki0047075b-MAL-ED           BANGLADESH                     [150-155)        68     220
6-12 months    ki0047075b-MAL-ED           BANGLADESH                     [155-160)        19     220
12-24 months   ki0047075b-MAL-ED           BANGLADESH                     >=160             4     206
12-24 months   ki0047075b-MAL-ED           BANGLADESH                     <145             43     206
12-24 months   ki0047075b-MAL-ED           BANGLADESH                     [145-150)        78     206
12-24 months   ki0047075b-MAL-ED           BANGLADESH                     [150-155)        63     206
12-24 months   ki0047075b-MAL-ED           BANGLADESH                     [155-160)        18     206
12-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     >=160             2      38
12-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     <145              6      38
12-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     [145-150)        10      38
12-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     [150-155)        13      38
12-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     [155-160)         7      38
0-3 months     ki1017093-NIH-Birth         BANGLADESH                     >=160            22     566
0-3 months     ki1017093-NIH-Birth         BANGLADESH                     <145             96     566
0-3 months     ki1017093-NIH-Birth         BANGLADESH                     [145-150)       191     566
0-3 months     ki1017093-NIH-Birth         BANGLADESH                     [150-155)       176     566
0-3 months     ki1017093-NIH-Birth         BANGLADESH                     [155-160)        81     566
3-6 months     ki1017093-NIH-Birth         BANGLADESH                     >=160            19     523
3-6 months     ki1017093-NIH-Birth         BANGLADESH                     <145             89     523
3-6 months     ki1017093-NIH-Birth         BANGLADESH                     [145-150)       177     523
3-6 months     ki1017093-NIH-Birth         BANGLADESH                     [150-155)       164     523
3-6 months     ki1017093-NIH-Birth         BANGLADESH                     [155-160)        74     523
6-12 months    ki1017093-NIH-Birth         BANGLADESH                     >=160            18     482
6-12 months    ki1017093-NIH-Birth         BANGLADESH                     <145             79     482
6-12 months    ki1017093-NIH-Birth         BANGLADESH                     [145-150)       163     482
6-12 months    ki1017093-NIH-Birth         BANGLADESH                     [150-155)       150     482
6-12 months    ki1017093-NIH-Birth         BANGLADESH                     [155-160)        72     482
12-24 months   ki1017093-NIH-Birth         BANGLADESH                     >=160            16     421
12-24 months   ki1017093-NIH-Birth         BANGLADESH                     <145             74     421
12-24 months   ki1017093-NIH-Birth         BANGLADESH                     [145-150)       144     421
12-24 months   ki1017093-NIH-Birth         BANGLADESH                     [150-155)       127     421
12-24 months   ki1017093-NIH-Birth         BANGLADESH                     [155-160)        60     421
0-3 months     ki1017093b-PROVIDE          BANGLADESH                     >=160            33     633
0-3 months     ki1017093b-PROVIDE          BANGLADESH                     <145             80     633
0-3 months     ki1017093b-PROVIDE          BANGLADESH                     [145-150)       219     633
0-3 months     ki1017093b-PROVIDE          BANGLADESH                     [150-155)       197     633
0-3 months     ki1017093b-PROVIDE          BANGLADESH                     [155-160)       104     633
3-6 months     ki1017093b-PROVIDE          BANGLADESH                     >=160            30     573
3-6 months     ki1017093b-PROVIDE          BANGLADESH                     <145             74     573
3-6 months     ki1017093b-PROVIDE          BANGLADESH                     [145-150)       195     573
3-6 months     ki1017093b-PROVIDE          BANGLADESH                     [150-155)       178     573
3-6 months     ki1017093b-PROVIDE          BANGLADESH                     [155-160)        96     573
6-12 months    ki1017093b-PROVIDE          BANGLADESH                     >=160            27     545
6-12 months    ki1017093b-PROVIDE          BANGLADESH                     <145             69     545
6-12 months    ki1017093b-PROVIDE          BANGLADESH                     [145-150)       192     545
6-12 months    ki1017093b-PROVIDE          BANGLADESH                     [150-155)       167     545
6-12 months    ki1017093b-PROVIDE          BANGLADESH                     [155-160)        90     545
12-24 months   ki1017093b-PROVIDE          BANGLADESH                     >=160            27     458
12-24 months   ki1017093b-PROVIDE          BANGLADESH                     <145             58     458
12-24 months   ki1017093b-PROVIDE          BANGLADESH                     [145-150)       165     458
12-24 months   ki1017093b-PROVIDE          BANGLADESH                     [150-155)       138     458
12-24 months   ki1017093b-PROVIDE          BANGLADESH                     [155-160)        70     458
0-3 months     ki1017093c-NIH-Crypto       BANGLADESH                     >=160            21     720
0-3 months     ki1017093c-NIH-Crypto       BANGLADESH                     <145            108     720
0-3 months     ki1017093c-NIH-Crypto       BANGLADESH                     [145-150)       236     720
0-3 months     ki1017093c-NIH-Crypto       BANGLADESH                     [150-155)       242     720
0-3 months     ki1017093c-NIH-Crypto       BANGLADESH                     [155-160)       113     720
3-6 months     ki1017093c-NIH-Crypto       BANGLADESH                     >=160            21     695
3-6 months     ki1017093c-NIH-Crypto       BANGLADESH                     <145            106     695
3-6 months     ki1017093c-NIH-Crypto       BANGLADESH                     [145-150)       225     695
3-6 months     ki1017093c-NIH-Crypto       BANGLADESH                     [150-155)       235     695
3-6 months     ki1017093c-NIH-Crypto       BANGLADESH                     [155-160)       108     695
6-12 months    ki1017093c-NIH-Crypto       BANGLADESH                     >=160            20     676
6-12 months    ki1017093c-NIH-Crypto       BANGLADESH                     <145            101     676
6-12 months    ki1017093c-NIH-Crypto       BANGLADESH                     [145-150)       220     676
6-12 months    ki1017093c-NIH-Crypto       BANGLADESH                     [150-155)       230     676
6-12 months    ki1017093c-NIH-Crypto       BANGLADESH                     [155-160)       105     676
12-24 months   ki1017093c-NIH-Crypto       BANGLADESH                     >=160            13     495
12-24 months   ki1017093c-NIH-Crypto       BANGLADESH                     <145             71     495
12-24 months   ki1017093c-NIH-Crypto       BANGLADESH                     [145-150)       161     495
12-24 months   ki1017093c-NIH-Crypto       BANGLADESH                     [150-155)       169     495
12-24 months   ki1017093c-NIH-Crypto       BANGLADESH                     [155-160)        81     495
0-3 months     kiGH5241-JiVitA-3           BANGLADESH                     >=160           489   19963
0-3 months     kiGH5241-JiVitA-3           BANGLADESH                     <145           3537   19963
0-3 months     kiGH5241-JiVitA-3           BANGLADESH                     [145-150)      6833   19963
0-3 months     kiGH5241-JiVitA-3           BANGLADESH                     [150-155)      6605   19963
0-3 months     kiGH5241-JiVitA-3           BANGLADESH                     [155-160)      2499   19963
3-6 months     kiGH5241-JiVitA-3           BANGLADESH                     >=160           334   12547
3-6 months     kiGH5241-JiVitA-3           BANGLADESH                     <145           2122   12547
3-6 months     kiGH5241-JiVitA-3           BANGLADESH                     [145-150)      4221   12547
3-6 months     kiGH5241-JiVitA-3           BANGLADESH                     [150-155)      4229   12547
3-6 months     kiGH5241-JiVitA-3           BANGLADESH                     [155-160)      1641   12547
6-12 months    kiGH5241-JiVitA-3           BANGLADESH                     >=160           241    9809
6-12 months    kiGH5241-JiVitA-3           BANGLADESH                     <145           1657    9809
6-12 months    kiGH5241-JiVitA-3           BANGLADESH                     [145-150)      3316    9809
6-12 months    kiGH5241-JiVitA-3           BANGLADESH                     [150-155)      3332    9809
6-12 months    kiGH5241-JiVitA-3           BANGLADESH                     [155-160)      1263    9809
12-24 months   kiGH5241-JiVitA-3           BANGLADESH                     >=160           126    4636
12-24 months   kiGH5241-JiVitA-3           BANGLADESH                     <145            788    4636
12-24 months   kiGH5241-JiVitA-3           BANGLADESH                     [145-150)      1548    4636
12-24 months   kiGH5241-JiVitA-3           BANGLADESH                     [150-155)      1604    4636
12-24 months   kiGH5241-JiVitA-3           BANGLADESH                     [155-160)       570    4636
0-3 months     ki1119695-PROBIT            BELARUS                        >=160         10223   12599
0-3 months     ki1119695-PROBIT            BELARUS                        <145              4   12599
0-3 months     ki1119695-PROBIT            BELARUS                        [145-150)        22   12599
0-3 months     ki1119695-PROBIT            BELARUS                        [150-155)       457   12599
0-3 months     ki1119695-PROBIT            BELARUS                        [155-160)      1893   12599
3-6 months     ki1119695-PROBIT            BELARUS                        >=160          8967   11063
3-6 months     ki1119695-PROBIT            BELARUS                        <145              4   11063
3-6 months     ki1119695-PROBIT            BELARUS                        [145-150)        22   11063
3-6 months     ki1119695-PROBIT            BELARUS                        [150-155)       401   11063
3-6 months     ki1119695-PROBIT            BELARUS                        [155-160)      1669   11063
6-12 months    ki1119695-PROBIT            BELARUS                        >=160          8768   10808
6-12 months    ki1119695-PROBIT            BELARUS                        <145              3   10808
6-12 months    ki1119695-PROBIT            BELARUS                        [145-150)        22   10808
6-12 months    ki1119695-PROBIT            BELARUS                        [150-155)       389   10808
6-12 months    ki1119695-PROBIT            BELARUS                        [155-160)      1626   10808
12-24 months   ki1119695-PROBIT            BELARUS                        >=160          2042    2520
12-24 months   ki1119695-PROBIT            BELARUS                        <145              1    2520
12-24 months   ki1119695-PROBIT            BELARUS                        [145-150)         3    2520
12-24 months   ki1119695-PROBIT            BELARUS                        [150-155)        98    2520
12-24 months   ki1119695-PROBIT            BELARUS                        [155-160)       376    2520
0-3 months     ki0047075b-MAL-ED           BRAZIL                         >=160            55     180
0-3 months     ki0047075b-MAL-ED           BRAZIL                         <145              7     180
0-3 months     ki0047075b-MAL-ED           BRAZIL                         [145-150)        30     180
0-3 months     ki0047075b-MAL-ED           BRAZIL                         [150-155)        40     180
0-3 months     ki0047075b-MAL-ED           BRAZIL                         [155-160)        48     180
3-6 months     ki0047075b-MAL-ED           BRAZIL                         >=160            65     208
3-6 months     ki0047075b-MAL-ED           BRAZIL                         <145              7     208
3-6 months     ki0047075b-MAL-ED           BRAZIL                         [145-150)        32     208
3-6 months     ki0047075b-MAL-ED           BRAZIL                         [150-155)        48     208
3-6 months     ki0047075b-MAL-ED           BRAZIL                         [155-160)        56     208
6-12 months    ki0047075b-MAL-ED           BRAZIL                         >=160            58     194
6-12 months    ki0047075b-MAL-ED           BRAZIL                         <145              7     194
6-12 months    ki0047075b-MAL-ED           BRAZIL                         [145-150)        29     194
6-12 months    ki0047075b-MAL-ED           BRAZIL                         [150-155)        48     194
6-12 months    ki0047075b-MAL-ED           BRAZIL                         [155-160)        52     194
12-24 months   ki0047075b-MAL-ED           BRAZIL                         >=160            45     165
12-24 months   ki0047075b-MAL-ED           BRAZIL                         <145              7     165
12-24 months   ki0047075b-MAL-ED           BRAZIL                         [145-150)        26     165
12-24 months   ki0047075b-MAL-ED           BRAZIL                         [150-155)        41     165
12-24 months   ki0047075b-MAL-ED           BRAZIL                         [155-160)        46     165
12-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   >=160             4      12
12-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   [145-150)         3      12
12-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   [150-155)         1      12
12-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   [155-160)         4      12
12-24 months   ki1101329-Keneba            GAMBIA                         >=160           580    1125
12-24 months   ki1101329-Keneba            GAMBIA                         <145              2    1125
12-24 months   ki1101329-Keneba            GAMBIA                         [145-150)        12    1125
12-24 months   ki1101329-Keneba            GAMBIA                         [150-155)       163    1125
12-24 months   ki1101329-Keneba            GAMBIA                         [155-160)       368    1125
6-12 months    ki1101329-Keneba            GAMBIA                         >=160           626    1215
6-12 months    ki1101329-Keneba            GAMBIA                         <145              3    1215
6-12 months    ki1101329-Keneba            GAMBIA                         [145-150)        17    1215
6-12 months    ki1101329-Keneba            GAMBIA                         [150-155)       169    1215
6-12 months    ki1101329-Keneba            GAMBIA                         [155-160)       400    1215
0-3 months     ki1101329-Keneba            GAMBIA                         >=160           594    1184
0-3 months     ki1101329-Keneba            GAMBIA                         <145              3    1184
0-3 months     ki1101329-Keneba            GAMBIA                         [145-150)        16    1184
0-3 months     ki1101329-Keneba            GAMBIA                         [150-155)       181    1184
0-3 months     ki1101329-Keneba            GAMBIA                         [155-160)       390    1184
3-6 months     ki1101329-Keneba            GAMBIA                         >=160           648    1285
3-6 months     ki1101329-Keneba            GAMBIA                         <145              4    1285
3-6 months     ki1101329-Keneba            GAMBIA                         [145-150)        20    1285
3-6 months     ki1101329-Keneba            GAMBIA                         [150-155)       176    1285
3-6 months     ki1101329-Keneba            GAMBIA                         [155-160)       437    1285
6-12 months    ki1112895-Guatemala BSC     GUATEMALA                      >=160             9     158
6-12 months    ki1112895-Guatemala BSC     GUATEMALA                      <145             31     158
6-12 months    ki1112895-Guatemala BSC     GUATEMALA                      [145-150)        54     158
6-12 months    ki1112895-Guatemala BSC     GUATEMALA                      [150-155)        45     158
6-12 months    ki1112895-Guatemala BSC     GUATEMALA                      [155-160)        19     158
0-3 months     ki1135781-COHORTS           GUATEMALA                      >=160            26     724
0-3 months     ki1135781-COHORTS           GUATEMALA                      <145            149     724
0-3 months     ki1135781-COHORTS           GUATEMALA                      [145-150)       255     724
0-3 months     ki1135781-COHORTS           GUATEMALA                      [150-155)       221     724
0-3 months     ki1135781-COHORTS           GUATEMALA                      [155-160)        73     724
3-6 months     ki1135781-COHORTS           GUATEMALA                      >=160            21     796
3-6 months     ki1135781-COHORTS           GUATEMALA                      <145            176     796
3-6 months     ki1135781-COHORTS           GUATEMALA                      [145-150)       289     796
3-6 months     ki1135781-COHORTS           GUATEMALA                      [150-155)       231     796
3-6 months     ki1135781-COHORTS           GUATEMALA                      [155-160)        79     796
6-12 months    ki1135781-COHORTS           GUATEMALA                      >=160            25     850
6-12 months    ki1135781-COHORTS           GUATEMALA                      <145            191     850
6-12 months    ki1135781-COHORTS           GUATEMALA                      [145-150)       301     850
6-12 months    ki1135781-COHORTS           GUATEMALA                      [150-155)       247     850
6-12 months    ki1135781-COHORTS           GUATEMALA                      [155-160)        86     850
12-24 months   ki1135781-COHORTS           GUATEMALA                      >=160            28     839
12-24 months   ki1135781-COHORTS           GUATEMALA                      <145            184     839
12-24 months   ki1135781-COHORTS           GUATEMALA                      [145-150)       298     839
12-24 months   ki1135781-COHORTS           GUATEMALA                      [150-155)       246     839
12-24 months   ki1135781-COHORTS           GUATEMALA                      [155-160)        83     839
0-3 months     ki0047075b-MAL-ED           INDIA                          >=160            13     201
0-3 months     ki0047075b-MAL-ED           INDIA                          <145             23     201
0-3 months     ki0047075b-MAL-ED           INDIA                          [145-150)        59     201
0-3 months     ki0047075b-MAL-ED           INDIA                          [150-155)        72     201
0-3 months     ki0047075b-MAL-ED           INDIA                          [155-160)        34     201
3-6 months     ki0047075b-MAL-ED           INDIA                          >=160            12     228
3-6 months     ki0047075b-MAL-ED           INDIA                          <145             25     228
3-6 months     ki0047075b-MAL-ED           INDIA                          [145-150)        68     228
3-6 months     ki0047075b-MAL-ED           INDIA                          [150-155)        82     228
3-6 months     ki0047075b-MAL-ED           INDIA                          [155-160)        41     228
6-12 months    ki0047075b-MAL-ED           INDIA                          >=160            11     223
6-12 months    ki0047075b-MAL-ED           INDIA                          <145             25     223
6-12 months    ki0047075b-MAL-ED           INDIA                          [145-150)        68     223
6-12 months    ki0047075b-MAL-ED           INDIA                          [150-155)        78     223
6-12 months    ki0047075b-MAL-ED           INDIA                          [155-160)        41     223
12-24 months   ki0047075b-MAL-ED           INDIA                          >=160            12     224
12-24 months   ki0047075b-MAL-ED           INDIA                          <145             26     224
12-24 months   ki0047075b-MAL-ED           INDIA                          [145-150)        68     224
12-24 months   ki0047075b-MAL-ED           INDIA                          [150-155)        78     224
12-24 months   ki0047075b-MAL-ED           INDIA                          [155-160)        40     224
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          >=160           147    1075
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          <145             90    1075
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          [145-150)       218    1075
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          [150-155)       330    1075
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          [155-160)       290    1075
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          >=160           142    1037
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          <145             90    1037
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          [145-150)       206    1037
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          [150-155)       318    1037
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          [155-160)       281    1037
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          >=160           155    1043
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          <145             84    1043
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          [145-150)       195    1043
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          [150-155)       319    1043
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          [155-160)       290    1043
6-12 months    ki1000304b-SAS-FoodSuppl    INDIA                          >=160            16     332
6-12 months    ki1000304b-SAS-FoodSuppl    INDIA                          <145             47     332
6-12 months    ki1000304b-SAS-FoodSuppl    INDIA                          [145-150)       108     332
6-12 months    ki1000304b-SAS-FoodSuppl    INDIA                          [150-155)       111     332
6-12 months    ki1000304b-SAS-FoodSuppl    INDIA                          [155-160)        50     332
0-3 months     ki1135781-COHORTS           INDIA                          >=160           138    1721
0-3 months     ki1135781-COHORTS           INDIA                          <145            158    1721
0-3 months     ki1135781-COHORTS           INDIA                          [145-150)       462    1721
0-3 months     ki1135781-COHORTS           INDIA                          [150-155)       587    1721
0-3 months     ki1135781-COHORTS           INDIA                          [155-160)       376    1721
3-6 months     ki1135781-COHORTS           INDIA                          >=160           139    1747
3-6 months     ki1135781-COHORTS           INDIA                          <145            160    1747
3-6 months     ki1135781-COHORTS           INDIA                          [145-150)       478    1747
3-6 months     ki1135781-COHORTS           INDIA                          [150-155)       593    1747
3-6 months     ki1135781-COHORTS           INDIA                          [155-160)       377    1747
6-12 months    ki1135781-COHORTS           INDIA                          >=160           122    1509
6-12 months    ki1135781-COHORTS           INDIA                          <145            133    1509
6-12 months    ki1135781-COHORTS           INDIA                          [145-150)       419    1509
6-12 months    ki1135781-COHORTS           INDIA                          [150-155)       510    1509
6-12 months    ki1135781-COHORTS           INDIA                          [155-160)       325    1509
12-24 months   ki1135781-COHORTS           INDIA                          >=160           120    1458
12-24 months   ki1135781-COHORTS           INDIA                          <145            131    1458
12-24 months   ki1135781-COHORTS           INDIA                          [145-150)       404    1458
12-24 months   ki1135781-COHORTS           INDIA                          [150-155)       488    1458
12-24 months   ki1135781-COHORTS           INDIA                          [155-160)       315    1458
12-24 months   ki1000111-WASH-Kenya        KENYA                          >=160           181     325
12-24 months   ki1000111-WASH-Kenya        KENYA                          [145-150)        10     325
12-24 months   ki1000111-WASH-Kenya        KENYA                          [150-155)        40     325
12-24 months   ki1000111-WASH-Kenya        KENYA                          [155-160)        94     325
6-12 months    ki1148112-LCNI-5            MALAWI                         >=160           114     433
6-12 months    ki1148112-LCNI-5            MALAWI                         <145              6     433
6-12 months    ki1148112-LCNI-5            MALAWI                         [145-150)        52     433
6-12 months    ki1148112-LCNI-5            MALAWI                         [150-155)       107     433
6-12 months    ki1148112-LCNI-5            MALAWI                         [155-160)       154     433
12-24 months   ki1148112-LCNI-5            MALAWI                         >=160            85     309
12-24 months   ki1148112-LCNI-5            MALAWI                         <145              5     309
12-24 months   ki1148112-LCNI-5            MALAWI                         [145-150)        37     309
12-24 months   ki1148112-LCNI-5            MALAWI                         [150-155)        76     309
12-24 months   ki1148112-LCNI-5            MALAWI                         [155-160)       106     309
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         >=160           238    1027
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         <145             25    1027
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         [145-150)       137    1027
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         [150-155)       307    1027
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         [155-160)       320    1027
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         >=160           113     484
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         <145             13     484
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         [145-150)        57     484
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         [150-155)       159     484
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         [155-160)       142     484
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         [150-155)         1       1
3-6 months     ki0047075b-MAL-ED           NEPAL                          >=160             5     233
3-6 months     ki0047075b-MAL-ED           NEPAL                          <145             37     233
3-6 months     ki0047075b-MAL-ED           NEPAL                          [145-150)        83     233
3-6 months     ki0047075b-MAL-ED           NEPAL                          [150-155)        72     233
3-6 months     ki0047075b-MAL-ED           NEPAL                          [155-160)        36     233
6-12 months    ki0047075b-MAL-ED           NEPAL                          >=160             4     230
6-12 months    ki0047075b-MAL-ED           NEPAL                          <145             36     230
6-12 months    ki0047075b-MAL-ED           NEPAL                          [145-150)        83     230
6-12 months    ki0047075b-MAL-ED           NEPAL                          [150-155)        72     230
6-12 months    ki0047075b-MAL-ED           NEPAL                          [155-160)        35     230
12-24 months   ki0047075b-MAL-ED           NEPAL                          >=160             4     226
12-24 months   ki0047075b-MAL-ED           NEPAL                          <145             35     226
12-24 months   ki0047075b-MAL-ED           NEPAL                          [145-150)        83     226
12-24 months   ki0047075b-MAL-ED           NEPAL                          [150-155)        70     226
12-24 months   ki0047075b-MAL-ED           NEPAL                          [155-160)        34     226
0-3 months     ki0047075b-MAL-ED           NEPAL                          >=160             2     175
0-3 months     ki0047075b-MAL-ED           NEPAL                          <145             26     175
0-3 months     ki0047075b-MAL-ED           NEPAL                          [145-150)        67     175
0-3 months     ki0047075b-MAL-ED           NEPAL                          [150-155)        55     175
0-3 months     ki0047075b-MAL-ED           NEPAL                          [155-160)        25     175
0-3 months     ki0047075b-MAL-ED           PERU                           >=160            11     270
0-3 months     ki0047075b-MAL-ED           PERU                           <145             39     270
0-3 months     ki0047075b-MAL-ED           PERU                           [145-150)       100     270
0-3 months     ki0047075b-MAL-ED           PERU                           [150-155)        75     270
0-3 months     ki0047075b-MAL-ED           PERU                           [155-160)        45     270
3-6 months     ki0047075b-MAL-ED           PERU                           >=160            11     266
3-6 months     ki0047075b-MAL-ED           PERU                           <145             36     266
3-6 months     ki0047075b-MAL-ED           PERU                           [145-150)       101     266
3-6 months     ki0047075b-MAL-ED           PERU                           [150-155)        72     266
3-6 months     ki0047075b-MAL-ED           PERU                           [155-160)        46     266
6-12 months    ki0047075b-MAL-ED           PERU                           >=160            11     236
6-12 months    ki0047075b-MAL-ED           PERU                           <145             33     236
6-12 months    ki0047075b-MAL-ED           PERU                           [145-150)        90     236
6-12 months    ki0047075b-MAL-ED           PERU                           [150-155)        61     236
6-12 months    ki0047075b-MAL-ED           PERU                           [155-160)        41     236
12-24 months   ki0047075b-MAL-ED           PERU                           >=160             9     191
12-24 months   ki0047075b-MAL-ED           PERU                           <145             25     191
12-24 months   ki0047075b-MAL-ED           PERU                           [145-150)        73     191
12-24 months   ki0047075b-MAL-ED           PERU                           [150-155)        49     191
12-24 months   ki0047075b-MAL-ED           PERU                           [155-160)        35     191
6-12 months    ki1135781-COHORTS           PHILIPPINES                    >=160            99    2419
6-12 months    ki1135781-COHORTS           PHILIPPINES                    <145            258    2419
6-12 months    ki1135781-COHORTS           PHILIPPINES                    [145-150)       759    2419
6-12 months    ki1135781-COHORTS           PHILIPPINES                    [150-155)       904    2419
6-12 months    ki1135781-COHORTS           PHILIPPINES                    [155-160)       399    2419
12-24 months   ki1135781-COHORTS           PHILIPPINES                    >=160            95    2260
12-24 months   ki1135781-COHORTS           PHILIPPINES                    <145            234    2260
12-24 months   ki1135781-COHORTS           PHILIPPINES                    [145-150)       717    2260
12-24 months   ki1135781-COHORTS           PHILIPPINES                    [150-155)       840    2260
12-24 months   ki1135781-COHORTS           PHILIPPINES                    [155-160)       374    2260
0-3 months     ki0047075b-MAL-ED           SOUTH AFRICA                   >=160           104     223
0-3 months     ki0047075b-MAL-ED           SOUTH AFRICA                   <145              8     223
0-3 months     ki0047075b-MAL-ED           SOUTH AFRICA                   [145-150)        11     223
0-3 months     ki0047075b-MAL-ED           SOUTH AFRICA                   [150-155)        34     223
0-3 months     ki0047075b-MAL-ED           SOUTH AFRICA                   [155-160)        66     223
3-6 months     ki0047075b-MAL-ED           SOUTH AFRICA                   >=160           107     237
3-6 months     ki0047075b-MAL-ED           SOUTH AFRICA                   <145              9     237
3-6 months     ki0047075b-MAL-ED           SOUTH AFRICA                   [145-150)        13     237
3-6 months     ki0047075b-MAL-ED           SOUTH AFRICA                   [150-155)        37     237
3-6 months     ki0047075b-MAL-ED           SOUTH AFRICA                   [155-160)        71     237
6-12 months    ki0047075b-MAL-ED           SOUTH AFRICA                   >=160           100     228
6-12 months    ki0047075b-MAL-ED           SOUTH AFRICA                   <145              8     228
6-12 months    ki0047075b-MAL-ED           SOUTH AFRICA                   [145-150)        13     228
6-12 months    ki0047075b-MAL-ED           SOUTH AFRICA                   [150-155)        36     228
6-12 months    ki0047075b-MAL-ED           SOUTH AFRICA                   [155-160)        71     228
12-24 months   ki0047075b-MAL-ED           SOUTH AFRICA                   >=160           102     226
12-24 months   ki0047075b-MAL-ED           SOUTH AFRICA                   <145              7     226
12-24 months   ki0047075b-MAL-ED           SOUTH AFRICA                   [145-150)        12     226
12-24 months   ki0047075b-MAL-ED           SOUTH AFRICA                   [150-155)        34     226
12-24 months   ki0047075b-MAL-ED           SOUTH AFRICA                   [155-160)        71     226
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=160            55     223
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   <145              8     223
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   [145-150)        23     223
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   [150-155)        64     223
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   [155-160)        73     223
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=160            51     207
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   <145              7     207
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   [145-150)        21     207
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   [150-155)        57     207
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   [155-160)        71     207
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=160            59     229
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   <145              8     229
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   [145-150)        22     229
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   [150-155)        60     229
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   [155-160)        80     229
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=160            60     239
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   <145              9     239
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   [145-150)        23     239
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   [150-155)        65     239
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   [155-160)        82     239
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=160           471    1634
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <145             24    1634
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [145-150)       127    1634
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [150-155)       459    1634
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [155-160)       553    1634
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=160           317    1067
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <145             18    1067
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [145-150)        78    1067
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [150-155)       294    1067
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [155-160)       360    1067
12-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [150-155)         1       2
12-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [155-160)         1       2
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       >=160          3430    6922
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       <145             46    6922
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       [145-150)       226    6922
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       [150-155)      1161    6922
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       [155-160)      2059    6922
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       >=160          2647    5388
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       <145             36    5388
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       [145-150)       178    5388
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       [150-155)       903    5388
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       [155-160)      1624    5388
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       >=160          1996    4144
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       <145             24    4144
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       [145-150)       147    4144
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       [150-155)       710    4144
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       [155-160)      1267    4144
12-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       >=160           119     269
12-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       <145              4     269
12-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       [145-150)        15     269
12-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       [150-155)        53     269
12-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       [155-160)        78     269


The following strata were considered:

* diffcat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* diffcat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* diffcat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* diffcat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* diffcat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* diffcat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* diffcat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* diffcat: 0-3 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* diffcat: 0-3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* diffcat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* diffcat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* diffcat: 0-3 months, studyid: ki1101329-Keneba, country: GAMBIA
* diffcat: 0-3 months, studyid: ki1119695-PROBIT, country: BELARUS
* diffcat: 0-3 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* diffcat: 0-3 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* diffcat: 0-3 months, studyid: ki1135781-COHORTS, country: INDIA
* diffcat: 0-3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* diffcat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* diffcat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* diffcat: 12-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* diffcat: 12-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* diffcat: 12-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* diffcat: 12-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* diffcat: 12-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* diffcat: 12-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* diffcat: 12-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* diffcat: 12-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* diffcat: 12-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* diffcat: 12-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* diffcat: 12-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* diffcat: 12-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* diffcat: 12-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* diffcat: 12-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* diffcat: 12-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* diffcat: 12-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* diffcat: 12-24 months, studyid: ki1135781-COHORTS, country: INDIA
* diffcat: 12-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* diffcat: 12-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* diffcat: 12-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* diffcat: 12-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* diffcat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* diffcat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* diffcat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* diffcat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* diffcat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* diffcat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* diffcat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* diffcat: 3-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* diffcat: 3-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* diffcat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* diffcat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* diffcat: 3-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* diffcat: 3-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* diffcat: 3-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* diffcat: 3-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* diffcat: 3-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* diffcat: 3-6 months, studyid: ki1135781-COHORTS, country: INDIA
* diffcat: 3-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* diffcat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* diffcat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* diffcat: 6-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* diffcat: 6-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* diffcat: 6-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* diffcat: 6-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* diffcat: 6-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* diffcat: 6-12 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* diffcat: 6-12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* diffcat: 6-12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* diffcat: 6-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* diffcat: 6-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* diffcat: 6-12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* diffcat: 6-12 months, studyid: ki1101329-Keneba, country: GAMBIA
* diffcat: 6-12 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* diffcat: 6-12 months, studyid: ki1119695-PROBIT, country: BELARUS
* diffcat: 6-12 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* diffcat: 6-12 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* diffcat: 6-12 months, studyid: ki1135781-COHORTS, country: INDIA
* diffcat: 6-12 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* diffcat: 6-12 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* diffcat: 6-12 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* diffcat: 6-12 months, studyid: ki1148112-LCNI-5, country: MALAWI
* diffcat: 6-12 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* diffcat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* diffcat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* diffcat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* diffcat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* diffcat: 12-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* diffcat: 0-3 months, studyid: ki1119695-PROBIT, country: BELARUS
* diffcat: 3-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* diffcat: 6-12 months, studyid: ki1119695-PROBIT, country: BELARUS
* diffcat: 12-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* diffcat: 12-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* diffcat: 12-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* diffcat: 6-12 months, studyid: ki1101329-Keneba, country: GAMBIA
* diffcat: 0-3 months, studyid: ki1101329-Keneba, country: GAMBIA
* diffcat: 3-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* diffcat: 6-12 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* diffcat: 6-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* diffcat: 12-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* diffcat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* diffcat: 12-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* diffcat: 12-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/8989ca36-99b9-4d62-949f-be68ff1a075c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/8989ca36-99b9-4d62-949f-be68ff1a075c/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


diffcat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=160                NA                4.0831415   3.9249921   4.2412910
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <145                 NA                4.0974831   3.4986661   4.6963000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [145-150)            NA                3.9715003   3.7217176   4.2212831
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [150-155)            NA                4.0324358   3.8144256   4.2504460
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [155-160)            NA                4.0724426   3.8552236   4.2896615
0-3 months     ki0047075b-MAL-ED          INDIA                          >=160                NA                3.8448225   3.5773756   4.1122695
0-3 months     ki0047075b-MAL-ED          INDIA                          <145                 NA                3.4911803   3.2014215   3.7809391
0-3 months     ki0047075b-MAL-ED          INDIA                          [145-150)            NA                3.4957302   3.3483929   3.6430676
0-3 months     ki0047075b-MAL-ED          INDIA                          [150-155)            NA                3.6327812   3.5098622   3.7557001
0-3 months     ki0047075b-MAL-ED          INDIA                          [155-160)            NA                3.5523095   3.3823970   3.7222220
0-3 months     ki0047075b-MAL-ED          PERU                           >=160                NA                3.5323406   3.2642952   3.8003860
0-3 months     ki0047075b-MAL-ED          PERU                           <145                 NA                3.2904433   3.1162456   3.4646410
0-3 months     ki0047075b-MAL-ED          PERU                           [145-150)            NA                3.3686307   3.2675143   3.4697471
0-3 months     ki0047075b-MAL-ED          PERU                           [150-155)            NA                3.2741545   3.1509478   3.3973611
0-3 months     ki0047075b-MAL-ED          PERU                           [155-160)            NA                3.2440421   3.0931749   3.3949093
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=160                NA                3.5611310   3.4268599   3.6954022
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <145                 NA                3.0895556   2.7287776   3.4503335
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [145-150)            NA                3.2839962   2.6991695   3.8688230
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [150-155)            NA                3.4373712   3.2520700   3.6226724
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [155-160)            NA                3.3657119   3.2032636   3.5281601
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=160                NA                3.4520882   3.2863288   3.6178476
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <145                 NA                3.5791560   3.3401423   3.8181697
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [145-150)            NA                3.4780897   3.2686646   3.6875147
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [150-155)            NA                3.5333457   3.3845925   3.6820990
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [155-160)            NA                3.4560241   3.3243178   3.5877305
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=160                NA                3.6742626   3.5940649   3.7544603
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <145                 NA                3.5267005   3.4493084   3.6040926
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [145-150)            NA                3.5388561   3.4716199   3.6060923
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [150-155)            NA                3.5777557   3.5095637   3.6459477
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [155-160)            NA                3.6646846   3.6124079   3.7169612
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=160                NA                3.5845612   3.2467124   3.9224100
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <145                 NA                3.1774140   3.0627008   3.2921273
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [145-150)            NA                3.2629561   3.1679267   3.3579856
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [150-155)            NA                3.3794374   3.2870204   3.4718544
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [155-160)            NA                3.3730631   3.2109875   3.5351387
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=160                NA                3.6641240   3.4781704   3.8500776
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <145                 NA                3.2857761   3.1750028   3.3965494
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [145-150)            NA                3.4541145   3.3864331   3.5217960
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [150-155)            NA                3.4862709   3.4223332   3.5502087
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [155-160)            NA                3.6394219   3.5471177   3.7317261
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=160                NA                3.4718232   3.2175051   3.7261413
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <145                 NA                3.1874545   3.0880808   3.2868282
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [145-150)            NA                3.2555714   3.1889065   3.3222363
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [150-155)            NA                3.3616633   3.2977837   3.4255430
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [155-160)            NA                3.3546236   3.2610610   3.4481862
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=160                NA                3.4455106   3.4138322   3.4771889
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <145                 NA                3.0522751   2.8148131   3.2897372
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)            NA                3.1492939   3.0248303   3.2737575
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)            NA                3.2173378   3.1648820   3.2697935
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)            NA                3.3015617   3.2610924   3.3420311
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=160                NA                2.6605783   2.4283040   2.8928526
0-3 months     ki1135781-COHORTS          GUATEMALA                      <145                 NA                2.5695598   2.4776076   2.6615120
0-3 months     ki1135781-COHORTS          GUATEMALA                      [145-150)            NA                2.5955041   2.5248371   2.6661711
0-3 months     ki1135781-COHORTS          GUATEMALA                      [150-155)            NA                2.6051918   2.5197098   2.6906738
0-3 months     ki1135781-COHORTS          GUATEMALA                      [155-160)            NA                2.7720008   2.6412976   2.9027040
0-3 months     ki1135781-COHORTS          INDIA                          >=160                NA                3.6301670   3.5339653   3.7263688
0-3 months     ki1135781-COHORTS          INDIA                          <145                 NA                3.4574932   3.3603271   3.5546594
0-3 months     ki1135781-COHORTS          INDIA                          [145-150)            NA                3.4710005   3.4178314   3.5241695
0-3 months     ki1135781-COHORTS          INDIA                          [150-155)            NA                3.5524149   3.5020158   3.6028141
0-3 months     ki1135781-COHORTS          INDIA                          [155-160)            NA                3.6081181   3.5476115   3.6686247
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=160                NA                3.8606878   3.8088829   3.9124927
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <145                 NA                3.6309547   3.6107491   3.6511603
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [145-150)            NA                3.7012735   3.6860261   3.7165209
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [150-155)            NA                3.7457263   3.7300788   3.7613738
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [155-160)            NA                3.7901451   3.7644287   3.8158615
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=160                NA                2.1388610   2.0030866   2.2746354
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <145                 NA                1.9507629   1.3593539   2.5421719
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [145-150)            NA                2.0639654   1.9052532   2.2226776
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [150-155)            NA                2.2707428   2.1104395   2.4310460
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [155-160)            NA                2.1253891   1.9594328   2.2913454
3-6 months     ki0047075b-MAL-ED          INDIA                          >=160                NA                1.7135251   1.5306364   1.8964138
3-6 months     ki0047075b-MAL-ED          INDIA                          <145                 NA                1.8087300   1.5874976   2.0299624
3-6 months     ki0047075b-MAL-ED          INDIA                          [145-150)            NA                1.8642049   1.7486828   1.9797269
3-6 months     ki0047075b-MAL-ED          INDIA                          [150-155)            NA                1.8982146   1.8090504   1.9873788
3-6 months     ki0047075b-MAL-ED          INDIA                          [155-160)            NA                1.9645811   1.8080304   2.1211319
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=160                NA                2.1376739   1.7251824   2.5501654
3-6 months     ki0047075b-MAL-ED          NEPAL                          <145                 NA                2.0204133   1.8902268   2.1505997
3-6 months     ki0047075b-MAL-ED          NEPAL                          [145-150)            NA                1.9003342   1.8108381   1.9898304
3-6 months     ki0047075b-MAL-ED          NEPAL                          [150-155)            NA                2.0322038   1.9236343   2.1407732
3-6 months     ki0047075b-MAL-ED          NEPAL                          [155-160)            NA                1.9188085   1.7855606   2.0520565
3-6 months     ki0047075b-MAL-ED          PERU                           >=160                NA                1.6880847   1.4290421   1.9471273
3-6 months     ki0047075b-MAL-ED          PERU                           <145                 NA                2.0065416   1.8410804   2.1720028
3-6 months     ki0047075b-MAL-ED          PERU                           [145-150)            NA                1.9620033   1.8660500   2.0579566
3-6 months     ki0047075b-MAL-ED          PERU                           [150-155)            NA                2.1113261   1.9889341   2.2337180
3-6 months     ki0047075b-MAL-ED          PERU                           [155-160)            NA                2.0822531   1.8832625   2.2812438
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=160                NA                1.9346023   1.8144859   2.0547187
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <145                 NA                1.7580297   1.3770670   2.1389923
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [145-150)            NA                2.0221615   1.7330389   2.3112841
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [150-155)            NA                2.0410742   1.8400174   2.2421310
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [155-160)            NA                2.0107883   1.8556060   2.1659706
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=160                NA                1.9015893   1.7594775   2.0437011
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <145                 NA                1.5915613   1.2634921   1.9196304
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [145-150)            NA                1.6680900   1.4014881   1.9346918
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [150-155)            NA                1.8635865   1.7460694   1.9811036
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [155-160)            NA                1.8228409   1.7139135   1.9317683
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=160                NA                2.0426213   1.9367507   2.1484920
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <145                 NA                1.9814395   1.8165277   2.1463513
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [145-150)            NA                1.9035352   1.8247155   1.9823550
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [150-155)            NA                1.9410274   1.8885183   1.9935364
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [155-160)            NA                1.9560140   1.8933021   2.0187258
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=160                NA                1.8648109   1.6342503   2.0953716
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <145                 NA                1.7869899   1.6804303   1.8935495
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [145-150)            NA                1.8239181   1.7389459   1.9088903
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [150-155)            NA                1.8536955   1.7652025   1.9421884
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [155-160)            NA                1.8538457   1.7303719   1.9773195
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=160                NA                1.9819508   1.8276679   2.1362338
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <145                 NA                1.9264802   1.8248478   2.0281126
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [145-150)            NA                2.0002410   1.9414909   2.0589912
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [150-155)            NA                1.9309254   1.8699597   1.9918911
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [155-160)            NA                1.9834192   1.8927177   2.0741207
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=160                NA                1.9328888   1.7409381   2.1248396
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <145                 NA                1.9901666   1.8954257   2.0849074
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [145-150)            NA                1.9950718   1.9300276   2.0601160
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [150-155)            NA                2.0269202   1.9657341   2.0881063
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [155-160)            NA                2.0116979   1.9183643   2.1050315
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160                NA                1.8327616   1.7694251   1.8960982
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <145                 NA                1.5515223   1.2275542   1.8754904
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [145-150)            NA                1.8130267   1.6815604   1.9444929
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [150-155)            NA                1.7759067   1.7090439   1.8427695
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [155-160)            NA                1.7930395   1.7280045   1.8580744
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=160                NA                2.0043709   1.9745596   2.0341822
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <145                 NA                1.9866386   1.7366596   2.2366175
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)            NA                1.8750204   1.7618725   1.9881683
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)            NA                1.9770168   1.9268563   2.0271774
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)            NA                1.9552402   1.9180266   1.9924539
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=160                NA                1.7856865   1.6211874   1.9501856
3-6 months     ki1135781-COHORTS          GUATEMALA                      <145                 NA                1.7620668   1.6949351   1.8291985
3-6 months     ki1135781-COHORTS          GUATEMALA                      [145-150)            NA                1.7236807   1.6757050   1.7716564
3-6 months     ki1135781-COHORTS          GUATEMALA                      [150-155)            NA                1.7527387   1.6956295   1.8098480
3-6 months     ki1135781-COHORTS          GUATEMALA                      [155-160)            NA                1.9346095   1.8242519   2.0449671
3-6 months     ki1135781-COHORTS          INDIA                          >=160                NA                1.9625289   1.8744084   2.0506494
3-6 months     ki1135781-COHORTS          INDIA                          <145                 NA                1.8202494   1.7334147   1.9070841
3-6 months     ki1135781-COHORTS          INDIA                          [145-150)            NA                1.8591980   1.8145466   1.9038494
3-6 months     ki1135781-COHORTS          INDIA                          [150-155)            NA                1.8687348   1.8282646   1.9092050
3-6 months     ki1135781-COHORTS          INDIA                          [155-160)            NA                1.9123128   1.8596864   1.9649391
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=160                NA                2.0049923   1.9551270   2.0548577
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <145                 NA                1.8746463   1.8494196   1.8998731
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [145-150)            NA                1.9132648   1.8955080   1.9310216
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [150-155)            NA                1.9268493   1.9097571   1.9439414
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [155-160)            NA                1.9608160   1.9338651   1.9877669
6-12 months    ki0047075b-MAL-ED          BRAZIL                         >=160                NA                1.3768574   1.2996505   1.4540644
6-12 months    ki0047075b-MAL-ED          BRAZIL                         <145                 NA                1.3197664   1.0633087   1.5762241
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [145-150)            NA                1.4696107   1.3243807   1.6148407
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [150-155)            NA                1.3233093   1.2345922   1.4120264
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [155-160)            NA                1.4176452   1.3320685   1.5032220
6-12 months    ki0047075b-MAL-ED          INDIA                          >=160                NA                1.2329114   1.0912567   1.3745661
6-12 months    ki0047075b-MAL-ED          INDIA                          <145                 NA                1.1297591   1.0709288   1.1885893
6-12 months    ki0047075b-MAL-ED          INDIA                          [145-150)            NA                1.1450500   1.0889258   1.2011742
6-12 months    ki0047075b-MAL-ED          INDIA                          [150-155)            NA                1.0964555   1.0475380   1.1453729
6-12 months    ki0047075b-MAL-ED          INDIA                          [155-160)            NA                1.0834010   1.0280338   1.1387683
6-12 months    ki0047075b-MAL-ED          PERU                           >=160                NA                1.2837889   1.1318742   1.4357036
6-12 months    ki0047075b-MAL-ED          PERU                           <145                 NA                1.1447791   1.0636449   1.2259132
6-12 months    ki0047075b-MAL-ED          PERU                           [145-150)            NA                1.2009383   1.1497021   1.2521746
6-12 months    ki0047075b-MAL-ED          PERU                           [150-155)            NA                1.2440541   1.1757406   1.3123675
6-12 months    ki0047075b-MAL-ED          PERU                           [155-160)            NA                1.2207624   1.1433533   1.2981715
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=160                NA                1.2183308   1.1695369   1.2671247
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <145                 NA                1.2899926   0.9831201   1.5968651
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [145-150)            NA                1.0464673   0.8861422   1.2067923
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [150-155)            NA                1.0886049   0.9470771   1.2301327
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [155-160)            NA                1.2067159   1.1365986   1.2768332
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=160                NA                1.0111947   0.9320219   1.0903676
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <145                 NA                1.1113501   0.9897057   1.2329945
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [145-150)            NA                0.9304435   0.7977783   1.0631087
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [150-155)            NA                1.0247690   0.9561602   1.0933779
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [155-160)            NA                0.9855266   0.9259948   1.0450585
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=160                NA                1.1256149   1.0934650   1.1577648
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          <145                 NA                1.0049612   0.9100100   1.0999124
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [145-150)            NA                1.0469942   0.9814207   1.1125678
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [150-155)            NA                1.1171044   1.0787361   1.1554727
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [155-160)            NA                1.1374979   1.1060304   1.1689653
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=160                NA                0.8983784   0.8047693   0.9919874
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          <145                 NA                1.1834660   0.8931391   1.4737929
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [145-150)            NA                1.0642046   0.9138334   1.2145758
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [150-155)            NA                0.9461986   0.8457260   1.0466712
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [155-160)            NA                0.9278407   0.7855225   1.0701590
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=160                NA                1.2715389   1.1797855   1.3632923
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     <145                 NA                1.0882519   1.0306366   1.1458671
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [145-150)            NA                1.1373962   1.1037412   1.1710511
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [150-155)            NA                1.2061704   1.1624194   1.2499214
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [155-160)            NA                1.2189396   1.1641418   1.2737374
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=160                NA                1.2285730   1.1458238   1.3113223
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     <145                 NA                1.1192679   1.0648274   1.1737084
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [145-150)            NA                1.1658190   1.1370116   1.1946264
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [150-155)            NA                1.1751894   1.1452456   1.2051331
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [155-160)            NA                1.2098467   1.1702648   1.2494285
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=160                NA                1.3565459   1.2550474   1.4580443
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <145                 NA                1.2113303   1.1664399   1.2562208
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [145-150)            NA                1.1983413   1.1687676   1.2279150
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [150-155)            NA                1.2310428   1.2009942   1.2610914
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [155-160)            NA                1.2758716   1.2319567   1.3197865
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160                NA                1.2465751   1.2098175   1.2833327
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <145                 NA                1.0689861   0.9366241   1.2013482
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [145-150)            NA                1.1370872   1.0525613   1.2216131
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [150-155)            NA                1.1841153   1.1430079   1.2252227
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [155-160)            NA                1.1798300   1.1409823   1.2186777
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      >=160                NA                1.2510691   1.0980221   1.4041160
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      <145                 NA                1.0263544   0.9630016   1.0897072
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      [145-150)            NA                1.0732553   1.0245103   1.1220003
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      [150-155)            NA                1.0939845   1.0273301   1.1606390
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      [155-160)            NA                1.2123185   1.1178602   1.3067769
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=160                NA                1.2100423   1.1935733   1.2265114
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <145                 NA                1.2108722   0.9997114   1.4220330
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)            NA                1.1692850   1.1159737   1.2225963
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)            NA                1.1604524   1.1342042   1.1867006
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)            NA                1.2035675   1.1825165   1.2246185
6-12 months    ki1135781-COHORTS          GUATEMALA                      >=160                NA                1.0986813   1.0021853   1.1951772
6-12 months    ki1135781-COHORTS          GUATEMALA                      <145                 NA                0.9736351   0.9399988   1.0072714
6-12 months    ki1135781-COHORTS          GUATEMALA                      [145-150)            NA                1.0358581   1.0060809   1.0656353
6-12 months    ki1135781-COHORTS          GUATEMALA                      [150-155)            NA                1.0089954   0.9762788   1.0417120
6-12 months    ki1135781-COHORTS          GUATEMALA                      [155-160)            NA                1.0522301   0.9984947   1.1059656
6-12 months    ki1135781-COHORTS          INDIA                          >=160                NA                1.1987774   1.1443955   1.2531594
6-12 months    ki1135781-COHORTS          INDIA                          <145                 NA                1.0383095   0.9902151   1.0864038
6-12 months    ki1135781-COHORTS          INDIA                          [145-150)            NA                1.0692393   1.0404304   1.0980481
6-12 months    ki1135781-COHORTS          INDIA                          [150-155)            NA                1.0792653   1.0525552   1.1059753
6-12 months    ki1135781-COHORTS          INDIA                          [155-160)            NA                1.1640109   1.1330404   1.1949813
6-12 months    ki1135781-COHORTS          PHILIPPINES                    >=160                NA                1.1575101   1.0935538   1.2214664
6-12 months    ki1135781-COHORTS          PHILIPPINES                    <145                 NA                0.9969363   0.9586969   1.0351757
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [145-150)            NA                1.0537069   1.0324736   1.0749402
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [150-155)            NA                1.0760971   1.0564369   1.0957573
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [155-160)            NA                1.0972334   1.0667534   1.1277133
6-12 months    ki1148112-iLiNS-DOSE       MALAWI                         >=160                NA                1.2470385   1.2104986   1.2835784
6-12 months    ki1148112-iLiNS-DOSE       MALAWI                         <145                 NA                1.1265299   1.0480936   1.2049662
6-12 months    ki1148112-iLiNS-DOSE       MALAWI                         [145-150)            NA                1.1750817   1.1295140   1.2206494
6-12 months    ki1148112-iLiNS-DOSE       MALAWI                         [150-155)            NA                1.2036343   1.1733465   1.2339221
6-12 months    ki1148112-iLiNS-DOSE       MALAWI                         [155-160)            NA                1.2519760   1.2224837   1.2814683
6-12 months    ki1148112-LCNI-5           MALAWI                         >=160                NA                1.2970142   1.2528599   1.3411684
6-12 months    ki1148112-LCNI-5           MALAWI                         <145                 NA                1.3221226   1.1140692   1.5301760
6-12 months    ki1148112-LCNI-5           MALAWI                         [145-150)            NA                1.2624570   1.1756664   1.3492476
6-12 months    ki1148112-LCNI-5           MALAWI                         [150-155)            NA                1.2357093   1.1848910   1.2865276
6-12 months    ki1148112-LCNI-5           MALAWI                         [155-160)            NA                1.2994825   1.2538188   1.3451463
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     >=160                NA                1.1574732   1.1225199   1.1924266
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     <145                 NA                1.0805034   1.0644259   1.0965809
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [145-150)            NA                1.0998645   1.0895666   1.1101623
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [150-155)            NA                1.1106270   1.0999272   1.1213268
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [155-160)            NA                1.1402887   1.1233196   1.1572578
12-24 months   ki0047075b-MAL-ED          BRAZIL                         >=160                NA                1.0055231   0.9407682   1.0702781
12-24 months   ki0047075b-MAL-ED          BRAZIL                         <145                 NA                1.0712461   0.9048219   1.2376703
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [145-150)            NA                1.0050141   0.9188013   1.0912269
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [150-155)            NA                0.9451898   0.8939794   0.9964002
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [155-160)            NA                0.9638614   0.9114149   1.0163079
12-24 months   ki0047075b-MAL-ED          INDIA                          >=160                NA                1.0213124   0.9381130   1.1045119
12-24 months   ki0047075b-MAL-ED          INDIA                          <145                 NA                0.8035616   0.7510270   0.8560962
12-24 months   ki0047075b-MAL-ED          INDIA                          [145-150)            NA                0.8651643   0.8320063   0.8983223
12-24 months   ki0047075b-MAL-ED          INDIA                          [150-155)            NA                0.8838859   0.8588167   0.9089551
12-24 months   ki0047075b-MAL-ED          INDIA                          [155-160)            NA                0.9080267   0.8752713   0.9407821
12-24 months   ki0047075b-MAL-ED          PERU                           >=160                NA                0.9275319   0.8352371   1.0198267
12-24 months   ki0047075b-MAL-ED          PERU                           <145                 NA                0.7834621   0.7417132   0.8252110
12-24 months   ki0047075b-MAL-ED          PERU                           [145-150)            NA                0.8417874   0.8052931   0.8782818
12-24 months   ki0047075b-MAL-ED          PERU                           [150-155)            NA                0.8314749   0.7960249   0.8669249
12-24 months   ki0047075b-MAL-ED          PERU                           [155-160)            NA                0.9007103   0.8539399   0.9474806
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=160                NA                0.8825581   0.8503766   0.9147396
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <145                 NA                0.8938893   0.8511624   0.9366163
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [145-150)            NA                0.8530374   0.7621800   0.9438947
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [150-155)            NA                0.9134637   0.8416803   0.9852470
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [155-160)            NA                0.8424478   0.8043582   0.8805373
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=160                NA                0.8181085   0.7737239   0.8624932
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <145                 NA                0.7471328   0.6892022   0.8050634
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [145-150)            NA                0.7194886   0.6406666   0.7983107
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [150-155)            NA                0.7338047   0.6914800   0.7761294
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [155-160)            NA                0.7709410   0.7292664   0.8126156
12-24 months   ki1000111-WASH-Kenya       KENYA                          >=160                NA                0.8683576   0.8452910   0.8914242
12-24 months   ki1000111-WASH-Kenya       KENYA                          [145-150)            NA                0.8249558   0.7452642   0.9046473
12-24 months   ki1000111-WASH-Kenya       KENYA                          [150-155)            NA                0.8032000   0.7572939   0.8491061
12-24 months   ki1000111-WASH-Kenya       KENYA                          [155-160)            NA                0.8356158   0.8085485   0.8626831
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=160                NA                0.8693475   0.8055545   0.9331405
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     <145                 NA                0.7335463   0.6997403   0.7673523
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [145-150)            NA                0.7297092   0.7033690   0.7560495
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [150-155)            NA                0.7547941   0.7304206   0.7791675
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [155-160)            NA                0.7861477   0.7487773   0.8235182
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=160                NA                0.8834225   0.8323306   0.9345145
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     <145                 NA                0.8151776   0.7830342   0.8473211
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [145-150)            NA                0.8534094   0.8333890   0.8734299
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [150-155)            NA                0.8624794   0.8410416   0.8839173
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [155-160)            NA                0.8827335   0.8525510   0.9129160
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=160                NA                0.9269159   0.8485576   1.0052741
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <145                 NA                0.8399908   0.8099349   0.8700466
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [145-150)            NA                0.8627547   0.8429497   0.8825596
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [150-155)            NA                0.8788267   0.8579020   0.8997514
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [155-160)            NA                0.9172114   0.8905880   0.9438349
12-24 months   ki1135781-COHORTS          GUATEMALA                      >=160                NA                0.8396602   0.7687121   0.9106084
12-24 months   ki1135781-COHORTS          GUATEMALA                      <145                 NA                0.7416453   0.7204498   0.7628408
12-24 months   ki1135781-COHORTS          GUATEMALA                      [145-150)            NA                0.7814335   0.7641866   0.7986804
12-24 months   ki1135781-COHORTS          GUATEMALA                      [150-155)            NA                0.7736621   0.7513896   0.7959345
12-24 months   ki1135781-COHORTS          GUATEMALA                      [155-160)            NA                0.8295144   0.7948830   0.8641457
12-24 months   ki1135781-COHORTS          INDIA                          >=160                NA                0.8861149   0.8579871   0.9142428
12-24 months   ki1135781-COHORTS          INDIA                          <145                 NA                0.8086632   0.7824692   0.8348573
12-24 months   ki1135781-COHORTS          INDIA                          [145-150)            NA                0.8189206   0.8043449   0.8334964
12-24 months   ki1135781-COHORTS          INDIA                          [150-155)            NA                0.8336970   0.8195313   0.8478627
12-24 months   ki1135781-COHORTS          INDIA                          [155-160)            NA                0.8575457   0.8389808   0.8761106
12-24 months   ki1135781-COHORTS          PHILIPPINES                    >=160                NA                0.7787122   0.7424004   0.8150241
12-24 months   ki1135781-COHORTS          PHILIPPINES                    <145                 NA                0.6665866   0.6437894   0.6893839
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [145-150)            NA                0.6960056   0.6824947   0.7095166
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [150-155)            NA                0.7126848   0.7011160   0.7242536
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [155-160)            NA                0.7208681   0.7034876   0.7382487
12-24 months   ki1148112-iLiNS-DOSE       MALAWI                         >=160                NA                0.8147323   0.7871910   0.8422736
12-24 months   ki1148112-iLiNS-DOSE       MALAWI                         <145                 NA                0.8238617   0.7512594   0.8964639
12-24 months   ki1148112-iLiNS-DOSE       MALAWI                         [145-150)            NA                0.7990495   0.7659078   0.8321912
12-24 months   ki1148112-iLiNS-DOSE       MALAWI                         [150-155)            NA                0.7933763   0.7697715   0.8169811
12-24 months   ki1148112-iLiNS-DOSE       MALAWI                         [155-160)            NA                0.8147113   0.7858362   0.8435864
12-24 months   ki1148112-LCNI-5           MALAWI                         >=160                NA                0.8465017   0.8160754   0.8769281
12-24 months   ki1148112-LCNI-5           MALAWI                         <145                 NA                0.7310287   0.6748521   0.7872053
12-24 months   ki1148112-LCNI-5           MALAWI                         [145-150)            NA                0.7923397   0.7278038   0.8568755
12-24 months   ki1148112-LCNI-5           MALAWI                         [150-155)            NA                0.8268058   0.7958824   0.8577293
12-24 months   ki1148112-LCNI-5           MALAWI                         [155-160)            NA                0.8679239   0.8409672   0.8948806
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=160                NA                0.8464741   0.8172877   0.8756605
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <145                 NA                0.7706356   0.7561868   0.7850844
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [145-150)            NA                0.7911244   0.7830127   0.7992361
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [150-155)            NA                0.8012501   0.7926605   0.8098396
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [155-160)            NA                0.8252992   0.8109401   0.8396583


### Parameter: E(Y)


diffcat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                4.0509714   3.9492443   4.1526985
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                3.5764512   3.4977133   3.6551891
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                3.3169985   3.2535876   3.3804093
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                3.4538369   3.3628913   3.5447825
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                3.4816904   3.4044928   3.5588880
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                3.6022402   3.5794697   3.6250107
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                3.3129255   3.2581305   3.3677204
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                3.4842409   3.4451170   3.5233649
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                3.3028656   3.2646714   3.3410598
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                3.3521368   3.3299261   3.3743476
0-3 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                2.6132548   2.5694549   2.6570546
0-3 months     ki1135781-COHORTS          INDIA                          NA                   NA                3.5402494   3.5115937   3.5689050
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                3.7185523   3.7082032   3.7289014
3-6 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                2.1478156   2.0686357   2.2269955
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                1.8804733   1.8192508   1.9416958
3-6 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.9680995   1.9120346   2.0241643
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                2.0179168   1.9519428   2.0838909
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                1.9721457   1.8908533   2.0534381
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.8300902   1.7622436   1.8979368
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                1.9550595   1.9132701   1.9968488
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                1.8326915   1.7846731   1.8807099
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.9654067   1.9302800   2.0005334
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                2.0057973   1.9693775   2.0422170
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.7976828   1.7616152   1.8337503
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                1.9805863   1.9598899   2.0012827
3-6 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                1.7631705   1.7322799   1.7940611
3-6 months     ki1135781-COHORTS          INDIA                          NA                   NA                1.8785516   1.8544247   1.9026785
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                1.9199731   1.9095005   1.9304457
6-12 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                1.3863464   1.3400121   1.4326807
6-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                1.1193380   1.0909904   1.1476855
6-12 months    ki0047075b-MAL-ED          PERU                           NA                   NA                1.2115356   1.1787814   1.2442898
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                1.1869461   1.1457857   1.2281065
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.0019524   0.9648566   1.0390481
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                1.1018999   1.0898767   1.1139231
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                1.0131058   0.9370457   1.0891660
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                1.1679344   1.1454934   1.1903754
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.1731762   1.1558671   1.1904853
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                1.2281313   1.2106849   1.2455776
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.1958459   1.1742218   1.2174700
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                1.0968085   1.0636663   1.1299508
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                1.1981254   1.1867249   1.2095258
6-12 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                1.0175745   1.0002443   1.0349046
6-12 months    ki1135781-COHORTS          INDIA                          NA                   NA                1.1007860   1.0855079   1.1160641
6-12 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                1.0674471   1.0552459   1.0796483
6-12 months    ki1148112-iLiNS-DOSE       MALAWI                         NA                   NA                1.2230698   1.2062586   1.2398809
6-12 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                1.2789407   1.2528587   1.3050227
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                1.1068702   1.1001217   1.1136187
12-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.9816245   0.9508764   1.0123725
12-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.8805522   0.8631583   0.8979461
12-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.8463453   0.8256453   0.8670453
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.8733901   0.8508889   0.8958912
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7663111   0.7428636   0.7897586
12-24 months   ki1000111-WASH-Kenya       KENYA                          NA                   NA                0.8495329   0.8330827   0.8659830
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.7513013   0.7366996   0.7659029
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.8575519   0.8455586   0.8695452
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.8755729   0.8637860   0.8873598
12-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7771287   0.7660708   0.7881866
12-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.8368201   0.8286359   0.8450042
12-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.7067500   0.6994129   0.7140870
12-24 months   ki1148112-iLiNS-DOSE       MALAWI                         NA                   NA                0.8061087   0.7922115   0.8200059
12-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.8406522   0.8238073   0.8574972
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.7968513   0.7915360   0.8021667


### Parameter: ATE


diffcat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=160                >=160              0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <145                 >=160              0.0143415   -0.6050073    0.6336904
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [145-150)            >=160             -0.1116412   -0.4072806    0.1839982
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [150-155)            >=160             -0.0507057   -0.3200376    0.2186263
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [155-160)            >=160             -0.0106990   -0.2793908    0.2579929
0-3 months     ki0047075b-MAL-ED          INDIA                          >=160                >=160              0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          <145                 >=160             -0.3536423   -0.7479620    0.0406775
0-3 months     ki0047075b-MAL-ED          INDIA                          [145-150)            >=160             -0.3490923   -0.6544383   -0.0437463
0-3 months     ki0047075b-MAL-ED          INDIA                          [150-155)            >=160             -0.2120414   -0.5063829    0.0823002
0-3 months     ki0047075b-MAL-ED          INDIA                          [155-160)            >=160             -0.2925130   -0.6093697    0.0243436
0-3 months     ki0047075b-MAL-ED          PERU                           >=160                >=160              0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           <145                 >=160             -0.2418973   -0.5615740    0.0777794
0-3 months     ki0047075b-MAL-ED          PERU                           [145-150)            >=160             -0.1637099   -0.4501935    0.1227737
0-3 months     ki0047075b-MAL-ED          PERU                           [150-155)            >=160             -0.2581861   -0.5531916    0.0368193
0-3 months     ki0047075b-MAL-ED          PERU                           [155-160)            >=160             -0.2882985   -0.5958847    0.0192877
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=160                >=160              0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <145                 >=160             -0.4715755   -0.8565294   -0.0866216
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [145-150)            >=160             -0.2771348   -0.8771774    0.3229078
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [150-155)            >=160             -0.1237598   -0.3525945    0.1050748
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [155-160)            >=160             -0.1954192   -0.4061753    0.0153370
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=160                >=160              0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <145                 >=160              0.1270678   -0.1637994    0.4179350
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [145-150)            >=160              0.0260015   -0.2410847    0.2930877
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [150-155)            >=160              0.0812575   -0.1414614    0.3039764
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [155-160)            >=160              0.0039359   -0.2077779    0.2156497
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=160                >=160              0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <145                 >=160             -0.1475621   -0.2864320   -0.0086922
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [145-150)            >=160             -0.1354065   -0.2673800   -0.0034330
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [150-155)            >=160             -0.0965069   -0.2091842    0.0161704
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [155-160)            >=160             -0.0095780   -0.0851144    0.0659583
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=160                >=160              0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <145                 >=160             -0.4071472   -0.7639398   -0.0503546
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [145-150)            >=160             -0.3216051   -0.6725644    0.0293542
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [150-155)            >=160             -0.2051238   -0.5553848    0.1451372
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [155-160)            >=160             -0.2114981   -0.5862118    0.1632156
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=160                >=160              0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <145                 >=160             -0.3783479   -0.5947952   -0.1619005
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [145-150)            >=160             -0.2100094   -0.4078971   -0.0121218
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [150-155)            >=160             -0.1778530   -0.3744917    0.0187856
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [155-160)            >=160             -0.0247021   -0.2323046    0.1829004
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=160                >=160              0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <145                 >=160             -0.2843687   -0.5574123   -0.0113251
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [145-150)            >=160             -0.2162518   -0.4791622    0.0466586
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [150-155)            >=160             -0.1101599   -0.3723779    0.1520582
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [155-160)            >=160             -0.1171996   -0.3881824    0.1537831
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=160                >=160              0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <145                 >=160             -0.3932354   -0.6328011   -0.1536697
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)            >=160             -0.2962167   -0.4246484   -0.1677849
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)            >=160             -0.2281728   -0.2894518   -0.1668937
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)            >=160             -0.1439488   -0.1953423   -0.0925554
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=160                >=160              0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      <145                 >=160             -0.0910185   -0.3408315    0.1587946
0-3 months     ki1135781-COHORTS          GUATEMALA                      [145-150)            >=160             -0.0650742   -0.3078604    0.1777121
0-3 months     ki1135781-COHORTS          GUATEMALA                      [150-155)            >=160             -0.0553865   -0.3028911    0.1921180
0-3 months     ki1135781-COHORTS          GUATEMALA                      [155-160)            >=160              0.1114225   -0.1551008    0.3779458
0-3 months     ki1135781-COHORTS          INDIA                          >=160                >=160              0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          <145                 >=160             -0.1726738   -0.3094072   -0.0359403
0-3 months     ki1135781-COHORTS          INDIA                          [145-150)            >=160             -0.1591665   -0.2690835   -0.0492496
0-3 months     ki1135781-COHORTS          INDIA                          [150-155)            >=160             -0.0777521   -0.1863562    0.0308520
0-3 months     ki1135781-COHORTS          INDIA                          [155-160)            >=160             -0.0220489   -0.1356967    0.0915989
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=160                >=160              0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <145                 >=160             -0.2297331   -0.2841159   -0.1753503
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [145-150)            >=160             -0.1594143   -0.2129691   -0.1058594
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [150-155)            >=160             -0.1149615   -0.1679633   -0.0619598
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [155-160)            >=160             -0.0705427   -0.1285473   -0.0125381
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=160                >=160              0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <145                 >=160             -0.1880981   -0.7948923    0.4186961
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [145-150)            >=160             -0.0748956   -0.2837598    0.1339686
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [150-155)            >=160              0.1318818   -0.0781939    0.3419575
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [155-160)            >=160             -0.0134719   -0.2278925    0.2009487
3-6 months     ki0047075b-MAL-ED          INDIA                          >=160                >=160              0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          <145                 >=160              0.0952049   -0.1918352    0.3822450
3-6 months     ki0047075b-MAL-ED          INDIA                          [145-150)            >=160              0.1506798   -0.0656386    0.3669981
3-6 months     ki0047075b-MAL-ED          INDIA                          [150-155)            >=160              0.1846895   -0.0187767    0.3881558
3-6 months     ki0047075b-MAL-ED          INDIA                          [155-160)            >=160              0.2510560    0.0103147    0.4917974
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=160                >=160              0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          <145                 >=160             -0.1172606   -0.5498086    0.3152873
3-6 months     ki0047075b-MAL-ED          NEPAL                          [145-150)            >=160             -0.2373397   -0.6594283    0.1847489
3-6 months     ki0047075b-MAL-ED          NEPAL                          [150-155)            >=160             -0.1054701   -0.5320104    0.3210701
3-6 months     ki0047075b-MAL-ED          NEPAL                          [155-160)            >=160             -0.2188654   -0.6523446    0.2146139
3-6 months     ki0047075b-MAL-ED          PERU                           >=160                >=160              0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           <145                 >=160              0.3184569    0.0110801    0.6258336
3-6 months     ki0047075b-MAL-ED          PERU                           [145-150)            >=160              0.2739185   -0.0023243    0.5501614
3-6 months     ki0047075b-MAL-ED          PERU                           [150-155)            >=160              0.4232413    0.1367402    0.7097424
3-6 months     ki0047075b-MAL-ED          PERU                           [155-160)            >=160              0.3941684    0.0675182    0.7208186
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=160                >=160              0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <145                 >=160             -0.1765727   -0.5760229    0.2228776
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [145-150)            >=160              0.0875592   -0.2255220    0.4006404
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [150-155)            >=160              0.1064719   -0.1277327    0.3406765
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [155-160)            >=160              0.0761860   -0.1200524    0.2724244
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=160                >=160              0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <145                 >=160             -0.3100280   -0.6675545    0.0474984
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [145-150)            >=160             -0.2334993   -0.5356124    0.0686138
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [150-155)            >=160             -0.0380028   -0.2224100    0.1464045
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [155-160)            >=160             -0.0787484   -0.2578041    0.1003073
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=160                >=160              0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <145                 >=160             -0.0611819   -0.2605074    0.1381437
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [145-150)            >=160             -0.1390861   -0.2766878   -0.0014844
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [150-155)            >=160             -0.1015940   -0.1918572   -0.0113307
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [155-160)            >=160             -0.0866074   -0.2021175    0.0289028
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=160                >=160              0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <145                 >=160             -0.0778210   -0.3318154    0.1761733
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [145-150)            >=160             -0.0408928   -0.2866132    0.2048275
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [150-155)            >=160             -0.0111155   -0.2580754    0.2358444
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [155-160)            >=160             -0.0109653   -0.2725068    0.2505763
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=160                >=160              0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <145                 >=160             -0.0554706   -0.2402201    0.1292789
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [145-150)            >=160              0.0182902   -0.1468001    0.1833805
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [150-155)            >=160             -0.0510254   -0.2169171    0.1148662
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [155-160)            >=160              0.0014684   -0.1775009    0.1804376
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=160                >=160              0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <145                 >=160              0.0572777   -0.1567805    0.2713359
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [145-150)            >=160              0.0621830   -0.1404888    0.2648547
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [150-155)            >=160              0.0940314   -0.1074353    0.2954980
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [155-160)            >=160              0.0788090   -0.1346300    0.2922481
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160                >=160              0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <145                 >=160             -0.2812394   -0.6113407    0.0488619
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [145-150)            >=160             -0.0197350   -0.1656627    0.1261927
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [150-155)            >=160             -0.0568549   -0.1489535    0.0352437
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [155-160)            >=160             -0.0397222   -0.1305025    0.0510581
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=160                >=160              0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <145                 >=160             -0.0177324   -0.2694826    0.2340178
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)            >=160             -0.1293505   -0.2463597   -0.0123413
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)            >=160             -0.0273541   -0.0857047    0.0309965
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)            >=160             -0.0491307   -0.0968127   -0.0014487
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=160                >=160              0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      <145                 >=160             -0.0236197   -0.2012897    0.1540503
3-6 months     ki1135781-COHORTS          GUATEMALA                      [145-150)            >=160             -0.0620058   -0.2333581    0.1093466
3-6 months     ki1135781-COHORTS          GUATEMALA                      [150-155)            >=160             -0.0329477   -0.2070782    0.1411827
3-6 months     ki1135781-COHORTS          GUATEMALA                      [155-160)            >=160              0.1489230   -0.0491648    0.3470108
3-6 months     ki1135781-COHORTS          INDIA                          >=160                >=160              0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          <145                 >=160             -0.1422795   -0.2659948   -0.0185641
3-6 months     ki1135781-COHORTS          INDIA                          [145-150)            >=160             -0.1033309   -0.2021184   -0.0045434
3-6 months     ki1135781-COHORTS          INDIA                          [150-155)            >=160             -0.0937941   -0.1907634    0.0031753
3-6 months     ki1135781-COHORTS          INDIA                          [155-160)            >=160             -0.0502161   -0.1528550    0.0524228
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=160                >=160              0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <145                 >=160             -0.1303460   -0.1851683   -0.0755238
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [145-150)            >=160             -0.0917275   -0.1441858   -0.0392693
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [150-155)            >=160             -0.0781431   -0.1313562   -0.0249299
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [155-160)            >=160             -0.0441763   -0.1001659    0.0118132
6-12 months    ki0047075b-MAL-ED          BRAZIL                         >=160                >=160              0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BRAZIL                         <145                 >=160             -0.0570910   -0.3249183    0.2107363
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [145-150)            >=160              0.0927533   -0.0717237    0.2572302
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [150-155)            >=160             -0.0535481   -0.1711561    0.0640598
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [155-160)            >=160              0.0407878   -0.0744697    0.1560453
6-12 months    ki0047075b-MAL-ED          INDIA                          >=160                >=160              0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA                          <145                 >=160             -0.1031523   -0.2565376    0.0502330
6-12 months    ki0047075b-MAL-ED          INDIA                          [145-150)            >=160             -0.0878614   -0.2402293    0.0645065
6-12 months    ki0047075b-MAL-ED          INDIA                          [150-155)            >=160             -0.1364559   -0.2863191    0.0134072
6-12 months    ki0047075b-MAL-ED          INDIA                          [155-160)            >=160             -0.1495103   -0.3016010    0.0025804
6-12 months    ki0047075b-MAL-ED          PERU                           >=160                >=160              0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          PERU                           <145                 >=160             -0.1390098   -0.3112330    0.0332134
6-12 months    ki0047075b-MAL-ED          PERU                           [145-150)            >=160             -0.0828505   -0.2431729    0.0774718
6-12 months    ki0047075b-MAL-ED          PERU                           [150-155)            >=160             -0.0397348   -0.2063026    0.1268329
6-12 months    ki0047075b-MAL-ED          PERU                           [155-160)            >=160             -0.0630265   -0.2335265    0.1074735
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=160                >=160              0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <145                 >=160              0.0716618   -0.2390657    0.3823893
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [145-150)            >=160             -0.1718635   -0.3394493   -0.0042778
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [150-155)            >=160             -0.1297259   -0.2794288    0.0199770
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [155-160)            >=160             -0.0116149   -0.0970390    0.0738092
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=160                >=160              0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <145                 >=160              0.1001554   -0.0449849    0.2452956
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [145-150)            >=160             -0.0807512   -0.2352453    0.0737428
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [150-155)            >=160              0.0135743   -0.0911898    0.1183384
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [155-160)            >=160             -0.0256681   -0.1247256    0.0733894
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=160                >=160              0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          <145                 >=160             -0.1206537   -0.2278740   -0.0134334
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [145-150)            >=160             -0.0786207   -0.1443384   -0.0129030
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [150-155)            >=160             -0.0085105   -0.0715460    0.0545250
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [155-160)            >=160              0.0118830   -0.0128477    0.0366136
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=160                >=160              0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          <145                 >=160              0.2850877   -0.0199572    0.5901325
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [145-150)            >=160              0.1658262   -0.0113013    0.3429537
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [150-155)            >=160              0.0478202   -0.0895020    0.1851425
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [155-160)            >=160              0.0294624   -0.1408818    0.1998065
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=160                >=160              0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     <145                 >=160             -0.1832870   -0.2916300   -0.0749440
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [145-150)            >=160             -0.1341427   -0.2318737   -0.0364117
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [150-155)            >=160             -0.0653685   -0.1670190    0.0362821
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [155-160)            >=160             -0.0525993   -0.1594706    0.0542721
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=160                >=160              0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     <145                 >=160             -0.1093052   -0.2083567   -0.0102536
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [145-150)            >=160             -0.0627540   -0.1503742    0.0248662
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [150-155)            >=160             -0.0533837   -0.1413840    0.0346167
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [155-160)            >=160             -0.0187264   -0.1104551    0.0730024
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=160                >=160              0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <145                 >=160             -0.1452155   -0.2561979   -0.0342332
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [145-150)            >=160             -0.1582046   -0.2639237   -0.0524854
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [150-155)            >=160             -0.1255031   -0.2313560   -0.0196501
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [155-160)            >=160             -0.0806742   -0.1912656    0.0299171
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160                >=160              0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <145                 >=160             -0.1775889   -0.3149601   -0.0402178
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [145-150)            >=160             -0.1094879   -0.2016603   -0.0173155
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [150-155)            >=160             -0.0624598   -0.1176045   -0.0073151
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [155-160)            >=160             -0.0667451   -0.1202266   -0.0132636
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      >=160                >=160              0.0000000    0.0000000    0.0000000
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      <145                 >=160             -0.2247147   -0.3903557   -0.0590737
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      [145-150)            >=160             -0.1778138   -0.3384358   -0.0171917
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      [150-155)            >=160             -0.1570845   -0.3240162    0.0098471
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      [155-160)            >=160             -0.0387505   -0.2185998    0.1410987
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=160                >=160              0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <145                 >=160              0.0008298   -0.2109722    0.2126319
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)            >=160             -0.0407573   -0.0965545    0.0150398
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)            >=160             -0.0495899   -0.0805769   -0.0186029
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)            >=160             -0.0064749   -0.0332026    0.0202529
6-12 months    ki1135781-COHORTS          GUATEMALA                      >=160                >=160              0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          GUATEMALA                      <145                 >=160             -0.1250462   -0.2272365   -0.0228558
6-12 months    ki1135781-COHORTS          GUATEMALA                      [145-150)            >=160             -0.0628232   -0.1638091    0.0381627
6-12 months    ki1135781-COHORTS          GUATEMALA                      [150-155)            >=160             -0.0896859   -0.1915772    0.0122055
6-12 months    ki1135781-COHORTS          GUATEMALA                      [155-160)            >=160             -0.0464511   -0.1569001    0.0639978
6-12 months    ki1135781-COHORTS          INDIA                          >=160                >=160              0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          INDIA                          <145                 >=160             -0.1604680   -0.2330659   -0.0878700
6-12 months    ki1135781-COHORTS          INDIA                          [145-150)            >=160             -0.1295382   -0.1910796   -0.0679968
6-12 months    ki1135781-COHORTS          INDIA                          [150-155)            >=160             -0.1195122   -0.1800995   -0.0589249
6-12 months    ki1135781-COHORTS          INDIA                          [155-160)            >=160             -0.0347666   -0.0973490    0.0278159
6-12 months    ki1135781-COHORTS          PHILIPPINES                    >=160                >=160              0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          PHILIPPINES                    <145                 >=160             -0.1605739   -0.2350900   -0.0860577
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [145-150)            >=160             -0.1038032   -0.1711921   -0.0364144
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [150-155)            >=160             -0.0814130   -0.1483228   -0.0145032
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [155-160)            >=160             -0.0602768   -0.1311247    0.0105712
6-12 months    ki1148112-iLiNS-DOSE       MALAWI                         >=160                >=160              0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-iLiNS-DOSE       MALAWI                         <145                 >=160             -0.1205086   -0.2070385   -0.0339787
6-12 months    ki1148112-iLiNS-DOSE       MALAWI                         [145-150)            >=160             -0.0719568   -0.1303655   -0.0135481
6-12 months    ki1148112-iLiNS-DOSE       MALAWI                         [150-155)            >=160             -0.0434042   -0.0908649    0.0040564
6-12 months    ki1148112-iLiNS-DOSE       MALAWI                         [155-160)            >=160              0.0049375   -0.0420195    0.0518945
6-12 months    ki1148112-LCNI-5           MALAWI                         >=160                >=160              0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5           MALAWI                         <145                 >=160              0.0251084   -0.1875787    0.2377955
6-12 months    ki1148112-LCNI-5           MALAWI                         [145-150)            >=160             -0.0345572   -0.1319338    0.0628194
6-12 months    ki1148112-LCNI-5           MALAWI                         [150-155)            >=160             -0.0613049   -0.1286257    0.0060160
6-12 months    ki1148112-LCNI-5           MALAWI                         [155-160)            >=160              0.0024683   -0.0610516    0.0659882
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     >=160                >=160              0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     <145                 >=160             -0.0769698   -0.1156947   -0.0382450
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [145-150)            >=160             -0.0576088   -0.0934840   -0.0217336
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [150-155)            >=160             -0.0468463   -0.0827769   -0.0109156
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [155-160)            >=160             -0.0171845   -0.0566358    0.0222667
12-24 months   ki0047075b-MAL-ED          BRAZIL                         >=160                >=160              0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BRAZIL                         <145                 >=160              0.0657230   -0.1128554    0.2443013
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [145-150)            >=160             -0.0005090   -0.1083322    0.1073142
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [150-155)            >=160             -0.0603333   -0.1428907    0.0222240
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [155-160)            >=160             -0.0416617   -0.1249914    0.0416680
12-24 months   ki0047075b-MAL-ED          INDIA                          >=160                >=160              0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          <145                 >=160             -0.2177508   -0.3161482   -0.1193535
12-24 months   ki0047075b-MAL-ED          INDIA                          [145-150)            >=160             -0.1561481   -0.2457115   -0.0665847
12-24 months   ki0047075b-MAL-ED          INDIA                          [150-155)            >=160             -0.1374266   -0.2243209   -0.0505323
12-24 months   ki0047075b-MAL-ED          INDIA                          [155-160)            >=160             -0.1132857   -0.2027009   -0.0238705
12-24 months   ki0047075b-MAL-ED          PERU                           >=160                >=160              0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          PERU                           <145                 >=160             -0.1440698   -0.2453679   -0.0427717
12-24 months   ki0047075b-MAL-ED          PERU                           [145-150)            >=160             -0.0857445   -0.1849925    0.0135036
12-24 months   ki0047075b-MAL-ED          PERU                           [150-155)            >=160             -0.0960570   -0.1949258    0.0028118
12-24 months   ki0047075b-MAL-ED          PERU                           [155-160)            >=160             -0.0268216   -0.1302905    0.0766472
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=160                >=160              0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <145                 >=160              0.0113312   -0.0421593    0.0648218
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [145-150)            >=160             -0.0295207   -0.1259091    0.0668676
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [150-155)            >=160              0.0309056   -0.0477615    0.1095726
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [155-160)            >=160             -0.0401103   -0.0899748    0.0097541
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=160                >=160              0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <145                 >=160             -0.0709757   -0.1439549    0.0020034
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [145-150)            >=160             -0.0986199   -0.1890794   -0.0081605
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [150-155)            >=160             -0.0843039   -0.1456339   -0.0229738
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [155-160)            >=160             -0.0471676   -0.1080508    0.0137157
12-24 months   ki1000111-WASH-Kenya       KENYA                          >=160                >=160              0.0000000    0.0000000    0.0000000
12-24 months   ki1000111-WASH-Kenya       KENYA                          [145-150)            >=160             -0.0434019   -0.1263646    0.0395608
12-24 months   ki1000111-WASH-Kenya       KENYA                          [150-155)            >=160             -0.0651576   -0.1165331   -0.0137822
12-24 months   ki1000111-WASH-Kenya       KENYA                          [155-160)            >=160             -0.0327418   -0.0683045    0.0028209
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=160                >=160              0.0000000    0.0000000    0.0000000
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     <145                 >=160             -0.1358012   -0.2079981   -0.0636043
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [145-150)            >=160             -0.1396383   -0.2086553   -0.0706213
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [150-155)            >=160             -0.1145535   -0.1828441   -0.0462628
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [155-160)            >=160             -0.0831998   -0.1571329   -0.0092668
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=160                >=160              0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     <145                 >=160             -0.0682449   -0.1286070   -0.0078828
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [145-150)            >=160             -0.0300131   -0.0848875    0.0248613
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [150-155)            >=160             -0.0209431   -0.0763504    0.0344642
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [155-160)            >=160             -0.0006890   -0.0600301    0.0586521
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=160                >=160              0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <145                 >=160             -0.0869251   -0.1708499   -0.0030003
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [145-150)            >=160             -0.0641612   -0.1449835    0.0166611
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [150-155)            >=160             -0.0480891   -0.1291931    0.0330148
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [155-160)            >=160             -0.0097044   -0.0924620    0.0730532
12-24 months   ki1135781-COHORTS          GUATEMALA                      >=160                >=160              0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          GUATEMALA                      <145                 >=160             -0.0980149   -0.1720614   -0.0239683
12-24 months   ki1135781-COHORTS          GUATEMALA                      [145-150)            >=160             -0.0582267   -0.1312411    0.0147876
12-24 months   ki1135781-COHORTS          GUATEMALA                      [150-155)            >=160             -0.0659982   -0.1403601    0.0083638
12-24 months   ki1135781-COHORTS          GUATEMALA                      [155-160)            >=160             -0.0101459   -0.0890950    0.0688033
12-24 months   ki1135781-COHORTS          INDIA                          >=160                >=160              0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          INDIA                          <145                 >=160             -0.0774517   -0.1158874   -0.0390160
12-24 months   ki1135781-COHORTS          INDIA                          [145-150)            >=160             -0.0671943   -0.0988744   -0.0355141
12-24 months   ki1135781-COHORTS          INDIA                          [150-155)            >=160             -0.0524179   -0.0839115   -0.0209244
12-24 months   ki1135781-COHORTS          INDIA                          [155-160)            >=160             -0.0285692   -0.0622714    0.0051329
12-24 months   ki1135781-COHORTS          PHILIPPINES                    >=160                >=160              0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          PHILIPPINES                    <145                 >=160             -0.1121256   -0.1550006   -0.0692506
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [145-150)            >=160             -0.0827066   -0.1214505   -0.0439626
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [150-155)            >=160             -0.0660274   -0.1041376   -0.0279172
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [155-160)            >=160             -0.0578441   -0.0981012   -0.0175870
12-24 months   ki1148112-iLiNS-DOSE       MALAWI                         >=160                >=160              0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-iLiNS-DOSE       MALAWI                         <145                 >=160              0.0091294   -0.0685212    0.0867799
12-24 months   ki1148112-iLiNS-DOSE       MALAWI                         [145-150)            >=160             -0.0156828   -0.0587746    0.0274089
12-24 months   ki1148112-iLiNS-DOSE       MALAWI                         [150-155)            >=160             -0.0213560   -0.0576288    0.0149167
12-24 months   ki1148112-iLiNS-DOSE       MALAWI                         [155-160)            >=160             -0.0000210   -0.0399246    0.0398825
12-24 months   ki1148112-LCNI-5           MALAWI                         >=160                >=160              0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5           MALAWI                         <145                 >=160             -0.1154730   -0.1793603   -0.0515858
12-24 months   ki1148112-LCNI-5           MALAWI                         [145-150)            >=160             -0.0541621   -0.1255108    0.0171867
12-24 months   ki1148112-LCNI-5           MALAWI                         [150-155)            >=160             -0.0196959   -0.0630782    0.0236864
12-24 months   ki1148112-LCNI-5           MALAWI                         [155-160)            >=160              0.0214222   -0.0192279    0.0620722
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=160                >=160              0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <145                 >=160             -0.0758385   -0.1082080   -0.0434690
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [145-150)            >=160             -0.0553497   -0.0855846   -0.0251148
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [150-155)            >=160             -0.0452241   -0.0760563   -0.0143918
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [155-160)            >=160             -0.0211749   -0.0544200    0.0120702
