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
![](/tmp/a7c45524-98bb-41fc-bc8c-c8c63affa97f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/a7c45524-98bb-41fc-bc8c-c8c63affa97f/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                3.5245488   3.4621056   3.5869919
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                3.8580683   3.7168059   3.9993307
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0                    NA                3.9702127   3.8687426   4.0716829
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                4.8253325   4.5743061   5.0763590
0-3 months     ki0047075b-MAL-ED          INDIA                          0                    NA                3.5437489   3.4616634   3.6258343
0-3 months     ki0047075b-MAL-ED          INDIA                          1                    NA                3.9415430   3.7297506   4.1533353
0-3 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                3.7746734   3.6988539   3.8504929
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                4.2889203   4.0945476   4.4832929
0-3 months     ki0047075b-MAL-ED          PERU                           0                    NA                3.2962431   3.2294521   3.3630342
0-3 months     ki0047075b-MAL-ED          PERU                           1                    NA                3.5923262   3.4532310   3.7314214
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                3.3964059   3.3049255   3.4878864
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                3.4099969   3.1849647   3.6350291
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                3.4519227   3.3703708   3.5334746
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                4.1822254   4.0549396   4.3095112
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                3.4710427   3.2507280   3.6913575
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                3.8069330   3.2420436   4.3718225
0-3 months     ki1000108-IRC              INDIA                          0                    NA                3.0635337   2.9514837   3.1755837
0-3 months     ki1000108-IRC              INDIA                          1                    NA                4.1672094   3.8375284   4.4968904
0-3 months     ki1000109-EE               PAKISTAN                       0                    NA                2.5201325   2.4289483   2.6113168
0-3 months     ki1000109-EE               PAKISTAN                       1                    NA                3.0931042   2.9545077   3.2317008
0-3 months     ki1000109-ResPak           PAKISTAN                       0                    NA                2.6697404   2.3717502   2.9677306
0-3 months     ki1000109-ResPak           PAKISTAN                       1                    NA                4.0402407   3.5819824   4.4984989
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          0                    NA                3.5569307   3.5199267   3.5939348
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                3.7447725   3.6846833   3.8048617
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     0                    NA                3.2534770   3.1970613   3.3098927
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     1                    NA                3.6250955   3.4892725   3.7609185
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                3.4681098   3.4280284   3.5081912
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                3.6356120   3.5310961   3.7401278
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                3.2700384   3.2292695   3.3108074
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                3.5087402   3.4095932   3.6078872
0-3 months     ki1101329-Keneba           GAMBIA                         0                    NA                3.0679614   3.0245538   3.1113689
0-3 months     ki1101329-Keneba           GAMBIA                         1                    NA                4.5689782   4.3479570   4.7899995
0-3 months     ki1114097-CMIN             BANGLADESH                     0                    NA                3.4650640   3.2946727   3.6354553
0-3 months     ki1114097-CMIN             BANGLADESH                     1                    NA                3.5383946   3.2824323   3.7943569
0-3 months     ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                3.4175251   3.0309787   3.8040714
0-3 months     ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                3.7429104   3.1006958   4.3851250
0-3 months     ki1114097-CMIN             PERU                           0                    NA                3.3146120   3.1746918   3.4545322
0-3 months     ki1114097-CMIN             PERU                           1                    NA                3.3320777   3.1518710   3.5122844
0-3 months     ki1119695-PROBIT           BELARUS                        0                    NA                2.8326817   2.7192531   2.9461103
0-3 months     ki1119695-PROBIT           BELARUS                        1                    NA                3.9757350   3.7923287   4.1591413
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                3.2934534   3.2721936   3.3147132
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                4.0724022   4.0113205   4.1334839
0-3 months     ki1135781-COHORTS          GUATEMALA                      0                    NA                2.5898600   2.5461543   2.6335656
0-3 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                3.0356916   2.8606445   3.2107387
0-3 months     ki1135781-COHORTS          INDIA                          0                    NA                3.5126332   3.4980391   3.5272272
0-3 months     ki1135781-COHORTS          INDIA                          1                    NA                3.8250711   3.7832641   3.8668780
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                3.6512062   3.6398476   3.6625648
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                3.8701675   3.8534355   3.8868995
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                3.5689963   3.5335969   3.6043957
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                3.7993499   3.7409370   3.8577627
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                1.9130151   1.8612558   1.9647744
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                1.9279093   1.7877787   2.0680399
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0                    NA                2.1256726   2.0415467   2.2097985
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                2.3450075   2.1317101   2.5583048
3-6 months     ki0047075b-MAL-ED          INDIA                          0                    NA                1.8352222   1.7679043   1.9025400
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    NA                1.8171447   1.7255515   1.9087379
3-6 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                1.9290978   1.8709415   1.9872542
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                2.2786126   2.1304805   2.4267446
3-6 months     ki0047075b-MAL-ED          PERU                           0                    NA                1.9928400   1.9233039   2.0623762
3-6 months     ki0047075b-MAL-ED          PERU                           1                    NA                2.4353263   2.2913376   2.5793150
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                1.9556933   1.8728031   2.0385836
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                2.6799589   2.4968673   2.8630506
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                1.7995817   1.7283475   1.8708159
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                1.6388564   1.4911757   1.7865371
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                1.7277549   1.6187393   1.8367706
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                1.8505487   1.6724365   2.0286610
3-6 months     ki1000108-IRC              INDIA                          0                    NA                1.8741476   1.8062569   1.9420383
3-6 months     ki1000108-IRC              INDIA                          1                    NA                1.9962532   1.8176843   2.1748221
3-6 months     ki1000109-EE               PAKISTAN                       0                    NA                1.9400922   1.8659836   2.0142009
3-6 months     ki1000109-EE               PAKISTAN                       1                    NA                2.1807217   2.0872932   2.2741502
3-6 months     ki1000109-ResPak           PAKISTAN                       0                    NA                1.9546727   1.8053673   2.1039781
3-6 months     ki1000109-ResPak           PAKISTAN                       1                    NA                2.3876057   2.0679648   2.7072466
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          0                    NA                1.9196114   1.8639429   1.9752798
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                2.0584077   2.0152264   2.1015891
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     0                    NA                1.8314628   1.7810737   1.8818520
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     1                    NA                1.8685682   1.7482266   1.9889098
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                1.9425398   1.9066665   1.9784130
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                2.1449893   2.0541900   2.2357886
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                1.9832092   1.9450666   2.0213518
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                2.1450682   2.0401733   2.2499632
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                1.7821680   1.7453401   1.8189959
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                2.1149958   2.0096519   2.2203396
3-6 months     ki1101329-Keneba           GAMBIA                         0                    NA                1.9839141   1.9423593   2.0254688
3-6 months     ki1101329-Keneba           GAMBIA                         1                    NA                2.0366591   1.9472669   2.1260514
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                1.6823718   1.6422849   1.7224588
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                1.9216592   1.7879669   2.0553515
3-6 months     ki1114097-CMIN             BANGLADESH                     0                    NA                1.8566669   1.7750416   1.9382923
3-6 months     ki1114097-CMIN             BANGLADESH                     1                    NA                2.0942518   1.9746155   2.2138881
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                1.9861080   1.8833027   2.0889132
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                2.4936183   2.2513400   2.7358965
3-6 months     ki1114097-CMIN             PERU                           0                    NA                1.8760564   1.8274524   1.9246603
3-6 months     ki1114097-CMIN             PERU                           1                    NA                2.2844352   2.1382538   2.4306165
3-6 months     ki1114097-CONTENT          PERU                           0                    NA                2.0614545   2.0118852   2.1110237
3-6 months     ki1114097-CONTENT          PERU                           1                    NA                2.3326693   2.2098128   2.4555257
3-6 months     ki1119695-PROBIT           BELARUS                        0                    NA                2.0898163   2.0485385   2.1310941
3-6 months     ki1119695-PROBIT           BELARUS                        1                    NA                2.4284739   2.3155907   2.5413571
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                1.9647319   1.9437541   1.9857098
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                2.0564897   1.9994281   2.1135513
3-6 months     ki1135781-COHORTS          GUATEMALA                      0                    NA                1.7428270   1.7111422   1.7745119
3-6 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                1.8594269   1.7779743   1.9408796
3-6 months     ki1135781-COHORTS          INDIA                          0                    NA                1.8604051   1.8477413   1.8730689
3-6 months     ki1135781-COHORTS          INDIA                          1                    NA                1.9874539   1.9528744   2.0220333
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                1.8825229   1.8710919   1.8939540
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                2.0060129   1.9880490   2.0239768
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                1.8523276   1.8178799   1.8867754
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                2.0162837   1.9635213   2.0690461
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                1.1147155   1.0871721   1.1422588
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                1.1127372   1.0582766   1.1671977
6-12 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                1.3919306   1.3429668   1.4408943
6-12 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                1.3377644   1.1962454   1.4792833
6-12 months    ki0047075b-MAL-ED          INDIA                          0                    NA                1.1083368   1.0772016   1.1394719
6-12 months    ki0047075b-MAL-ED          INDIA                          1                    NA                1.1297763   1.0743233   1.1852293
6-12 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                1.2272879   1.2007620   1.2538138
6-12 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                1.1844579   1.0932947   1.2756212
6-12 months    ki0047075b-MAL-ED          PERU                           0                    NA                1.2124109   1.1782552   1.2465666
6-12 months    ki0047075b-MAL-ED          PERU                           1                    NA                1.1932144   1.1056656   1.2807632
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                1.1850943   1.1470156   1.2231731
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                1.1829251   1.0861134   1.2797369
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                1.0046620   0.9629345   1.0463896
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                1.1681444   1.1058467   1.2304420
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                1.0540915   1.0000190   1.1081640
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                1.1027805   1.0399342   1.1656268
6-12 months    ki1000108-IRC              INDIA                          0                    NA                1.2434022   1.2126056   1.2741989
6-12 months    ki1000108-IRC              INDIA                          1                    NA                1.2893053   1.1988707   1.3797398
6-12 months    ki1000109-ResPak           PAKISTAN                       0                    NA                1.2648008   1.1679713   1.3616303
6-12 months    ki1000109-ResPak           PAKISTAN                       1                    NA                1.3936655   1.2398392   1.5474917
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                1.0884318   1.0756610   1.1012027
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                1.0962818   1.0815774   1.1109863
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.9912770   0.8952643   1.0872897
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                1.0473211   0.9269774   1.1676648
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                1.1680291   1.1441752   1.1918830
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                1.1714349   1.1170975   1.2257723
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                1.1733681   1.1551958   1.1915404
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                1.1713762   1.1167865   1.2259659
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                1.2253319   1.2065385   1.2441253
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                1.2448394   1.1986035   1.2910753
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                1.2010425   1.1789288   1.2231562
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.1091941   1.0637259   1.1546624
6-12 months    ki1101329-Keneba           GAMBIA                         0                    NA                1.1852457   1.1655394   1.2049519
6-12 months    ki1101329-Keneba           GAMBIA                         1                    NA                1.1550759   1.1181711   1.1919808
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                1.0965549   1.0644934   1.1286164
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                1.1402686   1.0663928   1.2141444
6-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                1.1617398   1.1413515   1.1821281
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                1.2236391   1.1598257   1.2874525
6-12 months    ki1114097-CMIN             BANGLADESH                     0                    NA                1.0888169   1.0484693   1.1291645
6-12 months    ki1114097-CMIN             BANGLADESH                     1                    NA                1.1185150   1.0547407   1.1822893
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                1.0479266   0.9940494   1.1018038
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                1.1239813   0.9736470   1.2743157
6-12 months    ki1114097-CMIN             PERU                           0                    NA                1.1102914   1.0843988   1.1361841
6-12 months    ki1114097-CMIN             PERU                           1                    NA                1.1063227   1.0118981   1.2007472
6-12 months    ki1114097-CONTENT          PERU                           0                    NA                1.2941848   1.2637357   1.3246340
6-12 months    ki1114097-CONTENT          PERU                           1                    NA                1.3754423   1.2833008   1.4675838
6-12 months    ki1119695-PROBIT           BELARUS                        0                    NA                1.4703876   1.4318795   1.5088957
6-12 months    ki1119695-PROBIT           BELARUS                        1                    NA                1.4942131   1.4031232   1.5853030
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                1.1905271   1.1790563   1.2019978
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                1.2375752   1.2056048   1.2695457
6-12 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                1.0209633   1.0027186   1.0392079
6-12 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                1.0064323   0.9730621   1.0398025
6-12 months    ki1135781-COHORTS          INDIA                          0                    NA                1.0977365   1.0891512   1.1063218
6-12 months    ki1135781-COHORTS          INDIA                          1                    NA                1.0980474   1.0737368   1.1223579
6-12 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                1.0677375   1.0552360   1.0802389
6-12 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                1.0918743   1.0495527   1.1341959
6-12 months    ki1148112-LCNI-5           MALAWI                         0                    NA                1.2651640   1.2334460   1.2968820
6-12 months    ki1148112-LCNI-5           MALAWI                         1                    NA                1.3066723   1.2637907   1.3495539
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                1.0983057   1.0910151   1.1055964
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                1.1210799   1.1098882   1.1322715
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                1.1933055   1.1818457   1.2047653
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                1.2296385   1.2089036   1.2503734
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.8484148   0.8309684   0.8658613
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.8327161   0.7930116   0.8724206
12-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                0.9836262   0.9518767   1.0153757
12-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                0.9583517   0.8564353   1.0602680
12-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.8845050   0.8658374   0.9031726
12-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.8594593   0.8148074   0.9041112
12-24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.8647211   0.8486511   0.8807912
12-24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.8385331   0.7890338   0.8880324
12-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.8445390   0.8230016   0.8660765
12-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.8663352   0.8310481   0.9016223
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.8658081   0.8434620   0.8881542
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.8974353   0.8219149   0.9729558
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7635779   0.7382248   0.7889310
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7795853   0.7378189   0.8213518
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.7318351   0.7019579   0.7617123
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.8049781   0.7632225   0.8467336
12-24 months   ki1000108-IRC              INDIA                          0                    NA                0.8279581   0.8077704   0.8481457
12-24 months   ki1000108-IRC              INDIA                          1                    NA                0.8328132   0.7801561   0.8854703
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.7576683   0.7418262   0.7735105
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.7404897   0.7109831   0.7699963
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.8563379   0.8438470   0.8688288
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.8679244   0.8276771   0.9081718
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.8727407   0.8601293   0.8853522
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.8930784   0.8608134   0.9253435
12-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.8438601   0.8326575   0.8550627
12-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.8332067   0.8121398   0.8542737
12-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.8355855   0.8195295   0.8516415
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.8435381   0.8019137   0.8851625
12-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.7849003   0.7540536   0.8157470
12-24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                0.8040133   0.7639739   0.8440528
12-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.8480081   0.8082592   0.8877570
12-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.8822566   0.7821788   0.9823345
12-24 months   ki1114097-CMIN             PERU                           0                    NA                0.8342157   0.8154133   0.8530181
12-24 months   ki1114097-CMIN             PERU                           1                    NA                0.8792477   0.8107202   0.9477752
12-24 months   ki1114097-CONTENT          PERU                           0                    NA                0.9213903   0.8875395   0.9552412
12-24 months   ki1114097-CONTENT          PERU                           1                    NA                0.9560160   0.8427685   1.0692635
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.7103638   0.6820109   0.7387167
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.7125659   0.6690372   0.7560946
12-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.7756424   0.7637472   0.7875377
12-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.7980462   0.7783433   0.8177491
12-24 months   ki1135781-COHORTS          INDIA                          0                    NA                0.8296063   0.8244077   0.8348048
12-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.8080794   0.7940785   0.8220803
12-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.7064878   0.6989787   0.7139968
12-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.7022123   0.6775717   0.7268529
12-24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                0.8544597   0.8346254   0.8742941
12-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.8396717   0.8163147   0.8630288
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.7945980   0.7886405   0.8005554
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.7973231   0.7882025   0.8064438
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.8521523   0.8457571   0.8585475
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.8423978   0.8332432   0.8515525


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
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.3335195    0.1823382    0.4847009
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                    0                  0.8551198    0.5843647    1.1258748
0-3 months     ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          1                    0                  0.3977941    0.1706203    0.6249679
0-3 months     ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                    0                  0.5142469    0.3043926    0.7241012
0-3 months     ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           1                    0                  0.2960830    0.1415073    0.4506588
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.0135910   -0.2299392    0.2571211
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  0.7303027    0.5785897    0.8820156
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.3358903   -0.2730493    0.9448299
0-3 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          1                    0                  1.1036758    0.7562352    1.4511163
0-3 months     ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE               PAKISTAN                       1                    0                  0.5729717    0.4066879    0.7392555
0-3 months     ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-ResPak           PAKISTAN                       1                    0                  1.3705003    0.8238754    1.9171252
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1                    0                  0.1878418    0.1093579    0.2663256
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     1                    0                  0.3716185    0.2250915    0.5181455
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.1675022    0.0587083    0.2762960
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  0.2387017    0.1315056    0.3458979
0-3 months     ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         1                    0                  1.5010169    1.2760993    1.7259344
0-3 months     ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CMIN             BANGLADESH                     1                    0                  0.0733306   -0.2321028    0.3787640
0-3 months     ki1114097-CMIN             GUINEA-BISSAU                  0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CMIN             GUINEA-BISSAU                  1                    0                  0.3253853   -0.4241863    1.0749570
0-3 months     ki1114097-CMIN             PERU                           0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CMIN             PERU                           1                    0                  0.0174657   -0.2106837    0.2456150
0-3 months     ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        1                    0                  1.1430533    0.9183321    1.3677745
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.7789488    0.7143710    0.8435265
0-3 months     ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      1                    0                  0.4458317    0.2655509    0.6261124
0-3 months     ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          1                    0                  0.3124379    0.2684571    0.3564187
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  0.2189613    0.2004464    0.2374761
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.2303536    0.1617305    0.2989766
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.0148941   -0.1345275    0.1643158
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                    0                  0.2193349   -0.0098202    0.4484900
3-6 months     ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    0                 -0.0180775   -0.1337045    0.0975495
3-6 months     ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    0                  0.3495147    0.1903764    0.5086530
3-6 months     ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           1                    0                  0.4424863    0.2836358    0.6013368
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.7242656    0.5220810    0.9264502
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.1607253   -0.3252819    0.0038313
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.1227938   -0.0867388    0.3323264
3-6 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          1                    0                  0.1221057   -0.0687992    0.3130105
3-6 months     ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE               PAKISTAN                       1                    0                  0.2406295    0.1213810    0.3598779
3-6 months     ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-ResPak           PAKISTAN                       1                    0                  0.4329330    0.0792249    0.7866411
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1                    0                  0.1387964    0.0719659    0.2056269
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     1                    0                  0.0371054   -0.0926851    0.1668958
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.2024495    0.1055381    0.2993608
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  0.1618590    0.0509112    0.2728069
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.3328277    0.2218298    0.4438257
3-6 months     ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         1                    0                  0.0527451   -0.0449250    0.1504151
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.2392874    0.0999348    0.3786400
3-6 months     ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             BANGLADESH                     1                    0                  0.2375849    0.0930676    0.3821022
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                  0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                  1                    0                  0.5075103    0.2442520    0.7707686
3-6 months     ki1114097-CMIN             PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             PERU                           1                    0                  0.4083788    0.2543162    0.5624414
3-6 months     ki1114097-CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CONTENT          PERU                           1                    0                  0.2712148    0.1393552    0.4030743
3-6 months     ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        1                    0                  0.3386576    0.2264180    0.4508972
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.0917577    0.0310709    0.1524446
3-6 months     ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      1                    0                  0.1165999    0.0295738    0.2036259
3-6 months     ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          1                    0                  0.1270488    0.0903597    0.1637379
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  0.1234900    0.1036150    0.1433650
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.1639561    0.1019430    0.2259691
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.0019783   -0.0627669    0.0588103
6-12 months    ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.0541662   -0.2039162    0.0955838
6-12 months    ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA                          1                    0                  0.0214395   -0.0420280    0.0849071
6-12 months    ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.0428299   -0.1376674    0.0520075
6-12 months    ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          PERU                           1                    0                 -0.0191965   -0.1122444    0.0738514
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -0.0021692   -0.1042203    0.0998819
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  0.1634823    0.0880178    0.2389469
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.0486890   -0.0332031    0.1305811
6-12 months    ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA                          1                    0                  0.0459030   -0.0495319    0.1413379
6-12 months    ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000109-ResPak           PAKISTAN                       1                    0                  0.1288646   -0.0530909    0.3108201
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0                  0.0078500   -0.0070655    0.0227655
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  0.0560441   -0.0968231    0.2089113
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     1                    0                  0.0034058   -0.0555815    0.0623932
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0019919   -0.0594163    0.0554325
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  0.0195075   -0.0303177    0.0693327
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0918483   -0.1420452   -0.0416515
6-12 months    ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1101329-Keneba           GAMBIA                         1                    0                 -0.0301697   -0.0716135    0.0112740
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    0                  0.0437137   -0.0366975    0.1241249
6-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.0618993   -0.0049135    0.1287122
6-12 months    ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN             BANGLADESH                     1                    0                  0.0296981   -0.0454024    0.1047986
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  1                    0                  0.0760547   -0.0836623    0.2357717
6-12 months    ki1114097-CMIN             PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN             PERU                           1                    0                 -0.0039688   -0.1018737    0.0939361
6-12 months    ki1114097-CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CONTENT          PERU                           1                    0                  0.0812575   -0.0157848    0.1782998
6-12 months    ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS                        1                    0                  0.0238255   -0.0715565    0.1192075
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.0470481    0.0131482    0.0809481
6-12 months    ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          GUATEMALA                      1                    0                 -0.0145310   -0.0518286    0.0227667
6-12 months    ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          INDIA                          1                    0                  0.0003109   -0.0253733    0.0259951
6-12 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                  0.0241369   -0.0198153    0.0680891
6-12 months    ki1148112-LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5           MALAWI                         1                    0                  0.0415083   -0.0116844    0.0947011
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  0.0227741    0.0106090    0.0349393
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.0363329    0.0130829    0.0595830
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.0156988   -0.0590405    0.0276430
12-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.0252746   -0.1316281    0.0810790
12-24 months   ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          1                    0                 -0.0250457   -0.0733750    0.0232836
12-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.0261880   -0.0782375    0.0258615
12-24 months   ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          PERU                           1                    0                  0.0217961   -0.0180908    0.0616830
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.0316272   -0.0460455    0.1092999
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0160074   -0.0298083    0.0618232
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.0731430    0.0221836    0.1241023
12-24 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA                          1                    0                  0.0048551   -0.0510748    0.0607850
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0                 -0.0171786   -0.0501275    0.0157702
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0115865   -0.0304438    0.0536168
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  0.0203377   -0.0142484    0.0549238
12-24 months   ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1101329-Keneba           GAMBIA                         1                    0                 -0.0106534   -0.0343529    0.0130461
12-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.0079527   -0.0366068    0.0525121
12-24 months   ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1114097-CMIN             BANGLADESH                     1                    0                  0.0191130   -0.0317089    0.0699349
12-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    0                  0.0342486   -0.0734341    0.1419312
12-24 months   ki1114097-CMIN             PERU                           0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1114097-CMIN             PERU                           1                    0                  0.0450320   -0.0259864    0.1160504
12-24 months   ki1114097-CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1114097-CONTENT          PERU                           1                    0                  0.0346256   -0.0835728    0.1528241
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.0022020   -0.0466910    0.0510951
12-24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                  0.0224038   -0.0002581    0.0450658
12-24 months   ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          INDIA                          1                    0                 -0.0215269   -0.0363615   -0.0066923
12-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 -0.0042755   -0.0299094    0.0213584
12-24 months   ki1148112-LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5           MALAWI                         1                    0                 -0.0147880   -0.0454818    0.0159059
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  0.0027252   -0.0077314    0.0131817
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0097544   -0.0206527    0.0011438
