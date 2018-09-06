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
![](/tmp/eb0204fe-b58e-4cf8-a1cd-7c94028c331f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/eb0204fe-b58e-4cf8-a1cd-7c94028c331f/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0331296   -0.0660468   -0.0002123
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.1406003   -0.2318130   -0.0493876
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.1811187    0.1296043    0.2326331
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.0153700   -0.2693708    0.2386308
0-3 months     ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0031641   -0.0460249    0.0396966
0-3 months     ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0870002   -0.1491968   -0.0248035
0-3 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0656947    0.0271214    0.1042680
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0535225   -0.1041218   -0.0029231
0-3 months     ki0047075b-MAL-ED          PERU                           0                    NA                -0.1709376   -0.2031882   -0.1386870
0-3 months     ki0047075b-MAL-ED          PERU                           1                    NA                 0.0071784   -0.2169376    0.2312944
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0865183   -0.1317033   -0.0413334
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.2932128   -0.4485592   -0.1378664
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0566039   -0.1674841    0.0542764
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.4029373   -0.7137562   -0.0921184
0-3 months     ki1000108-IRC              INDIA                          0                    NA                -0.1158570   -0.1714229   -0.0602910
0-3 months     ki1000108-IRC              INDIA                          1                    NA                -0.7410976   -0.8135879   -0.6686074
0-3 months     ki1000109-EE               PAKISTAN                       0                    NA                -0.4134171   -0.4547388   -0.3720954
0-3 months     ki1000109-EE               PAKISTAN                       1                    NA                -0.7591998   -0.9232476   -0.5951520
0-3 months     ki1000109-ResPak           PAKISTAN                       0                    NA                -0.2271069   -0.3792122   -0.0750015
0-3 months     ki1000109-ResPak           PAKISTAN                       1                    NA                -0.6065769   -0.9149657   -0.2981881
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0029580   -0.0186479    0.0245638
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0677246   -0.1244580   -0.0109912
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0981580   -0.1285500   -0.0677661
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.2124822   -0.2608583   -0.1641060
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0387119   -0.0587226   -0.0187011
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0705567   -0.1046485   -0.0364648
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.1074977   -0.1280446   -0.0869509
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.2052548   -0.2361827   -0.1743268
0-3 months     ki1101329-Keneba           GAMBIA                         0                    NA                -0.2768893   -0.2996568   -0.2541217
0-3 months     ki1101329-Keneba           GAMBIA                         1                    NA                -0.7326349   -0.9341364   -0.5311333
0-3 months     ki1114097-CMIN             BRAZIL                         0                    NA                -0.0988258   -0.1951155   -0.0025360
0-3 months     ki1114097-CMIN             BRAZIL                         1                    NA                -0.2352680   -0.6736805    0.2031445
0-3 months     ki1114097-CMIN             PERU                           0                    NA                -0.1218950   -0.1934049   -0.0503852
0-3 months     ki1114097-CMIN             PERU                           1                    NA                -0.0747876   -0.1663795    0.0168044
0-3 months     ki1119695-PROBIT           BELARUS                        0                    NA                -0.3764369   -0.4270065   -0.3258673
0-3 months     ki1119695-PROBIT           BELARUS                        1                    NA                -0.6680402   -0.7187885   -0.6172918
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0961785   -0.1065144   -0.0858425
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.5522916   -0.5762062   -0.5283770
0-3 months     ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.5147430   -0.5397196   -0.4897664
0-3 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.6483405   -0.6890625   -0.6076185
0-3 months     ki1135781-COHORTS          INDIA                          0                    NA                -0.0616149   -0.0690790   -0.0541508
0-3 months     ki1135781-COHORTS          INDIA                          1                    NA                -0.1413508   -0.1575452   -0.1251563
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0480272    0.0428702    0.0531842
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0155616   -0.0307867   -0.0003365
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0440397    0.0278584    0.0602210
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0162136   -0.0566707    0.0242436
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0271522   -0.0521980   -0.0021064
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0152822   -0.0682725    0.0377081
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0556314    0.0171789    0.0940839
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.0564131   -0.0764008    0.1892271
3-6 months     ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0490381   -0.0816007   -0.0164756
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    NA                 0.0039736   -0.0487042    0.0566514
3-6 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0257623   -0.0546177    0.0030931
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0242325   -0.0726767    0.0242117
3-6 months     ki0047075b-MAL-ED          PERU                           0                    NA                 0.0244433   -0.0068288    0.0557154
3-6 months     ki0047075b-MAL-ED          PERU                           1                    NA                -0.1208014   -0.2477390    0.0061361
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0069285   -0.0463568    0.0324999
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.0636115   -0.0806889    0.2079118
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0914435   -0.1490400   -0.0338469
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.1294016   -0.2147587   -0.0440445
3-6 months     ki1000108-IRC              INDIA                          0                    NA                -0.0580400   -0.0940216   -0.0220585
3-6 months     ki1000108-IRC              INDIA                          1                    NA                -0.0358905   -0.0847292    0.0129481
3-6 months     ki1000109-EE               PAKISTAN                       0                    NA                 0.0482053    0.0158797    0.0805310
3-6 months     ki1000109-EE               PAKISTAN                       1                    NA                 0.0760952    0.0000100    0.1521805
3-6 months     ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0093823   -0.0669189    0.0856834
3-6 months     ki1000109-ResPak           PAKISTAN                       1                    NA                 0.1260663   -0.0156944    0.2678270
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0245733   -0.0478407   -0.0013059
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0560462   -0.1051463   -0.0069461
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0571847   -0.0829324   -0.0314370
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.0319092   -0.0709483    0.0071300
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0249193   -0.0426254   -0.0072131
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0332737   -0.0666105    0.0000631
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0232422    0.0042008    0.0422836
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0412990    0.0115577    0.0710403
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0865882   -0.1036606   -0.0695158
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0432015   -0.0991640    0.0127610
3-6 months     ki1101329-Keneba           GAMBIA                         0                    NA                -0.0182167   -0.0369247    0.0004914
3-6 months     ki1101329-Keneba           GAMBIA                         1                    NA                 0.0455226   -0.0273214    0.1183666
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.1545284   -0.1748353   -0.1342214
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.2292181   -0.2684486   -0.1899876
3-6 months     ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0123788   -0.0467068    0.0219493
3-6 months     ki1114097-CMIN             BANGLADESH                     1                    NA                -0.0370095   -0.1579269    0.0839080
3-6 months     ki1114097-CMIN             BRAZIL                         0                    NA                -0.1650954   -0.2616464   -0.0685443
3-6 months     ki1114097-CMIN             BRAZIL                         1                    NA                 0.0613255   -0.1135466    0.2361976
3-6 months     ki1114097-CMIN             PERU                           0                    NA                -0.0573252   -0.0805751   -0.0340752
3-6 months     ki1114097-CMIN             PERU                           1                    NA                -0.0617008   -0.1355172    0.0121156
3-6 months     ki1119695-PROBIT           BELARUS                        0                    NA                 0.0589839    0.0425273    0.0754405
3-6 months     ki1119695-PROBIT           BELARUS                        1                    NA                -0.0022080   -0.0350703    0.0306542
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0136292   -0.0240743   -0.0031842
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0500529    0.0279988    0.0721070
3-6 months     ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0942320   -0.1105282   -0.0779358
3-6 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.1328869   -0.1571861   -0.1085876
3-6 months     ki1135781-COHORTS          INDIA                          0                    NA                -0.0597672   -0.0658980   -0.0536365
3-6 months     ki1135781-COHORTS          INDIA                          1                    NA                -0.0700363   -0.0836752   -0.0563975
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0220745   -0.0274214   -0.0167275
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0042307   -0.0105045    0.0189660
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0172189   -0.0317792   -0.0026586
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0462339   -0.0916497   -0.0008182
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0872623   -0.0990473   -0.0754773
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0712749   -0.0892271   -0.0533228
6-12 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0081804   -0.0122635    0.0286244
6-12 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.0245381   -0.1351312    0.0860550
6-12 months    ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0860545   -0.0996562   -0.0724528
6-12 months    ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0638767   -0.0876724   -0.0400810
6-12 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0531992   -0.0646406   -0.0417577
6-12 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0014976   -0.0278878    0.0248925
6-12 months    ki0047075b-MAL-ED          PERU                           0                    NA                -0.0373523   -0.0517094   -0.0229952
6-12 months    ki0047075b-MAL-ED          PERU                           1                    NA                -0.0379621   -0.1228539    0.0469297
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0578933   -0.0751200   -0.0406666
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.1210526   -0.1683492   -0.0737560
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0984014   -0.1221416   -0.0746612
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.1123675   -0.1461024   -0.0786325
6-12 months    ki1000108-IRC              INDIA                          0                    NA                -0.0394296   -0.0535105   -0.0253487
6-12 months    ki1000108-IRC              INDIA                          1                    NA                -0.0120428   -0.0351880    0.0111023
6-12 months    ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0024559   -0.0454965    0.0405847
6-12 months    ki1000109-ResPak           PAKISTAN                       1                    NA                -0.0460906   -0.1200196    0.0278385
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0919923   -0.0972689   -0.0867156
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0704272   -0.0948277   -0.0460268
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -0.1024451   -0.1380021   -0.0668881
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                -0.0912297   -0.1376647   -0.0447947
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0574367   -0.0681891   -0.0466843
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.0419151   -0.0589143   -0.0249160
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0657126   -0.0737129   -0.0577124
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0529180   -0.0667667   -0.0390693
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0372554   -0.0455870   -0.0289239
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0263486   -0.0389627   -0.0137346
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0587699   -0.0680860   -0.0494539
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0721498   -0.1060336   -0.0382659
6-12 months    ki1101329-Keneba           GAMBIA                         0                    NA                -0.0625633   -0.0704623   -0.0546643
6-12 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.0259977   -0.0673444    0.0153491
6-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0619274   -0.0708357   -0.0530190
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0630788   -0.0837483   -0.0424093
6-12 months    ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0835829   -0.0984454   -0.0687203
6-12 months    ki1114097-CMIN             BANGLADESH                     1                    NA                -0.0307406   -0.0941658    0.0326846
6-12 months    ki1114097-CMIN             BRAZIL                         0                    NA                -0.0337135   -0.0667547   -0.0006722
6-12 months    ki1114097-CMIN             BRAZIL                         1                    NA                -0.0950837   -0.1880802   -0.0020872
6-12 months    ki1114097-CMIN             PERU                           0                    NA                -0.0959782   -0.1069077   -0.0850488
6-12 months    ki1114097-CMIN             PERU                           1                    NA                -0.0736136   -0.1137915   -0.0334357
6-12 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0423067    0.0271034    0.0575100
6-12 months    ki1119695-PROBIT           BELARUS                        1                    NA                 0.0414478    0.0073073    0.0755883
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0545646   -0.0598307   -0.0492985
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0399392   -0.0502453   -0.0296332
6-12 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.1119115   -0.1198104   -0.1040126
6-12 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.1131300   -0.1270254   -0.0992346
6-12 months    ki1135781-COHORTS          INDIA                          0                    NA                -0.0931427   -0.0968832   -0.0894022
6-12 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.0877365   -0.0962139   -0.0792590
6-12 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.1002560   -0.1058445   -0.0946674
6-12 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.1017788   -0.1140054   -0.0895522
6-12 months    ki1148112-LCNI-5           MALAWI                         0                    NA                -0.0055914   -0.0160345    0.0048517
6-12 months    ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0563802   -0.2389988    0.1262384
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0805615   -0.0835788   -0.0775441
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0733307   -0.0813096   -0.0653519
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0438068   -0.0487381   -0.0388756
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0255993   -0.0372968   -0.0139018
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0189971   -0.0252606   -0.0127336
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0018730   -0.0105343    0.0067882
12-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0017156   -0.0092838    0.0127151
12-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.0608362   -0.1081109   -0.0135614
12-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0084629   -0.0141759   -0.0027498
12-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0037765   -0.0151096    0.0075566
12-24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0293749   -0.0348329   -0.0239168
12-24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0309491   -0.0457874   -0.0161108
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0159814   -0.0236217   -0.0083412
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.0426549    0.0217690    0.0635408
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0511368   -0.0631499   -0.0391238
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0298330   -0.0493547   -0.0103112
12-24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0266890   -0.0354073   -0.0179707
12-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0444628   -0.0566899   -0.0322358
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0424771   -0.0480304   -0.0369239
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.0415121   -0.0503286   -0.0326956
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0087771   -0.0130546   -0.0044996
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0013605   -0.0087737    0.0060527
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0048491   -0.0095643   -0.0001340
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0075433   -0.0144528   -0.0006338
12-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0216354   -0.0255224   -0.0177485
12-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0094038   -0.0222179    0.0034103
12-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0159648   -0.0211724   -0.0107572
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0159908   -0.0318749   -0.0001066
12-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0311327   -0.0398659   -0.0223995
12-24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                -0.0402696   -0.0727519   -0.0077873
12-24 months   ki1114097-CMIN             PERU                           0                    NA                -0.0294598   -0.0358235   -0.0230961
12-24 months   ki1114097-CMIN             PERU                           1                    NA                -0.0236108   -0.0799816    0.0327600
12-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                -0.0394772   -0.0570860   -0.0218684
12-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                -0.0554966   -0.0800131   -0.0309800
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0566647   -0.0674918   -0.0458376
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0286722   -0.0427638   -0.0145805
12-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0310083   -0.0351009   -0.0269157
12-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0229135   -0.0310766   -0.0147504
12-24 months   ki1135781-COHORTS          INDIA                          0                    NA                -0.0348774   -0.0366726   -0.0330821
12-24 months   ki1135781-COHORTS          INDIA                          1                    NA                -0.0387974   -0.0428260   -0.0347688
12-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0581416   -0.0608841   -0.0553991
12-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.0589434   -0.0651261   -0.0527607
12-24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                -0.0160585   -0.0216288   -0.0104881
12-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0134601   -0.0884481    0.0615278
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0222104   -0.0243396   -0.0200812
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0165798   -0.0221617   -0.0109980
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0164415   -0.0184999   -0.0143832
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0132713   -0.0182090   -0.0083336


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
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.1074707   -0.2042036   -0.0107378
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.1964887   -0.4556607    0.0626833
0-3 months     ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          1                    0                 -0.0838361   -0.1586337   -0.0090384
0-3 months     ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.1192172   -0.1830551   -0.0553792
0-3 months     ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           1                    0                  0.1781159   -0.0483086    0.4045405
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -0.2066945   -0.3682095   -0.0451794
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.3463335   -0.6763378   -0.0163292
0-3 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          1                    0                 -0.6252407   -0.7163505   -0.5341309
0-3 months     ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE               PAKISTAN                       1                    0                 -0.3457827   -0.5149347   -0.1766307
0-3 months     ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-ResPak           PAKISTAN                       1                    0                 -0.3794700   -0.7233351   -0.0356049
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1                    0                 -0.0706826   -0.1326662   -0.0086990
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     1                    0                 -0.1143241   -0.1714589   -0.0571894
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0318448   -0.0699913    0.0063018
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0977570   -0.1348826   -0.0606315
0-3 months     ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         1                    0                 -0.4557456   -0.6584239   -0.2530673
0-3 months     ki1114097-CMIN             BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CMIN             BRAZIL                         1                    0                 -0.1364423   -0.5853044    0.3124199
0-3 months     ki1114097-CMIN             PERU                           0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CMIN             PERU                           1                    0                  0.0471075   -0.0690939    0.1633088
0-3 months     ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        1                    0                 -0.2916033   -0.3446339   -0.2385727
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.4561132   -0.4821221   -0.4301043
0-3 months     ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      1                    0                 -0.1335976   -0.1812264   -0.0859687
0-3 months     ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          1                    0                 -0.0797359   -0.0974854   -0.0619864
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.0635889   -0.0792786   -0.0478992
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0602533   -0.1034132   -0.0170933
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.0118700   -0.0464205    0.0701606
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                    0                  0.0007818   -0.1374866    0.1390501
3-6 months     ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    0                  0.0530117   -0.0089178    0.1149413
3-6 months     ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    0                  0.0015298   -0.0544130    0.0574727
3-6 months     ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           1                    0                 -0.1452447   -0.2759777   -0.0145118
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.0705399   -0.0789452    0.2200251
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0379581   -0.1409299    0.0650137
3-6 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          1                    0                  0.0221495   -0.0376233    0.0819222
3-6 months     ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE               PAKISTAN                       1                    0                  0.0278899   -0.0550153    0.1107951
3-6 months     ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-ResPak           PAKISTAN                       1                    0                  0.1166840   -0.0443042    0.2776722
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1                    0                 -0.0314729   -0.0882597    0.0253138
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     1                    0                  0.0252755   -0.0210021    0.0715532
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0083544   -0.0447331    0.0280243
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  0.0180569   -0.0164788    0.0525925
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0433867   -0.0148632    0.1016365
3-6 months     ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         1                    0                  0.0637393   -0.0111957    0.1386743
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0746897   -0.1185441   -0.0308354
3-6 months     ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             BANGLADESH                     1                    0                 -0.0246307   -0.1502832    0.1010217
3-6 months     ki1114097-CMIN             BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             BRAZIL                         1                    0                  0.2264208    0.0266651    0.4261766
3-6 months     ki1114097-CMIN             PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             PERU                           1                    0                 -0.0043756   -0.0817039    0.0729527
3-6 months     ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        1                    0                 -0.0611919   -0.0897078   -0.0326761
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.0636821    0.0393120    0.0880523
3-6 months     ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      1                    0                 -0.0386549   -0.0668041   -0.0105056
3-6 months     ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          1                    0                 -0.0102691   -0.0251776    0.0046394
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  0.0263052    0.0108208    0.0417896
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0290150   -0.0765519    0.0185219
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.0159874   -0.0054050    0.0373798
6-12 months    ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.0327186   -0.1451854    0.0797483
6-12 months    ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA                          1                    0                  0.0221778   -0.0051828    0.0495384
6-12 months    ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          NEPAL                          1                    0                  0.0517015    0.0229102    0.0804928
6-12 months    ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          PERU                           1                    0                 -0.0006098   -0.0867070    0.0854875
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -0.0631593   -0.1135256   -0.0127931
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0139661   -0.0547772    0.0268451
6-12 months    ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA                          1                    0                  0.0273868    0.0008161    0.0539575
6-12 months    ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000109-ResPak           PAKISTAN                       1                    0                 -0.0436347   -0.1292047    0.0419353
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0                  0.0215650   -0.0041427    0.0472728
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  0.0112154   -0.0469877    0.0694186
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     1                    0                  0.0155215   -0.0044439    0.0354870
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0127947   -0.0031506    0.0287400
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  0.0109068   -0.0040004    0.0258140
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0133798   -0.0483828    0.0216232
6-12 months    ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1101329-Keneba           GAMBIA                         1                    0                  0.0365656   -0.0054713    0.0786025
6-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0011514   -0.0236115    0.0213087
6-12 months    ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN             BANGLADESH                     1                    0                  0.0528422   -0.0123011    0.1179856
6-12 months    ki1114097-CMIN             BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN             BRAZIL                         1                    0                 -0.0613702   -0.1600621    0.0373216
6-12 months    ki1114097-CMIN             PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN             PERU                           1                    0                  0.0223646   -0.0192626    0.0639918
6-12 months    ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS                        1                    0                 -0.0008589   -0.0308725    0.0291547
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.0146254    0.0030956    0.0261552
6-12 months    ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          GUATEMALA                      1                    0                 -0.0012185   -0.0168890    0.0144521
6-12 months    ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          INDIA                          1                    0                  0.0054062   -0.0038144    0.0146269
6-12 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                 -0.0015228   -0.0148866    0.0118409
6-12 months    ki1148112-LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5           MALAWI                         1                    0                 -0.0507888   -0.2337058    0.1321282
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  0.0072307   -0.0010203    0.0154818
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.0182075    0.0054226    0.0309925
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.0171241    0.0064388    0.0278095
12-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.0625518   -0.1110893   -0.0140143
12-24 months   ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          1                    0                  0.0046864   -0.0080062    0.0173790
12-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.0015742   -0.0173753    0.0142269
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.0586363    0.0362677    0.0810049
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.0213039   -0.0015159    0.0441236
12-24 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA                          1                    0                 -0.0177739   -0.0327363   -0.0028114
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0                  0.0009650   -0.0094333    0.0113634
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0074166   -0.0010964    0.0159297
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0026942   -0.0109819    0.0055936
12-24 months   ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1101329-Keneba           GAMBIA                         1                    0                  0.0122316   -0.0011037    0.0255670
12-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0000260   -0.0167223    0.0166703
12-24 months   ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1114097-CMIN             BANGLADESH                     1                    0                 -0.0091369   -0.0427445    0.0244708
12-24 months   ki1114097-CMIN             PERU                           0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1114097-CMIN             PERU                           1                    0                  0.0058490   -0.0508799    0.0625779
12-24 months   ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1119695-PROBIT           BELARUS                        1                    0                 -0.0160194   -0.0390963    0.0070576
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.0279926    0.0102511    0.0457340
12-24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                  0.0080948   -0.0008768    0.0170664
12-24 months   ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          INDIA                          1                    0                 -0.0039200   -0.0083077    0.0004677
12-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 -0.0008017   -0.0075198    0.0059163
12-24 months   ki1148112-LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5           MALAWI                         1                    0                  0.0025983   -0.0725962    0.0777929
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  0.0056306   -0.0002922    0.0115533
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.0031702   -0.0020181    0.0083585
