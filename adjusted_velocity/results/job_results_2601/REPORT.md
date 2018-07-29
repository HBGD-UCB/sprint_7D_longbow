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
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
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
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
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
![](/tmp/e06d9a70-8d7c-4052-a179-25393e90f827/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/e06d9a70-8d7c-4052-a179-25393e90f827/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH     0                    NA                -0.0367667   -0.0687182   -0.0048153
0-3 months     ki0047075b-MAL-ED          BANGLADESH     1                    NA                -0.1423006   -0.2103458   -0.0742555
0-3 months     ki0047075b-MAL-ED          BRAZIL         0                    NA                 0.1849482    0.1334468    0.2364497
0-3 months     ki0047075b-MAL-ED          BRAZIL         1                    NA                 1.0133711    0.9525787    1.0741634
0-3 months     ki0047075b-MAL-ED          INDIA          0                    NA                 0.0173943   -0.0254540    0.0602426
0-3 months     ki0047075b-MAL-ED          INDIA          1                    NA                 0.2758180    0.2242403    0.3273957
0-3 months     ki0047075b-MAL-ED          NEPAL          0                    NA                 0.0686803    0.0298635    0.1074972
0-3 months     ki0047075b-MAL-ED          NEPAL          1                    NA                 0.0447201    0.0006727    0.0887676
0-3 months     ki0047075b-MAL-ED          PERU           0                    NA                -0.1726192   -0.2051919   -0.1400466
0-3 months     ki0047075b-MAL-ED          PERU           1                    NA                 0.0071784   -0.2169425    0.2312993
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA   0                    NA                -0.0869591   -0.1320578   -0.0418603
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA   1                    NA                -0.2786704   -0.4323669   -0.1249740
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA          0                    NA                -0.0663534   -0.1814682    0.0487613
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA          1                    NA                -0.4348689   -0.6456150   -0.2241229
0-3 months     ki1000108-IRC              INDIA          0                    NA                -0.1115908   -0.1667985   -0.0563831
0-3 months     ki1000108-IRC              INDIA          1                    NA                -0.7283491   -0.7990718   -0.6576264
0-3 months     ki1000109-ResPak           PAKISTAN       0                    NA                -0.3231464   -0.5058671   -0.1404257
0-3 months     ki1000109-ResPak           PAKISTAN       1                    NA                -0.6744977   -0.9579392   -0.3910562
0-3 months     ki1000304b-SAS-CompFeed    INDIA          0                    NA                 0.0024898   -0.0188634    0.0238431
0-3 months     ki1000304b-SAS-CompFeed    INDIA          1                    NA                -0.0960949   -0.1466886   -0.0455012
0-3 months     ki1017093-NIH-Birth        BANGLADESH     0                    NA                -0.1040336   -0.1338609   -0.0742064
0-3 months     ki1017093-NIH-Birth        BANGLADESH     1                    NA                -0.2393146   -0.2837487   -0.1948804
0-3 months     ki1101329-Keneba           GAMBIA         0                    NA                -0.2769420   -0.2996906   -0.2541934
0-3 months     ki1101329-Keneba           GAMBIA         1                    NA                -0.7284395   -0.9323544   -0.5245246
0-3 months     ki1114097-CMIN             BRAZIL         0                    NA                -0.0987628   -0.1948701   -0.0026554
0-3 months     ki1114097-CMIN             BRAZIL         1                    NA                -0.2344997   -0.6544179    0.1854184
0-3 months     ki1119695-PROBIT           BELARUS        0                    NA                -0.3761671   -0.4265980   -0.3257362
0-3 months     ki1119695-PROBIT           BELARUS        1                    NA                -0.6680434   -0.7184555   -0.6176312
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE       0                    NA                -0.0955610   -0.1058250   -0.0852970
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE       1                    NA                -0.5504452   -0.5724359   -0.5284546
0-3 months     ki1135781-COHORTS          GUATEMALA      0                    NA                -0.5164952   -0.5406800   -0.4923104
0-3 months     ki1135781-COHORTS          GUATEMALA      1                    NA                -0.6411488   -0.6763639   -0.6059336
0-3 months     ki1135781-COHORTS          INDIA          0                    NA                -0.0609637   -0.0684023   -0.0535251
0-3 months     ki1135781-COHORTS          INDIA          1                    NA                -0.1409412   -0.1571734   -0.1247090
0-3 months     kiGH5241-JiVitA-3          BANGLADESH     0                    NA                 0.0478018    0.0426624    0.0529412
0-3 months     kiGH5241-JiVitA-3          BANGLADESH     1                    NA                -0.0182803   -0.0330473   -0.0035134
0-3 months     kiGH5241-JiVitA-4          BANGLADESH     0                    NA                 0.0440794    0.0278797    0.0602790
0-3 months     kiGH5241-JiVitA-4          BANGLADESH     1                    NA                -0.0193547   -0.0618871    0.0231776
3-6 months     ki0047075b-MAL-ED          BANGLADESH     0                    NA                -0.0254439   -0.0512723    0.0003845
3-6 months     ki0047075b-MAL-ED          BANGLADESH     1                    NA                -0.0112329   -0.0700068    0.0475409
3-6 months     ki0047075b-MAL-ED          BRAZIL         0                    NA                 0.0493609    0.0065920    0.0921298
3-6 months     ki0047075b-MAL-ED          BRAZIL         1                    NA                 0.0634986   -0.0617373    0.1887346
3-6 months     ki0047075b-MAL-ED          INDIA          0                    NA                -0.0633394   -0.0968166   -0.0298623
3-6 months     ki0047075b-MAL-ED          INDIA          1                    NA                 0.0238127   -0.0213525    0.0689780
3-6 months     ki0047075b-MAL-ED          NEPAL          0                    NA                -0.0288917   -0.0613855    0.0036021
3-6 months     ki0047075b-MAL-ED          NEPAL          1                    NA                 0.0831869    0.0492103    0.1171636
3-6 months     ki0047075b-MAL-ED          PERU           0                    NA                 0.0248250   -0.0074214    0.0570714
3-6 months     ki0047075b-MAL-ED          PERU           1                    NA                -0.1208936   -0.2376823   -0.0041049
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA   0                    NA                -0.0171834   -0.0593681    0.0250012
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA   1                    NA                 0.0689956    0.0096312    0.1283599
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA          0                    NA                -0.0549705   -0.1624510    0.0525100
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA          1                    NA                 0.0264644   -0.1157842    0.1687130
3-6 months     ki1000108-IRC              INDIA          0                    NA                -0.0629866   -0.0998171   -0.0261561
3-6 months     ki1000108-IRC              INDIA          1                    NA                -0.0396474   -0.0918454    0.0125505
3-6 months     ki1000109-ResPak           PAKISTAN       0                    NA                 0.0670642   -0.0364814    0.1706098
3-6 months     ki1000109-ResPak           PAKISTAN       1                    NA                 0.0770040   -0.0943777    0.2483857
3-6 months     ki1000304b-SAS-CompFeed    INDIA          0                    NA                -0.0258820   -0.0490566   -0.0027073
3-6 months     ki1000304b-SAS-CompFeed    INDIA          1                    NA                -0.0747410   -0.1272220   -0.0222599
3-6 months     ki1017093-NIH-Birth        BANGLADESH     0                    NA                -0.0486581   -0.0736906   -0.0236257
3-6 months     ki1017093-NIH-Birth        BANGLADESH     1                    NA                -0.0040413   -0.0393009    0.0312183
3-6 months     ki1101329-Keneba           GAMBIA         0                    NA                -0.0179213   -0.0366303    0.0007878
3-6 months     ki1101329-Keneba           GAMBIA         1                    NA                 0.0056820   -0.0782211    0.0895851
3-6 months     ki1113344-GMS-Nepal        NEPAL          0                    NA                -0.1707828   -0.2516577   -0.0899078
3-6 months     ki1113344-GMS-Nepal        NEPAL          1                    NA                -0.3690588   -0.4727121   -0.2654054
3-6 months     ki1114097-CMIN             BRAZIL         0                    NA                -0.1496784   -0.2498446   -0.0495121
3-6 months     ki1114097-CMIN             BRAZIL         1                    NA                 0.0612865   -0.1137890    0.2363620
3-6 months     ki1119695-PROBIT           BELARUS        0                    NA                 0.0588339    0.0418998    0.0757679
3-6 months     ki1119695-PROBIT           BELARUS        1                    NA                -0.0003411   -0.0310897    0.0304075
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE       0                    NA                -0.0125978   -0.0230856   -0.0021100
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE       1                    NA                 0.0502974    0.0299867    0.0706082
3-6 months     ki1135781-COHORTS          GUATEMALA      0                    NA                -0.0950116   -0.1128943   -0.0771290
3-6 months     ki1135781-COHORTS          GUATEMALA      1                    NA                -0.1619637   -0.1866318   -0.1372956
3-6 months     ki1135781-COHORTS          INDIA          0                    NA                -0.0595627   -0.0656862   -0.0534391
3-6 months     ki1135781-COHORTS          INDIA          1                    NA                -0.0653304   -0.0787206   -0.0519403
3-6 months     kiGH5241-JiVitA-3          BANGLADESH     0                    NA                -0.0231193   -0.0285382   -0.0177004
3-6 months     kiGH5241-JiVitA-3          BANGLADESH     1                    NA                 0.0049050   -0.0098836    0.0196936
3-6 months     kiGH5241-JiVitA-4          BANGLADESH     0                    NA                -0.0171561   -0.0317239   -0.0025883
3-6 months     kiGH5241-JiVitA-4          BANGLADESH     1                    NA                -0.0348112   -0.0844402    0.0148178
6-12 months    ki0047075b-MAL-ED          BANGLADESH     0                    NA                -0.0860140   -0.0980040   -0.0740241
6-12 months    ki0047075b-MAL-ED          BANGLADESH     1                    NA                -0.0521937   -0.0711739   -0.0332135
6-12 months    ki0047075b-MAL-ED          BRAZIL         0                    NA                 0.0104582   -0.0119073    0.0328237
6-12 months    ki0047075b-MAL-ED          BRAZIL         1                    NA                -0.0364494   -0.1208625    0.0479636
6-12 months    ki0047075b-MAL-ED          INDIA          0                    NA                -0.0784171   -0.0920705   -0.0647636
6-12 months    ki0047075b-MAL-ED          INDIA          1                    NA                 0.0054509   -0.0152686    0.0261703
6-12 months    ki0047075b-MAL-ED          NEPAL          0                    NA                -0.0607682   -0.0731728   -0.0483636
6-12 months    ki0047075b-MAL-ED          NEPAL          1                    NA                 0.0344768    0.0221813    0.0467723
6-12 months    ki0047075b-MAL-ED          PERU           0                    NA                -0.0373360   -0.0518807   -0.0227912
6-12 months    ki0047075b-MAL-ED          PERU           1                    NA                -0.1995133   -0.2292642   -0.1697624
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA   0                    NA                -0.0526182   -0.0705415   -0.0346949
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA   1                    NA                -0.2994364   -0.3253117   -0.2735610
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA          0                    NA                -0.0527973   -0.0993410   -0.0062536
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA          1                    NA                -0.1720446   -0.2324614   -0.1116277
6-12 months    ki1000108-IRC              INDIA          0                    NA                -0.0380795   -0.0523148   -0.0238442
6-12 months    ki1000108-IRC              INDIA          1                    NA                -0.0135214   -0.0377943    0.0107516
6-12 months    ki1000109-ResPak           PAKISTAN       0                    NA                 0.0005300   -0.0647186    0.0657787
6-12 months    ki1000109-ResPak           PAKISTAN       1                    NA                 0.0479038   -0.0588513    0.1546590
6-12 months    ki1000304b-SAS-CompFeed    INDIA          0                    NA                -0.0920703   -0.0973625   -0.0867780
6-12 months    ki1000304b-SAS-CompFeed    INDIA          1                    NA                -0.0660354   -0.0883336   -0.0437371
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA          0                    NA                -0.1092170   -0.1435619   -0.0748722
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA          1                    NA                -0.1122098   -0.1592814   -0.0651381
6-12 months    ki1017093-NIH-Birth        BANGLADESH     0                    NA                -0.0567906   -0.0673324   -0.0462489
6-12 months    ki1017093-NIH-Birth        BANGLADESH     1                    NA                -0.0287168   -0.0446530   -0.0127807
6-12 months    ki1101329-Keneba           GAMBIA         0                    NA                -0.0626191   -0.0705157   -0.0547226
6-12 months    ki1101329-Keneba           GAMBIA         1                    NA                -0.0250659   -0.0678258    0.0176941
6-12 months    ki1113344-GMS-Nepal        NEPAL          0                    NA                -0.0547920   -0.0878244   -0.0217597
6-12 months    ki1113344-GMS-Nepal        NEPAL          1                    NA                 0.0360440   -0.0008248    0.0729128
6-12 months    ki1114097-CMIN             BRAZIL         0                    NA                -0.0319000   -0.0653998    0.0015998
6-12 months    ki1114097-CMIN             BRAZIL         1                    NA                -0.0962394   -0.1879520   -0.0045268
6-12 months    ki1119695-PROBIT           BELARUS        0                    NA                 0.0431521    0.0276476    0.0586566
6-12 months    ki1119695-PROBIT           BELARUS        1                    NA                 0.0418158    0.0095958    0.0740358
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE       0                    NA                -0.0552170   -0.0604849   -0.0499491
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE       1                    NA                -0.0410814   -0.0508662   -0.0312967
6-12 months    ki1135781-COHORTS          GUATEMALA      0                    NA                -0.1127621   -0.1213153   -0.1042090
6-12 months    ki1135781-COHORTS          GUATEMALA      1                    NA                -0.1187920   -0.1325882   -0.1049958
6-12 months    ki1135781-COHORTS          INDIA          0                    NA                -0.0930641   -0.0968528   -0.0892755
6-12 months    ki1135781-COHORTS          INDIA          1                    NA                -0.0892238   -0.0976992   -0.0807485
6-12 months    ki1135781-COHORTS          PHILIPPINES    0                    NA                -0.1009804   -0.1065542   -0.0954066
6-12 months    ki1135781-COHORTS          PHILIPPINES    1                    NA                -0.1080290   -0.1207794   -0.0952787
6-12 months    ki1148112-LCNI-5           MALAWI         0                    NA                -0.0040649   -0.0145712    0.0064413
6-12 months    ki1148112-LCNI-5           MALAWI         1                    NA                 0.1635235    0.1333933    0.1936537
6-12 months    kiGH5241-JiVitA-3          BANGLADESH     0                    NA                -0.0805279   -0.0836466   -0.0774091
6-12 months    kiGH5241-JiVitA-3          BANGLADESH     1                    NA                -0.0752884   -0.0840202   -0.0665565
6-12 months    kiGH5241-JiVitA-4          BANGLADESH     0                    NA                -0.0440561   -0.0490145   -0.0390976
6-12 months    kiGH5241-JiVitA-4          BANGLADESH     1                    NA                -0.0256861   -0.0377050   -0.0136672
12-24 months   ki0047075b-MAL-ED          BANGLADESH     0                    NA                -0.0189099   -0.0253663   -0.0124536
12-24 months   ki0047075b-MAL-ED          BANGLADESH     1                    NA                -0.0104668   -0.0213950    0.0004614
12-24 months   ki0047075b-MAL-ED          BRAZIL         0                    NA                -0.0024995   -0.0145136    0.0095147
12-24 months   ki0047075b-MAL-ED          BRAZIL         1                    NA                -0.0343143   -0.0609899   -0.0076386
12-24 months   ki0047075b-MAL-ED          INDIA          0                    NA                -0.0063829   -0.0123962   -0.0003697
12-24 months   ki0047075b-MAL-ED          INDIA          1                    NA                 0.0293790    0.0192641    0.0394939
12-24 months   ki0047075b-MAL-ED          NEPAL          0                    NA                -0.0256723   -0.0318800   -0.0194646
12-24 months   ki0047075b-MAL-ED          NEPAL          1                    NA                 0.0324465    0.0233785    0.0415144
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   0                    NA                -0.0165284   -0.0247423   -0.0083144
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1                    NA                 0.0719625    0.0485516    0.0953734
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA          0                    NA                -0.0804884   -0.1006118   -0.0603649
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                    NA                -0.0308741   -0.0700152    0.0082669
12-24 months   ki1000108-IRC              INDIA          0                    NA                -0.0264360   -0.0349881   -0.0178840
12-24 months   ki1000108-IRC              INDIA          1                    NA                -0.0434872   -0.0549192   -0.0320551
12-24 months   ki1017093-NIH-Birth        BANGLADESH     0                    NA                -0.0436770   -0.0490729   -0.0382811
12-24 months   ki1017093-NIH-Birth        BANGLADESH     1                    NA                -0.0506243   -0.0589288   -0.0423197
12-24 months   ki1101329-Keneba           GAMBIA         0                    NA                -0.0216786   -0.0255648   -0.0177925
12-24 months   ki1101329-Keneba           GAMBIA         1                    NA                -0.0096969   -0.0228407    0.0034468
12-24 months   ki1119695-PROBIT           BELARUS        0                    NA                -0.0394295   -0.0569990   -0.0218600
12-24 months   ki1119695-PROBIT           BELARUS        1                    NA                -0.0557625   -0.0805084   -0.0310166
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE       0                    NA                -0.0555042   -0.0666808   -0.0443276
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE       1                    NA                 0.0069247   -0.0117590    0.0256085
12-24 months   ki1135781-COHORTS          GUATEMALA      0                    NA                -0.0310533   -0.0355456   -0.0265610
12-24 months   ki1135781-COHORTS          GUATEMALA      1                    NA                -0.0203242   -0.0279144   -0.0127340
12-24 months   ki1135781-COHORTS          INDIA          0                    NA                -0.0350383   -0.0368455   -0.0332312
12-24 months   ki1135781-COHORTS          INDIA          1                    NA                -0.0393460   -0.0433352   -0.0353567
12-24 months   ki1135781-COHORTS          PHILIPPINES    0                    NA                -0.0582861   -0.0610283   -0.0555439
12-24 months   ki1135781-COHORTS          PHILIPPINES    1                    NA                -0.0646107   -0.0707269   -0.0584944
12-24 months   ki1148112-LCNI-5           MALAWI         0                    NA                -0.0170017   -0.0226313   -0.0113721
12-24 months   ki1148112-LCNI-5           MALAWI         1                    NA                -0.1936362   -0.2067447   -0.1805277
12-24 months   kiGH5241-JiVitA-3          BANGLADESH     0                    NA                -0.0223837   -0.0245071   -0.0202603
12-24 months   kiGH5241-JiVitA-3          BANGLADESH     1                    NA                -0.0175685   -0.0228990   -0.0122380
12-24 months   kiGH5241-JiVitA-4          BANGLADESH     0                    NA                -0.0165366   -0.0186429   -0.0144302
12-24 months   kiGH5241-JiVitA-4          BANGLADESH     1                    NA                -0.0137795   -0.0189962   -0.0085628


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
0-3 months     ki0047075b-MAL-ED          BANGLADESH     1                    0                 -0.1055339   -0.1778614   -0.0332063
0-3 months     ki0047075b-MAL-ED          BRAZIL         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL         1                    0                  0.8284228    0.7473999    0.9094458
0-3 months     ki0047075b-MAL-ED          INDIA          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA          1                    0                  0.2584237    0.1893701    0.3274772
0-3 months     ki0047075b-MAL-ED          NEPAL          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL          1                    0                 -0.0239602   -0.0806433    0.0327229
0-3 months     ki0047075b-MAL-ED          PERU           0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU           1                    0                  0.1797976   -0.0466779    0.4062731
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA   1                    0                 -0.1917114   -0.3515834   -0.0318394
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA          1                    0                 -0.3685155   -0.6086408   -0.1283901
0-3 months     ki1000108-IRC              INDIA          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA          1                    0                 -0.6167583   -0.7062920   -0.5272246
0-3 months     ki1000109-ResPak           PAKISTAN       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-ResPak           PAKISTAN       1                    0                 -0.3513513   -0.6911369   -0.0115656
0-3 months     ki1000304b-SAS-CompFeed    INDIA          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA          1                    0                 -0.0985847   -0.1530498   -0.0441196
0-3 months     ki1017093-NIH-Birth        BANGLADESH     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH     1                    0                 -0.1352809   -0.1868813   -0.0836805
0-3 months     ki1101329-Keneba           GAMBIA         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA         1                    0                 -0.4514975   -0.6565018   -0.2464932
0-3 months     ki1114097-CMIN             BRAZIL         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CMIN             BRAZIL         1                    0                 -0.1357370   -0.5685159    0.2970419
0-3 months     ki1119695-PROBIT           BELARUS        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS        1                    0                 -0.2918763   -0.3446626   -0.2390899
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE       1                    0                 -0.4548842   -0.4790475   -0.4307209
0-3 months     ki1135781-COHORTS          GUATEMALA      0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA      1                    0                 -0.1246536   -0.1661810   -0.0831262
0-3 months     ki1135781-COHORTS          INDIA          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA          1                    0                 -0.0799775   -0.0977530   -0.0622019
0-3 months     kiGH5241-JiVitA-3          BANGLADESH     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH     1                    0                 -0.0660821   -0.0812502   -0.0509140
0-3 months     kiGH5241-JiVitA-4          BANGLADESH     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH     1                    0                 -0.0634341   -0.1086255   -0.0182427
3-6 months     ki0047075b-MAL-ED          BANGLADESH     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH     1                    0                  0.0142110   -0.0499843    0.0784062
3-6 months     ki0047075b-MAL-ED          BRAZIL         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL         1                    0                  0.0141378   -0.1169800    0.1452555
3-6 months     ki0047075b-MAL-ED          INDIA          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA          1                    0                  0.0871522    0.0319659    0.1423384
3-6 months     ki0047075b-MAL-ED          NEPAL          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL          1                    0                  0.1120786    0.0651085    0.1590488
3-6 months     ki0047075b-MAL-ED          PERU           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU           1                    0                 -0.1457186   -0.2664506   -0.0249867
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA   1                    0                  0.0861790    0.0142939    0.1580640
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA          1                    0                  0.0814349   -0.0968607    0.2597305
3-6 months     ki1000108-IRC              INDIA          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA          1                    0                  0.0233392   -0.0403168    0.0869951
3-6 months     ki1000109-ResPak           PAKISTAN       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-ResPak           PAKISTAN       1                    0                  0.0099398   -0.1923987    0.2122782
3-6 months     ki1000304b-SAS-CompFeed    INDIA          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA          1                    0                 -0.0488590   -0.1104267    0.0127087
3-6 months     ki1017093-NIH-Birth        BANGLADESH     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH     1                    0                  0.0446168    0.0035357    0.0856980
3-6 months     ki1101329-Keneba           GAMBIA         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA         1                    0                  0.0236032   -0.0619330    0.1091395
3-6 months     ki1113344-GMS-Nepal        NEPAL          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL          1                    0                 -0.1982760   -0.3250166   -0.0715354
3-6 months     ki1114097-CMIN             BRAZIL         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             BRAZIL         1                    0                  0.2109649    0.0090998    0.4128299
3-6 months     ki1119695-PROBIT           BELARUS        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS        1                    0                 -0.0591750   -0.0870634   -0.0312866
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE       1                    0                  0.0628952    0.0401563    0.0856341
3-6 months     ki1135781-COHORTS          GUATEMALA      0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA      1                    0                 -0.0669520   -0.0971063   -0.0367977
3-6 months     ki1135781-COHORTS          INDIA          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA          1                    0                 -0.0057678   -0.0204126    0.0088771
3-6 months     kiGH5241-JiVitA-3          BANGLADESH     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH     1                    0                  0.0280243    0.0124248    0.0436237
3-6 months     kiGH5241-JiVitA-4          BANGLADESH     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH     1                    0                 -0.0176551   -0.0693223    0.0340121
6-12 months    ki0047075b-MAL-ED          BANGLADESH     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH     1                    0                  0.0338203    0.0114044    0.0562362
6-12 months    ki0047075b-MAL-ED          BRAZIL         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BRAZIL         1                    0                 -0.0469076   -0.1318129    0.0379977
6-12 months    ki0047075b-MAL-ED          INDIA          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA          1                    0                  0.0838679    0.0595337    0.1082021
6-12 months    ki0047075b-MAL-ED          NEPAL          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          NEPAL          1                    0                  0.0952450    0.0781990    0.1122910
6-12 months    ki0047075b-MAL-ED          PERU           0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          PERU           1                    0                 -0.1621773   -0.1950552   -0.1292995
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA   1                    0                 -0.2468182   -0.2787317   -0.2149046
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA          1                    0                 -0.1192472   -0.1955757   -0.0429188
6-12 months    ki1000108-IRC              INDIA          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA          1                    0                  0.0245582   -0.0034195    0.0525359
6-12 months    ki1000109-ResPak           PAKISTAN       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000109-ResPak           PAKISTAN       1                    0                  0.0473738   -0.0777424    0.1724899
6-12 months    ki1000304b-SAS-CompFeed    INDIA          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA          1                    0                  0.0260349    0.0025880    0.0494818
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA          1                    0                 -0.0029927   -0.0589739    0.0529884
6-12 months    ki1017093-NIH-Birth        BANGLADESH     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth        BANGLADESH     1                    0                  0.0280738    0.0090247    0.0471229
6-12 months    ki1101329-Keneba           GAMBIA         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1101329-Keneba           GAMBIA         1                    0                  0.0375533   -0.0057981    0.0809046
6-12 months    ki1113344-GMS-Nepal        NEPAL          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal        NEPAL          1                    0                  0.0908360    0.0419451    0.1397270
6-12 months    ki1114097-CMIN             BRAZIL         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN             BRAZIL         1                    0                 -0.0643394   -0.1622867    0.0336078
6-12 months    ki1119695-PROBIT           BELARUS        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS        1                    0                 -0.0013363   -0.0299912    0.0273186
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE       1                    0                  0.0141355    0.0031083    0.0251628
6-12 months    ki1135781-COHORTS          GUATEMALA      0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          GUATEMALA      1                    0                 -0.0060299   -0.0215746    0.0095148
6-12 months    ki1135781-COHORTS          INDIA          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          INDIA          1                    0                  0.0038403   -0.0053725    0.0130532
6-12 months    ki1135781-COHORTS          PHILIPPINES    0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          PHILIPPINES    1                    0                 -0.0070486   -0.0208351    0.0067378
6-12 months    ki1148112-LCNI-5           MALAWI         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5           MALAWI         1                    0                  0.1675884    0.1364198    0.1987570
6-12 months    kiGH5241-JiVitA-3          BANGLADESH     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH     1                    0                  0.0052395   -0.0036455    0.0141245
6-12 months    kiGH5241-JiVitA-4          BANGLADESH     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4          BANGLADESH     1                    0                  0.0183699    0.0051894    0.0315504
12-24 months   ki0047075b-MAL-ED          BANGLADESH     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH     1                    0                  0.0084431   -0.0042457    0.0211320
12-24 months   ki0047075b-MAL-ED          BRAZIL         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BRAZIL         1                    0                 -0.0318148   -0.0598968   -0.0037328
12-24 months   ki0047075b-MAL-ED          INDIA          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA          1                    0                  0.0357620    0.0243565    0.0471674
12-24 months   ki0047075b-MAL-ED          NEPAL          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          NEPAL          1                    0                  0.0581188    0.0468791    0.0693584
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1                    0                  0.0884909    0.0644125    0.1125693
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                    0                  0.0496142    0.0056031    0.0936254
12-24 months   ki1000108-IRC              INDIA          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA          1                    0                 -0.0170512   -0.0313249   -0.0027774
12-24 months   ki1017093-NIH-Birth        BANGLADESH     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093-NIH-Birth        BANGLADESH     1                    0                 -0.0069473   -0.0165362    0.0026417
12-24 months   ki1101329-Keneba           GAMBIA         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1101329-Keneba           GAMBIA         1                    0                  0.0119817   -0.0016241    0.0255875
12-24 months   ki1119695-PROBIT           BELARUS        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1119695-PROBIT           BELARUS        1                    0                 -0.0163330   -0.0396341    0.0069681
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE       0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE       1                    0                  0.0624289    0.0406434    0.0842144
12-24 months   ki1135781-COHORTS          GUATEMALA      0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          GUATEMALA      1                    0                  0.0107291    0.0022541    0.0192041
12-24 months   ki1135781-COHORTS          INDIA          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          INDIA          1                    0                 -0.0043076   -0.0086516    0.0000364
12-24 months   ki1135781-COHORTS          PHILIPPINES    0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          PHILIPPINES    1                    0                 -0.0063246   -0.0129441    0.0002950
12-24 months   ki1148112-LCNI-5           MALAWI         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5           MALAWI         1                    0                 -0.1766345   -0.1910401   -0.1622289
12-24 months   kiGH5241-JiVitA-3          BANGLADESH     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH     1                    0                  0.0048152   -0.0008280    0.0104584
12-24 months   kiGH5241-JiVitA-4          BANGLADESH     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4          BANGLADESH     1                    0                  0.0027571   -0.0027298    0.0082439
