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

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* W_mhtcm
* vagbrth
* single
* brthmon
* W_parity
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_vagbrth
* delta_single
* delta_brthmon
* delta_W_parity
* delta_impsan

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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

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
![](/tmp/b0cd23b0-95e9-4d31-821f-ab3f1c96389d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/b0cd23b0-95e9-4d31-821f-ab3f1c96389d/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                3.5158523   3.4510865   3.5806180
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                3.7804695   3.5969151   3.9640239
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0                    NA                3.9702036   3.8687385   4.0716687
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                4.8253118   4.5743440   5.0762795
0-3 months     ki0047075b-MAL-ED          INDIA                          0                    NA                3.5566593   3.4747270   3.6385916
0-3 months     ki0047075b-MAL-ED          INDIA                          1                    NA                3.8021425   3.5772170   4.0270680
0-3 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                3.7842911   3.7074025   3.8611798
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                4.2134310   3.9587913   4.4680707
0-3 months     ki0047075b-MAL-ED          PERU                           0                    NA                3.2936214   3.2278078   3.3594349
0-3 months     ki0047075b-MAL-ED          PERU                           1                    NA                3.5723762   3.4745698   3.6701826
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                3.4030754   3.3122385   3.4939123
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                3.7830460   3.5178567   4.0482352
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                3.5086915   3.4068299   3.6105531
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                2.6836644   2.5918242   2.7755045
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                3.4789216   3.2490737   3.7087695
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                3.8279263   3.2737331   4.3821195
0-3 months     ki1000108-IRC              INDIA                          0                    NA                3.0581245   2.9461572   3.1700919
0-3 months     ki1000108-IRC              INDIA                          1                    NA                4.1479832   3.8365922   4.4593742
0-3 months     ki1000109-ResPak           PAKISTAN                       0                    NA                2.5750286   2.2085568   2.9415004
0-3 months     ki1000109-ResPak           PAKISTAN                       1                    NA                3.6706322   3.0576495   4.2836149
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          0                    NA                3.5512808   3.5167707   3.5857909
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                3.7771631   3.7305430   3.8237833
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     0                    NA                3.2523237   3.1966890   3.3079585
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     1                    NA                3.6488246   3.5262143   3.7714350
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                3.1528871   2.9458890   3.3598852
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                3.4371406   2.9281485   3.9461327
0-3 months     ki1101329-Keneba           GAMBIA                         0                    NA                3.0682744   3.0247313   3.1118174
0-3 months     ki1101329-Keneba           GAMBIA                         1                    NA                4.3926950   4.0942120   4.6911780
0-3 months     ki1119695-PROBIT           BELARUS                        0                    NA                2.8330334   2.7197560   2.9463108
0-3 months     ki1119695-PROBIT           BELARUS                        1                    NA                4.5219144   4.4049767   4.6388522
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                3.2920644   3.2708461   3.3132828
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                4.0669491   4.0107215   4.1231766
0-3 months     ki1135781-COHORTS          GUATEMALA                      0                    NA                2.5895607   2.5460658   2.6330555
0-3 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                2.9868677   2.8564409   3.1172944
0-3 months     ki1135781-COHORTS          INDIA                          0                    NA                3.5122876   3.4977151   3.5268602
0-3 months     ki1135781-COHORTS          INDIA                          1                    NA                3.8251771   3.7845271   3.8658272
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                3.6418745   3.6305602   3.6531889
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                3.8897764   3.8729220   3.9066309
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                3.5688213   3.5333080   3.6043345
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                3.7988117   3.7398933   3.8577302
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                1.9209849   1.8678100   1.9741598
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                1.9997485   1.8515613   2.1479357
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0                    NA                2.1223686   2.0306037   2.2141334
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                3.0042567   2.8698506   3.1386629
3-6 months     ki0047075b-MAL-ED          INDIA                          0                    NA                1.8182676   1.7471888   1.8893464
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    NA                1.5585842   1.4698487   1.6473196
3-6 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                1.9158263   1.8526382   1.9790145
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                2.2578507   2.1169305   2.3987709
3-6 months     ki0047075b-MAL-ED          PERU                           0                    NA                2.0040984   1.9330127   2.0751841
3-6 months     ki0047075b-MAL-ED          PERU                           1                    NA                2.6090141   2.4623452   2.7556830
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                1.9383337   1.8477747   2.0288927
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                2.1903599   1.8976987   2.4830211
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                1.8368563   1.7378183   1.9358942
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                2.8015403   2.6797259   2.9233547
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                1.8545064   1.6475993   2.0614136
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                2.2863694   1.8248556   2.7478831
3-6 months     ki1000108-IRC              INDIA                          0                    NA                1.8731037   1.8055106   1.9406967
3-6 months     ki1000108-IRC              INDIA                          1                    NA                1.8991929   1.7521972   2.0461886
3-6 months     ki1000109-ResPak           PAKISTAN                       0                    NA                2.1074250   1.8953006   2.3195494
3-6 months     ki1000109-ResPak           PAKISTAN                       1                    NA                1.9161344   1.5671837   2.2650852
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          0                    NA                1.9107370   1.8569110   1.9645630
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                2.0279134   1.9892980   2.0665288
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     0                    NA                1.8269735   1.7771239   1.8768232
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     1                    NA                1.8566707   1.7457997   1.9675417
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                2.0996559   1.8554863   2.3438255
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                2.2522762   1.7810390   2.7235135
3-6 months     ki1101329-Keneba           GAMBIA                         0                    NA                1.9833104   1.9422229   2.0243980
3-6 months     ki1101329-Keneba           GAMBIA                         1                    NA                2.0976995   2.0329066   2.1624925
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                1.5433076   1.3865734   1.7000418
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                2.0605560   1.6678268   2.4532852
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                2.0193751   1.8459465   2.1928036
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                2.6957188   2.3119852   3.0794525
3-6 months     ki1114097-CONTENT          PERU                           0                    NA                1.9738928   1.8818685   2.0659172
3-6 months     ki1114097-CONTENT          PERU                           1                    NA                2.1704494   2.0761044   2.2647944
3-6 months     ki1119695-PROBIT           BELARUS                        0                    NA                2.0897628   2.0492882   2.1302374
3-6 months     ki1119695-PROBIT           BELARUS                        1                    NA                2.4248774   2.2842571   2.5654977
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                1.9657506   1.9446641   1.9868372
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                2.0676566   2.0087981   2.1265151
3-6 months     ki1135781-COHORTS          GUATEMALA                      0                    NA                1.7455594   1.7119125   1.7792064
3-6 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                1.7861795   1.7091680   1.8631911
3-6 months     ki1135781-COHORTS          INDIA                          0                    NA                1.8602289   1.8475944   1.8728634
3-6 months     ki1135781-COHORTS          INDIA                          1                    NA                1.9807583   1.9480954   2.0134211
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                1.8769635   1.8655073   1.8884196
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                2.0183017   2.0004950   2.0361084
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                1.8516045   1.8169351   1.8862738
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                2.0122935   1.9592983   2.0652888
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                1.1145481   1.0864107   1.1426855
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                1.1144640   1.0587792   1.1701489
6-12 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                1.4053264   1.3525393   1.4581135
6-12 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                1.2846596   1.1891233   1.3801958
6-12 months    ki0047075b-MAL-ED          INDIA                          0                    NA                1.1217464   1.0900027   1.1534901
6-12 months    ki0047075b-MAL-ED          INDIA                          1                    NA                1.2541740   1.2199761   1.2883719
6-12 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                1.2092627   1.1806182   1.2379072
6-12 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                1.1560620   1.0528263   1.2592977
6-12 months    ki0047075b-MAL-ED          PERU                           0                    NA                1.2107633   1.1754449   1.2460817
6-12 months    ki0047075b-MAL-ED          PERU                           1                    NA                1.0855565   0.9955747   1.1755382
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                1.1947180   1.1542043   1.2352317
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                1.1085948   1.0344763   1.1827133
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.9880055   0.9250475   1.0509634
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7242034   0.6686813   0.7797255
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                1.1248837   1.0244524   1.2253151
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                1.1736471   0.9450617   1.4022324
6-12 months    ki1000108-IRC              INDIA                          0                    NA                1.2446515   1.2138314   1.2754715
6-12 months    ki1000108-IRC              INDIA                          1                    NA                1.3106826   1.2400934   1.3812718
6-12 months    ki1000109-ResPak           PAKISTAN                       0                    NA                1.2728529   1.1215153   1.4241905
6-12 months    ki1000109-ResPak           PAKISTAN                       1                    NA                1.5187545   1.3256239   1.7118851
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                1.0882940   1.0754096   1.1011783
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                1.1228381   1.1063634   1.1393127
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.9043960   0.8149624   0.9938296
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.8472649   0.7457237   0.9488061
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                1.1679116   1.1439974   1.1918258
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                1.1754382   1.1148889   1.2359875
6-12 months    ki1101329-Keneba           GAMBIA                         0                    NA                1.1865114   1.1669195   1.2061032
6-12 months    ki1101329-Keneba           GAMBIA                         1                    NA                1.2422418   1.2141701   1.2703136
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                1.1057266   1.0755160   1.1359371
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                1.1801672   1.1301775   1.2301569
6-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                1.2200971   1.1493674   1.2908268
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                1.2172397   1.1097373   1.3247421
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                1.1572585   1.0927783   1.2217387
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                1.2500326   1.0593058   1.4407593
6-12 months    ki1114097-CONTENT          PERU                           0                    NA                1.2431723   1.1761264   1.3102183
6-12 months    ki1114097-CONTENT          PERU                           1                    NA                1.3512594   1.2596737   1.4428450
6-12 months    ki1119695-PROBIT           BELARUS                        0                    NA                1.4720651   1.4334813   1.5106489
6-12 months    ki1119695-PROBIT           BELARUS                        1                    NA                1.6954130   1.5426289   1.8481972
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                1.1896230   1.1781237   1.2011223
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                1.2300971   1.1988184   1.2613759
6-12 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                1.0210329   1.0016812   1.0403845
6-12 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                1.0875837   1.0571631   1.1180044
6-12 months    ki1135781-COHORTS          INDIA                          0                    NA                1.0978399   1.0891400   1.1065397
6-12 months    ki1135781-COHORTS          INDIA                          1                    NA                1.0908512   1.0673934   1.1143090
6-12 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                1.0664204   1.0539794   1.0788614
6-12 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                1.1063782   1.0713568   1.1413997
6-12 months    ki1148112-LCNI-5           MALAWI                         0                    NA                1.2798754   1.2507049   1.3090459
6-12 months    ki1148112-LCNI-5           MALAWI                         1                    NA                1.3537350   1.3186711   1.3887988
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                1.0977836   1.0903554   1.1052118
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                1.1264483   1.1154243   1.1374723
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                1.1934098   1.1817383   1.2050813
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                1.2265394   1.2060456   1.2470333
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.8495516   0.8319934   0.8671098
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.8350467   0.7943663   0.8757271
12-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                0.9730283   0.9381073   1.0079493
12-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                0.9332406   0.8335987   1.0328826
12-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.8813106   0.8607589   0.9018623
12-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.7709242   0.7272224   0.8146260
12-24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.8670452   0.8489300   0.8851605
12-24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.8503306   0.8160436   0.8846177
12-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.8440715   0.8215299   0.8666131
12-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.6367575   0.5790314   0.6944837
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.8691022   0.8437309   0.8944735
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.8787777   0.7937048   0.9638506
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7781334   0.7417128   0.8145541
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7084424   0.6658001   0.7510847
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.6791611   0.6247034   0.7336188
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.7568025   0.6590171   0.8545880
12-24 months   ki1000108-IRC              INDIA                          0                    NA                0.8282502   0.8079591   0.8485413
12-24 months   ki1000108-IRC              INDIA                          1                    NA                0.8480727   0.8016565   0.8944890
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.7555034   0.7398609   0.7711458
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.7298183   0.6992974   0.7603393
12-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.8434540   0.8323169   0.8545911
12-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.8199959   0.8016952   0.8382966
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.7162203   0.6871044   0.7453362
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.7814992   0.7245844   0.8384141
12-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.7750551   0.7621647   0.7879455
12-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.8076578   0.7866465   0.8286692
12-24 months   ki1135781-COHORTS          INDIA                          0                    NA                0.8286885   0.8234511   0.8339259
12-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.8135672   0.8001234   0.8270109
12-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.7059650   0.6984750   0.7134550
12-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.6837680   0.6657255   0.7018104
12-24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                0.8608051   0.8413249   0.8802853
12-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.8621221   0.8407946   0.8834495
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.7936835   0.7877487   0.7996184
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.8019879   0.7933410   0.8106348
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.8524205   0.8458530   0.8589880
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.8399469   0.8306640   0.8492298


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
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.2646172    0.0713316    0.4579029
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                    0                  0.8551082    0.5844122    1.1258042
0-3 months     ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          1                    0                  0.2454832    0.0076541    0.4833123
0-3 months     ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                    0                  0.4291399    0.1645815    0.6936982
0-3 months     ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           1                    0                  0.2787549    0.1670800    0.3904297
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.3799705    0.1011575    0.6587836
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.8250272   -0.9672005   -0.6828538
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.3490047   -0.2508532    0.9488627
0-3 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          1                    0                  1.0898586    0.7597993    1.4199180
0-3 months     ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-ResPak           PAKISTAN                       1                    0                  1.0956036    0.3816456    1.8095616
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1                    0                  0.2258823    0.1611942    0.2905704
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     1                    0                  0.3965009    0.2638267    0.5291752
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  0.2842536   -0.2519261    0.8204332
0-3 months     ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         1                    0                  1.3244206    1.0228198    1.6260215
0-3 months     ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        1                    0                  1.6888810    1.5063303    1.8714318
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.7748846    0.7150095    0.8347598
0-3 months     ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      1                    0                  0.3973070    0.2613935    0.5332205
0-3 months     ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          1                    0                  0.3128895    0.2700080    0.3557710
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  0.2479019    0.2292573    0.2665465
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.2299904    0.1607788    0.2992021
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.0787636   -0.0786753    0.2362026
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                    0                  0.8818882    0.7205452    1.0432311
3-6 months     ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    0                 -0.2596835   -0.3720145   -0.1473525
3-6 months     ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    0                  0.3420244    0.1895921    0.4944567
3-6 months     ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           1                    0                  0.6049157    0.4438573    0.7659742
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.2520262   -0.0543155    0.5583680
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  0.9646840    0.8038312    1.1255368
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.4318629   -0.0739093    0.9376351
3-6 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          1                    0                  0.0260892   -0.1352198    0.1873983
3-6 months     ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-ResPak           PAKISTAN                       1                    0                 -0.1912906   -0.5870554    0.2044743
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1                    0                  0.1171764    0.0540324    0.1803205
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     1                    0                  0.0296971   -0.0879344    0.1473286
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  0.1526203   -0.3048719    0.6101126
3-6 months     ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         1                    0                  0.1143891    0.0396634    0.1891147
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.5172484    0.0943988    0.9400981
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                  0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                  1                    0                  0.6763438    0.2530302    1.0996574
3-6 months     ki1114097-CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CONTENT          PERU                           1                    0                  0.1965566    0.0654148    0.3276983
3-6 months     ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        1                    0                  0.3351146    0.1986143    0.4716149
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.1019060    0.0396543    0.1641577
3-6 months     ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      1                    0                  0.0406201   -0.0426994    0.1239396
3-6 months     ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          1                    0                  0.1205294    0.0857130    0.1553458
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  0.1413382    0.1215459    0.1611306
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.1606891    0.0986771    0.2227011
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.0000841   -0.0621205    0.0619524
6-12 months    ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.1206668   -0.2256092   -0.0157245
6-12 months    ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA                          1                    0                  0.1324276    0.0888984    0.1759569
6-12 months    ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.0532007   -0.1597025    0.0533010
6-12 months    ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          PERU                           1                    0                 -0.1252068   -0.2219894   -0.0284243
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -0.0861231   -0.1628153   -0.0094310
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.2638021   -0.3441749   -0.1834293
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.0487633   -0.1982082    0.2957349
6-12 months    ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA                          1                    0                  0.0660311   -0.0107715    0.1428337
6-12 months    ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000109-ResPak           PAKISTAN                       1                    0                  0.2459016    0.0005392    0.4912640
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0                  0.0345441    0.0184310    0.0506572
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 -0.0571311   -0.1924475    0.0781853
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     1                    0                  0.0075266   -0.0572739    0.0723272
6-12 months    ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1101329-Keneba           GAMBIA                         1                    0                  0.0557305    0.0225468    0.0889141
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    0                  0.0744406    0.0233199    0.1255614
6-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0028574   -0.1320091    0.1262943
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  1                    0                  0.0927741   -0.1085575    0.2941057
6-12 months    ki1114097-CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CONTENT          PERU                           1                    0                  0.1080870   -0.0054676    0.2216417
6-12 months    ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS                        1                    0                  0.2233479    0.0668763    0.3798196
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.0404742    0.0073366    0.0736117
6-12 months    ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          GUATEMALA                      1                    0                  0.0665509    0.0323623    0.1007395
6-12 months    ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          INDIA                          1                    0                 -0.0069886   -0.0318783    0.0179010
6-12 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                  0.0399578    0.0031863    0.0767294
6-12 months    ki1148112-LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5           MALAWI                         1                    0                  0.0738596    0.0318957    0.1158234
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  0.0286648    0.0165385    0.0407911
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.0331296    0.0099428    0.0563165
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.0145049   -0.0588117    0.0298018
12-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.0397877   -0.1443525    0.0647772
12-24 months   ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          1                    0                 -0.1103864   -0.1579905   -0.0627823
12-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.0167146   -0.0527093    0.0192801
12-24 months   ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          PERU                           1                    0                 -0.2073139   -0.2694070   -0.1452208
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.0096754   -0.0784021    0.0977530
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0696910   -0.1259155   -0.0134666
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.0776414   -0.0342719    0.1895547
12-24 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA                          1                    0                  0.0198225   -0.0308239    0.0704689
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0                 -0.0256850   -0.0588530    0.0074830
12-24 months   ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1101329-Keneba           GAMBIA                         1                    0                 -0.0234582   -0.0444082   -0.0025081
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.0652789    0.0017786    0.1287793
12-24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                  0.0326027    0.0079999    0.0572055
12-24 months   ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          INDIA                          1                    0                 -0.0151213   -0.0294132   -0.0008294
12-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 -0.0221971   -0.0414970   -0.0028971
12-24 months   ki1148112-LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5           MALAWI                         1                    0                  0.0013170   -0.0275922    0.0302261
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  0.0083044   -0.0017120    0.0183208
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0124736   -0.0235930   -0.0013542
