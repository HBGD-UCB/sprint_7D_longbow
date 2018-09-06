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
        value: TRUE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
  output_directory:
    value: ''
editor_options: 
  chunk_output_type: console
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
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0            193     232
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1             39     232
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0            167     173
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1              6     173
0-3 months     ki0047075b-MAL-ED          INDIA                          0            162     198
0-3 months     ki0047075b-MAL-ED          INDIA                          1             36     198
0-3 months     ki0047075b-MAL-ED          NEPAL                          0            150     171
0-3 months     ki0047075b-MAL-ED          NEPAL                          1             21     171
0-3 months     ki0047075b-MAL-ED          PERU                           0            258     264
0-3 months     ki0047075b-MAL-ED          PERU                           1              6     264
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0            213     228
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1             15     228
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0            217     220
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              3     220
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0             70      82
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1             12      82
0-3 months     ki1000108-IRC              INDIA                          0            249     359
0-3 months     ki1000108-IRC              INDIA                          1            110     359
0-3 months     ki1000109-EE               PAKISTAN                       0            460     512
0-3 months     ki1000109-EE               PAKISTAN                       1             52     512
0-3 months     ki1000109-ResPak           PAKISTAN                       0             59      71
0-3 months     ki1000109-ResPak           PAKISTAN                       1             12      71
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          0            941    1057
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1            116    1057
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     0            389     543
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     1            154     543
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0            492     626
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1            134     626
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0            522     700
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1            178     700
0-3 months     ki1101329-Keneba           GAMBIA                         0           1237    1271
0-3 months     ki1101329-Keneba           GAMBIA                         1             34    1271
0-3 months     ki1114097-CMIN             BANGLADESH                     0             34      37
0-3 months     ki1114097-CMIN             BANGLADESH                     1              3      37
0-3 months     ki1114097-CMIN             BRAZIL                         0             71      77
0-3 months     ki1114097-CMIN             BRAZIL                         1              6      77
0-3 months     ki1114097-CMIN             GUINEA-BISSAU                  0             19      21
0-3 months     ki1114097-CMIN             GUINEA-BISSAU                  1              2      21
0-3 months     ki1114097-CMIN             PERU                           0             84      93
0-3 months     ki1114097-CMIN             PERU                           1              9      93
0-3 months     ki1114097-CONTENT          PERU                           0             29      29
0-3 months     ki1114097-CONTENT          PERU                           1              0      29
0-3 months     ki1119695-PROBIT           BELARUS                        0          10041   12739
0-3 months     ki1119695-PROBIT           BELARUS                        1           2698   12739
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       0           6251    7470
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1           1219    7470
0-3 months     ki1135781-COHORTS          GUATEMALA                      0            498     668
0-3 months     ki1135781-COHORTS          GUATEMALA                      1            170     668
0-3 months     ki1135781-COHORTS          INDIA                          0           4979    6082
0-3 months     ki1135781-COHORTS          INDIA                          1           1103    6082
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0          29128   32924
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1           3796   32924
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0           2802    3092
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1            290    3092
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0            182     219
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1             37     219
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0            194     201
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1              7     201
3-6 months     ki0047075b-MAL-ED          INDIA                          0            188     228
3-6 months     ki0047075b-MAL-ED          INDIA                          1             40     228
3-6 months     ki0047075b-MAL-ED          NEPAL                          0            203     229
3-6 months     ki0047075b-MAL-ED          NEPAL                          1             26     229
3-6 months     ki0047075b-MAL-ED          PERU                           0            255     260
3-6 months     ki0047075b-MAL-ED          PERU                           1              5     260
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0            224     240
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1             16     240
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0            228     231
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              3     231
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0            219     301
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1             82     301
3-6 months     ki1000108-IRC              INDIA                          0            249     377
3-6 months     ki1000108-IRC              INDIA                          1            128     377
3-6 months     ki1000109-EE               PAKISTAN                       0            528     580
3-6 months     ki1000109-EE               PAKISTAN                       1             52     580
3-6 months     ki1000109-ResPak           PAKISTAN                       0            122     151
3-6 months     ki1000109-ResPak           PAKISTAN                       1             29     151
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          0            916    1027
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1            111    1027
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     0            359     502
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     1            143     502
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0            448     567
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1            119     567
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0            501     675
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1            174     675
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0           1555    1653
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             98    1653
3-6 months     ki1101329-Keneba           GAMBIA                         0           1328    1389
3-6 months     ki1101329-Keneba           GAMBIA                         1             61    1389
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0            774     938
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1            164     938
3-6 months     ki1114097-CMIN             BANGLADESH                     0            166     177
3-6 months     ki1114097-CMIN             BANGLADESH                     1             11     177
3-6 months     ki1114097-CMIN             BRAZIL                         0             72      78
3-6 months     ki1114097-CMIN             BRAZIL                         1              6      78
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                  0            131     132
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                  1              1     132
3-6 months     ki1114097-CMIN             PERU                           0            385     407
3-6 months     ki1114097-CMIN             PERU                           1             22     407
3-6 months     ki1114097-CONTENT          PERU                           0            213     214
3-6 months     ki1114097-CONTENT          PERU                           1              1     214
3-6 months     ki1119695-PROBIT           BELARUS                        0          10725   13304
3-6 months     ki1119695-PROBIT           BELARUS                        1           2579   13304
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       0           4692    5560
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1            868    5560
3-6 months     ki1135781-COHORTS          GUATEMALA                      0            600     752
3-6 months     ki1135781-COHORTS          GUATEMALA                      1            152     752
3-6 months     ki1135781-COHORTS          INDIA                          0           5085    6181
3-6 months     ki1135781-COHORTS          INDIA                          1           1096    6181
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0          19052   21308
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1           2256   21308
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0           3014    3306
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1            292    3306
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     0            170     208
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1             38     208
6-12 months    ki0047075b-MAL-ED          BRAZIL                         0            180     187
6-12 months    ki0047075b-MAL-ED          BRAZIL                         1              7     187
6-12 months    ki0047075b-MAL-ED          INDIA                          0            183     223
6-12 months    ki0047075b-MAL-ED          INDIA                          1             40     223
6-12 months    ki0047075b-MAL-ED          NEPAL                          0            201     227
6-12 months    ki0047075b-MAL-ED          NEPAL                          1             26     227
6-12 months    ki0047075b-MAL-ED          PERU                           0            225     230
6-12 months    ki0047075b-MAL-ED          PERU                           1              5     230
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0            215     231
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1             16     231
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0            211     214
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              3     214
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0            232     317
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1             85     317
6-12 months    ki1000108-IRC              INDIA                          0            253     380
6-12 months    ki1000108-IRC              INDIA                          1            127     380
6-12 months    ki1000109-EE               PAKISTAN                       0              6       8
6-12 months    ki1000109-EE               PAKISTAN                       1              2       8
6-12 months    ki1000109-ResPak           PAKISTAN                       0            103     132
6-12 months    ki1000109-ResPak           PAKISTAN                       1             29     132
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          0            919    1038
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          1            119    1038
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0            273     332
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1             59     332
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     0            330     461
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     1            131     461
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0            429     538
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1            109     538
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0            483     656
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1            173     656
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0           1013    1077
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             64    1077
6-12 months    ki1101329-Keneba           GAMBIA                         0           1245    1297
6-12 months    ki1101329-Keneba           GAMBIA                         1             52    1297
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      0            178     181
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1              3     181
6-12 months    ki1113344-GMS-Nepal        NEPAL                          0            788     946
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1            158     946
6-12 months    ki1114097-CMIN             BANGLADESH                     0            150     159
6-12 months    ki1114097-CMIN             BANGLADESH                     1              9     159
6-12 months    ki1114097-CMIN             BRAZIL                         0             83      90
6-12 months    ki1114097-CMIN             BRAZIL                         1              7      90
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  0            173     176
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  1              3     176
6-12 months    ki1114097-CMIN             PERU                           0            339     360
6-12 months    ki1114097-CMIN             PERU                           1             21     360
6-12 months    ki1114097-CONTENT          PERU                           0            212     213
6-12 months    ki1114097-CONTENT          PERU                           1              1     213
6-12 months    ki1119695-PROBIT           BELARUS                        0          10429   12891
6-12 months    ki1119695-PROBIT           BELARUS                        1           2462   12891
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       0           3598    4313
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1            715    4313
6-12 months    ki1135781-COHORTS          GUATEMALA                      0            649     809
6-12 months    ki1135781-COHORTS          GUATEMALA                      1            160     809
6-12 months    ki1135781-COHORTS          INDIA                          0           4161    5010
6-12 months    ki1135781-COHORTS          INDIA                          1            849    5010
6-12 months    ki1135781-COHORTS          PHILIPPINES                    0           1964    2318
6-12 months    ki1135781-COHORTS          PHILIPPINES                    1            354    2318
6-12 months    ki1148112-LCNI-5           MALAWI                         0            425     434
6-12 months    ki1148112-LCNI-5           MALAWI                         1              9     434
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     0          14805   16583
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1           1778   16583
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0           5081    5626
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1            545    5626
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     0            158     195
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1             37     195
12-24 months   ki0047075b-MAL-ED          BRAZIL                         0            153     159
12-24 months   ki0047075b-MAL-ED          BRAZIL                         1              6     159
12-24 months   ki0047075b-MAL-ED          INDIA                          0            182     222
12-24 months   ki0047075b-MAL-ED          INDIA                          1             40     222
12-24 months   ki0047075b-MAL-ED          NEPAL                          0            197     223
12-24 months   ki0047075b-MAL-ED          NEPAL                          1             26     223
12-24 months   ki0047075b-MAL-ED          PERU                           0            183     187
12-24 months   ki0047075b-MAL-ED          PERU                           1              4     187
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0            213     229
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1             16     229
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0            195     198
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              3     198
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0            232     317
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1             85     317
12-24 months   ki1000108-IRC              INDIA                          0            251     377
12-24 months   ki1000108-IRC              INDIA                          1            126     377
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     0            289     402
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     1            113     402
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0            356     451
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1             95     451
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0            348     481
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            133     481
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              2       2
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              0       2
12-24 months   ki1101329-Keneba           GAMBIA                         0           1115    1167
12-24 months   ki1101329-Keneba           GAMBIA                         1             52    1167
12-24 months   ki1113344-GMS-Nepal        NEPAL                          0            620     730
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1            110     730
12-24 months   ki1114097-CMIN             BANGLADESH                     0            125     135
12-24 months   ki1114097-CMIN             BANGLADESH                     1             10     135
12-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0             48      50
12-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1              2      50
12-24 months   ki1114097-CMIN             PERU                           0            191     199
12-24 months   ki1114097-CMIN             PERU                           1              8     199
12-24 months   ki1114097-CONTENT          PERU                           0             38      38
12-24 months   ki1114097-CONTENT          PERU                           1              0      38
12-24 months   ki1119695-PROBIT           BELARUS                        0           1970    2532
12-24 months   ki1119695-PROBIT           BELARUS                        1            562    2532
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0            228     261
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1             33     261
12-24 months   ki1135781-COHORTS          GUATEMALA                      0            696     833
12-24 months   ki1135781-COHORTS          GUATEMALA                      1            137     833
12-24 months   ki1135781-COHORTS          INDIA                          0           3533    4217
12-24 months   ki1135781-COHORTS          INDIA                          1            684    4217
12-24 months   ki1135781-COHORTS          PHILIPPINES                    0           1846    2171
12-24 months   ki1135781-COHORTS          PHILIPPINES                    1            325    2171
12-24 months   ki1148112-LCNI-5           MALAWI                         0            302     310
12-24 months   ki1148112-LCNI-5           MALAWI                         1              8     310
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0           6886    7738
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1            852    7738
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0           5867    6432
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1            565    6432


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
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: BANGLADESH
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
* agecat: 12-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 12-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
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
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 3-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
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
* agecat: 6-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-12 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-12 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-12 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-12 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-12 months, studyid: ki1114097-CMIN, country: BANGLADESH
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

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 3-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-12 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-12 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6-12 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 12-24 months, studyid: ki1114097-CONTENT, country: PERU

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/f031f69b-badd-4aaa-87fd-15a714a7cbc5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/f031f69b-badd-4aaa-87fd-15a714a7cbc5/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                3.5822821   3.5155157   3.6490485
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                3.3373198   3.1589236   3.5157159
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0                    NA                4.0363982   3.9325314   4.1402649
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                3.6937709   3.2576772   4.1298646
0-3 months     ki0047075b-MAL-ED          INDIA                          0                    NA                3.6157708   3.5288943   3.7026472
0-3 months     ki0047075b-MAL-ED          INDIA                          1                    NA                3.3236604   3.1708182   3.4765026
0-3 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                3.8221494   3.7381568   3.9061421
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                3.7401052   3.5711763   3.9090340
0-3 months     ki0047075b-MAL-ED          PERU                           0                    NA                3.2972340   3.2332942   3.3611738
0-3 months     ki0047075b-MAL-ED          PERU                           1                    NA                3.6845815   3.3465404   4.0226227
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                3.4792075   3.3877350   3.5706800
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                3.0587533   2.7557250   3.3617816
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                3.5733281   3.3459168   3.8007393
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                2.8235016   2.1534736   3.4935296
0-3 months     ki1000108-IRC              INDIA                          0                    NA                3.4700830   3.3538963   3.5862698
0-3 months     ki1000108-IRC              INDIA                          1                    NA                2.2759078   2.1241289   2.4276867
0-3 months     ki1000109-EE               PAKISTAN                       0                    NA                2.6386814   2.5554311   2.7219317
0-3 months     ki1000109-EE               PAKISTAN                       1                    NA                1.9386468   1.6185677   2.2587259
0-3 months     ki1000109-ResPak           PAKISTAN                       0                    NA                3.0187532   2.7100698   3.3274365
0-3 months     ki1000109-ResPak           PAKISTAN                       1                    NA                2.4493007   1.7607799   3.1378215
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          0                    NA                3.6051976   3.5676550   3.6427402
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                3.3954274   3.2371128   3.5537420
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     0                    NA                3.3607960   3.2976969   3.4238951
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     1                    NA                3.1334900   3.0300935   3.2368865
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                3.4998341   3.4552271   3.5444411
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                3.4035686   3.3205696   3.4865676
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                3.3439898   3.2997194   3.3882603
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                3.1768643   3.0998433   3.2538854
0-3 months     ki1101329-Keneba           GAMBIA                         0                    NA                3.1648444   3.1195265   3.2101624
0-3 months     ki1101329-Keneba           GAMBIA                         1                    NA                2.1931357   1.6793641   2.7069074
0-3 months     ki1114097-CMIN             BRAZIL                         0                    NA                3.4927873   3.2983534   3.6872213
0-3 months     ki1114097-CMIN             BRAZIL                         1                    NA                3.3021885   2.3725231   4.2318540
0-3 months     ki1114097-CMIN             PERU                           0                    NA                3.3146767   3.1682443   3.4611091
0-3 months     ki1114097-CMIN             PERU                           1                    NA                3.3237111   3.2057849   3.4416373
0-3 months     ki1119695-PROBIT           BELARUS                        0                    NA                2.9484646   2.8489360   3.0479932
0-3 months     ki1119695-PROBIT           BELARUS                        1                    NA                2.4111146   2.3122766   2.5099526
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                3.4729075   3.4516964   3.4941186
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                2.5620326   2.5121101   2.6119551
0-3 months     ki1135781-COHORTS          GUATEMALA                      0                    NA                2.6510281   2.6003802   2.7016761
0-3 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                2.4713935   2.3813222   2.5614647
0-3 months     ki1135781-COHORTS          INDIA                          0                    NA                3.5590071   3.5434956   3.5745186
0-3 months     ki1135781-COHORTS          INDIA                          1                    NA                3.4048197   3.3681720   3.4414675
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                3.7027161   3.6915607   3.7138714
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                3.5508857   3.5172114   3.5845599
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                3.6102824   3.5751868   3.6453780
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                3.4770193   3.3735349   3.5805037
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                1.9259791   1.8723266   1.9796316
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                1.9297612   1.8076138   2.0519085
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0                    NA                2.1398261   2.0563619   2.2232903
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                2.1522238   1.8534456   2.4510020
3-6 months     ki0047075b-MAL-ED          INDIA                          0                    NA                1.8669087   1.7966728   1.9371445
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    NA                1.9659277   1.8505103   2.0813450
3-6 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                1.9604902   1.8993118   2.0216686
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                1.9543610   1.8231012   2.0856209
3-6 months     ki0047075b-MAL-ED          PERU                           0                    NA                2.0136891   1.9472066   2.0801716
3-6 months     ki0047075b-MAL-ED          PERU                           1                    NA                1.7508169   1.5080241   1.9936098
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                1.9687424   1.8845870   2.0528978
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                2.1021994   1.8052978   2.3991010
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                1.8223081   1.6994094   1.9452067
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                1.7281216   1.5529636   1.9032796
3-6 months     ki1000108-IRC              INDIA                          0                    NA                1.8649750   1.7869296   1.9430205
3-6 months     ki1000108-IRC              INDIA                          1                    NA                1.8954281   1.7790841   2.0117720
3-6 months     ki1000109-EE               PAKISTAN                       0                    NA                1.9871025   1.9171017   2.0571033
3-6 months     ki1000109-EE               PAKISTAN                       1                    NA                2.1979696   2.0171423   2.3787970
3-6 months     ki1000109-ResPak           PAKISTAN                       0                    NA                2.0190876   1.8545554   2.1836198
3-6 months     ki1000109-ResPak           PAKISTAN                       1                    NA                2.2070948   1.9116451   2.5025445
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          0                    NA                1.9333374   1.8790717   1.9876031
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                1.8754365   1.7430184   2.0078545
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     0                    NA                1.8299641   1.7729799   1.8869483
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     1                    NA                1.8498550   1.7564873   1.9432227
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                1.9764337   1.9375655   2.0153018
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                1.9344629   1.8531486   2.0157771
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                1.9924092   1.9498364   2.0349819
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                2.0230324   1.9520266   2.0940382
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                1.7896115   1.7526875   1.8265354
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.9206989   1.7659473   2.0754506
3-6 months     ki1101329-Keneba           GAMBIA                         0                    NA                1.9934781   1.9534861   2.0334702
3-6 months     ki1101329-Keneba           GAMBIA                         1                    NA                1.9940457   1.7667974   2.2212939
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                1.7329553   1.6901735   1.7757371
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                1.5642806   1.4743701   1.6541910
3-6 months     ki1114097-CMIN             BANGLADESH                     0                    NA                1.9450224   1.8702352   2.0198095
3-6 months     ki1114097-CMIN             BANGLADESH                     1                    NA                1.9015849   1.6579994   2.1451703
3-6 months     ki1114097-CMIN             BRAZIL                         0                    NA                1.6473054   1.4443443   1.8502664
3-6 months     ki1114097-CMIN             BRAZIL                         1                    NA                2.1926511   1.8164097   2.5688924
3-6 months     ki1114097-CMIN             PERU                           0                    NA                1.8953534   1.8460297   1.9446771
3-6 months     ki1114097-CMIN             PERU                           1                    NA                1.8711863   1.6974928   2.0448797
3-6 months     ki1119695-PROBIT           BELARUS                        0                    NA                2.1159888   2.0808091   2.1511684
3-6 months     ki1119695-PROBIT           BELARUS                        1                    NA                1.9897552   1.9169820   2.0625284
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                1.9549753   1.9325866   1.9773641
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                2.0667588   2.0175031   2.1160144
3-6 months     ki1135781-COHORTS          GUATEMALA                      0                    NA                1.7688402   1.7333606   1.8043198
3-6 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                1.7117730   1.6457196   1.7778264
3-6 months     ki1135781-COHORTS          INDIA                          0                    NA                1.8699294   1.8565773   1.8832815
3-6 months     ki1135781-COHORTS          INDIA                          1                    NA                1.8500938   1.8194674   1.8807203
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                1.8905215   1.8789677   1.9020754
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                1.9507447   1.9181317   1.9833578
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                1.8880429   1.8562469   1.9198389
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                1.8435327   1.7276439   1.9594216
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                1.1039306   1.0751129   1.1327484
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                1.1487358   1.0949840   1.2024875
6-12 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                1.3905928   1.3422366   1.4389490
6-12 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                1.3293853   1.0405977   1.6181729
6-12 months    ki0047075b-MAL-ED          INDIA                          0                    NA                1.1025491   1.0707974   1.1343008
6-12 months    ki0047075b-MAL-ED          INDIA                          1                    NA                1.2030010   1.1446733   1.2613288
6-12 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                1.2135394   1.1858238   1.2412550
6-12 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                1.2852236   1.2118108   1.3586364
6-12 months    ki0047075b-MAL-ED          PERU                           0                    NA                1.2109924   1.1775470   1.2444378
6-12 months    ki0047075b-MAL-ED          PERU                           1                    NA                1.2176231   1.0340842   1.4011620
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                1.1802269   1.1393569   1.2210969
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                1.2305894   1.0673537   1.3938252
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                1.0711938   1.0141049   1.1282826
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                1.0367153   0.9488646   1.1245660
6-12 months    ki1000108-IRC              INDIA                          0                    NA                1.2213653   1.1883959   1.2543346
6-12 months    ki1000108-IRC              INDIA                          1                    NA                1.2838309   1.2268715   1.3407903
6-12 months    ki1000109-ResPak           PAKISTAN                       0                    NA                1.3061953   1.2054612   1.4069295
6-12 months    ki1000109-ResPak           PAKISTAN                       1                    NA                1.2173739   1.0593847   1.3753630
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                1.0902285   1.0785484   1.1019085
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                1.1406964   1.0737909   1.2076019
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                1.0259603   0.9378561   1.1140644
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.9536268   0.8243631   1.0828905
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                1.1584811   1.1321467   1.1848155
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                1.1862346   1.1405434   1.2319259
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                1.1674972   1.1474615   1.1875330
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                1.1943451   1.1596768   1.2290135
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                1.2201477   1.1994998   1.2407957
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                1.2464293   1.2127894   1.2800692
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                1.1988577   1.1768937   1.2208218
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.1398820   1.0360606   1.2437034
6-12 months    ki1101329-Keneba           GAMBIA                         0                    NA                1.1792452   1.1604517   1.1980387
6-12 months    ki1101329-Keneba           GAMBIA                         1                    NA                1.2413531   1.1211065   1.3615998
6-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                1.1673821   1.1461994   1.1885648
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                1.1646045   1.1133526   1.2158563
6-12 months    ki1114097-CMIN             BANGLADESH                     0                    NA                1.0878293   1.0519552   1.1237034
6-12 months    ki1114097-CMIN             BANGLADESH                     1                    NA                1.2103273   1.0611854   1.3594693
6-12 months    ki1114097-CMIN             BRAZIL                         0                    NA                1.2574861   1.1753699   1.3396022
6-12 months    ki1114097-CMIN             BRAZIL                         1                    NA                1.1321891   0.9015671   1.3628110
6-12 months    ki1114097-CMIN             PERU                           0                    NA                1.1056498   1.0797669   1.1315326
6-12 months    ki1114097-CMIN             PERU                           1                    NA                1.1819702   1.0864151   1.2775254
6-12 months    ki1119695-PROBIT           BELARUS                        0                    NA                1.4703882   1.4356391   1.5051373
6-12 months    ki1119695-PROBIT           BELARUS                        1                    NA                1.4722983   1.3899653   1.5546313
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                1.1897592   1.1773830   1.2021353
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                1.2168997   1.1910881   1.2427112
6-12 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                1.0116712   0.9918718   1.0314707
6-12 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                1.0172253   0.9785318   1.0559189
6-12 months    ki1135781-COHORTS          INDIA                          0                    NA                1.0962514   1.0872155   1.1052874
6-12 months    ki1135781-COHORTS          INDIA                          1                    NA                1.1083184   1.0869110   1.1297258
6-12 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                1.0666780   1.0532828   1.0800731
6-12 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                1.0705598   1.0368258   1.1042939
6-12 months    ki1148112-LCNI-5           MALAWI                         0                    NA                1.2817845   1.2568269   1.3067421
6-12 months    ki1148112-LCNI-5           MALAWI                         1                    NA                1.1574451   0.7334598   1.5814305
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                1.1013194   1.0941393   1.1084995
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                1.1180099   1.0975432   1.1384765
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                1.1951999   1.1834752   1.2069245
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                1.2307450   1.2017210   1.2597691
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.8442833   0.8255155   0.8630511
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.8635570   0.8315806   0.8955334
12-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                0.9919957   0.9601512   1.0238402
12-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                0.8014441   0.6988348   0.9040534
12-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.8802588   0.8614514   0.8990661
12-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.8790022   0.8334278   0.9245766
12-24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.8631348   0.8468647   0.8794049
12-24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.8574798   0.8069206   0.9080391
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.8652838   0.8428346   0.8877331
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.9372434   0.8239213   1.0505655
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.7258767   0.6942842   0.7574691
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.7784909   0.7260791   0.8309027
12-24 months   ki1000108-IRC              INDIA                          0                    NA                0.8469599   0.8228392   0.8710806
12-24 months   ki1000108-IRC              INDIA                          1                    NA                0.7916668   0.7571704   0.8261631
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.7488954   0.7307908   0.7669999
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.7666359   0.7403744   0.7928975
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.8559406   0.8422475   0.8696337
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.8612268   0.8352962   0.8871574
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.8781133   0.8638465   0.8923802
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.8673428   0.8453311   0.8893544
12-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.8434814   0.8325848   0.8543781
12-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.8437931   0.7958254   0.8917608
12-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.8342030   0.8185139   0.8498921
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.8548832   0.8026703   0.9070960
12-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.7925383   0.7665393   0.8185373
12-24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                0.7727888   0.6800886   0.8654891
12-24 months   ki1114097-CMIN             PERU                           0                    NA                0.8382215   0.8200572   0.8563858
12-24 months   ki1114097-CMIN             PERU                           1                    NA                0.8464035   0.7051381   0.9876689
12-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                0.8715643   0.8169404   0.9261882
12-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.8209201   0.7489237   0.8929164
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.7039909   0.6729398   0.7350420
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.7730223   0.7066575   0.8393872
12-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.7763167   0.7640777   0.7885557
12-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.7914837   0.7639555   0.8190118
12-24 months   ki1135781-COHORTS          INDIA                          0                    NA                0.8294767   0.8240011   0.8349522
12-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.8234515   0.8102648   0.8366382
12-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.7048092   0.6967374   0.7128811
12-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.7161314   0.6964620   0.7358007
12-24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                0.8410951   0.8247237   0.8574666
12-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.8224530   0.6194327   1.0254734
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.7950278   0.7889208   0.8011347
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.8087382   0.7919300   0.8255464
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.8479712   0.8418854   0.8540571
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.8562776   0.8415871   0.8709680


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                3.5411031   3.4768856   3.6053206
0-3 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                4.0245152   3.9226845   4.1263458
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                3.5626598   3.4847352   3.6405844
0-3 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                3.8120738   3.7354241   3.8887235
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                3.3060374   3.2426948   3.3693799
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                3.4515461   3.3627553   3.5403368
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                3.4635974   3.2385807   3.6886140
0-3 months     ki1000108-IRC              INDIA                          NA                   NA                3.1041798   2.9950514   3.2133081
0-3 months     ki1000109-EE               PAKISTAN                       NA                   NA                2.5675842   2.4819996   2.6531687
0-3 months     ki1000109-ResPak           PAKISTAN                       NA                   NA                2.9225077   2.6364317   3.2085836
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                3.5821765   3.5472780   3.6170749
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                3.2963299   3.2417618   3.3508980
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                3.4792277   3.4398027   3.5186528
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                3.3014922   3.2627294   3.3402551
0-3 months     ki1101329-Keneba           GAMBIA                         NA                   NA                3.1388507   3.0918554   3.1858460
0-3 months     ki1114097-CMIN             BRAZIL                         NA                   NA                3.4779355   3.2842290   3.6716419
0-3 months     ki1114097-CMIN             PERU                           NA                   NA                3.3155510   3.1827969   3.4483051
0-3 months     ki1119695-PROBIT           BELARUS                        NA                   NA                2.8346589   2.7209072   2.9484106
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                3.3242654   3.3032965   3.3452343
0-3 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                2.6053127   2.5607437   2.6498817
0-3 months     ki1135781-COHORTS          INDIA                          NA                   NA                3.5310445   3.5166343   3.5454546
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                3.6852107   3.6744064   3.6960149
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                3.5977836   3.5643638   3.6312034
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                1.9266180   1.8774856   1.9757505
3-6 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                2.1402579   2.0590306   2.2214851
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                1.8842804   1.8227336   1.9458273
3-6 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.9597943   1.9035510   2.0160376
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                2.0086339   1.9431153   2.0741525
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                1.9776395   1.8965290   2.0587501
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                1.7966493   1.6951848   1.8981138
3-6 months     ki1000108-IRC              INDIA                          NA                   NA                1.8753145   1.8103561   1.9402730
3-6 months     ki1000109-EE               PAKISTAN                       NA                   NA                2.0060078   1.9398873   2.0721284
3-6 months     ki1000109-ResPak           PAKISTAN                       NA                   NA                2.0551949   1.9101730   2.2002169
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                1.9270794   1.8778608   1.9762979
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                1.8356302   1.7869609   1.8842995
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.9676250   1.9324629   2.0027871
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                2.0003032   1.9637722   2.0368341
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.7973831   1.7614261   1.8333402
3-6 months     ki1101329-Keneba           GAMBIA                         NA                   NA                1.9935031   1.9539863   2.0330198
3-6 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                1.7034642   1.6643870   1.7425414
3-6 months     ki1114097-CMIN             BANGLADESH                     NA                   NA                1.9423229   1.8705517   2.0140940
3-6 months     ki1114097-CMIN             BRAZIL                         NA                   NA                1.6892550   1.4969255   1.8815846
3-6 months     ki1114097-CMIN             PERU                           NA                   NA                1.8940471   1.8464513   1.9416429
3-6 months     ki1119695-PROBIT           BELARUS                        NA                   NA                2.0915182   2.0503798   2.1326566
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                1.9724264   1.9520002   1.9928527
3-6 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                1.7573053   1.7259638   1.7886469
3-6 months     ki1135781-COHORTS          INDIA                          NA                   NA                1.8664122   1.8541571   1.8786673
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                1.8968977   1.8858927   1.9079027
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                1.8841116   1.8534120   1.9148112
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                1.1121162   1.0864893   1.1377431
6-12 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                1.3883016   1.3404875   1.4361156
6-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                1.1205674   1.0920350   1.1490998
6-12 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.2217499   1.1956381   1.2478618
6-12 months    ki0047075b-MAL-ED          PERU                           NA                   NA                1.2111366   1.1781756   1.2440975
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                1.1837152   1.1439969   1.2234336
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                1.0619488   1.0139551   1.1099424
6-12 months    ki1000108-IRC              INDIA                          NA                   NA                1.2422419   1.2130355   1.2714484
6-12 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                1.2866815   1.2005254   1.3728377
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                1.0960143   1.0828746   1.1091540
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                1.0131058   0.9370457   1.0891660
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                1.1663677   1.1434493   1.1892861
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.1729367   1.1554606   1.1904128
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                1.2270787   1.2094545   1.2447029
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.1953531   1.1737767   1.2169296
6-12 months    ki1101329-Keneba           GAMBIA                         NA                   NA                1.1817353   1.1630504   1.2004201
6-12 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                1.1669182   1.1473064   1.1865299
6-12 months    ki1114097-CMIN             BANGLADESH                     NA                   NA                1.0947631   1.0596045   1.1299218
6-12 months    ki1114097-CMIN             BRAZIL                         NA                   NA                1.2477408   1.1696045   1.3258771
6-12 months    ki1114097-CMIN             PERU                           NA                   NA                1.1101018   1.0850311   1.1351725
6-12 months    ki1119695-PROBIT           BELARUS                        NA                   NA                1.4707530   1.4324830   1.5090230
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                1.1942584   1.1830783   1.2054386
6-12 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                1.0127697   0.9951380   1.0304013
6-12 months    ki1135781-COHORTS          INDIA                          NA                   NA                1.0982963   1.0899598   1.1066328
6-12 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                1.0672708   1.0548067   1.0797350
6-12 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                1.2792060   1.2531790   1.3052331
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                1.1031089   1.0961394   1.1100784
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                1.1986432   1.1877393   1.2095471
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.8479404   0.8315334   0.8643473
12-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.9848051   0.9534039   1.0162062
12-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.8800323   0.8625633   0.8975014
12-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.8624755   0.8469387   0.8780123
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.8703116   0.8478535   0.8927697
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7399846   0.7128055   0.7671637
12-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.8284800   0.8085358   0.8484242
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.7538821   0.7388987   0.7688656
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.8570541   0.8449420   0.8691662
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.8751352   0.8631447   0.8871257
12-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.8434953   0.8328671   0.8541235
12-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.8373192   0.8218262   0.8528122
12-24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.7910754   0.7660267   0.8161241
12-24 months   ki1114097-CMIN             PERU                           NA                   NA                0.8385504   0.8202134   0.8568875
12-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.8603233   0.8073419   0.9133048
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.7127190   0.6841891   0.7412489
12-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7788111   0.7676211   0.7900012
12-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.8284994   0.8234374   0.8335614
12-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.7065042   0.6990338   0.7139746
12-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.8406140   0.8238233   0.8574047
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.7965374   0.7907521   0.8023226
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.8487009   0.8429043   0.8544975


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.2449623   -0.4354432   -0.0544815
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.3426273   -0.7909196    0.1056650
0-3 months     ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          1                    0                 -0.2921103   -0.4679178   -0.1163029
0-3 months     ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.0820443   -0.2707019    0.1066134
0-3 months     ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           1                    0                  0.3873475    0.0433124    0.7313826
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -0.4204542   -0.7369876   -0.1039209
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.7498264   -1.4573951   -0.0422578
0-3 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          1                    0                 -1.1941752   -1.3853197   -1.0030308
0-3 months     ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE               PAKISTAN                       1                    0                 -0.7000346   -1.0307630   -0.3693063
0-3 months     ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-ResPak           PAKISTAN                       1                    0                 -0.5694525   -1.3240029    0.1850979
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1                    0                 -0.2097702   -0.3711837   -0.0483568
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     1                    0                 -0.2273060   -0.3484355   -0.1061766
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0962655   -0.1904919   -0.0020391
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.1671255   -0.2559631   -0.0782880
0-3 months     ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         1                    0                 -0.9717087   -1.4874751   -0.4559423
0-3 months     ki1114097-CMIN             BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CMIN             BRAZIL                         1                    0                 -0.1905988   -1.1403790    0.7591814
0-3 months     ki1114097-CMIN             PERU                           0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CMIN             PERU                           1                    0                  0.0090344   -0.1789790    0.1970477
0-3 months     ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        1                    0                 -0.5373500   -0.6423280   -0.4323719
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.9108750   -0.9651167   -0.8566332
0-3 months     ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      1                    0                 -0.1796346   -0.2829693   -0.0763000
0-3 months     ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          1                    0                 -0.1541874   -0.1939827   -0.1143921
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.1518304   -0.1867058   -0.1169551
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.1332631   -0.2421436   -0.0243827
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.0037821   -0.1296292    0.1371934
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                    0                  0.0123977   -0.2978194    0.3226149
3-6 months     ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    0                  0.0990190   -0.0360892    0.2341272
3-6 months     ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.0061292   -0.1509461    0.1386878
3-6 months     ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           1                    0                 -0.2628722   -0.5146028   -0.0111416
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.1334570   -0.1751409    0.4420550
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0941865   -0.3081594    0.1197864
3-6 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          1                    0                  0.0304530   -0.1096434    0.1705494
3-6 months     ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE               PAKISTAN                       1                    0                  0.2108671    0.0169634    0.4047708
3-6 months     ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-ResPak           PAKISTAN                       1                    0                  0.1880072   -0.1501664    0.5261808
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1                    0                 -0.0579009   -0.2052451    0.0894433
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     1                    0                  0.0198910   -0.0894924    0.1292744
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0419708   -0.1320970    0.0481555
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  0.0306232   -0.0521672    0.1134137
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.1310875   -0.0280083    0.2901832
3-6 months     ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         1                    0                  0.0005675   -0.2301729    0.2313079
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.1686747   -0.2682447   -0.0691048
3-6 months     ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             BANGLADESH                     1                    0                 -0.0434375   -0.2982452    0.2113702
3-6 months     ki1114097-CMIN             BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             BRAZIL                         1                    0                  0.5453457    0.1178522    0.9728393
3-6 months     ki1114097-CMIN             PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             PERU                           1                    0                 -0.0241671   -0.2047281    0.1563938
3-6 months     ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        1                    0                 -0.1262336   -0.1898265   -0.0626406
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.1117834    0.0576782    0.1658886
3-6 months     ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      1                    0                 -0.0570672   -0.1320462    0.0179118
3-6 months     ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          1                    0                 -0.0198356   -0.0532460    0.0135749
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  0.0602232    0.0261020    0.0943444
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0445101   -0.1647278    0.0757075
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.0448051   -0.0161843    0.1057946
6-12 months    ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.0612075   -0.3540156    0.2316007
6-12 months    ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA                          1                    0                  0.1004519    0.0340419    0.1668620
6-12 months    ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          NEPAL                          1                    0                  0.0716842   -0.0067861    0.1501545
6-12 months    ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          PERU                           1                    0                  0.0066307   -0.1799306    0.1931920
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.0503625   -0.1179119    0.2186369
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0344785   -0.1392490    0.0702921
6-12 months    ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA                          1                    0                  0.0624656   -0.0033474    0.1282786
6-12 months    ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000109-ResPak           PAKISTAN                       1                    0                 -0.0888215   -0.2761927    0.0985497
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0                  0.0504679   -0.0190298    0.1199656
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 -0.0723335   -0.2287670    0.0841000
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     1                    0                  0.0277535   -0.0249835    0.0804905
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0268479   -0.0131937    0.0668894
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  0.0262816   -0.0131897    0.0657528
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0589757   -0.1650950    0.0471436
6-12 months    ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1101329-Keneba           GAMBIA                         1                    0                  0.0621079   -0.0595985    0.1838144
6-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0027776   -0.0582344    0.0526792
6-12 months    ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN             BANGLADESH                     1                    0                  0.1224980   -0.0308977    0.2758938
6-12 months    ki1114097-CMIN             BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN             BRAZIL                         1                    0                 -0.1252970   -0.3701021    0.1195081
6-12 months    ki1114097-CMIN             PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN             PERU                           1                    0                  0.0763205   -0.0226781    0.1753190
6-12 months    ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS                        1                    0                  0.0019101   -0.0704183    0.0742385
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.0271405   -0.0014848    0.0557658
6-12 months    ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          GUATEMALA                      1                    0                  0.0055541   -0.0379109    0.0490192
6-12 months    ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          INDIA                          1                    0                  0.0120670   -0.0111693    0.0353033
6-12 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                  0.0038819   -0.0324143    0.0401780
6-12 months    ki1148112-LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5           MALAWI                         1                    0                 -0.1243394   -0.5490587    0.3003800
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  0.0166905   -0.0043671    0.0377480
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.0355452    0.0039878    0.0671026
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.0192737   -0.0178035    0.0563509
12-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.1905516   -0.2979888   -0.0831145
12-24 months   ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          1                    0                 -0.0012566   -0.0505592    0.0480460
12-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.0056550   -0.0587676    0.0474576
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.0719595   -0.0435648    0.1874839
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.0526142   -0.0085828    0.1138113
12-24 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA                          1                    0                 -0.0552932   -0.0973860   -0.0132004
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0                  0.0177406   -0.0141568    0.0496379
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0052862   -0.0240378    0.0346102
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0107706   -0.0370014    0.0154602
12-24 months   ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1101329-Keneba           GAMBIA                         1                    0                  0.0003117   -0.0488782    0.0495015
12-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.0206802   -0.0338389    0.0751993
12-24 months   ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1114097-CMIN             BANGLADESH                     1                    0                 -0.0197495   -0.1160266    0.0765276
12-24 months   ki1114097-CMIN             PERU                           0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1114097-CMIN             PERU                           1                    0                  0.0081820   -0.1342464    0.1506105
12-24 months   ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1119695-PROBIT           BELARUS                        1                    0                 -0.0506442   -0.1174860    0.0161976
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.0690314   -0.0042384    0.1423012
12-24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                  0.0151670   -0.0149593    0.0452933
12-24 months   ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          INDIA                          1                    0                 -0.0060251   -0.0203035    0.0082532
12-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                  0.0113221   -0.0099391    0.0325833
12-24 months   ki1148112-LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5           MALAWI                         1                    0                 -0.0186421   -0.2223215    0.1850373
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  0.0137104   -0.0040428    0.0314637
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.0083063   -0.0071426    0.0237553
