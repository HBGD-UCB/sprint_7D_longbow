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
##        y_rate_haz
## enstunt -0.316645646153846 -0.198098507692308 -0.180548326203209
##       0                  1                  1                  1
##       1                  0                  0                  0
##        y_rate_haz
## enstunt -0.158228287878788 -0.0972080103092784 -0.0744238404255319
##       0                  1                   1                   1
##       1                  0                   0                   0
##        y_rate_haz
## enstunt -0.0270724554973822 0.07604175
##       0                   1          1
##       1                   0          0
```




# Results Detail

## Results Plots
![](/tmp/19bad290-00e9-4db1-b20b-de8ea3ddc538/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/19bad290-00e9-4db1-b20b-de8ea3ddc538/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0690045   -0.1018398   -0.0361693
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                 0.1221303    0.0313163    0.2129444
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.1440334    0.0940314    0.1940355
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.6610066    0.5276417    0.7943715
0-3 months     ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0407098   -0.0809551   -0.0004645
0-3 months     ki0047075b-MAL-ED          INDIA                          1                    NA                 0.1224899   -0.0010758    0.2460555
0-3 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0493592    0.0145053    0.0842132
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.3027971    0.1769615    0.4286326
0-3 months     ki0047075b-MAL-ED          PERU                           0                    NA                -0.1773517   -0.2116102   -0.1430931
0-3 months     ki0047075b-MAL-ED          PERU                           1                    NA                -0.0329025   -0.1302634    0.0644584
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.1260136   -0.1713414   -0.0806857
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.1042754   -0.0319228    0.2404737
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0722323   -0.1262258   -0.0182389
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0461396   -0.0497327    0.1420119
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.1068183   -0.2188071    0.0051706
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                 0.0842306   -0.2153526    0.3838139
0-3 months     ki1000108-IRC              INDIA                          0                    NA                -0.3216195   -0.3771721   -0.2660669
0-3 months     ki1000108-IRC              INDIA                          1                    NA                 0.2230415    0.0471661    0.3989170
0-3 months     ki1000109-ResPak           PAKISTAN                       0                    NA                -0.4588790   -0.6352941   -0.2824640
0-3 months     ki1000109-ResPak           PAKISTAN                       1                    NA                 0.0462616   -0.2716934    0.3642166
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0252182   -0.0451222   -0.0053142
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.1154096    0.0798610    0.1509581
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.1542691   -0.1820690   -0.1264693
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     1                    NA                 0.0826576    0.0099151    0.1554001
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.2462325   -0.3417092   -0.1507558
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0327192   -0.1843742    0.2498127
0-3 months     ki1101329-Keneba           GAMBIA                         0                    NA                -0.3289679   -0.3503945   -0.3075414
0-3 months     ki1101329-Keneba           GAMBIA                         1                    NA                 0.4386267    0.2857111    0.5915424
0-3 months     ki1119695-PROBIT           BELARUS                        0                    NA                -0.4389261   -0.4980396   -0.3798127
0-3 months     ki1119695-PROBIT           BELARUS                        1                    NA                 0.1809900   -0.0287183    0.3906982
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.1877345   -0.1982276   -0.1772415
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.2686316    0.2368347    0.3004284
0-3 months     ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.5582492   -0.5800693   -0.5364290
0-3 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.2699377   -0.3827079   -0.1571675
0-3 months     ki1135781-COHORTS          INDIA                          0                    NA                -0.0872423   -0.0943247   -0.0801598
0-3 months     ki1135781-COHORTS          INDIA                          1                    NA                 0.1255509    0.1034897    0.1476122
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0204227    0.0150066    0.0258388
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.1800534    0.1718139    0.1882928
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0187766    0.0022586    0.0352946
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                 0.1785356    0.1495036    0.2075675
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0308140   -0.0555071   -0.0061209
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                 0.0364280   -0.0336930    0.1065489
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0443195    0.0016290    0.0870100
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.1620278    0.0481163    0.2759393
3-6 months     ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0707885   -0.1038888   -0.0376882
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    NA                 0.0529718   -0.0143307    0.1202743
3-6 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0456897   -0.0761382   -0.0152412
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.1239020    0.0367486    0.2110553
3-6 months     ki0047075b-MAL-ED          PERU                           0                    NA                 0.0148008   -0.0190226    0.0486241
3-6 months     ki0047075b-MAL-ED          PERU                           1                    NA                 0.1219751    0.0315339    0.2124163
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0212578   -0.0637803    0.0212646
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.1077729   -0.0363286    0.2518743
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0874016   -0.1352649   -0.0395382
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0657046   -0.0923427    0.2237518
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0760122   -0.1727923    0.0207679
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                 0.1427943   -0.0692125    0.3548011
3-6 months     ki1000108-IRC              INDIA                          0                    NA                -0.0569517   -0.0889744   -0.0249290
3-6 months     ki1000108-IRC              INDIA                          1                    NA                -0.0123124   -0.0994218    0.0747970
3-6 months     ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0586275   -0.0390090    0.1562640
3-6 months     ki1000109-ResPak           PAKISTAN                       1                    NA                 0.1144531   -0.1116448    0.3405510
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0370742   -0.0612482   -0.0129002
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0417267    0.0194390    0.0640144
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0573371   -0.0807818   -0.0338924
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.0232451   -0.0865589    0.0400687
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0638833   -0.0578132    0.1855798
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.2045204   -0.1462001    0.5552409
3-6 months     ki1101329-Keneba           GAMBIA                         0                    NA                -0.0235883   -0.0431712   -0.0040055
3-6 months     ki1101329-Keneba           GAMBIA                         1                    NA                 0.0446714   -0.0083938    0.0977366
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.2380818   -0.3163606   -0.1598030
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0166919   -0.1625675    0.1959512
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                -0.0036079   -0.0844909    0.0772752
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                 0.3400739    0.1345065    0.5456412
3-6 months     ki1114097-CONTENT          PERU                           0                    NA                -0.0347298   -0.0760038    0.0065441
3-6 months     ki1114097-CONTENT          PERU                           1                    NA                 0.0458550   -0.0291666    0.1208767
3-6 months     ki1119695-PROBIT           BELARUS                        0                    NA                 0.0459968    0.0270555    0.0649382
3-6 months     ki1119695-PROBIT           BELARUS                        1                    NA                 0.1430529   -0.0029318    0.2890375
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0069150   -0.0168029    0.0029729
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0573088    0.0279227    0.0866949
3-6 months     ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.1062944   -0.1224102   -0.0901786
3-6 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0238190   -0.0805043    0.0328663
3-6 months     ki1135781-COHORTS          INDIA                          0                    NA                -0.0655813   -0.0714332   -0.0597295
3-6 months     ki1135781-COHORTS          INDIA                          1                    NA                 0.0165133   -0.0003548    0.0333814
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0293112   -0.0346642   -0.0239582
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0541260    0.0453675    0.0628844
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0375798   -0.0535819   -0.0215777
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                 0.0644266    0.0397849    0.0890683
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0839816   -0.0957523   -0.0722109
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0648420   -0.0882956   -0.0413883
6-12 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0116610   -0.0114217    0.0347437
6-12 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.0263478   -0.0753409    0.0226454
6-12 months    ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0805092   -0.0942688   -0.0667497
6-12 months    ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0358259   -0.0654319   -0.0062199
6-12 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0562762   -0.0682512   -0.0443012
6-12 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0594579   -0.1053923   -0.0135236
6-12 months    ki0047075b-MAL-ED          PERU                           0                    NA                -0.0386100   -0.0538157   -0.0234044
6-12 months    ki0047075b-MAL-ED          PERU                           1                    NA                -0.0268337   -0.0672236    0.0135561
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0498434   -0.0674546   -0.0322322
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.0044984   -0.0919870    0.0829903
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1304357   -0.1579500   -0.1029215
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0928639   -0.1421485   -0.0435793
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0767150   -0.1208240   -0.0326061
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0507816   -0.1588799    0.0573166
6-12 months    ki1000108-IRC              INDIA                          0                    NA                -0.0305409   -0.0440846   -0.0169971
6-12 months    ki1000108-IRC              INDIA                          1                    NA                 0.0096881   -0.0303585    0.0497347
6-12 months    ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0145739   -0.0816863    0.0525384
6-12 months    ki1000109-ResPak           PAKISTAN                       1                    NA                 0.0983642    0.0152112    0.1815172
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0956361   -0.1011483   -0.0901239
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0601052   -0.0685372   -0.0516733
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -0.1326063   -0.1708203   -0.0943923
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                -0.0795153   -0.1306600   -0.0283707
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0562060   -0.0660721   -0.0463398
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.0334257   -0.0594174   -0.0074341
6-12 months    ki1101329-Keneba           GAMBIA                         0                    NA                -0.0609220   -0.0693393   -0.0525047
6-12 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.0663465   -0.0865035   -0.0461895
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                -0.0867115   -0.1000655   -0.0733575
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -0.0438173   -0.0740441   -0.0135906
6-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0436179   -0.0736600   -0.0135759
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0779492   -0.1734186    0.0175202
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                -0.0794162   -0.1075433   -0.0512891
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                -0.0154609   -0.0945796    0.0636579
6-12 months    ki1114097-CONTENT          PERU                           0                    NA                -0.0485192   -0.0759779   -0.0210605
6-12 months    ki1114097-CONTENT          PERU                           1                    NA                 0.0397274   -0.0206597    0.1001146
6-12 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0427290    0.0261254    0.0593326
6-12 months    ki1119695-PROBIT           BELARUS                        1                    NA                 0.1719023    0.0954846    0.2483199
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0539512   -0.0588706   -0.0490318
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0134244   -0.0280212    0.0011723
6-12 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.1123532   -0.1204665   -0.1042399
6-12 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0846835   -0.1048944   -0.0644725
6-12 months    ki1135781-COHORTS          INDIA                          0                    NA                -0.0935913   -0.0972242   -0.0899584
6-12 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.0716667   -0.0827005   -0.0606329
6-12 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.1014455   -0.1066903   -0.0962006
6-12 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.0797768   -0.1018772   -0.0576764
6-12 months    ki1148112-LCNI-5           MALAWI                         0                    NA                -0.0218421   -0.0350568   -0.0086274
6-12 months    ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0229770    0.0040893    0.0418648
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0844626   -0.0875998   -0.0813253
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0527538   -0.0578536   -0.0476540
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0481198   -0.0529883   -0.0432514
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0131810   -0.0219512   -0.0044107
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0192861   -0.0252556   -0.0133166
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0083104   -0.0218863    0.0052655
12-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0039550   -0.0160606    0.0081506
12-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.0073001   -0.0418511    0.0272510
12-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0103403   -0.0165169   -0.0041637
12-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                 0.0003253   -0.0135008    0.0141514
12-24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0289727   -0.0350546   -0.0228909
12-24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0174535   -0.0322446   -0.0026623
12-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                -0.0108214   -0.0185897   -0.0030532
12-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                 0.0030477   -0.0177475    0.0238428
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0172369   -0.0256946   -0.0087793
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.0022213   -0.0350284    0.0305858
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0397468   -0.0516668   -0.0278268
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0267304   -0.0519826   -0.0014781
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0732605   -0.0931779   -0.0533432
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0408621   -0.0785122   -0.0032121
12-24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0343412   -0.0416236   -0.0270588
12-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0111886   -0.0358769    0.0134997
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0419750   -0.0470721   -0.0368779
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.0326573   -0.0443882   -0.0209263
12-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0222067   -0.0262158   -0.0181976
12-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0026368   -0.0141087    0.0088350
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0537262   -0.0640725   -0.0433799
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0475465   -0.0687178   -0.0263752
12-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0350742   -0.0395045   -0.0306439
12-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0084309   -0.0168428   -0.0000191
12-24 months   ki1135781-COHORTS          INDIA                          0                    NA                -0.0365542   -0.0382855   -0.0348229
12-24 months   ki1135781-COHORTS          INDIA                          1                    NA                -0.0234081   -0.0285153   -0.0183009
12-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0587685   -0.0613481   -0.0561888
12-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.0380336   -0.0494702   -0.0265969
12-24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                -0.0230556   -0.0303223   -0.0157888
12-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0042234   -0.0135195    0.0050728
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0246223   -0.0267129   -0.0225318
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0060923   -0.0093959   -0.0027887
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0185011   -0.0207503   -0.0162519
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0048868   -0.0082568   -0.0015169


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0368810   -0.0694686   -0.0042934
0-3 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.1928587    0.1409027    0.2448147
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0156021   -0.0554731    0.0242688
0-3 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.0760369    0.0401947    0.1118791
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                -0.1595650   -0.1924063   -0.1267237
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.1018785   -0.1458569   -0.0579001
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0569256   -0.1060833   -0.0077680
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0733847   -0.1808133    0.0340439
0-3 months     ki1000108-IRC              INDIA                          NA                   NA                -0.2594964   -0.3154509   -0.2035418
0-3 months     ki1000109-ResPak           PAKISTAN                       NA                   NA                -0.3301177   -0.4961606   -0.1640748
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                 0.0123467   -0.0036133    0.0283068
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.1166818   -0.1437308   -0.0896329
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.1925879   -0.2902967   -0.0948792
0-3 months     ki1101329-Keneba           GAMBIA                         NA                   NA                -0.2850538   -0.3091443   -0.2609633
0-3 months     ki1119695-PROBIT           BELARUS                        NA                   NA                -0.4374178   -0.4966952   -0.3781404
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.1428175   -0.1532252   -0.1324098
0-3 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.5431999   -0.5652020   -0.5211979
0-3 months     ki1135781-COHORTS          INDIA                          NA                   NA                -0.0623259   -0.0692941   -0.0553576
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                 0.0705293    0.0655741    0.0754845
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                 0.0673143    0.0523756    0.0822531
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0202604   -0.0440268    0.0035061
3-6 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0559535    0.0155245    0.0963825
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0535812   -0.0842010   -0.0229614
3-6 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0277330   -0.0575360    0.0020701
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                 0.0278298   -0.0041422    0.0598018
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0086078   -0.0498200    0.0326044
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0670777   -0.1145727   -0.0195828
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0404561   -0.1303080    0.0493957
3-6 months     ki1000108-IRC              INDIA                          NA                   NA                -0.0518918   -0.0819849   -0.0217987
3-6 months     ki1000109-ResPak           PAKISTAN                       NA                   NA                 0.0697927   -0.0206781    0.1602634
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0167249   -0.0360696    0.0026198
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0519507   -0.0741070   -0.0297944
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0909289   -0.0302430    0.2121008
3-6 months     ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0169384   -0.0353846    0.0015078
3-6 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.1871271   -0.2653173   -0.1089368
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                 0.0432578   -0.0398566    0.1263723
3-6 months     ki1114097-CONTENT          PERU                           NA                   NA                -0.0259388   -0.0642011    0.0123236
3-6 months     ki1119695-PROBIT           BELARUS                        NA                   NA                 0.0462225    0.0272253    0.0652197
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0003480   -0.0097329    0.0090369
3-6 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0974286   -0.1131628   -0.0816944
3-6 months     ki1135781-COHORTS          INDIA                          NA                   NA                -0.0560574   -0.0616249   -0.0504899
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0041817   -0.0090899    0.0007266
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0089689   -0.0226829    0.0047451
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0808366   -0.0914442   -0.0702290
6-12 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0078601   -0.0135577    0.0292779
6-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0741259   -0.0868606   -0.0613912
6-12 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0566001   -0.0683295   -0.0448707
6-12 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0371638   -0.0514034   -0.0229242
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0452163   -0.0634783   -0.0269544
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1248175   -0.1494828   -0.1001522
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0721386   -0.1132224   -0.0310548
6-12 months    ki1000108-IRC              INDIA                          NA                   NA                -0.0260151   -0.0389122   -0.0131180
6-12 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                 0.0074628   -0.0506190    0.0655446
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0862530   -0.0909079   -0.0815981
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -0.1116015   -0.1424384   -0.0807645
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0525916   -0.0618903   -0.0432928
6-12 months    ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0614208   -0.0692861   -0.0535555
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                -0.0749035   -0.0879751   -0.0618320
6-12 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0497213   -0.0799413   -0.0195012
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                -0.0695076   -0.0967955   -0.0422198
6-12 months    ki1114097-CONTENT          PERU                           NA                   NA                -0.0385290   -0.0649377   -0.0121203
6-12 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.0429656    0.0264096    0.0595216
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0497272   -0.0544031   -0.0450514
6-12 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.1088343   -0.1163969   -0.1012718
6-12 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.0910679   -0.0945297   -0.0876062
6-12 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.1001714   -0.1052800   -0.0950627
6-12 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0054578   -0.0165120    0.0055964
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0749008   -0.0777988   -0.0720028
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0384586   -0.0428105   -0.0341066
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0175849   -0.0230782   -0.0120915
12-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.0042771   -0.0157130    0.0071587
12-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0086995   -0.0143699   -0.0030290
12-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0277787   -0.0334672   -0.0220901
12-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0090591   -0.0163681   -0.0017500
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0157587   -0.0240637   -0.0074537
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0378681   -0.0487380   -0.0269983
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0675641   -0.0854465   -0.0496818
12-24 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0317687   -0.0388357   -0.0247017
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0404146   -0.0451027   -0.0357265
12-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0206064   -0.0244177   -0.0167952
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0524318   -0.0617402   -0.0431234
12-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0295775   -0.0335729   -0.0255821
12-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -0.0349941   -0.0366407   -0.0333474
12-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.0576114   -0.0601370   -0.0550859
12-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0162019   -0.0220198   -0.0103840
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0189395   -0.0207960   -0.0170830
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0146192   -0.0165263   -0.0127120


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.1911348    0.0945670   0.2877027
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                    0                  0.5169731    0.3745428   0.6594035
0-3 months     ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          1                    0                  0.1631996    0.0332452   0.2931541
0-3 months     ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                    0                  0.2534378    0.1228645   0.3840111
0-3 months     ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           1                    0                  0.1444492    0.0412368   0.2476616
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.2302890    0.0867460   0.3738320
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  0.1183719    0.0083411   0.2284028
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.1910489   -0.1287817   0.5108796
0-3 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     ki1000108-IRC              INDIA                          1                    0                  0.5446611    0.3602207   0.7291014
0-3 months     ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     ki1000109-ResPak           PAKISTAN                       1                    0                  0.5051406    0.1415232   0.8687581
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1                    0                  0.1406278    0.0965802   0.1846753
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     1                    0                  0.2369267    0.1590531   0.3148004
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  0.2789517    0.0417907   0.5161128
0-3 months     ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         1                    0                  0.7675947    0.6131852   0.9220042
0-3 months     ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        1                    0                  0.6199161    0.3924054   0.8474268
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.4563661    0.4228826   0.4898496
0-3 months     ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      1                    0                  0.2883114    0.1734496   0.4031732
0-3 months     ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          1                    0                  0.2127932    0.1896230   0.2359634
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  0.1596307    0.1503826   0.1688787
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.1597590    0.1257956   0.1937224
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.0672420   -0.0070998   0.1415837
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                    0                  0.1177083   -0.0039400   0.2393566
3-6 months     ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    0                  0.1237603    0.0487586   0.1987620
3-6 months     ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    0                  0.1695917    0.0772726   0.2619108
3-6 months     ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           1                    0                  0.1071744    0.0106154   0.2037333
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.1290307   -0.0212137   0.2792751
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  0.1531061   -0.0120297   0.3182419
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.2188064   -0.0142457   0.4518585
3-6 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     ki1000108-IRC              INDIA                          1                    0                  0.0446393   -0.0481697   0.1374483
3-6 months     ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     ki1000109-ResPak           PAKISTAN                       1                    0                  0.0558256   -0.1904530   0.3021042
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1                    0                  0.0788009    0.0447022   0.1128995
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     1                    0                  0.0340921   -0.0334231   0.1016072
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  0.1406371   -0.2305971   0.5118714
3-6 months     ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         1                    0                  0.0682597    0.0116964   0.1248230
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.2547737    0.0591683   0.4503791
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                  0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                  1                    0                  0.3436817    0.1227745   0.5645890
3-6 months     ki1114097-CONTENT          PERU                           0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     ki1114097-CONTENT          PERU                           1                    0                  0.0805848   -0.0050410   0.1662107
3-6 months     ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        1                    0                  0.0970560   -0.0445568   0.2386689
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.0642238    0.0332187   0.0952289
3-6 months     ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      1                    0                  0.0824754    0.0235437   0.1414071
3-6 months     ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          1                    0                  0.0820946    0.0642403   0.0999490
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  0.0834372    0.0737369   0.0931375
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.1020064    0.0729979   0.1310150
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.0191396   -0.0071020   0.0453813
6-12 months    ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000   0.0000000
6-12 months    ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.0380088   -0.0921673   0.0161497
6-12 months    ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA                          1                    0                  0.0446833    0.0120361   0.0773305
6-12 months    ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000   0.0000000
6-12 months    ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.0031817   -0.0506514   0.0442879
6-12 months    ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000   0.0000000
6-12 months    ki0047075b-MAL-ED          PERU                           1                    0                  0.0117763   -0.0313810   0.0549336
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000   0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.0453450   -0.0438986   0.1345886
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000   0.0000000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0375718   -0.0188728   0.0940165
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.0259334   -0.0908177   0.1426845
6-12 months    ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
6-12 months    ki1000108-IRC              INDIA                          1                    0                  0.0402290   -0.0020459   0.0825039
6-12 months    ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000   0.0000000
6-12 months    ki1000109-ResPak           PAKISTAN                       1                    0                  0.1129381    0.0060808   0.2197955
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0                  0.0355309    0.0262912   0.0447706
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  0.0530910   -0.0107532   0.1169352
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     1                    0                  0.0227802   -0.0050210   0.0505815
6-12 months    ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000   0.0000000
6-12 months    ki1101329-Keneba           GAMBIA                         1                    0                 -0.0054245   -0.0272684   0.0164194
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000   0.0000000
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    0                  0.0428941    0.0098490   0.0759393
6-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000   0.0000000
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0343313   -0.1344159   0.0657534
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  0                    0                  0.0000000    0.0000000   0.0000000
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  1                    0                  0.0639554   -0.0200143   0.1479251
6-12 months    ki1114097-CONTENT          PERU                           0                    0                  0.0000000    0.0000000   0.0000000
6-12 months    ki1114097-CONTENT          PERU                           1                    0                  0.0882466    0.0219097   0.1545836
6-12 months    ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000   0.0000000
6-12 months    ki1119695-PROBIT           BELARUS                        1                    0                  0.1291732    0.0514066   0.2069399
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000   0.0000000
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.0405268    0.0251234   0.0559302
6-12 months    ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000   0.0000000
6-12 months    ki1135781-COHORTS          GUATEMALA                      1                    0                  0.0276698    0.0058912   0.0494484
6-12 months    ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
6-12 months    ki1135781-COHORTS          INDIA                          1                    0                  0.0219246    0.0103081   0.0335411
6-12 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000   0.0000000
6-12 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                  0.0216687   -0.0010456   0.0443829
6-12 months    ki1148112-LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000   0.0000000
6-12 months    ki1148112-LCNI-5           MALAWI                         1                    0                  0.0448191    0.0217676   0.0678707
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  0.0317088    0.0262098   0.0372077
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.0349388    0.0250887   0.0447890
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.0109758   -0.0038546   0.0258061
12-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000   0.0000000
12-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.0033451   -0.0399555   0.0332653
12-24 months   ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          1                    0                  0.0106656   -0.0044774   0.0258087
12-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000   0.0000000
12-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0                  0.0115193   -0.0044734   0.0275119
12-24 months   ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000   0.0000000
12-24 months   ki0047075b-MAL-ED          PERU                           1                    0                  0.0138691   -0.0083297   0.0360679
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000   0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.0150156   -0.0188642   0.0488953
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000   0.0000000
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0130164   -0.0149078   0.0409407
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.0323984   -0.0101953   0.0749921
12-24 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
12-24 months   ki1000108-IRC              INDIA                          1                    0                  0.0231526   -0.0025873   0.0488926
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0                  0.0093177   -0.0034728   0.0221082
12-24 months   ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000   0.0000000
12-24 months   ki1101329-Keneba           GAMBIA                         1                    0                  0.0195699    0.0074176   0.0317221
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000   0.0000000
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.0061797   -0.0173845   0.0297438
12-24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000   0.0000000
12-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                  0.0266432    0.0171360   0.0361504
12-24 months   ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
12-24 months   ki1135781-COHORTS          INDIA                          1                    0                  0.0131460    0.0077534   0.0185387
12-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000   0.0000000
12-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                  0.0207349    0.0090109   0.0324588
12-24 months   ki1148112-LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000   0.0000000
12-24 months   ki1148112-LCNI-5           MALAWI                         1                    0                  0.0188322    0.0070329   0.0306316
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  0.0185300    0.0147210   0.0223391
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.0136143    0.0096205   0.0176081
