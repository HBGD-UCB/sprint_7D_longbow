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
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0             198     238
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1              40     238
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     0             472     561
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     1              89     561
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0              21      26
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1               5      26
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0           13751   20042
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1            6291   20042
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0            1258    1807
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1             549    1807
0-3 months     ki1119695-PROBIT           BELARUS                        0           12710   12741
0-3 months     ki1119695-PROBIT           BELARUS                        1              31   12741
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0             163     180
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1              17     180
0-3 months     ki1114097-CMIN             BRAZIL                         0              77      81
0-3 months     ki1114097-CMIN             BRAZIL                         1               4      81
0-3 months     ki1101329-Keneba           GAMBIA                         0            1203    1276
0-3 months     ki1101329-Keneba           GAMBIA                         1              73    1276
0-3 months     ki1135781-COHORTS          GUATEMALA                      0             690     728
0-3 months     ki1135781-COHORTS          GUATEMALA                      1              38     728
0-3 months     ki1114097-CMIN             GUINEA-BISSAU                  0               5       8
0-3 months     ki1114097-CMIN             GUINEA-BISSAU                  1               3       8
0-3 months     ki0047075b-MAL-ED          INDIA                          0             165     195
0-3 months     ki0047075b-MAL-ED          INDIA                          1              30     195
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0              66      80
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1              14      80
0-3 months     ki1000108-IRC              INDIA                          0             334     377
0-3 months     ki1000108-IRC              INDIA                          1              43     377
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          0             856    1168
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1             312    1168
0-3 months     ki1135781-COHORTS          INDIA                          0            5708    6465
0-3 months     ki1135781-COHORTS          INDIA                          1             757    6465
0-3 months     ki0047075b-MAL-ED          NEPAL                          0             153     171
0-3 months     ki0047075b-MAL-ED          NEPAL                          1              18     171
0-3 months     ki1000109-EE               PAKISTAN                       0               6       9
0-3 months     ki1000109-EE               PAKISTAN                       1               3       9
0-3 months     ki1000109-ResPak           PAKISTAN                       0              38      51
0-3 months     ki1000109-ResPak           PAKISTAN                       1              13      51
0-3 months     ki0047075b-MAL-ED          PERU                           0             235     268
0-3 months     ki0047075b-MAL-ED          PERU                           1              33     268
0-3 months     ki1114097-CMIN             PERU                           0              26      28
0-3 months     ki1114097-CMIN             PERU                           1               2      28
0-3 months     ki1114097-CONTENT          PERU                           0               8       9
0-3 months     ki1114097-CONTENT          PERU                           1               1       9
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0             205     229
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1              24     229
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             101     116
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              15     116
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       0            7090    7864
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1             774    7864
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0             188     223
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1              35     223
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     0             437     519
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     1              82     519
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0              21      26
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1               5      26
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0            8650   12378
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1            3728   12378
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0            1316    1829
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1             513    1829
3-6 months     ki1119695-PROBIT           BELARUS                        0           11158   11184
3-6 months     ki1119695-PROBIT           BELARUS                        1              26   11184
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0             155     172
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1              17     172
3-6 months     ki1114097-CMIN             BRAZIL                         0              74      77
3-6 months     ki1114097-CMIN             BRAZIL                         1               3      77
3-6 months     ki1101329-Keneba           GAMBIA                         0            1260    1396
3-6 months     ki1101329-Keneba           GAMBIA                         1             136    1396
3-6 months     ki1135781-COHORTS          GUATEMALA                      0             631     707
3-6 months     ki1135781-COHORTS          GUATEMALA                      1              76     707
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                  0              38      44
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                  1               6      44
3-6 months     ki0047075b-MAL-ED          INDIA                          0             161     187
3-6 months     ki0047075b-MAL-ED          INDIA                          1              26     187
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0              67      80
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1              13      80
3-6 months     ki1000108-IRC              INDIA                          0             352     397
3-6 months     ki1000108-IRC              INDIA                          1              45     397
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          0             833    1123
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1             290    1123
3-6 months     ki1135781-COHORTS          INDIA                          0            5753    6508
3-6 months     ki1135781-COHORTS          INDIA                          1             755    6508
3-6 months     ki0047075b-MAL-ED          NEPAL                          0             152     170
3-6 months     ki0047075b-MAL-ED          NEPAL                          1              18     170
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0              36      45
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1               9      45
3-6 months     ki1000109-EE               PAKISTAN                       0               5       8
3-6 months     ki1000109-EE               PAKISTAN                       1               3       8
3-6 months     ki1000109-ResPak           PAKISTAN                       0              40      50
3-6 months     ki1000109-ResPak           PAKISTAN                       1              10      50
3-6 months     ki0047075b-MAL-ED          PERU                           0             224     255
3-6 months     ki0047075b-MAL-ED          PERU                           1              31     255
3-6 months     ki1114097-CMIN             PERU                           0              63      65
3-6 months     ki1114097-CMIN             PERU                           1               2      65
3-6 months     ki1114097-CONTENT          PERU                           0              49      55
3-6 months     ki1114097-CONTENT          PERU                           1               6      55
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0             184     204
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1              20     204
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              98     113
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              15     113
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              12      13
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1      13
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       0            5224    5819
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1             595    5819
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     0             178     213
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1              35     213
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     0             403     479
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     1              76     479
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0              21      25
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1               4      25
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     0            6754    9670
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1            2916    9670
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0            2203    3045
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1             842    3045
6-12 months    ki1119695-PROBIT           BELARUS                        0           10900   10920
6-12 months    ki1119695-PROBIT           BELARUS                        1              20   10920
6-12 months    ki0047075b-MAL-ED          BRAZIL                         0             144     160
6-12 months    ki0047075b-MAL-ED          BRAZIL                         1              16     160
6-12 months    ki1114097-CMIN             BRAZIL                         0              86      90
6-12 months    ki1114097-CMIN             BRAZIL                         1               4      90
6-12 months    ki1101329-Keneba           GAMBIA                         0            1185    1305
6-12 months    ki1101329-Keneba           GAMBIA                         1             120    1305
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      0             129     178
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1              49     178
6-12 months    ki1135781-COHORTS          GUATEMALA                      0             652     747
6-12 months    ki1135781-COHORTS          GUATEMALA                      1              95     747
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  0              60      71
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  1              11      71
6-12 months    ki0047075b-MAL-ED          INDIA                          0             156     182
6-12 months    ki0047075b-MAL-ED          INDIA                          1              26     182
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0              70      85
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1              15      85
6-12 months    ki1000108-IRC              INDIA                          0             355     400
6-12 months    ki1000108-IRC              INDIA                          1              45     400
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          0             836    1136
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          1             300    1136
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0             194     321
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1             127     321
6-12 months    ki1135781-COHORTS          INDIA                          0            4567    5161
6-12 months    ki1135781-COHORTS          INDIA                          1             594    5161
6-12 months    ki1148112-LCNI-5           MALAWI                         0             269     424
6-12 months    ki1148112-LCNI-5           MALAWI                         1             155     424
6-12 months    ki0047075b-MAL-ED          NEPAL                          0             150     167
6-12 months    ki0047075b-MAL-ED          NEPAL                          1              17     167
6-12 months    ki1113344-GMS-Nepal        NEPAL                          0              37      45
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1               8      45
6-12 months    ki1000109-ResPak           PAKISTAN                       0              33      41
6-12 months    ki1000109-ResPak           PAKISTAN                       1               8      41
6-12 months    ki0047075b-MAL-ED          PERU                           0             200     228
6-12 months    ki0047075b-MAL-ED          PERU                           1              28     228
6-12 months    ki1114097-CMIN             PERU                           0              55      57
6-12 months    ki1114097-CMIN             PERU                           1               2      57
6-12 months    ki1114097-CONTENT          PERU                           0              47      53
6-12 months    ki1114097-CONTENT          PERU                           1               6      53
6-12 months    ki1135781-COHORTS          PHILIPPINES                    0            2273    2415
6-12 months    ki1135781-COHORTS          PHILIPPINES                    1             142    2415
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0             176     196
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1              20     196
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              91     107
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              16     107
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               8       8
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       0            4048    4519
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1             471    4519
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     0             169     200
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1              31     200
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     0             348     418
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     1              70     418
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0              15      18
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1               3      18
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0            3165    4565
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1            1400    4565
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0            2477    3465
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1             988    3465
12-24 months   ki1119695-PROBIT           BELARUS                        0            2529    2533
12-24 months   ki1119695-PROBIT           BELARUS                        1               4    2533
12-24 months   ki0047075b-MAL-ED          BRAZIL                         0             122     135
12-24 months   ki0047075b-MAL-ED          BRAZIL                         1              13     135
12-24 months   ki1101329-Keneba           GAMBIA                         0            1078    1174
12-24 months   ki1101329-Keneba           GAMBIA                         1              96    1174
12-24 months   ki1135781-COHORTS          GUATEMALA                      0             604     761
12-24 months   ki1135781-COHORTS          GUATEMALA                      1             157     761
12-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0              13      16
12-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1               3      16
12-24 months   ki0047075b-MAL-ED          INDIA                          0             154     182
12-24 months   ki0047075b-MAL-ED          INDIA                          1              28     182
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0              75      91
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              16      91
12-24 months   ki1000108-IRC              INDIA                          0             352     396
12-24 months   ki1000108-IRC              INDIA                          1              44     396
12-24 months   ki1135781-COHORTS          INDIA                          0            3832    4348
12-24 months   ki1135781-COHORTS          INDIA                          1             516    4348
12-24 months   ki1148112-LCNI-5           MALAWI                         0             194     305
12-24 months   ki1148112-LCNI-5           MALAWI                         1             111     305
12-24 months   ki0047075b-MAL-ED          NEPAL                          0             147     164
12-24 months   ki0047075b-MAL-ED          NEPAL                          1              17     164
12-24 months   ki1113344-GMS-Nepal        NEPAL                          0              26      29
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1               3      29
12-24 months   ki0047075b-MAL-ED          PERU                           0             158     181
12-24 months   ki0047075b-MAL-ED          PERU                           1              23     181
12-24 months   ki1114097-CMIN             PERU                           0              20      22
12-24 months   ki1114097-CMIN             PERU                           1               2      22
12-24 months   ki1114097-CONTENT          PERU                           0               3       3
12-24 months   ki1135781-COHORTS          PHILIPPINES                    0            2132    2258
12-24 months   ki1135781-COHORTS          PHILIPPINES                    1             126    2258
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0             174     193
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              19     193
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              83      97
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              14      97
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0             234     296
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1              62     296


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

* agecat: 0-3 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 3-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-12 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 12-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 12-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 12-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 12-24 months, studyid: ki1114097-CONTENT, country: PERU

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
##        y_rate_len
## enstunt 0.499145846153847 0.813280748663102 0.857906923076923
##       0                 1                 1                 1
##       1                 0                 0                 0
##        y_rate_len
## enstunt 0.99852803030303 1.09750979381443 1.13253670212766
##       0                1                1                1
##       1                0                0                0
##        y_rate_len
## enstunt 1.24214795811518 1.53894017857143
##       0                1                1
##       1                0                0
```




# Results Detail

## Results Plots
![](/tmp/7ce2b266-d191-413c-bcc7-b931d2be82bb/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/7ce2b266-d191-413c-bcc7-b931d2be82bb/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                3.5187705   3.4537305   3.5838105
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                3.7659976   3.5776415   3.9543537
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0                    NA                3.9702153   3.8687434   4.0716873
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                4.8252794   4.5740514   5.0765075
0-3 months     ki0047075b-MAL-ED          INDIA                          0                    NA                3.5584152   3.4762574   3.6405730
0-3 months     ki0047075b-MAL-ED          INDIA                          1                    NA                3.7918866   3.5591387   4.0246345
0-3 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                3.7826416   3.7053863   3.8598969
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                4.2273069   3.9669403   4.4876735
0-3 months     ki0047075b-MAL-ED          PERU                           0                    NA                3.2904987   3.2225676   3.3584299
0-3 months     ki0047075b-MAL-ED          PERU                           1                    NA                3.4744152   3.2979149   3.6509155
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                3.4037550   3.3120460   3.4954640
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                3.7990750   3.4998718   4.0982781
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                3.5341266   3.4297688   3.6384844
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                3.5754133   3.4148848   3.7359418
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                3.4774895   3.2465054   3.7084736
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                3.8304605   3.2458357   4.4150852
0-3 months     ki1000108-IRC              INDIA                          0                    NA                3.0620348   2.9497132   3.1743563
0-3 months     ki1000108-IRC              INDIA                          1                    NA                4.0342179   3.6771350   4.3913008
0-3 months     ki1000109-ResPak           PAKISTAN                       0                    NA                2.5757557   2.2093511   2.9421603
0-3 months     ki1000109-ResPak           PAKISTAN                       1                    NA                3.6222821   2.9973555   4.2472087
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          0                    NA                3.5518947   3.5165201   3.5872693
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                3.7394270   3.6776696   3.8011844
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     0                    NA                3.2570533   3.2000981   3.3140085
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     1                    NA                3.6406104   3.4877934   3.7934274
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                3.1488361   2.9365805   3.3610917
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                3.4527221   2.8663757   4.0390685
0-3 months     ki1101329-Keneba           GAMBIA                         0                    NA                3.0683536   3.0247989   3.1119083
0-3 months     ki1101329-Keneba           GAMBIA                         1                    NA                4.3914438   4.0927410   4.6901466
0-3 months     ki1119695-PROBIT           BELARUS                        0                    NA                2.8331968   2.7199408   2.9464528
0-3 months     ki1119695-PROBIT           BELARUS                        1                    NA                3.9648849   3.5521546   4.3776153
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                3.2928109   3.2714992   3.3141227
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                4.0841463   4.0198023   4.1484904
0-3 months     ki1135781-COHORTS          GUATEMALA                      0                    NA                2.5881559   2.5443354   2.6319764
0-3 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                3.0393853   2.8199353   3.2588353
0-3 months     ki1135781-COHORTS          INDIA                          0                    NA                3.5116924   3.4970039   3.5263810
0-3 months     ki1135781-COHORTS          INDIA                          1                    NA                3.8209054   3.7751852   3.8666256
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                3.6512775   3.6397791   3.6627759
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                3.8652905   3.8479822   3.8825987
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                3.5692999   3.5334826   3.6051173
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                3.7958059   3.7358287   3.8557831
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                1.9209849   1.8678100   1.9741598
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                1.9997485   1.8515613   2.1479357
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0                    NA                2.1170194   2.0244871   2.2095517
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                2.3200989   2.0627482   2.5774496
3-6 months     ki0047075b-MAL-ED          INDIA                          0                    NA                1.8267851   1.7552311   1.8983391
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    NA                2.0573821   1.9148847   2.1998795
3-6 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                1.9187807   1.8541131   1.9834483
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                2.2492447   2.0597506   2.4387388
3-6 months     ki0047075b-MAL-ED          PERU                           0                    NA                1.9983954   1.9264052   2.0703856
3-6 months     ki0047075b-MAL-ED          PERU                           1                    NA                2.1792735   1.9899468   2.3686001
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                1.9383235   1.8477640   2.0288830
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                2.1904571   1.8977092   2.4832050
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                1.8118413   1.7087281   1.9149545
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                2.0486611   1.6999058   2.3974164
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                1.8545064   1.6475993   2.0614136
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                2.2863694   1.8248556   2.7478831
3-6 months     ki1000108-IRC              INDIA                          0                    NA                1.8741437   1.8061833   1.9421041
3-6 months     ki1000108-IRC              INDIA                          1                    NA                1.9317540   1.7475317   2.1159764
3-6 months     ki1000109-ResPak           PAKISTAN                       0                    NA                2.0793263   1.8733995   2.2852530
3-6 months     ki1000109-ResPak           PAKISTAN                       1                    NA                2.1790324   1.7080175   2.6500474
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          0                    NA                1.9094552   1.8535358   1.9653745
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                2.0296894   1.9817747   2.0776042
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     0                    NA                1.8255338   1.7746067   1.8764608
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     1                    NA                1.8577855   1.7197462   1.9958248
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                2.0906427   1.8313273   2.3499580
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                2.3018853   1.5737415   3.0300290
3-6 months     ki1101329-Keneba           GAMBIA                         0                    NA                1.9824421   1.9406176   2.0242666
3-6 months     ki1101329-Keneba           GAMBIA                         1                    NA                2.0887422   1.9743349   2.2031495
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                1.5433076   1.3865734   1.7000418
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                2.0605560   1.6678268   2.4532852
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                2.0187802   1.8452754   2.1922850
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                2.6752000   2.2511827   3.0992173
3-6 months     ki1114097-CONTENT          PERU                           0                    NA                1.9748422   1.8844454   2.0652390
3-6 months     ki1114097-CONTENT          PERU                           1                    NA                2.0940476   1.9334546   2.2546406
3-6 months     ki1119695-PROBIT           BELARUS                        0                    NA                2.0897796   2.0493297   2.1302295
3-6 months     ki1119695-PROBIT           BELARUS                        1                    NA                2.2406969   1.9286838   2.5527100
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                1.9660542   1.9449083   1.9872002
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                2.0647744   2.0019618   2.1275871
3-6 months     ki1135781-COHORTS          GUATEMALA                      0                    NA                1.7473405   1.7132448   1.7814361
3-6 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                1.8652678   1.7473833   1.9831524
3-6 months     ki1135781-COHORTS          INDIA                          0                    NA                1.8599969   1.8472854   1.8727083
3-6 months     ki1135781-COHORTS          INDIA                          1                    NA                1.9780489   1.9412430   2.0148548
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                1.8796497   1.8679620   1.8913375
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                2.0089514   1.9902835   2.0276194
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                1.8527887   1.8179645   1.8876129
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                2.0162452   1.9622943   2.0701961
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                1.1151550   1.0869740   1.1433360
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                1.1113790   1.0542858   1.1684722
6-12 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                1.4015013   1.3475107   1.4554919
6-12 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                1.2798839   1.1627118   1.3970561
6-12 months    ki0047075b-MAL-ED          INDIA                          0                    NA                1.1206089   1.0882394   1.1529783
6-12 months    ki0047075b-MAL-ED          INDIA                          1                    NA                1.1862843   1.1155687   1.2569999
6-12 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                1.2090507   1.1802268   1.2378747
6-12 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                1.1575897   1.0455247   1.2696548
6-12 months    ki0047075b-MAL-ED          PERU                           0                    NA                1.2130827   1.1777318   1.2484335
6-12 months    ki0047075b-MAL-ED          PERU                           1                    NA                1.1957973   1.1007712   1.2908233
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                1.2013718   1.1594245   1.2433192
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                1.2809150   1.0689594   1.4928705
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                1.0013684   0.9352439   1.0674929
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                1.0408929   0.9302670   1.1515187
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                1.1246909   1.0239883   1.2253935
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                1.1708364   0.9250395   1.4166332
6-12 months    ki1000108-IRC              INDIA                          0                    NA                1.2430556   1.2122508   1.2738603
6-12 months    ki1000108-IRC              INDIA                          1                    NA                1.2920443   1.2009580   1.3831307
6-12 months    ki1000109-ResPak           PAKISTAN                       0                    NA                1.2728583   1.1215198   1.4241968
6-12 months    ki1000109-ResPak           PAKISTAN                       1                    NA                1.5187318   1.3256166   1.7118471
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                1.0892524   1.0760093   1.1024954
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                1.1234405   1.1050709   1.1418100
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.9808371   0.8855948   1.0760794
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                1.0406785   0.9164099   1.1649471
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                1.1688911   1.1449070   1.1928751
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                1.1703668   1.1086926   1.2320411
6-12 months    ki1101329-Keneba           GAMBIA                         0                    NA                1.1856908   1.1658198   1.2055618
6-12 months    ki1101329-Keneba           GAMBIA                         1                    NA                1.1312537   1.0828013   1.1797060
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                1.0976756   1.0649030   1.1304482
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                1.1367976   1.0633449   1.2102502
6-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                1.2095191   1.1382745   1.2807638
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                1.0852543   0.8659614   1.3045472
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                1.1572585   1.0927783   1.2217387
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                1.2500326   1.0593058   1.4407593
6-12 months    ki1114097-CONTENT          PERU                           0                    NA                1.2436975   1.1767299   1.3106652
6-12 months    ki1114097-CONTENT          PERU                           1                    NA                1.3614011   1.2165526   1.5062497
6-12 months    ki1119695-PROBIT           BELARUS                        0                    NA                1.4720567   1.4334731   1.5106403
6-12 months    ki1119695-PROBIT           BELARUS                        1                    NA                1.7017483   1.5233304   1.8801662
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                1.1904846   1.1789356   1.2020336
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                1.2542910   1.2198970   1.2886850
6-12 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                1.0192888   0.9994773   1.0391002
6-12 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                1.0256075   0.9773681   1.0738470
6-12 months    ki1135781-COHORTS          INDIA                          0                    NA                1.0983721   1.0896199   1.1071242
6-12 months    ki1135781-COHORTS          INDIA                          1                    NA                1.0972835   1.0711736   1.1233935
6-12 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                1.0671413   1.0546202   1.0796625
6-12 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                1.0619162   1.0089948   1.1148375
6-12 months    ki1148112-LCNI-5           MALAWI                         0                    NA                1.2683797   1.2362812   1.3004781
6-12 months    ki1148112-LCNI-5           MALAWI                         1                    NA                1.3063598   1.2610754   1.3516442
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                1.0988354   1.0913288   1.1063420
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                1.1259277   1.1140990   1.1377565
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                1.1934972   1.1817914   1.2052031
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                1.2278725   1.2071315   1.2486136
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.8495536   0.8319950   0.8671123
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.8350355   0.7943545   0.8757166
12-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                0.9728155   0.9376580   1.0079731
12-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                0.9360594   0.8295906   1.0425283
12-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.8867206   0.8660279   0.9074134
12-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.8687350   0.8177965   0.9196735
12-24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.8670209   0.8483991   0.8856427
12-24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.8519756   0.8071488   0.8968025
12-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.8497549   0.8271841   0.8723257
12-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.8310613   0.7614115   0.9007110
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.8686829   0.8433324   0.8940334
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.8826286   0.7906712   0.9745861
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7800523   0.7430813   0.8170234
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7759857   0.7085636   0.8434078
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.6791681   0.6247077   0.7336284
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.7567709   0.6589465   0.8545952
12-24 months   ki1000108-IRC              INDIA                          0                    NA                0.8274121   0.8070602   0.8477640
12-24 months   ki1000108-IRC              INDIA                          1                    NA                0.8460763   0.7806731   0.9114795
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.7572439   0.7412305   0.7732573
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.7223277   0.6861537   0.7585017
12-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.8442314   0.8329501   0.8555127
12-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.8461430   0.8146533   0.8776328
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.7119650   0.6827538   0.7411762
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.6983159   0.6383707   0.7582611
12-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.7748680   0.7617201   0.7880159
12-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.7929705   0.7676398   0.8183012
12-24 months   ki1135781-COHORTS          INDIA                          0                    NA                0.8292747   0.8239945   0.8345549
12-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.8062062   0.7910154   0.8213970
12-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.7065875   0.6990480   0.7141270
12-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.7090572   0.6768333   0.7412810
12-24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                0.8484986   0.8273638   0.8696333
12-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.8247160   0.7963839   0.8530481
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.7951483   0.7890912   0.8012053
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.7996224   0.7897568   0.8094879
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.8526296   0.8460271   0.8592321
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.8411523   0.8317509   0.8505538


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                3.5603213   3.4965371   3.6241055
0-3 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                4.0509714   3.9492443   4.1526985
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                3.5943339   3.5152425   3.6734253
0-3 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                3.8294484   3.7523124   3.9065845
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                3.3131452   3.2493248   3.3769656
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                3.4451859   3.3559092   3.5344627
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                3.5394654   3.4462268   3.6327040
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                3.5392594   3.3209576   3.7575612
0-3 months     ki1000108-IRC              INDIA                          NA                   NA                3.1729204   3.0609523   3.2848884
0-3 months     ki1000109-ResPak           PAKISTAN                       NA                   NA                2.8425174   2.5020922   3.1829425
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                3.6019890   3.5739652   3.6300127
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                3.3179028   3.2629598   3.3728459
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                3.2072757   2.9967779   3.4177736
0-3 months     ki1101329-Keneba           GAMBIA                         NA                   NA                3.1440476   3.0964801   3.1916152
0-3 months     ki1119695-PROBIT           BELARUS                        NA                   NA                2.8359503   2.7223637   2.9495370
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                3.3706967   3.3498056   3.3915878
0-3 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                2.6117091   2.5680119   2.6554063
0-3 months     ki1135781-COHORTS          INDIA                          NA                   NA                3.5478988   3.5336609   3.5621367
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                3.7184542   3.7081108   3.7287976
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                3.6381167   3.6070177   3.6692156
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                1.9333469   1.8827032   1.9839906
3-6 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                2.1370912   2.0494394   2.2247430
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                1.8588467   1.7931260   1.9245674
3-6 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.9537710   1.8906776   2.0168644
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                2.0203845   1.9526963   2.0880727
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                1.9630425   1.8758535   2.0502314
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.8432776   1.7414856   1.9450696
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                1.9246842   1.7326262   2.1167421
3-6 months     ki1000108-IRC              INDIA                          NA                   NA                1.8806738   1.8168757   1.9444719
3-6 months     ki1000109-ResPak           PAKISTAN                       NA                   NA                2.0992675   1.9091659   2.2893691
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                1.9405041   1.8966756   1.9843326
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                1.8306294   1.7825103   1.8787485
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                2.1312662   1.8772174   2.3853151
3-6 months     ki1101329-Keneba           GAMBIA                         NA                   NA                1.9927980   1.9534023   2.0321937
3-6 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                1.6467573   1.4866674   1.8068472
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                2.1082920   1.9341365   2.2824475
3-6 months     ki1114097-CONTENT          PERU                           NA                   NA                1.9878465   1.9048338   2.0708592
3-6 months     ki1119695-PROBIT           BELARUS                        NA                   NA                2.0901305   2.0495803   2.1306806
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                1.9761485   1.9560930   1.9962040
3-6 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                1.7600172   1.7269437   1.7930908
3-6 months     ki1135781-COHORTS          INDIA                          NA                   NA                1.8736922   1.8616365   1.8857480
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                1.9185928   1.9080198   1.9291657
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                1.8986352   1.8687915   1.9284788
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                1.1145345   1.0891836   1.1398854
6-12 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                1.3893396   1.3390346   1.4396445
6-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                1.1299911   1.1002747   1.1597074
6-12 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.2038122   1.1754217   1.2322027
6-12 months    ki0047075b-MAL-ED          PERU                           NA                   NA                1.2109599   1.1778190   1.2441008
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                1.2094885   1.1659224   1.2530545
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.0072786   0.9485980   1.0659592
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                1.1328342   1.0391685   1.2264999
6-12 months    ki1000108-IRC              INDIA                          NA                   NA                1.2485668   1.2193308   1.2778028
6-12 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                1.3208336   1.1898027   1.4518645
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                1.0982809   1.0864434   1.1101185
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                1.0045127   0.9287449   1.0802805
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                1.1691252   1.1466990   1.1915515
6-12 months    ki1101329-Keneba           GAMBIA                         NA                   NA                1.1806851   1.1620798   1.1992904
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                1.1084451   1.0771468   1.1397435
6-12 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                1.1874276   1.1156751   1.2591801
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                1.1716319   1.1091484   1.2341155
6-12 months    ki1114097-CONTENT          PERU                           NA                   NA                1.2570225   1.1945854   1.3194595
6-12 months    ki1119695-PROBIT           BELARUS                        NA                   NA                1.4724774   1.4339945   1.5109603
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                1.1971349   1.1861714   1.2080984
6-12 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                1.0200924   1.0017438   1.0384409
6-12 months    ki1135781-COHORTS          INDIA                          NA                   NA                1.0982468   1.0899394   1.1065542
6-12 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                1.0668341   1.0546452   1.0790230
6-12 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                1.2822639   1.2559619   1.3085659
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                1.1070051   1.1001471   1.1138631
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                1.2030027   1.1926436   1.2133617
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.8473033   0.8311655   0.8634412
12-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.9692760   0.9358403   1.0027117
12-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.8839536   0.8647473   0.9031599
12-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.8654614   0.8481208   0.8828019
12-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.8473795   0.8257610   0.8689979
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.8700558   0.8454663   0.8946452
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7794654   0.7463664   0.8125645
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6928125   0.6443590   0.7412660
12-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.8294859   0.8099817   0.8489901
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.7513967   0.7366998   0.7660936
12-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.8443877   0.8337136   0.8550618
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.7091061   0.6828130   0.7353991
12-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7786027   0.7669203   0.7902851
12-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.8265370   0.8215415   0.8315325
12-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.7067253   0.6993829   0.7140677
12-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.8398433   0.8228524   0.8568341
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.7965204   0.7911640   0.8018768
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.8493570   0.8438151   0.8548988


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.2472271    0.0479579    0.4464964
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                    0                  0.8550641    0.5841174    1.1260107
0-3 months     ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          1                    0                  0.2334714   -0.0133514    0.4802942
0-3 months     ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                    0                  0.4446653    0.1730790    0.7162517
0-3 months     ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           1                    0                  0.1839165   -0.0052051    0.3730381
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.3953200    0.0823774    0.7082625
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0412867   -0.1501812    0.2327545
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.3529710   -0.2756304    0.9815724
0-3 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          1                    0                  0.9721831    0.5978513    1.3465149
0-3 months     ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-ResPak           PAKISTAN                       1                    0                  1.0465264    0.3221055    1.7709472
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1                    0                  0.1875322    0.1095735    0.2654910
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     1                    0                  0.3835571    0.2204715    0.5466428
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  0.3038860   -0.3196960    0.9274680
0-3 months     ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         1                    0                  1.3230902    1.0212287    1.6249517
0-3 months     ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        1                    0                  1.1316881    0.6936508    1.5697254
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.7913354    0.7235538    0.8591170
0-3 months     ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      1                    0                  0.4512294    0.2274470    0.6750117
0-3 months     ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          1                    0                  0.3092130    0.2611912    0.3572348
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  0.2140130    0.1947430    0.2332829
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.2265060    0.1557195    0.2972925
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.0787636   -0.0786753    0.2362026
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                    0                  0.2030795   -0.0704010    0.4765601
3-6 months     ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    0                  0.2305970    0.0711433    0.3900507
3-6 months     ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    0                  0.3304640    0.1302394    0.5306886
3-6 months     ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           1                    0                  0.1808781   -0.0216736    0.3834297
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.2521336   -0.0543013    0.5585685
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  0.2368198   -0.1268594    0.6004991
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.4318629   -0.0739093    0.9376351
3-6 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          1                    0                  0.0576103   -0.1387477    0.2539684
3-6 months     ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-ResPak           PAKISTAN                       1                    0                  0.0997062   -0.4143569    0.6137693
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1                    0                  0.1202342    0.0441473    0.1963212
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     1                    0                  0.0322518   -0.1148822    0.1793858
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  0.2112426   -0.5616984    0.9841836
3-6 months     ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         1                    0                  0.1063001   -0.0155125    0.2281127
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.5172484    0.0943988    0.9400981
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                  0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                  1                    0                  0.6564198    0.1982773    1.1145623
3-6 months     ki1114097-CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CONTENT          PERU                           1                    0                  0.1192054   -0.0650816    0.3034924
3-6 months     ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        1                    0                  0.1509173   -0.1527797    0.4546142
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.0987202    0.0324437    0.1649968
3-6 months     ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      1                    0                  0.1179274   -0.0047889    0.2406437
3-6 months     ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          1                    0                  0.1180520    0.0791129    0.1569912
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  0.1293017    0.1086057    0.1499977
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.1634565    0.1003019    0.2266111
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.0037760   -0.0674455    0.0598935
6-12 months    ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.1216174   -0.2506301    0.0073954
6-12 months    ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA                          1                    0                  0.0656754   -0.0120965    0.1434474
6-12 months    ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.0514610   -0.1671736    0.0642516
6-12 months    ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          PERU                           1                    0                 -0.0172854   -0.1186739    0.0841031
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.0795432   -0.1365233    0.2956097
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0395245   -0.0893574    0.1684063
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.0461455   -0.2194804    0.3117714
6-12 months    ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA                          1                    0                  0.0489888   -0.0471655    0.1451431
6-12 months    ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000109-ResPak           PAKISTAN                       1                    0                  0.2458736    0.0005231    0.4912240
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0                  0.0341881    0.0150770    0.0532992
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  0.0598414   -0.0967274    0.2164101
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     1                    0                  0.0014757   -0.0646979    0.0676494
6-12 months    ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1101329-Keneba           GAMBIA                         1                    0                 -0.0544372   -0.1068059   -0.0020684
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    0                  0.0391220   -0.0413102    0.1195542
6-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.1242648   -0.3548406    0.1063109
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  1                    0                  0.0927741   -0.1085575    0.2941057
6-12 months    ki1114097-CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CONTENT          PERU                           1                    0                  0.1177036   -0.0418764    0.2772836
6-12 months    ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS                        1                    0                  0.2296916    0.0481525    0.4112307
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.0638065    0.0275252    0.1000877
6-12 months    ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          GUATEMALA                      1                    0                  0.0063188   -0.0458304    0.0584680
6-12 months    ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          INDIA                          1                    0                 -0.0010885   -0.0286263    0.0264492
6-12 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                 -0.0052251   -0.0596076    0.0491573
6-12 months    ki1148112-LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5           MALAWI                         1                    0                  0.0379801   -0.0175265    0.0934868
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  0.0270924    0.0142988    0.0398859
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.0343753    0.0109351    0.0578155
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.0145181   -0.0588267    0.0297905
12-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.0367561   -0.1488796    0.0753673
12-24 months   ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          1                    0                 -0.0179856   -0.0729667    0.0369955
12-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.0150453   -0.0635862    0.0334956
12-24 months   ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          PERU                           1                    0                 -0.0186936   -0.0919093    0.0545220
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.0139458   -0.0814419    0.1093335
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0040666   -0.0809600    0.0728268
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.0776028   -0.0343594    0.1895650
12-24 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA                          1                    0                  0.0186642   -0.0498323    0.0871608
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0                 -0.0349162   -0.0744761    0.0046436
12-24 months   ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1101329-Keneba           GAMBIA                         1                    0                  0.0019116   -0.0315379    0.0353612
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.0136491   -0.0803328    0.0530346
12-24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                  0.0181025   -0.0104371    0.0466422
12-24 months   ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          INDIA                          1                    0                 -0.0230685   -0.0391508   -0.0069862
12-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                  0.0024697   -0.0306244    0.0355638
12-24 months   ki1148112-LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5           MALAWI                         1                    0                 -0.0237826   -0.0591292    0.0115640
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  0.0044741   -0.0067162    0.0156644
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0114772   -0.0227335   -0.0002209
