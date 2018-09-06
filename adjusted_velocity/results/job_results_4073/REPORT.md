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

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* vagbrth
* W_nrooms
* brthmon
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_vagbrth
* delta_W_nrooms
* delta_brthmon
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

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
![](/tmp/9c57c400-074a-4275-bc22-6b4b64e5fbea/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/9c57c400-074a-4275-bc22-6b4b64e5fbea/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                3.5852918   3.5184462   3.6521375
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                3.4100530   3.2638541   3.5562518
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0                    NA                4.0363982   3.9325314   4.1402649
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                3.6937709   3.2576772   4.1298646
0-3 months     ki0047075b-MAL-ED          INDIA                          0                    NA                3.6205739   3.5358102   3.7053377
0-3 months     ki0047075b-MAL-ED          INDIA                          1                    NA                3.3959256   3.2800778   3.5117733
0-3 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                3.8174153   3.7339324   3.9008983
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                3.6047090   3.4607348   3.7486831
0-3 months     ki0047075b-MAL-ED          PERU                           0                    NA                3.2972340   3.2332942   3.3611738
0-3 months     ki0047075b-MAL-ED          PERU                           1                    NA                3.6845815   3.3465404   4.0226227
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                3.4800116   3.3886478   3.5713755
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                3.4033861   3.1552507   3.6515216
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                3.5733281   3.3459168   3.8007393
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                2.8235016   2.1534736   3.4935296
0-3 months     ki1000108-IRC              INDIA                          0                    NA                3.4640769   3.3507022   3.5774515
0-3 months     ki1000108-IRC              INDIA                          1                    NA                2.2779850   2.1388683   2.4171017
0-3 months     ki1000109-EE               PAKISTAN                       0                    NA                2.6391549   2.5563526   2.7219572
0-3 months     ki1000109-EE               PAKISTAN                       1                    NA                1.8475125   1.5707410   2.1242839
0-3 months     ki1000109-ResPak           PAKISTAN                       0                    NA                3.0239178   2.7133905   3.3344450
0-3 months     ki1000109-ResPak           PAKISTAN                       1                    NA                2.3356851   1.7378456   2.9335245
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          0                    NA                3.6026582   3.5645501   3.6407664
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                3.4553001   3.3367908   3.5738093
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     0                    NA                3.3617674   3.2992559   3.4242789
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     1                    NA                3.1356442   3.0368690   3.2344195
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                3.5008231   3.4562356   3.5454106
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                3.4170348   3.3345929   3.4994767
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                3.3418305   3.2981161   3.3855448
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                3.1490856   3.0773115   3.2208598
0-3 months     ki1101329-Keneba           GAMBIA                         0                    NA                3.1641659   3.1189210   3.2094109
0-3 months     ki1101329-Keneba           GAMBIA                         1                    NA                2.1686146   1.7775365   2.5596928
0-3 months     ki1114097-CMIN             BRAZIL                         0                    NA                3.4927873   3.2983534   3.6872213
0-3 months     ki1114097-CMIN             BRAZIL                         1                    NA                3.3021885   2.3725231   4.2318540
0-3 months     ki1114097-CMIN             PERU                           0                    NA                3.3146767   3.1682443   3.4611091
0-3 months     ki1114097-CMIN             PERU                           1                    NA                3.3237111   3.2057849   3.4416373
0-3 months     ki1119695-PROBIT           BELARUS                        0                    NA                2.9475842   2.8481409   3.0470276
0-3 months     ki1119695-PROBIT           BELARUS                        1                    NA                2.4131237   2.3174703   2.5087771
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                3.4722401   3.4511430   3.4933373
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                2.5688181   2.5217710   2.6158651
0-3 months     ki1135781-COHORTS          GUATEMALA                      0                    NA                2.6540133   2.6039021   2.7041245
0-3 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                2.4780818   2.3947583   2.5614054
0-3 months     ki1135781-COHORTS          INDIA                          0                    NA                3.5586074   3.5432732   3.5739416
0-3 months     ki1135781-COHORTS          INDIA                          1                    NA                3.4091489   3.3762896   3.4420082
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                3.7023039   3.6912287   3.7133791
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                3.5621742   3.5316246   3.5927238
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                3.6121240   3.5772306   3.6470175
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                3.4851480   3.3996372   3.5706588
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                1.9303288   1.8780200   1.9826376
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                1.9636163   1.8844634   2.0427692
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0                    NA                2.1398261   2.0563619   2.2232903
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                2.1522238   1.8534456   2.4510020
3-6 months     ki0047075b-MAL-ED          INDIA                          0                    NA                1.8675078   1.7977244   1.9372911
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    NA                1.9923203   1.8894435   2.0951971
3-6 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                1.9607833   1.8996910   2.0218757
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                1.9392036   1.8220571   2.0563501
3-6 months     ki0047075b-MAL-ED          PERU                           0                    NA                2.0136891   1.9472066   2.0801716
3-6 months     ki0047075b-MAL-ED          PERU                           1                    NA                1.7508169   1.5080241   1.9936098
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                1.9698047   1.8861091   2.0535003
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                1.7383688   1.5431456   1.9335921
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                1.8223081   1.6994094   1.9452067
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                1.7281216   1.5529636   1.9032796
3-6 months     ki1000108-IRC              INDIA                          0                    NA                1.8665088   1.7885603   1.9444573
3-6 months     ki1000108-IRC              INDIA                          1                    NA                1.8924525   1.7772091   2.0076958
3-6 months     ki1000109-EE               PAKISTAN                       0                    NA                1.9848999   1.9149974   2.0548025
3-6 months     ki1000109-EE               PAKISTAN                       1                    NA                2.0477828   1.8736745   2.2218911
3-6 months     ki1000109-ResPak           PAKISTAN                       0                    NA                2.0132233   1.8501878   2.1762589
3-6 months     ki1000109-ResPak           PAKISTAN                       1                    NA                2.2225614   1.8976442   2.5474787
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          0                    NA                1.9326510   1.8795450   1.9857571
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                1.8588232   1.7548177   1.9628287
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     0                    NA                1.8254159   1.7695889   1.8812429
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     1                    NA                1.8696342   1.7843689   1.9548995
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                1.9748060   1.9368387   2.0127734
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                1.9410372   1.8714619   2.0106125
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                2.0006190   1.9588466   2.0423914
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                2.0427546   1.9789236   2.1065857
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                1.7906100   1.7537994   1.8274206
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.9047828   1.7849125   2.0246530
3-6 months     ki1101329-Keneba           GAMBIA                         0                    NA                1.9924216   1.9525287   2.0323146
3-6 months     ki1101329-Keneba           GAMBIA                         1                    NA                2.1042926   1.9486244   2.2599609
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                1.7323479   1.6896360   1.7750598
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                1.5672176   1.4794677   1.6549674
3-6 months     ki1114097-CMIN             BANGLADESH                     0                    NA                1.9445944   1.8698414   2.0193474
3-6 months     ki1114097-CMIN             BANGLADESH                     1                    NA                1.8970183   1.6580983   2.1359383
3-6 months     ki1114097-CMIN             BRAZIL                         0                    NA                1.6473054   1.4443443   1.8502664
3-6 months     ki1114097-CMIN             BRAZIL                         1                    NA                2.1926511   1.8164097   2.5688924
3-6 months     ki1114097-CMIN             PERU                           0                    NA                1.8954456   1.8460256   1.9448656
3-6 months     ki1114097-CMIN             PERU                           1                    NA                1.8749527   1.7157306   2.0341748
3-6 months     ki1119695-PROBIT           BELARUS                        0                    NA                2.1161348   2.0810226   2.1512469
3-6 months     ki1119695-PROBIT           BELARUS                        1                    NA                1.9894994   1.9176394   2.0613594
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                1.9546344   1.9323044   1.9769644
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                2.0639868   2.0169572   2.1110163
3-6 months     ki1135781-COHORTS          GUATEMALA                      0                    NA                1.7663142   1.7312845   1.8013439
3-6 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                1.6984682   1.6400167   1.7569197
3-6 months     ki1135781-COHORTS          INDIA                          0                    NA                1.8695687   1.8563052   1.8828322
3-6 months     ki1135781-COHORTS          INDIA                          1                    NA                1.8475510   1.8191829   1.8759190
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                1.8905706   1.8790316   1.9021097
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                1.9465150   1.9148923   1.9781377
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                1.8883276   1.8566045   1.9200508
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                1.8188854   1.7208316   1.9169392
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                1.1021473   1.0733731   1.1309215
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                1.1370391   1.1021129   1.1719653
6-12 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                1.3905928   1.3422366   1.4389490
6-12 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                1.3293853   1.0405977   1.6181729
6-12 months    ki0047075b-MAL-ED          INDIA                          0                    NA                1.1020987   1.0705026   1.1336949
6-12 months    ki0047075b-MAL-ED          INDIA                          1                    NA                1.1837626   1.1285215   1.2390037
6-12 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                1.2134986   1.1857934   1.2412038
6-12 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                1.2857657   1.2133626   1.3581687
6-12 months    ki0047075b-MAL-ED          PERU                           0                    NA                1.2109924   1.1775470   1.2444378
6-12 months    ki0047075b-MAL-ED          PERU                           1                    NA                1.2176231   1.0340842   1.4011620
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                1.1799422   1.1393171   1.2205674
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                1.0409396   0.9507440   1.1311353
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                1.0711912   1.0141031   1.1282793
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                1.0367224   0.9488709   1.1245738
6-12 months    ki1000108-IRC              INDIA                          0                    NA                1.2207910   1.1878783   1.2537037
6-12 months    ki1000108-IRC              INDIA                          1                    NA                1.2849416   1.2281050   1.3417783
6-12 months    ki1000109-ResPak           PAKISTAN                       0                    NA                1.3044395   1.2056020   1.4032769
6-12 months    ki1000109-ResPak           PAKISTAN                       1                    NA                1.2079698   1.0377109   1.3782286
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                1.0908135   1.0790484   1.1025786
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                1.1308458   1.0672640   1.1944275
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                1.0290515   0.9418933   1.1162098
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                1.0252852   0.9192140   1.1313564
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                1.1614825   1.1355691   1.1873959
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                1.1979057   1.1571103   1.2387010
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                1.1676148   1.1476048   1.1876248
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                1.1938804   1.1595453   1.2282155
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                1.2166711   1.1961785   1.2371637
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                1.2361570   1.2043214   1.2679927
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                1.1993593   1.1774797   1.2212389
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.1490445   1.0611641   1.2369250
6-12 months    ki1101329-Keneba           GAMBIA                         0                    NA                1.1792658   1.1605147   1.1980169
6-12 months    ki1101329-Keneba           GAMBIA                         1                    NA                1.3253416   1.2334244   1.4172588
6-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                1.1673821   1.1461994   1.1885648
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                1.1646045   1.1133526   1.2158563
6-12 months    ki1114097-CMIN             BANGLADESH                     0                    NA                1.0878293   1.0519552   1.1237034
6-12 months    ki1114097-CMIN             BANGLADESH                     1                    NA                1.2103273   1.0611854   1.3594693
6-12 months    ki1114097-CMIN             BRAZIL                         0                    NA                1.2574861   1.1753699   1.3396022
6-12 months    ki1114097-CMIN             BRAZIL                         1                    NA                1.1321891   0.9015671   1.3628110
6-12 months    ki1114097-CMIN             PERU                           0                    NA                1.1056865   1.0798038   1.1315691
6-12 months    ki1114097-CMIN             PERU                           1                    NA                1.1734026   1.0791005   1.2677048
6-12 months    ki1119695-PROBIT           BELARUS                        0                    NA                1.4705432   1.4358305   1.5052560
6-12 months    ki1119695-PROBIT           BELARUS                        1                    NA                1.4710813   1.3905062   1.5516564
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                1.1901302   1.1778081   1.2024523
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                1.2065625   1.1824774   1.2306475
6-12 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                1.0107995   0.9914177   1.0301812
6-12 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                1.0209189   0.9877605   1.0540772
6-12 months    ki1135781-COHORTS          INDIA                          0                    NA                1.0960670   1.0870724   1.1050617
6-12 months    ki1135781-COHORTS          INDIA                          1                    NA                1.1082297   1.0880506   1.1284087
6-12 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                1.0686161   1.0553005   1.0819317
6-12 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                1.0675407   1.0377953   1.0972862
6-12 months    ki1148112-LCNI-5           MALAWI                         0                    NA                1.2817845   1.2568269   1.3067421
6-12 months    ki1148112-LCNI-5           MALAWI                         1                    NA                1.1574451   0.7334598   1.5814305
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                1.1013442   1.0941625   1.1085258
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                1.1179832   1.0996006   1.1363657
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                1.1953134   1.1836255   1.2070014
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                1.2416185   1.2145811   1.2686560
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.8460242   0.8276715   0.8643769
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.9062641   0.8827960   0.9297323
12-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                0.9919957   0.9601512   1.0238402
12-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                0.8014441   0.6988348   0.9040534
12-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.8802685   0.8614663   0.8990707
12-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.8789577   0.8334602   0.9244552
12-24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.8626749   0.8464478   0.8789020
12-24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.8593422   0.8166164   0.9020680
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.8659015   0.8434742   0.8883288
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                1.0302301   0.9333485   1.1271118
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.7258767   0.6942842   0.7574691
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.7784909   0.7260791   0.8309027
12-24 months   ki1000108-IRC              INDIA                          0                    NA                0.8470800   0.8229711   0.8711889
12-24 months   ki1000108-IRC              INDIA                          1                    NA                0.7914291   0.7570366   0.8258216
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.7469544   0.7289971   0.7649118
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.7534914   0.7283606   0.7786222
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.8554446   0.8418465   0.8690427
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.8542249   0.8296148   0.8788350
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.8783650   0.8641411   0.8925890
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.8664648   0.8449772   0.8879523
12-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.8434777   0.8326033   0.8543522
12-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.8430051   0.8042701   0.8817402
12-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.8339052   0.8182345   0.8495760
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.8565729   0.8045853   0.9085605
12-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.7925467   0.7665479   0.8185455
12-24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                0.7760140   0.6883852   0.8636428
12-24 months   ki1114097-CMIN             PERU                           0                    NA                0.8382215   0.8200572   0.8563858
12-24 months   ki1114097-CMIN             PERU                           1                    NA                0.8464035   0.7051381   0.9876689
12-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                0.8708346   0.8166166   0.9250527
12-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.8224001   0.7540654   0.8907348
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.7026521   0.6724924   0.7328118
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.7962471   0.7660028   0.8264915
12-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.7756347   0.7635642   0.7877053
12-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.8125702   0.7893723   0.8357681
12-24 months   ki1135781-COHORTS          INDIA                          0                    NA                0.8293977   0.8239734   0.8348219
12-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.8208760   0.8086938   0.8330583
12-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.7058433   0.6978463   0.7138402
12-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.7111929   0.6934514   0.7289344
12-24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                0.8410951   0.8247237   0.8574666
12-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.8224530   0.6194327   1.0254734
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.7952771   0.7891858   0.8013684
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.8104103   0.7942766   0.8265439
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.8479868   0.8419128   0.8540607
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.8539735   0.8404183   0.8675286


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
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.1752389   -0.3357876   -0.0146902
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.3426273   -0.7909196    0.1056650
0-3 months     ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          1                    0                 -0.2246484   -0.3669681   -0.0823287
0-3 months     ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.2127064   -0.3802107   -0.0452020
0-3 months     ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           1                    0                  0.3873475    0.0433124    0.7313826
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -0.0766255   -0.3403905    0.1871395
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.7498264   -1.4573951   -0.0422578
0-3 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          1                    0                 -1.1860918   -1.3628395   -1.0093442
0-3 months     ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE               PAKISTAN                       1                    0                 -0.7916425   -1.0805916   -0.5026933
0-3 months     ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-ResPak           PAKISTAN                       1                    0                 -0.6882327   -1.3590255   -0.0174399
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1                    0                 -0.1473582   -0.2698610   -0.0248553
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     1                    0                 -0.2261231   -0.3430232   -0.1092231
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0837883   -0.1774974    0.0099208
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.1927448   -0.2766006   -0.1088890
0-3 months     ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         1                    0                 -0.9955513   -1.3893612   -0.6017414
0-3 months     ki1114097-CMIN             BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CMIN             BRAZIL                         1                    0                 -0.1905988   -1.1403790    0.7591814
0-3 months     ki1114097-CMIN             PERU                           0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CMIN             PERU                           1                    0                  0.0090344   -0.1789790    0.1970477
0-3 months     ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        1                    0                 -0.5344605   -0.6348276   -0.4340935
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.9034221   -0.9548217   -0.8520225
0-3 months     ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      1                    0                 -0.1759315   -0.2726375   -0.0792254
0-3 months     ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          1                    0                 -0.1494585   -0.1852096   -0.1137075
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.1401297   -0.1718153   -0.1084440
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.1269760   -0.2176404   -0.0363117
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.0332875   -0.0611557    0.1277308
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                    0                  0.0123977   -0.2978194    0.3226149
3-6 months     ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    0                  0.1248126    0.0005231    0.2491020
3-6 months     ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.0215797   -0.1535019    0.1103424
3-6 months     ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           1                    0                 -0.2628722   -0.5146028   -0.0111416
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -0.2314359   -0.4422759   -0.0205958
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0941865   -0.3081594    0.1197864
3-6 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          1                    0                  0.0259437   -0.1126936    0.1645809
3-6 months     ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE               PAKISTAN                       1                    0                  0.0628829   -0.1250087    0.2507744
3-6 months     ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-ResPak           PAKISTAN                       1                    0                  0.2093381   -0.1539604    0.5726366
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1                    0                 -0.0738278   -0.1898051    0.0421495
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     1                    0                  0.0442183   -0.0559400    0.1443766
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0337688   -0.1104602    0.0429225
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  0.0421357   -0.0333846    0.1176559
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.1141727   -0.0107959    0.2391413
3-6 months     ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         1                    0                  0.1118710   -0.0481898    0.2719319
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.1651303   -0.2621765   -0.0680841
3-6 months     ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             BANGLADESH                     1                    0                 -0.0475761   -0.2984486    0.2032964
3-6 months     ki1114097-CMIN             BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             BRAZIL                         1                    0                  0.5453457    0.1178522    0.9728393
3-6 months     ki1114097-CMIN             PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             PERU                           1                    0                 -0.0204929   -0.1872128    0.1462270
3-6 months     ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        1                    0                 -0.1266354   -0.1894472   -0.0638236
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.1093523    0.0573749    0.1613298
3-6 months     ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      1                    0                 -0.0678460   -0.1353676   -0.0003243
3-6 months     ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          1                    0                 -0.0220177   -0.0531707    0.0091352
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  0.0559444    0.0228586    0.0890303
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0694422   -0.1719153    0.0330308
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.0348918   -0.0100388    0.0798224
6-12 months    ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.0612075   -0.3540156    0.2316007
6-12 months    ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA                          1                    0                  0.0816639    0.0184553    0.1448724
6-12 months    ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          NEPAL                          1                    0                  0.0722671   -0.0051547    0.1496888
6-12 months    ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          PERU                           1                    0                  0.0066307   -0.1799306    0.1931920
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -0.1390026   -0.2367306   -0.0412746
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0344688   -0.1392389    0.0703012
6-12 months    ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA                          1                    0                  0.0641506   -0.0014292    0.1297305
6-12 months    ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000109-ResPak           PAKISTAN                       1                    0                 -0.0964697   -0.2933958    0.1004564
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0                  0.0400323   -0.0262814    0.1063459
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 -0.0037663   -0.1398788    0.1323462
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     1                    0                  0.0364231   -0.0115486    0.0843949
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0262656   -0.0133528    0.0658839
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  0.0194860   -0.0183217    0.0572936
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0503147   -0.1405971    0.0399676
6-12 months    ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1101329-Keneba           GAMBIA                         1                    0                  0.1460758    0.0524441    0.2397075
6-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0027776   -0.0582344    0.0526792
6-12 months    ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN             BANGLADESH                     1                    0                  0.1224980   -0.0308977    0.2758938
6-12 months    ki1114097-CMIN             BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN             BRAZIL                         1                    0                 -0.1252970   -0.3701021    0.1195081
6-12 months    ki1114097-CMIN             PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN             PERU                           1                    0                  0.0677162   -0.0300532    0.1654856
6-12 months    ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS                        1                    0                  0.0005381   -0.0699722    0.0710485
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.0164323   -0.0104734    0.0433379
6-12 months    ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          GUATEMALA                      1                    0                  0.0101194   -0.0276983    0.0479372
6-12 months    ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          INDIA                          1                    0                  0.0121626   -0.0097819    0.0341071
6-12 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                 -0.0010754   -0.0334678    0.0313170
6-12 months    ki1148112-LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5           MALAWI                         1                    0                 -0.1243394   -0.5490587    0.3003800
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  0.0166390   -0.0024262    0.0357042
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.0463051    0.0165698    0.0760405
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.0602400    0.0303384    0.0901416
12-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.1905516   -0.2979888   -0.0831145
12-24 months   ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          1                    0                 -0.0013108   -0.0505156    0.0478941
12-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.0033327   -0.0488696    0.0422042
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.1643286    0.0646787    0.2639785
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.0526142   -0.0085828    0.1138113
12-24 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA                          1                    0                 -0.0556509   -0.0975962   -0.0137056
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0                  0.0065370   -0.0242880    0.0373620
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0012197   -0.0291805    0.0267412
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0119003   -0.0376627    0.0138621
12-24 months   ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1101329-Keneba           GAMBIA                         1                    0                 -0.0004726   -0.0405747    0.0396294
12-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.0226677   -0.0315686    0.0769039
12-24 months   ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1114097-CMIN             BANGLADESH                     1                    0                 -0.0165327   -0.1079744    0.0749090
12-24 months   ki1114097-CMIN             PERU                           0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1114097-CMIN             PERU                           1                    0                  0.0081820   -0.1342464    0.1506105
12-24 months   ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1119695-PROBIT           BELARUS                        1                    0                 -0.0484345   -0.1097383    0.0128694
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.0935950    0.0531926    0.1339974
12-24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                  0.0369354    0.0113348    0.0625361
12-24 months   ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          INDIA                          1                    0                 -0.0085217   -0.0217128    0.0046695
12-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                  0.0053496   -0.0139704    0.0246695
12-24 months   ki1148112-LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5           MALAWI                         1                    0                 -0.0186421   -0.2223215    0.1850373
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  0.0151332   -0.0019047    0.0321711
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.0059867   -0.0083347    0.0203081
