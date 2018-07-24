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

**Intervention Variable:** mwtkg

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* diffcat
* studyid
* country

## Data Summary

diffcat        studyid                     country                        mwtkg        n_cell       n
-------------  --------------------------  -----------------------------  ----------  -------  ------
0-3 months     ki0047075b-MAL-ED           BANGLADESH                     >=57.5           47     244
0-3 months     ki0047075b-MAL-ED           BANGLADESH                     <42.5            55     244
0-3 months     ki0047075b-MAL-ED           BANGLADESH                     [42.5-50)        85     244
0-3 months     ki0047075b-MAL-ED           BANGLADESH                     [50-57.5)        57     244
3-6 months     ki0047075b-MAL-ED           BANGLADESH                     >=57.5           46     231
3-6 months     ki0047075b-MAL-ED           BANGLADESH                     <42.5            50     231
3-6 months     ki0047075b-MAL-ED           BANGLADESH                     [42.5-50)        81     231
3-6 months     ki0047075b-MAL-ED           BANGLADESH                     [50-57.5)        54     231
6-12 months    ki0047075b-MAL-ED           BANGLADESH                     >=57.5           44     220
6-12 months    ki0047075b-MAL-ED           BANGLADESH                     <42.5            45     220
6-12 months    ki0047075b-MAL-ED           BANGLADESH                     [42.5-50)        78     220
6-12 months    ki0047075b-MAL-ED           BANGLADESH                     [50-57.5)        53     220
12-24 months   ki0047075b-MAL-ED           BANGLADESH                     >=57.5           43     206
12-24 months   ki0047075b-MAL-ED           BANGLADESH                     <42.5            43     206
12-24 months   ki0047075b-MAL-ED           BANGLADESH                     [42.5-50)        72     206
12-24 months   ki0047075b-MAL-ED           BANGLADESH                     [50-57.5)        48     206
12-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     <42.5            19      38
12-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     [42.5-50)        11      38
12-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     [50-57.5)         8      38
0-3 months     ki1017093-NIH-Birth         BANGLADESH                     >=57.5           77     566
0-3 months     ki1017093-NIH-Birth         BANGLADESH                     <42.5           153     566
0-3 months     ki1017093-NIH-Birth         BANGLADESH                     [42.5-50)       196     566
0-3 months     ki1017093-NIH-Birth         BANGLADESH                     [50-57.5)       140     566
3-6 months     ki1017093-NIH-Birth         BANGLADESH                     >=57.5           73     523
3-6 months     ki1017093-NIH-Birth         BANGLADESH                     <42.5           146     523
3-6 months     ki1017093-NIH-Birth         BANGLADESH                     [42.5-50)       178     523
3-6 months     ki1017093-NIH-Birth         BANGLADESH                     [50-57.5)       126     523
6-12 months    ki1017093-NIH-Birth         BANGLADESH                     >=57.5           66     482
6-12 months    ki1017093-NIH-Birth         BANGLADESH                     <42.5           136     482
6-12 months    ki1017093-NIH-Birth         BANGLADESH                     [42.5-50)       162     482
6-12 months    ki1017093-NIH-Birth         BANGLADESH                     [50-57.5)       118     482
12-24 months   ki1017093-NIH-Birth         BANGLADESH                     >=57.5           58     421
12-24 months   ki1017093-NIH-Birth         BANGLADESH                     <42.5           122     421
12-24 months   ki1017093-NIH-Birth         BANGLADESH                     [42.5-50)       144     421
12-24 months   ki1017093-NIH-Birth         BANGLADESH                     [50-57.5)        97     421
0-3 months     ki1017093b-PROVIDE          BANGLADESH                     >=57.5          116     633
0-3 months     ki1017093b-PROVIDE          BANGLADESH                     <42.5           162     633
0-3 months     ki1017093b-PROVIDE          BANGLADESH                     [42.5-50)       195     633
0-3 months     ki1017093b-PROVIDE          BANGLADESH                     [50-57.5)       160     633
3-6 months     ki1017093b-PROVIDE          BANGLADESH                     >=57.5          106     573
3-6 months     ki1017093b-PROVIDE          BANGLADESH                     <42.5           144     573
3-6 months     ki1017093b-PROVIDE          BANGLADESH                     [42.5-50)       173     573
3-6 months     ki1017093b-PROVIDE          BANGLADESH                     [50-57.5)       150     573
6-12 months    ki1017093b-PROVIDE          BANGLADESH                     >=57.5          102     545
6-12 months    ki1017093b-PROVIDE          BANGLADESH                     <42.5           140     545
6-12 months    ki1017093b-PROVIDE          BANGLADESH                     [42.5-50)       162     545
6-12 months    ki1017093b-PROVIDE          BANGLADESH                     [50-57.5)       141     545
12-24 months   ki1017093b-PROVIDE          BANGLADESH                     >=57.5           88     458
12-24 months   ki1017093b-PROVIDE          BANGLADESH                     <42.5           122     458
12-24 months   ki1017093b-PROVIDE          BANGLADESH                     [42.5-50)       133     458
12-24 months   ki1017093b-PROVIDE          BANGLADESH                     [50-57.5)       115     458
0-3 months     ki1017093c-NIH-Crypto       BANGLADESH                     >=57.5          185     720
0-3 months     ki1017093c-NIH-Crypto       BANGLADESH                     <42.5           100     720
0-3 months     ki1017093c-NIH-Crypto       BANGLADESH                     [42.5-50)       224     720
0-3 months     ki1017093c-NIH-Crypto       BANGLADESH                     [50-57.5)       211     720
3-6 months     ki1017093c-NIH-Crypto       BANGLADESH                     >=57.5          181     695
3-6 months     ki1017093c-NIH-Crypto       BANGLADESH                     <42.5            97     695
3-6 months     ki1017093c-NIH-Crypto       BANGLADESH                     [42.5-50)       217     695
3-6 months     ki1017093c-NIH-Crypto       BANGLADESH                     [50-57.5)       200     695
6-12 months    ki1017093c-NIH-Crypto       BANGLADESH                     >=57.5          178     676
6-12 months    ki1017093c-NIH-Crypto       BANGLADESH                     <42.5            94     676
6-12 months    ki1017093c-NIH-Crypto       BANGLADESH                     [42.5-50)       216     676
6-12 months    ki1017093c-NIH-Crypto       BANGLADESH                     [50-57.5)       188     676
12-24 months   ki1017093c-NIH-Crypto       BANGLADESH                     >=57.5          137     495
12-24 months   ki1017093c-NIH-Crypto       BANGLADESH                     <42.5            63     495
12-24 months   ki1017093c-NIH-Crypto       BANGLADESH                     [42.5-50)       160     495
12-24 months   ki1017093c-NIH-Crypto       BANGLADESH                     [50-57.5)       135     495
0-3 months     ki1119695-PROBIT            BELARUS                        >=57.5         9450   12629
0-3 months     ki1119695-PROBIT            BELARUS                        <42.5            31   12629
0-3 months     ki1119695-PROBIT            BELARUS                        [42.5-50)       499   12629
0-3 months     ki1119695-PROBIT            BELARUS                        [50-57.5)      2649   12629
3-6 months     ki1119695-PROBIT            BELARUS                        >=57.5         8299   11090
3-6 months     ki1119695-PROBIT            BELARUS                        <42.5            26   11090
3-6 months     ki1119695-PROBIT            BELARUS                        [42.5-50)       454   11090
3-6 months     ki1119695-PROBIT            BELARUS                        [50-57.5)      2311   11090
6-12 months    ki1119695-PROBIT            BELARUS                        >=57.5         8100   10834
6-12 months    ki1119695-PROBIT            BELARUS                        <42.5            24   10834
6-12 months    ki1119695-PROBIT            BELARUS                        [42.5-50)       450   10834
6-12 months    ki1119695-PROBIT            BELARUS                        [50-57.5)      2260   10834
12-24 months   ki1119695-PROBIT            BELARUS                        >=57.5         1891    2523
12-24 months   ki1119695-PROBIT            BELARUS                        <42.5             3    2523
12-24 months   ki1119695-PROBIT            BELARUS                        [42.5-50)        98    2523
12-24 months   ki1119695-PROBIT            BELARUS                        [50-57.5)       531    2523
0-3 months     ki0047075b-MAL-ED           BRAZIL                         >=57.5          119     180
0-3 months     ki0047075b-MAL-ED           BRAZIL                         <42.5            12     180
0-3 months     ki0047075b-MAL-ED           BRAZIL                         [42.5-50)        13     180
0-3 months     ki0047075b-MAL-ED           BRAZIL                         [50-57.5)        36     180
3-6 months     ki0047075b-MAL-ED           BRAZIL                         >=57.5          137     207
3-6 months     ki0047075b-MAL-ED           BRAZIL                         <42.5            11     207
3-6 months     ki0047075b-MAL-ED           BRAZIL                         [42.5-50)        18     207
3-6 months     ki0047075b-MAL-ED           BRAZIL                         [50-57.5)        41     207
6-12 months    ki0047075b-MAL-ED           BRAZIL                         >=57.5          126     193
6-12 months    ki0047075b-MAL-ED           BRAZIL                         <42.5            11     193
6-12 months    ki0047075b-MAL-ED           BRAZIL                         [42.5-50)        17     193
6-12 months    ki0047075b-MAL-ED           BRAZIL                         [50-57.5)        39     193
12-24 months   ki0047075b-MAL-ED           BRAZIL                         >=57.5          106     164
12-24 months   ki0047075b-MAL-ED           BRAZIL                         <42.5             8     164
12-24 months   ki0047075b-MAL-ED           BRAZIL                         [42.5-50)        15     164
12-24 months   ki0047075b-MAL-ED           BRAZIL                         [50-57.5)        35     164
12-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   >=57.5            3      12
12-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   [42.5-50)         4      12
12-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   [50-57.5)         5      12
0-3 months     ki0047075b-MAL-ED           INDIA                          >=57.5           36     201
0-3 months     ki0047075b-MAL-ED           INDIA                          <42.5            35     201
0-3 months     ki0047075b-MAL-ED           INDIA                          [42.5-50)        67     201
0-3 months     ki0047075b-MAL-ED           INDIA                          [50-57.5)        63     201
3-6 months     ki0047075b-MAL-ED           INDIA                          >=57.5           39     228
3-6 months     ki0047075b-MAL-ED           INDIA                          <42.5            43     228
3-6 months     ki0047075b-MAL-ED           INDIA                          [42.5-50)        73     228
3-6 months     ki0047075b-MAL-ED           INDIA                          [50-57.5)        73     228
6-12 months    ki0047075b-MAL-ED           INDIA                          >=57.5           41     223
6-12 months    ki0047075b-MAL-ED           INDIA                          <42.5            42     223
6-12 months    ki0047075b-MAL-ED           INDIA                          [42.5-50)        69     223
6-12 months    ki0047075b-MAL-ED           INDIA                          [50-57.5)        71     223
12-24 months   ki0047075b-MAL-ED           INDIA                          >=57.5           40     224
12-24 months   ki0047075b-MAL-ED           INDIA                          <42.5            43     224
12-24 months   ki0047075b-MAL-ED           INDIA                          [42.5-50)        69     224
12-24 months   ki0047075b-MAL-ED           INDIA                          [50-57.5)        72     224
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          >=57.5           94    1166
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          <42.5           266    1166
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          [42.5-50)       543    1166
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          [50-57.5)       263    1166
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          >=57.5           90    1121
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          <42.5           257    1121
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          [42.5-50)       513    1121
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          [50-57.5)       261    1121
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          >=57.5           92    1132
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          <42.5           250    1132
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          [42.5-50)       524    1132
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          [50-57.5)       266    1132
6-12 months    ki1148112-LCNI-5            MALAWI                         >=57.5           62     434
6-12 months    ki1148112-LCNI-5            MALAWI                         <42.5            38     434
6-12 months    ki1148112-LCNI-5            MALAWI                         [42.5-50)       177     434
6-12 months    ki1148112-LCNI-5            MALAWI                         [50-57.5)       157     434
12-24 months   ki1148112-LCNI-5            MALAWI                         >=57.5           44     310
12-24 months   ki1148112-LCNI-5            MALAWI                         <42.5            28     310
12-24 months   ki1148112-LCNI-5            MALAWI                         [42.5-50)       123     310
12-24 months   ki1148112-LCNI-5            MALAWI                         [50-57.5)       115     310
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         >=57.5          241    1024
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         <42.5            66    1024
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         [42.5-50)       310    1024
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         [50-57.5)       407    1024
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         >=57.5          106     481
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         <42.5            26     481
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         [42.5-50)       164     481
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         [50-57.5)       185     481
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         >=57.5          137     536
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         <42.5            26     536
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         [42.5-50)       158     536
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         [50-57.5)       215     536
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         >=57.5          132     506
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         <42.5            24     506
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         [42.5-50)       148     506
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         [50-57.5)       202     506
3-6 months     ki1148112-iLiNS-DYAD-M      MALAWI                         >=57.5            1       7
3-6 months     ki1148112-iLiNS-DYAD-M      MALAWI                         <42.5             1       7
3-6 months     ki1148112-iLiNS-DYAD-M      MALAWI                         [42.5-50)         2       7
3-6 months     ki1148112-iLiNS-DYAD-M      MALAWI                         [50-57.5)         3       7
3-6 months     ki0047075b-MAL-ED           NEPAL                          >=57.5           85     233
3-6 months     ki0047075b-MAL-ED           NEPAL                          <42.5             2     233
3-6 months     ki0047075b-MAL-ED           NEPAL                          [42.5-50)        48     233
3-6 months     ki0047075b-MAL-ED           NEPAL                          [50-57.5)        98     233
6-12 months    ki0047075b-MAL-ED           NEPAL                          >=57.5           85     230
6-12 months    ki0047075b-MAL-ED           NEPAL                          <42.5             2     230
6-12 months    ki0047075b-MAL-ED           NEPAL                          [42.5-50)        47     230
6-12 months    ki0047075b-MAL-ED           NEPAL                          [50-57.5)        96     230
12-24 months   ki0047075b-MAL-ED           NEPAL                          >=57.5           83     226
12-24 months   ki0047075b-MAL-ED           NEPAL                          <42.5             2     226
12-24 months   ki0047075b-MAL-ED           NEPAL                          [42.5-50)        47     226
12-24 months   ki0047075b-MAL-ED           NEPAL                          [50-57.5)        94     226
0-3 months     ki0047075b-MAL-ED           NEPAL                          >=57.5           63     175
0-3 months     ki0047075b-MAL-ED           NEPAL                          <42.5             2     175
0-3 months     ki0047075b-MAL-ED           NEPAL                          [42.5-50)        33     175
0-3 months     ki0047075b-MAL-ED           NEPAL                          [50-57.5)        77     175
0-3 months     ki0047075b-MAL-ED           PERU                           >=57.5           97     270
0-3 months     ki0047075b-MAL-ED           PERU                           <42.5            12     270
0-3 months     ki0047075b-MAL-ED           PERU                           [42.5-50)        53     270
0-3 months     ki0047075b-MAL-ED           PERU                           [50-57.5)       108     270
3-6 months     ki0047075b-MAL-ED           PERU                           >=57.5           98     266
3-6 months     ki0047075b-MAL-ED           PERU                           <42.5            13     266
3-6 months     ki0047075b-MAL-ED           PERU                           [42.5-50)        52     266
3-6 months     ki0047075b-MAL-ED           PERU                           [50-57.5)       103     266
6-12 months    ki0047075b-MAL-ED           PERU                           >=57.5           89     236
6-12 months    ki0047075b-MAL-ED           PERU                           <42.5            12     236
6-12 months    ki0047075b-MAL-ED           PERU                           [42.5-50)        47     236
6-12 months    ki0047075b-MAL-ED           PERU                           [50-57.5)        88     236
12-24 months   ki0047075b-MAL-ED           PERU                           >=57.5           75     191
12-24 months   ki0047075b-MAL-ED           PERU                           <42.5             8     191
12-24 months   ki0047075b-MAL-ED           PERU                           [42.5-50)        37     191
12-24 months   ki0047075b-MAL-ED           PERU                           [50-57.5)        71     191
0-3 months     ki0047075b-MAL-ED           SOUTH AFRICA                   >=57.5          162     223
0-3 months     ki0047075b-MAL-ED           SOUTH AFRICA                   <42.5             2     223
0-3 months     ki0047075b-MAL-ED           SOUTH AFRICA                   [42.5-50)        12     223
0-3 months     ki0047075b-MAL-ED           SOUTH AFRICA                   [50-57.5)        47     223
3-6 months     ki0047075b-MAL-ED           SOUTH AFRICA                   >=57.5          169     237
3-6 months     ki0047075b-MAL-ED           SOUTH AFRICA                   <42.5             3     237
3-6 months     ki0047075b-MAL-ED           SOUTH AFRICA                   [42.5-50)        15     237
3-6 months     ki0047075b-MAL-ED           SOUTH AFRICA                   [50-57.5)        50     237
6-12 months    ki0047075b-MAL-ED           SOUTH AFRICA                   >=57.5          161     228
6-12 months    ki0047075b-MAL-ED           SOUTH AFRICA                   <42.5             3     228
6-12 months    ki0047075b-MAL-ED           SOUTH AFRICA                   [42.5-50)        14     228
6-12 months    ki0047075b-MAL-ED           SOUTH AFRICA                   [50-57.5)        50     228
12-24 months   ki0047075b-MAL-ED           SOUTH AFRICA                   >=57.5          162     226
12-24 months   ki0047075b-MAL-ED           SOUTH AFRICA                   <42.5             3     226
12-24 months   ki0047075b-MAL-ED           SOUTH AFRICA                   [42.5-50)        14     226
12-24 months   ki0047075b-MAL-ED           SOUTH AFRICA                   [50-57.5)        47     226
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=57.5           92     223
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   <42.5             8     223
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   [42.5-50)        60     223
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   [50-57.5)        63     223
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=57.5           85     207
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   <42.5             6     207
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   [42.5-50)        56     207
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   [50-57.5)        60     207
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=57.5           94     229
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   <42.5             7     229
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   [42.5-50)        58     229
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   [50-57.5)        70     229
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=57.5           98     239
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   <42.5             8     239
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   [42.5-50)        63     239
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   [50-57.5)        70     239
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=57.5         1047    1628
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <42.5            18    1628
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [42.5-50)       133    1628
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [50-57.5)       430    1628
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=57.5          678    1060
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <42.5            14    1060
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [42.5-50)        94    1060
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [50-57.5)       274    1060
12-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=57.5            1       2
12-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [50-57.5)         1       2
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       >=57.5         4191    7588
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       <42.5            94    7588
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       [42.5-50)       917    7588
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       [50-57.5)      2386    7588
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       >=57.5         3243    5849
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       <42.5            67    5849
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       [42.5-50)       686    5849
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       [50-57.5)      1853    5849
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       >=57.5         2417    4547
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       <42.5            54    4547
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       [42.5-50)       605    4547
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       [50-57.5)      1471    4547
12-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       >=57.5          131     302
12-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       <42.5             8     302
12-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       [42.5-50)        62     302
12-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       [50-57.5)       101     302


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
* diffcat: 0-3 months, studyid: ki1119695-PROBIT, country: BELARUS
* diffcat: 0-3 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* diffcat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* diffcat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* diffcat: 12-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* diffcat: 12-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* diffcat: 12-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* diffcat: 12-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* diffcat: 12-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* diffcat: 12-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* diffcat: 12-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* diffcat: 12-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* diffcat: 12-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* diffcat: 12-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* diffcat: 12-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* diffcat: 12-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* diffcat: 12-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* diffcat: 12-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* diffcat: 12-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* diffcat: 12-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
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
* diffcat: 3-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* diffcat: 3-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* diffcat: 3-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* diffcat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* diffcat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* diffcat: 6-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* diffcat: 6-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* diffcat: 6-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* diffcat: 6-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* diffcat: 6-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* diffcat: 6-12 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* diffcat: 6-12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* diffcat: 6-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* diffcat: 6-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* diffcat: 6-12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* diffcat: 6-12 months, studyid: ki1119695-PROBIT, country: BELARUS
* diffcat: 6-12 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* diffcat: 6-12 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* diffcat: 6-12 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* diffcat: 6-12 months, studyid: ki1148112-LCNI-5, country: MALAWI

### Dropped Strata

Some strata were dropped due to rare outcomes:

* diffcat: 12-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* diffcat: 12-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* diffcat: 3-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* diffcat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* diffcat: 6-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* diffcat: 12-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* diffcat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* diffcat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* diffcat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* diffcat: 6-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* diffcat: 12-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* diffcat: 12-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/2354094e-fb00-4c4f-a4f3-a39f7de5ef05/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/2354094e-fb00-4c4f-a4f3-a39f7de5ef05/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


diffcat        studyid                     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  --------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED           BANGLADESH                     >=57.5               NA                3.6115010   3.4693223   3.7536798
0-3 months     ki0047075b-MAL-ED           BANGLADESH                     <42.5                NA                3.3969371   3.2531026   3.5407716
0-3 months     ki0047075b-MAL-ED           BANGLADESH                     [42.5-50)            NA                3.5651846   3.4613244   3.6690447
0-3 months     ki0047075b-MAL-ED           BANGLADESH                     [50-57.5)            NA                3.6818901   3.5704942   3.7932860
0-3 months     ki0047075b-MAL-ED           BRAZIL                         >=57.5               NA                4.0502943   3.9318229   4.1687656
0-3 months     ki0047075b-MAL-ED           BRAZIL                         <42.5                NA                4.1136342   3.7097446   4.5175238
0-3 months     ki0047075b-MAL-ED           BRAZIL                         [42.5-50)            NA                3.9308409   3.5405998   4.3210819
0-3 months     ki0047075b-MAL-ED           BRAZIL                         [50-57.5)            NA                4.0757024   3.8176333   4.3337716
0-3 months     ki0047075b-MAL-ED           INDIA                          >=57.5               NA                3.5581203   3.3278160   3.7884247
0-3 months     ki0047075b-MAL-ED           INDIA                          <42.5                NA                3.5271627   3.3732027   3.6811228
0-3 months     ki0047075b-MAL-ED           INDIA                          [42.5-50)            NA                3.6085165   3.4879151   3.7291180
0-3 months     ki0047075b-MAL-ED           INDIA                          [50-57.5)            NA                3.5802072   3.4323582   3.7280563
0-3 months     ki0047075b-MAL-ED           PERU                           >=57.5               NA                3.2974265   3.1921422   3.4027107
0-3 months     ki0047075b-MAL-ED           PERU                           <42.5                NA                3.3771195   3.1128927   3.6413462
0-3 months     ki0047075b-MAL-ED           PERU                           [42.5-50)            NA                3.4132693   3.2837388   3.5427997
0-3 months     ki0047075b-MAL-ED           PERU                           [50-57.5)            NA                3.2806529   3.1755320   3.3857737
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=57.5               NA                3.4711032   3.3536174   3.5885890
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   <42.5                NA                3.8048140   3.4660493   4.1435786
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   [42.5-50)            NA                3.4251526   3.2775716   3.5727337
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   [50-57.5)            NA                3.5104407   3.3620706   3.6588107
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          >=57.5               NA                3.6444650   3.5359473   3.7529828
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          <42.5                NA                3.4822605   3.4239845   3.5405365
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          [42.5-50)            NA                3.6271707   3.5912212   3.6631202
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          [50-57.5)            NA                3.6591636   3.6067670   3.7115603
0-3 months     ki1017093-NIH-Birth         BANGLADESH                     >=57.5               NA                3.3638119   3.1835177   3.5441061
0-3 months     ki1017093-NIH-Birth         BANGLADESH                     <42.5                NA                3.3202925   3.2230408   3.4175441
0-3 months     ki1017093-NIH-Birth         BANGLADESH                     [42.5-50)            NA                3.3138882   3.2254416   3.4023349
0-3 months     ki1017093-NIH-Birth         BANGLADESH                     [50-57.5)            NA                3.2755389   3.1635844   3.3874935
0-3 months     ki1017093b-PROVIDE          BANGLADESH                     >=57.5               NA                3.5092080   3.4143131   3.6041029
0-3 months     ki1017093b-PROVIDE          BANGLADESH                     <42.5                NA                3.4158832   3.3444784   3.4872880
0-3 months     ki1017093b-PROVIDE          BANGLADESH                     [42.5-50)            NA                3.4530457   3.3867417   3.5193498
0-3 months     ki1017093b-PROVIDE          BANGLADESH                     [50-57.5)            NA                3.5733712   3.4889683   3.6577741
0-3 months     ki1017093c-NIH-Crypto       BANGLADESH                     >=57.5               NA                3.3226191   3.2514564   3.3937818
0-3 months     ki1017093c-NIH-Crypto       BANGLADESH                     <42.5                NA                3.2523472   3.1460394   3.3586550
0-3 months     ki1017093c-NIH-Crypto       BANGLADESH                     [42.5-50)            NA                3.2840858   3.2098253   3.3583464
0-3 months     ki1017093c-NIH-Crypto       BANGLADESH                     [50-57.5)            NA                3.3294253   3.2639145   3.3949362
0-3 months     ki1119695-PROBIT            BELARUS                        >=57.5               NA                2.8313502   2.7114006   2.9512998
0-3 months     ki1119695-PROBIT            BELARUS                        <42.5                NA                2.6846896   2.2670212   3.1023581
0-3 months     ki1119695-PROBIT            BELARUS                        [42.5-50)            NA                2.8385232   2.7086802   2.9683661
0-3 months     ki1119695-PROBIT            BELARUS                        [50-57.5)            NA                2.8595938   2.7599261   2.9592614
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       >=57.5               NA                3.4062895   3.3777156   3.4348633
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       <42.5                NA                3.1514142   2.9662259   3.3366024
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       [42.5-50)            NA                3.2854088   3.2270894   3.3437281
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       [50-57.5)            NA                3.3414426   3.3032298   3.3796554
3-6 months     ki0047075b-MAL-ED           BANGLADESH                     >=57.5               NA                1.8947420   1.8143964   1.9750876
3-6 months     ki0047075b-MAL-ED           BANGLADESH                     <42.5                NA                1.9237862   1.8039667   2.0436057
3-6 months     ki0047075b-MAL-ED           BANGLADESH                     [42.5-50)            NA                1.9377853   1.8478700   2.0277005
3-6 months     ki0047075b-MAL-ED           BANGLADESH                     [50-57.5)            NA                1.9457522   1.8499370   2.0415674
3-6 months     ki0047075b-MAL-ED           BRAZIL                         >=57.5               NA                2.1370670   2.0350125   2.2391215
3-6 months     ki0047075b-MAL-ED           BRAZIL                         <42.5                NA                1.9442863   1.6562849   2.2322876
3-6 months     ki0047075b-MAL-ED           BRAZIL                         [42.5-50)            NA                2.2369200   2.0336231   2.4402169
3-6 months     ki0047075b-MAL-ED           BRAZIL                         [50-57.5)            NA                2.1929062   2.0215007   2.3643118
3-6 months     ki0047075b-MAL-ED           INDIA                          >=57.5               NA                1.8514124   1.6816283   2.0211965
3-6 months     ki0047075b-MAL-ED           INDIA                          <42.5                NA                1.9094785   1.7485133   2.0704436
3-6 months     ki0047075b-MAL-ED           INDIA                          [42.5-50)            NA                1.9081967   1.8115205   2.0048730
3-6 months     ki0047075b-MAL-ED           INDIA                          [50-57.5)            NA                1.8511903   1.7518753   1.9505053
3-6 months     ki0047075b-MAL-ED           PERU                           >=57.5               NA                2.0111460   1.8954277   2.1268643
3-6 months     ki0047075b-MAL-ED           PERU                           <42.5                NA                2.0010782   1.7704408   2.2317156
3-6 months     ki0047075b-MAL-ED           PERU                           [42.5-50)            NA                1.9351220   1.8009740   2.0692700
3-6 months     ki0047075b-MAL-ED           PERU                           [50-57.5)            NA                2.0682836   1.9622390   2.1743281
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=57.5               NA                1.8339189   1.7284087   1.9394292
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   <42.5                NA                1.5723018   1.1858410   1.9587625
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   [42.5-50)            NA                1.8609750   1.7365109   1.9854392
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   [50-57.5)            NA                1.8263951   1.6964926   1.9562976
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          >=57.5               NA                2.0561000   1.9655746   2.1466254
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          <42.5                NA                1.8852150   1.7783573   1.9920726
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          [42.5-50)            NA                1.9310196   1.8696858   1.9923534
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          [50-57.5)            NA                1.9779414   1.9402612   2.0156216
3-6 months     ki1017093-NIH-Birth         BANGLADESH                     >=57.5               NA                1.9459290   1.8115464   2.0803116
3-6 months     ki1017093-NIH-Birth         BANGLADESH                     <42.5                NA                1.7114096   1.6269248   1.7958944
3-6 months     ki1017093-NIH-Birth         BANGLADESH                     [42.5-50)            NA                1.8634003   1.7832540   1.9435467
3-6 months     ki1017093-NIH-Birth         BANGLADESH                     [50-57.5)            NA                1.8642363   1.7620444   1.9664282
3-6 months     ki1017093b-PROVIDE          BANGLADESH                     >=57.5               NA                1.9530165   1.8674626   2.0385704
3-6 months     ki1017093b-PROVIDE          BANGLADESH                     <42.5                NA                1.9671631   1.8963116   2.0380146
3-6 months     ki1017093b-PROVIDE          BANGLADESH                     [42.5-50)            NA                1.9310803   1.8709289   1.9912318
3-6 months     ki1017093b-PROVIDE          BANGLADESH                     [50-57.5)            NA                2.0120660   1.9426586   2.0814734
3-6 months     ki1017093c-NIH-Crypto       BANGLADESH                     >=57.5               NA                1.9680010   1.8980958   2.0379061
3-6 months     ki1017093c-NIH-Crypto       BANGLADESH                     <42.5                NA                1.9972072   1.9114328   2.0829817
3-6 months     ki1017093c-NIH-Crypto       BANGLADESH                     [42.5-50)            NA                2.0160594   1.9476109   2.0845080
3-6 months     ki1017093c-NIH-Crypto       BANGLADESH                     [50-57.5)            NA                2.0330347   1.9642846   2.1017847
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=57.5               NA                1.8044186   1.7584983   1.8503389
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <42.5                NA                1.6996112   1.3191195   2.0801029
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [42.5-50)            NA                1.8454460   1.7155481   1.9753440
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [50-57.5)            NA                1.7677232   1.7012643   1.8341821
3-6 months     ki1119695-PROBIT            BELARUS                        >=57.5               NA                2.0895493   2.0478604   2.1312382
3-6 months     ki1119695-PROBIT            BELARUS                        <42.5                NA                2.0493326   1.7769647   2.3217005
3-6 months     ki1119695-PROBIT            BELARUS                        [42.5-50)            NA                2.0737785   1.9767379   2.1708191
3-6 months     ki1119695-PROBIT            BELARUS                        [50-57.5)            NA                2.0977892   2.0512853   2.1442930
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       >=57.5               NA                1.9790791   1.9521084   2.0060497
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       <42.5                NA                2.0252738   1.8308652   2.2196824
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       [42.5-50)            NA                1.9846144   1.9292565   2.0399722
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       [50-57.5)            NA                1.9615807   1.9256906   1.9974709
6-12 months    ki0047075b-MAL-ED           BANGLADESH                     >=57.5               NA                1.1258505   1.0615074   1.1901937
6-12 months    ki0047075b-MAL-ED           BANGLADESH                     <42.5                NA                1.0802190   1.0264308   1.1340071
6-12 months    ki0047075b-MAL-ED           BANGLADESH                     [42.5-50)            NA                1.1173564   1.0777597   1.1569530
6-12 months    ki0047075b-MAL-ED           BANGLADESH                     [50-57.5)            NA                1.1295347   1.0831700   1.1758995
6-12 months    ki0047075b-MAL-ED           BRAZIL                         >=57.5               NA                1.4003014   1.3444872   1.4561155
6-12 months    ki0047075b-MAL-ED           BRAZIL                         <42.5                NA                1.3466857   1.1544315   1.5389398
6-12 months    ki0047075b-MAL-ED           BRAZIL                         [42.5-50)            NA                1.3666812   1.2516594   1.4817030
6-12 months    ki0047075b-MAL-ED           BRAZIL                         [50-57.5)            NA                1.3403107   1.2255726   1.4550488
6-12 months    ki0047075b-MAL-ED           INDIA                          >=57.5               NA                1.1125269   1.0533127   1.1717411
6-12 months    ki0047075b-MAL-ED           INDIA                          <42.5                NA                1.1168335   1.0425679   1.1910990
6-12 months    ki0047075b-MAL-ED           INDIA                          [42.5-50)            NA                1.1135438   1.0557747   1.1713129
6-12 months    ki0047075b-MAL-ED           INDIA                          [50-57.5)            NA                1.1303837   1.0895661   1.1712013
6-12 months    ki0047075b-MAL-ED           PERU                           >=57.5               NA                1.2021158   1.1497860   1.2544455
6-12 months    ki0047075b-MAL-ED           PERU                           <42.5                NA                1.1426076   1.0192753   1.2659399
6-12 months    ki0047075b-MAL-ED           PERU                           [42.5-50)            NA                1.2461533   1.1811605   1.3111462
6-12 months    ki0047075b-MAL-ED           PERU                           [50-57.5)            NA                1.2119727   1.1539483   1.2699970
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=57.5               NA                0.9632660   0.9030465   1.0234856
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   <42.5                NA                1.1316140   0.9124359   1.3507921
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   [42.5-50)            NA                1.0080776   0.9448588   1.0712965
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   [50-57.5)            NA                1.0361481   0.9670821   1.1052141
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          >=57.5               NA                1.1484942   1.0820127   1.2149757
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          <42.5                NA                1.0592560   1.0151995   1.1033124
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          [42.5-50)            NA                1.0935130   1.0610511   1.1259749
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          [50-57.5)            NA                1.1309925   1.0922820   1.1697031
6-12 months    ki1017093-NIH-Birth         BANGLADESH                     >=57.5               NA                1.2043158   1.1489463   1.2596853
6-12 months    ki1017093-NIH-Birth         BANGLADESH                     <42.5                NA                1.1209302   1.0787626   1.1630978
6-12 months    ki1017093-NIH-Birth         BANGLADESH                     [42.5-50)            NA                1.1473027   1.1098849   1.1847205
6-12 months    ki1017093-NIH-Birth         BANGLADESH                     [50-57.5)            NA                1.2300847   1.1832832   1.2768863
6-12 months    ki1017093b-PROVIDE          BANGLADESH                     >=57.5               NA                1.2309329   1.1932667   1.2685991
6-12 months    ki1017093b-PROVIDE          BANGLADESH                     <42.5                NA                1.1054265   1.0707198   1.1401332
6-12 months    ki1017093b-PROVIDE          BANGLADESH                     [42.5-50)            NA                1.1634827   1.1339310   1.1930345
6-12 months    ki1017093b-PROVIDE          BANGLADESH                     [50-57.5)            NA                1.2098011   1.1756906   1.2439116
6-12 months    ki1017093c-NIH-Crypto       BANGLADESH                     >=57.5               NA                1.2814014   1.2459852   1.3168175
6-12 months    ki1017093c-NIH-Crypto       BANGLADESH                     <42.5                NA                1.1743049   1.1317857   1.2168240
6-12 months    ki1017093c-NIH-Crypto       BANGLADESH                     [42.5-50)            NA                1.2098180   1.1797202   1.2399158
6-12 months    ki1017093c-NIH-Crypto       BANGLADESH                     [50-57.5)            NA                1.2256486   1.1929293   1.2583679
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=57.5               NA                1.2076104   1.1810738   1.2341470
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <42.5                NA                1.0811881   0.9208973   1.2414790
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [42.5-50)            NA                1.1520688   1.0697662   1.2343714
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [50-57.5)            NA                1.1934906   1.1503299   1.2366512
6-12 months    ki1119695-PROBIT            BELARUS                        >=57.5               NA                1.4768546   1.4373249   1.5163842
6-12 months    ki1119695-PROBIT            BELARUS                        <42.5                NA                1.3780889   1.2134985   1.5426793
6-12 months    ki1119695-PROBIT            BELARUS                        [42.5-50)            NA                1.4634602   1.4118057   1.5151147
6-12 months    ki1119695-PROBIT            BELARUS                        [50-57.5)            NA                1.4597468   1.4176539   1.5018397
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       >=57.5               NA                1.2016767   1.1868249   1.2165285
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       <42.5                NA                1.1043894   1.0013767   1.2074020
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       [42.5-50)            NA                1.1678318   1.1373447   1.1983189
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       [50-57.5)            NA                1.2069448   1.1875588   1.2263309
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         >=57.5               NA                1.2615652   1.2282638   1.2948665
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         <42.5                NA                1.2183185   1.1478513   1.2887856
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         [42.5-50)            NA                1.1881912   1.1575666   1.2188157
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         [50-57.5)            NA                1.2281994   1.2013732   1.2550256
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         >=57.5               NA                1.2113762   1.1674652   1.2552872
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         <42.5                NA                1.1445623   1.0455210   1.2436035
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         [42.5-50)            NA                1.1724677   1.1251530   1.2197824
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         [50-57.5)            NA                1.2115123   1.1755990   1.2474257
6-12 months    ki1148112-LCNI-5            MALAWI                         >=57.5               NA                1.2713226   1.2189564   1.3236889
6-12 months    ki1148112-LCNI-5            MALAWI                         <42.5                NA                1.2523284   1.1720074   1.3326493
6-12 months    ki1148112-LCNI-5            MALAWI                         [42.5-50)            NA                1.2804288   1.2382396   1.3226181
6-12 months    ki1148112-LCNI-5            MALAWI                         [50-57.5)            NA                1.2874460   1.2415991   1.3332930
12-24 months   ki0047075b-MAL-ED           BANGLADESH                     >=57.5               NA                0.8741395   0.8451173   0.9031618
12-24 months   ki0047075b-MAL-ED           BANGLADESH                     <42.5                NA                0.7956312   0.7606960   0.8305665
12-24 months   ki0047075b-MAL-ED           BANGLADESH                     [42.5-50)            NA                0.8257566   0.8022353   0.8492780
12-24 months   ki0047075b-MAL-ED           BANGLADESH                     [50-57.5)            NA                0.8961774   0.8597621   0.9325928
12-24 months   ki0047075b-MAL-ED           BRAZIL                         >=57.5               NA                0.9696966   0.9354759   1.0039173
12-24 months   ki0047075b-MAL-ED           BRAZIL                         <42.5                NA                0.8784231   0.7224922   1.0343540
12-24 months   ki0047075b-MAL-ED           BRAZIL                         [42.5-50)            NA                1.0423549   0.9346796   1.1500302
12-24 months   ki0047075b-MAL-ED           BRAZIL                         [50-57.5)            NA                1.0248361   0.9485218   1.1011505
12-24 months   ki0047075b-MAL-ED           INDIA                          >=57.5               NA                0.9243340   0.8798833   0.9687848
12-24 months   ki0047075b-MAL-ED           INDIA                          <42.5                NA                0.8544900   0.8135014   0.8954785
12-24 months   ki0047075b-MAL-ED           INDIA                          [42.5-50)            NA                0.8870885   0.8580776   0.9160994
12-24 months   ki0047075b-MAL-ED           INDIA                          [50-57.5)            NA                0.8655299   0.8363195   0.8947403
12-24 months   ki0047075b-MAL-ED           PERU                           >=57.5               NA                0.8885976   0.8553583   0.9218368
12-24 months   ki0047075b-MAL-ED           PERU                           <42.5                NA                0.7585684   0.6404096   0.8767271
12-24 months   ki0047075b-MAL-ED           PERU                           [42.5-50)            NA                0.7851408   0.7477474   0.8225341
12-24 months   ki0047075b-MAL-ED           PERU                           [50-57.5)            NA                0.8434983   0.8110224   0.8759741
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=57.5               NA                0.8071869   0.7692932   0.8450806
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   <42.5                NA                0.7083378   0.5701135   0.8465620
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   [42.5-50)            NA                0.7623718   0.7200672   0.8046764
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   [50-57.5)            NA                0.7178778   0.6780511   0.7577045
12-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     <42.5                NA                0.8633839   0.8142796   0.9124883
12-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     [42.5-50)            NA                0.8084066   0.7515189   0.8652944
12-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     [50-57.5)            NA                0.9277521   0.8556593   0.9998450
12-24 months   ki1017093-NIH-Birth         BANGLADESH                     >=57.5               NA                0.7918486   0.7521067   0.8315906
12-24 months   ki1017093-NIH-Birth         BANGLADESH                     <42.5                NA                0.7240042   0.6967299   0.7512785
12-24 months   ki1017093-NIH-Birth         BANGLADESH                     [42.5-50)            NA                0.7540107   0.7304666   0.7775547
12-24 months   ki1017093-NIH-Birth         BANGLADESH                     [50-57.5)            NA                0.7573665   0.7261398   0.7885933
12-24 months   ki1017093b-PROVIDE          BANGLADESH                     >=57.5               NA                0.9039770   0.8777777   0.9301762
12-24 months   ki1017093b-PROVIDE          BANGLADESH                     <42.5                NA                0.8248700   0.8038349   0.8459051
12-24 months   ki1017093b-PROVIDE          BANGLADESH                     [42.5-50)            NA                0.8361046   0.8144637   0.8577455
12-24 months   ki1017093b-PROVIDE          BANGLADESH                     [50-57.5)            NA                0.8815022   0.8565026   0.9065018
12-24 months   ki1017093c-NIH-Crypto       BANGLADESH                     >=57.5               NA                0.9194634   0.8981289   0.9407979
12-24 months   ki1017093c-NIH-Crypto       BANGLADESH                     <42.5                NA                0.8304662   0.8061618   0.8547705
12-24 months   ki1017093c-NIH-Crypto       BANGLADESH                     [42.5-50)            NA                0.8527740   0.8320884   0.8734596
12-24 months   ki1017093c-NIH-Crypto       BANGLADESH                     [50-57.5)            NA                0.8791030   0.8552560   0.9029500
12-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       >=57.5               NA                0.7284701   0.6881993   0.7687409
12-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       <42.5                NA                0.7723440   0.5751594   0.9695287
12-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       [42.5-50)            NA                0.6655343   0.6008385   0.7302302
12-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       [50-57.5)            NA                0.7079477   0.6703375   0.7455578
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         >=57.5               NA                0.8561162   0.8293961   0.8828362
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         <42.5                NA                0.7915465   0.7339536   0.8491395
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         [42.5-50)            NA                0.7846879   0.7627835   0.8065923
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         [50-57.5)            NA                0.7971309   0.7726958   0.8215659
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         >=57.5               NA                0.8662456   0.8327606   0.8997305
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         <42.5                NA                0.8707123   0.8205442   0.9208804
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         [42.5-50)            NA                0.8232635   0.7974904   0.8490367
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         [50-57.5)            NA                0.8124479   0.7897358   0.8351600
12-24 months   ki1148112-LCNI-5            MALAWI                         >=57.5               NA                0.8448706   0.8047432   0.8849980
12-24 months   ki1148112-LCNI-5            MALAWI                         <42.5                NA                0.8337318   0.7718838   0.8955797
12-24 months   ki1148112-LCNI-5            MALAWI                         [42.5-50)            NA                0.8256904   0.8004675   0.8509133
12-24 months   ki1148112-LCNI-5            MALAWI                         [50-57.5)            NA                0.8566229   0.8276199   0.8856260


### Parameter: E(Y)


diffcat        studyid                     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  --------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED           BANGLADESH                     NA                   NA                3.5634447   3.5006347   3.6262547
0-3 months     ki0047075b-MAL-ED           BRAZIL                         NA                   NA                4.0509714   3.9492443   4.1526985
0-3 months     ki0047075b-MAL-ED           INDIA                          NA                   NA                3.5764512   3.4977133   3.6551891
0-3 months     ki0047075b-MAL-ED           PERU                           NA                   NA                3.3169985   3.2535876   3.3804093
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                3.4816904   3.4044928   3.5588880
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                3.6027228   3.5754164   3.6300291
0-3 months     ki1017093-NIH-Birth         BANGLADESH                     NA                   NA                3.3129255   3.2581305   3.3677204
0-3 months     ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                3.4842409   3.4451170   3.5233649
0-3 months     ki1017093c-NIH-Crypto       BANGLADESH                     NA                   NA                3.3028656   3.2646714   3.3410598
0-3 months     ki1119695-PROBIT            BELARUS                        NA                   NA                2.8371979   2.7235359   2.9508598
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                3.3681331   3.3469290   3.3893373
3-6 months     ki0047075b-MAL-ED           BANGLADESH                     NA                   NA                1.9280462   1.8787523   1.9773401
3-6 months     ki0047075b-MAL-ED           BRAZIL                         NA                   NA                2.1465654   2.0670402   2.2260907
3-6 months     ki0047075b-MAL-ED           INDIA                          NA                   NA                1.8804733   1.8192508   1.9416958
3-6 months     ki0047075b-MAL-ED           PERU                           NA                   NA                2.0179168   1.9519428   2.0838909
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.8300902   1.7622436   1.8979368
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                1.9414853   1.8982034   1.9847672
3-6 months     ki1017093-NIH-Birth         BANGLADESH                     NA                   NA                1.8326915   1.7846731   1.8807099
3-6 months     ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                1.9654067   1.9302800   2.0005334
3-6 months     ki1017093c-NIH-Crypto       BANGLADESH                     NA                   NA                2.0057973   1.9693775   2.0422170
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.7969193   1.7606988   1.8331397
3-6 months     ki1119695-PROBIT            BELARUS                        NA                   NA                2.0905265   2.0499813   2.1310716
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                1.9747138   1.9547117   1.9947160
6-12 months    ki0047075b-MAL-ED           BANGLADESH                     NA                   NA                1.1143928   1.0896103   1.1391753
6-12 months    ki0047075b-MAL-ED           BRAZIL                         NA                   NA                1.3821617   1.3363222   1.4280012
6-12 months    ki0047075b-MAL-ED           INDIA                          NA                   NA                1.1193380   1.0909904   1.1476855
6-12 months    ki0047075b-MAL-ED           PERU                           NA                   NA                1.2115356   1.1787814   1.2442898
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.0019524   0.9648566   1.0390481
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                1.0992229   1.0870848   1.1113609
6-12 months    ki1017093-NIH-Birth         BANGLADESH                     NA                   NA                1.1679344   1.1454934   1.1903754
6-12 months    ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                1.1731762   1.1558671   1.1904853
6-12 months    ki1017093c-NIH-Crypto       BANGLADESH                     NA                   NA                1.2281313   1.2106849   1.2455776
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.1973654   1.1756426   1.2190883
6-12 months    ki1119695-PROBIT            BELARUS                        NA                   NA                1.4725107   1.4339287   1.5110927
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                1.1977224   1.1867758   1.2086690
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                1.2233034   1.2064383   1.2401685
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                1.1967205   1.1731767   1.2202643
6-12 months    ki1148112-LCNI-5            MALAWI                         NA                   NA                1.2792060   1.2531790   1.3052331
12-24 months   ki0047075b-MAL-ED           BANGLADESH                     NA                   NA                0.8459764   0.8299714   0.8619814
12-24 months   ki0047075b-MAL-ED           BRAZIL                         NA                   NA                0.9836574   0.9529821   1.0143327
12-24 months   ki0047075b-MAL-ED           INDIA                          NA                   NA                0.8805522   0.8631583   0.8979461
12-24 months   ki0047075b-MAL-ED           PERU                           NA                   NA                0.8463453   0.8256453   0.8670453
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7663111   0.7428636   0.7897586
12-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.8610206   0.8251715   0.8968698
12-24 months   ki1017093-NIH-Birth         BANGLADESH                     NA                   NA                0.7513013   0.7366996   0.7659029
12-24 months   ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                0.8575519   0.8455586   0.8695452
12-24 months   ki1017093c-NIH-Crypto       BANGLADESH                     NA                   NA                0.8755729   0.8637860   0.8873598
12-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.7098483   0.6838588   0.7358377
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.8055853   0.7916402   0.8195305
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.8324091   0.8174024   0.8474157
12-24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.8406140   0.8238233   0.8574047


### Parameter: ATE


diffcat        studyid                     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED           BANGLADESH                     >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED           BANGLADESH                     <42.5                >=57.5            -0.2145640   -0.4168093   -0.0123187
0-3 months     ki0047075b-MAL-ED           BANGLADESH                     [42.5-50)            >=57.5            -0.0463165   -0.2223896    0.1297566
0-3 months     ki0047075b-MAL-ED           BANGLADESH                     [50-57.5)            >=57.5             0.0703890   -0.1102317    0.2510098
0-3 months     ki0047075b-MAL-ED           BRAZIL                         >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED           BRAZIL                         <42.5                >=57.5             0.0633399   -0.3575666    0.4842464
0-3 months     ki0047075b-MAL-ED           BRAZIL                         [42.5-50)            >=57.5            -0.1194534   -0.5272813    0.2883744
0-3 months     ki0047075b-MAL-ED           BRAZIL                         [50-57.5)            >=57.5             0.0254082   -0.2585551    0.3093714
0-3 months     ki0047075b-MAL-ED           INDIA                          >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED           INDIA                          <42.5                >=57.5            -0.0309576   -0.3079843    0.2460691
0-3 months     ki0047075b-MAL-ED           INDIA                          [42.5-50)            >=57.5             0.0503962   -0.2095746    0.3103670
0-3 months     ki0047075b-MAL-ED           INDIA                          [50-57.5)            >=57.5             0.0220869   -0.2515907    0.2957645
0-3 months     ki0047075b-MAL-ED           PERU                           >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED           PERU                           <42.5                >=57.5             0.0796930   -0.2047372    0.3641232
0-3 months     ki0047075b-MAL-ED           PERU                           [42.5-50)            >=57.5             0.1158428   -0.0510791    0.2827647
0-3 months     ki0047075b-MAL-ED           PERU                           [50-57.5)            >=57.5            -0.0167736   -0.1655525    0.1320053
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   <42.5                >=57.5             0.3337108   -0.0248480    0.6922696
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   [42.5-50)            >=57.5            -0.0459505   -0.2345853    0.1426842
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   [50-57.5)            >=57.5             0.0393375   -0.1499152    0.2285902
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          <42.5                >=57.5            -0.1622045   -0.3156978   -0.0087112
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          [42.5-50)            >=57.5            -0.0172943   -0.1378907    0.1033020
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          [50-57.5)            >=57.5             0.0146986   -0.1091494    0.1385466
0-3 months     ki1017093-NIH-Birth         BANGLADESH                     >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth         BANGLADESH                     <42.5                >=57.5            -0.0435194   -0.2483703    0.1613314
0-3 months     ki1017093-NIH-Birth         BANGLADESH                     [42.5-50)            >=57.5            -0.0499237   -0.2507440    0.1508966
0-3 months     ki1017093-NIH-Birth         BANGLADESH                     [50-57.5)            >=57.5            -0.0882730   -0.3004988    0.1239529
0-3 months     ki1017093b-PROVIDE          BANGLADESH                     >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE          BANGLADESH                     <42.5                >=57.5            -0.0933248   -0.2120838    0.0254342
0-3 months     ki1017093b-PROVIDE          BANGLADESH                     [42.5-50)            >=57.5            -0.0561623   -0.1719261    0.0596016
0-3 months     ki1017093b-PROVIDE          BANGLADESH                     [50-57.5)            >=57.5             0.0641632   -0.0628364    0.1911628
0-3 months     ki1017093c-NIH-Crypto       BANGLADESH                     >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto       BANGLADESH                     <42.5                >=57.5            -0.0702719   -0.1981995    0.0576558
0-3 months     ki1017093c-NIH-Crypto       BANGLADESH                     [42.5-50)            >=57.5            -0.0385333   -0.1413864    0.0643198
0-3 months     ki1017093c-NIH-Crypto       BANGLADESH                     [50-57.5)            >=57.5             0.0068062   -0.0899192    0.1035316
0-3 months     ki1119695-PROBIT            BELARUS                        >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT            BELARUS                        <42.5                >=57.5            -0.1466606   -0.5358727    0.2425516
0-3 months     ki1119695-PROBIT            BELARUS                        [42.5-50)            >=57.5             0.0071729   -0.0869668    0.1013127
0-3 months     ki1119695-PROBIT            BELARUS                        [50-57.5)            >=57.5             0.0282436   -0.0198872    0.0763744
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       <42.5                >=57.5            -0.2548753   -0.4422550   -0.0674956
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       [42.5-50)            >=57.5            -0.1208807   -0.1858239   -0.0559375
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       [50-57.5)            >=57.5            -0.0648468   -0.1125614   -0.0171322
3-6 months     ki0047075b-MAL-ED           BANGLADESH                     >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED           BANGLADESH                     <42.5                >=57.5             0.0290442   -0.1152199    0.1733083
3-6 months     ki0047075b-MAL-ED           BANGLADESH                     [42.5-50)            >=57.5             0.0430433   -0.0775393    0.1636259
3-6 months     ki0047075b-MAL-ED           BANGLADESH                     [50-57.5)            >=57.5             0.0510102   -0.0740337    0.1760541
3-6 months     ki0047075b-MAL-ED           BRAZIL                         >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED           BRAZIL                         <42.5                >=57.5            -0.1927807   -0.4983292    0.1127677
3-6 months     ki0047075b-MAL-ED           BRAZIL                         [42.5-50)            >=57.5             0.0998530   -0.1276217    0.3273278
3-6 months     ki0047075b-MAL-ED           BRAZIL                         [50-57.5)            >=57.5             0.0558392   -0.1436475    0.2553260
3-6 months     ki0047075b-MAL-ED           INDIA                          >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED           INDIA                          <42.5                >=57.5             0.0580661   -0.1758921    0.2920243
3-6 months     ki0047075b-MAL-ED           INDIA                          [42.5-50)            >=57.5             0.0567843   -0.1385946    0.2521633
3-6 months     ki0047075b-MAL-ED           INDIA                          [50-57.5)            >=57.5            -0.0002221   -0.1969201    0.1964759
3-6 months     ki0047075b-MAL-ED           PERU                           >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED           PERU                           <42.5                >=57.5            -0.0100678   -0.2681072    0.2479716
3-6 months     ki0047075b-MAL-ED           PERU                           [42.5-50)            >=57.5            -0.0760240   -0.2531861    0.1011381
3-6 months     ki0047075b-MAL-ED           PERU                           [50-57.5)            >=57.5             0.0571376   -0.0998216    0.2140967
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   <42.5                >=57.5            -0.2616172   -0.6622221    0.1389878
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   [42.5-50)            >=57.5             0.0270561   -0.1361118    0.1902239
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   [50-57.5)            >=57.5            -0.0075238   -0.1748770    0.1598293
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          <42.5                >=57.5            -0.1708851   -0.2984122   -0.0433580
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          [42.5-50)            >=57.5            -0.1250804   -0.2238526   -0.0263082
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          [50-57.5)            >=57.5            -0.0781586   -0.1879573    0.0316401
3-6 months     ki1017093-NIH-Birth         BANGLADESH                     >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth         BANGLADESH                     <42.5                >=57.5            -0.2345194   -0.3932530   -0.0757858
3-6 months     ki1017093-NIH-Birth         BANGLADESH                     [42.5-50)            >=57.5            -0.0825287   -0.2389963    0.0739390
3-6 months     ki1017093-NIH-Birth         BANGLADESH                     [50-57.5)            >=57.5            -0.0816927   -0.2505177    0.0871322
3-6 months     ki1017093b-PROVIDE          BANGLADESH                     >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE          BANGLADESH                     <42.5                >=57.5             0.0141466   -0.0969363    0.1252295
3-6 months     ki1017093b-PROVIDE          BANGLADESH                     [42.5-50)            >=57.5            -0.0219362   -0.1265195    0.0826471
3-6 months     ki1017093b-PROVIDE          BANGLADESH                     [50-57.5)            >=57.5             0.0590495   -0.0511179    0.1692169
3-6 months     ki1017093c-NIH-Crypto       BANGLADESH                     >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto       BANGLADESH                     <42.5                >=57.5             0.0292063   -0.0814463    0.1398588
3-6 months     ki1017093c-NIH-Crypto       BANGLADESH                     [42.5-50)            >=57.5             0.0480585   -0.0497778    0.1458948
3-6 months     ki1017093c-NIH-Crypto       BANGLADESH                     [50-57.5)            >=57.5             0.0650337   -0.0330137    0.1630812
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <42.5                >=57.5            -0.1048073   -0.4880600    0.2784453
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [42.5-50)            >=57.5             0.0410275   -0.0967483    0.1788032
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [50-57.5)            >=57.5            -0.0366954   -0.1174757    0.0440850
3-6 months     ki1119695-PROBIT            BELARUS                        >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT            BELARUS                        <42.5                >=57.5            -0.0402168   -0.3100606    0.2296271
3-6 months     ki1119695-PROBIT            BELARUS                        [42.5-50)            >=57.5            -0.0157709   -0.1083147    0.0767730
3-6 months     ki1119695-PROBIT            BELARUS                        [50-57.5)            >=57.5             0.0082398   -0.0244714    0.0409511
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       <42.5                >=57.5             0.0461947   -0.1500758    0.2424652
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       [42.5-50)            >=57.5             0.0055353   -0.0560431    0.0671138
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       [50-57.5)            >=57.5            -0.0174983   -0.0623929    0.0273962
6-12 months    ki0047075b-MAL-ED           BANGLADESH                     >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED           BANGLADESH                     <42.5                >=57.5            -0.0456316   -0.1294958    0.0382326
6-12 months    ki0047075b-MAL-ED           BANGLADESH                     [42.5-50)            >=57.5            -0.0084942   -0.0840451    0.0670567
6-12 months    ki0047075b-MAL-ED           BANGLADESH                     [50-57.5)            >=57.5             0.0036842   -0.0756236    0.0829920
6-12 months    ki0047075b-MAL-ED           BRAZIL                         >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED           BRAZIL                         <42.5                >=57.5            -0.0536157   -0.2538078    0.1465764
6-12 months    ki0047075b-MAL-ED           BRAZIL                         [42.5-50)            >=57.5            -0.0336202   -0.1614687    0.0942283
6-12 months    ki0047075b-MAL-ED           BRAZIL                         [50-57.5)            >=57.5            -0.0599906   -0.1875840    0.0676027
6-12 months    ki0047075b-MAL-ED           INDIA                          >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED           INDIA                          <42.5                >=57.5             0.0043066   -0.0906760    0.0992892
6-12 months    ki0047075b-MAL-ED           INDIA                          [42.5-50)            >=57.5             0.0010169   -0.0817091    0.0837429
6-12 months    ki0047075b-MAL-ED           INDIA                          [50-57.5)            >=57.5             0.0178568   -0.0540626    0.0897762
6-12 months    ki0047075b-MAL-ED           PERU                           >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED           PERU                           <42.5                >=57.5            -0.0595082   -0.1934830    0.0744667
6-12 months    ki0047075b-MAL-ED           PERU                           [42.5-50)            >=57.5             0.0440376   -0.0394039    0.1274790
6-12 months    ki0047075b-MAL-ED           PERU                           [50-57.5)            >=57.5             0.0098569   -0.0682791    0.0879928
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   <42.5                >=57.5             0.1683480   -0.0589523    0.3956483
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   [42.5-50)            >=57.5             0.0448116   -0.0424983    0.1321215
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   [50-57.5)            >=57.5             0.0728821   -0.0187504    0.1645145
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          <42.5                >=57.5            -0.0892382   -0.1828651    0.0043886
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          [42.5-50)            >=57.5            -0.0549812   -0.1271587    0.0171964
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          [50-57.5)            >=57.5            -0.0175017   -0.1004509    0.0654475
6-12 months    ki1017093-NIH-Birth         BANGLADESH                     >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth         BANGLADESH                     <42.5                >=57.5            -0.0833856   -0.1529836   -0.0137876
6-12 months    ki1017093-NIH-Birth         BANGLADESH                     [42.5-50)            >=57.5            -0.0570131   -0.1238402    0.0098141
6-12 months    ki1017093-NIH-Birth         BANGLADESH                     [50-57.5)            >=57.5             0.0257690   -0.0467304    0.0982684
6-12 months    ki1017093b-PROVIDE          BANGLADESH                     >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE          BANGLADESH                     <42.5                >=57.5            -0.1255064   -0.1767245   -0.0742882
6-12 months    ki1017093b-PROVIDE          BANGLADESH                     [42.5-50)            >=57.5            -0.0674501   -0.1153255   -0.0195748
6-12 months    ki1017093b-PROVIDE          BANGLADESH                     [50-57.5)            >=57.5            -0.0211318   -0.0719478    0.0296842
6-12 months    ki1017093c-NIH-Crypto       BANGLADESH                     >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto       BANGLADESH                     <42.5                >=57.5            -0.1070965   -0.1624335   -0.0517595
6-12 months    ki1017093c-NIH-Crypto       BANGLADESH                     [42.5-50)            >=57.5            -0.0715834   -0.1180611   -0.0251056
6-12 months    ki1017093c-NIH-Crypto       BANGLADESH                     [50-57.5)            >=57.5            -0.0557527   -0.1039695   -0.0075360
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <42.5                >=57.5            -0.1264223   -0.2888949    0.0360503
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [42.5-50)            >=57.5            -0.0555416   -0.1420165    0.0309333
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [50-57.5)            >=57.5            -0.0141198   -0.0647857    0.0365460
6-12 months    ki1119695-PROBIT            BELARUS                        >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT            BELARUS                        <42.5                >=57.5            -0.0987657   -0.2670754    0.0695440
6-12 months    ki1119695-PROBIT            BELARUS                        [42.5-50)            >=57.5            -0.0133944   -0.0442726    0.0174838
6-12 months    ki1119695-PROBIT            BELARUS                        [50-57.5)            >=57.5            -0.0171078   -0.0447054    0.0104899
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       <42.5                >=57.5            -0.0972873   -0.2013651    0.0067904
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       [42.5-50)            >=57.5            -0.0338449   -0.0677571    0.0000673
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       [50-57.5)            >=57.5             0.0052681   -0.0191530    0.0296893
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         <42.5                >=57.5            -0.0432467   -0.1211864    0.0346930
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         [42.5-50)            >=57.5            -0.0733740   -0.1186161   -0.0281320
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         [50-57.5)            >=57.5            -0.0333657   -0.0761282    0.0093967
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         <42.5                >=57.5            -0.0668139   -0.1751530    0.0415251
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         [42.5-50)            >=57.5            -0.0389085   -0.1034597    0.0256426
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         [50-57.5)            >=57.5             0.0001361   -0.0565908    0.0568630
6-12 months    ki1148112-LCNI-5            MALAWI                         >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5            MALAWI                         <42.5                >=57.5            -0.0189943   -0.1148780    0.0768894
6-12 months    ki1148112-LCNI-5            MALAWI                         [42.5-50)            >=57.5             0.0091062   -0.0581408    0.0763532
6-12 months    ki1148112-LCNI-5            MALAWI                         [50-57.5)            >=57.5             0.0161234   -0.0534767    0.0857235
12-24 months   ki0047075b-MAL-ED           BANGLADESH                     >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED           BANGLADESH                     <42.5                >=57.5            -0.0785083   -0.1239259   -0.0330906
12-24 months   ki0047075b-MAL-ED           BANGLADESH                     [42.5-50)            >=57.5            -0.0483829   -0.0857399   -0.0110259
12-24 months   ki0047075b-MAL-ED           BANGLADESH                     [50-57.5)            >=57.5             0.0220379   -0.0245278    0.0686037
12-24 months   ki0047075b-MAL-ED           BRAZIL                         >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED           BRAZIL                         <42.5                >=57.5            -0.0912735   -0.2509153    0.0683683
12-24 months   ki0047075b-MAL-ED           BRAZIL                         [42.5-50)            >=57.5             0.0726583   -0.0403241    0.1856407
12-24 months   ki0047075b-MAL-ED           BRAZIL                         [50-57.5)            >=57.5             0.0551395   -0.0284962    0.1387752
12-24 months   ki0047075b-MAL-ED           INDIA                          >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED           INDIA                          <42.5                >=57.5            -0.0698440   -0.1303083   -0.0093797
12-24 months   ki0047075b-MAL-ED           INDIA                          [42.5-50)            >=57.5            -0.0372455   -0.0903257    0.0158346
12-24 months   ki0047075b-MAL-ED           INDIA                          [50-57.5)            >=57.5            -0.0588041   -0.1119935   -0.0056146
12-24 months   ki0047075b-MAL-ED           PERU                           >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED           PERU                           <42.5                >=57.5            -0.1300292   -0.2527742   -0.0072842
12-24 months   ki0047075b-MAL-ED           PERU                           [42.5-50)            >=57.5            -0.1034568   -0.1534879   -0.0534258
12-24 months   ki0047075b-MAL-ED           PERU                           [50-57.5)            >=57.5            -0.0450993   -0.0915700    0.0013714
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   <42.5                >=57.5            -0.0988491   -0.2421735    0.0444752
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   [42.5-50)            >=57.5            -0.0448151   -0.1016096    0.0119794
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   [50-57.5)            >=57.5            -0.0893091   -0.1442827   -0.0343355
12-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     <42.5                <42.5              0.0000000    0.0000000    0.0000000
12-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     [42.5-50)            <42.5             -0.0549773   -0.1301268    0.0201722
12-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     [50-57.5)            <42.5              0.0643682   -0.0228592    0.1515956
12-24 months   ki1017093-NIH-Birth         BANGLADESH                     >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
12-24 months   ki1017093-NIH-Birth         BANGLADESH                     <42.5                >=57.5            -0.0678444   -0.1160451   -0.0196437
12-24 months   ki1017093-NIH-Birth         BANGLADESH                     [42.5-50)            >=57.5            -0.0378380   -0.0840304    0.0083545
12-24 months   ki1017093-NIH-Birth         BANGLADESH                     [50-57.5)            >=57.5            -0.0344821   -0.0850245    0.0160603
12-24 months   ki1017093b-PROVIDE          BANGLADESH                     >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE          BANGLADESH                     <42.5                >=57.5            -0.0791070   -0.1127057   -0.0455082
12-24 months   ki1017093b-PROVIDE          BANGLADESH                     [42.5-50)            >=57.5            -0.0678724   -0.1018537   -0.0338911
12-24 months   ki1017093b-PROVIDE          BANGLADESH                     [50-57.5)            >=57.5            -0.0224748   -0.0586877    0.0137382
12-24 months   ki1017093c-NIH-Crypto       BANGLADESH                     >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto       BANGLADESH                     <42.5                >=57.5            -0.0889972   -0.1213370   -0.0566574
12-24 months   ki1017093c-NIH-Crypto       BANGLADESH                     [42.5-50)            >=57.5            -0.0666894   -0.0964056   -0.0369732
12-24 months   ki1017093c-NIH-Crypto       BANGLADESH                     [50-57.5)            >=57.5            -0.0403604   -0.0723579   -0.0083628
12-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
12-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       <42.5                >=57.5             0.0438740   -0.1573809    0.2451288
12-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       [42.5-50)            >=57.5            -0.0629357   -0.1391413    0.0132698
12-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       [50-57.5)            >=57.5            -0.0205224   -0.0756247    0.0345799
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         <42.5                >=57.5            -0.0645696   -0.1280591   -0.0010802
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         [42.5-50)            >=57.5            -0.0714283   -0.1059792   -0.0368773
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         [50-57.5)            >=57.5            -0.0589853   -0.0951935   -0.0227771
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         <42.5                >=57.5             0.0044667   -0.0558498    0.0647833
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         [42.5-50)            >=57.5            -0.0429820   -0.0852372   -0.0007269
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         [50-57.5)            >=57.5            -0.0537977   -0.0942586   -0.0133368
12-24 months   ki1148112-LCNI-5            MALAWI                         >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5            MALAWI                         <42.5                >=57.5            -0.0111388   -0.0848638    0.0625862
12-24 months   ki1148112-LCNI-5            MALAWI                         [42.5-50)            >=57.5            -0.0191802   -0.0665764    0.0282160
12-24 months   ki1148112-LCNI-5            MALAWI                         [50-57.5)            >=57.5             0.0117524   -0.0377591    0.0612638
