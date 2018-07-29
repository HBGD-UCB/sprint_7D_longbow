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
![](/tmp/68fb407e-aa62-4641-8464-2dcc83457d3d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/68fb407e-aa62-4641-8464-2dcc83457d3d/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=57.5               NA                 0.0359215   -0.0134893    0.0853323
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <42.5                NA                -0.0861277   -0.1455753   -0.0266801
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [42.5-50)            NA                -0.0350728   -0.0820913    0.0119456
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [50-57.5)            NA                 0.0725244    0.0263747    0.1186742
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=57.5               NA                 0.1901878    0.1336304    0.2467452
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <42.5                NA                 0.2510565    0.1107731    0.3913399
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [42.5-50)            NA                 0.0345663   -0.0643544    0.1334870
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [50-57.5)            NA                 0.1609761    0.0729533    0.2489988
0-3 months     ki0047075b-MAL-ED          INDIA                          >=57.5               NA                -0.0268260   -0.1279525    0.0743004
0-3 months     ki0047075b-MAL-ED          INDIA                          <42.5                NA                 0.0032089   -0.0688157    0.0752335
0-3 months     ki0047075b-MAL-ED          INDIA                          [42.5-50)            NA                 0.0060733   -0.0506224    0.0627691
0-3 months     ki0047075b-MAL-ED          INDIA                          [50-57.5)            NA                -0.0096806   -0.0756908    0.0563295
0-3 months     ki0047075b-MAL-ED          PERU                           >=57.5               NA                -0.1296898   -0.1738118   -0.0855678
0-3 months     ki0047075b-MAL-ED          PERU                           <42.5                NA                -0.0050591   -0.0749668    0.0648486
0-3 months     ki0047075b-MAL-ED          PERU                           [42.5-50)            NA                -0.0357139   -0.0838216    0.0123938
0-3 months     ki0047075b-MAL-ED          PERU                           [50-57.5)            NA                -0.1723254   -0.2245566   -0.1200942
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=57.5               NA                -0.0561858   -0.1043676   -0.0080040
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <42.5                NA                 0.3248895    0.2721720    0.3776071
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [42.5-50)            NA                -0.0219296   -0.0813519    0.0374927
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [50-57.5)            NA                -0.0239098   -0.0873221    0.0395024
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=57.5               NA                 0.0108698   -0.0406583    0.0623979
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <42.5                NA                -0.0198883   -0.0481228    0.0083461
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [42.5-50)            NA                 0.0178795   -0.0006111    0.0363701
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [50-57.5)            NA                 0.0229131    0.0008170    0.0450092
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=57.5               NA                -0.1025252   -0.1876285   -0.0174220
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <42.5                NA                -0.1034774   -0.1529613   -0.0539935
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [42.5-50)            NA                -0.1239401   -0.1677103   -0.0801700
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [50-57.5)            NA                -0.1292392   -0.1830509   -0.0754276
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=57.5               NA                -0.0155079   -0.0499173    0.0189016
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <42.5                NA                -0.0566573   -0.0859128   -0.0274019
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [42.5-50)            NA                -0.0395000   -0.0679602   -0.0110398
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [50-57.5)            NA                 0.0075710   -0.0278576    0.0429997
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5               NA                -0.1105247   -0.1431319   -0.0779175
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <42.5                NA                -0.1345922   -0.1789885   -0.0901959
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [42.5-50)            NA                -0.1364930   -0.1707909   -0.1021952
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [50-57.5)            NA                -0.1126363   -0.1441013   -0.0811714
0-3 months     ki1119695-PROBIT           BELARUS                        >=57.5               NA                -0.4417270   -0.5038903   -0.3795636
0-3 months     ki1119695-PROBIT           BELARUS                        <42.5                NA                -0.4688686   -0.5488682   -0.3888690
0-3 months     ki1119695-PROBIT           BELARUS                        [42.5-50)            NA                -0.4144532   -0.4717149   -0.3571916
0-3 months     ki1119695-PROBIT           BELARUS                        [50-57.5)            NA                -0.4143846   -0.4659661   -0.3628032
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5               NA                -0.1279430   -0.1421241   -0.1137619
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <42.5                NA                -0.2296605   -0.2911187   -0.1682023
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [42.5-50)            NA                -0.1758616   -0.2036799   -0.1480432
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [50-57.5)            NA                -0.1579980   -0.1766597   -0.1393362
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=57.5               NA                -0.0539898   -0.0777412   -0.0302385
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <42.5                NA                -0.0237936   -0.0616013    0.0140141
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [42.5-50)            NA                -0.0189507   -0.0542573    0.0163560
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [50-57.5)            NA                -0.0294559   -0.0636388    0.0047270
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=57.5               NA                 0.0512272    0.0075753    0.0948790
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <42.5                NA                -0.0704943   -0.1510953    0.0101067
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [42.5-50)            NA                 0.0762839    0.0233715    0.1291962
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [50-57.5)            NA                 0.0794499    0.0179789    0.1409208
3-6 months     ki0047075b-MAL-ED          INDIA                          >=57.5               NA                -0.1097594   -0.1644061   -0.0551126
3-6 months     ki0047075b-MAL-ED          INDIA                          <42.5                NA                -0.0318273   -0.0837388    0.0200842
3-6 months     ki0047075b-MAL-ED          INDIA                          [42.5-50)            NA                -0.0632837   -0.0971281   -0.0294393
3-6 months     ki0047075b-MAL-ED          INDIA                          [50-57.5)            NA                -0.0726947   -0.1076552   -0.0377342
3-6 months     ki0047075b-MAL-ED          PERU                           >=57.5               NA                 0.0229137   -0.0206453    0.0664726
3-6 months     ki0047075b-MAL-ED          PERU                           <42.5                NA                 0.0703876    0.0103280    0.1304472
3-6 months     ki0047075b-MAL-ED          PERU                           [42.5-50)            NA                 0.0224956   -0.0230248    0.0680160
3-6 months     ki0047075b-MAL-ED          PERU                           [50-57.5)            NA                 0.0721269    0.0283568    0.1158971
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=57.5               NA                -0.0798376   -0.1292701   -0.0304051
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <42.5                NA                -0.2704884   -0.4166489   -0.1243280
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [42.5-50)            NA                -0.0648096   -0.1236100   -0.0060093
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [50-57.5)            NA                -0.0864454   -0.1462302   -0.0266606
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=57.5               NA                 0.0205555   -0.0201174    0.0612285
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <42.5                NA                -0.0306393   -0.0749363    0.0136578
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [42.5-50)            NA                -0.0216917   -0.0471139    0.0037306
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [50-57.5)            NA                -0.0056993   -0.0230567    0.0116581
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=57.5               NA                -0.0080759   -0.0627442    0.0465924
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <42.5                NA                -0.1025123   -0.1397629   -0.0652618
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [42.5-50)            NA                -0.0391375   -0.0750874   -0.0031875
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [50-57.5)            NA                -0.0419671   -0.0874332    0.0034991
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=57.5               NA                -0.0564346   -0.0920869   -0.0207823
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <42.5                NA                -0.0310904   -0.0615913   -0.0005896
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [42.5-50)            NA                -0.0453439   -0.0722731   -0.0184147
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [50-57.5)            NA                -0.0223918   -0.0517597    0.0069760
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5               NA                -0.0029443   -0.0334457    0.0275571
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <42.5                NA                 0.0179426   -0.0187806    0.0546658
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [42.5-50)            NA                 0.0277406   -0.0037711    0.0592523
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [50-57.5)            NA                 0.0328514    0.0016517    0.0640511
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=57.5               NA                -0.0826446   -0.1037616   -0.0615275
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <42.5                NA                -0.2067942   -0.2682496   -0.1453387
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [42.5-50)            NA                -0.0816330   -0.1311448   -0.0321212
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [50-57.5)            NA                -0.0948506   -0.1236464   -0.0660548
3-6 months     ki1119695-PROBIT           BELARUS                        >=57.5               NA                 0.0451051    0.0256364    0.0645738
3-6 months     ki1119695-PROBIT           BELARUS                        <42.5                NA                 0.0291772   -0.0222218    0.0805763
3-6 months     ki1119695-PROBIT           BELARUS                        [42.5-50)            NA                 0.0346114   -0.0004249    0.0696478
3-6 months     ki1119695-PROBIT           BELARUS                        [50-57.5)            NA                 0.0485037    0.0273222    0.0696853
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5               NA                -0.0030796   -0.0157307    0.0095716
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <42.5                NA                 0.0530767    0.0047605    0.1013929
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [42.5-50)            NA                 0.0069204   -0.0168318    0.0306726
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [50-57.5)            NA                -0.0061549   -0.0224845    0.0101747
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=57.5               NA                -0.0921082   -0.1110247   -0.0731918
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     <42.5                NA                -0.0851196   -0.0998283   -0.0704109
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [42.5-50)            NA                -0.0775760   -0.0914142   -0.0637378
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [50-57.5)            NA                -0.0840600   -0.0978625   -0.0702575
6-12 months    ki0047075b-MAL-ED          BRAZIL                         >=57.5               NA                 0.0096702   -0.0121397    0.0314801
6-12 months    ki0047075b-MAL-ED          BRAZIL                         <42.5                NA                -0.0107921   -0.0477194    0.0261352
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [42.5-50)            NA                -0.0247361   -0.0477650   -0.0017072
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [50-57.5)            NA                -0.0264004   -0.0588567    0.0060558
6-12 months    ki0047075b-MAL-ED          INDIA                          >=57.5               NA                -0.0970389   -0.1157059   -0.0783719
6-12 months    ki0047075b-MAL-ED          INDIA                          <42.5                NA                -0.0761271   -0.1010216   -0.0512326
6-12 months    ki0047075b-MAL-ED          INDIA                          [42.5-50)            NA                -0.0843594   -0.1042247   -0.0644941
6-12 months    ki0047075b-MAL-ED          INDIA                          [50-57.5)            NA                -0.0795297   -0.0945143   -0.0645451
6-12 months    ki0047075b-MAL-ED          PERU                           >=57.5               NA                -0.0563792   -0.0751310   -0.0376273
6-12 months    ki0047075b-MAL-ED          PERU                           <42.5                NA                -0.1109024   -0.1360328   -0.0857720
6-12 months    ki0047075b-MAL-ED          PERU                           [42.5-50)            NA                -0.0457508   -0.0635174   -0.0279842
6-12 months    ki0047075b-MAL-ED          PERU                           [50-57.5)            NA                -0.0529941   -0.0717611   -0.0342270
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=57.5               NA                -0.1423505   -0.1674861   -0.1172149
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <42.5                NA                -0.0471947   -0.1352195    0.0408302
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [42.5-50)            NA                -0.1205516   -0.1461220   -0.0949812
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [50-57.5)            NA                -0.1100648   -0.1376718   -0.0824578
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=57.5               NA                -0.0818495   -0.1070524   -0.0566465
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          <42.5                NA                -0.0914992   -0.1109013   -0.0720972
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [42.5-50)            NA                -0.0864612   -0.1000497   -0.0728727
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [50-57.5)            NA                -0.0770213   -0.0913681   -0.0626745
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=57.5               NA                -0.0508875   -0.0728164   -0.0289586
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     <42.5                NA                -0.0635821   -0.0804168   -0.0467474
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [42.5-50)            NA                -0.0632251   -0.0787592   -0.0476910
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [50-57.5)            NA                -0.0280299   -0.0462665   -0.0097932
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=57.5               NA                -0.0413050   -0.0550294   -0.0275806
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     <42.5                NA                -0.0855696   -0.0984096   -0.0727295
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [42.5-50)            NA                -0.0630213   -0.0743315   -0.0517111
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [50-57.5)            NA                -0.0484755   -0.0618643   -0.0350867
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5               NA                -0.0140461   -0.0285649    0.0004727
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <42.5                NA                -0.0482214   -0.0635929   -0.0328500
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [42.5-50)            NA                -0.0393922   -0.0520414   -0.0267429
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [50-57.5)            NA                -0.0329493   -0.0459016   -0.0199970
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=57.5               NA                -0.0575374   -0.0687413   -0.0463336
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <42.5                NA                -0.0922775   -0.1315908   -0.0529643
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [42.5-50)            NA                -0.0614923   -0.0925777   -0.0304069
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [50-57.5)            NA                -0.0562914   -0.0733631   -0.0392197
6-12 months    ki1119695-PROBIT           BELARUS                        >=57.5               NA                 0.0440673    0.0270794    0.0610553
6-12 months    ki1119695-PROBIT           BELARUS                        <42.5                NA                 0.0246472   -0.0024020    0.0516964
6-12 months    ki1119695-PROBIT           BELARUS                        [42.5-50)            NA                 0.0467705    0.0278369    0.0657040
6-12 months    ki1119695-PROBIT           BELARUS                        [50-57.5)            NA                 0.0391150    0.0215950    0.0566351
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5               NA                -0.0514919   -0.0578359   -0.0451479
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <42.5                NA                -0.0884491   -0.1117292   -0.0651690
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [42.5-50)            NA                -0.0593639   -0.0710448   -0.0476829
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [50-57.5)            NA                -0.0455356   -0.0534284   -0.0376428
6-12 months    ki1148112-LCNI-5           MALAWI                         >=57.5               NA                -0.0218490   -0.0402357   -0.0034624
6-12 months    ki1148112-LCNI-5           MALAWI                         <42.5                NA                -0.0138667   -0.0393506    0.0116172
6-12 months    ki1148112-LCNI-5           MALAWI                         [42.5-50)            NA                -0.0039198   -0.0201942    0.0123546
6-12 months    ki1148112-LCNI-5           MALAWI                         [50-57.5)            NA                -0.0042363   -0.0220365    0.0135638
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=57.5               NA                -0.0176412   -0.0257523   -0.0095300
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     <42.5                NA                -0.0375810   -0.0473791   -0.0277828
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     [42.5-50)            NA                -0.0246647   -0.0316551   -0.0176743
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     [50-57.5)            NA                -0.0077057   -0.0167487    0.0013372
12-24 months   ki0047075b-MAL-ED          BRAZIL                         >=57.5               NA                -0.0064564   -0.0176093    0.0046965
12-24 months   ki0047075b-MAL-ED          BRAZIL                         <42.5                NA                -0.0290385   -0.0473821   -0.0106948
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [42.5-50)            NA                 0.0231955    0.0041535    0.0422374
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [50-57.5)            NA                 0.0196379   -0.0014756    0.0407513
12-24 months   ki0047075b-MAL-ED          INDIA                          >=57.5               NA                 0.0030357   -0.0073108    0.0133822
12-24 months   ki0047075b-MAL-ED          INDIA                          <42.5                NA                -0.0143477   -0.0241202   -0.0045752
12-24 months   ki0047075b-MAL-ED          INDIA                          [42.5-50)            NA                -0.0043621   -0.0124851    0.0037610
12-24 months   ki0047075b-MAL-ED          INDIA                          [50-57.5)            NA                -0.0141863   -0.0220891   -0.0062835
12-24 months   ki0047075b-MAL-ED          PERU                           >=57.5               NA                -0.0032660   -0.0126436    0.0061116
12-24 months   ki0047075b-MAL-ED          PERU                           <42.5                NA                -0.0604324   -0.0697295   -0.0511353
12-24 months   ki0047075b-MAL-ED          PERU                           [42.5-50)            NA                -0.0484910   -0.0591023   -0.0378796
12-24 months   ki0047075b-MAL-ED          PERU                           [50-57.5)            NA                -0.0160387   -0.0246871   -0.0073904
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=57.5               NA                -0.0266223   -0.0387845   -0.0144602
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <42.5                NA                -0.0306888   -0.0592230   -0.0021546
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [42.5-50)            NA                -0.0374564   -0.0503958   -0.0245169
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [50-57.5)            NA                -0.0514611   -0.0642198   -0.0387024
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=57.5               NA                -0.0381436   -0.0495696   -0.0267175
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     <42.5                NA                -0.0411484   -0.0498815   -0.0324154
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [42.5-50)            NA                -0.0418566   -0.0490755   -0.0346378
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [50-57.5)            NA                -0.0463575   -0.0558170   -0.0368981
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=57.5               NA                 0.0012191   -0.0070478    0.0094859
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     <42.5                NA                -0.0101454   -0.0163906   -0.0039003
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [42.5-50)            NA                -0.0132250   -0.0199978   -0.0064523
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [50-57.5)            NA                -0.0052486   -0.0130225    0.0025253
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5               NA                 0.0088579    0.0020851    0.0156308
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <42.5                NA                -0.0133361   -0.0200932   -0.0065790
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [42.5-50)            NA                -0.0127427   -0.0198106   -0.0056749
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [50-57.5)            NA                -0.0045348   -0.0123079    0.0032382
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5               NA                -0.0517445   -0.0648252   -0.0386638
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <42.5                NA                -0.0593023   -0.0812358   -0.0373687
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [42.5-50)            NA                -0.0718438   -0.0912476   -0.0524401
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [50-57.5)            NA                -0.0556691   -0.0682334   -0.0431047
12-24 months   ki1148112-LCNI-5           MALAWI                         >=57.5               NA                -0.0229501   -0.0342765   -0.0116236
12-24 months   ki1148112-LCNI-5           MALAWI                         <42.5                NA                -0.0155750   -0.0314313    0.0002812
12-24 months   ki1148112-LCNI-5           MALAWI                         [42.5-50)            NA                -0.0218707   -0.0295984   -0.0141431
12-24 months   ki1148112-LCNI-5           MALAWI                         [50-57.5)            NA                -0.0120899   -0.0217260   -0.0024539


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0339062   -0.0659795   -0.0018330
0-3 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.1928587    0.1409027    0.2448147
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0204797   -0.0596747    0.0187152
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                -0.1572370   -0.1898325   -0.1246414
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0461667   -0.0847570   -0.0075763
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                 0.0125752   -0.0032139    0.0283642
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.1191165   -0.1460676   -0.0921654
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0408226   -0.0589776   -0.0226676
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.1220821   -0.1402761   -0.1038881
0-3 months     ki1119695-PROBIT           BELARUS                        NA                   NA                -0.4368640   -0.4962138   -0.3775142
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.1438880   -0.1544502   -0.1333257
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0225211   -0.0456381    0.0005960
3-6 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0597008    0.0230362    0.0963653
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0417054   -0.0700621   -0.0133486
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                 0.0272742   -0.0038596    0.0584080
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0705448   -0.1027245   -0.0383652
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0163491   -0.0355574    0.0028592
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0509007   -0.0730097   -0.0287917
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0274690   -0.0439444   -0.0109937
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0267740    0.0099602    0.0435879
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0839871   -0.1007948   -0.0671794
3-6 months     ki1119695-PROBIT           BELARUS                        NA                   NA                 0.0463604    0.0273666    0.0653543
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0010333   -0.0103903    0.0083238
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0807393   -0.0911050   -0.0703737
6-12 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0049191   -0.0143947    0.0242329
6-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0785153   -0.0906466   -0.0663840
6-12 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0367697   -0.0508361   -0.0227032
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1240143   -0.1396706   -0.1083579
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0859276   -0.0907202   -0.0811349
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0530976   -0.0624028   -0.0437924
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0626151   -0.0695574   -0.0556729
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0315658   -0.0388594   -0.0242722
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0593214   -0.0685822   -0.0500606
6-12 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.0429634    0.0263738    0.0595529
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0494408   -0.0541109   -0.0447708
6-12 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0066447   -0.0175712    0.0042818
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0178490   -0.0232486   -0.0124494
12-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.0005342   -0.0110966    0.0100282
12-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0098524   -0.0150104   -0.0046944
12-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0092560   -0.0162726   -0.0022393
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0393265   -0.0471437   -0.0315094
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0404278   -0.0450901   -0.0357656
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0081718   -0.0120131   -0.0043304
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0057326   -0.0097260   -0.0017391
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0516953   -0.0609049   -0.0424856
12-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0159914   -0.0217529   -0.0102299


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <42.5                >=57.5            -0.1220492   -0.1995555   -0.0445429
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [42.5-50)            >=57.5            -0.0709943   -0.1392378   -0.0027508
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [50-57.5)            >=57.5             0.0366029   -0.0311605    0.1043663
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <42.5                >=57.5             0.0608687   -0.0892762    0.2110136
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [42.5-50)            >=57.5            -0.1556215   -0.2685292   -0.0427138
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [50-57.5)            >=57.5            -0.0292117   -0.1323467    0.0739233
0-3 months     ki0047075b-MAL-ED          INDIA                          >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          <42.5                >=57.5             0.0300349   -0.0941255    0.1541954
0-3 months     ki0047075b-MAL-ED          INDIA                          [42.5-50)            >=57.5             0.0328994   -0.0829756    0.1487744
0-3 months     ki0047075b-MAL-ED          INDIA                          [50-57.5)            >=57.5             0.0171454   -0.1036911    0.1379819
0-3 months     ki0047075b-MAL-ED          PERU                           >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           <42.5                >=57.5             0.1246307    0.0416597    0.2076017
0-3 months     ki0047075b-MAL-ED          PERU                           [42.5-50)            >=57.5             0.0939759    0.0282878    0.1596641
0-3 months     ki0047075b-MAL-ED          PERU                           [50-57.5)            >=57.5            -0.0426356   -0.1112405    0.0259694
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <42.5                >=57.5             0.3810753    0.3119707    0.4501800
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [42.5-50)            >=57.5             0.0342562   -0.0380036    0.1065160
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [50-57.5)            >=57.5             0.0322760   -0.0436026    0.1081545
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <42.5                >=57.5            -0.0307582   -0.0921272    0.0306108
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [42.5-50)            >=57.5             0.0070097   -0.0485947    0.0626140
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [50-57.5)            >=57.5             0.0120432   -0.0494457    0.0735322
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <42.5                >=57.5            -0.0009521   -0.0993454    0.0974412
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [42.5-50)            >=57.5            -0.0214149   -0.1170803    0.0742505
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [50-57.5)            >=57.5            -0.0267140   -0.1273764    0.0739483
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <42.5                >=57.5            -0.0411495   -0.0859097    0.0036107
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [42.5-50)            >=57.5            -0.0239921   -0.0683133    0.0203291
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [50-57.5)            >=57.5             0.0230789   -0.0258956    0.0720535
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <42.5                >=57.5            -0.0240675   -0.0792271    0.0310922
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [42.5-50)            >=57.5            -0.0259683   -0.0733595    0.0214230
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [50-57.5)            >=57.5            -0.0021116   -0.0474681    0.0432449
0-3 months     ki1119695-PROBIT           BELARUS                        >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        <42.5                >=57.5            -0.0271416   -0.1068051    0.0525219
0-3 months     ki1119695-PROBIT           BELARUS                        [42.5-50)            >=57.5             0.0272738   -0.0152441    0.0697916
0-3 months     ki1119695-PROBIT           BELARUS                        [50-57.5)            >=57.5             0.0273424    0.0031671    0.0515176
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <42.5                >=57.5            -0.1017175   -0.1647463   -0.0386888
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [42.5-50)            >=57.5            -0.0479186   -0.0791222   -0.0167149
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [50-57.5)            >=57.5            -0.0300550   -0.0534519   -0.0066581
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <42.5                >=57.5             0.0301963   -0.0137991    0.0741916
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [42.5-50)            >=57.5             0.0350392   -0.0064428    0.0765211
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [50-57.5)            >=57.5             0.0245339   -0.0160966    0.0651645
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <42.5                >=57.5            -0.1217214   -0.2115374   -0.0319055
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [42.5-50)            >=57.5             0.0250567   -0.0388480    0.0889614
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [50-57.5)            >=57.5             0.0282227   -0.0451049    0.1015504
3-6 months     ki0047075b-MAL-ED          INDIA                          >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          <42.5                >=57.5             0.0779321    0.0037040    0.1521602
3-6 months     ki0047075b-MAL-ED          INDIA                          [42.5-50)            >=57.5             0.0464757   -0.0152578    0.1082091
3-6 months     ki0047075b-MAL-ED          INDIA                          [50-57.5)            >=57.5             0.0370647   -0.0250986    0.0992281
3-6 months     ki0047075b-MAL-ED          PERU                           >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           <42.5                >=57.5             0.0474739   -0.0250364    0.1199843
3-6 months     ki0047075b-MAL-ED          PERU                           [42.5-50)            >=57.5            -0.0004181   -0.0614047    0.0605686
3-6 months     ki0047075b-MAL-ED          PERU                           [50-57.5)            >=57.5             0.0492133   -0.0106981    0.1091246
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <42.5                >=57.5            -0.1906508   -0.3450611   -0.0362406
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [42.5-50)            >=57.5             0.0150280   -0.0617644    0.0918203
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [50-57.5)            >=57.5            -0.0066078   -0.0841459    0.0709303
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <42.5                >=57.5            -0.0511948   -0.1057276    0.0033380
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [42.5-50)            >=57.5            -0.0422472   -0.0828174   -0.0016770
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [50-57.5)            >=57.5            -0.0262548   -0.0758216    0.0233119
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <42.5                >=57.5            -0.0944364   -0.1600452   -0.0288277
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [42.5-50)            >=57.5            -0.0310616   -0.0968571    0.0347340
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [50-57.5)            >=57.5            -0.0338912   -0.1046094    0.0368270
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <42.5                >=57.5             0.0253442   -0.0215147    0.0722030
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [42.5-50)            >=57.5             0.0110907   -0.0334142    0.0555956
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [50-57.5)            >=57.5             0.0340428   -0.0119761    0.0800616
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <42.5                >=57.5             0.0208869   -0.0267951    0.0685689
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [42.5-50)            >=57.5             0.0306849   -0.0132376    0.0746074
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [50-57.5)            >=57.5             0.0357957   -0.0077985    0.0793900
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <42.5                >=57.5            -0.1241496   -0.1890656   -0.0592336
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [42.5-50)            >=57.5             0.0010116   -0.0527874    0.0548106
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [50-57.5)            >=57.5            -0.0122061   -0.0477894    0.0233772
3-6 months     ki1119695-PROBIT           BELARUS                        >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        <42.5                >=57.5            -0.0159279   -0.0687018    0.0368461
3-6 months     ki1119695-PROBIT           BELARUS                        [42.5-50)            >=57.5            -0.0104936   -0.0455147    0.0245274
3-6 months     ki1119695-PROBIT           BELARUS                        [50-57.5)            >=57.5             0.0033987   -0.0119886    0.0187860
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <42.5                >=57.5             0.0561563    0.0062250    0.1060876
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [42.5-50)            >=57.5             0.0099999   -0.0168972    0.0368971
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [50-57.5)            >=57.5            -0.0030753   -0.0237088    0.0175581
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     <42.5                >=57.5             0.0069886   -0.0165255    0.0305027
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [42.5-50)            >=57.5             0.0145322   -0.0085911    0.0376555
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [50-57.5)            >=57.5             0.0080482   -0.0149967    0.0310931
6-12 months    ki0047075b-MAL-ED          BRAZIL                         >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BRAZIL                         <42.5                >=57.5            -0.0204623   -0.0618515    0.0209268
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [42.5-50)            >=57.5            -0.0344064   -0.0645696   -0.0042431
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [50-57.5)            >=57.5            -0.0360707   -0.0742463    0.0021050
6-12 months    ki0047075b-MAL-ED          INDIA                          >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA                          <42.5                >=57.5             0.0209118   -0.0099527    0.0517764
6-12 months    ki0047075b-MAL-ED          INDIA                          [42.5-50)            >=57.5             0.0126795   -0.0142591    0.0396181
6-12 months    ki0047075b-MAL-ED          INDIA                          [50-57.5)            >=57.5             0.0175092   -0.0061265    0.0411449
6-12 months    ki0047075b-MAL-ED          PERU                           >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          PERU                           <42.5                >=57.5            -0.0545232   -0.0854641   -0.0235823
6-12 months    ki0047075b-MAL-ED          PERU                           [42.5-50)            >=57.5             0.0106284   -0.0146719    0.0359286
6-12 months    ki0047075b-MAL-ED          PERU                           [50-57.5)            >=57.5             0.0033851   -0.0228107    0.0295810
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <42.5                >=57.5             0.0951559    0.0037646    0.1865471
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [42.5-50)            >=57.5             0.0217989   -0.0137937    0.0573915
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [50-57.5)            >=57.5             0.0322857   -0.0048171    0.0693885
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          <42.5                >=57.5            -0.0096498   -0.0470989    0.0277993
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [42.5-50)            >=57.5            -0.0046118   -0.0320684    0.0228448
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [50-57.5)            >=57.5             0.0048281   -0.0261677    0.0358240
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     <42.5                >=57.5            -0.0126947   -0.0402920    0.0149027
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [42.5-50)            >=57.5            -0.0123376   -0.0392302    0.0145549
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [50-57.5)            >=57.5             0.0228576   -0.0056305    0.0513457
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     <42.5                >=57.5            -0.0442646   -0.0630496   -0.0254796
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [42.5-50)            >=57.5            -0.0217163   -0.0394893   -0.0039434
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [50-57.5)            >=57.5            -0.0071705   -0.0263438    0.0120027
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <42.5                >=57.5            -0.0341753   -0.0553021   -0.0130485
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [42.5-50)            >=57.5            -0.0253461   -0.0446251   -0.0060670
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [50-57.5)            >=57.5            -0.0189032   -0.0383947    0.0005882
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <42.5                >=57.5            -0.0347401   -0.0755454    0.0060652
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [42.5-50)            >=57.5            -0.0039549   -0.0369287    0.0290189
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [50-57.5)            >=57.5             0.0012460   -0.0190781    0.0215701
6-12 months    ki1119695-PROBIT           BELARUS                        >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS                        <42.5                >=57.5            -0.0194202   -0.0508326    0.0119923
6-12 months    ki1119695-PROBIT           BELARUS                        [42.5-50)            >=57.5             0.0027031   -0.0089369    0.0143432
6-12 months    ki1119695-PROBIT           BELARUS                        [50-57.5)            >=57.5            -0.0049523   -0.0163465    0.0064418
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <42.5                >=57.5            -0.0369572   -0.0610737   -0.0128407
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [42.5-50)            >=57.5            -0.0078719   -0.0211501    0.0054063
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [50-57.5)            >=57.5             0.0059563   -0.0041597    0.0160724
6-12 months    ki1148112-LCNI-5           MALAWI                         >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5           MALAWI                         <42.5                >=57.5             0.0079823   -0.0233878    0.0393525
6-12 months    ki1148112-LCNI-5           MALAWI                         [42.5-50)            >=57.5             0.0179292   -0.0063233    0.0421818
6-12 months    ki1148112-LCNI-5           MALAWI                         [50-57.5)            >=57.5             0.0176127   -0.0078931    0.0431185
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     <42.5                >=57.5            -0.0199398   -0.0326560   -0.0072237
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     [42.5-50)            >=57.5            -0.0070236   -0.0177458    0.0036986
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     [50-57.5)            >=57.5             0.0099354   -0.0022001    0.0220709
12-24 months   ki0047075b-MAL-ED          BRAZIL                         >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BRAZIL                         <42.5                >=57.5            -0.0225821   -0.0437878   -0.0013763
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [42.5-50)            >=57.5             0.0296519    0.0078387    0.0514650
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [50-57.5)            >=57.5             0.0260943    0.0025431    0.0496454
12-24 months   ki0047075b-MAL-ED          INDIA                          >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          <42.5                >=57.5            -0.0173834   -0.0315886   -0.0031781
12-24 months   ki0047075b-MAL-ED          INDIA                          [42.5-50)            >=57.5            -0.0073978   -0.0204902    0.0056947
12-24 months   ki0047075b-MAL-ED          INDIA                          [50-57.5)            >=57.5            -0.0172220   -0.0302106   -0.0042334
12-24 months   ki0047075b-MAL-ED          PERU                           >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          PERU                           <42.5                >=57.5            -0.0571664   -0.0704743   -0.0438586
12-24 months   ki0047075b-MAL-ED          PERU                           [42.5-50)            >=57.5            -0.0452250   -0.0594922   -0.0309578
12-24 months   ki0047075b-MAL-ED          PERU                           [50-57.5)            >=57.5            -0.0127728   -0.0253731   -0.0001725
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <42.5                >=57.5            -0.0040664   -0.0350230    0.0268902
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [42.5-50)            >=57.5            -0.0108340   -0.0284426    0.0067746
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [50-57.5)            >=57.5            -0.0248387   -0.0423819   -0.0072955
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     <42.5                >=57.5            -0.0030048   -0.0174037    0.0113940
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [42.5-50)            >=57.5            -0.0037130   -0.0172083    0.0097822
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [50-57.5)            >=57.5            -0.0082140   -0.0229681    0.0065402
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     <42.5                >=57.5            -0.0113645   -0.0217115   -0.0010175
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [42.5-50)            >=57.5            -0.0144441   -0.0251138   -0.0037744
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [50-57.5)            >=57.5            -0.0064677   -0.0177829    0.0048475
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <42.5                >=57.5            -0.0221940   -0.0317328   -0.0126552
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [42.5-50)            >=57.5            -0.0216007   -0.0313376   -0.0118637
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [50-57.5)            >=57.5            -0.0133928   -0.0236523   -0.0031333
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <42.5                >=57.5            -0.0075578   -0.0330631    0.0179476
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [42.5-50)            >=57.5            -0.0200993   -0.0434697    0.0032710
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [50-57.5)            >=57.5            -0.0039246   -0.0220357    0.0141866
12-24 months   ki1148112-LCNI-5           MALAWI                         >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5           MALAWI                         <42.5                >=57.5             0.0073750   -0.0119518    0.0267019
12-24 months   ki1148112-LCNI-5           MALAWI                         [42.5-50)            >=57.5             0.0010793   -0.0125279    0.0146866
12-24 months   ki1148112-LCNI-5           MALAWI                         [50-57.5)            >=57.5             0.0108601   -0.0038594    0.0255796
