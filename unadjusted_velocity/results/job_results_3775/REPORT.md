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
![](/tmp/a30a9cb4-04c3-4e90-9958-14ab922fd51a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/a30a9cb4-04c3-4e90-9958-14ab922fd51a/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0656832   -0.0981110   -0.0332553
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                 0.1234282    0.0347980    0.2120584
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.1440334    0.0940314    0.1940355
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.6610066    0.5276417    0.7943715
0-3 months     ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0457630   -0.0854587   -0.0060674
0-3 months     ki0047075b-MAL-ED          INDIA                          1                    NA                 0.1181706   -0.0016909    0.2380322
0-3 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0484598    0.0144264    0.0824932
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.3027971    0.1769700    0.4286241
0-3 months     ki0047075b-MAL-ED          PERU                           0                    NA                -0.1754690   -0.2093633   -0.1415748
0-3 months     ki0047075b-MAL-ED          PERU                           1                    NA                -0.0329025   -0.1302613    0.0644564
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.1260136   -0.1713414   -0.0806857
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.1042754   -0.0319228    0.2404737
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0856923   -0.1254803   -0.0459042
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1657344    0.0706092    0.2608596
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.1050312   -0.2135976    0.0035352
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                 0.0675333   -0.2529461    0.3880128
0-3 months     ki1000108-IRC              INDIA                          0                    NA                -0.3216195   -0.3771721   -0.2660669
0-3 months     ki1000108-IRC              INDIA                          1                    NA                 0.2230415    0.0471661    0.3989170
0-3 months     ki1000109-EE               PAKISTAN                       0                    NA                -0.4817079   -0.5280511   -0.4353647
0-3 months     ki1000109-EE               PAKISTAN                       1                    NA                -0.1634969   -0.2383817   -0.0886121
0-3 months     ki1000109-ResPak           PAKISTAN                       0                    NA                -0.4020015   -0.5493085   -0.2546946
0-3 months     ki1000109-ResPak           PAKISTAN                       1                    NA                 0.3051046    0.0647823    0.5454270
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0252182   -0.0451222   -0.0053142
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.1154096    0.0798610    0.1509581
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.1567641   -0.1844367   -0.1290914
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     1                    NA                 0.0826576    0.0099157    0.1553995
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0536044   -0.0723800   -0.0348288
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0700770    0.0103379    0.1298160
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.1458416   -0.1650460   -0.1266372
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0269546   -0.0177254    0.0716346
0-3 months     ki1101329-Keneba           GAMBIA                         0                    NA                -0.3289679   -0.3503945   -0.3075414
0-3 months     ki1101329-Keneba           GAMBIA                         1                    NA                 0.4386267    0.2857111    0.5915424
0-3 months     ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0144273   -0.0673899    0.0962445
0-3 months     ki1114097-CMIN             BANGLADESH                     1                    NA                 0.1091374   -0.0174422    0.2357170
0-3 months     ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                -0.0503100   -0.2543651    0.1537450
0-3 months     ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                 0.1859117   -0.0658552    0.4376786
0-3 months     ki1114097-CMIN             PERU                           0                    NA                -0.1212511   -0.1898448   -0.0526574
0-3 months     ki1114097-CMIN             PERU                           1                    NA                -0.0484351   -0.1575924    0.0607222
0-3 months     ki1119695-PROBIT           BELARUS                        0                    NA                -0.4390982   -0.4982617   -0.3799347
0-3 months     ki1119695-PROBIT           BELARUS                        1                    NA                 0.1809900   -0.0286909    0.3906708
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.1877345   -0.1982276   -0.1772415
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.2686316    0.2368347    0.3004284
0-3 months     ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.5582492   -0.5800693   -0.5364290
0-3 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.2699377   -0.3827079   -0.1571675
0-3 months     ki1135781-COHORTS          INDIA                          0                    NA                -0.0872423   -0.0943247   -0.0801598
0-3 months     ki1135781-COHORTS          INDIA                          1                    NA                 0.1255509    0.1034897    0.1476122
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0204236    0.0150062    0.0258411
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.1800395    0.1718005    0.1882784
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0187766    0.0022586    0.0352946
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                 0.1785356    0.1495036    0.2075675
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0331657   -0.0571856   -0.0091459
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                 0.0351375   -0.0330761    0.1033512
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0476679    0.0089158    0.0864200
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.1746719    0.0792633    0.2700804
3-6 months     ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0582129   -0.0894078   -0.0270179
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    NA                 0.0601327    0.0024489    0.1178166
3-6 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0415322   -0.0690221   -0.0140422
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.1383977    0.0704391    0.2063564
3-6 months     ki0047075b-MAL-ED          PERU                           0                    NA                 0.0112442   -0.0215703    0.0440586
3-6 months     ki0047075b-MAL-ED          PERU                           1                    NA                 0.1379601    0.0532652    0.2226550
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0150309   -0.0541556    0.0240938
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.1419143    0.0040139    0.2798146
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0847581   -0.1186324   -0.0508838
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0046360   -0.0857866    0.0950585
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.1285136   -0.1804818   -0.0765455
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                 0.0252488   -0.0858821    0.1363796
3-6 months     ki1000108-IRC              INDIA                          0                    NA                -0.0569517   -0.0889744   -0.0249290
3-6 months     ki1000108-IRC              INDIA                          1                    NA                -0.0123124   -0.0994218    0.0747970
3-6 months     ki1000109-EE               PAKISTAN                       0                    NA                 0.0245237   -0.0097779    0.0588254
3-6 months     ki1000109-EE               PAKISTAN                       1                    NA                 0.1629739    0.1182583    0.2076896
3-6 months     ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0222342   -0.0924753    0.0480070
3-6 months     ki1000109-ResPak           PAKISTAN                       1                    NA                 0.2157178    0.0693792    0.3620565
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0369284   -0.0611621   -0.0126947
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0417267    0.0194573    0.0639961
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0560430   -0.0794401   -0.0326460
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.0232451   -0.0865584    0.0400682
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0395618   -0.0565289   -0.0225946
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0782896    0.0249147    0.1316644
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0127076   -0.0048621    0.0302773
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.1134929    0.0641566    0.1628291
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0922578   -0.1093667   -0.0751488
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0202075   -0.0471613    0.0875762
3-6 months     ki1101329-Keneba           GAMBIA                         0                    NA                -0.0234292   -0.0429990   -0.0038593
3-6 months     ki1101329-Keneba           GAMBIA                         1                    NA                 0.0446714   -0.0083938    0.0977366
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.1808209   -0.1997743   -0.1618675
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0290339   -0.0887047    0.0306369
3-6 months     ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0619449   -0.0986133   -0.0252765
3-6 months     ki1114097-CMIN             BANGLADESH                     1                    NA                 0.0771029    0.0215347    0.1326712
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                -0.0129422   -0.0608397    0.0349554
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                 0.2552740    0.1363636    0.3741843
3-6 months     ki1114097-CMIN             PERU                           0                    NA                -0.0678558   -0.0905674   -0.0451443
3-6 months     ki1114097-CMIN             PERU                           1                    NA                 0.1634224    0.0979675    0.2288774
3-6 months     ki1114097-CONTENT          PERU                           0                    NA                 0.0000820   -0.0229780    0.0231421
3-6 months     ki1114097-CONTENT          PERU                           1                    NA                 0.1507645    0.0873253    0.2142036
3-6 months     ki1119695-PROBIT           BELARUS                        0                    NA                 0.0461653    0.0268693    0.0654613
3-6 months     ki1119695-PROBIT           BELARUS                        1                    NA                 0.1664438    0.0943132    0.2385745
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0075098   -0.0173365    0.0023170
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0559616    0.0267270    0.0851962
3-6 months     ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.1088305   -0.1239766   -0.0936845
3-6 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0190422   -0.0641670    0.0260826
3-6 months     ki1135781-COHORTS          INDIA                          0                    NA                -0.0655809   -0.0714317   -0.0597300
3-6 months     ki1135781-COHORTS          INDIA                          1                    NA                 0.0165133   -0.0003548    0.0333814
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0289785   -0.0342598   -0.0236971
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0555033    0.0468078    0.0641987
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0375505   -0.0535291   -0.0215719
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                 0.0642446    0.0393222    0.0891669
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0837956   -0.0953063   -0.0722849
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0651184   -0.0879252   -0.0423117
6-12 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0074094   -0.0132614    0.0280802
6-12 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.0007869   -0.0587679    0.0571941
6-12 months    ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0846838   -0.0979991   -0.0713684
6-12 months    ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0398109   -0.0668049   -0.0128169
6-12 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0491061   -0.0600874   -0.0381248
6-12 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0465094   -0.0846375   -0.0083813
6-12 months    ki0047075b-MAL-ED          PERU                           0                    NA                -0.0389595   -0.0537991   -0.0241199
6-12 months    ki0047075b-MAL-ED          PERU                           1                    NA                -0.0263689   -0.0687026    0.0159647
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0558839   -0.0721871   -0.0395808
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.0345848   -0.1272233    0.0580536
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1284374   -0.1460471   -0.1108276
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1010386   -0.1321974   -0.0698798
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.1056538   -0.1294348   -0.0818728
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0742764   -0.1127835   -0.0357692
6-12 months    ki1000108-IRC              INDIA                          0                    NA                -0.0305409   -0.0440846   -0.0169971
6-12 months    ki1000108-IRC              INDIA                          1                    NA                 0.0096881   -0.0303585    0.0497347
6-12 months    ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0241406   -0.0671218    0.0188406
6-12 months    ki1000109-ResPak           PAKISTAN                       1                    NA                 0.0378225   -0.0289708    0.1046157
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0956361   -0.1011532   -0.0901190
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0601121   -0.0685076   -0.0517167
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -0.1287631   -0.1678117   -0.0897145
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                -0.0761706   -0.1265536   -0.0257876
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0567800   -0.0666568   -0.0469032
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.0334257   -0.0594172   -0.0074342
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0644729   -0.0717469   -0.0571989
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0470160   -0.0695323   -0.0244998
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0354564   -0.0433015   -0.0276114
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0083422   -0.0274692    0.0107848
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0590153   -0.0685451   -0.0494855
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0718810   -0.1061873   -0.0375747
6-12 months    ki1101329-Keneba           GAMBIA                         0                    NA                -0.0609073   -0.0693175   -0.0524970
6-12 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.0663465   -0.0865035   -0.0461895
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                -0.0868329   -0.1000283   -0.0736376
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -0.0438173   -0.0740426   -0.0135920
6-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0666366   -0.0751166   -0.0581566
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0168047   -0.0441771    0.0105678
6-12 months    ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0897566   -0.1068922   -0.0726209
6-12 months    ki1114097-CMIN             BANGLADESH                     1                    NA                -0.0583284   -0.0846244   -0.0320324
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                -0.1263242   -0.1499039   -0.1027444
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                -0.0676548   -0.1297436   -0.0055659
6-12 months    ki1114097-CMIN             PERU                           0                    NA                -0.0959361   -0.1068462   -0.0850259
6-12 months    ki1114097-CMIN             PERU                           1                    NA                -0.0638036   -0.1056408   -0.0219663
6-12 months    ki1114097-CONTENT          PERU                           0                    NA                -0.0281982   -0.0410784   -0.0153179
6-12 months    ki1114097-CONTENT          PERU                           1                    NA                 0.0366434   -0.0024906    0.0757774
6-12 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0417995    0.0251497    0.0584492
6-12 months    ki1119695-PROBIT           BELARUS                        1                    NA                 0.1094426    0.0443153    0.1745700
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0536853   -0.0585838   -0.0487869
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0119316   -0.0264455    0.0025824
6-12 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.1126965   -0.1203160   -0.1050769
6-12 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0901767   -0.1085041   -0.0718493
6-12 months    ki1135781-COHORTS          INDIA                          0                    NA                -0.0938296   -0.0974080   -0.0902511
6-12 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.0703744   -0.0813433   -0.0594055
6-12 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.1011965   -0.1064457   -0.0959473
6-12 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.0797768   -0.1018772   -0.0576764
6-12 months    ki1148112-LCNI-5           MALAWI                         0                    NA                -0.0230510   -0.0362250   -0.0098771
6-12 months    ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0211748    0.0027599    0.0395898
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0846031   -0.0876656   -0.0815406
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0523767   -0.0574458   -0.0473076
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0481939   -0.0529945   -0.0433933
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0125413   -0.0215598   -0.0035227
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0194562   -0.0253356   -0.0135769
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0091097   -0.0223509    0.0041315
12-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0012764   -0.0123457    0.0097928
12-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.0015356   -0.0380798    0.0350086
12-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0114328   -0.0170003   -0.0058652
12-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0020103   -0.0149415    0.0109210
12-24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0310068   -0.0363042   -0.0257094
12-24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0180075   -0.0338731   -0.0021419
12-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                -0.0118009   -0.0192858   -0.0043161
12-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                 0.0068947   -0.0119691    0.0257585
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0175706   -0.0251206   -0.0100206
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.0057017   -0.0273556    0.0387590
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0421544   -0.0506998   -0.0336090
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0238617   -0.0422727   -0.0054508
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0507702   -0.0623036   -0.0392369
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0245919   -0.0452730   -0.0039108
12-24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0343412   -0.0416236   -0.0270588
12-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0111886   -0.0358769    0.0134997
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0419775   -0.0470410   -0.0369140
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.0326573   -0.0443881   -0.0209264
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0099375   -0.0139461   -0.0059289
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0069109   -0.0053639    0.0191856
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0089014   -0.0131276   -0.0046752
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0138314    0.0031013    0.0245614
12-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0221375   -0.0261452   -0.0181298
12-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0026368   -0.0141087    0.0088350
12-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0186733   -0.0238352   -0.0135113
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0121581   -0.0049332    0.0292494
12-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0415623   -0.0517016   -0.0314229
12-24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                -0.0160938   -0.0293978   -0.0027898
12-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                -0.0301714   -0.0450238   -0.0153190
12-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                 0.0230707   -0.0103434    0.0564848
12-24 months   ki1114097-CMIN             PERU                           0                    NA                -0.0331351   -0.0395342   -0.0267360
12-24 months   ki1114097-CMIN             PERU                           1                    NA                 0.0078221   -0.0181605    0.0338047
12-24 months   ki1114097-CONTENT          PERU                           0                    NA                -0.0289009   -0.0412848   -0.0165169
12-24 months   ki1114097-CONTENT          PERU                           1                    NA                 0.0074973   -0.0304434    0.0454380
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0531950   -0.0634537   -0.0429363
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0464286   -0.0668745   -0.0259827
12-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0353552   -0.0394296   -0.0312807
12-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0104131   -0.0180940   -0.0027323
12-24 months   ki1135781-COHORTS          INDIA                          0                    NA                -0.0363000   -0.0380183   -0.0345818
12-24 months   ki1135781-COHORTS          INDIA                          1                    NA                -0.0232554   -0.0282976   -0.0182131
12-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0588104   -0.0613886   -0.0562321
12-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.0380336   -0.0494702   -0.0265969
12-24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                -0.0230608   -0.0302551   -0.0158665
12-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0036668   -0.0128518    0.0055181
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0245632   -0.0266375   -0.0224889
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0058864   -0.0091302   -0.0026427
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0185902   -0.0207773   -0.0164030
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0045469   -0.0079515   -0.0011424


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0339062   -0.0659795   -0.0018330
0-3 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.1928587    0.1409027    0.2448147
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0204797   -0.0596747    0.0187152
0-3 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.0746202    0.0395269    0.1097135
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                -0.1581085   -0.1906285   -0.1255886
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.1018785   -0.1458569   -0.0579001
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0461667   -0.0847570   -0.0075763
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0732952   -0.1806423    0.0340519
0-3 months     ki1000108-IRC              INDIA                          NA                   NA                -0.2594964   -0.3154509   -0.2035418
0-3 months     ki1000109-EE               PAKISTAN                       NA                   NA                -0.3938516   -0.4364614   -0.3512419
0-3 months     ki1000109-ResPak           PAKISTAN                       NA                   NA                -0.1934958   -0.3384003   -0.0485914
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                 0.0123467   -0.0036133    0.0283068
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.1191165   -0.1460676   -0.0921654
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0413143   -0.0594662   -0.0231624
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.1220821   -0.1402761   -0.1038881
0-3 months     ki1101329-Keneba           GAMBIA                         NA                   NA                -0.2850538   -0.3091443   -0.2609633
0-3 months     ki1114097-CMIN             BANGLADESH                     NA                   NA                 0.0518708   -0.0198773    0.1236190
0-3 months     ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                 0.0355888   -0.1305606    0.2017381
0-3 months     ki1114097-CMIN             PERU                           NA                   NA                -0.1173363   -0.1825933   -0.0520792
0-3 months     ki1119695-PROBIT           BELARUS                        NA                   NA                -0.4375900   -0.4969173   -0.3782626
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.1428175   -0.1532252   -0.1324098
0-3 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.5431999   -0.5652020   -0.5211979
0-3 months     ki1135781-COHORTS          INDIA                          NA                   NA                -0.0623259   -0.0692941   -0.0553576
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                 0.0705261    0.0655716    0.0754805
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                 0.0673143    0.0523756    0.0822531
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0225211   -0.0456381    0.0005960
3-6 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0604904    0.0239698    0.0970111
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0401251   -0.0685271   -0.0117231
3-6 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0214542   -0.0480456    0.0051373
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                 0.0273803   -0.0036374    0.0583980
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0000528   -0.0382594    0.0381539
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0705448   -0.1027245   -0.0383652
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0979615   -0.1455947   -0.0503283
3-6 months     ki1000108-IRC              INDIA                          NA                   NA                -0.0518918   -0.0819849   -0.0217987
3-6 months     ki1000109-EE               PAKISTAN                       NA                   NA                 0.0701161    0.0419135    0.0983187
3-6 months     ki1000109-ResPak           PAKISTAN                       NA                   NA                 0.0387792   -0.0275800    0.1051384
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0166348   -0.0360336    0.0027639
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0509007   -0.0730097   -0.0287917
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0272428   -0.0436954   -0.0107902
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0267740    0.0099602    0.0435879
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0844665   -0.1011169   -0.0678162
3-6 months     ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0167995   -0.0352345    0.0016355
3-6 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.1659967   -0.1845182   -0.1474752
3-6 months     ki1114097-CMIN             BANGLADESH                     NA                   NA                -0.0085806   -0.0411510    0.0239898
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                 0.0273911   -0.0199724    0.0747545
3-6 months     ki1114097-CMIN             PERU                           NA                   NA                -0.0576273   -0.0800097   -0.0352449
3-6 months     ki1114097-CONTENT          PERU                           NA                   NA                 0.0127563   -0.0097402    0.0352528
3-6 months     ki1119695-PROBIT           BELARUS                        NA                   NA                 0.0470780    0.0278572    0.0662989
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0009676   -0.0102953    0.0083602
3-6 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0963382   -0.1109683   -0.0817082
3-6 months     ki1135781-COHORTS          INDIA                          NA                   NA                -0.0560585   -0.0616251   -0.0504918
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0034526   -0.0083193    0.0014141
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0090589   -0.0227889    0.0046710
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0807393   -0.0911050   -0.0703737
6-12 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0065644   -0.0129183    0.0260472
6-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0776724   -0.0898619   -0.0654829
6-12 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0488126   -0.0594641   -0.0381610
6-12 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0373127   -0.0513600   -0.0232653
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0537724   -0.0711138   -0.0364310
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1240143   -0.1396706   -0.1083579
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0993395   -0.1199006   -0.0787784
6-12 months    ki1000108-IRC              INDIA                          NA                   NA                -0.0260151   -0.0389122   -0.0131180
6-12 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                -0.0070783   -0.0435451    0.0293884
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0862318   -0.0909003   -0.0815633
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -0.1080113   -0.1390238   -0.0769988
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0530976   -0.0624028   -0.0437924
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0626151   -0.0695574   -0.0556729
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0315658   -0.0388594   -0.0242722
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0598587   -0.0690454   -0.0506721
6-12 months    ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0614070   -0.0692663   -0.0535478
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                -0.0751878   -0.0881244   -0.0622513
6-12 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0614960   -0.0697225   -0.0532696
6-12 months    ki1114097-CMIN             BANGLADESH                     NA                   NA                -0.0773003   -0.0921728   -0.0624278
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                -0.1193239   -0.1415513   -0.0970964
6-12 months    ki1114097-CMIN             PERU                           NA                   NA                -0.0944187   -0.1050232   -0.0838142
6-12 months    ki1114097-CONTENT          PERU                           NA                   NA                -0.0227186   -0.0352036   -0.0102335
6-12 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.0422873    0.0257506    0.0588239
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0492642   -0.0539207   -0.0446077
6-12 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.1091173   -0.1161782   -0.1020564
6-12 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.0911324   -0.0945473   -0.0877176
6-12 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.0999391   -0.1050516   -0.0948266
6-12 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0066447   -0.0175712    0.0042818
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0748541   -0.0776954   -0.0720127
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0383528   -0.0427166   -0.0339890
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0178490   -0.0232486   -0.0124494
12-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.0013016   -0.0119070    0.0093038
12-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0098833   -0.0150187   -0.0047479
12-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0295113   -0.0345712   -0.0244514
12-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0092560   -0.0162726   -0.0022393
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0153445   -0.0229210   -0.0077680
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0393265   -0.0471437   -0.0315094
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0455184   -0.0556929   -0.0353439
12-24 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0317687   -0.0388357   -0.0247017
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0404278   -0.0450901   -0.0357656
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0081718   -0.0120131   -0.0043304
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0057326   -0.0097260   -0.0017391
12-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0205442   -0.0243542   -0.0167343
12-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0155649   -0.0206065   -0.0105234
12-24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                -0.0315963   -0.0399345   -0.0232582
12-24 months   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                -0.0248472   -0.0393333   -0.0103611
12-24 months   ki1114097-CMIN             PERU                           NA                   NA                -0.0292246   -0.0357414   -0.0227079
12-24 months   ki1114097-CONTENT          PERU                           NA                   NA                -0.0241116   -0.0366136   -0.0116097
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0517435   -0.0609232   -0.0425638
12-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0296956   -0.0333614   -0.0260298
12-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -0.0347583   -0.0363912   -0.0331254
12-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.0576520   -0.0601763   -0.0551277
12-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0159914   -0.0217529   -0.0102299
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0188185   -0.0206653   -0.0169717
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0146006   -0.0164813   -0.0127200


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.1891114    0.0947350   0.2834877
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                    0                  0.5169731    0.3745428   0.6594035
0-3 months     ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          1                    0                  0.1639337    0.0376699   0.2901974
0-3 months     ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                    0                  0.2543373    0.1239888   0.3846857
0-3 months     ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           1                    0                  0.1425666    0.0394765   0.2456567
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.2302890    0.0867460   0.3738320
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  0.2514267    0.1483156   0.3545377
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.1725645   -0.1658047   0.5109338
0-3 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     ki1000108-IRC              INDIA                          1                    0                  0.5446611    0.3602207   0.7291014
0-3 months     ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     ki1000109-EE               PAKISTAN                       1                    0                  0.3182110    0.2301461   0.4062759
0-3 months     ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     ki1000109-ResPak           PAKISTAN                       1                    0                  0.7071062    0.4252300   0.9889823
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1                    0                  0.1406278    0.0965802   0.1846753
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     1                    0                  0.2394217    0.1615939   0.3172495
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.1236814    0.0610612   0.1863015
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  0.1727961    0.1241638   0.2214285
0-3 months     ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         1                    0                  0.7675947    0.6131852   0.9220042
0-3 months     ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     ki1114097-CMIN             BANGLADESH                     1                    0                  0.0947101   -0.0560097   0.2454299
0-3 months     ki1114097-CMIN             GUINEA-BISSAU                  0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     ki1114097-CMIN             GUINEA-BISSAU                  1                    0                  0.2362218   -0.0878539   0.5602975
0-3 months     ki1114097-CMIN             PERU                           0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     ki1114097-CMIN             PERU                           1                    0                  0.0728160   -0.0561042   0.2017361
0-3 months     ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        1                    0                  0.6200882    0.3925875   0.8475889
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.4563661    0.4228826   0.4898496
0-3 months     ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      1                    0                  0.2883114    0.1734496   0.4031732
0-3 months     ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          1                    0                  0.2127932    0.1896230   0.2359634
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  0.1596158    0.1503660   0.1688657
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.1597590    0.1257956   0.1937224
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.0683032   -0.0040158   0.1406223
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                    0                  0.1270040    0.0240257   0.2299822
3-6 months     ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    0                  0.1183456    0.0527670   0.1839242
3-6 months     ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    0                  0.1799299    0.1066218   0.2532380
3-6 months     ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           1                    0                  0.1267159    0.0358864   0.2175455
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.1569452    0.0136020   0.3002883
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0893941   -0.0071653   0.1859534
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.1537624    0.0310809   0.2764439
3-6 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     ki1000108-IRC              INDIA                          1                    0                  0.0446393   -0.0481697   0.1374483
3-6 months     ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     ki1000109-EE               PAKISTAN                       1                    0                  0.1384502    0.0820934   0.1948070
3-6 months     ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     ki1000109-ResPak           PAKISTAN                       1                    0                  0.2379520    0.0756288   0.4002752
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1                    0                  0.0786551    0.0446068   0.1127034
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     1                    0                  0.0327979   -0.0347002   0.1002961
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.1178513    0.0618445   0.1738581
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  0.1007853    0.0484139   0.1531567
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.1124653    0.0429580   0.1819725
3-6 months     ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         1                    0                  0.0681005    0.0115418   0.1246593
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.1517870    0.0891784   0.2143956
3-6 months     ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     ki1114097-CMIN             BANGLADESH                     1                    0                  0.1390478    0.0724716   0.2056241
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                  0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                  1                    0                  0.2682161    0.1400216   0.3964107
3-6 months     ki1114097-CMIN             PERU                           0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     ki1114097-CMIN             PERU                           1                    0                  0.2312783    0.1619950   0.3005615
3-6 months     ki1114097-CONTENT          PERU                           0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     ki1114097-CONTENT          PERU                           1                    0                  0.1506824    0.0831821   0.2181828
3-6 months     ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        1                    0                  0.1202786    0.0480839   0.1924732
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.0634714    0.0326294   0.0943133
3-6 months     ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      1                    0                  0.0897884    0.0421895   0.1373872
3-6 months     ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          1                    0                  0.0820942    0.0642402   0.0999482
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  0.0844817    0.0748775   0.0940859
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.1017950    0.0725790   0.1310110
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.0186772   -0.0068698   0.0442241
6-12 months    ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000   0.0000000
6-12 months    ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.0081963   -0.0697518   0.0533592
6-12 months    ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA                          1                    0                  0.0448729    0.0147734   0.0749723
6-12 months    ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000   0.0000000
6-12 months    ki0047075b-MAL-ED          NEPAL                          1                    0                  0.0025967   -0.0370813   0.0422747
6-12 months    ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000   0.0000000
6-12 months    ki0047075b-MAL-ED          PERU                           1                    0                  0.0125906   -0.0322686   0.0574498
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000   0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.0212991   -0.0727630   0.1153611
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000   0.0000000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0273988   -0.0083919   0.0631895
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.0313775   -0.0138811   0.0766360
6-12 months    ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
6-12 months    ki1000108-IRC              INDIA                          1                    0                  0.0402290   -0.0020459   0.0825039
6-12 months    ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000   0.0000000
6-12 months    ki1000109-ResPak           PAKISTAN                       1                    0                  0.0619631   -0.0174644   0.1413906
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0                  0.0355240    0.0263124   0.0447356
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  0.0525925   -0.0111511   0.1163360
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     1                    0                  0.0233543   -0.0044506   0.0511591
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0174569   -0.0062052   0.0411190
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  0.0271142    0.0064409   0.0477876
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000   0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0128657   -0.0484710   0.0227396
6-12 months    ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000   0.0000000
6-12 months    ki1101329-Keneba           GAMBIA                         1                    0                 -0.0054392   -0.0272804   0.0164019
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000   0.0000000
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    0                  0.0430156    0.0100355   0.0759957
6-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000   0.0000000
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.0498319    0.0211760   0.0784878
6-12 months    ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
6-12 months    ki1114097-CMIN             BANGLADESH                     1                    0                  0.0314281    0.0000416   0.0628146
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  0                    0                  0.0000000    0.0000000   0.0000000
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  1                    0                  0.0586694   -0.0077462   0.1250850
6-12 months    ki1114097-CMIN             PERU                           0                    0                  0.0000000    0.0000000   0.0000000
6-12 months    ki1114097-CMIN             PERU                           1                    0                  0.0321325   -0.0111039   0.0753689
6-12 months    ki1114097-CONTENT          PERU                           0                    0                  0.0000000    0.0000000   0.0000000
6-12 months    ki1114097-CONTENT          PERU                           1                    0                  0.0648416    0.0236424   0.1060407
6-12 months    ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000   0.0000000
6-12 months    ki1119695-PROBIT           BELARUS                        1                    0                  0.0676432    0.0017825   0.1335038
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000   0.0000000
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.0417538    0.0264355   0.0570720
6-12 months    ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000   0.0000000
6-12 months    ki1135781-COHORTS          GUATEMALA                      1                    0                  0.0225198    0.0026716   0.0423679
6-12 months    ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
6-12 months    ki1135781-COHORTS          INDIA                          1                    0                  0.0234552    0.0119173   0.0349930
6-12 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000   0.0000000
6-12 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                  0.0214197   -0.0012955   0.0441349
6-12 months    ki1148112-LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000   0.0000000
6-12 months    ki1148112-LCNI-5           MALAWI                         1                    0                  0.0442259    0.0215838   0.0668679
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  0.0322264    0.0267701   0.0376828
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.0356527    0.0256158   0.0456895
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.0103466   -0.0041412   0.0248344
12-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000   0.0000000
12-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.0002592   -0.0384430   0.0379247
12-24 months   ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          1                    0                  0.0094225   -0.0046564   0.0235014
12-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000   0.0000000
12-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0                  0.0129993   -0.0037273   0.0297259
12-24 months   ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000   0.0000000
12-24 months   ki0047075b-MAL-ED          PERU                           1                    0                  0.0186957   -0.0015988   0.0389901
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000   0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.0232723   -0.0106362   0.0571808
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000   0.0000000
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0182927   -0.0020048   0.0385901
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.0261784    0.0024987   0.0498580
12-24 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
12-24 months   ki1000108-IRC              INDIA                          1                    0                  0.0231526   -0.0025873   0.0488926
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0                  0.0093203   -0.0034568   0.0220973
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0168484    0.0039357   0.0297611
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  0.0227328    0.0112004   0.0342651
12-24 months   ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000   0.0000000
12-24 months   ki1101329-Keneba           GAMBIA                         1                    0                  0.0195006    0.0073489   0.0316524
12-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000   0.0000000
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.0308314    0.0129776   0.0486851
12-24 months   ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
12-24 months   ki1114097-CMIN             BANGLADESH                     1                    0                  0.0254685    0.0087412   0.0421958
12-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    0                  0.0000000    0.0000000   0.0000000
12-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    0                  0.0532422    0.0166758   0.0898085
12-24 months   ki1114097-CMIN             PERU                           0                    0                  0.0000000    0.0000000   0.0000000
12-24 months   ki1114097-CMIN             PERU                           1                    0                  0.0409572    0.0141982   0.0677162
12-24 months   ki1114097-CONTENT          PERU                           0                    0                  0.0000000    0.0000000   0.0000000
12-24 months   ki1114097-CONTENT          PERU                           1                    0                  0.0363982   -0.0035125   0.0763088
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000   0.0000000
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.0067664   -0.0161088   0.0296416
12-24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000   0.0000000
12-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                  0.0249420    0.0162474   0.0336367
12-24 months   ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
12-24 months   ki1135781-COHORTS          INDIA                          1                    0                  0.0130447    0.0077177   0.0183717
12-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000   0.0000000
12-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                  0.0207768    0.0090532   0.0325004
12-24 months   ki1148112-LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000   0.0000000
12-24 months   ki1148112-LCNI-5           MALAWI                         1                    0                  0.0193940    0.0077268   0.0310611
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  0.0186768    0.0149468   0.0224067
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.0140432    0.0100661   0.0180204
