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

**Intervention Variable:** enwast

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* W_mhtcm
* vagbrth
* single
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_vagbrth
* delta_single
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country                        enwast    n_cell       n
-------------  -------------------------  -----------------------------  -------  -------  ------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0            189     226
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1             37     226
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     0            387     538
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     1            151     538
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0             19      22
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1              3      22
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0          14562   16460
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1           1898   16460
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0           1401    1546
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1            145    1546
0-3 months     ki1119695-PROBIT           BELARUS                        0          10037   12735
0-3 months     ki1119695-PROBIT           BELARUS                        1           2698   12735
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0            167     173
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1              6     173
0-3 months     ki1114097-CMIN             BRAZIL                         0             71      77
0-3 months     ki1114097-CMIN             BRAZIL                         1              6      77
0-3 months     ki1101329-Keneba           GAMBIA                         0           1237    1271
0-3 months     ki1101329-Keneba           GAMBIA                         1             34    1271
0-3 months     ki1135781-COHORTS          GUATEMALA                      0            498     668
0-3 months     ki1135781-COHORTS          GUATEMALA                      1            170     668
0-3 months     ki1114097-CMIN             GUINEA-BISSAU                  0              7       8
0-3 months     ki1114097-CMIN             GUINEA-BISSAU                  1              1       8
0-3 months     ki0047075b-MAL-ED          INDIA                          0            160     192
0-3 months     ki0047075b-MAL-ED          INDIA                          1             32     192
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0             66      75
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1              9      75
0-3 months     ki1000108-IRC              INDIA                          0            249     359
0-3 months     ki1000108-IRC              INDIA                          1            110     359
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          0            941    1057
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1            116    1057
0-3 months     ki1135781-COHORTS          INDIA                          0           4979    6082
0-3 months     ki1135781-COHORTS          INDIA                          1           1103    6082
0-3 months     ki0047075b-MAL-ED          NEPAL                          0            146     167
0-3 months     ki0047075b-MAL-ED          NEPAL                          1             21     167
0-3 months     ki1000109-EE               PAKISTAN                       0              5       7
0-3 months     ki1000109-EE               PAKISTAN                       1              2       7
0-3 months     ki1000109-ResPak           PAKISTAN                       0             41      49
0-3 months     ki1000109-ResPak           PAKISTAN                       1              8      49
0-3 months     ki0047075b-MAL-ED          PERU                           0            255     261
0-3 months     ki0047075b-MAL-ED          PERU                           1              6     261
0-3 months     ki1114097-CMIN             PERU                           0             28      28
0-3 months     ki1114097-CONTENT          PERU                           0              9       9
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0            213     228
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1             15     228
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0            111     113
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              2     113
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       0           6251    7470
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1           1219    7470
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0            176     211
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1             35     211
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     0            358     498
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     1            140     498
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0             19      22
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1              3      22
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0           9351   10455
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1           1104   10455
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0           1499    1642
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1            143    1642
3-6 months     ki1119695-PROBIT           BELARUS                        0           8784   11179
3-6 months     ki1119695-PROBIT           BELARUS                        1           2395   11179
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0            159     165
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1              6     165
3-6 months     ki1114097-CMIN             BRAZIL                         0             68      74
3-6 months     ki1114097-CMIN             BRAZIL                         1              6      74
3-6 months     ki1101329-Keneba           GAMBIA                         0           1327    1388
3-6 months     ki1101329-Keneba           GAMBIA                         1             61    1388
3-6 months     ki1135781-COHORTS          GUATEMALA                      0            504     655
3-6 months     ki1135781-COHORTS          GUATEMALA                      1            151     655
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                  0             44      44
3-6 months     ki0047075b-MAL-ED          INDIA                          0            156     186
3-6 months     ki0047075b-MAL-ED          INDIA                          1             30     186
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0             60      75
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1             15      75
3-6 months     ki1000108-IRC              INDIA                          0            249     377
3-6 months     ki1000108-IRC              INDIA                          1            128     377
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          0            915    1026
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1            111    1026
3-6 months     ki1135781-COHORTS          INDIA                          0           5084    6180
3-6 months     ki1135781-COHORTS          INDIA                          1           1096    6180
3-6 months     ki0047075b-MAL-ED          NEPAL                          0            145     166
3-6 months     ki0047075b-MAL-ED          NEPAL                          1             21     166
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0             38      45
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1              7      45
3-6 months     ki1000109-EE               PAKISTAN                       0              5       6
3-6 months     ki1000109-EE               PAKISTAN                       1              1       6
3-6 months     ki1000109-ResPak           PAKISTAN                       0             41      50
3-6 months     ki1000109-ResPak           PAKISTAN                       1              9      50
3-6 months     ki0047075b-MAL-ED          PERU                           0            243     248
3-6 months     ki0047075b-MAL-ED          PERU                           1              5     248
3-6 months     ki1114097-CMIN             PERU                           0             64      65
3-6 months     ki1114097-CMIN             PERU                           1              1      65
3-6 months     ki1114097-CONTENT          PERU                           0             55      55
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0            189     203
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1             14     203
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0            108     110
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              2     110
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0             13      13
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       0           4624    5490
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1            866    5490
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     0            165     201
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1             36     201
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     0            330     458
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     1            128     458
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0             18      21
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1              3      21
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     0           7260    8131
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1            871    8131
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0           2478    2746
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1            268    2746
6-12 months    ki1119695-PROBIT           BELARUS                        0           8616   10915
6-12 months    ki1119695-PROBIT           BELARUS                        1           2299   10915
6-12 months    ki0047075b-MAL-ED          BRAZIL                         0            147     153
6-12 months    ki0047075b-MAL-ED          BRAZIL                         1              6     153
6-12 months    ki1114097-CMIN             BRAZIL                         0             80      87
6-12 months    ki1114097-CMIN             BRAZIL                         1              7      87
6-12 months    ki1101329-Keneba           GAMBIA                         0           1244    1296
6-12 months    ki1101329-Keneba           GAMBIA                         1             52    1296
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      0            175     178
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1              3     178
6-12 months    ki1135781-COHORTS          GUATEMALA                      0            537     695
6-12 months    ki1135781-COHORTS          GUATEMALA                      1            158     695
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  0             71      71
6-12 months    ki0047075b-MAL-ED          INDIA                          0            151     181
6-12 months    ki0047075b-MAL-ED          INDIA                          1             30     181
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0             63      80
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1             17      80
6-12 months    ki1000108-IRC              INDIA                          0            253     380
6-12 months    ki1000108-IRC              INDIA                          1            127     380
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          0            918    1037
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          1            119    1037
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0            266     321
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1             55     321
6-12 months    ki1135781-COHORTS          INDIA                          0           4064    4902
6-12 months    ki1135781-COHORTS          INDIA                          1            838    4902
6-12 months    ki1148112-LCNI-5           MALAWI                         0            415     424
6-12 months    ki1148112-LCNI-5           MALAWI                         1              9     424
6-12 months    ki0047075b-MAL-ED          NEPAL                          0            144     164
6-12 months    ki0047075b-MAL-ED          NEPAL                          1             20     164
6-12 months    ki1113344-GMS-Nepal        NEPAL                          0             38      45
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1              7      45
6-12 months    ki1000109-ResPak           PAKISTAN                       0             35      41
6-12 months    ki1000109-ResPak           PAKISTAN                       1              6      41
6-12 months    ki0047075b-MAL-ED          PERU                           0            216     221
6-12 months    ki0047075b-MAL-ED          PERU                           1              5     221
6-12 months    ki1114097-CMIN             PERU                           0             56      57
6-12 months    ki1114097-CMIN             PERU                           1              1      57
6-12 months    ki1114097-CONTENT          PERU                           0             53      53
6-12 months    ki1135781-COHORTS          PHILIPPINES                    0           1960    2314
6-12 months    ki1135781-COHORTS          PHILIPPINES                    1            354    2314
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0            181     195
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1             14     195
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0            101     103
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              2     103
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              8       8
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       0           3549    4262
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1            713    4262
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     0            154     189
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1             35     189
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     0            289     399
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     1            110     399
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0             13      15
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              2      15
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0           3375    3788
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1            413    3788
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0           2844    3117
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1            273    3117
12-24 months   ki1119695-PROBIT           BELARUS                        0           1970    2532
12-24 months   ki1119695-PROBIT           BELARUS                        1            562    2532
12-24 months   ki0047075b-MAL-ED          BRAZIL                         0            124     129
12-24 months   ki0047075b-MAL-ED          BRAZIL                         1              5     129
12-24 months   ki1101329-Keneba           GAMBIA                         0           1114    1166
12-24 months   ki1101329-Keneba           GAMBIA                         1             52    1166
12-24 months   ki1135781-COHORTS          GUATEMALA                      0            583     718
12-24 months   ki1135781-COHORTS          GUATEMALA                      1            135     718
12-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0             16      16
12-24 months   ki0047075b-MAL-ED          INDIA                          0            149     179
12-24 months   ki0047075b-MAL-ED          INDIA                          1             30     179
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0             67      86
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1             19      86
12-24 months   ki1000108-IRC              INDIA                          0            251     377
12-24 months   ki1000108-IRC              INDIA                          1            126     377
12-24 months   ki1135781-COHORTS          INDIA                          0           3451    4125
12-24 months   ki1135781-COHORTS          INDIA                          1            674    4125
12-24 months   ki1148112-LCNI-5           MALAWI                         0            297     305
12-24 months   ki1148112-LCNI-5           MALAWI                         1              8     305
12-24 months   ki0047075b-MAL-ED          NEPAL                          0            141     161
12-24 months   ki0047075b-MAL-ED          NEPAL                          1             20     161
12-24 months   ki1113344-GMS-Nepal        NEPAL                          0             27      29
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1              2      29
12-24 months   ki0047075b-MAL-ED          PERU                           0            173     177
12-24 months   ki0047075b-MAL-ED          PERU                           1              4     177
12-24 months   ki1114097-CMIN             PERU                           0             22      22
12-24 months   ki1114097-CONTENT          PERU                           0              3       3
12-24 months   ki1135781-COHORTS          PHILIPPINES                    0           1844    2169
12-24 months   ki1135781-COHORTS          PHILIPPINES                    1            325    2169
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0            178     192
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1             14     192
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             91      93
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              2      93
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0            222     254
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1             32     254


The following strata were considered:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-3 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-3 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-3 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-3 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-3 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-3 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 12-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 12-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 12-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 12-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 12-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 12-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 12-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 12-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 12-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 12-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 3-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 3-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 3-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 3-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 3-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 3-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-12 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-12 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-12 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-12 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-12 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-12 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6-12 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6-12 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-12 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-12 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-12 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-12 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-12 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-12 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-12 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-12 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
##       y_rate_len
## enwast 2.0054967032967 2.62212931034483 2.66991033333333 2.76233295918367
##      0               1                1                1                1
##      1               0                0                0                0
##       y_rate_len
## enwast 2.97010129411765 3.00860836956522 3.10779326086957 3.10851989010989
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_len
## enwast 3.13574226804124 3.17110276595745 3.17837426966292 3.18314302325581
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_len
## enwast 3.20879472527473 3.21851127906977 3.35524422680412 3.44515683673469
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_len
## enwast 3.447226 3.4979205 3.58482535714286 3.69579258064516
##      0        1         1                1                1
##      1        0         0                0                0
##       y_rate_len
## enwast 3.70017587628866 3.76752306818182 3.94414351648352 3.95022077922078
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_len
## enwast 4.03021275 4.21436204819277 4.41766357142857 5.8333397260274
##      0          1                1                1               1
##      1          0                0                0               0
##       y_rate_len
## enwast 3.08066576923077 3.1633368 3.58482535714286 3.60197763157895
##      0                1         1                1                1
##      1                0         0                0                0
##       y_rate_len
## enwast 3.64199960526316 3.916150125 4.09177035714286 4.27477945945946
##      0                1           1                1                1
##      1                0           0                0                0
##       y_rate_len
## enwast 4.30574064935065
##      0                1
##      1                0
##       y_rate_len
## enwast 0.621242944297082 0.684592393162392 0.69448534682081
##      0                 1                 1                1
##      1                 0                 0                0
##       y_rate_len
## enwast 0.719784503816794 0.750438267716536 0.783847731092437
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_len
## enwast 0.796426128133705 0.833334246575342 0.852293136246787
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_len
## enwast 0.888487815789473 0.915685994764398 0.963061741424802
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_len
## enwast 0.976123323782235 1.02431560411311 1.03784015748031
##      0                 1                1                1
##      1                 0                0                0
##       y_rate_len
## enwast 1.10170724409449
##      0                1
##      1                0
##       y_rate_len
## enwast 0.435769340974212 0.566667287671233 0.616902084507041
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_len
## enwast 0.633334027397261 0.723819866310161 0.726992554945055
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_len
## enwast 0.766405039370078 0.816667561643835 0.818602480211082
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_len
## enwast 0.818911153846154 0.872479026315789 0.902473516483516
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_len
## enwast 0.905852540983607 0.90910248603352 0.916667671232877
##      0                 1                1                 1
##      1                 0                0                 0
##       y_rate_len
## enwast 0.921718181818182 0.926824653739612 0.967804090909091
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_len
## enwast 0.983334410958904 1.00833443835616 1.05154877142857
##      0                 1                1                1
##      1                 0                0                0
##       y_rate_len
## enwast 1.05907729805014
##      0                1
##      1                0
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
##       y_rate_len
## enwast 0.905258928571428 0.916165662650602 1.08631071428571
##      0                 1                 1                1
##      1                 0                 0                0
##       y_rate_len
## enwast 1.3598054117647 1.44841428571429 1.59157151162791 1.94978846153846
##      0               1                2                1                1
##      1               0                0                0                0
##       y_rate_len
## enwast 2.44732068965517 2.50490470588235 2.534725 2.82440785714286
##      0                1                1        1                1
##      1                0                0        0                0
##       y_rate_len
## enwast 3.11323870588235
##      0                1
##      1                0
##       y_rate_len
## enwast 0.717697415730338 0.869048571428572 1.00196188235294
##      0                 1                 1                1
##      1                 0                 0                0
##       y_rate_len
## enwast 1.02528202247191 1.08148266666667 1.4269562962963 1.48979755102041
##      0                1                1               1                1
##      1                0                0               0                0
##       y_rate_len
## enwast 1.520835 1.65226518518518 1.70912885714286 1.7743075
##      0        1                1                1         1
##      1        0                0                0         0
##       y_rate_len
## enwast 1.87179692307692 1.94416020618557 1.9466688 1.99795970588235
##      0                1                1         1                1
##      1                0                0         0                0
##       y_rate_len
## enwast 2.04014451219512 2.07234659340659 2.08885771084337 2.09770344827586
##      0                1                1                1                2
##      1                0                0                0                0
##       y_rate_len
## enwast 2.129169 2.15067575757576 2.17262142857143 2.22144438202247
##      0        1                1                2                1
##      1        0                0                0                0
##       y_rate_len
## enwast 2.23414699115044 2.25308888888889 2.31746285714286 2.36272580357143
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_len
## enwast 2.40436771428571 2.40659604395604 2.41349902173913 2.4202535483871
##      0                1                1                1               1
##      1                0                0                0               0
##       y_rate_len
## enwast 2.57998794642857 2.60714571428571 2.61649032258065 2.65016792079208
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_len
## enwast 2.65337170212766 2.66146125 2.74125814814815 2.7565134375
##      0                1          1                1            1
##      1                0          0                0            0
##       y_rate_len
## enwast 3.01270171428571 3.07302742268041 3.32794482352941
##      0                1                1                1
##      1                0                0                0
##       y_rate_len
## enwast 1.20329802197802 1.57451152941176 1.60439736263736 1.61959051948052
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_len
## enwast 1.63058597938144 1.63782230769231 1.64498479591837 1.65308152173913
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_len
## enwast 1.67124725274725 1.70705969387755 1.71658603960396 1.7337519
##      0                1                1                1         1
##      1                0                0                0         0
##       y_rate_len
## enwast 1.76913459183673 1.76913459183674 1.77715550561798 1.80017204081633
##      0                1                1                1                2
##      1                0                0                0                0
##       y_rate_len
## enwast 1.80494703296703 1.81271242424242 1.85297137931034 1.85879833333333
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_len
## enwast 1.86224693877551 1.87179692307692 1.87867852941176 1.88451293478261
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_len
## enwast 1.8932843877551 1.90104375 1.926391 1.95535928571429
##      0               2          1        1                1
##      1               0          0        0                0
##       y_rate_len
## enwast 1.98639673469388 1.99705606060606 2.00687505154639 2.01743418367347
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_len
## enwast 2.04847163265306 2.07234659340659 2.09319225806452 2.10328244680851
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_len
## enwast 2.10577153846154 2.11054653061224 2.17262142857143 2.22144438202247
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_len
## enwast 2.23947131868132 2.27289626373627 2.29979926829268 2.33974615384615
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_len
## enwast 2.38988357142857 2.40963467532468 2.42092102040816 2.47723639175258
##      0                2                1                1                1
##      1                0                0                0                0
##       y_rate_len
## enwast 2.50687087912088 2.51403336734694 2.60714571428571 2.8198815625
##      0                1                1                1            1
##      1                0                0                0            0
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
##       y_rate_len
## enwast 0.499145846153847 0.813280748663102 0.857906923076923
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_len
## enwast 0.99852803030303 1.09750979381443 1.13253670212766 1.24214795811518
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_len
## enwast 1.53894017857143
##      0                1
##      1                0
##       y_rate_len
## enwast 0.679902705882352 0.687383050847458 0.730680502793296
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_len
## enwast 0.74071756476684 0.782143714285714 0.796248691099476
##      0                1                 1                 1
##      1                0                 0                 0
##       y_rate_len
## enwast 0.817653225806452 0.859228813559322 0.861513468208093
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_len
## enwast 0.886429542857142 0.909004827586207 0.915957443181818
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_len
## enwast 0.930784262295081 0.934591340782123 0.955953428571429
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_len
## enwast 0.965609523809524 0.978314912280702 1.00863668393782
##      0                 1                 1                1
##      1                 0                 0                0
##       y_rate_len
## enwast 1.03024306451613 1.03512329842932 1.04659612903226 1.04885172413793
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_len
## enwast 1.05075872727273 1.07149738636364 1.08631071428571 1.10182943877551
##      0                1                1                3                1
##      1                0                0                0                0
##       y_rate_len
## enwast 1.10319637305699 1.11474816753927 1.12150960893855 1.13840280701754
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_len
## enwast 1.13867646153846 1.14263793650794 1.15715706521739 1.16106758064516
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_len
## enwast 1.16348032786885 1.16734362162162 1.16987307692308 1.17112427807487
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_len
## enwast 1.17482492063492 1.17683660714286 1.17742064516129 1.18088364705882
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_len
## enwast 1.18738989304813 1.19616235955056 1.2020971257485 1.2133437704918
##      0                1                1               1               1
##      1                0                0               0               0
##       y_rate_len
## enwast 1.24149795918367 1.25343543956044 1.2699756185567 1.27906123076923
##      0                1                1               1                1
##      1                0                0               0                0
##       y_rate_len
## enwast 1.28940358695652 1.29432765957447 1.29465953846154 1.32727418181818
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_len
## enwast 1.33575984126984 1.34286494680851 1.36293409836066 1.44436843575419
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_len
## enwast 1.47427882653061 1.50499296875 1.52888174603175 1.52983402366864
##      0                1             1                1                1
##      1                0             0                0                0
##       y_rate_len
## enwast 1.56428742857143 1.63408867021276 1.65582035502959 1.70981449704142
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_len
## enwast 1.76096684210526 1.78921764705882 1.95535928571428
##      0                1                1                1
##      1                0                0                0
##       y_rate_len
## enwast 0.739411491712708 0.829546363636364 0.857045138121546
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_len
## enwast 0.873849944751382 0.889850265957447 0.969323406593406
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_len
## enwast 1.00828839779006 1.01389 1.03051114754098 1.04189801104972
##      0                1       1                1                1
##      1                0       0                0                0
##       y_rate_len
## enwast 1.08631071428571 1.09103380434783 1.09699573770492 1.10302318681319
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_len
## enwast 1.13644813186813 1.1483856122449 1.1531606043956 1.15316060439561
##      0                3               1               1                1
##      1                0               0               0                0
##       y_rate_len
## enwast 1.16987307692308 1.19672262295082 1.20994607734807 1.2267508839779
##      0                2                1                1               1
##      1                0                0                0               0
##       y_rate_len
## enwast 1.23356616666667 1.23672296703297 1.31577859550562 1.318057
##      0                1                1                1        1
##      1                0                0                0        0
##       y_rate_len
## enwast 1.33461030612245 1.3369978021978 1.35371027472527 1.36293409836066
##      0                1               3                2                1
##      1                0               0                0                0
##       y_rate_len
## enwast 1.36704269662921 1.3687515 1.37042274725275 1.37365741935484
##      0                1         2                1                1
##      1                0         0                0                0
##       y_rate_len
## enwast 1.45398510989011 1.47069758241758 1.48102256544503 1.50412252747253
##      0                1                2                1                1
##      1                0                0                0                0
##       y_rate_len
## enwast 1.520835 1.53754747252747 1.59563016393443 1.62001989130435
##      0        1                1                1                1
##      1        0                0                0                0
##       y_rate_len
## enwast 1.63782230769231 1.67124725274725 1.82165950549451
##      0                1                1                1
##      1                0                0                0
```




# Results Detail

## Results Plots
![](/tmp/e77b8727-dcfe-43f3-98c9-ac07b6630832/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/e77b8727-dcfe-43f3-98c9-ac07b6630832/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH     0                    NA                3.6092972   3.5418269   3.6767675
0-3 months     ki0047075b-MAL-ED          BANGLADESH     1                    NA                4.0950004   3.9527577   4.2372431
0-3 months     ki0047075b-MAL-ED          BRAZIL         0                    NA                4.0468035   3.9427575   4.1508496
0-3 months     ki0047075b-MAL-ED          BRAZIL         1                    NA                5.9563390   5.8238081   6.0888699
0-3 months     ki0047075b-MAL-ED          INDIA          0                    NA                3.6511478   3.5668565   3.7354390
0-3 months     ki0047075b-MAL-ED          INDIA          1                    NA                3.9529774   3.8426642   4.0632906
0-3 months     ki0047075b-MAL-ED          NEPAL          0                    NA                3.8273967   3.7443433   3.9104500
0-3 months     ki0047075b-MAL-ED          NEPAL          1                    NA                3.6363063   3.5516139   3.7209986
0-3 months     ki0047075b-MAL-ED          PERU           0                    NA                3.2941611   3.2295947   3.3587276
0-3 months     ki0047075b-MAL-ED          PERU           1                    NA                3.6845815   3.3465330   4.0226300
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA   0                    NA                3.4807407   3.3896243   3.5718571
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA   1                    NA                3.0470525   2.8906386   3.2034664
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA          0                    NA                3.5666965   3.3298755   3.8035175
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA          1                    NA                2.7848924   2.4155458   3.1542389
0-3 months     ki1000108-IRC              INDIA          0                    NA                3.4692433   3.3537086   3.5847781
0-3 months     ki1000108-IRC              INDIA          1                    NA                2.2722900   2.1254091   2.4191709
0-3 months     ki1000109-ResPak           PAKISTAN       0                    NA                2.8661958   2.4891706   3.2432209
0-3 months     ki1000109-ResPak           PAKISTAN       1                    NA                2.1714905   1.5851185   2.7578625
0-3 months     ki1000304b-SAS-CompFeed    INDIA          0                    NA                3.5982858   3.5620277   3.6345439
0-3 months     ki1000304b-SAS-CompFeed    INDIA          1                    NA                3.2293054   3.1324260   3.3261847
0-3 months     ki1017093-NIH-Birth        BANGLADESH     0                    NA                3.3601600   3.2972962   3.4230238
0-3 months     ki1017093-NIH-Birth        BANGLADESH     1                    NA                3.1208972   3.0234199   3.2183745
0-3 months     ki1101329-Keneba           GAMBIA         0                    NA                3.1648392   3.1195223   3.2101561
0-3 months     ki1101329-Keneba           GAMBIA         1                    NA                2.1933203   1.6793995   2.7072412
0-3 months     ki1114097-CMIN             BRAZIL         0                    NA                3.4928032   3.2983825   3.6872240
0-3 months     ki1114097-CMIN             BRAZIL         1                    NA                3.3049939   2.4526093   4.1573784
0-3 months     ki1119695-PROBIT           BELARUS        0                    NA                2.9482293   2.8490971   3.0473616
0-3 months     ki1119695-PROBIT           BELARUS        1                    NA                2.4125707   2.3175115   2.5076300
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE       0                    NA                3.4723783   3.4513776   3.4933790
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE       1                    NA                2.5728595   2.5284768   2.6172421
0-3 months     ki1135781-COHORTS          GUATEMALA      0                    NA                2.6534671   2.6039413   2.7029928
0-3 months     ki1135781-COHORTS          GUATEMALA      1                    NA                2.4594321   2.3819319   2.5369323
0-3 months     ki1135781-COHORTS          INDIA          0                    NA                3.5601444   3.5448602   3.5754286
0-3 months     ki1135781-COHORTS          INDIA          1                    NA                3.4093699   3.3766190   3.4421209
0-3 months     kiGH5241-JiVitA-3          BANGLADESH     0                    NA                3.7016033   3.6905602   3.7126463
0-3 months     kiGH5241-JiVitA-3          BANGLADESH     1                    NA                3.5575067   3.5280136   3.5869998
0-3 months     kiGH5241-JiVitA-4          BANGLADESH     0                    NA                3.6115989   3.5766322   3.6465655
0-3 months     kiGH5241-JiVitA-4          BANGLADESH     1                    NA                3.4669001   3.3776242   3.5561759
3-6 months     ki0047075b-MAL-ED          BANGLADESH     0                    NA                1.9341167   1.8793939   1.9888395
3-6 months     ki0047075b-MAL-ED          BANGLADESH     1                    NA                2.0219654   1.9060789   2.1378519
3-6 months     ki0047075b-MAL-ED          BRAZIL         0                    NA                2.1256782   2.0328047   2.2185516
3-6 months     ki0047075b-MAL-ED          BRAZIL         1                    NA                2.1738456   1.8379018   2.5097894
3-6 months     ki0047075b-MAL-ED          INDIA          0                    NA                1.8409427   1.7699727   1.9119127
3-6 months     ki0047075b-MAL-ED          INDIA          1                    NA                2.0600842   1.9782684   2.1419000
3-6 months     ki0047075b-MAL-ED          NEPAL          0                    NA                1.9572106   1.8881578   2.0262634
3-6 months     ki0047075b-MAL-ED          NEPAL          1                    NA                2.1352709   2.0563278   2.2142140
3-6 months     ki0047075b-MAL-ED          PERU           0                    NA                2.0159862   1.9474707   2.0845017
3-6 months     ki0047075b-MAL-ED          PERU           1                    NA                1.7331193   1.4929836   1.9732550
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA   0                    NA                1.9417592   1.8521323   2.0313860
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA   1                    NA                1.9067137   1.7974173   2.0160102
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA          0                    NA                1.8963952   1.6660118   2.1267787
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA          1                    NA                1.9394227   1.6301824   2.2486631
3-6 months     ki1000108-IRC              INDIA          0                    NA                1.8657841   1.7891191   1.9424490
3-6 months     ki1000108-IRC              INDIA          1                    NA                1.8948556   1.7875486   2.0021627
3-6 months     ki1000109-ResPak           PAKISTAN       0                    NA                2.1036135   1.8872939   2.3199330
3-6 months     ki1000109-ResPak           PAKISTAN       1                    NA                2.0763827   1.7100522   2.4427132
3-6 months     ki1000304b-SAS-CompFeed    INDIA          0                    NA                1.9294510   1.8766552   1.9822468
3-6 months     ki1000304b-SAS-CompFeed    INDIA          1                    NA                1.8045596   1.6921361   1.9169831
3-6 months     ki1017093-NIH-Birth        BANGLADESH     0                    NA                1.8361935   1.7822452   1.8901418
3-6 months     ki1017093-NIH-Birth        BANGLADESH     1                    NA                1.9123084   1.8365805   1.9880364
3-6 months     ki1101329-Keneba           GAMBIA         0                    NA                1.9930199   1.9531453   2.0328945
3-6 months     ki1101329-Keneba           GAMBIA         1                    NA                2.2369063   2.0694021   2.4044105
3-6 months     ki1113344-GMS-Nepal        NEPAL          0                    NA                1.6943834   1.5281219   1.8606448
3-6 months     ki1113344-GMS-Nepal        NEPAL          1                    NA                1.3470302   1.1265258   1.5675346
3-6 months     ki1114097-CMIN             BRAZIL         0                    NA                1.6827145   1.4725230   1.8929060
3-6 months     ki1114097-CMIN             BRAZIL         1                    NA                2.1935078   1.8223356   2.5646800
3-6 months     ki1119695-PROBIT           BELARUS        0                    NA                2.1164325   2.0803948   2.1524703
3-6 months     ki1119695-PROBIT           BELARUS        1                    NA                1.9938223   1.9265214   2.0611232
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE       0                    NA                1.9567926   1.9343914   1.9791937
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE       1                    NA                2.0666450   2.0236031   2.1096870
3-6 months     ki1135781-COHORTS          GUATEMALA      0                    NA                1.7609945   1.7229685   1.7990205
3-6 months     ki1135781-COHORTS          GUATEMALA      1                    NA                1.6454977   1.5926120   1.6983833
3-6 months     ki1135781-COHORTS          INDIA          0                    NA                1.8702982   1.8570628   1.8835335
3-6 months     ki1135781-COHORTS          INDIA          1                    NA                1.8582685   1.8306876   1.8858494
3-6 months     kiGH5241-JiVitA-3          BANGLADESH     0                    NA                1.8883728   1.8766232   1.9001223
3-6 months     kiGH5241-JiVitA-3          BANGLADESH     1                    NA                1.9468462   1.9150678   1.9786246
3-6 months     kiGH5241-JiVitA-4          BANGLADESH     0                    NA                1.8885922   1.8567579   1.9204264
3-6 months     kiGH5241-JiVitA-4          BANGLADESH     1                    NA                1.8373536   1.7326995   1.9420077
6-12 months    ki0047075b-MAL-ED          BANGLADESH     0                    NA                1.1048421   1.0754645   1.1342197
6-12 months    ki0047075b-MAL-ED          BANGLADESH     1                    NA                1.1458426   1.0894375   1.2022478
6-12 months    ki0047075b-MAL-ED          BRAZIL         0                    NA                1.3972091   1.3449556   1.4494626
6-12 months    ki0047075b-MAL-ED          BRAZIL         1                    NA                1.2724881   1.0651036   1.4798726
6-12 months    ki0047075b-MAL-ED          INDIA          0                    NA                1.1200842   1.0888488   1.1513195
6-12 months    ki0047075b-MAL-ED          INDIA          1                    NA                1.2885575   1.2475837   1.3295313
6-12 months    ki0047075b-MAL-ED          NEPAL          0                    NA                1.2003970   1.1705262   1.2302678
6-12 months    ki0047075b-MAL-ED          NEPAL          1                    NA                1.5424475   1.5099460   1.5749491
6-12 months    ki0047075b-MAL-ED          PERU           0                    NA                1.2117929   1.1778973   1.2456886
6-12 months    ki0047075b-MAL-ED          PERU           1                    NA                1.2176231   1.0340679   1.4011783
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA   0                    NA                1.1939540   1.1519647   1.2359434
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA   1                    NA                0.6796908   0.6325814   0.7268003
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA          0                    NA                1.1833527   1.0781958   1.2885096
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA          1                    NA                0.8816419   0.7438911   1.0193928
6-12 months    ki1000108-IRC              INDIA          0                    NA                1.2242990   1.1919400   1.2566580
6-12 months    ki1000108-IRC              INDIA          1                    NA                1.2745796   1.2204728   1.3286865
6-12 months    ki1000109-ResPak           PAKISTAN       0                    NA                1.3057238   1.1580423   1.4534052
6-12 months    ki1000109-ResPak           PAKISTAN       1                    NA                1.4089744   1.1774789   1.6404699
6-12 months    ki1000304b-SAS-CompFeed    INDIA          0                    NA                1.0906174   1.0788534   1.1023813
6-12 months    ki1000304b-SAS-CompFeed    INDIA          1                    NA                1.1406988   1.0825742   1.1988233
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA          0                    NA                1.0121429   0.9257246   1.0985613
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA          1                    NA                0.9681765   0.8326936   1.1036594
6-12 months    ki1017093-NIH-Birth        BANGLADESH     0                    NA                1.1632997   1.1374351   1.1891644
6-12 months    ki1017093-NIH-Birth        BANGLADESH     1                    NA                1.2344977   1.1929902   1.2760052
6-12 months    ki1101329-Keneba           GAMBIA         0                    NA                1.1791031   1.1603543   1.1978518
6-12 months    ki1101329-Keneba           GAMBIA         1                    NA                1.2528631   1.1531694   1.3525569
6-12 months    ki1113344-GMS-Nepal        NEPAL          0                    NA                1.1862148   1.1074474   1.2649822
6-12 months    ki1113344-GMS-Nepal        NEPAL          1                    NA                1.4161552   1.2874598   1.5448505
6-12 months    ki1114097-CMIN             BRAZIL         0                    NA                1.2619274   1.1787510   1.3451039
6-12 months    ki1114097-CMIN             BRAZIL         1                    NA                1.1310728   0.9015957   1.3605499
6-12 months    ki1119695-PROBIT           BELARUS        0                    NA                1.4725692   1.4370154   1.5081230
6-12 months    ki1119695-PROBIT           BELARUS        1                    NA                1.4713504   1.3954283   1.5472726
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE       0                    NA                1.1888276   1.1765061   1.2011492
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE       1                    NA                1.2053463   1.1823993   1.2282933
6-12 months    ki1135781-COHORTS          GUATEMALA      0                    NA                1.0093451   0.9884407   1.0302495
6-12 months    ki1135781-COHORTS          GUATEMALA      1                    NA                1.0002073   0.9683062   1.0321084
6-12 months    ki1135781-COHORTS          INDIA          0                    NA                1.0964373   1.0873203   1.1055544
6-12 months    ki1135781-COHORTS          INDIA          1                    NA                1.1054116   1.0851188   1.1257044
6-12 months    ki1135781-COHORTS          PHILIPPINES    0                    NA                1.0673784   1.0541404   1.0806165
6-12 months    ki1135781-COHORTS          PHILIPPINES    1                    NA                1.0518686   1.0232723   1.0804649
6-12 months    ki1148112-LCNI-5           MALAWI         0                    NA                1.2856133   1.2605278   1.3106987
6-12 months    ki1148112-LCNI-5           MALAWI         1                    NA                1.5577276   1.4926400   1.6228151
6-12 months    kiGH5241-JiVitA-3          BANGLADESH     0                    NA                1.1016559   1.0942540   1.1090577
6-12 months    kiGH5241-JiVitA-3          BANGLADESH     1                    NA                1.1170135   1.0962255   1.1378015
6-12 months    kiGH5241-JiVitA-4          BANGLADESH     0                    NA                1.1948020   1.1830507   1.2065533
6-12 months    kiGH5241-JiVitA-4          BANGLADESH     1                    NA                1.2341316   1.2056909   1.2625723
12-24 months   ki0047075b-MAL-ED          BANGLADESH     0                    NA                0.8450829   0.8269852   0.8631806
12-24 months   ki0047075b-MAL-ED          BANGLADESH     1                    NA                0.8645482   0.8410497   0.8880468
12-24 months   ki0047075b-MAL-ED          BRAZIL         0                    NA                0.9781019   0.9430891   1.0131146
12-24 months   ki0047075b-MAL-ED          BRAZIL         1                    NA                0.8339116   0.7307619   0.9370614
12-24 months   ki0047075b-MAL-ED          INDIA          0                    NA                0.8841200   0.8639064   0.9043336
12-24 months   ki0047075b-MAL-ED          INDIA          1                    NA                0.8809799   0.8282106   0.9337492
12-24 months   ki0047075b-MAL-ED          NEPAL          0                    NA                0.8787938   0.8597410   0.8978467
12-24 months   ki0047075b-MAL-ED          NEPAL          1                    NA                1.1040864   1.0771610   1.1310118
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   0                    NA                0.8657451   0.8414070   0.8900832
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1                    NA                1.1556632   1.0719971   1.2393294
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA          0                    NA                0.6745740   0.6205931   0.7285550
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                    NA                0.8833984   0.7957316   0.9710652
12-24 months   ki1000108-IRC              INDIA          0                    NA                0.8483526   0.8244014   0.8723038
12-24 months   ki1000108-IRC              INDIA          1                    NA                0.7911710   0.7581765   0.8241656
12-24 months   ki1017093-NIH-Birth        BANGLADESH     0                    NA                0.7415766   0.7236708   0.7594825
12-24 months   ki1017093-NIH-Birth        BANGLADESH     1                    NA                0.7249810   0.7000208   0.7499413
12-24 months   ki1101329-Keneba           GAMBIA         0                    NA                0.8431411   0.8322756   0.8540066
12-24 months   ki1101329-Keneba           GAMBIA         1                    NA                0.8458061   0.8067711   0.8848410
12-24 months   ki1119695-PROBIT           BELARUS        0                    NA                0.8707298   0.8166212   0.9248384
12-24 months   ki1119695-PROBIT           BELARUS        1                    NA                0.8231423   0.7538218   0.8924629
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE       0                    NA                0.7054834   0.6739921   0.7369748
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE       1                    NA                0.8235616   0.7823113   0.8648118
12-24 months   ki1135781-COHORTS          GUATEMALA      0                    NA                0.7744643   0.7614200   0.7875086
12-24 months   ki1135781-COHORTS          GUATEMALA      1                    NA                0.8110829   0.7911219   0.8310439
12-24 months   ki1135781-COHORTS          INDIA          0                    NA                0.8291289   0.8236402   0.8346177
12-24 months   ki1135781-COHORTS          INDIA          1                    NA                0.8201128   0.8075808   0.8326447
12-24 months   ki1135781-COHORTS          PHILIPPINES    0                    NA                0.7058198   0.6978137   0.7138258
12-24 months   ki1135781-COHORTS          PHILIPPINES    1                    NA                0.7092728   0.6910038   0.7275417
12-24 months   ki1148112-LCNI-5           MALAWI         0                    NA                0.8359713   0.8191766   0.8527659
12-24 months   ki1148112-LCNI-5           MALAWI         1                    NA                0.2500575   0.2250842   0.2750307
12-24 months   kiGH5241-JiVitA-3          BANGLADESH     0                    NA                0.7951124   0.7889930   0.8012318
12-24 months   kiGH5241-JiVitA-3          BANGLADESH     1                    NA                0.8065795   0.7913069   0.8218521
12-24 months   kiGH5241-JiVitA-4          BANGLADESH     0                    NA                0.8480207   0.8418063   0.8542351
12-24 months   kiGH5241-JiVitA-4          BANGLADESH     1                    NA                0.8563185   0.8417339   0.8709030


### Parameter: E(Y)


agecat         studyid                    country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH     NA                   NA                3.5372207   3.4719800   3.6024613
0-3 months     ki0047075b-MAL-ED          BRAZIL         NA                   NA                4.0245152   3.9226845   4.1263458
0-3 months     ki0047075b-MAL-ED          INDIA          NA                   NA                3.5803909   3.5021237   3.6586582
0-3 months     ki0047075b-MAL-ED          NEPAL          NA                   NA                3.8210416   3.7432799   3.8988033
0-3 months     ki0047075b-MAL-ED          PERU           NA                   NA                3.3031363   3.2391806   3.3670920
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA   NA                   NA                3.4515461   3.3627553   3.5403368
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA          NA                   NA                3.4747796   3.2523736   3.6971855
0-3 months     ki1000108-IRC              INDIA          NA                   NA                3.1041798   2.9950514   3.2133081
0-3 months     ki1000109-ResPak           PAKISTAN       NA                   NA                2.7812773   2.4417175   3.1208370
0-3 months     ki1000304b-SAS-CompFeed    INDIA          NA                   NA                3.5821765   3.5472780   3.6170749
0-3 months     ki1017093-NIH-Birth        BANGLADESH     NA                   NA                3.3013658   3.2466509   3.3560806
0-3 months     ki1101329-Keneba           GAMBIA         NA                   NA                3.1388507   3.0918554   3.1858460
0-3 months     ki1114097-CMIN             BRAZIL         NA                   NA                3.4779355   3.2842290   3.6716419
0-3 months     ki1119695-PROBIT           BELARUS        NA                   NA                2.8350352   2.7214238   2.9486466
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE       NA                   NA                3.3242654   3.3032965   3.3452343
0-3 months     ki1135781-COHORTS          GUATEMALA      NA                   NA                2.6053127   2.5607437   2.6498817
0-3 months     ki1135781-COHORTS          INDIA          NA                   NA                3.5310445   3.5166343   3.5454546
0-3 months     kiGH5241-JiVitA-3          BANGLADESH     NA                   NA                3.6852157   3.6744114   3.6960200
0-3 months     kiGH5241-JiVitA-4          BANGLADESH     NA                   NA                3.5977836   3.5643638   3.6312034
3-6 months     ki0047075b-MAL-ED          BANGLADESH     NA                   NA                1.9321661   1.8816367   1.9826955
3-6 months     ki0047075b-MAL-ED          BRAZIL         NA                   NA                2.1274296   2.0370332   2.2178259
3-6 months     ki0047075b-MAL-ED          INDIA          NA                   NA                1.8593921   1.7933258   1.9254583
3-6 months     ki0047075b-MAL-ED          NEPAL          NA                   NA                1.9419686   1.8787758   2.0051614
3-6 months     ki0047075b-MAL-ED          PERU           NA                   NA                2.0102866   1.9427979   2.0777753
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA   NA                   NA                1.9587506   1.8715399   2.0459614
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA          NA                   NA                1.9050007   1.7105540   2.0994475
3-6 months     ki1000108-IRC              INDIA          NA                   NA                1.8753145   1.8103561   1.9402730
3-6 months     ki1000109-ResPak           PAKISTAN       NA                   NA                2.0992675   1.9091659   2.2893691
3-6 months     ki1000304b-SAS-CompFeed    INDIA          NA                   NA                1.9269153   1.8777824   1.9760482
3-6 months     ki1017093-NIH-Birth        BANGLADESH     NA                   NA                1.8335048   1.7847322   1.8822774
3-6 months     ki1101329-Keneba           GAMBIA         NA                   NA                1.9931332   1.9535946   2.0326718
3-6 months     ki1113344-GMS-Nepal        NEPAL          NA                   NA                1.6467573   1.4866674   1.8068472
3-6 months     ki1114097-CMIN             BRAZIL         NA                   NA                1.7240219   1.5258784   1.9221655
3-6 months     ki1119695-PROBIT           BELARUS        NA                   NA                2.0901679   2.0496186   2.1307172
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE       NA                   NA                1.9738771   1.9533260   1.9944282
3-6 months     ki1135781-COHORTS          GUATEMALA      NA                   NA                1.7550340   1.7212609   1.7888071
3-6 months     ki1135781-COHORTS          INDIA          NA                   NA                1.8664146   1.8541575   1.8786717
3-6 months     kiGH5241-JiVitA-3          BANGLADESH     NA                   NA                1.8946465   1.8834804   1.9058125
3-6 months     kiGH5241-JiVitA-4          BANGLADESH     NA                   NA                1.8843141   1.8536920   1.9149361
6-12 months    ki0047075b-MAL-ED          BANGLADESH     NA                   NA                1.1121871   1.0859343   1.1384399
6-12 months    ki0047075b-MAL-ED          BRAZIL         NA                   NA                1.3918661   1.3396107   1.4441216
6-12 months    ki0047075b-MAL-ED          INDIA          NA                   NA                1.1294387   1.0995776   1.1592999
6-12 months    ki0047075b-MAL-ED          NEPAL          NA                   NA                1.2025087   1.1736623   1.2313551
6-12 months    ki0047075b-MAL-ED          PERU           NA                   NA                1.2119249   1.1785366   1.2453131
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA   NA                   NA                1.2027064   1.1610045   1.2444084
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA          NA                   NA                1.1368636   1.0427969   1.2309303
6-12 months    ki1000108-IRC              INDIA          NA                   NA                1.2422419   1.2130355   1.2714484
6-12 months    ki1000109-ResPak           PAKISTAN       NA                   NA                1.3208336   1.1898027   1.4518645
6-12 months    ki1000304b-SAS-CompFeed    INDIA          NA                   NA                1.0959855   1.0828527   1.1091183
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA          NA                   NA                1.0045127   0.9287449   1.0802805
6-12 months    ki1017093-NIH-Birth        BANGLADESH     NA                   NA                1.1676028   1.1447000   1.1905057
6-12 months    ki1101329-Keneba           GAMBIA         NA                   NA                1.1816785   1.1629796   1.2003774
6-12 months    ki1113344-GMS-Nepal        NEPAL          NA                   NA                1.1874276   1.1156751   1.2591801
6-12 months    ki1114097-CMIN             BRAZIL         NA                   NA                1.2522294   1.1730423   1.3314165
6-12 months    ki1119695-PROBIT           BELARUS        NA                   NA                1.4722781   1.4337869   1.5107692
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE       NA                   NA                1.1932293   1.1819989   1.2044596
6-12 months    ki1135781-COHORTS          GUATEMALA      NA                   NA                1.0129026   0.9939552   1.0318499
6-12 months    ki1135781-COHORTS          INDIA          NA                   NA                1.0983865   1.0899246   1.1068484
6-12 months    ki1135781-COHORTS          PHILIPPINES    NA                   NA                1.0666308   1.0541797   1.0790818
6-12 months    ki1148112-LCNI-5           MALAWI         NA                   NA                1.2822639   1.2559619   1.3085659
6-12 months    kiGH5241-JiVitA-3          BANGLADESH     NA                   NA                1.1032413   1.0959854   1.1104972
6-12 months    kiGH5241-JiVitA-4          BANGLADESH     NA                   NA                1.1982959   1.1873757   1.2092162
12-24 months   ki0047075b-MAL-ED          BANGLADESH     NA                   NA                0.8494069   0.8328617   0.8659520
12-24 months   ki0047075b-MAL-ED          BRAZIL         NA                   NA                0.9726220   0.9382955   1.0069484
12-24 months   ki0047075b-MAL-ED          INDIA          NA                   NA                0.8835911   0.8641789   0.9030033
12-24 months   ki0047075b-MAL-ED          NEPAL          NA                   NA                0.8665939   0.8489815   0.8842064
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   NA                   NA                0.8705397   0.8458403   0.8952392
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA          NA                   NA                0.6882945   0.6382179   0.7383711
12-24 months   ki1000108-IRC              INDIA          NA                   NA                0.8284800   0.8085358   0.8484242
12-24 months   ki1017093-NIH-Birth        BANGLADESH     NA                   NA                0.7540015   0.7389159   0.7690872
12-24 months   ki1101329-Keneba           GAMBIA         NA                   NA                0.8432906   0.8326608   0.8539203
12-24 months   ki1119695-PROBIT           BELARUS        NA                   NA                0.8603233   0.8073419   0.9133048
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE       NA                   NA                0.7118565   0.6828134   0.7408996
12-24 months   ki1135781-COHORTS          GUATEMALA      NA                   NA                0.7784496   0.7662950   0.7906042
12-24 months   ki1135781-COHORTS          INDIA          NA                   NA                0.8276828   0.8225683   0.8327973
12-24 months   ki1135781-COHORTS          PHILIPPINES    NA                   NA                0.7064783   0.6990021   0.7139544
12-24 months   ki1148112-LCNI-5           MALAWI         NA                   NA                0.8398433   0.8228524   0.8568341
12-24 months   kiGH5241-JiVitA-3          BANGLADESH     NA                   NA                0.7965241   0.7907103   0.8023378
12-24 months   kiGH5241-JiVitA-4          BANGLADESH     NA                   NA                0.8487965   0.8428800   0.8547129


### Parameter: ATE


agecat         studyid                    country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH     1                    0                  0.4857032    0.3255048    0.6459017
0-3 months     ki0047075b-MAL-ED          BRAZIL         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL         1                    0                  1.9095355    1.7376004    2.0814705
0-3 months     ki0047075b-MAL-ED          INDIA          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA          1                    0                  0.3018296    0.1666116    0.4370476
0-3 months     ki0047075b-MAL-ED          NEPAL          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL          1                    0                 -0.1910904   -0.3045205   -0.0776603
0-3 months     ki0047075b-MAL-ED          PERU           0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU           1                    0                  0.3904204    0.0462611    0.7345797
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA   1                    0                 -0.4336882   -0.6146746   -0.2527018
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA          1                    0                 -0.7818041   -1.2203791   -0.3432292
0-3 months     ki1000108-IRC              INDIA          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA          1                    0                 -1.1969534   -1.3829206   -1.0109861
0-3 months     ki1000109-ResPak           PAKISTAN       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-ResPak           PAKISTAN       1                    0                 -0.6947053   -1.3877401   -0.0016705
0-3 months     ki1000304b-SAS-CompFeed    INDIA          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA          1                    0                 -0.3689805   -0.4675009   -0.2704601
0-3 months     ki1017093-NIH-Birth        BANGLADESH     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH     1                    0                 -0.2392628   -0.3552424   -0.1232832
0-3 months     ki1101329-Keneba           GAMBIA         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA         1                    0                 -0.9715189   -1.4874345   -0.4556032
0-3 months     ki1114097-CMIN             BRAZIL         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CMIN             BRAZIL         1                    0                 -0.1878094   -1.0630487    0.6874299
0-3 months     ki1119695-PROBIT           BELARUS        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS        1                    0                 -0.5356586   -0.6357536   -0.4355636
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE       1                    0                 -0.8995188   -0.9483258   -0.8507118
0-3 months     ki1135781-COHORTS          GUATEMALA      0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA      1                    0                 -0.1940350   -0.2849829   -0.1030871
0-3 months     ki1135781-COHORTS          INDIA          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA          1                    0                 -0.1507744   -0.1863811   -0.1151678
0-3 months     kiGH5241-JiVitA-3          BANGLADESH     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH     1                    0                 -0.1440966   -0.1746726   -0.1135205
0-3 months     kiGH5241-JiVitA-4          BANGLADESH     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH     1                    0                 -0.1446988   -0.2390774   -0.0503202
3-6 months     ki0047075b-MAL-ED          BANGLADESH     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH     1                    0                  0.0878487   -0.0403284    0.2160259
3-6 months     ki0047075b-MAL-ED          BRAZIL         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL         1                    0                  0.0481674   -0.2999451    0.3962799
3-6 months     ki0047075b-MAL-ED          INDIA          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA          1                    0                  0.2191415    0.1132235    0.3250595
3-6 months     ki0047075b-MAL-ED          NEPAL          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL          1                    0                  0.1780603    0.0741058    0.2820147
3-6 months     ki0047075b-MAL-ED          PERU           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU           1                    0                 -0.2828669   -0.5323014   -0.0334325
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA   1                    0                 -0.0350454   -0.1762984    0.1062075
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA          1                    0                  0.0430275   -0.3425968    0.4286519
3-6 months     ki1000108-IRC              INDIA          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA          1                    0                  0.0290716   -0.1028140    0.1609571
3-6 months     ki1000109-ResPak           PAKISTAN       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-ResPak           PAKISTAN       1                    0                 -0.0272308   -0.4533065    0.3988450
3-6 months     ki1000304b-SAS-CompFeed    INDIA          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA          1                    0                 -0.1248914   -0.2528751    0.0030922
3-6 months     ki1017093-NIH-Birth        BANGLADESH     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH     1                    0                  0.0761150   -0.0109224    0.1631523
3-6 months     ki1101329-Keneba           GAMBIA         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA         1                    0                  0.2438864    0.0728351    0.4149377
3-6 months     ki1113344-GMS-Nepal        NEPAL          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL          1                    0                 -0.3473532   -0.6202240   -0.0744823
3-6 months     ki1114097-CMIN             BRAZIL         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             BRAZIL         1                    0                  0.5107933    0.0839190    0.9376677
3-6 months     ki1119695-PROBIT           BELARUS        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS        1                    0                 -0.1226102   -0.1841211   -0.0610993
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE       1                    0                  0.1098524    0.0616762    0.1580287
3-6 months     ki1135781-COHORTS          GUATEMALA      0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA      1                    0                 -0.1154968   -0.1799505   -0.0510432
3-6 months     ki1135781-COHORTS          INDIA          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA          1                    0                 -0.0120296   -0.0423857    0.0183264
3-6 months     kiGH5241-JiVitA-3          BANGLADESH     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH     1                    0                  0.0584734    0.0250573    0.0918895
3-6 months     kiGH5241-JiVitA-4          BANGLADESH     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH     1                    0                 -0.0512386   -0.1602073    0.0577302
6-12 months    ki0047075b-MAL-ED          BANGLADESH     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH     1                    0                  0.0410005   -0.0225483    0.1045493
6-12 months    ki0047075b-MAL-ED          BRAZIL         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BRAZIL         1                    0                 -0.1247210   -0.3328594    0.0834175
6-12 months    ki0047075b-MAL-ED          INDIA          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA          1                    0                  0.1684733    0.1205007    0.2164460
6-12 months    ki0047075b-MAL-ED          NEPAL          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          NEPAL          1                    0                  0.3420505    0.2972876    0.3868135
6-12 months    ki0047075b-MAL-ED          PERU           0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          PERU           1                    0                  0.0058302   -0.1808284    0.1924887
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA   1                    0                 -0.5142632   -0.5738859   -0.4546405
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA          1                    0                 -0.3017107   -0.4739677   -0.1294537
6-12 months    ki1000108-IRC              INDIA          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA          1                    0                  0.0502807   -0.0124275    0.1129888
6-12 months    ki1000109-ResPak           PAKISTAN       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000109-ResPak           PAKISTAN       1                    0                  0.1032506   -0.1713399    0.3778412
6-12 months    ki1000304b-SAS-CompFeed    INDIA          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA          1                    0                  0.0500814   -0.0102489    0.1104117
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA          1                    0                 -0.0439664   -0.2033463    0.1154135
6-12 months    ki1017093-NIH-Birth        BANGLADESH     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth        BANGLADESH     1                    0                  0.0711979    0.0225865    0.1198093
6-12 months    ki1101329-Keneba           GAMBIA         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1101329-Keneba           GAMBIA         1                    0                  0.0737600   -0.0272458    0.1747659
6-12 months    ki1113344-GMS-Nepal        NEPAL          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal        NEPAL          1                    0                  0.2299403    0.0792983    0.3805823
6-12 months    ki1114097-CMIN             BRAZIL         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN             BRAZIL         1                    0                 -0.1308546   -0.3758166    0.1141074
6-12 months    ki1119695-PROBIT           BELARUS        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS        1                    0                 -0.0012188   -0.0681663    0.0657287
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE       1                    0                  0.0165187   -0.0092614    0.0422988
6-12 months    ki1135781-COHORTS          GUATEMALA      0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          GUATEMALA      1                    0                 -0.0091378   -0.0456174    0.0273418
6-12 months    ki1135781-COHORTS          INDIA          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          INDIA          1                    0                  0.0089742   -0.0130536    0.0310021
6-12 months    ki1135781-COHORTS          PHILIPPINES    0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          PHILIPPINES    1                    0                 -0.0155099   -0.0465743    0.0155546
6-12 months    ki1148112-LCNI-5           MALAWI         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5           MALAWI         1                    0                  0.2721143    0.2041188    0.3401098
6-12 months    kiGH5241-JiVitA-3          BANGLADESH     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH     1                    0                  0.0153576   -0.0057849    0.0365002
6-12 months    kiGH5241-JiVitA-4          BANGLADESH     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4          BANGLADESH     1                    0                  0.0393296    0.0080972    0.0705620
12-24 months   ki0047075b-MAL-ED          BANGLADESH     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH     1                    0                  0.0194654   -0.0087314    0.0476621
12-24 months   ki0047075b-MAL-ED          BRAZIL         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BRAZIL         1                    0                 -0.1441902   -0.2528001   -0.0355803
12-24 months   ki0047075b-MAL-ED          INDIA          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA          1                    0                 -0.0031402   -0.0586566    0.0523763
12-24 months   ki0047075b-MAL-ED          NEPAL          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          NEPAL          1                    0                  0.2252926    0.1901414    0.2604438
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1                    0                  0.2899181    0.2032942    0.3765420
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                    0                  0.2088243    0.1043370    0.3133117
12-24 months   ki1000108-IRC              INDIA          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA          1                    0                 -0.0571816   -0.0978836   -0.0164795
12-24 months   ki1017093-NIH-Birth        BANGLADESH     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093-NIH-Birth        BANGLADESH     1                    0                 -0.0165956   -0.0473301    0.0141389
12-24 months   ki1101329-Keneba           GAMBIA         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1101329-Keneba           GAMBIA         1                    0                  0.0026650   -0.0374976    0.0428276
12-24 months   ki1119695-PROBIT           BELARUS        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1119695-PROBIT           BELARUS        1                    0                 -0.0475875   -0.1099203    0.0147454
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE       0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE       1                    0                  0.1180782    0.0661765    0.1699799
12-24 months   ki1135781-COHORTS          GUATEMALA      0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          GUATEMALA      1                    0                  0.0366186    0.0139211    0.0593162
12-24 months   ki1135781-COHORTS          INDIA          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          INDIA          1                    0                 -0.0090162   -0.0225279    0.0044955
12-24 months   ki1135781-COHORTS          PHILIPPINES    0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          PHILIPPINES    1                    0                  0.0034530   -0.0162087    0.0231147
12-24 months   ki1148112-LCNI-5           MALAWI         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5           MALAWI         1                    0                 -0.5859138   -0.6171005   -0.5547271
12-24 months   kiGH5241-JiVitA-3          BANGLADESH     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH     1                    0                  0.0114671   -0.0047031    0.0276374
12-24 months   kiGH5241-JiVitA-4          BANGLADESH     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4          BANGLADESH     1                    0                  0.0082978   -0.0070917    0.0236872
