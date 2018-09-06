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
![](/tmp/89549cc0-da77-450c-9b0f-b26c0b3918d4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/89549cc0-da77-450c-9b0f-b26c0b3918d4/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0333712   -0.0663446   -0.0003978
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.1394169   -0.2314315   -0.0474022
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.1811187    0.1296043    0.2326331
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.0153700   -0.2693708    0.2386308
0-3 months     ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0074213   -0.0508842    0.0360416
0-3 months     ki0047075b-MAL-ED          INDIA                          1                    NA                -0.1252396   -0.1987095   -0.0517696
0-3 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0694348    0.0306511    0.1082184
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.0709022   -0.0040691    0.1458735
0-3 months     ki0047075b-MAL-ED          PERU                           0                    NA                -0.1709376   -0.2031882   -0.1386870
0-3 months     ki0047075b-MAL-ED          PERU                           1                    NA                 0.0071784   -0.2169376    0.2312944
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0868180   -0.1320149   -0.0416212
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.2845896   -0.4450013   -0.1241778
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0566039   -0.1674841    0.0542764
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.4029373   -0.7137562   -0.0921184
0-3 months     ki1000108-IRC              INDIA                          0                    NA                -0.1124530   -0.1685019   -0.0564041
0-3 months     ki1000108-IRC              INDIA                          1                    NA                -0.7190277   -0.7956066   -0.6424488
0-3 months     ki1000109-EE               PAKISTAN                       0                    NA                -0.4140915   -0.4555635   -0.3726194
0-3 months     ki1000109-EE               PAKISTAN                       1                    NA                -0.7492330   -0.9273667   -0.5710993
0-3 months     ki1000109-ResPak           PAKISTAN                       0                    NA                -0.2265872   -0.3779811   -0.0751934
0-3 months     ki1000109-ResPak           PAKISTAN                       1                    NA                -0.5450132   -0.8862733   -0.2037530
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0032794   -0.0189301    0.0254890
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0760818   -0.1494033   -0.0027603
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0987355   -0.1295209   -0.0679501
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.2121766   -0.2631891   -0.1611641
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0386099   -0.0591470   -0.0180728
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0653029   -0.1043111   -0.0262947
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.1055675   -0.1266516   -0.0844833
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.1872566   -0.2232543   -0.1512588
0-3 months     ki1101329-Keneba           GAMBIA                         0                    NA                -0.2767128   -0.2995107   -0.2539149
0-3 months     ki1101329-Keneba           GAMBIA                         1                    NA                -0.7143301   -0.9910493   -0.4376109
0-3 months     ki1114097-CMIN             BRAZIL                         0                    NA                -0.0988258   -0.1951155   -0.0025360
0-3 months     ki1114097-CMIN             BRAZIL                         1                    NA                -0.2352680   -0.6736805    0.2031445
0-3 months     ki1114097-CMIN             PERU                           0                    NA                -0.1218950   -0.1934049   -0.0503852
0-3 months     ki1114097-CMIN             PERU                           1                    NA                -0.0747876   -0.1663795    0.0168044
0-3 months     ki1119695-PROBIT           BELARUS                        0                    NA                -0.3760626   -0.4267084   -0.3254168
0-3 months     ki1119695-PROBIT           BELARUS                        1                    NA                -0.6689968   -0.7215895   -0.6164040
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0970250   -0.1074064   -0.0866436
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.5491565   -0.5744382   -0.5238748
0-3 months     ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.5145746   -0.5398548   -0.4892943
0-3 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.6459556   -0.6903367   -0.6015744
0-3 months     ki1135781-COHORTS          INDIA                          0                    NA                -0.0617694   -0.0692861   -0.0542528
0-3 months     ki1135781-COHORTS          INDIA                          1                    NA                -0.1411939   -0.1587520   -0.1236358
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0477202    0.0425501    0.0528902
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0163149   -0.0329740    0.0003441
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0440239    0.0277809    0.0602668
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0190906   -0.0648046    0.0266234
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0275286   -0.0527415   -0.0023158
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0147397   -0.0705339    0.0410545
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0556314    0.0171789    0.0940839
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.0564131   -0.0764008    0.1892271
3-6 months     ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0490381   -0.0816007   -0.0164756
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    NA                 0.0039736   -0.0487042    0.0566514
3-6 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0265671   -0.0555703    0.0024361
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0183393   -0.0788989    0.0422203
3-6 months     ki0047075b-MAL-ED          PERU                           0                    NA                 0.0244433   -0.0068288    0.0557154
3-6 months     ki0047075b-MAL-ED          PERU                           1                    NA                -0.1208014   -0.2477390    0.0061361
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0070888   -0.0465324    0.0323549
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.0660440   -0.0788103    0.2108984
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0914435   -0.1490400   -0.0338469
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.1294016   -0.2147587   -0.0440445
3-6 months     ki1000108-IRC              INDIA                          0                    NA                -0.0646720   -0.1019649   -0.0273792
3-6 months     ki1000108-IRC              INDIA                          1                    NA                -0.0375893   -0.0913778    0.0161991
3-6 months     ki1000109-EE               PAKISTAN                       0                    NA                 0.0493383    0.0169635    0.0817131
3-6 months     ki1000109-EE               PAKISTAN                       1                    NA                 0.1528521    0.0680085    0.2376956
3-6 months     ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0094743   -0.0674938    0.0864424
3-6 months     ki1000109-ResPak           PAKISTAN                       1                    NA                 0.1215146   -0.0147662    0.2577953
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0245601   -0.0482908   -0.0008294
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0411723   -0.1036021    0.0212575
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0550226   -0.0813408   -0.0287043
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.0415066   -0.0842565    0.0012433
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0245692   -0.0427073   -0.0064310
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0355897   -0.0745975    0.0034182
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0180046   -0.0016306    0.0376399
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0360751    0.0035386    0.0686116
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0870171   -0.1041483   -0.0698859
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0309765   -0.1031100    0.0411569
3-6 months     ki1101329-Keneba           GAMBIA                         0                    NA                -0.0176317   -0.0363796    0.0011163
3-6 months     ki1101329-Keneba           GAMBIA                         1                    NA                 0.0001134   -0.1045645    0.1047912
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.1543777   -0.1747816   -0.1339737
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.2293803   -0.2703225   -0.1884381
3-6 months     ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0124127   -0.0467408    0.0219154
3-6 months     ki1114097-CMIN             BANGLADESH                     1                    NA                -0.0314212   -0.1593135    0.0964711
3-6 months     ki1114097-CMIN             BRAZIL                         0                    NA                -0.1650954   -0.2616464   -0.0685443
3-6 months     ki1114097-CMIN             BRAZIL                         1                    NA                 0.0613255   -0.1135466    0.2361976
3-6 months     ki1114097-CMIN             PERU                           0                    NA                -0.0570208   -0.0802243   -0.0338174
3-6 months     ki1114097-CMIN             PERU                           1                    NA                -0.0682404   -0.1491842    0.0127034
3-6 months     ki1119695-PROBIT           BELARUS                        0                    NA                 0.0589083    0.0424327    0.0753839
3-6 months     ki1119695-PROBIT           BELARUS                        1                    NA                -0.0021099   -0.0354679    0.0312482
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0137150   -0.0241859   -0.0032440
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0522376    0.0292837    0.0751914
3-6 months     ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0904093   -0.1071958   -0.0736228
3-6 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.1326179   -0.1638649   -0.1013709
3-6 months     ki1135781-COHORTS          INDIA                          0                    NA                -0.0597931   -0.0659471   -0.0536392
3-6 months     ki1135781-COHORTS          INDIA                          1                    NA                -0.0682288   -0.0823634   -0.0540943
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0222252   -0.0275724   -0.0168781
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0078424   -0.0072885    0.0229734
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0173139   -0.0318905   -0.0027373
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0354648   -0.0889729    0.0180433
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0867517   -0.0986579   -0.0748456
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0645121   -0.0875033   -0.0415210
6-12 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0081804   -0.0122635    0.0286244
6-12 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.0245381   -0.1351312    0.0860550
6-12 months    ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0851708   -0.0988061   -0.0715354
6-12 months    ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0448106   -0.0699341   -0.0196870
6-12 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0534572   -0.0649280   -0.0419864
6-12 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0180209   -0.0463190    0.0102772
6-12 months    ki0047075b-MAL-ED          PERU                           0                    NA                -0.0373523   -0.0517094   -0.0229952
6-12 months    ki0047075b-MAL-ED          PERU                           1                    NA                -0.0379621   -0.1228539    0.0469297
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0575793   -0.0748434   -0.0403152
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.0391689   -0.1036498    0.0253121
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0962657   -0.1209008   -0.0716306
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.1080801   -0.1456778   -0.0704825
6-12 months    ki1000108-IRC              INDIA                          0                    NA                -0.0389020   -0.0533712   -0.0244327
6-12 months    ki1000108-IRC              INDIA                          1                    NA                -0.0108808   -0.0359298    0.0141682
6-12 months    ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0013950   -0.0455236    0.0427335
6-12 months    ki1000109-ResPak           PAKISTAN                       1                    NA                -0.0433240   -0.1119688    0.0253207
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0922375   -0.0974545   -0.0870205
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0664087   -0.0927020   -0.0401154
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -0.1038790   -0.1396918   -0.0680663
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                -0.1271315   -0.1815861   -0.0726769
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0584229   -0.0693304   -0.0475153
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.0465744   -0.0652266   -0.0279222
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0657485   -0.0737594   -0.0577375
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0527787   -0.0667549   -0.0388025
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0357631   -0.0443173   -0.0272090
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0245109   -0.0388990   -0.0101228
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0589751   -0.0683296   -0.0496206
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0806535   -0.1247790   -0.0365281
6-12 months    ki1101329-Keneba           GAMBIA                         0                    NA                -0.0625655   -0.0704817   -0.0546494
6-12 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.0283379   -0.0815932    0.0249173
6-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0619353   -0.0708618   -0.0530089
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0630397   -0.0838840   -0.0421953
6-12 months    ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0835829   -0.0984454   -0.0687203
6-12 months    ki1114097-CMIN             BANGLADESH                     1                    NA                -0.0307406   -0.0941658    0.0326846
6-12 months    ki1114097-CMIN             BRAZIL                         0                    NA                -0.0337135   -0.0667547   -0.0006722
6-12 months    ki1114097-CMIN             BRAZIL                         1                    NA                -0.0950837   -0.1880802   -0.0020872
6-12 months    ki1114097-CMIN             PERU                           0                    NA                -0.0960002   -0.1069168   -0.0850835
6-12 months    ki1114097-CMIN             PERU                           1                    NA                -0.0688892   -0.1120799   -0.0256985
6-12 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0422092    0.0269755    0.0574429
6-12 months    ki1119695-PROBIT           BELARUS                        1                    NA                 0.0422137    0.0072092    0.0772183
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0546550   -0.0599401   -0.0493700
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0368288   -0.0476655   -0.0259922
6-12 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.1114696   -0.1195376   -0.1034016
6-12 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.1138986   -0.1300911   -0.0977062
6-12 months    ki1135781-COHORTS          INDIA                          0                    NA                -0.0931027   -0.0968573   -0.0893480
6-12 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.0876863   -0.0966667   -0.0787060
6-12 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.1010354   -0.1066565   -0.0954144
6-12 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.1000982   -0.1141117   -0.0860847
6-12 months    ki1148112-LCNI-5           MALAWI                         0                    NA                -0.0055914   -0.0160345    0.0048517
6-12 months    ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0563802   -0.2389988    0.1262384
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0805815   -0.0835986   -0.0775645
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0740632   -0.0825608   -0.0655656
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0438187   -0.0487624   -0.0388751
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0268738   -0.0391790   -0.0145687
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0192478   -0.0255652   -0.0129303
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0107335   -0.0218616    0.0003945
12-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0017156   -0.0092838    0.0127151
12-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.0608362   -0.1081109   -0.0135614
12-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0090349   -0.0147547   -0.0033151
12-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0154488   -0.0275062   -0.0033915
12-24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0293764   -0.0348350   -0.0239177
12-24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0309376   -0.0458385   -0.0160368
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0165007   -0.0241705   -0.0088309
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.0030047   -0.0332950    0.0393045
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0511395   -0.0631711   -0.0391079
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0298279   -0.0495895   -0.0100664
12-24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0267893   -0.0355172   -0.0180614
12-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0442680   -0.0566060   -0.0319299
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0419720   -0.0475537   -0.0363903
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.0377136   -0.0469480   -0.0284793
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0090412   -0.0133919   -0.0046906
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0065812   -0.0151689    0.0020065
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0059157   -0.0107192   -0.0011123
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0078458   -0.0154036   -0.0002880
12-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0216813   -0.0255761   -0.0177866
12-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0085307   -0.0239573    0.0068959
12-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0158590   -0.0210688   -0.0106492
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0165856   -0.0325627   -0.0006085
12-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0311146   -0.0398482   -0.0223810
12-24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                -0.0413671   -0.0752255   -0.0075086
12-24 months   ki1114097-CMIN             PERU                           0                    NA                -0.0294598   -0.0358235   -0.0230961
12-24 months   ki1114097-CMIN             PERU                           1                    NA                -0.0236108   -0.0799816    0.0327600
12-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                -0.0393160   -0.0570672   -0.0215648
12-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                -0.0559689   -0.0822075   -0.0297303
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0559212   -0.0669024   -0.0449400
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0280857   -0.0524618   -0.0037097
12-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0308722   -0.0350140   -0.0267304
12-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0258381   -0.0353745   -0.0163017
12-24 months   ki1135781-COHORTS          INDIA                          0                    NA                -0.0348475   -0.0366528   -0.0330422
12-24 months   ki1135781-COHORTS          INDIA                          1                    NA                -0.0378107   -0.0421421   -0.0334793
12-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0584245   -0.0611916   -0.0556575
12-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.0577426   -0.0646411   -0.0508442
12-24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                -0.0160585   -0.0216288   -0.0104881
12-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0134601   -0.0884481    0.0615278
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0222583   -0.0243953   -0.0201213
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0177121   -0.0235597   -0.0118644
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0164786   -0.0185395   -0.0144178
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0128482   -0.0181453   -0.0075512


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0511978   -0.0831014   -0.0192942
0-3 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.1743040    0.1235170    0.2250911
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0288428   -0.0673559    0.0096703
0-3 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.0696150    0.0343704    0.1048597
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                -0.1668895   -0.1989768   -0.1348022
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0998293   -0.1438164   -0.0558422
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.1072868   -0.2156332    0.0010596
0-3 months     ki1000108-IRC              INDIA                          NA                   NA                -0.2983115   -0.3521715   -0.2444516
0-3 months     ki1000109-EE               PAKISTAN                       NA                   NA                -0.4481293   -0.4913729   -0.4048856
0-3 months     ki1000109-ResPak           PAKISTAN                       NA                   NA                -0.2804057   -0.4215985   -0.1392129
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0054300   -0.0244332    0.0135731
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.1309085   -0.1576337   -0.1041833
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0443238   -0.0625169   -0.0261306
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.1263398   -0.1447232   -0.1079564
0-3 months     ki1101329-Keneba           GAMBIA                         NA                   NA                -0.2884193   -0.3121298   -0.2647089
0-3 months     ki1114097-CMIN             BRAZIL                         NA                   NA                -0.1094576   -0.2049444   -0.0139709
0-3 months     ki1114097-CMIN             PERU                           NA                   NA                -0.1173363   -0.1825933   -0.0520792
0-3 months     ki1119695-PROBIT           BELARUS                        NA                   NA                -0.4381033   -0.4974471   -0.3787595
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.1708066   -0.1811433   -0.1604699
0-3 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.5480099   -0.5704068   -0.5256129
0-3 months     ki1135781-COHORTS          INDIA                          NA                   NA                -0.0761734   -0.0831445   -0.0692024
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                 0.0403372    0.0352230    0.0454514
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                 0.0381043    0.0226354    0.0535733
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0253679   -0.0483526   -0.0023833
3-6 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0556586    0.0182581    0.0930591
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0397378   -0.0682545   -0.0112211
3-6 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0256329   -0.0522489    0.0009830
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                 0.0216501   -0.0092133    0.0525136
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0022133   -0.0403430    0.0359165
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.1017842   -0.1497475   -0.0538210
3-6 months     ki1000108-IRC              INDIA                          NA                   NA                -0.0554769   -0.0861670   -0.0247867
3-6 months     ki1000109-EE               PAKISTAN                       NA                   NA                 0.0586188    0.0279904    0.0892472
3-6 months     ki1000109-ResPak           PAKISTAN                       NA                   NA                 0.0309919   -0.0368463    0.0988302
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0263556   -0.0474448   -0.0052663
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0511724   -0.0735961   -0.0287487
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0268821   -0.0433912   -0.0103730
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0226628    0.0058374    0.0394882
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0836947   -0.1003802   -0.0670091
3-6 months     ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0168524   -0.0353581    0.0016533
3-6 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.1674912   -0.1859674   -0.1490149
3-6 months     ki1114097-CMIN             BANGLADESH                     NA                   NA                -0.0135940   -0.0467623    0.0195742
3-6 months     ki1114097-CMIN             BRAZIL                         NA                   NA                -0.1476784   -0.2388137   -0.0565430
3-6 months     ki1114097-CMIN             PERU                           NA                   NA                -0.0576273   -0.0800097   -0.0352449
3-6 months     ki1119695-PROBIT           BELARUS                        NA                   NA                 0.0470798    0.0278596    0.0663000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0034188   -0.0129747    0.0061372
3-6 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0989408   -0.1137983   -0.0840833
3-6 months     ki1135781-COHORTS          INDIA                          NA                   NA                -0.0612889   -0.0669386   -0.0556392
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0190418   -0.0241166   -0.0139670
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0189171   -0.0329875   -0.0048466
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0826887   -0.0933520   -0.0720255
6-12 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0069557   -0.0131735    0.0270849
6-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0779313   -0.0901649   -0.0656976
6-12 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0493984   -0.0601610   -0.0386358
6-12 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0373656   -0.0515313   -0.0231999
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0563041   -0.0729925   -0.0396157
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0994336   -0.1200983   -0.0787689
6-12 months    ki1000108-IRC              INDIA                          NA                   NA                -0.0295370   -0.0423689   -0.0167050
6-12 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                -0.0106067   -0.0483155    0.0271021
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0892764   -0.0950163   -0.0835365
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -0.1080113   -0.1390238   -0.0769988
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0550560   -0.0645057   -0.0456063
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0631208   -0.0701220   -0.0561195
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0327957   -0.0401584   -0.0254330
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0602634   -0.0694495   -0.0510772
6-12 months    ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0611933   -0.0690947   -0.0532918
6-12 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0621198   -0.0703301   -0.0539095
6-12 months    ki1114097-CMIN             BANGLADESH                     NA                   NA                -0.0805918   -0.0951901   -0.0659935
6-12 months    ki1114097-CMIN             BRAZIL                         NA                   NA                -0.0384867   -0.0699904   -0.0069830
6-12 months    ki1114097-CMIN             PERU                           NA                   NA                -0.0944187   -0.1050232   -0.0838142
6-12 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.0422101    0.0256698    0.0587503
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0516998   -0.0564648   -0.0469349
6-12 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.1119500   -0.1191716   -0.1047284
6-12 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.0921848   -0.0956552   -0.0887144
6-12 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.1008923   -0.1061137   -0.0956709
6-12 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0066447   -0.0175712    0.0042818
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0798827   -0.0828102   -0.0769552
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0421773   -0.0467874   -0.0375671
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0176322   -0.0231893   -0.0120752
12-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.0006448   -0.0115382    0.0102486
12-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0101906   -0.0153688   -0.0050123
12-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0295584   -0.0346844   -0.0244324
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0151379   -0.0227366   -0.0075391
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0454251   -0.0557545   -0.0350956
12-24 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0326310   -0.0398049   -0.0254571
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0407750   -0.0455577   -0.0359922
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0085230   -0.0124057   -0.0046404
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0064494   -0.0105053   -0.0023935
12-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0210954   -0.0248827   -0.0173080
12-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0159685   -0.0210059   -0.0109311
12-24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                -0.0318741   -0.0403529   -0.0233952
12-24 months   ki1114097-CMIN             PERU                           NA                   NA                -0.0292246   -0.0357414   -0.0227079
12-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                -0.0430123   -0.0602469   -0.0257776
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0524018   -0.0625401   -0.0422635
12-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0300443   -0.0338458   -0.0262427
12-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -0.0353281   -0.0369962   -0.0336601
12-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.0583224   -0.0608919   -0.0557529
12-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0159914   -0.0217529   -0.0102299
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0217577   -0.0237749   -0.0197406
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0161597   -0.0181296   -0.0141899


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.1060457   -0.2037900   -0.0083014
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.1964887   -0.4556607    0.0626833
0-3 months     ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          1                    0                 -0.1178183   -0.2031813   -0.0324552
0-3 months     ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                    0                  0.0014674   -0.0829415    0.0858763
0-3 months     ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           1                    0                  0.1781159   -0.0483086    0.4045405
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -0.1977715   -0.3644289   -0.0311142
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.3463335   -0.6763378   -0.0163292
0-3 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          1                    0                 -0.6065747   -0.7014737   -0.5116757
0-3 months     ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE               PAKISTAN                       1                    0                 -0.3351415   -0.5180392   -0.1522439
0-3 months     ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-ResPak           PAKISTAN                       1                    0                 -0.3184259   -0.6917604    0.0549085
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1                    0                 -0.0793612   -0.1593324    0.0006099
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     1                    0                 -0.1134411   -0.1730230   -0.0538591
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0266930   -0.0707771    0.0173911
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0816891   -0.1234070   -0.0399713
0-3 months     ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         1                    0                 -0.4376173   -0.7152740   -0.1599605
0-3 months     ki1114097-CMIN             BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CMIN             BRAZIL                         1                    0                 -0.1364423   -0.5853044    0.3124199
0-3 months     ki1114097-CMIN             PERU                           0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CMIN             PERU                           1                    0                  0.0471075   -0.0690939    0.1633088
0-3 months     ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        1                    0                 -0.2929342   -0.3486843   -0.2371840
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.4521315   -0.4794617   -0.4248013
0-3 months     ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      1                    0                 -0.1313810   -0.1824572   -0.0803048
0-3 months     ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          1                    0                 -0.0794245   -0.0985239   -0.0603251
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.0640351   -0.0810631   -0.0470071
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0631145   -0.1112683   -0.0149607
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.0127889   -0.0484375    0.0740154
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                    0                  0.0007818   -0.1374866    0.1390501
3-6 months     ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    0                  0.0530117   -0.0089178    0.1149413
3-6 months     ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    0                  0.0082278   -0.0589187    0.0753743
3-6 months     ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           1                    0                 -0.1452447   -0.2759777   -0.0145118
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.0731328   -0.0769957    0.2232614
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0379581   -0.1409299    0.0650137
3-6 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          1                    0                  0.0270827   -0.0383693    0.0925347
3-6 months     ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE               PAKISTAN                       1                    0                  0.1035138    0.0127032    0.1943244
3-6 months     ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-ResPak           PAKISTAN                       1                    0                  0.1120403   -0.0444734    0.2685540
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1                    0                 -0.0166122   -0.0870546    0.0538303
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     1                    0                  0.0135160   -0.0366856    0.0637177
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0110205   -0.0540392    0.0319982
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  0.0180705   -0.0199317    0.0560727
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0560406   -0.0180993    0.1301804
3-6 months     ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         1                    0                  0.0177450   -0.0885984    0.1240885
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0750026   -0.1207474   -0.0292579
3-6 months     ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             BANGLADESH                     1                    0                 -0.0190085   -0.1514277    0.1134107
3-6 months     ki1114097-CMIN             BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             BRAZIL                         1                    0                  0.2264208    0.0266651    0.4261766
3-6 months     ki1114097-CMIN             PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             PERU                           1                    0                 -0.0112196   -0.0954235    0.0729843
3-6 months     ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        1                    0                 -0.0610182   -0.0899238   -0.0321125
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.0659525    0.0407232    0.0911819
3-6 months     ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      1                    0                 -0.0422086   -0.0776792   -0.0067381
3-6 months     ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          1                    0                 -0.0084357   -0.0238519    0.0069804
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  0.0300677    0.0141846    0.0459508
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0181509   -0.0736674    0.0373656
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.0222396   -0.0036515    0.0481307
6-12 months    ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.0327186   -0.1451854    0.0797483
6-12 months    ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA                          1                    0                  0.0403602    0.0117750    0.0689454
6-12 months    ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          NEPAL                          1                    0                  0.0354363    0.0049017    0.0659710
6-12 months    ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          PERU                           1                    0                 -0.0006098   -0.0867070    0.0854875
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.0184104   -0.0483417    0.0851625
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0118144   -0.0567641    0.0331353
6-12 months    ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA                          1                    0                  0.0280212   -0.0009066    0.0569489
6-12 months    ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000109-ResPak           PAKISTAN                       1                    0                 -0.0419290   -0.1235343    0.0396764
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0                  0.0258288   -0.0015429    0.0532005
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 -0.0232525   -0.0884281    0.0419231
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     1                    0                  0.0118484   -0.0097590    0.0334558
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0129698   -0.0031395    0.0290791
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  0.0112522   -0.0054867    0.0279911
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0216784   -0.0667846    0.0234277
6-12 months    ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1101329-Keneba           GAMBIA                         1                    0                  0.0342276   -0.0196128    0.0880680
6-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0011043   -0.0237796    0.0215710
6-12 months    ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN             BANGLADESH                     1                    0                  0.0528422   -0.0123011    0.1179856
6-12 months    ki1114097-CMIN             BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN             BRAZIL                         1                    0                 -0.0613702   -0.1600621    0.0373216
6-12 months    ki1114097-CMIN             PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN             PERU                           1                    0                  0.0271109   -0.0174380    0.0716599
6-12 months    ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS                        1                    0                  0.0000046   -0.0309641    0.0309732
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.0178262    0.0057695    0.0298829
6-12 months    ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          GUATEMALA                      1                    0                 -0.0024290   -0.0205202    0.0156621
6-12 months    ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          INDIA                          1                    0                  0.0054163   -0.0043173    0.0151499
6-12 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                  0.0009372   -0.0141616    0.0160361
6-12 months    ki1148112-LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5           MALAWI                         1                    0                 -0.0507888   -0.2337058    0.1321282
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  0.0065184   -0.0022243    0.0152610
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.0169449    0.0036114    0.0302784
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.0085142   -0.0042820    0.0213105
12-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.0625518   -0.1110893   -0.0140143
12-24 months   ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          1                    0                 -0.0064139   -0.0197592    0.0069313
12-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.0015613   -0.0174305    0.0143079
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.0195054   -0.0175958    0.0566066
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.0213116   -0.0018245    0.0444477
12-24 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA                          1                    0                 -0.0174786   -0.0325917   -0.0023656
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0                  0.0042583   -0.0065319    0.0150486
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0024601   -0.0071668    0.0120870
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0019300   -0.0108851    0.0070250
12-24 months   ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1101329-Keneba           GAMBIA                         1                    0                  0.0131506   -0.0027601    0.0290613
12-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0007266   -0.0175316    0.0160784
12-24 months   ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1114097-CMIN             BANGLADESH                     1                    0                 -0.0102525   -0.0452192    0.0247142
12-24 months   ki1114097-CMIN             PERU                           0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1114097-CMIN             PERU                           1                    0                  0.0058490   -0.0508799    0.0625779
12-24 months   ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1119695-PROBIT           BELARUS                        1                    0                 -0.0166529   -0.0424240    0.0091182
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.0278354    0.0011001    0.0545708
12-24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                  0.0050341   -0.0053629    0.0154311
12-24 months   ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          INDIA                          1                    0                 -0.0029632   -0.0076558    0.0017294
12-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                  0.0006819   -0.0067508    0.0081146
12-24 months   ki1148112-LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5           MALAWI                         1                    0                  0.0025983   -0.0725962    0.0777929
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  0.0045462   -0.0016540    0.0107465
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.0036304   -0.0019033    0.0091641
