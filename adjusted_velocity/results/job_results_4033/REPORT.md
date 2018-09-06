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
![](/tmp/c95c3f10-c617-4a55-95c2-0a4f764028bc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/c95c3f10-c617-4a55-95c2-0a4f764028bc/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0674520   -0.0997830   -0.0351210
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                 0.1166044    0.0276259    0.2055829
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.1438397    0.0940647    0.1936146
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.6655474    0.5622772    0.7688176
0-3 months     ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0426720   -0.0825422   -0.0028017
0-3 months     ki0047075b-MAL-ED          INDIA                          1                    NA                 0.1916798    0.0874274    0.2959321
0-3 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0492112    0.0152117    0.0832106
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.3029229    0.1771106    0.4287351
0-3 months     ki0047075b-MAL-ED          PERU                           0                    NA                -0.1741152   -0.2075231   -0.1407074
0-3 months     ki0047075b-MAL-ED          PERU                           1                    NA                 0.0507349   -0.0045706    0.1060403
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.1272776   -0.1725828   -0.0819724
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.1143245   -0.0193016    0.2479505
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0819913   -0.1211017   -0.0428809
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.3557434    0.2957123    0.4157746
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.1046057   -0.2123367    0.0031254
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                 0.0615507   -0.2170323    0.3401338
0-3 months     ki1000108-IRC              INDIA                          0                    NA                -0.3218537   -0.3773869   -0.2663205
0-3 months     ki1000108-IRC              INDIA                          1                    NA                 0.2248659    0.0493095    0.4004223
0-3 months     ki1000109-EE               PAKISTAN                       0                    NA                -0.4849495   -0.5310943   -0.4388046
0-3 months     ki1000109-EE               PAKISTAN                       1                    NA                -0.1333527   -0.2007976   -0.0659079
0-3 months     ki1000109-ResPak           PAKISTAN                       0                    NA                -0.4024379   -0.5496165   -0.2552593
0-3 months     ki1000109-ResPak           PAKISTAN                       1                    NA                 0.3062852    0.0671583    0.5454122
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0241165   -0.0433452   -0.0048878
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.1197001    0.0871782    0.1522219
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.1568566   -0.1843971   -0.1293161
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     1                    NA                 0.0798378    0.0138330    0.1458425
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0522638   -0.0708442   -0.0336834
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0732106    0.0253787    0.1210426
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.1458416   -0.1650460   -0.1266372
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0269546   -0.0177254    0.0716346
0-3 months     ki1101329-Keneba           GAMBIA                         0                    NA                -0.3290787   -0.3504567   -0.3077006
0-3 months     ki1101329-Keneba           GAMBIA                         1                    NA                 0.4578770    0.3394834    0.5762706
0-3 months     ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0134935   -0.0681611    0.0951480
0-3 months     ki1114097-CMIN             BANGLADESH                     1                    NA                 0.1111119   -0.0147839    0.2370077
0-3 months     ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                -0.0503100   -0.2543651    0.1537450
0-3 months     ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                 0.1859117   -0.0658552    0.4376786
0-3 months     ki1114097-CMIN             PERU                           0                    NA                -0.1212511   -0.1898448   -0.0526574
0-3 months     ki1114097-CMIN             PERU                           1                    NA                -0.0484351   -0.1575924    0.0607222
0-3 months     ki1119695-PROBIT           BELARUS                        0                    NA                -0.4392293   -0.4983860   -0.3800727
0-3 months     ki1119695-PROBIT           BELARUS                        1                    NA                 0.2453089    0.1564669    0.3341508
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.1877296   -0.1982117   -0.1772475
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.2668514    0.2363954    0.2973074
0-3 months     ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.5576845   -0.5794344   -0.5359345
0-3 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.2064113   -0.2789135   -0.1339090
0-3 months     ki1135781-COHORTS          INDIA                          0                    NA                -0.0873478   -0.0944079   -0.0802877
0-3 months     ki1135781-COHORTS          INDIA                          1                    NA                 0.1329599    0.1124522    0.1534677
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0202663    0.0148766    0.0256561
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.1829365    0.1749603    0.1909128
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0190115    0.0025731    0.0354498
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                 0.1791118    0.1508157    0.2074079
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0328626   -0.0567315   -0.0089937
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                 0.0349632   -0.0274406    0.0973670
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0468554    0.0082272    0.0854835
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.1869912    0.0974872    0.2764952
3-6 months     ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0587260   -0.0896977   -0.0277544
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    NA                 0.0144755   -0.0285811    0.0575321
3-6 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0415322   -0.0690221   -0.0140422
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.1383977    0.0704391    0.2063564
3-6 months     ki0047075b-MAL-ED          PERU                           0                    NA                 0.0103386   -0.0220103    0.0426876
3-6 months     ki0047075b-MAL-ED          PERU                           1                    NA                 0.2081655    0.1482999    0.2680311
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0148001   -0.0538959    0.0242958
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.1403001    0.0027149    0.2778852
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0943602   -0.1279492   -0.0607712
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1705309   -0.2314929   -0.1095688
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.1376980   -0.1891541   -0.0862418
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0622577   -0.1508780    0.0263627
3-6 months     ki1000108-IRC              INDIA                          0                    NA                -0.0572078   -0.0891537   -0.0252620
3-6 months     ki1000108-IRC              INDIA                          1                    NA                 0.0198876   -0.0612046    0.1009799
3-6 months     ki1000109-EE               PAKISTAN                       0                    NA                 0.0217208   -0.0122899    0.0557315
3-6 months     ki1000109-EE               PAKISTAN                       1                    NA                 0.1588469    0.1151710    0.2025228
3-6 months     ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0226011   -0.0925482    0.0473461
3-6 months     ki1000109-ResPak           PAKISTAN                       1                    NA                 0.2109647    0.0652736    0.3566558
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0329427   -0.0572830   -0.0086023
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0568157    0.0354710    0.0781604
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0548582   -0.0780973   -0.0316192
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.0121518   -0.0678747    0.0435711
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0397194   -0.0566767   -0.0227622
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0796454    0.0261221    0.1331687
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0126843   -0.0048474    0.0302161
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.1136534    0.0656600    0.1616468
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0920907   -0.1091466   -0.0750348
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0833903    0.0334761    0.1333044
3-6 months     ki1101329-Keneba           GAMBIA                         0                    NA                -0.0229852   -0.0424494   -0.0035210
3-6 months     ki1101329-Keneba           GAMBIA                         1                    NA                 0.0246480   -0.0151749    0.0644710
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.1808203   -0.1997736   -0.1618670
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0290392   -0.0887043    0.0306259
3-6 months     ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0619450   -0.0986156   -0.0252745
3-6 months     ki1114097-CMIN             BANGLADESH                     1                    NA                 0.0771046    0.0215932    0.1326160
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                -0.0130441   -0.0611042    0.0350161
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                 0.2612372    0.1471388    0.3753357
3-6 months     ki1114097-CMIN             PERU                           0                    NA                -0.0678885   -0.0906084   -0.0451685
3-6 months     ki1114097-CMIN             PERU                           1                    NA                 0.1648846    0.1028070    0.2269622
3-6 months     ki1114097-CONTENT          PERU                           0                    NA                 0.0000826   -0.0229768    0.0231420
3-6 months     ki1114097-CONTENT          PERU                           1                    NA                 0.1507828    0.0874175    0.2141482
3-6 months     ki1119695-PROBIT           BELARUS                        0                    NA                 0.0461083    0.0268046    0.0654119
3-6 months     ki1119695-PROBIT           BELARUS                        1                    NA                 0.2347264    0.1839463    0.2855064
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0076033   -0.0174104    0.0022038
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0550262    0.0278464    0.0822059
3-6 months     ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.1089782   -0.1240131   -0.0939433
3-6 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0233396   -0.0639617    0.0172825
3-6 months     ki1135781-COHORTS          INDIA                          0                    NA                -0.0655006   -0.0713363   -0.0596649
3-6 months     ki1135781-COHORTS          INDIA                          1                    NA                 0.0219867    0.0060872    0.0378863
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0283528   -0.0335930   -0.0231126
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0533597    0.0448829    0.0618365
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0379987   -0.0538488   -0.0221487
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                 0.0649973    0.0410119    0.0889827
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0835533   -0.0950634   -0.0720432
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0578120   -0.0791205   -0.0365035
6-12 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0073867   -0.0132799    0.0280533
6-12 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.0005896   -0.0576944    0.0565152
6-12 months    ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0858228   -0.0988131   -0.0728325
6-12 months    ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0554245   -0.0718669   -0.0389821
6-12 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0493165   -0.0602739   -0.0383591
6-12 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0463921   -0.0809659   -0.0118183
6-12 months    ki0047075b-MAL-ED          PERU                           0                    NA                -0.0389472   -0.0537452   -0.0241491
6-12 months    ki0047075b-MAL-ED          PERU                           1                    NA                -0.0265525   -0.0678248    0.0147199
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0558682   -0.0720575   -0.0396790
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.0029876   -0.0538628    0.0598380
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1282927   -0.1456600   -0.1109254
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1006467   -0.1287094   -0.0725840
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.1055602   -0.1284237   -0.0826966
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0655353   -0.0903318   -0.0407387
6-12 months    ki1000108-IRC              INDIA                          0                    NA                -0.0299066   -0.0433495   -0.0164637
6-12 months    ki1000108-IRC              INDIA                          1                    NA                 0.0039265   -0.0329280    0.0407809
6-12 months    ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0242512   -0.0672342    0.0187319
6-12 months    ki1000109-ResPak           PAKISTAN                       1                    NA                 0.0401436   -0.0261252    0.1064124
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0964527   -0.1017622   -0.0911432
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0707502   -0.0774116   -0.0640888
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -0.1292481   -0.1678354   -0.0906608
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                -0.0757286   -0.1246848   -0.0267725
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0563842   -0.0661835   -0.0465849
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.0322149   -0.0547346   -0.0096952
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0644731   -0.0717318   -0.0572145
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0471720   -0.0693149   -0.0250291
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0355264   -0.0433642   -0.0276885
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0079258   -0.0269267    0.0110752
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0591423   -0.0686047   -0.0496798
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0757459   -0.0968616   -0.0546303
6-12 months    ki1101329-Keneba           GAMBIA                         0                    NA                -0.0611128   -0.0694684   -0.0527573
6-12 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.0531821   -0.0679534   -0.0384108
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                -0.0877228   -0.1008335   -0.0746121
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -0.0488957   -0.0776128   -0.0201785
6-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0666066   -0.0750758   -0.0581375
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0199796   -0.0459546    0.0059954
6-12 months    ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0900415   -0.1069403   -0.0731426
6-12 months    ki1114097-CMIN             BANGLADESH                     1                    NA                -0.0582739   -0.0845196   -0.0320281
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                -0.1262086   -0.1497662   -0.1026510
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                -0.0671441   -0.1298916   -0.0043967
6-12 months    ki1114097-CMIN             PERU                           0                    NA                -0.0959109   -0.1068313   -0.0849904
6-12 months    ki1114097-CMIN             PERU                           1                    NA                -0.0641388   -0.1039499   -0.0243277
6-12 months    ki1114097-CONTENT          PERU                           0                    NA                -0.0282934   -0.0411676   -0.0154192
6-12 months    ki1114097-CONTENT          PERU                           1                    NA                 0.0448108    0.0064112    0.0832104
6-12 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0419107    0.0252580    0.0585634
6-12 months    ki1119695-PROBIT           BELARUS                        1                    NA                 0.0724121    0.0338944    0.1109298
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0539278   -0.0588145   -0.0490410
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0210543   -0.0345311   -0.0075775
6-12 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.1123607   -0.1198533   -0.1048680
6-12 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0933510   -0.1078760   -0.0788261
6-12 months    ki1135781-COHORTS          INDIA                          0                    NA                -0.0939316   -0.0975004   -0.0903627
6-12 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.0717404   -0.0819992   -0.0614816
6-12 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.1011777   -0.1064143   -0.0959412
6-12 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.0664868   -0.0841545   -0.0488190
6-12 months    ki1148112-LCNI-5           MALAWI                         0                    NA                -0.0232606   -0.0357700   -0.0107512
6-12 months    ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0215539    0.0052167    0.0378911
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0846391   -0.0876713   -0.0816069
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0547368   -0.0595665   -0.0499071
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0482779   -0.0530449   -0.0435108
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0121085   -0.0208605   -0.0033566
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0197214   -0.0254761   -0.0139667
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0133672   -0.0227370   -0.0039975
12-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0014856   -0.0125474    0.0095762
12-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.0015313   -0.0374043    0.0343418
12-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0112391   -0.0167762   -0.0057020
12-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0026470   -0.0146196    0.0093255
12-24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0309886   -0.0362860   -0.0256911
12-24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0181482   -0.0339299   -0.0023665
12-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                -0.0119763   -0.0193329   -0.0046198
12-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                 0.0097061   -0.0067888    0.0262010
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0175626   -0.0251122   -0.0100131
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.0056268   -0.0274991    0.0387526
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0422734   -0.0506851   -0.0338616
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0234052   -0.0392765   -0.0075340
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0495200   -0.0607984   -0.0382416
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0143160   -0.0304163    0.0017842
12-24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0338423   -0.0410665   -0.0266181
12-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0219473   -0.0400452   -0.0038493
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0419580   -0.0470114   -0.0369046
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.0316626   -0.0428670   -0.0204582
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0099380   -0.0139462   -0.0059299
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0069154   -0.0053450    0.0191759
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0089026   -0.0131141   -0.0046911
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0140916    0.0040186    0.0241647
12-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0221749   -0.0261589   -0.0181909
12-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0052050   -0.0127727    0.0023626
12-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0187399   -0.0238907   -0.0135890
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0115394   -0.0032132    0.0262919
12-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0415378   -0.0516740   -0.0314017
12-24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                -0.0154884   -0.0285188   -0.0024581
12-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                -0.0301714   -0.0450238   -0.0153190
12-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                 0.0230707   -0.0103434    0.0564848
12-24 months   ki1114097-CMIN             PERU                           0                    NA                -0.0332076   -0.0396006   -0.0268146
12-24 months   ki1114097-CMIN             PERU                           1                    NA                 0.0075022   -0.0189631    0.0339675
12-24 months   ki1114097-CONTENT          PERU                           0                    NA                -0.0289009   -0.0412848   -0.0165169
12-24 months   ki1114097-CONTENT          PERU                           1                    NA                 0.0074973   -0.0304434    0.0454380
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0538601   -0.0639049   -0.0438153
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0419723   -0.0578695   -0.0260752
12-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0354620   -0.0394385   -0.0314854
12-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0082828   -0.0148071   -0.0017585
12-24 months   ki1135781-COHORTS          INDIA                          0                    NA                -0.0363746   -0.0380865   -0.0346628
12-24 months   ki1135781-COHORTS          INDIA                          1                    NA                -0.0233249   -0.0280040   -0.0186459
12-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0587975   -0.0613694   -0.0562255
12-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.0431353   -0.0520647   -0.0342060
12-24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                -0.0229311   -0.0297621   -0.0161002
12-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0004923   -0.0074939    0.0084784
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0247405   -0.0267922   -0.0226887
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0067039   -0.0097499   -0.0036578
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0186348   -0.0208106   -0.0164590
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0046614   -0.0079513   -0.0013715


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


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.1840564    0.0896806    0.2784321
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                    0                  0.5217077    0.4074177    0.6359977
0-3 months     ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          1                    0                  0.2343517    0.1222264    0.3464771
0-3 months     ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                    0                  0.2537117    0.1232994    0.3841239
0-3 months     ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           1                    0                  0.2248501    0.1618925    0.2878077
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.2416021    0.1005796    0.3826245
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  0.4377347    0.3660068    0.5094627
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.1661564   -0.1338228    0.4661356
0-3 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          1                    0                  0.5467196    0.3626741    0.7307650
0-3 months     ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE               PAKISTAN                       1                    0                  0.3515967    0.2699020    0.4332915
0-3 months     ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-ResPak           PAKISTAN                       1                    0                  0.7087231    0.4284928    0.9889535
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1                    0                  0.1438165    0.1037134    0.1839196
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     1                    0                  0.2366944    0.1653043    0.3080844
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.1254744    0.0745887    0.1763601
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  0.1727961    0.1241638    0.2214285
0-3 months     ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         1                    0                  0.7869557    0.6667363    0.9071751
0-3 months     ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CMIN             BANGLADESH                     1                    0                  0.0976184   -0.0519765    0.2472134
0-3 months     ki1114097-CMIN             GUINEA-BISSAU                  0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CMIN             GUINEA-BISSAU                  1                    0                  0.2362218   -0.0878539    0.5602975
0-3 months     ki1114097-CMIN             PERU                           0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CMIN             PERU                           1                    0                  0.0728160   -0.0561042    0.2017361
0-3 months     ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        1                    0                  0.6845382    0.5705691    0.7985073
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.4545810    0.4223918    0.4867703
0-3 months     ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      1                    0                  0.3512732    0.2757086    0.4268379
0-3 months     ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          1                    0                  0.2203077    0.1986712    0.2419443
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  0.1626702    0.1536684    0.1716720
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.1601003    0.1270160    0.1931846
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.0678258    0.0012517    0.1344000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                    0                  0.1401359    0.0431143    0.2371575
3-6 months     ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    0                  0.0732015    0.0209840    0.1254190
3-6 months     ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    0                  0.1799299    0.1066218    0.2532380
3-6 months     ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           1                    0                  0.1978269    0.1302336    0.2654201
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.1551001    0.0121399    0.2980603
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0761707   -0.1464493   -0.0058921
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.0754403   -0.0273153    0.1781958
3-6 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          1                    0                  0.0770955   -0.0098761    0.1640670
3-6 months     ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE               PAKISTAN                       1                    0                  0.1371261    0.0817586    0.1924936
3-6 months     ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-ResPak           PAKISTAN                       1                    0                  0.2335657    0.0717781    0.3953534
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1                    0                  0.0897584    0.0578137    0.1217030
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     1                    0                  0.0427064   -0.0177329    0.1031458
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.1193648    0.0632290    0.1755006
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  0.1009691    0.0501573    0.1517808
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.1754810    0.1230175    0.2279445
3-6 months     ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         1                    0                  0.0476333    0.0035288    0.0917378
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.1517811    0.0891789    0.2143833
3-6 months     ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             BANGLADESH                     1                    0                  0.1390496    0.0725312    0.2055681
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                  0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                  1                    0                  0.2742813    0.1505413    0.3980212
3-6 months     ki1114097-CMIN             PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             PERU                           1                    0                  0.2327731    0.1667871    0.2987591
3-6 months     ki1114097-CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CONTENT          PERU                           1                    0                  0.1507002    0.0832737    0.2181267
3-6 months     ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        1                    0                  0.1886181    0.1377305    0.2395057
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.0626295    0.0337768    0.0914822
3-6 months     ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      1                    0                  0.0856386    0.0425257    0.1287515
3-6 months     ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          1                    0                  0.0874873    0.0705872    0.1043875
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  0.0817125    0.0723413    0.0910837
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.1029960    0.0745272    0.1314648
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.0257413    0.0015210    0.0499616
6-12 months    ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.0079763   -0.0685978    0.0526452
6-12 months    ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA                          1                    0                  0.0303982    0.0095368    0.0512597
6-12 months    ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          NEPAL                          1                    0                  0.0029245   -0.0333947    0.0392437
6-12 months    ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          PERU                           1                    0                  0.0123947   -0.0313603    0.0561497
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.0588559   -0.0000053    0.1177171
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0276460   -0.0045872    0.0598793
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.0400249    0.0071219    0.0729279
6-12 months    ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA                          1                    0                  0.0338331   -0.0051440    0.0728102
6-12 months    ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000109-ResPak           PAKISTAN                       1                    0                  0.0643948   -0.0145928    0.1433823
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0                  0.0257025    0.0186747    0.0327304
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  0.0535194   -0.0081639    0.1152028
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     1                    0                  0.0241693   -0.0002696    0.0486082
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0173011   -0.0059557    0.0405579
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  0.0276006    0.0070826    0.0481186
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0166036   -0.0395774    0.0063701
6-12 months    ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1101329-Keneba           GAMBIA                         1                    0                  0.0079307   -0.0088506    0.0247120
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    0                  0.0388271    0.0072603    0.0703940
6-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.0466270    0.0193447    0.0739094
6-12 months    ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN             BANGLADESH                     1                    0                  0.0317676    0.0006260    0.0629091
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  1                    0                  0.0590644   -0.0080012    0.1261301
6-12 months    ki1114097-CMIN             PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN             PERU                           1                    0                  0.0317721   -0.0095081    0.0730523
6-12 months    ki1114097-CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CONTENT          PERU                           1                    0                  0.0731041    0.0326371    0.1135712
6-12 months    ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS                        1                    0                  0.0305014   -0.0097034    0.0707061
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.0328735    0.0185544    0.0471925
6-12 months    ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          GUATEMALA                      1                    0                  0.0190096    0.0029301    0.0350891
6-12 months    ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          INDIA                          1                    0                  0.0221912    0.0113531    0.0330293
6-12 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                  0.0346910    0.0163278    0.0530542
6-12 months    ki1148112-LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5           MALAWI                         1                    0                  0.0448145    0.0244280    0.0652010
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  0.0299024    0.0246717    0.0351330
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.0361693    0.0263924    0.0459463
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.0063542   -0.0044947    0.0172031
12-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.0000457   -0.0375839    0.0374925
12-24 months   ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          1                    0                  0.0085921   -0.0045385    0.0217227
12-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0                  0.0128404   -0.0037963    0.0294770
12-24 months   ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          PERU                           1                    0                  0.0216824    0.0036581    0.0397067
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.0231894   -0.0107918    0.0571707
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0188681    0.0014279    0.0363084
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.0352040    0.0156834    0.0547246
12-24 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA                          1                    0                  0.0118950   -0.0073401    0.0311300
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0                  0.0102954   -0.0019540    0.0225448
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0168535    0.0039573    0.0297496
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  0.0229942    0.0120836    0.0339048
12-24 months   ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1101329-Keneba           GAMBIA                         1                    0                  0.0169699    0.0084708    0.0254689
12-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.0302792    0.0146555    0.0459029
12-24 months   ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1114097-CMIN             BANGLADESH                     1                    0                  0.0260494    0.0094835    0.0426153
12-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    0                  0.0532422    0.0166758    0.0898085
12-24 months   ki1114097-CMIN             PERU                           0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1114097-CMIN             PERU                           1                    0                  0.0407098    0.0134764    0.0679432
12-24 months   ki1114097-CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1114097-CONTENT          PERU                           1                    0                  0.0363982   -0.0035125    0.0763088
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.0118878   -0.0061320    0.0299075
12-24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                  0.0271791    0.0196397    0.0347186
12-24 months   ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          INDIA                          1                    0                  0.0130497    0.0080843    0.0180151
12-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                  0.0156622    0.0064084    0.0249159
12-24 months   ki1148112-LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5           MALAWI                         1                    0                  0.0234234    0.0129133    0.0339335
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  0.0180366    0.0144902    0.0215830
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.0139734    0.0100897    0.0178571
