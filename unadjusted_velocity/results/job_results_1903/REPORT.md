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
![](/tmp/ca34bcf9-8991-4fce-8d7c-25cbae6cadd0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/ca34bcf9-8991-4fce-8d7c-25cbae6cadd0/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


diffcat        studyid                     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED           BANGLADESH                     >=57.5               NA                -0.0156138   -0.0869242    0.0556966
0-3 months     ki0047075b-MAL-ED           BANGLADESH                     <42.5                NA                -0.0989004   -0.1724998   -0.0253010
0-3 months     ki0047075b-MAL-ED           BANGLADESH                     [42.5-50)            NA                -0.0427055   -0.0959008    0.0104898
0-3 months     ki0047075b-MAL-ED           BANGLADESH                     [50-57.5)            NA                 0.0268459   -0.0323542    0.0860460
0-3 months     ki0047075b-MAL-ED           BRAZIL                         >=57.5               NA                 0.1865246    0.1260819    0.2469672
0-3 months     ki0047075b-MAL-ED           BRAZIL                         <42.5                NA                 0.2550369    0.0196017    0.4904721
0-3 months     ki0047075b-MAL-ED           BRAZIL                         [42.5-50)            NA                 0.1761576   -0.0063426    0.3586578
0-3 months     ki0047075b-MAL-ED           BRAZIL                         [50-57.5)            NA                 0.1991013    0.0691112    0.3290914
0-3 months     ki0047075b-MAL-ED           INDIA                          >=57.5               NA                -0.0447659   -0.1603227    0.0707909
0-3 months     ki0047075b-MAL-ED           INDIA                          <42.5                NA                -0.0192051   -0.1017672    0.0633569
0-3 months     ki0047075b-MAL-ED           INDIA                          [42.5-50)            NA                -0.0053543   -0.0652212    0.0545125
0-3 months     ki0047075b-MAL-ED           INDIA                          [50-57.5)            NA                -0.0233958   -0.0946964    0.0479048
0-3 months     ki0047075b-MAL-ED           PERU                           >=57.5               NA                -0.1656879   -0.2197078   -0.1116681
0-3 months     ki0047075b-MAL-ED           PERU                           <42.5                NA                -0.1323872   -0.2853817    0.0206074
0-3 months     ki0047075b-MAL-ED           PERU                           [42.5-50)            NA                -0.1012642   -0.1651480   -0.0373804
0-3 months     ki0047075b-MAL-ED           PERU                           [50-57.5)            NA                -0.1798760   -0.2340674   -0.1256845
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=57.5               NA                -0.0634292   -0.1189973   -0.0078611
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   <42.5                NA                 0.1308068   -0.0352495    0.2968631
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   [42.5-50)            NA                -0.0568864   -0.1364698    0.0226970
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   [50-57.5)            NA                -0.0318009   -0.1061958    0.0425940
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          >=57.5               NA                 0.0159883   -0.0425777    0.0745543
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          <42.5                NA                -0.0210384   -0.0519191    0.0098424
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          [42.5-50)            NA                 0.0218137    0.0026044    0.0410231
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          [50-57.5)            NA                 0.0262781   -0.0010503    0.0536065
0-3 months     ki1017093-NIH-Birth         BANGLADESH                     >=57.5               NA                -0.1105509   -0.1965652   -0.0245366
0-3 months     ki1017093-NIH-Birth         BANGLADESH                     <42.5                NA                -0.1044422   -0.1540812   -0.0548031
0-3 months     ki1017093-NIH-Birth         BANGLADESH                     [42.5-50)            NA                -0.1247182   -0.1685613   -0.0808751
0-3 months     ki1017093-NIH-Birth         BANGLADESH                     [50-57.5)            NA                -0.1320222   -0.1859700   -0.0780744
0-3 months     ki1017093b-PROVIDE          BANGLADESH                     >=57.5               NA                -0.0437468   -0.0877066    0.0002130
0-3 months     ki1017093b-PROVIDE          BANGLADESH                     <42.5                NA                -0.0642570   -0.0975597   -0.0309543
0-3 months     ki1017093b-PROVIDE          BANGLADESH                     [42.5-50)            NA                -0.0445546   -0.0745982   -0.0145110
0-3 months     ki1017093b-PROVIDE          BANGLADESH                     [50-57.5)            NA                -0.0104268   -0.0507920    0.0299384
0-3 months     ki1017093c-NIH-Crypto       BANGLADESH                     >=57.5               NA                -0.1094069   -0.1433991   -0.0754148
0-3 months     ki1017093c-NIH-Crypto       BANGLADESH                     <42.5                NA                -0.1387925   -0.1876825   -0.0899026
0-3 months     ki1017093c-NIH-Crypto       BANGLADESH                     [42.5-50)            NA                -0.1332237   -0.1687307   -0.0977168
0-3 months     ki1017093c-NIH-Crypto       BANGLADESH                     [50-57.5)            NA                -0.1134477   -0.1450647   -0.0818307
0-3 months     ki1119695-PROBIT            BELARUS                        >=57.5               NA                -0.4429726   -0.5053506   -0.3805947
0-3 months     ki1119695-PROBIT            BELARUS                        <42.5                NA                -0.4884702   -0.7008049   -0.2761356
0-3 months     ki1119695-PROBIT            BELARUS                        [42.5-50)            NA                -0.4219958   -0.4901800   -0.3538116
0-3 months     ki1119695-PROBIT            BELARUS                        [50-57.5)            NA                -0.4172690   -0.4698818   -0.3646561
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       >=57.5               NA                -0.1303930   -0.1446501   -0.1161360
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       <42.5                NA                -0.2232150   -0.3200935   -0.1263365
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       [42.5-50)            NA                -0.1729176   -0.2019587   -0.1438764
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       [50-57.5)            NA                -0.1533097   -0.1722958   -0.1343237
3-6 months     ki0047075b-MAL-ED           BANGLADESH                     >=57.5               NA                -0.0399057   -0.0761950   -0.0036163
3-6 months     ki0047075b-MAL-ED           BANGLADESH                     <42.5                NA                -0.0145545   -0.0703228    0.0412137
3-6 months     ki0047075b-MAL-ED           BANGLADESH                     [42.5-50)            NA                -0.0207653   -0.0634384    0.0219078
3-6 months     ki0047075b-MAL-ED           BANGLADESH                     [50-57.5)            NA                -0.0177220   -0.0628367    0.0273926
3-6 months     ki0047075b-MAL-ED           BRAZIL                         >=57.5               NA                 0.0537684    0.0063270    0.1012098
3-6 months     ki0047075b-MAL-ED           BRAZIL                         <42.5                NA                -0.0203070   -0.1530273    0.1124133
3-6 months     ki0047075b-MAL-ED           BRAZIL                         [42.5-50)            NA                 0.1081375    0.0151370    0.2011381
3-6 months     ki0047075b-MAL-ED           BRAZIL                         [50-57.5)            NA                 0.0797241    0.0029521    0.1564960
3-6 months     ki0047075b-MAL-ED           INDIA                          >=57.5               NA                -0.0571261   -0.1378945    0.0236422
3-6 months     ki0047075b-MAL-ED           INDIA                          <42.5                NA                -0.0169216   -0.0892460    0.0554027
3-6 months     ki0047075b-MAL-ED           INDIA                          [42.5-50)            NA                -0.0320709   -0.0769188    0.0127770
3-6 months     ki0047075b-MAL-ED           INDIA                          [50-57.5)            NA                -0.0577000   -0.1036512   -0.0117488
3-6 months     ki0047075b-MAL-ED           PERU                           >=57.5               NA                 0.0223764   -0.0333580    0.0781107
3-6 months     ki0047075b-MAL-ED           PERU                           <42.5                NA                 0.0170110   -0.0910802    0.1251022
3-6 months     ki0047075b-MAL-ED           PERU                           [42.5-50)            NA                -0.0081292   -0.0717707    0.0555123
3-6 months     ki0047075b-MAL-ED           PERU                           [50-57.5)            NA                 0.0511032    0.0022361    0.0999702
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=57.5               NA                -0.0717855   -0.1219882   -0.0215828
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   <42.5                NA                -0.1702402   -0.3452463    0.0047659
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   [42.5-50)            NA                -0.0509805   -0.1112438    0.0092827
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   [50-57.5)            NA                -0.0750220   -0.1359093   -0.0141347
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          >=57.5               NA                 0.0245843   -0.0179386    0.0671073
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          <42.5                NA                -0.0314862   -0.0811099    0.0181375
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          [42.5-50)            NA                -0.0208732   -0.0478164    0.0060700
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          [50-57.5)            NA                -0.0066669   -0.0239089    0.0105751
3-6 months     ki1017093-NIH-Birth         BANGLADESH                     >=57.5               NA                -0.0069964   -0.0693163    0.0553235
3-6 months     ki1017093-NIH-Birth         BANGLADESH                     <42.5                NA                -0.0989944   -0.1378079   -0.0601810
3-6 months     ki1017093-NIH-Birth         BANGLADESH                     [42.5-50)            NA                -0.0383857   -0.0750446   -0.0017268
3-6 months     ki1017093-NIH-Birth         BANGLADESH                     [50-57.5)            NA                -0.0382896   -0.0860996    0.0095204
3-6 months     ki1017093b-PROVIDE          BANGLADESH                     >=57.5               NA                -0.0413910   -0.0819400   -0.0008420
3-6 months     ki1017093b-PROVIDE          BANGLADESH                     <42.5                NA                -0.0188837   -0.0518421    0.0140746
3-6 months     ki1017093b-PROVIDE          BANGLADESH                     [42.5-50)            NA                -0.0386396   -0.0671615   -0.0101178
3-6 months     ki1017093b-PROVIDE          BANGLADESH                     [50-57.5)            NA                -0.0129894   -0.0452733    0.0192945
3-6 months     ki1017093c-NIH-Crypto       BANGLADESH                     >=57.5               NA                 0.0071508   -0.0246306    0.0389322
3-6 months     ki1017093c-NIH-Crypto       BANGLADESH                     <42.5                NA                 0.0300638   -0.0091097    0.0692374
3-6 months     ki1017093c-NIH-Crypto       BANGLADESH                     [42.5-50)            NA                 0.0320711    0.0001395    0.0640027
3-6 months     ki1017093c-NIH-Crypto       BANGLADESH                     [50-57.5)            NA                 0.0371901    0.0053184    0.0690619
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=57.5               NA                -0.0831746   -0.1044241   -0.0619252
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <42.5                NA                -0.1209823   -0.3026120    0.0606474
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [42.5-50)            NA                -0.0524137   -0.1132939    0.0084664
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [50-57.5)            NA                -0.0941825   -0.1250979   -0.0632671
3-6 months     ki1119695-PROBIT            BELARUS                        >=57.5               NA                 0.0444364    0.0248264    0.0640465
3-6 months     ki1119695-PROBIT            BELARUS                        <42.5                NA                 0.0465407   -0.0811728    0.1742542
3-6 months     ki1119695-PROBIT            BELARUS                        [42.5-50)            NA                 0.0466126    0.0016667    0.0915585
3-6 months     ki1119695-PROBIT            BELARUS                        [50-57.5)            NA                 0.0532180    0.0317490    0.0746870
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       >=57.5               NA                -0.0028198   -0.0154560    0.0098164
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       <42.5                NA                 0.0377219   -0.0523952    0.1278391
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       [42.5-50)            NA                 0.0118764   -0.0140461    0.0377988
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       [50-57.5)            NA                -0.0040872   -0.0208290    0.0126546
6-12 months    ki0047075b-MAL-ED           BANGLADESH                     >=57.5               NA                -0.0807670   -0.1072363   -0.0542977
6-12 months    ki0047075b-MAL-ED           BANGLADESH                     <42.5                NA                -0.0871678   -0.1091886   -0.0651470
6-12 months    ki0047075b-MAL-ED           BANGLADESH                     [42.5-50)            NA                -0.0771019   -0.0939182   -0.0602857
6-12 months    ki0047075b-MAL-ED           BANGLADESH                     [50-57.5)            NA                -0.0806114   -0.1006724   -0.0605505
6-12 months    ki0047075b-MAL-ED           BRAZIL                         >=57.5               NA                 0.0117962   -0.0118429    0.0354353
6-12 months    ki0047075b-MAL-ED           BRAZIL                         <42.5                NA                -0.0017976   -0.0812646    0.0776695
6-12 months    ki0047075b-MAL-ED           BRAZIL                         [42.5-50)            NA                -0.0018755   -0.0492011    0.0454502
6-12 months    ki0047075b-MAL-ED           BRAZIL                         [50-57.5)            NA                -0.0124431   -0.0606756    0.0357894
6-12 months    ki0047075b-MAL-ED           INDIA                          >=57.5               NA                -0.0851094   -0.1101223   -0.0600964
6-12 months    ki0047075b-MAL-ED           INDIA                          <42.5                NA                -0.0750172   -0.1068417   -0.0431927
6-12 months    ki0047075b-MAL-ED           INDIA                          [42.5-50)            NA                -0.0808848   -0.1057320   -0.0560376
6-12 months    ki0047075b-MAL-ED           INDIA                          [50-57.5)            NA                -0.0744741   -0.0918734   -0.0570748
6-12 months    ki0047075b-MAL-ED           PERU                           >=57.5               NA                -0.0431199   -0.0663398   -0.0199000
6-12 months    ki0047075b-MAL-ED           PERU                           <42.5                NA                -0.0637980   -0.1154999   -0.0120961
6-12 months    ki0047075b-MAL-ED           PERU                           [42.5-50)            NA                -0.0183443   -0.0457062    0.0090175
6-12 months    ki0047075b-MAL-ED           PERU                           [50-57.5)            NA                -0.0365024   -0.0608789   -0.0121259
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=57.5               NA                -0.1430835   -0.1687767   -0.1173904
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   <42.5                NA                -0.0465302   -0.1403664    0.0473059
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   [42.5-50)            NA                -0.1200411   -0.1463151   -0.0937672
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   [50-57.5)            NA                -0.1097902   -0.1381239   -0.0814565
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          >=57.5               NA                -0.0770535   -0.1058760   -0.0482311
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          <42.5                NA                -0.0945629   -0.1157744   -0.0733513
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          [42.5-50)            NA                -0.0873667   -0.1012733   -0.0734602
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          [50-57.5)            NA                -0.0780458   -0.0940633   -0.0620284
6-12 months    ki1017093-NIH-Birth         BANGLADESH                     >=57.5               NA                -0.0458799   -0.0693371   -0.0224226
6-12 months    ki1017093-NIH-Birth         BANGLADESH                     <42.5                NA                -0.0627129   -0.0803244   -0.0451014
6-12 months    ki1017093-NIH-Birth         BANGLADESH                     [42.5-50)            NA                -0.0637359   -0.0796733   -0.0477985
6-12 months    ki1017093-NIH-Birth         BANGLADESH                     [50-57.5)            NA                -0.0314474   -0.0503430   -0.0125518
6-12 months    ki1017093b-PROVIDE          BANGLADESH                     >=57.5               NA                -0.0459987   -0.0613868   -0.0306105
6-12 months    ki1017093b-PROVIDE          BANGLADESH                     <42.5                NA                -0.0836696   -0.0974108   -0.0699284
6-12 months    ki1017093b-PROVIDE          BANGLADESH                     [42.5-50)            NA                -0.0642880   -0.0761535   -0.0524225
6-12 months    ki1017093b-PROVIDE          BANGLADESH                     [50-57.5)            NA                -0.0518084   -0.0660694   -0.0375474
6-12 months    ki1017093c-NIH-Crypto       BANGLADESH                     >=57.5               NA                -0.0137643   -0.0286207    0.0010920
6-12 months    ki1017093c-NIH-Crypto       BANGLADESH                     <42.5                NA                -0.0465556   -0.0644807   -0.0286304
6-12 months    ki1017093c-NIH-Crypto       BANGLADESH                     [42.5-50)            NA                -0.0379957   -0.0508698   -0.0251215
6-12 months    ki1017093c-NIH-Crypto       BANGLADESH                     [50-57.5)            NA                -0.0335379   -0.0470041   -0.0200718
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=57.5               NA                -0.0576818   -0.0690081   -0.0463555
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <42.5                NA                -0.1025056   -0.1691278   -0.0358834
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [42.5-50)            NA                -0.0680200   -0.1036958   -0.0323441
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [50-57.5)            NA                -0.0581878   -0.0764871   -0.0398886
6-12 months    ki1119695-PROBIT            BELARUS                        >=57.5               NA                 0.0437171    0.0267856    0.0606487
6-12 months    ki1119695-PROBIT            BELARUS                        <42.5                NA                 0.0273646   -0.0459145    0.1006437
6-12 months    ki1119695-PROBIT            BELARUS                        [42.5-50)            NA                 0.0463077    0.0237160    0.0688995
6-12 months    ki1119695-PROBIT            BELARUS                        [50-57.5)            NA                 0.0397615    0.0216984    0.0578246
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       >=57.5               NA                -0.0507452   -0.0571004   -0.0443900
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       <42.5                NA                -0.0759262   -0.1200738   -0.0317787
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       [42.5-50)            NA                -0.0554945   -0.0684568   -0.0425323
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       [50-57.5)            NA                -0.0438355   -0.0520879   -0.0355831
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         >=57.5               NA                -0.0283088   -0.0421420   -0.0144755
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         <42.5                NA                -0.0336960   -0.0642429   -0.0031491
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         [42.5-50)            NA                -0.0477082   -0.0603678   -0.0350486
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         [50-57.5)            NA                -0.0351688   -0.0464138   -0.0239238
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         >=57.5               NA                -0.0425057   -0.0613169   -0.0236945
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         <42.5                NA                -0.0483939   -0.0910292   -0.0057585
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         [42.5-50)            NA                -0.0486488   -0.0683723   -0.0289253
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         [50-57.5)            NA                -0.0390906   -0.0541730   -0.0240081
6-12 months    ki1148112-LCNI-5            MALAWI                         >=57.5               NA                -0.0177444   -0.0393460    0.0038572
6-12 months    ki1148112-LCNI-5            MALAWI                         <42.5                NA                -0.0090958   -0.0423848    0.0241932
6-12 months    ki1148112-LCNI-5            MALAWI                         [42.5-50)            NA                -0.0043573   -0.0220537    0.0133390
6-12 months    ki1148112-LCNI-5            MALAWI                         [50-57.5)            NA                -0.0042468   -0.0236137    0.0151201
12-24 months   ki0047075b-MAL-ED           BANGLADESH                     >=57.5               NA                -0.0131846   -0.0243417   -0.0020274
12-24 months   ki0047075b-MAL-ED           BANGLADESH                     <42.5                NA                -0.0271570   -0.0404867   -0.0138273
12-24 months   ki0047075b-MAL-ED           BANGLADESH                     [42.5-50)            NA                -0.0214440   -0.0294222   -0.0134659
12-24 months   ki0047075b-MAL-ED           BANGLADESH                     [50-57.5)            NA                -0.0082966   -0.0198977    0.0033045
12-24 months   ki0047075b-MAL-ED           BRAZIL                         >=57.5               NA                -0.0069363   -0.0187257    0.0048531
12-24 months   ki0047075b-MAL-ED           BRAZIL                         <42.5                NA                -0.0238070   -0.0720117    0.0243977
12-24 months   ki0047075b-MAL-ED           BRAZIL                         [42.5-50)            NA                 0.0198816   -0.0205984    0.0603615
12-24 months   ki0047075b-MAL-ED           BRAZIL                         [50-57.5)            NA                 0.0154250   -0.0105953    0.0414452
12-24 months   ki0047075b-MAL-ED           INDIA                          >=57.5               NA                -0.0003920   -0.0126619    0.0118779
12-24 months   ki0047075b-MAL-ED           INDIA                          <42.5                NA                -0.0167065   -0.0282995   -0.0051134
12-24 months   ki0047075b-MAL-ED           INDIA                          [42.5-50)            NA                -0.0058917   -0.0152518    0.0034684
12-24 months   ki0047075b-MAL-ED           INDIA                          [50-57.5)            NA                -0.0148104   -0.0235485   -0.0060723
12-24 months   ki0047075b-MAL-ED           PERU                           >=57.5               NA                 0.0020631   -0.0094813    0.0136075
12-24 months   ki0047075b-MAL-ED           PERU                           <42.5                NA                -0.0273859   -0.0590843    0.0043125
12-24 months   ki0047075b-MAL-ED           PERU                           [42.5-50)            NA                -0.0277472   -0.0424791   -0.0130153
12-24 months   ki0047075b-MAL-ED           PERU                           [50-57.5)            NA                -0.0095336   -0.0203418    0.0012745
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=57.5               NA                -0.0275699   -0.0401940   -0.0149459
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   <42.5                NA                -0.0433768   -0.0829842   -0.0037694
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   [42.5-50)            NA                -0.0402521   -0.0544284   -0.0260757
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   [50-57.5)            NA                -0.0547128   -0.0684517   -0.0409738
12-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     <42.5                NA                 0.0030465   -0.0189878    0.0250809
12-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     [42.5-50)            NA                -0.0196365   -0.0407921    0.0015190
12-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     [50-57.5)            NA                 0.0069905   -0.0210240    0.0350050
12-24 months   ki1017093-NIH-Birth         BANGLADESH                     >=57.5               NA                -0.0362484   -0.0483502   -0.0241467
12-24 months   ki1017093-NIH-Birth         BANGLADESH                     <42.5                NA                -0.0388959   -0.0480981   -0.0296936
12-24 months   ki1017093-NIH-Birth         BANGLADESH                     [42.5-50)            NA                -0.0408975   -0.0483379   -0.0334571
12-24 months   ki1017093-NIH-Birth         BANGLADESH                     [50-57.5)            NA                -0.0441565   -0.0541584   -0.0341546
12-24 months   ki1017093b-PROVIDE          BANGLADESH                     >=57.5               NA                 0.0000709   -0.0088517    0.0089934
12-24 months   ki1017093b-PROVIDE          BANGLADESH                     <42.5                NA                -0.0104787   -0.0170234   -0.0039339
12-24 months   ki1017093b-PROVIDE          BANGLADESH                     [42.5-50)            NA                -0.0136404   -0.0206033   -0.0066776
12-24 months   ki1017093b-PROVIDE          BANGLADESH                     [50-57.5)            NA                -0.0057071   -0.0141385    0.0027242
12-24 months   ki1017093c-NIH-Crypto       BANGLADESH                     >=57.5               NA                 0.0043425   -0.0029206    0.0116056
12-24 months   ki1017093c-NIH-Crypto       BANGLADESH                     <42.5                NA                -0.0130718   -0.0209771   -0.0051664
12-24 months   ki1017093c-NIH-Crypto       BANGLADESH                     [42.5-50)            NA                -0.0118267   -0.0191252   -0.0045281
12-24 months   ki1017093c-NIH-Crypto       BANGLADESH                     [50-57.5)            NA                -0.0053093   -0.0134783    0.0028596
12-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       >=57.5               NA                -0.0473145   -0.0614315   -0.0331976
12-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       <42.5                NA                -0.0247179   -0.0816238    0.0321880
12-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       [42.5-50)            NA                -0.0636793   -0.0873686   -0.0399900
12-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       [50-57.5)            NA                -0.0521575   -0.0657503   -0.0385647
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         >=57.5               NA                -0.0223386   -0.0313012   -0.0133760
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         <42.5                NA                -0.0297060   -0.0492481   -0.0101639
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         [42.5-50)            NA                -0.0322620   -0.0402442   -0.0242798
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         [50-57.5)            NA                -0.0343684   -0.0430818   -0.0256549
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         >=57.5               NA                -0.0128084   -0.0244302   -0.0011867
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         <42.5                NA                 0.0016803   -0.0143067    0.0176673
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         [42.5-50)            NA                -0.0202150   -0.0292344   -0.0111957
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         [50-57.5)            NA                -0.0285340   -0.0365380   -0.0205300
12-24 months   ki1148112-LCNI-5            MALAWI                         >=57.5               NA                -0.0212170   -0.0343930   -0.0080410
12-24 months   ki1148112-LCNI-5            MALAWI                         <42.5                NA                -0.0103125   -0.0310968    0.0104718
12-24 months   ki1148112-LCNI-5            MALAWI                         [42.5-50)            NA                -0.0210372   -0.0292835   -0.0127909
12-24 months   ki1148112-LCNI-5            MALAWI                         [50-57.5)            NA                -0.0099780   -0.0204498    0.0004939


### Parameter: E(Y)


diffcat        studyid                     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED           BANGLADESH                     NA                   NA                -0.0339062   -0.0659795   -0.0018330
0-3 months     ki0047075b-MAL-ED           BRAZIL                         NA                   NA                 0.1928587    0.1409027    0.2448147
0-3 months     ki0047075b-MAL-ED           INDIA                          NA                   NA                -0.0204797   -0.0596747    0.0187152
0-3 months     ki0047075b-MAL-ED           PERU                           NA                   NA                -0.1572370   -0.1898325   -0.1246414
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0461667   -0.0847570   -0.0075763
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                 0.0125752   -0.0032139    0.0283642
0-3 months     ki1017093-NIH-Birth         BANGLADESH                     NA                   NA                -0.1191165   -0.1460676   -0.0921654
0-3 months     ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                -0.0408226   -0.0589776   -0.0226676
0-3 months     ki1017093c-NIH-Crypto       BANGLADESH                     NA                   NA                -0.1220821   -0.1402761   -0.1038881
0-3 months     ki1119695-PROBIT            BELARUS                        NA                   NA                -0.4368640   -0.4962138   -0.3775142
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                -0.1438880   -0.1544502   -0.1333257
3-6 months     ki0047075b-MAL-ED           BANGLADESH                     NA                   NA                -0.0225211   -0.0456381    0.0005960
3-6 months     ki0047075b-MAL-ED           BRAZIL                         NA                   NA                 0.0597008    0.0230362    0.0963653
3-6 months     ki0047075b-MAL-ED           INDIA                          NA                   NA                -0.0417054   -0.0700621   -0.0133486
3-6 months     ki0047075b-MAL-ED           PERU                           NA                   NA                 0.0272742   -0.0038596    0.0584080
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0705448   -0.1027245   -0.0383652
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                -0.0163491   -0.0355574    0.0028592
3-6 months     ki1017093-NIH-Birth         BANGLADESH                     NA                   NA                -0.0509007   -0.0730097   -0.0287917
3-6 months     ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                -0.0274690   -0.0439444   -0.0109937
3-6 months     ki1017093c-NIH-Crypto       BANGLADESH                     NA                   NA                 0.0267740    0.0099602    0.0435879
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0839871   -0.1007948   -0.0671794
3-6 months     ki1119695-PROBIT            BELARUS                        NA                   NA                 0.0463604    0.0273666    0.0653543
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                -0.0010333   -0.0103903    0.0083238
6-12 months    ki0047075b-MAL-ED           BANGLADESH                     NA                   NA                -0.0807393   -0.0911050   -0.0703737
6-12 months    ki0047075b-MAL-ED           BRAZIL                         NA                   NA                 0.0049191   -0.0143947    0.0242329
6-12 months    ki0047075b-MAL-ED           INDIA                          NA                   NA                -0.0785153   -0.0906466   -0.0663840
6-12 months    ki0047075b-MAL-ED           PERU                           NA                   NA                -0.0367697   -0.0508361   -0.0227032
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1240143   -0.1396706   -0.1083579
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                -0.0859276   -0.0907202   -0.0811349
6-12 months    ki1017093-NIH-Birth         BANGLADESH                     NA                   NA                -0.0530976   -0.0624028   -0.0437924
6-12 months    ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                -0.0626151   -0.0695574   -0.0556729
6-12 months    ki1017093c-NIH-Crypto       BANGLADESH                     NA                   NA                -0.0315658   -0.0388594   -0.0242722
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0593214   -0.0685822   -0.0500606
6-12 months    ki1119695-PROBIT            BELARUS                        NA                   NA                 0.0429634    0.0263738    0.0595529
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                -0.0494408   -0.0541109   -0.0447708
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                -0.0372555   -0.0442800   -0.0302309
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                -0.0432323   -0.0531277   -0.0333368
6-12 months    ki1148112-LCNI-5            MALAWI                         NA                   NA                -0.0066447   -0.0175712    0.0042818
12-24 months   ki0047075b-MAL-ED           BANGLADESH                     NA                   NA                -0.0178490   -0.0232486   -0.0124494
12-24 months   ki0047075b-MAL-ED           BRAZIL                         NA                   NA                -0.0005342   -0.0110966    0.0100282
12-24 months   ki0047075b-MAL-ED           INDIA                          NA                   NA                -0.0098524   -0.0150104   -0.0046944
12-24 months   ki0047075b-MAL-ED           PERU                           NA                   NA                -0.0092560   -0.0162726   -0.0022393
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0393265   -0.0471437   -0.0315094
12-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                -0.0026893   -0.0170438    0.0116652
12-24 months   ki1017093-NIH-Birth         BANGLADESH                     NA                   NA                -0.0404278   -0.0450901   -0.0357656
12-24 months   ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                -0.0081718   -0.0120131   -0.0043304
12-24 months   ki1017093c-NIH-Crypto       BANGLADESH                     NA                   NA                -0.0057326   -0.0097260   -0.0017391
12-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                -0.0516953   -0.0609049   -0.0424856
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                -0.0307471   -0.0356284   -0.0258658
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                -0.0205654   -0.0258024   -0.0153283
12-24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                -0.0159914   -0.0217529   -0.0102299


### Parameter: ATE


diffcat        studyid                     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED           BANGLADESH                     >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED           BANGLADESH                     <42.5                >=57.5            -0.0832866   -0.1857661    0.0191929
0-3 months     ki0047075b-MAL-ED           BANGLADESH                     [42.5-50)            >=57.5            -0.0270916   -0.1160574    0.0618741
0-3 months     ki0047075b-MAL-ED           BANGLADESH                     [50-57.5)            >=57.5             0.0424597   -0.0502216    0.1351410
0-3 months     ki0047075b-MAL-ED           BRAZIL                         >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED           BRAZIL                         <42.5                >=57.5             0.0685124   -0.1745577    0.3115824
0-3 months     ki0047075b-MAL-ED           BRAZIL                         [42.5-50)            >=57.5            -0.0103670   -0.2026159    0.1818819
0-3 months     ki0047075b-MAL-ED           BRAZIL                         [50-57.5)            >=57.5             0.0125768   -0.1307786    0.1559321
0-3 months     ki0047075b-MAL-ED           INDIA                          >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED           INDIA                          <42.5                >=57.5             0.0255608   -0.1164599    0.1675814
0-3 months     ki0047075b-MAL-ED           INDIA                          [42.5-50)            >=57.5             0.0394116   -0.0907323    0.1695554
0-3 months     ki0047075b-MAL-ED           INDIA                          [50-57.5)            >=57.5             0.0213701   -0.1144134    0.1571536
0-3 months     ki0047075b-MAL-ED           PERU                           >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED           PERU                           <42.5                >=57.5             0.0333008   -0.1289505    0.1955520
0-3 months     ki0047075b-MAL-ED           PERU                           [42.5-50)            >=57.5             0.0644237   -0.0192380    0.1480854
0-3 months     ki0047075b-MAL-ED           PERU                           [50-57.5)            >=57.5            -0.0141881   -0.0907051    0.0623290
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   <42.5                >=57.5             0.1942360    0.0191288    0.3693431
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   [42.5-50)            >=57.5             0.0065428   -0.0905208    0.1036064
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   [50-57.5)            >=57.5             0.0316283   -0.0612287    0.1244852
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          <42.5                >=57.5            -0.0370267   -0.1067910    0.0327376
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          [42.5-50)            >=57.5             0.0058254   -0.0548010    0.0664518
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          [50-57.5)            >=57.5             0.0102898   -0.0577839    0.0783634
0-3 months     ki1017093-NIH-Birth         BANGLADESH                     >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth         BANGLADESH                     <42.5                >=57.5             0.0061087   -0.0932014    0.1054188
0-3 months     ki1017093-NIH-Birth         BANGLADESH                     [42.5-50)            >=57.5            -0.0141673   -0.1107110    0.0823763
0-3 months     ki1017093-NIH-Birth         BANGLADESH                     [50-57.5)            >=57.5            -0.0214713   -0.1230037    0.0800611
0-3 months     ki1017093b-PROVIDE          BANGLADESH                     >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE          BANGLADESH                     <42.5                >=57.5            -0.0205102   -0.0756603    0.0346399
0-3 months     ki1017093b-PROVIDE          BANGLADESH                     [42.5-50)            >=57.5            -0.0008078   -0.0540533    0.0524377
0-3 months     ki1017093b-PROVIDE          BANGLADESH                     [50-57.5)            >=57.5             0.0333200   -0.0263609    0.0930010
0-3 months     ki1017093c-NIH-Crypto       BANGLADESH                     >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto       BANGLADESH                     <42.5                >=57.5            -0.0293856   -0.0889313    0.0301602
0-3 months     ki1017093c-NIH-Crypto       BANGLADESH                     [42.5-50)            >=57.5            -0.0238168   -0.0729718    0.0253382
0-3 months     ki1017093c-NIH-Crypto       BANGLADESH                     [50-57.5)            >=57.5            -0.0040407   -0.0504638    0.0423824
0-3 months     ki1119695-PROBIT            BELARUS                        >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT            BELARUS                        <42.5                >=57.5            -0.0454976   -0.2440713    0.1530761
0-3 months     ki1119695-PROBIT            BELARUS                        [42.5-50)            >=57.5             0.0209768   -0.0274437    0.0693974
0-3 months     ki1119695-PROBIT            BELARUS                        [50-57.5)            >=57.5             0.0257036    0.0003956    0.0510116
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       <42.5                >=57.5            -0.0928220   -0.1907439    0.0050999
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       [42.5-50)            >=57.5            -0.0425245   -0.0748765   -0.0101725
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       [50-57.5)            >=57.5            -0.0229167   -0.0466598    0.0008264
3-6 months     ki0047075b-MAL-ED           BANGLADESH                     >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED           BANGLADESH                     <42.5                >=57.5             0.0253512   -0.0411846    0.0918870
3-6 months     ki0047075b-MAL-ED           BANGLADESH                     [42.5-50)            >=57.5             0.0191404   -0.0368766    0.0751574
3-6 months     ki0047075b-MAL-ED           BANGLADESH                     [50-57.5)            >=57.5             0.0221836   -0.0357150    0.0800822
3-6 months     ki0047075b-MAL-ED           BRAZIL                         >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED           BRAZIL                         <42.5                >=57.5            -0.0740754   -0.2150199    0.0668692
3-6 months     ki0047075b-MAL-ED           BRAZIL                         [42.5-50)            >=57.5             0.0543691   -0.0500329    0.1587712
3-6 months     ki0047075b-MAL-ED           BRAZIL                         [50-57.5)            >=57.5             0.0259557   -0.0642919    0.1162032
3-6 months     ki0047075b-MAL-ED           INDIA                          >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED           INDIA                          <42.5                >=57.5             0.0402045   -0.0682129    0.1486219
3-6 months     ki0047075b-MAL-ED           INDIA                          [42.5-50)            >=57.5             0.0250552   -0.0673291    0.1174396
3-6 months     ki0047075b-MAL-ED           INDIA                          [50-57.5)            >=57.5            -0.0005738   -0.0934988    0.0923511
3-6 months     ki0047075b-MAL-ED           PERU                           >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED           PERU                           <42.5                >=57.5            -0.0053653   -0.1269796    0.1162489
3-6 months     ki0047075b-MAL-ED           PERU                           [42.5-50)            >=57.5            -0.0305056   -0.1151020    0.0540908
3-6 months     ki0047075b-MAL-ED           PERU                           [50-57.5)            >=57.5             0.0287268   -0.0453968    0.1028504
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   <42.5                >=57.5            -0.0984547   -0.2805191    0.0836097
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   [42.5-50)            >=57.5             0.0208050   -0.0576295    0.0992395
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   [50-57.5)            >=57.5            -0.0032365   -0.0821514    0.0756785
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          <42.5                >=57.5            -0.0560705   -0.1161003    0.0039592
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          [42.5-50)            >=57.5            -0.0454575   -0.0904198   -0.0004953
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          [50-57.5)            >=57.5            -0.0312512   -0.0810761    0.0185737
3-6 months     ki1017093-NIH-Birth         BANGLADESH                     >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth         BANGLADESH                     <42.5                >=57.5            -0.0919980   -0.1654164   -0.0185797
3-6 months     ki1017093-NIH-Birth         BANGLADESH                     [42.5-50)            >=57.5            -0.0313893   -0.1036918    0.0409131
3-6 months     ki1017093-NIH-Birth         BANGLADESH                     [50-57.5)            >=57.5            -0.0312932   -0.1098398    0.0472534
3-6 months     ki1017093b-PROVIDE          BANGLADESH                     >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE          BANGLADESH                     <42.5                >=57.5             0.0225073   -0.0297467    0.0747612
3-6 months     ki1017093b-PROVIDE          BANGLADESH                     [42.5-50)            >=57.5             0.0027513   -0.0468240    0.0523267
3-6 months     ki1017093b-PROVIDE          BANGLADESH                     [50-57.5)            >=57.5             0.0284016   -0.0234295    0.0802328
3-6 months     ki1017093c-NIH-Crypto       BANGLADESH                     >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto       BANGLADESH                     <42.5                >=57.5             0.0229130   -0.0275312    0.0733573
3-6 months     ki1017093c-NIH-Crypto       BANGLADESH                     [42.5-50)            >=57.5             0.0249203   -0.0201317    0.0699723
3-6 months     ki1017093c-NIH-Crypto       BANGLADESH                     [50-57.5)            >=57.5             0.0300393   -0.0149703    0.0750489
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <42.5                >=57.5            -0.0378077   -0.2206761    0.1450608
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [42.5-50)            >=57.5             0.0307609   -0.0337211    0.0952430
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [50-57.5)            >=57.5            -0.0110079   -0.0485219    0.0265061
3-6 months     ki1119695-PROBIT            BELARUS                        >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT            BELARUS                        <42.5                >=57.5             0.0021043   -0.1238407    0.1280492
3-6 months     ki1119695-PROBIT            BELARUS                        [42.5-50)            >=57.5             0.0021762   -0.0406265    0.0449788
3-6 months     ki1119695-PROBIT            BELARUS                        [50-57.5)            >=57.5             0.0087816   -0.0063932    0.0239563
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       <42.5                >=57.5             0.0405417   -0.0504570    0.1315405
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       [42.5-50)            >=57.5             0.0146962   -0.0141421    0.0435345
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       [50-57.5)            >=57.5            -0.0012674   -0.0222427    0.0197078
6-12 months    ki0047075b-MAL-ED           BANGLADESH                     >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED           BANGLADESH                     <42.5                >=57.5            -0.0064008   -0.0408325    0.0280308
6-12 months    ki0047075b-MAL-ED           BANGLADESH                     [42.5-50)            >=57.5             0.0036651   -0.0276943    0.0350244
6-12 months    ki0047075b-MAL-ED           BANGLADESH                     [50-57.5)            >=57.5             0.0001556   -0.0330568    0.0333680
6-12 months    ki0047075b-MAL-ED           BRAZIL                         >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED           BRAZIL                         <42.5                >=57.5            -0.0135938   -0.0965023    0.0693147
6-12 months    ki0047075b-MAL-ED           BRAZIL                         [42.5-50)            >=57.5            -0.0136717   -0.0665727    0.0392294
6-12 months    ki0047075b-MAL-ED           BRAZIL                         [50-57.5)            >=57.5            -0.0242393   -0.0779532    0.0294746
6-12 months    ki0047075b-MAL-ED           INDIA                          >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED           INDIA                          <42.5                >=57.5             0.0100922   -0.0303855    0.0505699
6-12 months    ki0047075b-MAL-ED           INDIA                          [42.5-50)            >=57.5             0.0042246   -0.0310320    0.0394812
6-12 months    ki0047075b-MAL-ED           INDIA                          [50-57.5)            >=57.5             0.0106353   -0.0198341    0.0411046
6-12 months    ki0047075b-MAL-ED           PERU                           >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED           PERU                           <42.5                >=57.5            -0.0206781   -0.0773548    0.0359986
6-12 months    ki0047075b-MAL-ED           PERU                           [42.5-50)            >=57.5             0.0247756   -0.0111108    0.0606620
6-12 months    ki0047075b-MAL-ED           PERU                           [50-57.5)            >=57.5             0.0066175   -0.0270482    0.0402831
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   <42.5                >=57.5             0.0965533   -0.0007368    0.1938434
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   [42.5-50)            >=57.5             0.0230424   -0.0137062    0.0597910
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   [50-57.5)            >=57.5             0.0332934   -0.0049550    0.0715417
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          <42.5                >=57.5            -0.0175093   -0.0599471    0.0249284
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          [42.5-50)            >=57.5            -0.0103132   -0.0414033    0.0207769
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          [50-57.5)            >=57.5            -0.0009923   -0.0365065    0.0345219
6-12 months    ki1017093-NIH-Birth         BANGLADESH                     >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth         BANGLADESH                     <42.5                >=57.5            -0.0168331   -0.0461658    0.0124997
6-12 months    ki1017093-NIH-Birth         BANGLADESH                     [42.5-50)            >=57.5            -0.0178560   -0.0462152    0.0105032
6-12 months    ki1017093-NIH-Birth         BANGLADESH                     [50-57.5)            >=57.5             0.0144324   -0.0156888    0.0445536
6-12 months    ki1017093b-PROVIDE          BANGLADESH                     >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE          BANGLADESH                     <42.5                >=57.5            -0.0376709   -0.0583014   -0.0170405
6-12 months    ki1017093b-PROVIDE          BANGLADESH                     [42.5-50)            >=57.5            -0.0182893   -0.0377209    0.0011422
6-12 months    ki1017093b-PROVIDE          BANGLADESH                     [50-57.5)            >=57.5            -0.0058097   -0.0267900    0.0151705
6-12 months    ki1017093c-NIH-Crypto       BANGLADESH                     >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto       BANGLADESH                     <42.5                >=57.5            -0.0327913   -0.0560726   -0.0095099
6-12 months    ki1017093c-NIH-Crypto       BANGLADESH                     [42.5-50)            >=57.5            -0.0242313   -0.0438898   -0.0045729
6-12 months    ki1017093c-NIH-Crypto       BANGLADESH                     [50-57.5)            >=57.5            -0.0197736   -0.0398248    0.0002775
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <42.5                >=57.5            -0.0448238   -0.1124020    0.0227544
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [42.5-50)            >=57.5            -0.0103382   -0.0477688    0.0270925
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [50-57.5)            >=57.5            -0.0005060   -0.0220269    0.0210149
6-12 months    ki1119695-PROBIT            BELARUS                        >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT            BELARUS                        <42.5                >=57.5            -0.0163526   -0.0912425    0.0585374
6-12 months    ki1119695-PROBIT            BELARUS                        [42.5-50)            >=57.5             0.0025906   -0.0110489    0.0162301
6-12 months    ki1119695-PROBIT            BELARUS                        [50-57.5)            >=57.5            -0.0039557   -0.0153191    0.0074078
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       <42.5                >=57.5            -0.0251810   -0.0697836    0.0194216
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       [42.5-50)            >=57.5            -0.0047493   -0.0191857    0.0096870
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       [50-57.5)            >=57.5             0.0069097   -0.0035062    0.0173256
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         <42.5                >=57.5            -0.0053872   -0.0389203    0.0281460
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         [42.5-50)            >=57.5            -0.0193994   -0.0381510   -0.0006477
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         [50-57.5)            >=57.5            -0.0068600   -0.0246872    0.0109672
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         <42.5                >=57.5            -0.0058882   -0.0524890    0.0407126
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         [42.5-50)            >=57.5            -0.0061431   -0.0333988    0.0211127
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         [50-57.5)            >=57.5             0.0034151   -0.0206959    0.0275261
6-12 months    ki1148112-LCNI-5            MALAWI                         >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5            MALAWI                         <42.5                >=57.5             0.0086486   -0.0310350    0.0483322
6-12 months    ki1148112-LCNI-5            MALAWI                         [42.5-50)            >=57.5             0.0133871   -0.0145377    0.0413118
6-12 months    ki1148112-LCNI-5            MALAWI                         [50-57.5)            >=57.5             0.0134976   -0.0155146    0.0425098
12-24 months   ki0047075b-MAL-ED           BANGLADESH                     >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED           BANGLADESH                     <42.5                >=57.5            -0.0139724   -0.0313553    0.0034104
12-24 months   ki0047075b-MAL-ED           BANGLADESH                     [42.5-50)            >=57.5            -0.0082594   -0.0219756    0.0054567
12-24 months   ki0047075b-MAL-ED           BANGLADESH                     [50-57.5)            >=57.5             0.0048880   -0.0112076    0.0209836
12-24 months   ki0047075b-MAL-ED           BRAZIL                         >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED           BRAZIL                         <42.5                >=57.5            -0.0168707   -0.0664961    0.0327548
12-24 months   ki0047075b-MAL-ED           BRAZIL                         [42.5-50)            >=57.5             0.0268179   -0.0153439    0.0689796
12-24 months   ki0047075b-MAL-ED           BRAZIL                         [50-57.5)            >=57.5             0.0223613   -0.0062052    0.0509278
12-24 months   ki0047075b-MAL-ED           INDIA                          >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED           INDIA                          <42.5                >=57.5            -0.0163145   -0.0331949    0.0005659
12-24 months   ki0047075b-MAL-ED           INDIA                          [42.5-50)            >=57.5            -0.0054997   -0.0209322    0.0099328
12-24 months   ki0047075b-MAL-ED           INDIA                          [50-57.5)            >=57.5            -0.0144184   -0.0294818    0.0006450
12-24 months   ki0047075b-MAL-ED           PERU                           >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED           PERU                           <42.5                >=57.5            -0.0294490   -0.0631842    0.0042862
12-24 months   ki0047075b-MAL-ED           PERU                           [42.5-50)            >=57.5            -0.0298103   -0.0485267   -0.0110939
12-24 months   ki0047075b-MAL-ED           PERU                           [50-57.5)            >=57.5            -0.0115967   -0.0274110    0.0042175
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   <42.5                >=57.5            -0.0158068   -0.0573774    0.0257637
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   [42.5-50)            >=57.5            -0.0126821   -0.0316646    0.0063003
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   [50-57.5)            >=57.5            -0.0271428   -0.0458009   -0.0084847
12-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     <42.5                <42.5              0.0000000    0.0000000    0.0000000
12-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     [42.5-50)            <42.5             -0.0226831   -0.0532292    0.0078631
12-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     [50-57.5)            <42.5              0.0039439   -0.0316977    0.0395856
12-24 months   ki1017093-NIH-Birth         BANGLADESH                     >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
12-24 months   ki1017093-NIH-Birth         BANGLADESH                     <42.5                >=57.5            -0.0026474   -0.0178505    0.0125557
12-24 months   ki1017093-NIH-Birth         BANGLADESH                     [42.5-50)            >=57.5            -0.0046491   -0.0188551    0.0095570
12-24 months   ki1017093-NIH-Birth         BANGLADESH                     [50-57.5)            >=57.5            -0.0079081   -0.0236081    0.0077919
12-24 months   ki1017093b-PROVIDE          BANGLADESH                     >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE          BANGLADESH                     <42.5                >=57.5            -0.0105495   -0.0216150    0.0005160
12-24 months   ki1017093b-PROVIDE          BANGLADESH                     [42.5-50)            >=57.5            -0.0137113   -0.0250291   -0.0023935
12-24 months   ki1017093b-PROVIDE          BANGLADESH                     [50-57.5)            >=57.5            -0.0057780   -0.0180540    0.0064980
12-24 months   ki1017093c-NIH-Crypto       BANGLADESH                     >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto       BANGLADESH                     <42.5                >=57.5            -0.0174143   -0.0281497   -0.0066790
12-24 months   ki1017093c-NIH-Crypto       BANGLADESH                     [42.5-50)            >=57.5            -0.0161692   -0.0264659   -0.0058725
12-24 months   ki1017093c-NIH-Crypto       BANGLADESH                     [50-57.5)            >=57.5            -0.0096519   -0.0205828    0.0012790
12-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
12-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       <42.5                >=57.5             0.0225966   -0.0360341    0.0812274
12-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       [42.5-50)            >=57.5            -0.0163648   -0.0439414    0.0112119
12-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       [50-57.5)            >=57.5            -0.0048430   -0.0244402    0.0147543
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         <42.5                >=57.5            -0.0073674   -0.0288668    0.0141320
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         [42.5-50)            >=57.5            -0.0099234   -0.0219252    0.0020784
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         [50-57.5)            >=57.5            -0.0120297   -0.0245299    0.0004704
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         <42.5                >=57.5             0.0144888   -0.0052761    0.0342536
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         [42.5-50)            >=57.5            -0.0074066   -0.0221176    0.0073045
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         [50-57.5)            >=57.5            -0.0157256   -0.0298369   -0.0016142
12-24 months   ki1148112-LCNI-5            MALAWI                         >=57.5               >=57.5             0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5            MALAWI                         <42.5                >=57.5             0.0109045   -0.0137043    0.0355133
12-24 months   ki1148112-LCNI-5            MALAWI                         [42.5-50)            >=57.5             0.0001798   -0.0153639    0.0157236
12-24 months   ki1148112-LCNI-5            MALAWI                         [50-57.5)            >=57.5             0.0112391   -0.0055915    0.0280696
