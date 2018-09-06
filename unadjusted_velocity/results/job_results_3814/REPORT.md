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

**Intervention Variable:** enstunt

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country                        enstunt    n_cell       n
-------------  -------------------------  -----------------------------  --------  -------  ------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0             203     244
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1              41     244
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0             163     180
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1              17     180
0-3 months     ki0047075b-MAL-ED          INDIA                          0             170     201
0-3 months     ki0047075b-MAL-ED          INDIA                          1              31     201
0-3 months     ki0047075b-MAL-ED          NEPAL                          0             157     175
0-3 months     ki0047075b-MAL-ED          NEPAL                          1              18     175
0-3 months     ki0047075b-MAL-ED          PERU                           0             238     271
0-3 months     ki0047075b-MAL-ED          PERU                           1              33     271
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0             205     229
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1              24     229
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             193     229
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              36     229
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0              71      87
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1              16      87
0-3 months     ki1000108-IRC              INDIA                          0             334     377
0-3 months     ki1000108-IRC              INDIA                          1              43     377
0-3 months     ki1000109-EE               PAKISTAN                       0             430     594
0-3 months     ki1000109-EE               PAKISTAN                       1             164     594
0-3 months     ki1000109-ResPak           PAKISTAN                       0              55      78
0-3 months     ki1000109-ResPak           PAKISTAN                       1              23      78
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          0             856    1168
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1             312    1168
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     0             477     566
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     1              89     566
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0             571     634
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1              63     634
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0             621     720
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1              99     720
0-3 months     ki1101329-Keneba           GAMBIA                         0            1203    1276
0-3 months     ki1101329-Keneba           GAMBIA                         1              73    1276
0-3 months     ki1114097-CMIN             BANGLADESH                     0              26      43
0-3 months     ki1114097-CMIN             BANGLADESH                     1              17      43
0-3 months     ki1114097-CMIN             BRAZIL                         0              77      81
0-3 months     ki1114097-CMIN             BRAZIL                         1               4      81
0-3 months     ki1114097-CMIN             GUINEA-BISSAU                  0              14      22
0-3 months     ki1114097-CMIN             GUINEA-BISSAU                  1               8      22
0-3 months     ki1114097-CMIN             PERU                           0              88      93
0-3 months     ki1114097-CMIN             PERU                           1               5      93
0-3 months     ki1114097-CONTENT          PERU                           0              28      29
0-3 months     ki1114097-CONTENT          PERU                           1               1      29
0-3 months     ki1119695-PROBIT           BELARUS                        0           12714   12745
0-3 months     ki1119695-PROBIT           BELARUS                        1              31   12745
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       0            7090    7864
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1             774    7864
0-3 months     ki1135781-COHORTS          GUATEMALA                      0             690     728
0-3 months     ki1135781-COHORTS          GUATEMALA                      1              38     728
0-3 months     ki1135781-COHORTS          INDIA                          0            5708    6465
0-3 months     ki1135781-COHORTS          INDIA                          1             757    6465
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0           27506   40090
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1           12584   40090
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0            2516    3614
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1            1098    3614
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0             195     231
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1              36     231
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0             187     208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1              21     208
3-6 months     ki0047075b-MAL-ED          INDIA                          0             194     229
3-6 months     ki0047075b-MAL-ED          INDIA                          1              35     229
3-6 months     ki0047075b-MAL-ED          NEPAL                          0             207     233
3-6 months     ki0047075b-MAL-ED          NEPAL                          1              26     233
3-6 months     ki0047075b-MAL-ED          PERU                           0             233     267
3-6 months     ki0047075b-MAL-ED          PERU                           1              34     267
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0             218     241
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1              23     241
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             201     239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              38     239
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0             246     307
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1              61     307
3-6 months     ki1000108-IRC              INDIA                          0             352     397
3-6 months     ki1000108-IRC              INDIA                          1              45     397
3-6 months     ki1000109-EE               PAKISTAN                       0             444     662
3-6 months     ki1000109-EE               PAKISTAN                       1             218     662
3-6 months     ki1000109-ResPak           PAKISTAN                       0             116     156
3-6 months     ki1000109-ResPak           PAKISTAN                       1              40     156
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          0             834    1124
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1             290    1124
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     0             441     523
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     1              82     523
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0             514     574
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1              60     574
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0             598     695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1              97     695
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0            1545    1660
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             115    1660
3-6 months     ki1101329-Keneba           GAMBIA                         0            1261    1397
3-6 months     ki1101329-Keneba           GAMBIA                         1             136    1397
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0             850     942
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1              92     942
3-6 months     ki1114097-CMIN             BANGLADESH                     0             114     185
3-6 months     ki1114097-CMIN             BANGLADESH                     1              71     185
3-6 months     ki1114097-CMIN             BRAZIL                         0              78      81
3-6 months     ki1114097-CMIN             BRAZIL                         1               3      81
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                  0             113     133
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                  1              20     133
3-6 months     ki1114097-CMIN             PERU                           0             389     407
3-6 months     ki1114097-CMIN             PERU                           1              18     407
3-6 months     ki1114097-CONTENT          PERU                           0             196     214
3-6 months     ki1114097-CONTENT          PERU                           1              18     214
3-6 months     ki1119695-PROBIT           BELARUS                        0           13208   13309
3-6 months     ki1119695-PROBIT           BELARUS                        1             101   13309
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       0            5282    5889
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1             607    5889
3-6 months     ki1135781-COHORTS          GUATEMALA                      0             693     805
3-6 months     ki1135781-COHORTS          GUATEMALA                      1             112     805
3-6 months     ki1135781-COHORTS          INDIA                          0            5754    6509
3-6 months     ki1135781-COHORTS          INDIA                          1             755    6509
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0           17558   25160
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1            7602   25160
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0            2650    3680
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1            1030    3680
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     0             184     220
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1              36     220
6-12 months    ki0047075b-MAL-ED          BRAZIL                         0             174     194
6-12 months    ki0047075b-MAL-ED          BRAZIL                         1              20     194
6-12 months    ki0047075b-MAL-ED          INDIA                          0             189     224
6-12 months    ki0047075b-MAL-ED          INDIA                          1              35     224
6-12 months    ki0047075b-MAL-ED          NEPAL                          0             204     230
6-12 months    ki0047075b-MAL-ED          NEPAL                          1              26     230
6-12 months    ki0047075b-MAL-ED          PERU                           0             206     237
6-12 months    ki0047075b-MAL-ED          PERU                           1              31     237
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0             209     232
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1              23     232
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             187     223
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              36     223
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0             258     323
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1              65     323
6-12 months    ki1000108-IRC              INDIA                          0             355     400
6-12 months    ki1000108-IRC              INDIA                          1              45     400
6-12 months    ki1000109-EE               PAKISTAN                       0               6       8
6-12 months    ki1000109-EE               PAKISTAN                       1               2       8
6-12 months    ki1000109-ResPak           PAKISTAN                       0             100     138
6-12 months    ki1000109-ResPak           PAKISTAN                       1              38     138
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          0             836    1137
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          1             301    1137
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0             201     332
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1             131     332
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     0             406     482
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     1              76     482
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0             487     545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1              58     545
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0             579     676
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1              97     676
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0            1012    1083
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              71    1083
6-12 months    ki1101329-Keneba           GAMBIA                         0            1186    1306
6-12 months    ki1101329-Keneba           GAMBIA                         1             120    1306
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      0             132     181
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1              49     181
6-12 months    ki1113344-GMS-Nepal        NEPAL                          0             852     950
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1              98     950
6-12 months    ki1114097-CMIN             BANGLADESH                     0              99     164
6-12 months    ki1114097-CMIN             BANGLADESH                     1              65     164
6-12 months    ki1114097-CMIN             BRAZIL                         0              89      93
6-12 months    ki1114097-CMIN             BRAZIL                         1               4      93
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  0             155     176
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  1              21     176
6-12 months    ki1114097-CMIN             PERU                           0             343     360
6-12 months    ki1114097-CMIN             PERU                           1              17     360
6-12 months    ki1114097-CONTENT          PERU                           0             195     213
6-12 months    ki1114097-CONTENT          PERU                           1              18     213
6-12 months    ki1119695-PROBIT           BELARUS                        0           12803   12896
6-12 months    ki1119695-PROBIT           BELARUS                        1              93   12896
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       0            4087    4571
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1             484    4571
6-12 months    ki1135781-COHORTS          GUATEMALA                      0             725     862
6-12 months    ki1135781-COHORTS          GUATEMALA                      1             137     862
6-12 months    ki1135781-COHORTS          INDIA                          0            4664    5270
6-12 months    ki1135781-COHORTS          INDIA                          1             606    5270
6-12 months    ki1135781-COHORTS          PHILIPPINES                    0            2277    2419
6-12 months    ki1135781-COHORTS          PHILIPPINES                    1             142    2419
6-12 months    ki1148112-LCNI-5           MALAWI                         0             273     434
6-12 months    ki1148112-LCNI-5           MALAWI                         1             161     434
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     0           13716   19665
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1            5949   19665
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0            4506    6224
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1            1718    6224
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     0             174     206
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1              32     206
12-24 months   ki0047075b-MAL-ED          BRAZIL                         0             149     165
12-24 months   ki0047075b-MAL-ED          BRAZIL                         1              16     165
12-24 months   ki0047075b-MAL-ED          INDIA                          0             188     225
12-24 months   ki0047075b-MAL-ED          INDIA                          1              37     225
12-24 months   ki0047075b-MAL-ED          NEPAL                          0             200     226
12-24 months   ki0047075b-MAL-ED          NEPAL                          1              26     226
12-24 months   ki0047075b-MAL-ED          PERU                           0             165     191
12-24 months   ki0047075b-MAL-ED          PERU                           1              26     191
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0             208     230
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              22     230
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             175     207
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              32     207
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0             259     324
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              65     324
12-24 months   ki1000108-IRC              INDIA                          0             352     396
12-24 months   ki1000108-IRC              INDIA                          1              44     396
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     0             351     421
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     1              70     421
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0             410     458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1              48     458
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0             426     495
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              69     495
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               2       2
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0       2
12-24 months   ki1101329-Keneba           GAMBIA                         0            1079    1175
12-24 months   ki1101329-Keneba           GAMBIA                         1              96    1175
12-24 months   ki1113344-GMS-Nepal        NEPAL                          0             660     734
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1              74     734
12-24 months   ki1114097-CMIN             BANGLADESH                     0              84     138
12-24 months   ki1114097-CMIN             BANGLADESH                     1              54     138
12-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0              45      50
12-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1               5      50
12-24 months   ki1114097-CMIN             PERU                           0             180     199
12-24 months   ki1114097-CMIN             PERU                           1              19     199
12-24 months   ki1114097-CONTENT          PERU                           0              33      38
12-24 months   ki1114097-CONTENT          PERU                           1               5      38
12-24 months   ki1119695-PROBIT           BELARUS                        0            2529    2533
12-24 months   ki1119695-PROBIT           BELARUS                        1               4    2533
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0             238     303
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1              65     303
12-24 months   ki1135781-COHORTS          GUATEMALA                      0             678     877
12-24 months   ki1135781-COHORTS          GUATEMALA                      1             199     877
12-24 months   ki1135781-COHORTS          INDIA                          0            3917    4442
12-24 months   ki1135781-COHORTS          INDIA                          1             525    4442
12-24 months   ki1135781-COHORTS          PHILIPPINES                    0            2134    2260
12-24 months   ki1135781-COHORTS          PHILIPPINES                    1             126    2260
12-24 months   ki1148112-LCNI-5           MALAWI                         0             197     310
12-24 months   ki1148112-LCNI-5           MALAWI                         1             113     310
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0            6436    9295
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1            2859    9295
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0            5103    7128
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1            2025    7128


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

* agecat: 0-3 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-12 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 12-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-24 months, studyid: ki1119695-PROBIT, country: BELARUS

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/a04b0184-05ce-4ce9-909a-c8704bfd99ee/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/a04b0184-05ce-4ce9-909a-c8704bfd99ee/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                3.5229301   3.4586179   3.5872424
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                3.7640413   3.5802496   3.9478330
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0                    NA                3.9702153   3.8687434   4.0716873
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                4.8252794   4.5740514   5.0765075
0-3 months     ki0047075b-MAL-ED          INDIA                          0                    NA                3.5391188   3.4568956   3.6213419
0-3 months     ki0047075b-MAL-ED          INDIA                          1                    NA                3.7811774   3.5550055   4.0073492
0-3 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                3.7738525   3.6978326   3.8498724
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                4.2273069   3.9669578   4.4876560
0-3 months     ki0047075b-MAL-ED          PERU                           0                    NA                3.2938760   3.2266594   3.3610926
0-3 months     ki0047075b-MAL-ED          PERU                           1                    NA                3.4744152   3.2979186   3.6509118
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                3.4037550   3.3120460   3.4954640
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                3.7990750   3.4998718   4.0982781
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                3.4354180   3.3527555   3.5180804
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                3.7297620   3.5376070   3.9219169
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                3.4661052   3.2436700   3.6885404
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                3.7783625   3.1129693   4.4437557
0-3 months     ki1000108-IRC              INDIA                          0                    NA                3.0620348   2.9497132   3.1743563
0-3 months     ki1000108-IRC              INDIA                          1                    NA                4.0342179   3.6771350   4.3913008
0-3 months     ki1000109-EE               PAKISTAN                       0                    NA                2.5177534   2.4260029   2.6095039
0-3 months     ki1000109-EE               PAKISTAN                       1                    NA                3.0241423   2.8659789   3.1823057
0-3 months     ki1000109-ResPak           PAKISTAN                       0                    NA                2.6697404   2.3717502   2.9677306
0-3 months     ki1000109-ResPak           PAKISTAN                       1                    NA                4.0402407   3.5819824   4.4984989
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          0                    NA                3.5518947   3.5165201   3.5872693
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                3.7394270   3.6776696   3.8011844
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     0                    NA                3.2517851   3.1950165   3.3085536
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     1                    NA                3.6406104   3.4877946   3.7934262
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                3.4642426   3.4236453   3.5048399
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                3.6496926   3.5147570   3.7846282
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                3.2700459   3.2292747   3.3108170
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                3.5087348   3.4095174   3.6079521
0-3 months     ki1101329-Keneba           GAMBIA                         0                    NA                3.0683536   3.0247989   3.1119083
0-3 months     ki1101329-Keneba           GAMBIA                         1                    NA                4.3914438   4.0927410   4.6901466
0-3 months     ki1114097-CMIN             BANGLADESH                     0                    NA                3.4631221   3.2913382   3.6349060
0-3 months     ki1114097-CMIN             BANGLADESH                     1                    NA                3.5410664   3.2834893   3.7986435
0-3 months     ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                3.4175251   3.0309787   3.8040714
0-3 months     ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                3.7429104   3.1006958   4.3851250
0-3 months     ki1114097-CMIN             PERU                           0                    NA                3.3146120   3.1746918   3.4545322
0-3 months     ki1114097-CMIN             PERU                           1                    NA                3.3320777   3.1518710   3.5122844
0-3 months     ki1119695-PROBIT           BELARUS                        0                    NA                2.8328204   2.7194236   2.9462172
0-3 months     ki1119695-PROBIT           BELARUS                        1                    NA                3.9648849   3.5523995   4.3773704
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                3.2928109   3.2714992   3.3141227
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                4.0841463   4.0198023   4.1484904
0-3 months     ki1135781-COHORTS          GUATEMALA                      0                    NA                2.5881559   2.5443354   2.6319764
0-3 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                3.0393853   2.8199353   3.2588353
0-3 months     ki1135781-COHORTS          INDIA                          0                    NA                3.5116924   3.4970039   3.5263810
0-3 months     ki1135781-COHORTS          INDIA                          1                    NA                3.8209054   3.7751852   3.8666256
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                3.6512764   3.6397756   3.6627771
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                3.8652594   3.8479515   3.8825673
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                3.5692999   3.5334826   3.6051173
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                3.7958059   3.7358287   3.8557831
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                1.9154650   1.8636880   1.9672420
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                1.9961943   1.8519703   2.1404183
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0                    NA                2.1258241   2.0416871   2.2099611
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                2.3436444   2.1294253   2.5578635
3-6 months     ki0047075b-MAL-ED          INDIA                          0                    NA                1.8486114   1.7808958   1.9163271
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    NA                2.0783637   1.9559431   2.2007842
3-6 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                1.9290951   1.8709387   1.9872514
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                2.2786348   2.1304960   2.4267736
3-6 months     ki0047075b-MAL-ED          PERU                           0                    NA                1.9900207   1.9200458   2.0599956
3-6 months     ki0047075b-MAL-ED          PERU                           1                    NA                2.2122635   2.0344849   2.3900421
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                1.9506936   1.8673137   2.0340735
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                2.2702857   1.9846350   2.5559365
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                1.8122553   1.7406593   1.8838513
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                1.9244272   1.7305261   2.1183283
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                1.7483723   1.6379917   1.8587529
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                2.0272677   1.7921580   2.2623775
3-6 months     ki1000108-IRC              INDIA                          0                    NA                1.8741437   1.8061833   1.9421041
3-6 months     ki1000108-IRC              INDIA                          1                    NA                1.9317540   1.7475317   2.1159764
3-6 months     ki1000109-EE               PAKISTAN                       0                    NA                1.9445580   1.8697824   2.0193337
3-6 months     ki1000109-EE               PAKISTAN                       1                    NA                2.1861641   2.0905534   2.2817747
3-6 months     ki1000109-ResPak           PAKISTAN                       0                    NA                1.9568210   1.8067053   2.1069368
3-6 months     ki1000109-ResPak           PAKISTAN                       1                    NA                2.3959704   2.0756743   2.7162666
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          0                    NA                1.9096781   1.8536669   1.9656893
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                2.0296894   1.9818272   2.0775516
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     0                    NA                1.8280255   1.7772027   1.8788483
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     1                    NA                1.8577855   1.7197473   1.9958238
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                1.9423795   1.9061473   1.9786116
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                2.1630435   2.0473020   2.2787850
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                1.9833618   1.9451343   2.0215892
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                2.1441111   2.0360815   2.2521406
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                1.7816130   1.7446651   1.8185610
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.9853719   1.8421347   2.1286091
3-6 months     ki1101329-Keneba           GAMBIA                         0                    NA                1.9828580   1.9410587   2.0246573
3-6 months     ki1101329-Keneba           GAMBIA                         1                    NA                2.0887422   1.9743350   2.2031495
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                1.6822482   1.6421384   1.7223580
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                1.9228027   1.7875943   2.0580112
3-6 months     ki1114097-CMIN             BANGLADESH                     0                    NA                1.8566633   1.7747765   1.9385500
3-6 months     ki1114097-CMIN             BANGLADESH                     1                    NA                2.0942564   1.9744287   2.2140841
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                1.9858028   1.8833105   2.0882951
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                2.4866420   2.2376725   2.7356114
3-6 months     ki1114097-CMIN             PERU                           0                    NA                1.8760465   1.8274676   1.9246254
3-6 months     ki1114097-CMIN             PERU                           1                    NA                2.2830605   2.1342408   2.4318802
3-6 months     ki1114097-CONTENT          PERU                           0                    NA                2.0614818   2.0118031   2.1111606
3-6 months     ki1114097-CONTENT          PERU                           1                    NA                2.3313864   2.1979256   2.4648473
3-6 months     ki1119695-PROBIT           BELARUS                        0                    NA                2.0899158   2.0486487   2.1311829
3-6 months     ki1119695-PROBIT           BELARUS                        1                    NA                2.2968567   2.1386530   2.4550604
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                1.9648082   1.9437851   1.9858313
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                2.0612797   1.9988053   2.1237542
3-6 months     ki1135781-COHORTS          GUATEMALA                      0                    NA                1.7434519   1.7114383   1.7754655
3-6 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                1.8745616   1.7790895   1.9700337
3-6 months     ki1135781-COHORTS          INDIA                          0                    NA                1.8599954   1.8472861   1.8727046
3-6 months     ki1135781-COHORTS          INDIA                          1                    NA                1.9780489   1.9412430   2.0148548
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                1.8804806   1.8689612   1.8920000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                2.0118922   1.9933833   2.0304010
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                1.8529964   1.8182332   1.8877596
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                2.0150993   1.9600869   2.0701118
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                1.1150606   1.0874924   1.1426288
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                1.1109795   1.0554709   1.1664880
6-12 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                1.3919306   1.3429668   1.4408943
6-12 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                1.3377644   1.1962454   1.4792833
6-12 months    ki0047075b-MAL-ED          INDIA                          0                    NA                1.1107620   1.0794422   1.1420818
6-12 months    ki0047075b-MAL-ED          INDIA                          1                    NA                1.1766423   1.1127867   1.2404980
6-12 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                1.2277010   1.2011705   1.2542316
6-12 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                1.1812093   1.0892160   1.2732026
6-12 months    ki0047075b-MAL-ED          PERU                           0                    NA                1.2123952   1.1778897   1.2469007
6-12 months    ki0047075b-MAL-ED          PERU                           1                    NA                1.1958538   1.0960904   1.2956172
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                1.1869574   1.1481852   1.2257297
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                1.2128739   0.9935692   1.4321787
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.9988856   0.9570064   1.0407648
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                1.0178823   0.9440805   1.0916840
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                1.0547376   0.9992419   1.1102333
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                1.0930492   1.0048390   1.1812593
6-12 months    ki1000108-IRC              INDIA                          0                    NA                1.2430556   1.2122508   1.2738603
6-12 months    ki1000108-IRC              INDIA                          1                    NA                1.2920443   1.2009580   1.3831307
6-12 months    ki1000109-ResPak           PAKISTAN                       0                    NA                1.2638142   1.1659696   1.3616588
6-12 months    ki1000109-ResPak           PAKISTAN                       1                    NA                1.3824181   1.2255721   1.5392640
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                1.0892524   1.0759983   1.1025064
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                1.1234487   1.1051420   1.1417554
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.9899420   0.8931441   1.0867399
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                1.0486473   0.9260198   1.1712748
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                1.1674791   1.1434689   1.1914892
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                1.1703668   1.1086930   1.2320407
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                1.1733362   1.1551234   1.1915489
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                1.1718332   1.1164464   1.2272200
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                1.2255626   1.2067537   1.2443715
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                1.2434640   1.1969120   1.2900160
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                1.2011927   1.1788868   1.2234986
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.1228395   1.0415883   1.2040907
6-12 months    ki1101329-Keneba           GAMBIA                         0                    NA                1.1857495   1.1658950   1.2056041
6-12 months    ki1101329-Keneba           GAMBIA                         1                    NA                1.1312537   1.0828013   1.1797060
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                1.0978379   1.0655334   1.1301425
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                1.1367976   1.0633483   1.2102468
6-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                1.1614937   1.1410620   1.1819254
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                1.2260769   1.1601372   1.2920167
6-12 months    ki1114097-CMIN             BANGLADESH                     0                    NA                1.0892975   1.0483583   1.1302367
6-12 months    ki1114097-CMIN             BANGLADESH                     1                    NA                1.1180873   1.0542280   1.1819466
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                1.0477221   0.9938043   1.1016399
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                1.1244708   0.9742707   1.2746710
6-12 months    ki1114097-CMIN             PERU                           0                    NA                1.1102416   1.0843483   1.1361348
6-12 months    ki1114097-CMIN             PERU                           1                    NA                1.1072817   1.0128075   1.2017560
6-12 months    ki1114097-CONTENT          PERU                           0                    NA                1.2941848   1.2637357   1.3246340
6-12 months    ki1114097-CONTENT          PERU                           1                    NA                1.3754423   1.2833008   1.4675838
6-12 months    ki1119695-PROBIT           BELARUS                        0                    NA                1.4703024   1.4318102   1.5087946
6-12 months    ki1119695-PROBIT           BELARUS                        1                    NA                1.5562715   1.4013455   1.7111976
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                1.1911553   1.1796557   1.2026549
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                1.2567034   1.2225810   1.2908258
6-12 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                1.0196348   1.0010583   1.0382114
6-12 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                1.0128137   0.9683226   1.0573047
6-12 months    ki1135781-COHORTS          INDIA                          0                    NA                1.0980066   1.0893907   1.1066225
6-12 months    ki1135781-COHORTS          INDIA                          1                    NA                1.0999896   1.0740166   1.1259626
6-12 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                1.0677920   1.0552573   1.0803267
6-12 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                1.0619162   1.0089949   1.1148375
6-12 months    ki1148112-LCNI-5           MALAWI                         0                    NA                1.2653289   1.2332832   1.2973746
6-12 months    ki1148112-LCNI-5           MALAWI                         1                    NA                1.3027368   1.2585926   1.3468810
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                1.0984344   1.0910848   1.1057839
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                1.1265266   1.1147623   1.1382909
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                1.1933915   1.1818563   1.2049267
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                1.2289810   1.2075998   1.2503622
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.8485124   0.8310603   0.8659644
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.8321871   0.7923971   0.8719772
12-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                0.9834921   0.9516711   1.0153131
12-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                0.9642319   0.8517533   1.0767105
12-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.8845543   0.8658650   0.9032435
12-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.8591278   0.8141925   0.9040631
12-24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.8647809   0.8487097   0.8808521
12-24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.8380729   0.7886519   0.8874938
12-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.8468437   0.8250586   0.8686287
12-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.8431825   0.7798685   0.9064966
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.8668256   0.8441502   0.8895009
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.8990347   0.8063517   0.9917177
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7644562   0.7384179   0.7904945
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7764551   0.7243584   0.8285518
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.7298504   0.6994308   0.7602699
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.7789533   0.7233513   0.8345554
12-24 months   ki1000108-IRC              INDIA                          0                    NA                0.8274121   0.8070602   0.8477640
12-24 months   ki1000108-IRC              INDIA                          1                    NA                0.8460763   0.7806731   0.9114795
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.7570795   0.7411897   0.7729692
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.7223277   0.6861540   0.7585013
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.8563358   0.8438234   0.8688483
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.8679391   0.8271560   0.9087223
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.8727535   0.8601207   0.8853862
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.8929800   0.8606154   0.9253446
12-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.8444520   0.8331728   0.8557311
12-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.8461430   0.8146533   0.8776328
12-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.8357285   0.8196037   0.8518533
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.8571165   0.8050967   0.9091362
12-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.7844338   0.7534983   0.8153693
12-24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                0.8028056   0.7623187   0.8432925
12-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.8480081   0.8082592   0.8877570
12-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.8822566   0.7821788   0.9823345
12-24 months   ki1114097-CMIN             PERU                           0                    NA                0.8341064   0.8152991   0.8529138
12-24 months   ki1114097-CMIN             PERU                           1                    NA                0.8806512   0.8117945   0.9495079
12-24 months   ki1114097-CONTENT          PERU                           0                    NA                0.9213903   0.8875395   0.9552412
12-24 months   ki1114097-CONTENT          PERU                           1                    NA                0.9560160   0.8427685   1.0692635
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.7133967   0.6844204   0.7423730
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.6971554   0.6396053   0.7547055
12-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.7756938   0.7634732   0.7879145
12-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.7896172   0.7665816   0.8126527
12-24 months   ki1135781-COHORTS          INDIA                          0                    NA                0.8301366   0.8249079   0.8353652
12-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.8065372   0.7915245   0.8215500
12-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.7066137   0.6990801   0.7141474
12-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.7090572   0.6768333   0.7412810
12-24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                0.8486154   0.8277150   0.8695158
12-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.8266647   0.7986700   0.8546594
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.7951825   0.7891835   0.8011816
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.7997927   0.7901279   0.8094574
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.8523150   0.8458691   0.8587608
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.8415446   0.8320841   0.8510050


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                3.5634447   3.5006347   3.6262547
0-3 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                4.0509714   3.9492443   4.1526985
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                3.5764512   3.4977133   3.6551891
0-3 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                3.8204935   3.7444190   3.8965681
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                3.3158605   3.2526447   3.3790763
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                3.4451859   3.3559092   3.5344627
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                3.4816904   3.4044928   3.5588880
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                3.5235318   3.3031217   3.7439420
0-3 months     ki1000108-IRC              INDIA                          NA                   NA                3.1729204   3.0609523   3.2848884
0-3 months     ki1000109-EE               PAKISTAN                       NA                   NA                2.6575645   2.5739973   2.7411317
0-3 months     ki1000109-ResPak           PAKISTAN                       NA                   NA                3.0738623   2.7876913   3.3600332
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                3.6019890   3.5739652   3.6300127
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                3.3129255   3.2581305   3.3677204
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                3.4826706   3.4434873   3.5218539
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                3.3028656   3.2646714   3.3410598
0-3 months     ki1101329-Keneba           GAMBIA                         NA                   NA                3.1440476   3.0964801   3.1916152
0-3 months     ki1114097-CMIN             BANGLADESH                     NA                   NA                3.4939373   3.3480209   3.6398536
0-3 months     ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                3.5358470   3.1901197   3.8815743
0-3 months     ki1114097-CMIN             PERU                           NA                   NA                3.3155510   3.1827969   3.4483051
0-3 months     ki1119695-PROBIT           BELARUS                        NA                   NA                2.8355739   2.7218468   2.9493011
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                3.3706967   3.3498056   3.3915878
0-3 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                2.6117091   2.5680119   2.6554063
0-3 months     ki1135781-COHORTS          INDIA                          NA                   NA                3.5478988   3.5336609   3.5621367
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                3.7184443   3.7081005   3.7287881
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                3.6381167   3.6070177   3.6692156
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                1.9280462   1.8787523   1.9773401
3-6 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                2.1478156   2.0686357   2.2269955
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                1.8837264   1.8224393   1.9450135
3-6 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.9680995   1.9120346   2.0241643
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                2.0183213   1.9525900   2.0840526
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                1.9811941   1.9001209   2.0622672
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.8300902   1.7622436   1.8979368
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                1.8037880   1.7029866   1.9045894
3-6 months     ki1000108-IRC              INDIA                          NA                   NA                1.8806738   1.8168757   1.9444719
3-6 months     ki1000109-EE               PAKISTAN                       NA                   NA                2.0241201   1.9636505   2.0845898
3-6 months     ki1000109-ResPak           PAKISTAN                       NA                   NA                2.0694234   1.9275918   2.2112551
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                1.9406419   1.8967379   1.9845458
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                1.8326915   1.7846731   1.8807099
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.9654454   1.9303798   2.0005110
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                2.0057973   1.9693775   2.0422170
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.7957288   1.7598510   1.8316067
3-6 months     ki1101329-Keneba           GAMBIA                         NA                   NA                1.9931660   1.9537919   2.0325400
3-6 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                1.7057418   1.6666784   1.7448052
3-6 months     ki1114097-CMIN             BANGLADESH                     NA                   NA                1.9478477   1.8775639   2.0181315
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                2.0611169   1.9615315   2.1607024
3-6 months     ki1114097-CMIN             PERU                           NA                   NA                1.8940471   1.8464513   1.9416429
3-6 months     ki1114097-CONTENT          PERU                           NA                   NA                2.0841841   2.0362519   2.1321163
3-6 months     ki1119695-PROBIT           BELARUS                        NA                   NA                2.0914863   2.0503474   2.1326251
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                1.9747519   1.9548124   1.9946914
3-6 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                1.7616932   1.7309393   1.7924472
3-6 months     ki1135781-COHORTS          INDIA                          NA                   NA                1.8736888   1.8616349   1.8857427
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                1.9201861   1.9097195   1.9306528
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                1.8983676   1.8684335   1.9283018
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                1.1143928   1.0896103   1.1391753
6-12 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                1.3863464   1.3400121   1.4326807
6-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                1.1210558   1.0926349   1.1494766
6-12 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.2224454   1.1966480   1.2482429
6-12 months    ki0047075b-MAL-ED          PERU                           NA                   NA                1.2102315   1.1775158   1.2429472
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                1.1895267   1.1483723   1.2306812
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.0019524   0.9648566   1.0390481
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                1.0624474   1.0146679   1.1102268
6-12 months    ki1000108-IRC              INDIA                          NA                   NA                1.2485668   1.2193308   1.2778028
6-12 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                1.2964732   1.2129800   1.3799664
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                1.0983052   1.0864567   1.1101538
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                1.0131058   0.9370457   1.0891660
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                1.1679344   1.1454934   1.1903754
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.1731762   1.1558671   1.1904853
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                1.2281313   1.2106849   1.2455776
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.1960560   1.1745115   1.2176004
6-12 months    ki1101329-Keneba           GAMBIA                         NA                   NA                1.1807423   1.1621509   1.1993337
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                1.1083850   1.0774528   1.1393172
6-12 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                1.1681560   1.1485303   1.1877817
6-12 months    ki1114097-CMIN             BANGLADESH                     NA                   NA                1.1007081   1.0652677   1.1361485
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                1.0568796   1.0059921   1.1077672
6-12 months    ki1114097-CMIN             PERU                           NA                   NA                1.1101018   1.0850311   1.1351725
6-12 months    ki1114097-CONTENT          PERU                           NA                   NA                1.3010517   1.2719491   1.3301542
6-12 months    ki1119695-PROBIT           BELARUS                        NA                   NA                1.4709224   1.4326640   1.5091808
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                1.1980958   1.1871818   1.2090098
6-12 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                1.0185507   1.0014002   1.0357013
6-12 months    ki1135781-COHORTS          INDIA                          NA                   NA                1.0982346   1.0900454   1.1064238
6-12 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                1.0674471   1.0552459   1.0796483
6-12 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                1.2792060   1.2531790   1.3052331
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                1.1069328   1.1001924   1.1136731
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                1.2032152   1.1928290   1.2136015
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.8459764   0.8299714   0.8619814
12-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.9816245   0.9508764   1.0123725
12-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.8803730   0.8630530   0.8976931
12-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.8617083   0.8463512   0.8770654
12-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.8463453   0.8256453   0.8670453
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.8699064   0.8475321   0.8922808
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7663111   0.7428636   0.7897586
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7397013   0.7128622   0.7665404
12-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.8294859   0.8099817   0.8489901
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.7513013   0.7366996   0.7659029
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.8575519   0.8455586   0.8695452
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.8755729   0.8637860   0.8873598
12-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.8445901   0.8339177   0.8552625
12-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.8378848   0.8224521   0.8533174
12-24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.7916227   0.7669686   0.8162769
12-24 months   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.8514329   0.8141742   0.8886917
12-24 months   ki1114097-CMIN             PERU                           NA                   NA                0.8385504   0.8202134   0.8568875
12-24 months   ki1114097-CONTENT          PERU                           NA                   NA                0.9259464   0.8927736   0.9591191
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.7099126   0.6840087   0.7358165
12-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7788532   0.7680491   0.7896573
12-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.8273474   0.8224020   0.8322928
12-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.7067500   0.6994129   0.7140870
12-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.8406140   0.8238233   0.8574047
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.7966005   0.7912918   0.8019093
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.8492552   0.8437966   0.8547138


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.2411112    0.0463922    0.4358301
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                    0                  0.8550641    0.5841174    1.1260107
0-3 months     ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          1                    0                  0.2420586    0.0014046    0.4827126
0-3 months     ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                    0                  0.4534544    0.1822337    0.7246752
0-3 months     ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           1                    0                  0.1805392   -0.0083235    0.3694019
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.3953200    0.0823774    0.7082625
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  0.2943440    0.0851632    0.5035248
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.3122573   -0.3893305    1.0138452
0-3 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          1                    0                  0.9721831    0.5978513    1.3465149
0-3 months     ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE               PAKISTAN                       1                    0                  0.5063889    0.3235397    0.6892380
0-3 months     ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-ResPak           PAKISTAN                       1                    0                  1.3705003    0.8238754    1.9171252
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1                    0                  0.1875322    0.1095735    0.2654910
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     1                    0                  0.3888254    0.2258059    0.5518448
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.1854500    0.0445396    0.3263605
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  0.2386889    0.1314212    0.3459566
0-3 months     ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         1                    0                  1.3230902    1.0212287    1.6249517
0-3 months     ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CMIN             BANGLADESH                     1                    0                  0.0779443   -0.2316613    0.3875499
0-3 months     ki1114097-CMIN             GUINEA-BISSAU                  0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CMIN             GUINEA-BISSAU                  1                    0                  0.3253853   -0.4241863    1.0749570
0-3 months     ki1114097-CMIN             PERU                           0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CMIN             PERU                           1                    0                  0.0174657   -0.2106837    0.2456150
0-3 months     ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        1                    0                  1.1320646    0.6942358    1.5698933
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.7913354    0.7235538    0.8591170
0-3 months     ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      1                    0                  0.4512294    0.2274470    0.6750117
0-3 months     ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          1                    0                  0.3092130    0.2611912    0.3572348
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  0.2139830    0.1947119    0.2332541
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.2265060    0.1557195    0.2972925
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.0807293   -0.0725072    0.2339658
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                    0                  0.2178203   -0.0123293    0.4479699
3-6 months     ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    0                  0.2297522    0.0898515    0.3696529
3-6 months     ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    0                  0.3495397    0.1903943    0.5086852
3-6 months     ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           1                    0                  0.2222428    0.0311886    0.4132971
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.3195922    0.0220211    0.6171632
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  0.1121718   -0.0945251    0.3188688
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.2788954    0.0191639    0.5386270
3-6 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          1                    0                  0.0576103   -0.1387477    0.2539684
3-6 months     ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE               PAKISTAN                       1                    0                  0.2416060    0.1202273    0.3629848
3-6 months     ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-ResPak           PAKISTAN                       1                    0                  0.4391494    0.0854202    0.7928786
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1                    0                  0.1200113    0.0439880    0.1960346
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     1                    0                  0.0297601   -0.1173369    0.1768571
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.2206641    0.0993839    0.3419442
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  0.1607493    0.0461556    0.2753430
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.2037589    0.0558331    0.3516847
3-6 months     ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         1                    0                  0.1058842   -0.0159197    0.2276881
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.2405545    0.0995222    0.3815869
3-6 months     ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             BANGLADESH                     1                    0                  0.2375931    0.0924583    0.3827279
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                  0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                  1                    0                  0.5008392    0.2315987    0.7700798
3-6 months     ki1114097-CMIN             PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             PERU                           1                    0                  0.4070140    0.2504662    0.5635618
3-6 months     ki1114097-CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CONTENT          PERU                           1                    0                  0.2699046    0.1274976    0.4123116
3-6 months     ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        1                    0                  0.2069409    0.0493221    0.3645596
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.0964715    0.0305547    0.1623883
3-6 months     ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      1                    0                  0.1311097    0.0304132    0.2318062
3-6 months     ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          1                    0                  0.1180535    0.0791151    0.1569919
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  0.1314115    0.1109548    0.1518683
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.1621029    0.0981003    0.2261055
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.0040811   -0.0660586    0.0578963
6-12 months    ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.0541662   -0.2039162    0.0955838
6-12 months    ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA                          1                    0                  0.0658804   -0.0052426    0.1370033
6-12 months    ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.0464918   -0.1422343    0.0492508
6-12 months    ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          PERU                           1                    0                 -0.0165414   -0.1221035    0.0890207
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.0259165   -0.1967893    0.2486223
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0189967   -0.0658595    0.1038528
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.0383116   -0.0659036    0.1425267
6-12 months    ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA                          1                    0                  0.0489888   -0.0471655    0.1451431
6-12 months    ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000109-ResPak           PAKISTAN                       1                    0                  0.1186039   -0.0662589    0.3034666
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0                  0.0341963    0.0151264    0.0532663
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  0.0587053   -0.0975231    0.2149338
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     1                    0                  0.0028877   -0.0632950    0.0690705
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0015029   -0.0598073    0.0568015
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  0.0179014   -0.0323068    0.0681096
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0783532   -0.1626105    0.0059042
6-12 months    ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1101329-Keneba           GAMBIA                         1                    0                 -0.0544959   -0.1068584   -0.0021334
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    0                  0.0389596   -0.0412799    0.1191991
6-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.0645832   -0.0044494    0.1336158
6-12 months    ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN             BANGLADESH                     1                    0                  0.0287898   -0.0470655    0.1046451
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  1                    0                  0.0767487   -0.0828358    0.2363332
6-12 months    ki1114097-CMIN             PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN             PERU                           1                    0                 -0.0029598   -0.1009182    0.0949985
6-12 months    ki1114097-CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CONTENT          PERU                           1                    0                  0.0812575   -0.0157848    0.1782998
6-12 months    ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS                        1                    0                  0.0859691   -0.0712471    0.2431853
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.0655481    0.0295401    0.1015562
6-12 months    ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          GUATEMALA                      1                    0                 -0.0068212   -0.0550347    0.0413923
6-12 months    ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          INDIA                          1                    0                  0.0019830   -0.0253818    0.0293478
6-12 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                 -0.0058758   -0.0602614    0.0485097
6-12 months    ki1148112-LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5           MALAWI                         1                    0                  0.0374079   -0.0171414    0.0919573
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  0.0280922    0.0153905    0.0407939
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.0355895    0.0116964    0.0594827
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.0163252   -0.0597743    0.0271238
12-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.0192602   -0.1361534    0.0976330
12-24 months   ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          1                    0                 -0.0254264   -0.0740934    0.0232405
12-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.0267081   -0.0786764    0.0252603
12-24 months   ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          PERU                           1                    0                 -0.0036611   -0.0706183    0.0632960
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.0322091   -0.0632074    0.1276256
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0119989   -0.0462425    0.0702402
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.0491030   -0.0142763    0.1124823
12-24 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA                          1                    0                  0.0186642   -0.0498323    0.0871608
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0                 -0.0347518   -0.0742615    0.0047579
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0116033   -0.0310561    0.0542627
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  0.0202265   -0.0145162    0.0549692
12-24 months   ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1101329-Keneba           GAMBIA                         1                    0                  0.0016911   -0.0317577    0.0351399
12-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.0213880   -0.0330736    0.0758496
12-24 months   ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1114097-CMIN             BANGLADESH                     1                    0                  0.0183718   -0.0325811    0.0693246
12-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    0                  0.0342486   -0.0734341    0.1419312
12-24 months   ki1114097-CMIN             PERU                           0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1114097-CMIN             PERU                           1                    0                  0.0465448   -0.0248342    0.1179238
12-24 months   ki1114097-CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1114097-CONTENT          PERU                           1                    0                  0.0346256   -0.0835728    0.1528241
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.0162413   -0.0806745    0.0481919
12-24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                  0.0139233   -0.0121531    0.0399998
12-24 months   ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          INDIA                          1                    0                 -0.0235993   -0.0394966   -0.0077021
12-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                  0.0024434   -0.0306493    0.0355362
12-24 months   ki1148112-LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5           MALAWI                         1                    0                 -0.0219507   -0.0568868    0.0129854
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  0.0046101   -0.0063307    0.0155509
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0107704   -0.0219697    0.0004290
