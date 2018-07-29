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

**Outcome Variable:** y_rate_haz

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
![](/tmp/f3ecde91-6b4d-44d0-b05f-7038a9def310/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/f3ecde91-6b4d-44d0-b05f-7038a9def310/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0698693   -0.1025618   -0.0371768
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                 0.1263704    0.0375547    0.2151861
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.1442017    0.0942429    0.1941604
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.6597047    0.5275200    0.7918894
0-3 months     ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0309453   -0.0711499    0.0092593
0-3 months     ki0047075b-MAL-ED          INDIA                          1                    NA                 0.4338287    0.3280413    0.5396161
0-3 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0501587    0.0158074    0.0845101
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.2992881    0.1968025    0.4017737
0-3 months     ki0047075b-MAL-ED          PERU                           0                    NA                -0.1773611   -0.2116161   -0.1431061
0-3 months     ki0047075b-MAL-ED          PERU                           1                    NA                -0.0328366   -0.1301377    0.0644645
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.1306934   -0.1758017   -0.0855850
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.1040990   -0.1997739   -0.0084242
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0827476   -0.1337991   -0.0316962
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.4112592   -0.4564850   -0.3660334
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.1053660   -0.2151834    0.0044514
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                 0.0719116   -0.1486634    0.2924865
0-3 months     ki1000108-IRC              INDIA                          0                    NA                -0.3245028   -0.3799139   -0.2690917
0-3 months     ki1000108-IRC              INDIA                          1                    NA                 0.2436193    0.0848389    0.4023996
0-3 months     ki1000109-ResPak           PAKISTAN                       0                    NA                -0.4623321   -0.6391368   -0.2855274
0-3 months     ki1000109-ResPak           PAKISTAN                       1                    NA                 0.0803977   -0.2262645    0.3870598
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0250736   -0.0436367   -0.0065105
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.1426406    0.1171881    0.1680932
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.1567181   -0.1838944   -0.1295417
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     1                    NA                 0.0874528    0.0275831    0.1473224
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.2461665   -0.3414397   -0.1508934
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0325320   -0.1825175    0.2475816
0-3 months     ki1101329-Keneba           GAMBIA                         0                    NA                -0.3289566   -0.3502884   -0.3076249
0-3 months     ki1101329-Keneba           GAMBIA                         1                    NA                 0.4491821    0.3391654    0.5591987
0-3 months     ki1119695-PROBIT           BELARUS                        0                    NA                -0.4390676   -0.4981683   -0.3799668
0-3 months     ki1119695-PROBIT           BELARUS                        1                    NA                 0.4453398    0.3854765    0.5052032
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.1882542   -0.1987102   -0.1777983
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.2633947    0.2353762    0.2914131
0-3 months     ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.5575867   -0.5792369   -0.5359365
0-3 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.3058265   -0.3639982   -0.2476548
0-3 months     ki1135781-COHORTS          INDIA                          0                    NA                -0.0876436   -0.0946816   -0.0806055
0-3 months     ki1135781-COHORTS          INDIA                          1                    NA                 0.1331895    0.1141527    0.1522263
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0162735    0.0108931    0.0216538
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.1922579    0.1842597    0.2002561
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0189226    0.0024261    0.0354192
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                 0.1792128    0.1506955    0.2077301
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0306172   -0.0552738   -0.0059606
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                 0.0353588   -0.0337046    0.1044221
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0438514    0.0011839    0.0865189
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.1663219    0.0539594    0.2786845
3-6 months     ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0742353   -0.1073321   -0.0411385
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    NA                -0.1895279   -0.2311161   -0.1479397
3-6 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0457438   -0.0759481   -0.0155396
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.1225532    0.0429229    0.2021836
3-6 months     ki0047075b-MAL-ED          PERU                           0                    NA                 0.0141421   -0.0191884    0.0474726
3-6 months     ki0047075b-MAL-ED          PERU                           1                    NA                 0.1260312    0.0498519    0.2022105
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0183082   -0.0591856    0.0225692
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.0232409   -0.0345725    0.0810543
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0764980   -0.1232363   -0.0297598
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.3857853    0.3180816    0.4534890
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0763817   -0.1730287    0.0202654
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                 0.1401014   -0.0689920    0.3491948
3-6 months     ki1000108-IRC              INDIA                          0                    NA                -0.0577616   -0.0895732   -0.0259501
3-6 months     ki1000108-IRC              INDIA                          1                    NA                -0.0274543   -0.0959340    0.0410254
3-6 months     ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0670365   -0.0344959    0.1685689
3-6 months     ki1000109-ResPak           PAKISTAN                       1                    NA                 0.0050936   -0.1659216    0.1761088
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0367222   -0.0604752   -0.0129693
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0402416    0.0221566    0.0583266
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0573781   -0.0808032   -0.0339530
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.0229951   -0.0858074    0.0398171
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0835588   -0.0315555    0.1986731
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.1607329    0.0314354    0.2900303
3-6 months     ki1101329-Keneba           GAMBIA                         0                    NA                -0.0233309   -0.0426491   -0.0040127
3-6 months     ki1101329-Keneba           GAMBIA                         1                    NA                 0.0500018    0.0185483    0.0814553
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.2334507   -0.3090537   -0.1578476
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0273028   -0.0975240    0.1521295
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                -0.0034562   -0.0844088    0.0774965
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                 0.3530329    0.1868418    0.5192239
3-6 months     ki1114097-CONTENT          PERU                           0                    NA                -0.0359587   -0.0779741    0.0060567
3-6 months     ki1114097-CONTENT          PERU                           1                    NA                 0.0967421    0.0521322    0.1413520
3-6 months     ki1119695-PROBIT           BELARUS                        0                    NA                 0.0459871    0.0270422    0.0649320
3-6 months     ki1119695-PROBIT           BELARUS                        1                    NA                 0.1522011    0.0324027    0.2719996
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0071263   -0.0169805    0.0027279
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0581460    0.0326830    0.0836090
3-6 months     ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.1065381   -0.1222321   -0.0908441
3-6 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0440498   -0.0722020   -0.0158976
3-6 months     ki1135781-COHORTS          INDIA                          0                    NA                -0.0655393   -0.0713651   -0.0597134
3-6 months     ki1135781-COHORTS          INDIA                          1                    NA                 0.0210368    0.0059174    0.0361562
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0303561   -0.0356013   -0.0251108
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0584907    0.0501421    0.0668394
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0382215   -0.0541994   -0.0222436
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                 0.0615447    0.0373932    0.0856962
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0841756   -0.0958386   -0.0725126
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0641121   -0.0858549   -0.0423693
6-12 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0123259   -0.0106704    0.0353222
6-12 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.0304958   -0.0789550    0.0179635
6-12 months    ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0798615   -0.0932199   -0.0665032
6-12 months    ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0067454   -0.0190269    0.0055361
6-12 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0562762   -0.0682510   -0.0443014
6-12 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0594579   -0.1053678   -0.0135480
6-12 months    ki0047075b-MAL-ED          PERU                           0                    NA                -0.0386100   -0.0538157   -0.0234044
6-12 months    ki0047075b-MAL-ED          PERU                           1                    NA                -0.0268337   -0.0672236    0.0135561
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0513961   -0.0687022   -0.0340900
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.0084699   -0.0509534    0.0678933
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1325690   -0.1583003   -0.1068377
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1517176   -0.1751720   -0.1282632
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0763413   -0.1202495   -0.0324331
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0475422   -0.1446752    0.0495909
6-12 months    ki1000108-IRC              INDIA                          0                    NA                -0.0297461   -0.0432725   -0.0162197
6-12 months    ki1000108-IRC              INDIA                          1                    NA                 0.0133426   -0.0194441    0.0461293
6-12 months    ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0145739   -0.0816863    0.0525384
6-12 months    ki1000109-ResPak           PAKISTAN                       1                    NA                 0.0983642    0.0152112    0.1815172
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0962875   -0.1016062   -0.0909688
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0604788   -0.0679609   -0.0529966
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -0.1544307   -0.1906429   -0.1182184
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                -0.1409675   -0.1832872   -0.0986478
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0562060   -0.0660721   -0.0463398
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.0334257   -0.0594174   -0.0074341
6-12 months    ki1101329-Keneba           GAMBIA                         0                    NA                -0.0604900   -0.0687852   -0.0521948
6-12 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.0229321   -0.0348673   -0.0109969
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                -0.0843829   -0.0974610   -0.0713048
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -0.0176811   -0.0444660    0.0091038
6-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0389902   -0.0690150   -0.0089653
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0020765   -0.0519249    0.0560779
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                -0.0794162   -0.1075433   -0.0512891
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                -0.0154609   -0.0945796    0.0636579
6-12 months    ki1114097-CONTENT          PERU                           0                    NA                -0.0478756   -0.0753314   -0.0204199
6-12 months    ki1114097-CONTENT          PERU                           1                    NA                 0.0321153   -0.0123700    0.0766007
6-12 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0427439    0.0261412    0.0593466
6-12 months    ki1119695-PROBIT           BELARUS                        1                    NA                 0.1611122    0.1056232    0.2166012
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0541732   -0.0590729   -0.0492734
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0234988   -0.0369330   -0.0100647
6-12 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.1118935   -0.1198297   -0.1039572
6-12 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0631193   -0.0765284   -0.0497101
6-12 months    ki1135781-COHORTS          INDIA                          0                    NA                -0.0937239   -0.0973383   -0.0901095
6-12 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.0751916   -0.0850162   -0.0653670
6-12 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.1016103   -0.1068251   -0.0963954
6-12 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.0656915   -0.0800149   -0.0513682
6-12 months    ki1148112-LCNI-5           MALAWI                         0                    NA                -0.0147855   -0.0265865   -0.0029846
6-12 months    ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0519586    0.0380457    0.0658714
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0842836   -0.0873842   -0.0811830
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0534196   -0.0581609   -0.0486783
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0481827   -0.0530340   -0.0433314
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0138127   -0.0224879   -0.0051375
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0203879   -0.0262581   -0.0145176
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0369435   -0.0474918   -0.0263953
12-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0041537   -0.0161784    0.0078709
12-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.0062383   -0.0384781    0.0260015
12-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0126951   -0.0187991   -0.0065910
12-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0559288   -0.0654516   -0.0464060
12-24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0289727   -0.0350546   -0.0228909
12-24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0174535   -0.0322446   -0.0026623
12-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                -0.0112078   -0.0189026   -0.0035130
12-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                 0.0053142   -0.0137913    0.0244197
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0172280   -0.0256854   -0.0087707
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.0023060   -0.0350211    0.0304091
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0393752   -0.0512118   -0.0275387
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0092742   -0.0291893    0.0106409
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0715699   -0.0914393   -0.0517006
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0071071   -0.0432431    0.0290290
12-24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0338306   -0.0410993   -0.0265619
12-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0120267   -0.0304705    0.0064171
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0419246   -0.0469152   -0.0369341
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.0327285   -0.0427081   -0.0227489
12-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0223038   -0.0262865   -0.0183211
12-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0119974   -0.0206104   -0.0033844
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0504962   -0.0605386   -0.0404538
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0030237   -0.0174587    0.0114113
12-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0353863   -0.0395718   -0.0312007
12-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0034206   -0.0089395    0.0020983
12-24 months   ki1135781-COHORTS          INDIA                          0                    NA                -0.0366356   -0.0383555   -0.0349158
12-24 months   ki1135781-COHORTS          INDIA                          1                    NA                -0.0226972   -0.0272108   -0.0181836
12-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0587790   -0.0613439   -0.0562142
12-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.0470998   -0.0534803   -0.0407193
12-24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                -0.0207450   -0.0274725   -0.0140174
12-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0080110    0.0008481    0.0151738
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0247295   -0.0267735   -0.0226855
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0063126   -0.0092597   -0.0033654
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0185928   -0.0208373   -0.0163484
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0054017   -0.0087358   -0.0020676


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
3-6 months     ki1114097-CONTENT          PERU                           NA                   NA                -0.0259388   -0.0642012    0.0123236
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


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.1962397    0.1022316    0.2902478
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                    0                  0.5155030    0.3744499    0.6565562
0-3 months     ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          1                    0                  0.4647740    0.3509904    0.5785576
0-3 months     ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                    0                  0.2491294    0.1417905    0.3564682
0-3 months     ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           1                    0                  0.1445245    0.0413861    0.2476629
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.0265943   -0.0794012    0.1325898
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.3285116   -0.3926408   -0.2643824
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.1772775   -0.0678382    0.4223933
0-3 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          1                    0                  0.5681221    0.4000459    0.7361982
0-3 months     ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-ResPak           PAKISTAN                       1                    0                  0.5427298    0.1900184    0.8954411
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1                    0                  0.1677143    0.1355279    0.1999006
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     1                    0                  0.2441708    0.1794268    0.3089148
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  0.2786986    0.0442523    0.5131449
0-3 months     ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         1                    0                  0.7781387    0.6660930    0.8901844
0-3 months     ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        1                    0                  0.8844074    0.7888357    0.9799791
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.4516489    0.4218425    0.4814553
0-3 months     ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      1                    0                  0.2517602    0.1905817    0.3129386
0-3 months     ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          1                    0                  0.2208331    0.2005904    0.2410758
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  0.1759845    0.1669225    0.1850464
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.1602901    0.1269194    0.1936609
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.0659760   -0.0071094    0.1390614
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                    0                  0.1224705    0.0025163    0.2424248
3-6 months     ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    0                 -0.1152926   -0.1680128   -0.0625723
3-6 months     ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    0                  0.1682971    0.0835213    0.2530728
3-6 months     ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           1                    0                  0.1118891    0.0300040    0.1937742
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.0415491   -0.0196321    0.1027303
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  0.4622833    0.3785388    0.5460278
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.2164831   -0.0138965    0.4468627
3-6 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          1                    0                  0.0303073   -0.0447465    0.1053612
3-6 months     ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-ResPak           PAKISTAN                       1                    0                 -0.0619429   -0.2586004    0.1347146
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1                    0                  0.0769638    0.0476293    0.1062983
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     1                    0                  0.0343830   -0.0325358    0.1013017
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  0.0771741    0.0399075    0.1144407
3-6 months     ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         1                    0                  0.0733327    0.0371182    0.1095471
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.2607535    0.1118964    0.4096105
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                  0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                  1                    0                  0.3564890    0.1713847    0.5415934
3-6 months     ki1114097-CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CONTENT          PERU                           1                    0                  0.1327008    0.0725776    0.1928239
3-6 months     ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        1                    0                  0.1062140   -0.0095036    0.2219317
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.0652723    0.0380586    0.0924859
3-6 months     ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      1                    0                  0.0624883    0.0320335    0.0929431
3-6 months     ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          1                    0                  0.0865760    0.0704193    0.1027327
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  0.0888468    0.0795640    0.0981296
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.0997662    0.0712671    0.1282652
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.0200635   -0.0041482    0.0442752
6-12 months    ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.0428217   -0.0962587    0.0106153
6-12 months    ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA                          1                    0                  0.0731161    0.0556886    0.0905436
6-12 months    ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.0031817   -0.0506243    0.0442609
6-12 months    ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          PERU                           1                    0                  0.0117763   -0.0313810    0.0549336
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.0598660    0.0001715    0.1195605
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0191486   -0.0474312    0.0091340
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.0287992   -0.0764074    0.1340058
6-12 months    ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA                          1                    0                  0.0430887    0.0077851    0.0783922
6-12 months    ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000109-ResPak           PAKISTAN                       1                    0                  0.1129381    0.0060808    0.2197955
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0                  0.0358087    0.0282717    0.0433457
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  0.0134632   -0.0424145    0.0693409
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     1                    0                  0.0227802   -0.0050210    0.0505815
6-12 months    ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1101329-Keneba           GAMBIA                         1                    0                  0.0375579    0.0234251    0.0516907
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    0                  0.0667018    0.0371435    0.0962600
6-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.0410667   -0.0213492    0.1034826
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  1                    0                  0.0639554   -0.0200143    0.1479251
6-12 months    ki1114097-CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CONTENT          PERU                           1                    0                  0.0799910    0.0275753    0.1324067
6-12 months    ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS                        1                    0                  0.1183683    0.0609169    0.1758196
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.0306743    0.0164295    0.0449191
6-12 months    ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          GUATEMALA                      1                    0                  0.0487742    0.0337985    0.0637499
6-12 months    ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          INDIA                          1                    0                  0.0185323    0.0080968    0.0289678
6-12 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                  0.0359187    0.0207950    0.0510425
6-12 months    ki1148112-LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5           MALAWI                         1                    0                  0.0667441    0.0493864    0.0841018
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  0.0308640    0.0256494    0.0360787
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.0343700    0.0246110    0.0441290
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.0165557   -0.0284220   -0.0046894
12-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.0020846   -0.0362101    0.0320409
12-24 months   ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          1                    0                 -0.0432337   -0.0547230   -0.0317444
12-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0                  0.0115193   -0.0044734    0.0275119
12-24 months   ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          PERU                           1                    0                  0.0165220   -0.0037614    0.0368053
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.0149221   -0.0188581    0.0487022
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0301011    0.0069536    0.0532486
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.0644629    0.0228934    0.1060323
12-24 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA                          1                    0                  0.0218039    0.0019504    0.0416574
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0                  0.0091962   -0.0016357    0.0200280
12-24 months   ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1101329-Keneba           GAMBIA                         1                    0                  0.0103064    0.0009119    0.0197009
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.0474725    0.0298124    0.0651327
12-24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                  0.0319656    0.0251542    0.0387771
12-24 months   ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          INDIA                          1                    0                  0.0139384    0.0091317    0.0187451
12-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                  0.0116792    0.0048656    0.0184928
12-24 months   ki1148112-LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5           MALAWI                         1                    0                  0.0287559    0.0188841    0.0386278
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  0.0184169    0.0149536    0.0218803
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.0131912    0.0092327    0.0171497
