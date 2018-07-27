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
##       y_rate_haz
## enwast -0.625814862068966 -0.574909054945055 -0.477976714285714 -0.405556
##      0                  1                  1                  1         1
##      1                  0                  0                  0         0
##       y_rate_haz
## enwast -0.322059176470588 -0.290942347826087 -0.222820011627907
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## enwast -0.219501958762887 -0.208672709302326 -0.20054967032967
##      0                  1                  1                 1
##      1                  0                  0                 0
##       y_rate_haz
## enwast -0.181205872340426 -0.163058597938144 -0.122328032608696
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## enwast -0.115873142857143 -0.0743519333333333 -0.0483902045454545
##      0                  1                   1                   1
##      1                  0                   0                   0
##       y_rate_haz
## enwast -0.026739956043956 -0.0266146124999999 -0.0186224693877551
##      0                  1                   1                   1
##      1                  0                   0                   0
##       y_rate_haz
## enwast -0.00654122580645162 0.0102528202247192 0.065850587628866
##      0                    1                  1                 1
##      1                    0                  0                 0
##       y_rate_haz
## enwast 0.10361732967033 0.189610597402597 0.252861722891566 0.3231774375
##      0                1                 1                 1            1
##      1                0                 0                 0            0
##       y_rate_haz
## enwast 0.343998392857143 1.03333446575342
##      0                 1                1
##      1                 0                0
##       y_rate_haz
## enwast -0.339263192307692 -0.23522248 -0.120065921052632
##      0                  1           1                  1
##      1                  0           0                  0
##       y_rate_haz
## enwast -0.0560307631578947 0.02534725 0.181051785714286 0.2775523875
##      0                   1          1                 1            1
##      1                   0          0                 0            0
##       y_rate_haz
## enwast 0.308277364864865 0.387121636363636
##      0                 1                 1
##      1                 0                 0
##       y_rate_haz
## enwast -0.102854158959538 -0.0952034641909814 -0.0814578290598291
##      0                  1                   1                   1
##      1                  0                   0                   0
##       y_rate_haz
## enwast -0.0641667369863014 -0.0486986535433071 -0.0482939247910864
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## enwast -0.0375321748071979 -0.027264268907563 -0.021668889182058
##      0                   1                  1                  1
##      1                   0                  0                  0
##       y_rate_haz
## enwast 0.00174307736389685 0.0104057131578947 0.010835465648855
##      0                   1                  1                 1
##      1                   0                  0                 0
##       y_rate_haz
## enwast 0.0175174712041885 0.0542870236220472 0.0742824293059126
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## enwast 0.0782371811023622
##      0                  1
##      1                  0
##       y_rate_haz
## enwast -0.13247387965616 -0.10916678630137 -0.092500101369863
##      0                 1                 1                  1
##      1                 0                 0                  0
##       y_rate_haz
## enwast -0.0777129972527473 -0.0740085481283422 -0.0728287183098591
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## enwast -0.0575000630136986 -0.0539243434903047 -0.0523566147540984
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## enwast -0.0486986535433071 -0.0304969551451187 -0.0233974615384615
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## enwast -0.022939969273743 -0.0217860661157025 -0.0112061526315789
##      0                  1                   1                   1
##      1                  0                   0                   0
##       y_rate_haz
## enwast -0.0100000109589041 -0.00919185989010989 0.00166666849315067
##      0                   1                    1                   1
##      1                   0                    0                   0
##       y_rate_haz
## enwast 0.00593083286908078 0.00608334 0.0293797670454546 0.0608334
##      0                   1          1                  1         1
##      1                   0          0                  0         0
##       y_rate_haz
## enwast -0.503323964285714 -0.487400132530121 -0.369345642857143
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## enwast -0.286061821428571 -0.271577678571429 -0.236176729411765
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## enwast -0.127325720930233 0.0896902692307692 0.209770344827586 0.2433336
##      0                  1                  1                 1         1
##      1                  0                  0                 0         0
##       y_rate_haz
## enwast 0.296924928571428 0.391071857142857 0.540343729411765
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_haz
## enwast -0.594663573033708 -0.548169098901099 -0.504559376470588
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## enwast -0.444288876404494 -0.4258338 -0.319685724489796 -0.255350074074074
##      0                  1          1                  1                  1
##      1                  0          0                  0                  0
##       y_rate_haz
## enwast -0.179380538461538 -0.1622224 -0.153961074074074 -0.12356784375
##      0                  1          1                  1              1
##      1                  0          0                  0              0
##       y_rate_haz
## enwast -0.0984069705882353 -0.06995841 -0.0188144536082474
##      0                   1           1                   1
##      1                   0           0                   0
##       y_rate_haz
## enwast -0.0153619696969697 -0.0100274835164835 0 0.00334249450549451
##      0                   1                   1 1                   1
##      1                   0                   0 0                   0
##       y_rate_haz
## enwast 0.026739956043956 0.0489464137931035 0.0559387586206897
##      0                 1                  1                  1
##      1                 0                  0                  0
##       y_rate_haz
## enwast 0.0842872409638555 0.0969323406593407 0.099110595505618
##      0                  1                  1                 1
##      1                  0                  0                 0
##       y_rate_haz
## enwast 0.112976314285714 0.116409592592593 0.1216668 0.123820194690265
##      0                 1                 1         1                 1
##      1                 0                 0         0                 0
##       y_rate_haz
## enwast 0.12673625 0.162001989130435 0.165662383928571 0.183154322580645
##      0          1                 1                 1                 1
##      1          0                 0                 0                 0
##       y_rate_haz
## enwast 0.213919648351648 0.241704133928571 0.248566580645161
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_haz
## enwast 0.262005237623762 0.26210135106383 0.325893214285714
##      0                 1                1                 1
##      1                 0                0                 0
##       y_rate_haz
## enwast 0.36424937037037 0.39605078125 0.4144275375 0.428730628571429
##      0                1             1            1                 1
##      1                0             0            0                 0
##       y_rate_haz
## enwast 0.476632824742268 0.665588964705882
##      0                 1                 1
##      1                 0                 0
##       y_rate_haz
## enwast -0.357646912087912 -0.268382647058824 -0.220604637362637
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## enwast -0.216366216494845 -0.201743418367347 -0.201675945652174
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## enwast -0.187179692307692 -0.185660376623377 -0.156600831683168
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## enwast -0.153619696969697 -0.148979755102041 -0.136564775510204
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## enwast -0.130357285714286 -0.127253540816327 -0.127014791208791
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## enwast -0.11254179 -0.110335088235294 -0.108631071428571
##      0           1                  1                  1
##      1           0                  0                  0
##       y_rate_haz
## enwast -0.106959824175824 -0.102423581632653 -0.0931123469387755
##      0                  1                  1                   1
##      1                  0                  0                   0
##       y_rate_haz
## enwast -0.0931123469387754 -0.0683521348314607 -0.0635073956043956
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## enwast -0.0629311034482759 -0.0574537666666666 -0.0528986086956522
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## enwast -0.052230696969697 -0.0475260937500001 -0.0376289072164948
##      0                  1                   1                   1
##      1                  0                   0                   0
##       y_rate_haz
## enwast -0.0248299591836735 -0.0168981666666667 -0.00334249450549451 0
##      0                   2                   1                    1 1
##      1                   0                   0                    0 0
##       y_rate_haz
## enwast 0.00620748979591837 0.0217262142857143 0.0401099340659341
##      0                   1                  1                  1
##      1                   0                  0                  0
##       y_rate_haz
## enwast 0.0425179677419355 0.0550089255319149 0.0701923846153847
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## enwast 0.0922753820224719 0.0962160918367347 0.111280609756098
##      0                  1                  1                 1
##      1                  0                  0                 0
##       y_rate_haz
## enwast 0.121046051020408 0.127014791208791 0.158008831168831
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_haz
## enwast 0.158290989795918 0.163782230769231 0.173809714285714
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_haz
## enwast 0.181873051546392 0.220365887755102 0.223947131868132 0.3485246875
##      0                 1                 2                 1            1
##      1                 0                 0                 0            0
##       y_rate_haz
## enwast -0.316645646153846 -0.198098507692308 -0.180548326203209
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## enwast -0.158228287878788 -0.0972080103092784 -0.0744238404255319
##      0                  1                   1                   1
##      1                  0                   0                   0
##       y_rate_haz
## enwast -0.0270724554973822 0.07604175
##      0                   1          1
##      1                   0          0
##       y_rate_haz
## enwast -0.286982423728813 -0.282696388235294 -0.256587804469274
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## enwast -0.230578209677419 -0.229428822857143 -0.226134628272251
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## enwast -0.217755920454545 -0.212407122905028 -0.211183305699482
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## enwast -0.198143074285714 -0.194185711864407 -0.183211701754386
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## enwast -0.174522049180328 -0.160823931034483 -0.156428742857143
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## enwast -0.154720786127168 -0.143906967741935 -0.143232079365079
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## enwast -0.141220392857143 -0.136794682539683 -0.136414290909091
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## enwast -0.132383564766839 -0.128992287958115 -0.124283290322581
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## enwast -0.122366034482759 -0.116987307692308 -0.106959824175824
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## enwast -0.0996102456140351 -0.0977116787564767 -0.0950521875
##      0                   1                   1             1
##      1                   0                   0             0
##       y_rate_haz
## enwast -0.0942256467391304 -0.0883613631284916 -0.0869048571428571
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## enwast -0.0845811978609626 -0.0843818129032258 -0.0775936224489796
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## enwast -0.0751471411764706 -0.0748473769633508 -0.0747951639344262
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## enwast -0.072854371257485 -0.0708113650793651 -0.0568224065934066
##      0                  1                   1                   1
##      1                  0                   0                   0
##       y_rate_haz
## enwast -0.0561260535714285 -0.0542568162162162 -0.0504234064171123
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## enwast -0.0465561734693878 -0.046137691011236 -0.0425179677419355
##      0                   1                  1                   1
##      1                   0                  0                   0
##       y_rate_haz
## enwast -0.0405556 -0.0384386868131868 -0.0355940106382979
##      0          1                   1                   1
##      1          0                   0                   0
##       y_rate_haz
## enwast -0.0332422950819672 -0.0156787113402062 -0.0148777336956522
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## enwast -0.00997268852459016 -0.00161790957446809 0.0055303090909091
##      0                    1                    1                  1
##      1                    0                    0                  0
##       y_rate_haz
## enwast 0.00804674603174602 0.00935898461538459 0.0356843966480447
##      0                   1                   1                  1
##      1                   0                   0                  0
##       y_rate_haz
## enwast 0.0527636632653061 0.0827910177514793 0.0950521875
##      0                  1                  1            1
##      1                  0                  0            0
##       y_rate_haz
## enwast 0.0965609523809524 0.100809634285714 0.129432765957447
##      0                  1                 1                 1
##      1                  0                 0                 0
##       y_rate_haz
## enwast 0.145784183431953 0.152983402366864 0.195187379679144
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_haz
## enwast 0.230526568421053 0.2534725
##      0                 1         1
##      1                 0         0
##       y_rate_haz
## enwast -0.260474502762431 -0.235038136363636 -0.228545370165746
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## enwast -0.190913329787234 -0.171409027624309 -0.146266098360656
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## enwast -0.126320721311475 -0.12267508839779 -0.118010147540984
##      0                  1                 1                  2
##      1                  0                 0                  0
##       y_rate_haz
## enwast -0.116987307692308 -0.11531606043956 -0.110302318681319
##      0                  1                 1                  1
##      1                  0                 0                  0
##       y_rate_haz
## enwast -0.109231243093923 -0.104144135869565 -0.101946082417582
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## enwast -0.0895602833333333 -0.0869048571428571 -0.0852336098901099
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## enwast -0.0823435524861878 -0.0818911153846154 -0.067219226519337
##      0                   1                   1                  1
##      1                   0                   0                  0
##       y_rate_haz
## enwast -0.0618361483516483 -0.0589711530612245 -0.0584936538461538
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## enwast -0.0568224065934066 -0.0484661703296703 -0.026739956043956
##      0                   1                   1                  1
##      1                   0                   0                  0
##       y_rate_haz
## enwast -0.0256320505617978 -0.0233974615384615 -0.0155187244897959
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## enwast -0.0118287166666667 -0.00167124725274725 0 0.0118287166666666
##      0                   1                    2 1                  1
##      1                   0                    0 0                  0
##       y_rate_haz
## enwast 0.0167124725274725 0.0168981666666667 0.0196236774193548
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## enwast 0.0239232471910113 0.033424945054945 0.0388657833333333
##      0                  1                 1                  1
##      1                  0                 0                  0
##       y_rate_haz
## enwast 0.0484661703296703 0.0545516902173913 0.0548497868852459
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## enwast 0.0584936538461538 0.066884890052356 0.101389 0.106959824175824
##      0                  1                 1        1                 2
##      1                  0                 0        0                 0
##       y_rate_haz
## enwast 0.122001049450549 0.147069758241758 0.18885093956044
##      0                 1                 1                1
##      1                 0                 0                0
```




# Results Detail

## Results Plots
![](/tmp/42f8bc95-982d-44cf-9efc-8d5405d7facb/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/42f8bc95-982d-44cf-9efc-8d5405d7facb/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH     0                    NA                -0.0371766   -0.0704498   -0.0039035
0-3 months     ki0047075b-MAL-ED          BANGLADESH     1                    NA                -0.1447584   -0.2409222   -0.0485947
0-3 months     ki0047075b-MAL-ED          BRAZIL         0                    NA                 0.1811187    0.1296043    0.2326331
0-3 months     ki0047075b-MAL-ED          BRAZIL         1                    NA                -0.0153700   -0.2693708    0.2386308
0-3 months     ki0047075b-MAL-ED          INDIA          0                    NA                -0.0035150   -0.0470005    0.0399706
0-3 months     ki0047075b-MAL-ED          INDIA          1                    NA                -0.1273273   -0.2076397   -0.0470149
0-3 months     ki0047075b-MAL-ED          NEPAL          0                    NA                 0.0709520    0.0311895    0.1107145
0-3 months     ki0047075b-MAL-ED          NEPAL          1                    NA                 0.0709022   -0.0040744    0.1458788
0-3 months     ki0047075b-MAL-ED          PERU           0                    NA                -0.1726192   -0.2051919   -0.1400466
0-3 months     ki0047075b-MAL-ED          PERU           1                    NA                 0.0071784   -0.2169425    0.2312993
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA   0                    NA                -0.0868180   -0.1320149   -0.0416212
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA   1                    NA                -0.2845896   -0.4450013   -0.1241778
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA          0                    NA                -0.0663545   -0.1814780    0.0487690
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA          1                    NA                -0.4346906   -0.6458849   -0.2234963
0-3 months     ki1000108-IRC              INDIA          0                    NA                -0.1124530   -0.1685019   -0.0564041
0-3 months     ki1000108-IRC              INDIA          1                    NA                -0.7190277   -0.7956066   -0.6424488
0-3 months     ki1000109-ResPak           PAKISTAN       0                    NA                -0.3195109   -0.5016768   -0.1373449
0-3 months     ki1000109-ResPak           PAKISTAN       1                    NA                -0.5837589   -0.9234261   -0.2440917
0-3 months     ki1000304b-SAS-CompFeed    INDIA          0                    NA                 0.0032794   -0.0189301    0.0254890
0-3 months     ki1000304b-SAS-CompFeed    INDIA          1                    NA                -0.0760818   -0.1494033   -0.0027603
0-3 months     ki1017093-NIH-Birth        BANGLADESH     0                    NA                -0.0981390   -0.1290678   -0.0672103
0-3 months     ki1017093-NIH-Birth        BANGLADESH     1                    NA                -0.2062388   -0.2575928   -0.1548849
0-3 months     ki1101329-Keneba           GAMBIA         0                    NA                -0.2767128   -0.2995107   -0.2539149
0-3 months     ki1101329-Keneba           GAMBIA         1                    NA                -0.7143301   -0.9910493   -0.4376109
0-3 months     ki1114097-CMIN             BRAZIL         0                    NA                -0.0988258   -0.1951155   -0.0025360
0-3 months     ki1114097-CMIN             BRAZIL         1                    NA                -0.2352680   -0.6736805    0.2031445
0-3 months     ki1119695-PROBIT           BELARUS        0                    NA                -0.3758196   -0.4263538   -0.3252853
0-3 months     ki1119695-PROBIT           BELARUS        1                    NA                -0.6689968   -0.7216001   -0.6163934
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE       0                    NA                -0.0970250   -0.1074064   -0.0866436
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE       1                    NA                -0.5491565   -0.5744382   -0.5238748
0-3 months     ki1135781-COHORTS          GUATEMALA      0                    NA                -0.5145746   -0.5398548   -0.4892943
0-3 months     ki1135781-COHORTS          GUATEMALA      1                    NA                -0.6459556   -0.6903367   -0.6015744
0-3 months     ki1135781-COHORTS          INDIA          0                    NA                -0.0617694   -0.0692861   -0.0542528
0-3 months     ki1135781-COHORTS          INDIA          1                    NA                -0.1411939   -0.1587520   -0.1236358
0-3 months     kiGH5241-JiVitA-3          BANGLADESH     0                    NA                 0.0477231    0.0425532    0.0528929
0-3 months     kiGH5241-JiVitA-3          BANGLADESH     1                    NA                -0.0163149   -0.0329742    0.0003443
0-3 months     kiGH5241-JiVitA-4          BANGLADESH     0                    NA                 0.0440239    0.0277809    0.0602668
0-3 months     kiGH5241-JiVitA-4          BANGLADESH     1                    NA                -0.0190906   -0.0648046    0.0266234
3-6 months     ki0047075b-MAL-ED          BANGLADESH     0                    NA                -0.0254495   -0.0512800    0.0003809
3-6 months     ki0047075b-MAL-ED          BANGLADESH     1                    NA                -0.0112045   -0.0699740    0.0475650
3-6 months     ki0047075b-MAL-ED          BRAZIL         0                    NA                 0.0490126    0.0062219    0.0918032
3-6 months     ki0047075b-MAL-ED          BRAZIL         1                    NA                 0.0727282   -0.0783856    0.2238420
3-6 months     ki0047075b-MAL-ED          INDIA          0                    NA                -0.0630983   -0.0973674   -0.0288291
3-6 months     ki0047075b-MAL-ED          INDIA          1                    NA                -0.0015974   -0.0667298    0.0635351
3-6 months     ki0047075b-MAL-ED          NEPAL          0                    NA                -0.0322726   -0.0652758    0.0007305
3-6 months     ki0047075b-MAL-ED          NEPAL          1                    NA                -0.0431522   -0.1008286    0.0145242
3-6 months     ki0047075b-MAL-ED          PERU           0                    NA                 0.0247700   -0.0074958    0.0570358
3-6 months     ki0047075b-MAL-ED          PERU           1                    NA                -0.1208014   -0.2477509    0.0061480
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA   0                    NA                -0.0183041   -0.0607793    0.0241710
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA   1                    NA                 0.0846450   -0.0690078    0.2382978
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA          0                    NA                -0.0596157   -0.1674431    0.0482117
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA          1                    NA                -0.0212898   -0.1662756    0.1236960
3-6 months     ki1000108-IRC              INDIA          0                    NA                -0.0646720   -0.1019649   -0.0273792
3-6 months     ki1000108-IRC              INDIA          1                    NA                -0.0375893   -0.0913778    0.0161991
3-6 months     ki1000109-ResPak           PAKISTAN       0                    NA                 0.0677193   -0.0363054    0.1717441
3-6 months     ki1000109-ResPak           PAKISTAN       1                    NA                 0.0792378   -0.0881010    0.2465765
3-6 months     ki1000304b-SAS-CompFeed    INDIA          0                    NA                -0.0246793   -0.0483636   -0.0009950
3-6 months     ki1000304b-SAS-CompFeed    INDIA          1                    NA                -0.0411723   -0.1035784    0.0212338
3-6 months     ki1017093-NIH-Birth        BANGLADESH     0                    NA                -0.0553716   -0.0817547   -0.0289885
3-6 months     ki1017093-NIH-Birth        BANGLADESH     1                    NA                -0.0443348   -0.0871804   -0.0014892
3-6 months     ki1101329-Keneba           GAMBIA         0                    NA                -0.0177785   -0.0365383    0.0009814
3-6 months     ki1101329-Keneba           GAMBIA         1                    NA                 0.0001134   -0.1045645    0.1047912
3-6 months     ki1113344-GMS-Nepal        NEPAL          0                    NA                -0.1718714   -0.2565460   -0.0871967
3-6 months     ki1113344-GMS-Nepal        NEPAL          1                    NA                -0.2699436   -0.4618050   -0.0780823
3-6 months     ki1114097-CMIN             BRAZIL         0                    NA                -0.1497322   -0.2499250   -0.0495394
3-6 months     ki1114097-CMIN             BRAZIL         1                    NA                 0.0613255   -0.1136080    0.2362590
3-6 months     ki1119695-PROBIT           BELARUS        0                    NA                 0.0586770    0.0417121    0.0756419
3-6 months     ki1119695-PROBIT           BELARUS        1                    NA                 0.0005519   -0.0308659    0.0319698
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE       0                    NA                -0.0129498   -0.0235023   -0.0023973
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE       1                    NA                 0.0514370    0.0284770    0.0743970
3-6 months     ki1135781-COHORTS          GUATEMALA      0                    NA                -0.0903944   -0.1088636   -0.0719252
3-6 months     ki1135781-COHORTS          GUATEMALA      1                    NA                -0.1341749   -0.1654824   -0.1028675
3-6 months     ki1135781-COHORTS          INDIA          0                    NA                -0.0597925   -0.0659477   -0.0536374
3-6 months     ki1135781-COHORTS          INDIA          1                    NA                -0.0682288   -0.0823634   -0.0540943
3-6 months     kiGH5241-JiVitA-3          BANGLADESH     0                    NA                -0.0232968   -0.0287166   -0.0178769
3-6 months     kiGH5241-JiVitA-3          BANGLADESH     1                    NA                 0.0065203   -0.0087923    0.0218330
3-6 months     kiGH5241-JiVitA-4          BANGLADESH     0                    NA                -0.0173962   -0.0319691   -0.0028232
3-6 months     kiGH5241-JiVitA-4          BANGLADESH     1                    NA                -0.0344668   -0.0881122    0.0191786
6-12 months    ki0047075b-MAL-ED          BANGLADESH     0                    NA                -0.0863897   -0.0985568   -0.0742226
6-12 months    ki0047075b-MAL-ED          BANGLADESH     1                    NA                -0.0666804   -0.0907168   -0.0426440
6-12 months    ki0047075b-MAL-ED          BRAZIL         0                    NA                 0.0102220   -0.0123403    0.0327843
6-12 months    ki0047075b-MAL-ED          BRAZIL         1                    NA                -0.0363005   -0.1629626    0.0903617
6-12 months    ki0047075b-MAL-ED          INDIA          0                    NA                -0.0806775   -0.0947445   -0.0666105
6-12 months    ki0047075b-MAL-ED          INDIA          1                    NA                -0.0429555   -0.0710655   -0.0148455
6-12 months    ki0047075b-MAL-ED          NEPAL          0                    NA                -0.0611196   -0.0739435   -0.0482956
6-12 months    ki0047075b-MAL-ED          NEPAL          1                    NA                -0.0318774   -0.0604606   -0.0032943
6-12 months    ki0047075b-MAL-ED          PERU           0                    NA                -0.0371969   -0.0517577   -0.0226360
6-12 months    ki0047075b-MAL-ED          PERU           1                    NA                -0.0379621   -0.1228614    0.0469372
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA   0                    NA                -0.0499801   -0.0679831   -0.0319771
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA   1                    NA                -0.0247903   -0.0915368    0.0419562
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA          0                    NA                -0.0503348   -0.0983954   -0.0022742
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA          1                    NA                -0.1454916   -0.2137109   -0.0772723
6-12 months    ki1000108-IRC              INDIA          0                    NA                -0.0389020   -0.0533712   -0.0244327
6-12 months    ki1000108-IRC              INDIA          1                    NA                -0.0108808   -0.0359298    0.0141682
6-12 months    ki1000109-ResPak           PAKISTAN       0                    NA                 0.0005300   -0.0647186    0.0657787
6-12 months    ki1000109-ResPak           PAKISTAN       1                    NA                 0.0479038   -0.0588513    0.1546590
6-12 months    ki1000304b-SAS-CompFeed    INDIA          0                    NA                -0.0922702   -0.0975380   -0.0870024
6-12 months    ki1000304b-SAS-CompFeed    INDIA          1                    NA                -0.0664087   -0.0928140   -0.0400034
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA          0                    NA                -0.1084611   -0.1436597   -0.0732624
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA          1                    NA                -0.1267896   -0.1850339   -0.0685453
6-12 months    ki1017093-NIH-Birth        BANGLADESH     0                    NA                -0.0584229   -0.0693305   -0.0475152
6-12 months    ki1017093-NIH-Birth        BANGLADESH     1                    NA                -0.0445279   -0.0631450   -0.0259109
6-12 months    ki1101329-Keneba           GAMBIA         0                    NA                -0.0625809   -0.0705033   -0.0546585
6-12 months    ki1101329-Keneba           GAMBIA         1                    NA                -0.0283379   -0.0815932    0.0249174
6-12 months    ki1113344-GMS-Nepal        NEPAL          0                    NA                -0.0553607   -0.0889024   -0.0218189
6-12 months    ki1113344-GMS-Nepal        NEPAL          1                    NA                -0.0191074   -0.0820683    0.0438534
6-12 months    ki1114097-CMIN             BRAZIL         0                    NA                -0.0316614   -0.0651933    0.0018705
6-12 months    ki1114097-CMIN             BRAZIL         1                    NA                -0.0950837   -0.1880982   -0.0020692
6-12 months    ki1119695-PROBIT           BELARUS        0                    NA                 0.0430639    0.0275192    0.0586086
6-12 months    ki1119695-PROBIT           BELARUS        1                    NA                 0.0421655    0.0092526    0.0750785
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE       0                    NA                -0.0552868   -0.0605964   -0.0499771
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE       1                    NA                -0.0367828   -0.0476410   -0.0259246
6-12 months    ki1135781-COHORTS          GUATEMALA      0                    NA                -0.1120182   -0.1208459   -0.1031904
6-12 months    ki1135781-COHORTS          GUATEMALA      1                    NA                -0.1136480   -0.1299901   -0.0973059
6-12 months    ki1135781-COHORTS          INDIA          0                    NA                -0.0930096   -0.0968221   -0.0891971
6-12 months    ki1135781-COHORTS          INDIA          1                    NA                -0.0877445   -0.0967991   -0.0786899
6-12 months    ki1135781-COHORTS          PHILIPPINES    0                    NA                -0.1013238   -0.1069392   -0.0957084
6-12 months    ki1135781-COHORTS          PHILIPPINES    1                    NA                -0.1000982   -0.1141117   -0.0860847
6-12 months    ki1148112-LCNI-5           MALAWI         0                    NA                -0.0043534   -0.0149049    0.0061981
6-12 months    ki1148112-LCNI-5           MALAWI         1                    NA                -0.0563802   -0.2390038    0.1262434
6-12 months    kiGH5241-JiVitA-3          BANGLADESH     0                    NA                -0.0805914   -0.0837054   -0.0774773
6-12 months    kiGH5241-JiVitA-3          BANGLADESH     1                    NA                -0.0748308   -0.0837598   -0.0659017
6-12 months    kiGH5241-JiVitA-4          BANGLADESH     0                    NA                -0.0440335   -0.0489958   -0.0390713
6-12 months    kiGH5241-JiVitA-4          BANGLADESH     1                    NA                -0.0271719   -0.0396615   -0.0146823
12-24 months   ki0047075b-MAL-ED          BANGLADESH     0                    NA                -0.0189589   -0.0254292   -0.0124885
12-24 months   ki0047075b-MAL-ED          BANGLADESH     1                    NA                -0.0102486   -0.0210429    0.0005457
12-24 months   ki0047075b-MAL-ED          BRAZIL         0                    NA                -0.0020814   -0.0141998    0.0100369
12-24 months   ki0047075b-MAL-ED          BRAZIL         1                    NA                -0.0414168   -0.0797710   -0.0030627
12-24 months   ki0047075b-MAL-ED          INDIA          0                    NA                -0.0081684   -0.0143499   -0.0019870
12-24 months   ki0047075b-MAL-ED          INDIA          1                    NA                -0.0134922   -0.0284381    0.0014536
12-24 months   ki0047075b-MAL-ED          NEPAL          0                    NA                -0.0275403   -0.0338034   -0.0212772
12-24 months   ki0047075b-MAL-ED          NEPAL          1                    NA                -0.0297242   -0.0446667   -0.0147818
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   0                    NA                -0.0171547   -0.0254877   -0.0088216
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1                    NA                 0.0053409   -0.0360138    0.0466956
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA          0                    NA                -0.0804884   -0.1006118   -0.0603649
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                    NA                -0.0308741   -0.0700152    0.0082669
12-24 months   ki1000108-IRC              INDIA          0                    NA                -0.0267893   -0.0355172   -0.0180614
12-24 months   ki1000108-IRC              INDIA          1                    NA                -0.0442680   -0.0566060   -0.0319299
12-24 months   ki1017093-NIH-Birth        BANGLADESH     0                    NA                -0.0419720   -0.0475537   -0.0363902
12-24 months   ki1017093-NIH-Birth        BANGLADESH     1                    NA                -0.0375892   -0.0470200   -0.0281585
12-24 months   ki1101329-Keneba           GAMBIA         0                    NA                -0.0217479   -0.0256440   -0.0178518
12-24 months   ki1101329-Keneba           GAMBIA         1                    NA                -0.0085307   -0.0239573    0.0068959
12-24 months   ki1119695-PROBIT           BELARUS        0                    NA                -0.0393160   -0.0570672   -0.0215648
12-24 months   ki1119695-PROBIT           BELARUS        1                    NA                -0.0559689   -0.0822075   -0.0297303
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE       0                    NA                -0.0562512   -0.0674814   -0.0450211
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE       1                    NA                -0.0322067   -0.0559646   -0.0084488
12-24 months   ki1135781-COHORTS          GUATEMALA      0                    NA                -0.0309159   -0.0355271   -0.0263047
12-24 months   ki1135781-COHORTS          GUATEMALA      1                    NA                -0.0260793   -0.0357437   -0.0164149
12-24 months   ki1135781-COHORTS          INDIA          0                    NA                -0.0350641   -0.0368845   -0.0332436
12-24 months   ki1135781-COHORTS          INDIA          1                    NA                -0.0383310   -0.0426965   -0.0339655
12-24 months   ki1135781-COHORTS          PHILIPPINES    0                    NA                -0.0583756   -0.0611444   -0.0556069
12-24 months   ki1135781-COHORTS          PHILIPPINES    1                    NA                -0.0577426   -0.0646411   -0.0508442
12-24 months   ki1148112-LCNI-5           MALAWI         0                    NA                -0.0162757   -0.0218983   -0.0106532
12-24 months   ki1148112-LCNI-5           MALAWI         1                    NA                -0.0134601   -0.0884501    0.0615298
12-24 months   kiGH5241-JiVitA-3          BANGLADESH     0                    NA                -0.0224028   -0.0245399   -0.0202657
12-24 months   kiGH5241-JiVitA-3          BANGLADESH     1                    NA                -0.0180096   -0.0237862   -0.0122330
12-24 months   kiGH5241-JiVitA-4          BANGLADESH     0                    NA                -0.0165621   -0.0186690   -0.0144553
12-24 months   kiGH5241-JiVitA-4          BANGLADESH     1                    NA                -0.0127685   -0.0182494   -0.0072877


### Parameter: E(Y)


agecat         studyid                    country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH     NA                   NA                -0.0547896   -0.0871808   -0.0223984
0-3 months     ki0047075b-MAL-ED          BRAZIL         NA                   NA                 0.1743040    0.1235170    0.2250911
0-3 months     ki0047075b-MAL-ED          INDIA          NA                   NA                -0.0241503   -0.0633317    0.0150310
0-3 months     ki0047075b-MAL-ED          NEPAL          NA                   NA                 0.0709457    0.0349275    0.1069640
0-3 months     ki0047075b-MAL-ED          PERU           NA                   NA                -0.1684859   -0.2008901   -0.1360818
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA   NA                   NA                -0.0998293   -0.1438164   -0.0558422
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA          NA                   NA                -0.1105548   -0.2184875   -0.0026221
0-3 months     ki1000108-IRC              INDIA          NA                   NA                -0.2983115   -0.3521715   -0.2444516
0-3 months     ki1000109-ResPak           PAKISTAN       NA                   NA                -0.3626534   -0.5271892   -0.1981176
0-3 months     ki1000304b-SAS-CompFeed    INDIA          NA                   NA                -0.0054300   -0.0244332    0.0135731
0-3 months     ki1017093-NIH-Birth        BANGLADESH     NA                   NA                -0.1284793   -0.1553046   -0.1016540
0-3 months     ki1101329-Keneba           GAMBIA         NA                   NA                -0.2884193   -0.3121298   -0.2647089
0-3 months     ki1114097-CMIN             BRAZIL         NA                   NA                -0.1094576   -0.2049444   -0.0139709
0-3 months     ki1119695-PROBIT           BELARUS        NA                   NA                -0.4379312   -0.4972252   -0.3786373
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE       NA                   NA                -0.1708066   -0.1811433   -0.1604699
0-3 months     ki1135781-COHORTS          GUATEMALA      NA                   NA                -0.5480099   -0.5704068   -0.5256129
0-3 months     ki1135781-COHORTS          INDIA          NA                   NA                -0.0761734   -0.0831445   -0.0692024
0-3 months     kiGH5241-JiVitA-3          BANGLADESH     NA                   NA                 0.0403388    0.0352240    0.0454537
0-3 months     kiGH5241-JiVitA-4          BANGLADESH     NA                   NA                 0.0381043    0.0226354    0.0535733
3-6 months     ki0047075b-MAL-ED          BANGLADESH     NA                   NA                -0.0230866   -0.0467460    0.0005728
3-6 months     ki0047075b-MAL-ED          BRAZIL         NA                   NA                 0.0498750    0.0082703    0.0914797
3-6 months     ki0047075b-MAL-ED          INDIA          NA                   NA                -0.0531788   -0.0839534   -0.0224041
3-6 months     ki0047075b-MAL-ED          NEPAL          NA                   NA                -0.0336490   -0.0633911   -0.0039068
3-6 months     ki0047075b-MAL-ED          PERU           NA                   NA                 0.0218351   -0.0099861    0.0536563
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA   NA                   NA                -0.0112042   -0.0523030    0.0298946
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA          NA                   NA                -0.0519505   -0.1430228    0.0391217
3-6 months     ki1000108-IRC              INDIA          NA                   NA                -0.0554769   -0.0861670   -0.0247867
3-6 months     ki1000109-ResPak           PAKISTAN       NA                   NA                 0.0697927   -0.0206781    0.1602634
3-6 months     ki1000304b-SAS-CompFeed    INDIA          NA                   NA                -0.0264636   -0.0474925   -0.0054347
3-6 months     ki1017093-NIH-Birth        BANGLADESH     NA                   NA                -0.0522689   -0.0747408   -0.0297970
3-6 months     ki1101329-Keneba           GAMBIA         NA                   NA                -0.0169922   -0.0355092    0.0015249
3-6 months     ki1113344-GMS-Nepal        NEPAL          NA                   NA                -0.1871271   -0.2653173   -0.1089368
3-6 months     ki1114097-CMIN             BRAZIL         NA                   NA                -0.1326194   -0.2267074   -0.0385314
3-6 months     ki1119695-PROBIT           BELARUS        NA                   NA                 0.0462242    0.0272277    0.0652208
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE       NA                   NA                -0.0027934   -0.0124109    0.0068242
3-6 months     ki1135781-COHORTS          GUATEMALA      NA                   NA                -0.1004873   -0.1164890   -0.0844856
3-6 months     ki1135781-COHORTS          INDIA          NA                   NA                -0.0612887   -0.0669393   -0.0556380
3-6 months     kiGH5241-JiVitA-3          BANGLADESH     NA                   NA                -0.0201482   -0.0252767   -0.0150197
3-6 months     kiGH5241-JiVitA-4          BANGLADESH     NA                   NA                -0.0188828   -0.0329447   -0.0048209
6-12 months    ki0047075b-MAL-ED          BANGLADESH     NA                   NA                -0.0828597   -0.0937862   -0.0719332
6-12 months    ki0047075b-MAL-ED          BRAZIL         NA                   NA                 0.0083976   -0.0138880    0.0306832
6-12 months    ki0047075b-MAL-ED          INDIA          NA                   NA                -0.0744252   -0.0872169   -0.0616336
6-12 months    ki0047075b-MAL-ED          NEPAL          NA                   NA                -0.0575534   -0.0694319   -0.0456750
6-12 months    ki0047075b-MAL-ED          PERU           NA                   NA                -0.0372142   -0.0515747   -0.0228537
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA   NA                   NA                -0.0481716   -0.0655797   -0.0307635
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA          NA                   NA                -0.0705556   -0.1119837   -0.0291276
6-12 months    ki1000108-IRC              INDIA          NA                   NA                -0.0295370   -0.0423689   -0.0167050
6-12 months    ki1000109-ResPak           PAKISTAN       NA                   NA                 0.0074628   -0.0506190    0.0655446
6-12 months    ki1000304b-SAS-CompFeed    INDIA          NA                   NA                -0.0893025   -0.0950417   -0.0835634
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA          NA                   NA                -0.1116015   -0.1424384   -0.0807645
6-12 months    ki1017093-NIH-Birth        BANGLADESH     NA                   NA                -0.0545396   -0.0639823   -0.0450968
6-12 months    ki1101329-Keneba           GAMBIA         NA                   NA                -0.0612070   -0.0691145   -0.0532994
6-12 months    ki1113344-GMS-Nepal        NEPAL          NA                   NA                -0.0497213   -0.0799413   -0.0195012
6-12 months    ki1114097-CMIN             BRAZIL         NA                   NA                -0.0367644   -0.0687023   -0.0048264
6-12 months    ki1119695-PROBIT           BELARUS        NA                   NA                 0.0428747    0.0263163    0.0594331
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE       NA                   NA                -0.0521912   -0.0569757   -0.0474067
6-12 months    ki1135781-COHORTS          GUATEMALA      NA                   NA                -0.1123887   -0.1201559   -0.1046215
6-12 months    ki1135781-COHORTS          INDIA          NA                   NA                -0.0921095   -0.0956294   -0.0885897
6-12 months    ki1135781-COHORTS          PHILIPPINES    NA                   NA                -0.1011363   -0.1063535   -0.0959191
6-12 months    ki1148112-LCNI-5           MALAWI         NA                   NA                -0.0054578   -0.0165120    0.0055964
6-12 months    kiGH5241-JiVitA-3          BANGLADESH     NA                   NA                -0.0799743   -0.0830323   -0.0769163
6-12 months    kiGH5241-JiVitA-4          BANGLADESH     NA                   NA                -0.0423879   -0.0470041   -0.0377717
12-24 months   ki0047075b-MAL-ED          BANGLADESH     NA                   NA                -0.0173459   -0.0230049   -0.0116868
12-24 months   ki0047075b-MAL-ED          BRAZIL         NA                   NA                -0.0036061   -0.0154226    0.0082105
12-24 months   ki0047075b-MAL-ED          INDIA          NA                   NA                -0.0090607   -0.0147909   -0.0033305
12-24 months   ki0047075b-MAL-ED          NEPAL          NA                   NA                -0.0278116   -0.0336033   -0.0220199
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   NA                   NA                -0.0155144   -0.0238488   -0.0071799
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA          NA                   NA                -0.0695271   -0.0879584   -0.0510958
12-24 months   ki1000108-IRC              INDIA          NA                   NA                -0.0326310   -0.0398049   -0.0254571
12-24 months   ki1017093-NIH-Birth        BANGLADESH     NA                   NA                -0.0407637   -0.0455743   -0.0359531
12-24 months   ki1101329-Keneba           GAMBIA         NA                   NA                -0.0211584   -0.0249471   -0.0173698
12-24 months   ki1119695-PROBIT           BELARUS        NA                   NA                -0.0430123   -0.0602469   -0.0257776
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE       NA                   NA                -0.0532220   -0.0635305   -0.0429135
12-24 months   ki1135781-COHORTS          GUATEMALA      NA                   NA                -0.0300065   -0.0341707   -0.0258424
12-24 months   ki1135781-COHORTS          INDIA          NA                   NA                -0.0355979   -0.0372800   -0.0339157
12-24 months   ki1135781-COHORTS          PHILIPPINES    NA                   NA                -0.0582808   -0.0608517   -0.0557099
12-24 months   ki1148112-LCNI-5           MALAWI         NA                   NA                -0.0162019   -0.0220198   -0.0103840
12-24 months   kiGH5241-JiVitA-3          BANGLADESH     NA                   NA                -0.0219238   -0.0239405   -0.0199070
12-24 months   kiGH5241-JiVitA-4          BANGLADESH     NA                   NA                -0.0162299   -0.0182393   -0.0142204


### Parameter: ATE


agecat         studyid                    country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH     1                    0                 -0.1075818   -0.2093392   -0.0058244
0-3 months     ki0047075b-MAL-ED          BRAZIL         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL         1                    0                 -0.1964887   -0.4556607    0.0626833
0-3 months     ki0047075b-MAL-ED          INDIA          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA          1                    0                 -0.1238123   -0.2151418   -0.0324829
0-3 months     ki0047075b-MAL-ED          NEPAL          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL          1                    0                 -0.0000498   -0.0849176    0.0848180
0-3 months     ki0047075b-MAL-ED          PERU           0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU           1                    0                  0.1797976   -0.0466779    0.4062731
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA   1                    0                 -0.1977715   -0.3644289   -0.0311142
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA          1                    0                 -0.3683361   -0.6088698   -0.1278024
0-3 months     ki1000108-IRC              INDIA          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA          1                    0                 -0.6065747   -0.7014737   -0.5116757
0-3 months     ki1000109-ResPak           PAKISTAN       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-ResPak           PAKISTAN       1                    0                 -0.2642481   -0.6496806    0.1211845
0-3 months     ki1000304b-SAS-CompFeed    INDIA          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA          1                    0                 -0.0793612   -0.1593324    0.0006099
0-3 months     ki1017093-NIH-Birth        BANGLADESH     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH     1                    0                 -0.1080998   -0.1680482   -0.0481514
0-3 months     ki1101329-Keneba           GAMBIA         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA         1                    0                 -0.4376173   -0.7152740   -0.1599605
0-3 months     ki1114097-CMIN             BRAZIL         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CMIN             BRAZIL         1                    0                 -0.1364423   -0.5853044    0.3124199
0-3 months     ki1119695-PROBIT           BELARUS        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS        1                    0                 -0.2931772   -0.3488795   -0.2374749
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE       1                    0                 -0.4521315   -0.4794617   -0.4248013
0-3 months     ki1135781-COHORTS          GUATEMALA      0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA      1                    0                 -0.1313810   -0.1824572   -0.0803048
0-3 months     ki1135781-COHORTS          INDIA          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA          1                    0                 -0.0794245   -0.0985239   -0.0603251
0-3 months     kiGH5241-JiVitA-3          BANGLADESH     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH     1                    0                 -0.0640380   -0.0810642   -0.0470118
0-3 months     kiGH5241-JiVitA-4          BANGLADESH     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH     1                    0                 -0.0631145   -0.1112683   -0.0149607
3-6 months     ki0047075b-MAL-ED          BANGLADESH     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH     1                    0                  0.0142450   -0.0499505    0.0784405
3-6 months     ki0047075b-MAL-ED          BRAZIL         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL         1                    0                  0.0237156   -0.1333399    0.1807711
3-6 months     ki0047075b-MAL-ED          INDIA          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA          1                    0                  0.0615009   -0.0120967    0.1350985
3-6 months     ki0047075b-MAL-ED          NEPAL          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL          1                    0                 -0.0108796   -0.0773308    0.0555717
3-6 months     ki0047075b-MAL-ED          PERU           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU           1                    0                 -0.1455714   -0.2765571   -0.0145858
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA   1                    0                  0.1029491   -0.0564664    0.2623647
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA          1                    0                  0.0383259   -0.1423607    0.2190124
3-6 months     ki1000108-IRC              INDIA          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA          1                    0                  0.0270827   -0.0383693    0.0925347
3-6 months     ki1000109-ResPak           PAKISTAN       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-ResPak           PAKISTAN       1                    0                  0.0115184   -0.1855182    0.2085550
3-6 months     ki1000304b-SAS-CompFeed    INDIA          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA          1                    0                 -0.0164930   -0.0869445    0.0539585
3-6 months     ki1017093-NIH-Birth        BANGLADESH     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH     1                    0                  0.0110367   -0.0392804    0.0613539
3-6 months     ki1101329-Keneba           GAMBIA         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA         1                    0                  0.0178918   -0.0884538    0.1242374
3-6 months     ki1113344-GMS-Nepal        NEPAL          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL          1                    0                 -0.0980723   -0.3077877    0.1116432
3-6 months     ki1114097-CMIN             BRAZIL         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             BRAZIL         1                    0                  0.2110577    0.0094632    0.4126522
3-6 months     ki1119695-PROBIT           BELARUS        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS        1                    0                 -0.0581251   -0.0865936   -0.0296566
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE       1                    0                  0.0643868    0.0391179    0.0896557
3-6 months     ki1135781-COHORTS          GUATEMALA      0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA      1                    0                 -0.0437806   -0.0801298   -0.0074313
3-6 months     ki1135781-COHORTS          INDIA          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA          1                    0                 -0.0084363   -0.0238529    0.0069803
3-6 months     kiGH5241-JiVitA-3          BANGLADESH     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH     1                    0                  0.0298171    0.0136943    0.0459399
3-6 months     kiGH5241-JiVitA-4          BANGLADESH     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH     1                    0                 -0.0170707   -0.0727272    0.0385859
6-12 months    ki0047075b-MAL-ED          BANGLADESH     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH     1                    0                  0.0197093   -0.0072311    0.0466498
6-12 months    ki0047075b-MAL-ED          BRAZIL         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BRAZIL         1                    0                 -0.0465225   -0.1751785    0.0821335
6-12 months    ki0047075b-MAL-ED          INDIA          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA          1                    0                  0.0377220    0.0062887    0.0691553
6-12 months    ki0047075b-MAL-ED          NEPAL          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          NEPAL          1                    0                  0.0292421   -0.0020860    0.0605702
6-12 months    ki0047075b-MAL-ED          PERU           0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          PERU           1                    0                 -0.0007652   -0.0869042    0.0853737
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA   1                    0                  0.0251898   -0.0439420    0.0943215
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA          1                    0                 -0.0951568   -0.1786055   -0.0117080
6-12 months    ki1000108-IRC              INDIA          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA          1                    0                  0.0280212   -0.0009066    0.0569489
6-12 months    ki1000109-ResPak           PAKISTAN       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000109-ResPak           PAKISTAN       1                    0                  0.0473738   -0.0777424    0.1724899
6-12 months    ki1000304b-SAS-CompFeed    INDIA          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA          1                    0                  0.0258615   -0.0017230    0.0534461
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA          1                    0                 -0.0183285   -0.0863825    0.0497254
6-12 months    ki1017093-NIH-Birth        BANGLADESH     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth        BANGLADESH     1                    0                  0.0138949   -0.0076822    0.0354720
6-12 months    ki1101329-Keneba           GAMBIA         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1101329-Keneba           GAMBIA         1                    0                  0.0342430   -0.0195984    0.0880843
6-12 months    ki1113344-GMS-Nepal        NEPAL          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal        NEPAL          1                    0                  0.0362532   -0.0350849    0.1075913
6-12 months    ki1114097-CMIN             BRAZIL         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN             BRAZIL         1                    0                 -0.0634223   -0.1622964    0.0354518
6-12 months    ki1119695-PROBIT           BELARUS        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS        1                    0                 -0.0008984   -0.0303685    0.0285717
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE       1                    0                  0.0185040    0.0064171    0.0305909
6-12 months    ki1135781-COHORTS          GUATEMALA      0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          GUATEMALA      1                    0                 -0.0016298   -0.0202039    0.0169442
6-12 months    ki1135781-COHORTS          INDIA          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          INDIA          1                    0                  0.0052651   -0.0045594    0.0150896
6-12 months    ki1135781-COHORTS          PHILIPPINES    0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          PHILIPPINES    1                    0                  0.0012256   -0.0138711    0.0163224
6-12 months    ki1148112-LCNI-5           MALAWI         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5           MALAWI         1                    0                 -0.0520268   -0.2349550    0.1309014
6-12 months    kiGH5241-JiVitA-3          BANGLADESH     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH     1                    0                  0.0057606   -0.0033130    0.0148343
6-12 months    kiGH5241-JiVitA-4          BANGLADESH     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4          BANGLADESH     1                    0                  0.0168617    0.0032862    0.0304372
12-24 months   ki0047075b-MAL-ED          BANGLADESH     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH     1                    0                  0.0087103   -0.0038747    0.0212953
12-24 months   ki0047075b-MAL-ED          BRAZIL         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BRAZIL         1                    0                 -0.0393354   -0.0795584    0.0008876
12-24 months   ki0047075b-MAL-ED          INDIA          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA          1                    0                 -0.0053238   -0.0214975    0.0108499
12-24 months   ki0047075b-MAL-ED          NEPAL          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          NEPAL          1                    0                 -0.0021840   -0.0183859    0.0140180
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1                    0                  0.0224956   -0.0196904    0.0646815
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                    0                  0.0496142    0.0056031    0.0936254
12-24 months   ki1000108-IRC              INDIA          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA          1                    0                 -0.0174786   -0.0325917   -0.0023656
12-24 months   ki1017093-NIH-Birth        BANGLADESH     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093-NIH-Birth        BANGLADESH     1                    0                  0.0043827   -0.0065760    0.0153415
12-24 months   ki1101329-Keneba           GAMBIA         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1101329-Keneba           GAMBIA         1                    0                  0.0132172   -0.0026938    0.0291281
12-24 months   ki1119695-PROBIT           BELARUS        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1119695-PROBIT           BELARUS        1                    0                 -0.0166529   -0.0424240    0.0091182
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE       0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE       1                    0                  0.0240446   -0.0022338    0.0503230
12-24 months   ki1135781-COHORTS          GUATEMALA      0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          GUATEMALA      1                    0                  0.0048366   -0.0058715    0.0155447
12-24 months   ki1135781-COHORTS          INDIA          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          INDIA          1                    0                 -0.0032669   -0.0079968    0.0014630
12-24 months   ki1135781-COHORTS          PHILIPPINES    0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          PHILIPPINES    1                    0                  0.0006330   -0.0068004    0.0080664
12-24 months   ki1148112-LCNI-5           MALAWI         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5           MALAWI         1                    0                  0.0028156   -0.0723848    0.0780160
12-24 months   kiGH5241-JiVitA-3          BANGLADESH     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH     1                    0                  0.0043932   -0.0017317    0.0105180
12-24 months   kiGH5241-JiVitA-4          BANGLADESH     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4          BANGLADESH     1                    0                  0.0037936   -0.0019509    0.0095381
