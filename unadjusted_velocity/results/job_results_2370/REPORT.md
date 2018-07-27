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

**Intervention Variable:** enwast

**Adjustment Set:**

unadjusted

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
![](/tmp/668f0c9d-fa0a-4674-9366-65c745ddfc75/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/668f0c9d-fa0a-4674-9366-65c745ddfc75/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH     0                    NA                3.5768483   3.5094981   3.6441985
0-3 months     ki0047075b-MAL-ED          BANGLADESH     1                    NA                3.3347984   3.1468298   3.5227670
0-3 months     ki0047075b-MAL-ED          BRAZIL         0                    NA                4.0363982   3.9325314   4.1402649
0-3 months     ki0047075b-MAL-ED          BRAZIL         1                    NA                3.6937709   3.2576772   4.1298646
0-3 months     ki0047075b-MAL-ED          INDIA          0                    NA                3.6272550   3.5411205   3.7133894
0-3 months     ki0047075b-MAL-ED          INDIA          1                    NA                3.3460706   3.1814556   3.5106856
0-3 months     ki0047075b-MAL-ED          NEPAL          0                    NA                3.8326831   3.7472870   3.9180792
0-3 months     ki0047075b-MAL-ED          NEPAL          1                    NA                3.7401052   3.5711644   3.9090459
0-3 months     ki0047075b-MAL-ED          PERU           0                    NA                3.2941611   3.2295947   3.3587276
0-3 months     ki0047075b-MAL-ED          PERU           1                    NA                3.6845815   3.3465330   4.0226300
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA   0                    NA                3.4792075   3.3877350   3.5706800
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA   1                    NA                3.0587533   2.7557250   3.3617816
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA          0                    NA                3.5674142   3.3295029   3.8053255
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA          1                    NA                2.7954592   2.3901763   3.2007421
0-3 months     ki1000108-IRC              INDIA          0                    NA                3.4700830   3.3538963   3.5862698
0-3 months     ki1000108-IRC              INDIA          1                    NA                2.2759078   2.1241289   2.4276867
0-3 months     ki1000109-ResPak           PAKISTAN       0                    NA                2.8641904   2.4879908   3.2403900
0-3 months     ki1000109-ResPak           PAKISTAN       1                    NA                2.3563474   1.6474547   3.0652401
0-3 months     ki1000304b-SAS-CompFeed    INDIA          0                    NA                3.6051976   3.5676550   3.6427402
0-3 months     ki1000304b-SAS-CompFeed    INDIA          1                    NA                3.3954274   3.2371128   3.5537420
0-3 months     ki1017093-NIH-Birth        BANGLADESH     0                    NA                3.3617719   3.2983821   3.4251618
0-3 months     ki1017093-NIH-Birth        BANGLADESH     1                    NA                3.1465501   3.0428202   3.2502800
0-3 months     ki1101329-Keneba           GAMBIA         0                    NA                3.1648444   3.1195265   3.2101624
0-3 months     ki1101329-Keneba           GAMBIA         1                    NA                2.1931357   1.6793641   2.7069074
0-3 months     ki1114097-CMIN             BRAZIL         0                    NA                3.4927873   3.2983534   3.6872213
0-3 months     ki1114097-CMIN             BRAZIL         1                    NA                3.3021885   2.3725231   4.2318540
0-3 months     ki1119695-PROBIT           BELARUS        0                    NA                2.9489874   2.8497251   3.0482497
0-3 months     ki1119695-PROBIT           BELARUS        1                    NA                2.4111146   2.3122490   2.5099803
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE       0                    NA                3.4729075   3.4516964   3.4941186
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE       1                    NA                2.5620326   2.5121101   2.6119551
0-3 months     ki1135781-COHORTS          GUATEMALA      0                    NA                2.6510281   2.6003802   2.7016761
0-3 months     ki1135781-COHORTS          GUATEMALA      1                    NA                2.4713935   2.3813222   2.5614647
0-3 months     ki1135781-COHORTS          INDIA          0                    NA                3.5590071   3.5434956   3.5745186
0-3 months     ki1135781-COHORTS          INDIA          1                    NA                3.4048197   3.3681720   3.4414675
0-3 months     kiGH5241-JiVitA-3          BANGLADESH     0                    NA                3.7027242   3.6915710   3.7138774
0-3 months     kiGH5241-JiVitA-3          BANGLADESH     1                    NA                3.5508857   3.5172111   3.5845602
0-3 months     kiGH5241-JiVitA-4          BANGLADESH     0                    NA                3.6102824   3.5751868   3.6453780
0-3 months     kiGH5241-JiVitA-4          BANGLADESH     1                    NA                3.4770193   3.3735349   3.5805037
3-6 months     ki0047075b-MAL-ED          BANGLADESH     0                    NA                1.9309040   1.8759742   1.9858338
3-6 months     ki0047075b-MAL-ED          BANGLADESH     1                    NA                1.9385127   1.8100934   2.0669319
3-6 months     ki0047075b-MAL-ED          BRAZIL         0                    NA                2.1255663   2.0326782   2.2184545
3-6 months     ki0047075b-MAL-ED          BRAZIL         1                    NA                2.1768049   1.8319681   2.5216417
3-6 months     ki0047075b-MAL-ED          INDIA          0                    NA                1.8407964   1.7671914   1.9144015
3-6 months     ki0047075b-MAL-ED          INDIA          1                    NA                1.9560893   1.8151955   2.0969831
3-6 months     ki0047075b-MAL-ED          NEPAL          0                    NA                1.9500495   1.8800647   2.0200343
3-6 months     ki0047075b-MAL-ED          NEPAL          1                    NA                1.8861717   1.7622420   2.0101013
3-6 months     ki0047075b-MAL-ED          PERU           0                    NA                2.0156255   1.9470931   2.0841578
3-6 months     ki0047075b-MAL-ED          PERU           1                    NA                1.7508169   1.5080014   1.9936324
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA   0                    NA                1.9449704   1.8544741   2.0354666
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA   1                    NA                2.1447844   1.8344558   2.4551130
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA          0                    NA                1.8963952   1.6660118   2.1267787
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA          1                    NA                1.9394227   1.6301824   2.2486631
3-6 months     ki1000108-IRC              INDIA          0                    NA                1.8649750   1.7869296   1.9430205
3-6 months     ki1000108-IRC              INDIA          1                    NA                1.8954281   1.7790841   2.0117720
3-6 months     ki1000109-ResPak           PAKISTAN       0                    NA                2.1042417   1.8868490   2.3216344
3-6 months     ki1000109-ResPak           PAKISTAN       1                    NA                2.0766075   1.7100906   2.4431243
3-6 months     ki1000304b-SAS-CompFeed    INDIA          0                    NA                1.9331603   1.8789641   1.9873565
3-6 months     ki1000304b-SAS-CompFeed    INDIA          1                    NA                1.8754365   1.7430358   2.0078371
3-6 months     ki1017093-NIH-Birth        BANGLADESH     0                    NA                1.8291185   1.7719988   1.8862382
3-6 months     ki1017093-NIH-Birth        BANGLADESH     1                    NA                1.8447211   1.7511269   1.9383154
3-6 months     ki1101329-Keneba           GAMBIA         0                    NA                1.9930913   1.9530762   2.0331063
3-6 months     ki1101329-Keneba           GAMBIA         1                    NA                1.9940457   1.7667974   2.2212939
3-6 months     ki1113344-GMS-Nepal        NEPAL          0                    NA                1.6857224   1.5128509   1.8585940
3-6 months     ki1113344-GMS-Nepal        NEPAL          1                    NA                1.4352323   1.0495765   1.8208880
3-6 months     ki1114097-CMIN             BRAZIL         0                    NA                1.6826723   1.4724713   1.8928733
3-6 months     ki1114097-CMIN             BRAZIL         1                    NA                2.1926511   1.8162776   2.5690245
3-6 months     ki1119695-PROBIT           BELARUS        0                    NA                2.1160836   2.0799157   2.1522514
3-6 months     ki1119695-PROBIT           BELARUS        1                    NA                1.9951184   1.9267855   2.0634513
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE       0                    NA                1.9568042   1.9342510   1.9793574
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE       1                    NA                2.0650375   2.0157589   2.1143161
3-6 months     ki1135781-COHORTS          GUATEMALA      0                    NA                1.7689282   1.7298573   1.8079991
3-6 months     ki1135781-COHORTS          GUATEMALA      1                    NA                1.7086585   1.6424442   1.7748727
3-6 months     ki1135781-COHORTS          INDIA          0                    NA                1.8699330   1.8565783   1.8832878
3-6 months     ki1135781-COHORTS          INDIA          1                    NA                1.8500938   1.8194674   1.8807203
3-6 months     kiGH5241-JiVitA-3          BANGLADESH     0                    NA                1.8882736   1.8765155   1.9000316
3-6 months     kiGH5241-JiVitA-3          BANGLADESH     1                    NA                1.9486259   1.9156163   1.9816354
3-6 months     kiGH5241-JiVitA-4          BANGLADESH     0                    NA                1.8879243   1.8561297   1.9197189
3-6 months     kiGH5241-JiVitA-4          BANGLADESH     1                    NA                1.8464701   1.7324722   1.9604679
6-12 months    ki0047075b-MAL-ED          BANGLADESH     0                    NA                1.1049008   1.0755112   1.1342904
6-12 months    ki0047075b-MAL-ED          BANGLADESH     1                    NA                1.1455826   1.0890601   1.2021050
6-12 months    ki0047075b-MAL-ED          BRAZIL         0                    NA                1.3963339   1.3436846   1.4489832
6-12 months    ki0047075b-MAL-ED          BRAZIL         1                    NA                1.2824057   0.9603909   1.6044205
6-12 months    ki0047075b-MAL-ED          INDIA          0                    NA                1.1144287   1.0815812   1.1472761
6-12 months    ki0047075b-MAL-ED          INDIA          1                    NA                1.2049893   1.1398526   1.2701259
6-12 months    ki0047075b-MAL-ED          NEPAL          0                    NA                1.1951271   1.1642983   1.2259558
6-12 months    ki0047075b-MAL-ED          NEPAL          1                    NA                1.2556562   1.1778082   1.3335042
6-12 months    ki0047075b-MAL-ED          PERU           0                    NA                1.2117929   1.1778973   1.2456886
6-12 months    ki0047075b-MAL-ED          PERU           1                    NA                1.2176231   1.0340679   1.4011783
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA   0                    NA                1.1977939   1.1548416   1.2407462
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA   1                    NA                1.2662188   1.0994400   1.4329976
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA          0                    NA                1.1889839   1.0811047   1.2968630
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA          1                    NA                0.9437120   0.7847047   1.1027194
6-12 months    ki1000108-IRC              INDIA          0                    NA                1.2213653   1.1883959   1.2543346
6-12 months    ki1000108-IRC              INDIA          1                    NA                1.2838309   1.2268715   1.3407903
6-12 months    ki1000109-ResPak           PAKISTAN       0                    NA                1.3057238   1.1580423   1.4534052
6-12 months    ki1000109-ResPak           PAKISTAN       1                    NA                1.4089744   1.1774789   1.6404699
6-12 months    ki1000304b-SAS-CompFeed    INDIA          0                    NA                1.0901896   1.0784466   1.1019326
6-12 months    ki1000304b-SAS-CompFeed    INDIA          1                    NA                1.1406964   1.0735153   1.2078774
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA          0                    NA                1.0148886   0.9281071   1.1016701
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA          1                    NA                0.9543309   0.8158331   1.0928287
6-12 months    ki1017093-NIH-Birth        BANGLADESH     0                    NA                1.1584811   1.1321465   1.1848157
6-12 months    ki1017093-NIH-Birth        BANGLADESH     1                    NA                1.1911198   1.1454796   1.2367600
6-12 months    ki1101329-Keneba           GAMBIA         0                    NA                1.1791841   1.1603759   1.1979923
6-12 months    ki1101329-Keneba           GAMBIA         1                    NA                1.2413531   1.1211065   1.3615998
6-12 months    ki1113344-GMS-Nepal        NEPAL          0                    NA                1.1788230   1.1003198   1.2573261
6-12 months    ki1113344-GMS-Nepal        NEPAL          1                    NA                1.2341384   1.0617902   1.4064866
6-12 months    ki1114097-CMIN             BRAZIL         0                    NA                1.2627330   1.1794144   1.3460515
6-12 months    ki1114097-CMIN             BRAZIL         1                    NA                1.1321891   0.9015224   1.3628557
6-12 months    ki1119695-PROBIT           BELARUS        0                    NA                1.4723221   1.4366847   1.5079595
6-12 months    ki1119695-PROBIT           BELARUS        1                    NA                1.4721131   1.3947840   1.5494422
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE       0                    NA                1.1884687   1.1760290   1.2009084
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE       1                    NA                1.2169255   1.1910643   1.2427866
6-12 months    ki1135781-COHORTS          GUATEMALA      0                    NA                1.0111722   0.9894997   1.0328447
6-12 months    ki1135781-COHORTS          GUATEMALA      1                    NA                1.0187837   0.9798025   1.0577648
6-12 months    ki1135781-COHORTS          INDIA          0                    NA                1.0963695   1.0871864   1.1055525
6-12 months    ki1135781-COHORTS          INDIA          1                    NA                1.1081686   1.0865744   1.1297627
6-12 months    ki1135781-COHORTS          PHILIPPINES    0                    NA                1.0659211   1.0525436   1.0792986
6-12 months    ki1135781-COHORTS          PHILIPPINES    1                    NA                1.0705598   1.0368258   1.1042939
6-12 months    ki1148112-LCNI-5           MALAWI         0                    NA                1.2849708   1.2597841   1.3101576
6-12 months    ki1148112-LCNI-5           MALAWI         1                    NA                1.1574451   0.7334482   1.5814421
6-12 months    kiGH5241-JiVitA-3          BANGLADESH     0                    NA                1.1015774   1.0941903   1.1089644
6-12 months    kiGH5241-JiVitA-3          BANGLADESH     1                    NA                1.1171104   1.0956498   1.1385709
6-12 months    kiGH5241-JiVitA-4          BANGLADESH     0                    NA                1.1948586   1.1830963   1.2066208
6-12 months    kiGH5241-JiVitA-4          BANGLADESH     1                    NA                1.2300788   1.2005484   1.2596093
12-24 months   ki0047075b-MAL-ED          BANGLADESH     0                    NA                0.8453479   0.8262615   0.8644344
12-24 months   ki0047075b-MAL-ED          BANGLADESH     1                    NA                0.8672662   0.8374933   0.8970391
12-24 months   ki0047075b-MAL-ED          BRAZIL         0                    NA                0.9783848   0.9433157   1.0134538
12-24 months   ki0047075b-MAL-ED          BRAZIL         1                    NA                0.8297044   0.7225908   0.9368179
12-24 months   ki0047075b-MAL-ED          INDIA          0                    NA                0.8838132   0.8633829   0.9042435
12-24 months   ki0047075b-MAL-ED          INDIA          1                    NA                0.8824879   0.8266378   0.9383380
12-24 months   ki0047075b-MAL-ED          NEPAL          0                    NA                0.8667353   0.8479756   0.8854950
12-24 months   ki0047075b-MAL-ED          NEPAL          1                    NA                0.8655973   0.8145109   0.9166837
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   0                    NA                0.8648900   0.8404311   0.8893489
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1                    NA                0.9423724   0.8139216   1.0708232
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA          0                    NA                0.6644947   0.6098137   0.7191756
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                    NA                0.7722204   0.6611072   0.8833335
12-24 months   ki1000108-IRC              INDIA          0                    NA                0.8469599   0.8228392   0.8710806
12-24 months   ki1000108-IRC              INDIA          1                    NA                0.7916668   0.7571704   0.8261631
12-24 months   ki1017093-NIH-Birth        BANGLADESH     0                    NA                0.7488954   0.7307907   0.7670001
12-24 months   ki1017093-NIH-Birth        BANGLADESH     1                    NA                0.7674168   0.7405275   0.7943062
12-24 months   ki1101329-Keneba           GAMBIA         0                    NA                0.8432671   0.8323688   0.8541654
12-24 months   ki1101329-Keneba           GAMBIA         1                    NA                0.8437931   0.7958253   0.8917608
12-24 months   ki1119695-PROBIT           BELARUS        0                    NA                0.8715643   0.8169404   0.9261882
12-24 months   ki1119695-PROBIT           BELARUS        1                    NA                0.8209201   0.7489237   0.8929164
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE       0                    NA                0.7048080   0.6729890   0.7366271
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE       1                    NA                0.7607551   0.6968344   0.8246757
12-24 months   ki1135781-COHORTS          GUATEMALA      0                    NA                0.7754674   0.7619736   0.7889612
12-24 months   ki1135781-COHORTS          GUATEMALA      1                    NA                0.7913283   0.7634481   0.8192086
12-24 months   ki1135781-COHORTS          INDIA          0                    NA                0.8287817   0.8232493   0.8343140
12-24 months   ki1135781-COHORTS          INDIA          1                    NA                0.8220563   0.8087455   0.8353671
12-24 months   ki1135781-COHORTS          PHILIPPINES    0                    NA                0.7047769   0.6966978   0.7128560
12-24 months   ki1135781-COHORTS          PHILIPPINES    1                    NA                0.7161314   0.6964620   0.7358007
12-24 months   ki1148112-LCNI-5           MALAWI         0                    NA                0.8403117   0.8237456   0.8568778
12-24 months   ki1148112-LCNI-5           MALAWI         1                    NA                0.8224530   0.6194273   1.0254788
12-24 months   kiGH5241-JiVitA-3          BANGLADESH     0                    NA                0.7950657   0.7889128   0.8012187
12-24 months   kiGH5241-JiVitA-3          BANGLADESH     1                    NA                0.8084416   0.7915882   0.8252951
12-24 months   kiGH5241-JiVitA-4          BANGLADESH     0                    NA                0.8480166   0.8417955   0.8542377
12-24 months   kiGH5241-JiVitA-4          BANGLADESH     1                    NA                0.8569207   0.8416384   0.8722030


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
0-3 months     ki0047075b-MAL-ED          BANGLADESH     1                    0                 -0.2420499   -0.4417202   -0.0423795
0-3 months     ki0047075b-MAL-ED          BRAZIL         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL         1                    0                 -0.3426273   -0.7909196    0.1056650
0-3 months     ki0047075b-MAL-ED          INDIA          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA          1                    0                 -0.2811844   -0.4669725   -0.0953962
0-3 months     ki0047075b-MAL-ED          NEPAL          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL          1                    0                 -0.0925779   -0.2818752    0.0967193
0-3 months     ki0047075b-MAL-ED          PERU           0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU           1                    0                  0.3904204    0.0462611    0.7345797
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA   1                    0                 -0.4204542   -0.7369876   -0.1039209
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA          1                    0                 -0.7719550   -1.2419082   -0.3020018
0-3 months     ki1000108-IRC              INDIA          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA          1                    0                 -1.1941752   -1.3853197   -1.0030308
0-3 months     ki1000109-ResPak           PAKISTAN       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-ResPak           PAKISTAN       1                    0                 -0.5078431   -1.3103734    0.2946873
0-3 months     ki1000304b-SAS-CompFeed    INDIA          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA          1                    0                 -0.2097702   -0.3711837   -0.0483568
0-3 months     ki1017093-NIH-Birth        BANGLADESH     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH     1                    0                 -0.2152218   -0.3367873   -0.0936563
0-3 months     ki1101329-Keneba           GAMBIA         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA         1                    0                 -0.9717087   -1.4874751   -0.4559423
0-3 months     ki1114097-CMIN             BRAZIL         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CMIN             BRAZIL         1                    0                 -0.1905988   -1.1403790    0.7591814
0-3 months     ki1119695-PROBIT           BELARUS        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS        1                    0                 -0.5378728   -0.6427535   -0.4329920
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE       1                    0                 -0.9108750   -0.9651167   -0.8566332
0-3 months     ki1135781-COHORTS          GUATEMALA      0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA      1                    0                 -0.1796346   -0.2829693   -0.0763000
0-3 months     ki1135781-COHORTS          INDIA          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA          1                    0                 -0.1541874   -0.1939827   -0.1143921
0-3 months     kiGH5241-JiVitA-3          BANGLADESH     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH     1                    0                 -0.1518385   -0.1867089   -0.1169682
0-3 months     kiGH5241-JiVitA-4          BANGLADESH     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH     1                    0                 -0.1332631   -0.2421436   -0.0243827
3-6 months     ki0047075b-MAL-ED          BANGLADESH     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH     1                    0                  0.0076087   -0.1320652    0.1472826
3-6 months     ki0047075b-MAL-ED          BRAZIL         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL         1                    0                  0.0512386   -0.3058897    0.4083669
3-6 months     ki0047075b-MAL-ED          INDIA          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA          1                    0                  0.1152929   -0.0436686    0.2742544
3-6 months     ki0047075b-MAL-ED          NEPAL          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL          1                    0                 -0.0638779   -0.2062029    0.0784472
3-6 months     ki0047075b-MAL-ED          PERU           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU           1                    0                 -0.2648086   -0.5171101   -0.0125070
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA   1                    0                  0.1998141   -0.1234403    0.5230685
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA          1                    0                  0.0430275   -0.3425968    0.4286519
3-6 months     ki1000108-IRC              INDIA          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA          1                    0                  0.0304530   -0.1096434    0.1705494
3-6 months     ki1000109-ResPak           PAKISTAN       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-ResPak           PAKISTAN       1                    0                 -0.0276342   -0.4537729    0.3985045
3-6 months     ki1000304b-SAS-CompFeed    INDIA          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA          1                    0                 -0.0577238   -0.2050828    0.0896351
3-6 months     ki1017093-NIH-Birth        BANGLADESH     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH     1                    0                  0.0156026   -0.0940448    0.1252500
3-6 months     ki1101329-Keneba           GAMBIA         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA         1                    0                  0.0009544   -0.2297900    0.2316988
3-6 months     ki1113344-GMS-Nepal        NEPAL          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL          1                    0                 -0.2504902   -0.6731188    0.1721384
3-6 months     ki1114097-CMIN             BRAZIL         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             BRAZIL         1                    0                  0.5099788    0.0788855    0.9410721
3-6 months     ki1119695-PROBIT           BELARUS        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS        1                    0                 -0.1209651   -0.1834967   -0.0584335
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE       1                    0                  0.1082333    0.0540390    0.1624276
3-6 months     ki1135781-COHORTS          GUATEMALA      0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA      1                    0                 -0.0602697   -0.1371519    0.0166124
3-6 months     ki1135781-COHORTS          INDIA          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA          1                    0                 -0.0198392   -0.0532507    0.0135723
3-6 months     kiGH5241-JiVitA-3          BANGLADESH     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH     1                    0                  0.0603523    0.0257119    0.0949927
3-6 months     kiGH5241-JiVitA-4          BANGLADESH     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH     1                    0                 -0.0414542   -0.1598595    0.0769511
6-12 months    ki0047075b-MAL-ED          BANGLADESH     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH     1                    0                  0.0406818   -0.0230249    0.1043884
6-12 months    ki0047075b-MAL-ED          BRAZIL         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BRAZIL         1                    0                 -0.1139282   -0.4402187    0.2123623
6-12 months    ki0047075b-MAL-ED          INDIA          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA          1                    0                  0.0905606    0.0176103    0.1635108
6-12 months    ki0047075b-MAL-ED          NEPAL          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          NEPAL          1                    0                  0.0605291   -0.0232010    0.1442592
6-12 months    ki0047075b-MAL-ED          PERU           0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          PERU           1                    0                  0.0058302   -0.1808284    0.1924887
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA   1                    0                  0.0684249   -0.1037961    0.2406459
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA          1                    0                 -0.2452718   -0.4374208   -0.0531228
6-12 months    ki1000108-IRC              INDIA          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA          1                    0                  0.0624656   -0.0033474    0.1282786
6-12 months    ki1000109-ResPak           PAKISTAN       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000109-ResPak           PAKISTAN       1                    0                  0.1032506   -0.1713399    0.3778412
6-12 months    ki1000304b-SAS-CompFeed    INDIA          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA          1                    0                  0.0505067   -0.0194059    0.1204194
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA          1                    0                 -0.0605577   -0.2239978    0.1028824
6-12 months    ki1017093-NIH-Birth        BANGLADESH     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth        BANGLADESH     1                    0                  0.0326387   -0.0200542    0.0853316
6-12 months    ki1101329-Keneba           GAMBIA         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1101329-Keneba           GAMBIA         1                    0                  0.0621691   -0.0595397    0.1838778
6-12 months    ki1113344-GMS-Nepal        NEPAL          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal        NEPAL          1                    0                  0.0553154   -0.1340695    0.2447004
6-12 months    ki1114097-CMIN             BRAZIL         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN             BRAZIL         1                    0                 -0.1305439   -0.3757970    0.1147092
6-12 months    ki1119695-PROBIT           BELARUS        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS        1                    0                 -0.0002090   -0.0687161    0.0682982
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE       1                    0                  0.0284568   -0.0002407    0.0571543
6-12 months    ki1135781-COHORTS          GUATEMALA      0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          GUATEMALA      1                    0                  0.0076115   -0.0369893    0.0522122
6-12 months    ki1135781-COHORTS          INDIA          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          INDIA          1                    0                  0.0117991   -0.0116665    0.0352647
6-12 months    ki1135781-COHORTS          PHILIPPINES    0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          PHILIPPINES    1                    0                  0.0046387   -0.0316510    0.0409284
6-12 months    ki1148112-LCNI-5           MALAWI         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5           MALAWI         1                    0                 -0.1275257   -0.5522700    0.2972187
6-12 months    kiGH5241-JiVitA-3          BANGLADESH     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH     1                    0                  0.0155330   -0.0062910    0.0373570
6-12 months    kiGH5241-JiVitA-4          BANGLADESH     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4          BANGLADESH     1                    0                  0.0352202    0.0030513    0.0673892
12-24 months   ki0047075b-MAL-ED          BANGLADESH     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH     1                    0                  0.0219182   -0.0134473    0.0572837
12-24 months   ki0047075b-MAL-ED          BRAZIL         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BRAZIL         1                    0                 -0.1486804   -0.2613887   -0.0359721
12-24 months   ki0047075b-MAL-ED          INDIA          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA          1                    0                 -0.0013253   -0.0607948    0.0581443
12-24 months   ki0047075b-MAL-ED          NEPAL          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          NEPAL          1                    0                 -0.0011380   -0.0555599    0.0532840
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1                    0                  0.0774824   -0.0532763    0.2082411
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                    0                  0.1077257   -0.0161134    0.2315648
12-24 months   ki1000108-IRC              INDIA          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA          1                    0                 -0.0552932   -0.0973860   -0.0132004
12-24 months   ki1017093-NIH-Birth        BANGLADESH     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093-NIH-Birth        BANGLADESH     1                    0                  0.0185215   -0.0138949    0.0509378
12-24 months   ki1101329-Keneba           GAMBIA         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1101329-Keneba           GAMBIA         1                    0                  0.0005260   -0.0486643    0.0497162
12-24 months   ki1119695-PROBIT           BELARUS        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1119695-PROBIT           BELARUS        1                    0                 -0.0506442   -0.1174860    0.0161976
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE       0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE       1                    0                  0.0559470   -0.0154553    0.1273494
12-24 months   ki1135781-COHORTS          GUATEMALA      0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          GUATEMALA      1                    0                  0.0158610   -0.0151131    0.0468350
12-24 months   ki1135781-COHORTS          INDIA          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          INDIA          1                    0                 -0.0067254   -0.0211401    0.0076894
12-24 months   ki1135781-COHORTS          PHILIPPINES    0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          PHILIPPINES    1                    0                  0.0113544   -0.0099096    0.0326184
12-24 months   ki1148112-LCNI-5           MALAWI         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5           MALAWI         1                    0                 -0.0178586   -0.2215592    0.1858419
12-24 months   kiGH5241-JiVitA-3          BANGLADESH     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH     1                    0                  0.0133759   -0.0044664    0.0312183
12-24 months   kiGH5241-JiVitA-4          BANGLADESH     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4          BANGLADESH     1                    0                  0.0089041   -0.0072099    0.0250182
