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

agecat         studyid                    country                        mwtkg        n_cell       n
-------------  -------------------------  -----------------------------  ----------  -------  ------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=57.5           47     244
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <42.5            55     244
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [42.5-50)        85     244
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [50-57.5)        57     244
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=57.5           77     566
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <42.5           153     566
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [42.5-50)       196     566
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [50-57.5)       140     566
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=57.5          116     633
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <42.5           162     633
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [42.5-50)       195     633
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [50-57.5)       160     633
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5          185     720
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <42.5           100     720
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [42.5-50)       224     720
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [50-57.5)       211     720
0-3 months     ki1119695-PROBIT           BELARUS                        >=57.5         9450   12629
0-3 months     ki1119695-PROBIT           BELARUS                        <42.5            31   12629
0-3 months     ki1119695-PROBIT           BELARUS                        [42.5-50)       499   12629
0-3 months     ki1119695-PROBIT           BELARUS                        [50-57.5)      2649   12629
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=57.5          119     180
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <42.5            12     180
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [42.5-50)        13     180
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [50-57.5)        36     180
0-3 months     ki0047075b-MAL-ED          INDIA                          >=57.5           36     201
0-3 months     ki0047075b-MAL-ED          INDIA                          <42.5            35     201
0-3 months     ki0047075b-MAL-ED          INDIA                          [42.5-50)        67     201
0-3 months     ki0047075b-MAL-ED          INDIA                          [50-57.5)        63     201
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=57.5           94    1166
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <42.5           266    1166
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [42.5-50)       543    1166
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [50-57.5)       263    1166
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=57.5           63     175
0-3 months     ki0047075b-MAL-ED          NEPAL                          <42.5             2     175
0-3 months     ki0047075b-MAL-ED          NEPAL                          [42.5-50)        33     175
0-3 months     ki0047075b-MAL-ED          NEPAL                          [50-57.5)        77     175
0-3 months     ki0047075b-MAL-ED          PERU                           >=57.5           97     270
0-3 months     ki0047075b-MAL-ED          PERU                           <42.5            12     270
0-3 months     ki0047075b-MAL-ED          PERU                           [42.5-50)        53     270
0-3 months     ki0047075b-MAL-ED          PERU                           [50-57.5)       108     270
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=57.5          162     223
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <42.5             2     223
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [42.5-50)        12     223
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [50-57.5)        47     223
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=57.5           94     229
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <42.5             7     229
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [42.5-50)        58     229
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [50-57.5)        70     229
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5         4191    7588
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <42.5            94    7588
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [42.5-50)       917    7588
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [50-57.5)      2386    7588
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=57.5           46     231
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <42.5            50     231
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [42.5-50)        81     231
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [50-57.5)        54     231
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=57.5           73     523
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <42.5           146     523
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [42.5-50)       178     523
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [50-57.5)       126     523
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=57.5          106     573
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <42.5           144     573
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [42.5-50)       173     573
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [50-57.5)       150     573
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5          181     695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <42.5            97     695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [42.5-50)       217     695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [50-57.5)       200     695
3-6 months     ki1119695-PROBIT           BELARUS                        >=57.5         8299   11090
3-6 months     ki1119695-PROBIT           BELARUS                        <42.5            26   11090
3-6 months     ki1119695-PROBIT           BELARUS                        [42.5-50)       454   11090
3-6 months     ki1119695-PROBIT           BELARUS                        [50-57.5)      2311   11090
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=57.5          137     207
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <42.5            11     207
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [42.5-50)        18     207
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [50-57.5)        41     207
3-6 months     ki0047075b-MAL-ED          INDIA                          >=57.5           39     228
3-6 months     ki0047075b-MAL-ED          INDIA                          <42.5            43     228
3-6 months     ki0047075b-MAL-ED          INDIA                          [42.5-50)        73     228
3-6 months     ki0047075b-MAL-ED          INDIA                          [50-57.5)        73     228
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=57.5           90    1121
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <42.5           257    1121
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [42.5-50)       513    1121
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [50-57.5)       261    1121
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=57.5           85     233
3-6 months     ki0047075b-MAL-ED          NEPAL                          <42.5             2     233
3-6 months     ki0047075b-MAL-ED          NEPAL                          [42.5-50)        48     233
3-6 months     ki0047075b-MAL-ED          NEPAL                          [50-57.5)        98     233
3-6 months     ki0047075b-MAL-ED          PERU                           >=57.5           98     266
3-6 months     ki0047075b-MAL-ED          PERU                           <42.5            13     266
3-6 months     ki0047075b-MAL-ED          PERU                           [42.5-50)        52     266
3-6 months     ki0047075b-MAL-ED          PERU                           [50-57.5)       103     266
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=57.5          169     237
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <42.5             3     237
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [42.5-50)        15     237
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [50-57.5)        50     237
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=57.5           98     239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <42.5             8     239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [42.5-50)        63     239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [50-57.5)        70     239
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=57.5         1047    1628
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <42.5            18    1628
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [42.5-50)       133    1628
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [50-57.5)       430    1628
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5         3243    5849
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <42.5            67    5849
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [42.5-50)       686    5849
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [50-57.5)      1853    5849
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=57.5           44     220
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     <42.5            45     220
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [42.5-50)        78     220
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [50-57.5)        53     220
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=57.5           66     482
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     <42.5           136     482
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [42.5-50)       162     482
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [50-57.5)       118     482
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=57.5          102     545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     <42.5           140     545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [42.5-50)       162     545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [50-57.5)       141     545
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5          178     676
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <42.5            94     676
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [42.5-50)       216     676
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [50-57.5)       188     676
6-12 months    ki1119695-PROBIT           BELARUS                        >=57.5         8100   10834
6-12 months    ki1119695-PROBIT           BELARUS                        <42.5            24   10834
6-12 months    ki1119695-PROBIT           BELARUS                        [42.5-50)       450   10834
6-12 months    ki1119695-PROBIT           BELARUS                        [50-57.5)      2260   10834
6-12 months    ki0047075b-MAL-ED          BRAZIL                         >=57.5          126     193
6-12 months    ki0047075b-MAL-ED          BRAZIL                         <42.5            11     193
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [42.5-50)        17     193
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [50-57.5)        39     193
6-12 months    ki0047075b-MAL-ED          INDIA                          >=57.5           41     223
6-12 months    ki0047075b-MAL-ED          INDIA                          <42.5            42     223
6-12 months    ki0047075b-MAL-ED          INDIA                          [42.5-50)        69     223
6-12 months    ki0047075b-MAL-ED          INDIA                          [50-57.5)        71     223
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=57.5           92    1132
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          <42.5           250    1132
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [42.5-50)       524    1132
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [50-57.5)       266    1132
6-12 months    ki1148112-LCNI-5           MALAWI                         >=57.5           62     434
6-12 months    ki1148112-LCNI-5           MALAWI                         <42.5            38     434
6-12 months    ki1148112-LCNI-5           MALAWI                         [42.5-50)       177     434
6-12 months    ki1148112-LCNI-5           MALAWI                         [50-57.5)       157     434
6-12 months    ki0047075b-MAL-ED          NEPAL                          >=57.5           85     230
6-12 months    ki0047075b-MAL-ED          NEPAL                          <42.5             2     230
6-12 months    ki0047075b-MAL-ED          NEPAL                          [42.5-50)        47     230
6-12 months    ki0047075b-MAL-ED          NEPAL                          [50-57.5)        96     230
6-12 months    ki0047075b-MAL-ED          PERU                           >=57.5           89     236
6-12 months    ki0047075b-MAL-ED          PERU                           <42.5            12     236
6-12 months    ki0047075b-MAL-ED          PERU                           [42.5-50)        47     236
6-12 months    ki0047075b-MAL-ED          PERU                           [50-57.5)        88     236
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=57.5          161     228
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <42.5             3     228
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [42.5-50)        14     228
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [50-57.5)        50     228
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=57.5           92     223
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <42.5             8     223
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [42.5-50)        60     223
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [50-57.5)        63     223
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=57.5          678    1060
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <42.5            14    1060
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [42.5-50)        94    1060
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [50-57.5)       274    1060
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5         2417    4547
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <42.5            54    4547
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [42.5-50)       605    4547
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [50-57.5)      1471    4547
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=57.5           43     206
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     <42.5            43     206
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     [42.5-50)        72     206
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     [50-57.5)        48     206
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=57.5           58     421
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     <42.5           122     421
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [42.5-50)       144     421
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [50-57.5)        97     421
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=57.5           88     458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     <42.5           122     458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [42.5-50)       133     458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [50-57.5)       115     458
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5          137     495
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <42.5            63     495
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [42.5-50)       160     495
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [50-57.5)       135     495
12-24 months   ki1119695-PROBIT           BELARUS                        >=57.5         1891    2523
12-24 months   ki1119695-PROBIT           BELARUS                        <42.5             3    2523
12-24 months   ki1119695-PROBIT           BELARUS                        [42.5-50)        98    2523
12-24 months   ki1119695-PROBIT           BELARUS                        [50-57.5)       531    2523
12-24 months   ki0047075b-MAL-ED          BRAZIL                         >=57.5          106     164
12-24 months   ki0047075b-MAL-ED          BRAZIL                         <42.5             8     164
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [42.5-50)        15     164
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [50-57.5)        35     164
12-24 months   ki0047075b-MAL-ED          INDIA                          >=57.5           40     224
12-24 months   ki0047075b-MAL-ED          INDIA                          <42.5            43     224
12-24 months   ki0047075b-MAL-ED          INDIA                          [42.5-50)        69     224
12-24 months   ki0047075b-MAL-ED          INDIA                          [50-57.5)        72     224
12-24 months   ki1148112-LCNI-5           MALAWI                         >=57.5           44     310
12-24 months   ki1148112-LCNI-5           MALAWI                         <42.5            28     310
12-24 months   ki1148112-LCNI-5           MALAWI                         [42.5-50)       123     310
12-24 months   ki1148112-LCNI-5           MALAWI                         [50-57.5)       115     310
12-24 months   ki0047075b-MAL-ED          NEPAL                          >=57.5           83     226
12-24 months   ki0047075b-MAL-ED          NEPAL                          <42.5             2     226
12-24 months   ki0047075b-MAL-ED          NEPAL                          [42.5-50)        47     226
12-24 months   ki0047075b-MAL-ED          NEPAL                          [50-57.5)        94     226
12-24 months   ki0047075b-MAL-ED          PERU                           >=57.5           75     191
12-24 months   ki0047075b-MAL-ED          PERU                           <42.5             8     191
12-24 months   ki0047075b-MAL-ED          PERU                           [42.5-50)        37     191
12-24 months   ki0047075b-MAL-ED          PERU                           [50-57.5)        71     191
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=57.5          162     226
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <42.5             3     226
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [42.5-50)        14     226
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [50-57.5)        47     226
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=57.5           85     207
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <42.5             6     207
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [42.5-50)        56     207
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [50-57.5)        60     207
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=57.5            1       2
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [50-57.5)         1       2
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5          131     302
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <42.5             8     302
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [42.5-50)        62     302
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [50-57.5)       101     302


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

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/5f219f1c-0d67-4f62-85b1-d980c7685da3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/5f219f1c-0d67-4f62-85b1-d980c7685da3/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=57.5               NA                3.7595753   3.6638992   3.8552514
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <42.5                NA                3.4305712   3.3154748   3.5456676
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [42.5-50)            NA                3.5909423   3.5014351   3.6804495
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [50-57.5)            NA                3.8070376   3.7260361   3.8880391
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=57.5               NA                4.0549731   3.9412235   4.1687228
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <42.5                NA                4.0849062   3.8203328   4.3494796
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [42.5-50)            NA                3.6882743   3.4486950   3.9278536
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [50-57.5)            NA                4.0601403   3.8658802   4.2544004
0-3 months     ki0047075b-MAL-ED          INDIA                          >=57.5               NA                3.6167474   3.4110981   3.8223968
0-3 months     ki0047075b-MAL-ED          INDIA                          <42.5                NA                3.5659793   3.4306129   3.7013458
0-3 months     ki0047075b-MAL-ED          INDIA                          [42.5-50)            NA                3.6356223   3.5209545   3.7502901
0-3 months     ki0047075b-MAL-ED          INDIA                          [50-57.5)            NA                3.6089836   3.4692057   3.7487615
0-3 months     ki0047075b-MAL-ED          PERU                           >=57.5               NA                3.3751004   3.2891092   3.4610915
0-3 months     ki0047075b-MAL-ED          PERU                           <42.5                NA                3.6362690   3.5377529   3.7347851
0-3 months     ki0047075b-MAL-ED          PERU                           [42.5-50)            NA                3.5630178   3.4667012   3.6593344
0-3 months     ki0047075b-MAL-ED          PERU                           [50-57.5)            NA                3.3016484   3.2012368   3.4020599
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=57.5               NA                3.4946017   3.3787095   3.6104940
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <42.5                NA                4.2737717   4.0485548   4.4989886
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [42.5-50)            NA                3.4727712   3.3317126   3.6138297
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [50-57.5)            NA                3.5457029   3.3994795   3.6919262
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=57.5               NA                3.6405856   3.5445646   3.7366066
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <42.5                NA                3.4859625   3.4339018   3.5380231
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [42.5-50)            NA                3.6218635   3.5859138   3.6578132
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [50-57.5)            NA                3.6540337   3.6105198   3.6975475
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=57.5               NA                3.3827525   3.2050086   3.5604964
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <42.5                NA                3.3228862   3.2259571   3.4198152
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [42.5-50)            NA                3.3160500   3.2277172   3.4043828
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [50-57.5)            NA                3.2826920   3.1711340   3.3942500
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=57.5               NA                3.5646765   3.4884939   3.6408591
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <42.5                NA                3.4234823   3.3603269   3.4866376
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [42.5-50)            NA                3.4629977   3.4008991   3.5250963
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [50-57.5)            NA                3.6069155   3.5311769   3.6826541
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5               NA                3.3172863   3.2493802   3.3851924
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <42.5                NA                3.2634252   3.1687055   3.3581450
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [42.5-50)            NA                3.2828540   3.2104656   3.3552424
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [50-57.5)            NA                3.3271487   3.2619561   3.3923413
0-3 months     ki1119695-PROBIT           BELARUS                        >=57.5               NA                2.8333973   2.7137451   2.9530495
0-3 months     ki1119695-PROBIT           BELARUS                        <42.5                NA                2.7238268   2.5819664   2.8656872
0-3 months     ki1119695-PROBIT           BELARUS                        [42.5-50)            NA                2.8519735   2.7454989   2.9584481
0-3 months     ki1119695-PROBIT           BELARUS                        [50-57.5)            NA                2.8662859   2.7685219   2.9640499
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5               NA                3.4113260   3.3828104   3.4398415
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <42.5                NA                3.1303224   3.0209951   3.2396497
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [42.5-50)            NA                3.2781292   3.2221378   3.3341207
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [50-57.5)            NA                3.3311456   3.2935348   3.3687564
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=57.5               NA                1.8632753   1.8104131   1.9161375
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <42.5                NA                1.9067648   1.8230788   1.9904509
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [42.5-50)            NA                1.9459613   1.8691661   2.0227564
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [50-57.5)            NA                1.9293349   1.8549560   2.0037138
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=57.5               NA                2.1303533   2.0328486   2.2278580
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <42.5                NA                1.8134132   1.6250684   2.0017580
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [42.5-50)            NA                2.1272861   2.0070287   2.2475435
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [50-57.5)            NA                2.1740231   2.0197710   2.3282753
3-6 months     ki0047075b-MAL-ED          INDIA                          >=57.5               NA                1.6861158   1.5599207   1.8123109
3-6 months     ki0047075b-MAL-ED          INDIA                          <42.5                NA                1.8670485   1.7396150   1.9944821
3-6 months     ki0047075b-MAL-ED          INDIA                          [42.5-50)            NA                1.8381000   1.7602745   1.9159254
3-6 months     ki0047075b-MAL-ED          INDIA                          [50-57.5)            NA                1.7959941   1.7134835   1.8785046
3-6 months     ki0047075b-MAL-ED          PERU                           >=57.5               NA                2.0304282   1.9366006   2.1242558
3-6 months     ki0047075b-MAL-ED          PERU                           <42.5                NA                2.1285539   1.9856409   2.2714669
3-6 months     ki0047075b-MAL-ED          PERU                           [42.5-50)            NA                2.0211292   1.9212100   2.1210485
3-6 months     ki0047075b-MAL-ED          PERU                           [50-57.5)            NA                2.1124728   2.0132097   2.2117360
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=57.5               NA                1.8290859   1.7240101   1.9341616
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <42.5                NA                1.5846337   1.1888099   1.9804575
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [42.5-50)            NA                1.8648932   1.7402785   1.9895079
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [50-57.5)            NA                1.8282209   1.6989306   1.9575113
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=57.5               NA                2.0544980   1.9673821   2.1416138
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <42.5                NA                1.8903318   1.7951090   1.9855546
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [42.5-50)            NA                1.9304084   1.8731584   1.9876585
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [50-57.5)            NA                1.9825708   1.9431536   2.0219879
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=57.5               NA                1.9448745   1.8240290   2.0657200
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <42.5                NA                1.7049328   1.6235731   1.7862924
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [42.5-50)            NA                1.8625421   1.7837833   1.9413009
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [50-57.5)            NA                1.8603252   1.7621883   1.9584621
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=57.5               NA                1.9256645   1.8502783   2.0010507
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <42.5                NA                1.9390468   1.8731845   2.0049091
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [42.5-50)            NA                1.9156592   1.8582736   1.9730448
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [50-57.5)            NA                1.9955433   1.9320234   2.0590631
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5               NA                1.9445325   1.8775668   2.0114982
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <42.5                NA                1.9682362   1.8871578   2.0493146
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [42.5-50)            NA                2.0080475   1.9405108   2.0755842
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [50-57.5)            NA                2.0220541   1.9544722   2.0896361
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=57.5               NA                1.8057760   1.7601846   1.8513675
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <42.5                NA                1.4845903   1.3550248   1.6141557
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [42.5-50)            NA                1.7851169   1.6792853   1.8909485
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [50-57.5)            NA                1.7663128   1.7043670   1.8282586
3-6 months     ki1119695-PROBIT           BELARUS                        >=57.5               NA                2.0908135   2.0494108   2.1322162
3-6 months     ki1119695-PROBIT           BELARUS                        <42.5                NA                2.0208535   1.9108771   2.1308299
3-6 months     ki1119695-PROBIT           BELARUS                        [42.5-50)            NA                2.0493536   1.9745562   2.1241509
3-6 months     ki1119695-PROBIT           BELARUS                        [50-57.5)            NA                2.0875462   2.0415812   2.1335111
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5               NA                1.9785258   1.9516104   2.0054412
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <42.5                NA                2.0451009   1.9358655   2.1543363
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [42.5-50)            NA                1.9734642   1.9224463   2.0244821
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [50-57.5)            NA                1.9571245   1.9221831   1.9920659
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=57.5               NA                1.1085299   1.0577466   1.1593133
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     <42.5                NA                1.0723840   1.0347637   1.1100043
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [42.5-50)            NA                1.1164365   1.0821684   1.1507045
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [50-57.5)            NA                1.1239671   1.0899490   1.1579852
6-12 months    ki0047075b-MAL-ED          BRAZIL                         >=57.5               NA                1.3918491   1.3390062   1.4446919
6-12 months    ki0047075b-MAL-ED          BRAZIL                         <42.5                NA                1.2933888   1.1770655   1.4097121
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [42.5-50)            NA                1.2824148   1.2288644   1.3359652
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [50-57.5)            NA                1.2727788   1.1952464   1.3503112
6-12 months    ki0047075b-MAL-ED          INDIA                          >=57.5               NA                1.0789106   1.0353886   1.1224326
6-12 months    ki0047075b-MAL-ED          INDIA                          <42.5                NA                1.1093853   1.0537456   1.1650250
6-12 months    ki0047075b-MAL-ED          INDIA                          [42.5-50)            NA                1.1019331   1.0565539   1.1473123
6-12 months    ki0047075b-MAL-ED          INDIA                          [50-57.5)            NA                1.1193067   1.0852742   1.1533393
6-12 months    ki0047075b-MAL-ED          PERU                           >=57.5               NA                1.1732478   1.1293473   1.2171483
6-12 months    ki0047075b-MAL-ED          PERU                           <42.5                NA                1.0302433   0.9601270   1.1003597
6-12 months    ki0047075b-MAL-ED          PERU                           [42.5-50)            NA                1.1892092   1.1446703   1.2337482
6-12 months    ki0047075b-MAL-ED          PERU                           [50-57.5)            NA                1.1789447   1.1312505   1.2266389
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=57.5               NA                0.9696160   0.9155500   1.0236820
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <42.5                NA                1.2365235   1.1198665   1.3531805
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [42.5-50)            NA                1.0229397   0.9710199   1.0748594
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [50-57.5)            NA                1.0531927   0.9945778   1.1118076
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=57.5               NA                1.1352600   1.0735309   1.1969891
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          <42.5                NA                1.0633794   1.0220064   1.1047523
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [42.5-50)            NA                1.0939982   1.0628895   1.1251069
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [50-57.5)            NA                1.1317228   1.0959701   1.1674754
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=57.5               NA                1.2051070   1.1495259   1.2606882
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     <42.5                NA                1.1199954   1.0778970   1.1620938
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [42.5-50)            NA                1.1474994   1.1100940   1.1849048
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [50-57.5)            NA                1.2304496   1.1836860   1.2772132
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=57.5               NA                1.2439348   1.2104006   1.2774690
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     <42.5                NA                1.1002225   1.0674185   1.1330265
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [42.5-50)            NA                1.1660664   1.1380030   1.1941298
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [50-57.5)            NA                1.2198336   1.1882660   1.2514013
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5               NA                1.2795639   1.2453228   1.3138051
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <42.5                NA                1.1687917   1.1314777   1.2061057
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [42.5-50)            NA                1.2065771   1.1772101   1.2359440
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [50-57.5)            NA                1.2274048   1.1960458   1.2587638
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=57.5               NA                1.2078497   1.1816446   1.2340548
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <42.5                NA                1.0987255   1.0064404   1.1910106
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [42.5-50)            NA                1.1612473   1.0901668   1.2323277
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [50-57.5)            NA                1.1955032   1.1553487   1.2356577
6-12 months    ki1119695-PROBIT           BELARUS                        >=57.5               NA                1.4775526   1.4379030   1.5172021
6-12 months    ki1119695-PROBIT           BELARUS                        <42.5                NA                1.3783004   1.3137562   1.4428446
6-12 months    ki1119695-PROBIT           BELARUS                        [42.5-50)            NA                1.4635247   1.4193580   1.5076914
6-12 months    ki1119695-PROBIT           BELARUS                        [50-57.5)            NA                1.4586098   1.4176819   1.4995376
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5               NA                1.2000153   1.1852048   1.2148257
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <42.5                NA                1.0738921   1.0171335   1.1306507
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [42.5-50)            NA                1.1586878   1.1313417   1.1860339
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [50-57.5)            NA                1.2030687   1.1845567   1.2215808
6-12 months    ki1148112-LCNI-5           MALAWI                         >=57.5               NA                1.2653986   1.2198361   1.3109611
6-12 months    ki1148112-LCNI-5           MALAWI                         <42.5                NA                1.2507670   1.1891615   1.3123725
6-12 months    ki1148112-LCNI-5           MALAWI                         [42.5-50)            NA                1.2804330   1.2414917   1.3193744
6-12 months    ki1148112-LCNI-5           MALAWI                         [50-57.5)            NA                1.2875098   1.2450690   1.3299507
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=57.5               NA                0.8817870   0.8615557   0.9020182
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     <42.5                NA                0.7690741   0.7417078   0.7964403
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     [42.5-50)            NA                0.8211193   0.8008298   0.8414088
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     [50-57.5)            NA                0.9148993   0.8866292   0.9431694
12-24 months   ki0047075b-MAL-ED          BRAZIL                         >=57.5               NA                0.9740355   0.9420837   1.0059872
12-24 months   ki0047075b-MAL-ED          BRAZIL                         <42.5                NA                0.8737938   0.8145692   0.9330184
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [42.5-50)            NA                1.0768657   1.0242452   1.1294863
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [50-57.5)            NA                1.0479140   0.9871656   1.1086624
12-24 months   ki0047075b-MAL-ED          INDIA                          >=57.5               NA                0.9296752   0.8926120   0.9667385
12-24 months   ki0047075b-MAL-ED          INDIA                          <42.5                NA                0.8553225   0.8207827   0.8898623
12-24 months   ki0047075b-MAL-ED          INDIA                          [42.5-50)            NA                0.8860887   0.8608779   0.9112994
12-24 months   ki0047075b-MAL-ED          INDIA                          [50-57.5)            NA                0.8615596   0.8354426   0.8876767
12-24 months   ki0047075b-MAL-ED          PERU                           >=57.5               NA                0.8804842   0.8519608   0.9090076
12-24 months   ki0047075b-MAL-ED          PERU                           <42.5                NA                0.6635959   0.6218498   0.7053420
12-24 months   ki0047075b-MAL-ED          PERU                           [42.5-50)            NA                0.7232374   0.6947844   0.7516905
12-24 months   ki0047075b-MAL-ED          PERU                           [50-57.5)            NA                0.8240590   0.7973366   0.8507814
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=57.5               NA                0.8065458   0.7686916   0.8444000
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <42.5                NA                0.7092326   0.5702630   0.8482022
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [42.5-50)            NA                0.7627006   0.7205838   0.8048174
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [50-57.5)            NA                0.7183803   0.6786030   0.7581576
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=57.5               NA                0.7855381   0.7486344   0.8224418
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     <42.5                NA                0.7168396   0.6911970   0.7424823
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [42.5-50)            NA                0.7512496   0.7285963   0.7739029
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [50-57.5)            NA                0.7523742   0.7229388   0.7818096
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=57.5               NA                0.9124106   0.8879089   0.9369123
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     <42.5                NA                0.8253165   0.8056311   0.8450018
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [42.5-50)            NA                0.8380412   0.8171701   0.8589124
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [50-57.5)            NA                0.8859338   0.8628686   0.9089991
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5               NA                0.9301207   0.9099285   0.9503129
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <42.5                NA                0.8271427   0.8044112   0.8498741
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [42.5-50)            NA                0.8512436   0.8303734   0.8721138
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [50-57.5)            NA                0.8801773   0.8563520   0.9040026
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5               NA                0.7225777   0.6843715   0.7607840
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <42.5                NA                0.7345915   0.6481303   0.8210527
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [42.5-50)            NA                0.6473630   0.5915793   0.7031466
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [50-57.5)            NA                0.7025426   0.6668067   0.7382786
12-24 months   ki1148112-LCNI-5           MALAWI                         >=57.5               NA                0.8346296   0.7954567   0.8738025
12-24 months   ki1148112-LCNI-5           MALAWI                         <42.5                NA                0.8168459   0.7579873   0.8757045
12-24 months   ki1148112-LCNI-5           MALAWI                         [42.5-50)            NA                0.8227005   0.7975797   0.8478212
12-24 months   ki1148112-LCNI-5           MALAWI                         [50-57.5)            NA                0.8532861   0.8245393   0.8820329


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                3.5634447   3.5006347   3.6262547
0-3 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                4.0509714   3.9492443   4.1526985
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                3.5764512   3.4977133   3.6551891
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                3.3169985   3.2535876   3.3804093
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                3.4816904   3.4044928   3.5588880
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                3.6027228   3.5754164   3.6300291
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                3.3129255   3.2581305   3.3677204
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                3.4842409   3.4451170   3.5233649
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                3.3028656   3.2646714   3.3410598
0-3 months     ki1119695-PROBIT           BELARUS                        NA                   NA                2.8371979   2.7235359   2.9508598
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                3.3681331   3.3469290   3.3893373
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                1.9280462   1.8787523   1.9773401
3-6 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                2.1465654   2.0670402   2.2260907
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                1.8804733   1.8192508   1.9416958
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                2.0179168   1.9519428   2.0838909
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.8300902   1.7622436   1.8979368
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                1.9414853   1.8982034   1.9847672
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                1.8326915   1.7846731   1.8807099
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.9654067   1.9302800   2.0005334
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                2.0057973   1.9693775   2.0422170
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.7969193   1.7606988   1.8331397
3-6 months     ki1119695-PROBIT           BELARUS                        NA                   NA                2.0905265   2.0499813   2.1310716
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                1.9747138   1.9547117   1.9947160
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                1.1143928   1.0896103   1.1391753
6-12 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                1.3821617   1.3363222   1.4280012
6-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                1.1193380   1.0909904   1.1476855
6-12 months    ki0047075b-MAL-ED          PERU                           NA                   NA                1.2115356   1.1787814   1.2442898
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.0019524   0.9648566   1.0390481
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                1.0992229   1.0870848   1.1113609
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                1.1679344   1.1454934   1.1903754
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.1731762   1.1558671   1.1904853
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                1.2281313   1.2106849   1.2455776
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.1973654   1.1756426   1.2190883
6-12 months    ki1119695-PROBIT           BELARUS                        NA                   NA                1.4725107   1.4339287   1.5110927
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                1.1977224   1.1867758   1.2086690
6-12 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                1.2792060   1.2531790   1.3052331
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.8459764   0.8299714   0.8619814
12-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.9836574   0.9529821   1.0143327
12-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.8805522   0.8631583   0.8979461
12-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.8463453   0.8256453   0.8670453
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7663111   0.7428636   0.7897586
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.7513013   0.7366996   0.7659029
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.8575519   0.8455586   0.8695452
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.8755729   0.8637860   0.8873598
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.7098483   0.6838588   0.7358377
12-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.8406140   0.8238233   0.8574047


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <42.5                >=57.5            -0.3290041   -0.4794925   -0.1785157
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [42.5-50)            >=57.5            -0.1686330   -0.2997665   -0.0374996
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [50-57.5)            >=57.5             0.0474623   -0.0785434    0.1734679
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <42.5                >=57.5             0.0299331   -0.2580488    0.3179150
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [42.5-50)            >=57.5            -0.3666988   -0.6322367   -0.1011609
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [50-57.5)            >=57.5             0.0051672   -0.2198985    0.2302329
0-3 months     ki0047075b-MAL-ED          INDIA                          >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          <42.5                >=57.5            -0.0507681   -0.2969334    0.1953972
0-3 months     ki0047075b-MAL-ED          INDIA                          [42.5-50)            >=57.5             0.0188748   -0.2166037    0.2543533
0-3 months     ki0047075b-MAL-ED          INDIA                          [50-57.5)            >=57.5            -0.0077639   -0.2566739    0.2411462
0-3 months     ki0047075b-MAL-ED          PERU                           >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           <42.5                >=57.5             0.2611687    0.1295739    0.3927634
0-3 months     ki0047075b-MAL-ED          PERU                           [42.5-50)            >=57.5             0.1879174    0.0576986    0.3181363
0-3 months     ki0047075b-MAL-ED          PERU                           [50-57.5)            >=57.5            -0.0734520   -0.2061625    0.0592586
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <42.5                >=57.5             0.7791699    0.5263634    1.0319765
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [42.5-50)            >=57.5            -0.0218306   -0.2047662    0.1611050
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [50-57.5)            >=57.5             0.0511011   -0.1353740    0.2375763
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <42.5                >=57.5            -0.1546232   -0.2911496   -0.0180967
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [42.5-50)            >=57.5            -0.0187221   -0.1276685    0.0902242
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [50-57.5)            >=57.5             0.0134480   -0.0965583    0.1234544
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <42.5                >=57.5            -0.0598663   -0.2621815    0.1424488
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [42.5-50)            >=57.5            -0.0667025   -0.2650994    0.1316944
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [50-57.5)            >=57.5            -0.1000605   -0.3098316    0.1097106
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <42.5                >=57.5            -0.1411942   -0.2392865   -0.0431020
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [42.5-50)            >=57.5            -0.1016788   -0.1988959   -0.0044617
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [50-57.5)            >=57.5             0.0422390   -0.0643406    0.1488185
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <42.5                >=57.5            -0.0538611   -0.1703677    0.0626456
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [42.5-50)            >=57.5            -0.0344323   -0.1337378    0.0648731
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [50-57.5)            >=57.5             0.0098624   -0.0842827    0.1040076
0-3 months     ki1119695-PROBIT           BELARUS                        >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        <42.5                >=57.5            -0.1095705   -0.2545316    0.0353907
0-3 months     ki1119695-PROBIT           BELARUS                        [42.5-50)            >=57.5             0.0185762   -0.0649928    0.1021452
0-3 months     ki1119695-PROBIT           BELARUS                        [50-57.5)            >=57.5             0.0328886   -0.0132178    0.0789950
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <42.5                >=57.5            -0.2810035   -0.3939035   -0.1681036
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [42.5-50)            >=57.5            -0.1331967   -0.1959859   -0.0704076
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [50-57.5)            >=57.5            -0.0801804   -0.1272901   -0.0330706
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <42.5                >=57.5             0.0434895   -0.0551167    0.1420957
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [42.5-50)            >=57.5             0.0826860   -0.0094449    0.1748168
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [50-57.5)            >=57.5             0.0660596   -0.0245437    0.1566630
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <42.5                >=57.5            -0.3169400   -0.5280237   -0.1058564
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [42.5-50)            >=57.5            -0.0030672   -0.1556674    0.1495330
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [50-57.5)            >=57.5             0.0436699   -0.1376268    0.2249666
3-6 months     ki0047075b-MAL-ED          INDIA                          >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          <42.5                >=57.5             0.1809327    0.0015115    0.3603540
3-6 months     ki0047075b-MAL-ED          INDIA                          [42.5-50)            >=57.5             0.1519842    0.0047643    0.2992042
3-6 months     ki0047075b-MAL-ED          INDIA                          [50-57.5)            >=57.5             0.1098783   -0.0399545    0.2597111
3-6 months     ki0047075b-MAL-ED          PERU                           >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           <42.5                >=57.5             0.0981257   -0.0723876    0.2686389
3-6 months     ki0047075b-MAL-ED          PERU                           [42.5-50)            >=57.5            -0.0092990   -0.1453436    0.1267456
3-6 months     ki0047075b-MAL-ED          PERU                           [50-57.5)            >=57.5             0.0820446   -0.0536897    0.2177790
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <42.5                >=57.5            -0.2444522   -0.6542066    0.1653023
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [42.5-50)            >=57.5             0.0358073   -0.1270336    0.1986483
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [50-57.5)            >=57.5            -0.0008649   -0.1670644    0.1653345
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <42.5                >=57.5            -0.1641662   -0.2820621   -0.0462702
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [42.5-50)            >=57.5            -0.1240896   -0.2171269   -0.0310523
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [50-57.5)            >=57.5            -0.0719272   -0.1810086    0.0371543
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <42.5                >=57.5            -0.2399417   -0.3845764   -0.0953070
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [42.5-50)            >=57.5            -0.0823324   -0.2273193    0.0626546
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [50-57.5)            >=57.5            -0.0845493   -0.2395323    0.0704338
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <42.5                >=57.5             0.0133823   -0.0868403    0.1136049
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [42.5-50)            >=57.5            -0.0100053   -0.1045816    0.0845710
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [50-57.5)            >=57.5             0.0698787   -0.0285844    0.1683418
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <42.5                >=57.5             0.0237037   -0.0813501    0.1287575
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [42.5-50)            >=57.5             0.0635150   -0.0316664    0.1586964
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [50-57.5)            >=57.5             0.0775216   -0.0174777    0.1725210
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <42.5                >=57.5            -0.3211858   -0.4583995   -0.1839720
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [42.5-50)            >=57.5            -0.0206592   -0.1357945    0.0944762
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [50-57.5)            >=57.5            -0.0394633   -0.1161066    0.0371801
3-6 months     ki1119695-PROBIT           BELARUS                        >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        <42.5                >=57.5            -0.0699600   -0.1835637    0.0436437
3-6 months     ki1119695-PROBIT           BELARUS                        [42.5-50)            >=57.5            -0.0414600   -0.1161188    0.0331989
3-6 months     ki1119695-PROBIT           BELARUS                        [50-57.5)            >=57.5            -0.0032674   -0.0365166    0.0299819
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <42.5                >=57.5             0.0665751   -0.0458962    0.1790464
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [42.5-50)            >=57.5            -0.0050616   -0.0627010    0.0525778
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [50-57.5)            >=57.5            -0.0214013   -0.0654625    0.0226598
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     <42.5                >=57.5            -0.0361459   -0.0993334    0.0270416
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [42.5-50)            >=57.5             0.0079066   -0.0533187    0.0691319
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [50-57.5)            >=57.5             0.0154372   -0.0456712    0.0765456
6-12 months    ki0047075b-MAL-ED          BRAZIL                         >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BRAZIL                         <42.5                >=57.5            -0.0984603   -0.2263204    0.0293999
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [42.5-50)            >=57.5            -0.1094343   -0.1842643   -0.0346043
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [50-57.5)            >=57.5            -0.1190703   -0.2131511   -0.0249895
6-12 months    ki0047075b-MAL-ED          INDIA                          >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA                          <42.5                >=57.5             0.0304747   -0.0390196    0.0999691
6-12 months    ki0047075b-MAL-ED          INDIA                          [42.5-50)            >=57.5             0.0230225   -0.0386663    0.0847113
6-12 months    ki0047075b-MAL-ED          INDIA                          [50-57.5)            >=57.5             0.0403962   -0.0137965    0.0945888
6-12 months    ki0047075b-MAL-ED          PERU                           >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          PERU                           <42.5                >=57.5            -0.1430044   -0.2255770   -0.0604319
6-12 months    ki0047075b-MAL-ED          PERU                           [42.5-50)            >=57.5             0.0159615   -0.0460681    0.0779911
6-12 months    ki0047075b-MAL-ED          PERU                           [50-57.5)            >=57.5             0.0056970   -0.0588841    0.0702781
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <42.5                >=57.5             0.2669075    0.1404896    0.3933254
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [42.5-50)            >=57.5             0.0533237   -0.0196026    0.1262500
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [50-57.5)            >=57.5             0.0835767    0.0058796    0.1612739
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          <42.5                >=57.5            -0.0718806   -0.1600357    0.0162744
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [42.5-50)            >=57.5            -0.0412618   -0.1075106    0.0249869
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [50-57.5)            >=57.5            -0.0035373   -0.0802921    0.0732176
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     <42.5                >=57.5            -0.0851116   -0.1548471   -0.0153761
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [42.5-50)            >=57.5            -0.0576077   -0.1246281    0.0094128
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [50-57.5)            >=57.5             0.0253426   -0.0473119    0.0979970
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     <42.5                >=57.5            -0.1437122   -0.1905550   -0.0968695
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [42.5-50)            >=57.5            -0.0778684   -0.1214953   -0.0342416
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [50-57.5)            >=57.5            -0.0241012   -0.0700765    0.0218742
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <42.5                >=57.5            -0.1107722   -0.1613783   -0.0601661
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [42.5-50)            >=57.5            -0.0729869   -0.1181698   -0.0278040
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [50-57.5)            >=57.5            -0.0521592   -0.0986777   -0.0056406
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <42.5                >=57.5            -0.1091242   -0.2048519   -0.0133965
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [42.5-50)            >=57.5            -0.0466024   -0.1221557    0.0289508
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [50-57.5)            >=57.5            -0.0123465   -0.0601237    0.0354307
6-12 months    ki1119695-PROBIT           BELARUS                        >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS                        <42.5                >=57.5            -0.0992522   -0.1735380   -0.0249663
6-12 months    ki1119695-PROBIT           BELARUS                        [42.5-50)            >=57.5            -0.0140279   -0.0414910    0.0134353
6-12 months    ki1119695-PROBIT           BELARUS                        [50-57.5)            >=57.5            -0.0189428   -0.0466294    0.0087439
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <42.5                >=57.5            -0.1261232   -0.1847522   -0.0674942
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [42.5-50)            >=57.5            -0.0413275   -0.0723855   -0.0102695
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [50-57.5)            >=57.5             0.0030535   -0.0206249    0.0267318
6-12 months    ki1148112-LCNI-5           MALAWI                         >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5           MALAWI                         <42.5                >=57.5            -0.0146316   -0.0912141    0.0619509
6-12 months    ki1148112-LCNI-5           MALAWI                         [42.5-50)            >=57.5             0.0150344   -0.0441161    0.0741849
6-12 months    ki1148112-LCNI-5           MALAWI                         [50-57.5)            >=57.5             0.0221112   -0.0396715    0.0838939
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     <42.5                >=57.5            -0.1127129   -0.1466424   -0.0787835
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     [42.5-50)            >=57.5            -0.0606677   -0.0893892   -0.0319462
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     [50-57.5)            >=57.5             0.0331123   -0.0016666    0.0678912
12-24 months   ki0047075b-MAL-ED          BRAZIL                         >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BRAZIL                         <42.5                >=57.5            -0.1002416   -0.1666486   -0.0338347
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [42.5-50)            >=57.5             0.1028303    0.0428236    0.1628370
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [50-57.5)            >=57.5             0.0738785    0.0067600    0.1409971
12-24 months   ki0047075b-MAL-ED          INDIA                          >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          <42.5                >=57.5            -0.0743528   -0.1249572   -0.0237484
12-24 months   ki0047075b-MAL-ED          INDIA                          [42.5-50)            >=57.5            -0.0435866   -0.0883548    0.0011817
12-24 months   ki0047075b-MAL-ED          INDIA                          [50-57.5)            >=57.5            -0.0681156   -0.1134527   -0.0227785
12-24 months   ki0047075b-MAL-ED          PERU                           >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          PERU                           <42.5                >=57.5            -0.2168883   -0.2678331   -0.1659434
12-24 months   ki0047075b-MAL-ED          PERU                           [42.5-50)            >=57.5            -0.1572468   -0.1980053   -0.1164882
12-24 months   ki0047075b-MAL-ED          PERU                           [50-57.5)            >=57.5            -0.0564252   -0.0955112   -0.0173393
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <42.5                >=57.5            -0.0973132   -0.2413601    0.0467337
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [42.5-50)            >=57.5            -0.0438452   -0.1004032    0.0127128
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [50-57.5)            >=57.5            -0.0881655   -0.1430422   -0.0332887
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     <42.5                >=57.5            -0.0686985   -0.1136513   -0.0237457
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [42.5-50)            >=57.5            -0.0342885   -0.0775290    0.0089521
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [50-57.5)            >=57.5            -0.0331639   -0.0801045    0.0137767
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     <42.5                >=57.5            -0.0870941   -0.1184964   -0.0556918
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [42.5-50)            >=57.5            -0.0743693   -0.1065671   -0.0421716
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [50-57.5)            >=57.5            -0.0264768   -0.0600907    0.0071372
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <42.5                >=57.5            -0.1029780   -0.1333156   -0.0726405
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [42.5-50)            >=57.5            -0.0788771   -0.1078506   -0.0499036
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [50-57.5)            >=57.5            -0.0499434   -0.0811718   -0.0187151
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <42.5                >=57.5             0.0120138   -0.0825033    0.1065309
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [42.5-50)            >=57.5            -0.0752148   -0.1428311   -0.0075984
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [50-57.5)            >=57.5            -0.0200351   -0.0723890    0.0323188
12-24 months   ki1148112-LCNI-5           MALAWI                         >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5           MALAWI                         <42.5                >=57.5            -0.0177837   -0.0885360    0.0529687
12-24 months   ki1148112-LCNI-5           MALAWI                         [42.5-50)            >=57.5            -0.0119291   -0.0584867    0.0346285
12-24 months   ki1148112-LCNI-5           MALAWI                         [50-57.5)            >=57.5             0.0186565   -0.0299493    0.0672622
