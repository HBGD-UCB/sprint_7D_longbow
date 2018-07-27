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

**Outcome Variable:** ever_stunted

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

agecat        studyid                    country                        enstunt    ever_stunted   n_cell       n
------------  -------------------------  -----------------------------  --------  -------------  -------  ------
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                     0      210     257
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                     1        0     257
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                     0        0     257
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                     1       47     257
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                     0      170     191
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                     1        0     191
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                     0        0     191
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                     1       21     191
0-6 months    ki0047075b-MAL-ED          INDIA                          0                     0      173     206
0-6 months    ki0047075b-MAL-ED          INDIA                          0                     1        0     206
0-6 months    ki0047075b-MAL-ED          INDIA                          1                     0        0     206
0-6 months    ki0047075b-MAL-ED          INDIA                          1                     1       33     206
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                     0      155     173
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                     1        0     173
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                     0        0     173
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                     1       18     173
0-6 months    ki0047075b-MAL-ED          PERU                           0                     0      253     287
0-6 months    ki0047075b-MAL-ED          PERU                           0                     1        0     287
0-6 months    ki0047075b-MAL-ED          PERU                           1                     0        0     287
0-6 months    ki0047075b-MAL-ED          PERU                           1                     1       34     287
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                     0      234     262
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                     1        0     262
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                     0        0     262
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                     1       28     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     0      105     123
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     1        0     123
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0        0     123
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1       18     123
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                     0       79      97
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                     1        2      97
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                     0        0      97
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                     1       16      97
0-6 months    ki1000108-IRC              INDIA                          0                     0      358     410
0-6 months    ki1000108-IRC              INDIA                          0                     1        4     410
0-6 months    ki1000108-IRC              INDIA                          1                     0        2     410
0-6 months    ki1000108-IRC              INDIA                          1                     1       46     410
0-6 months    ki1000109-EE               PAKISTAN                       0                     0        6       9
0-6 months    ki1000109-EE               PAKISTAN                       0                     1        0       9
0-6 months    ki1000109-EE               PAKISTAN                       1                     0        0       9
0-6 months    ki1000109-EE               PAKISTAN                       1                     1        3       9
0-6 months    ki1000109-ResPak           PAKISTAN                       0                     0       70      91
0-6 months    ki1000109-ResPak           PAKISTAN                       0                     1        0      91
0-6 months    ki1000109-ResPak           PAKISTAN                       1                     0        0      91
0-6 months    ki1000109-ResPak           PAKISTAN                       1                     1       21      91
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                     0     1086    1527
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                     1        0    1527
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                     0        1    1527
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                     1      440    1527
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                     0      250     403
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                     1        0     403
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                     0        0     403
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                     1      153     403
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0                     0      525     624
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0                     1        0     624
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                     0        0     624
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                     1       99     624
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                     0       22      27
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                     1        0      27
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                     0        0      27
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                     1        5      27
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     0       19      20
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     1        0      20
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0        0      20
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1        1      20
0-6 months    ki1101329-Keneba           GAMBIA                         0                     0     2224    2464
0-6 months    ki1101329-Keneba           GAMBIA                         0                     1        0    2464
0-6 months    ki1101329-Keneba           GAMBIA                         1                     0        9    2464
0-6 months    ki1101329-Keneba           GAMBIA                         1                     1      231    2464
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                     0      220     292
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                     1        0     292
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                     0        0     292
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                     1       72     292
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                     0       43      53
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                     1        0      53
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                     0        0      53
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                     1       10      53
0-6 months    ki1114097-CMIN             BANGLADESH                     0                     0        7      13
0-6 months    ki1114097-CMIN             BANGLADESH                     0                     1        0      13
0-6 months    ki1114097-CMIN             BANGLADESH                     1                     0        0      13
0-6 months    ki1114097-CMIN             BANGLADESH                     1                     1        6      13
0-6 months    ki1114097-CMIN             BRAZIL                         0                     0      110     115
0-6 months    ki1114097-CMIN             BRAZIL                         0                     1        0     115
0-6 months    ki1114097-CMIN             BRAZIL                         1                     0        0     115
0-6 months    ki1114097-CMIN             BRAZIL                         1                     1        5     115
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  0                     0      268     310
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  0                     1        0     310
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                     0        0     310
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                     1       42     310
0-6 months    ki1114097-CMIN             PERU                           0                     0      102     107
0-6 months    ki1114097-CMIN             PERU                           0                     1        0     107
0-6 months    ki1114097-CMIN             PERU                           1                     0        0     107
0-6 months    ki1114097-CMIN             PERU                           1                     1        5     107
0-6 months    ki1114097-CONTENT          PERU                           0                     0       49      55
0-6 months    ki1114097-CONTENT          PERU                           0                     1        0      55
0-6 months    ki1114097-CONTENT          PERU                           1                     0        0      55
0-6 months    ki1114097-CONTENT          PERU                           1                     1        6      55
0-6 months    ki1119695-PROBIT           BELARUS                        0                     0    13856   13889
0-6 months    ki1119695-PROBIT           BELARUS                        0                     1        0   13889
0-6 months    ki1119695-PROBIT           BELARUS                        1                     0        0   13889
0-6 months    ki1119695-PROBIT           BELARUS                        1                     1       33   13889
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                     0    12419   13913
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                     1        0   13913
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                     0       42   13913
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                     1     1452   13913
0-6 months    ki1135781-COHORTS          GUATEMALA                      0                     0      868     973
0-6 months    ki1135781-COHORTS          GUATEMALA                      0                     1        0     973
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                     0        0     973
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                     1      105     973
0-6 months    ki1135781-COHORTS          INDIA                          0                     0     6299    7175
0-6 months    ki1135781-COHORTS          INDIA                          0                     1        0    7175
0-6 months    ki1135781-COHORTS          INDIA                          1                     0        0    7175
0-6 months    ki1135781-COHORTS          INDIA                          1                     1      876    7175
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                     0     2864    3051
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                     1        0    3051
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                     0        0    3051
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                     1      187    3051
0-6 months    ki1148112-LCNI-5           MALAWI                         0                     0      173     270
0-6 months    ki1148112-LCNI-5           MALAWI                         0                     1        0     270
0-6 months    ki1148112-LCNI-5           MALAWI                         1                     0        0     270
0-6 months    ki1148112-LCNI-5           MALAWI                         1                     1       97     270
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                     0    18143   26729
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                     1        1   26729
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                     0        3   26729
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                     1     8582   26729
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                     0     3628    5091
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                     1        0    5091
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                     0        0    5091
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                     1     1463    5091
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                     0      114     191
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                     1       58     191
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                     0        6     191
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                     1       13     191
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                     0      147     169
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                     1        6     169
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                     0       15     169
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                     1        1     169
6-24 months   ki0047075b-MAL-ED          INDIA                          0                     0       99     156
6-24 months   ki0047075b-MAL-ED          INDIA                          0                     1       38     156
6-24 months   ki0047075b-MAL-ED          INDIA                          1                     0       10     156
6-24 months   ki0047075b-MAL-ED          INDIA                          1                     1        9     156
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                     0      130     163
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                     1       20     163
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                     0        9     163
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                     1        4     163
6-24 months   ki0047075b-MAL-ED          PERU                           0                     0      139     218
6-24 months   ki0047075b-MAL-ED          PERU                           0                     1       65     218
6-24 months   ki0047075b-MAL-ED          PERU                           1                     0        8     218
6-24 months   ki0047075b-MAL-ED          PERU                           1                     1        6     218
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                     0      132     189
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                     1       39     189
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     0        9     189
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     1        9     189
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     0       33      93
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     1       54      93
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0        0      93
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1        6      93
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                     0       23      82
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                     1       48      82
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                     0        4      82
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                     1        7      82
6-24 months   ki1000108-IRC              INDIA                          0                     0      236     339
6-24 months   ki1000108-IRC              INDIA                          0                     1       72     339
6-24 months   ki1000108-IRC              INDIA                          1                     0       20     339
6-24 months   ki1000108-IRC              INDIA                          1                     1       11     339
6-24 months   ki1000109-EE               PAKISTAN                       0                     0        2       4
6-24 months   ki1000109-EE               PAKISTAN                       0                     1        2       4
6-24 months   ki1000109-ResPak           PAKISTAN                       0                     0       35      48
6-24 months   ki1000109-ResPak           PAKISTAN                       0                     1        4      48
6-24 months   ki1000109-ResPak           PAKISTAN                       1                     0        9      48
6-24 months   ki1000109-ResPak           PAKISTAN                       1                     1        0      48
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                     0      579     961
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                     1      239     961
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                     0       76     961
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                     1       67     961
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                     0       94     218
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                     1      108     218
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                     0        4     218
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                     1       12     218
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                     0      215     416
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                     1      166     416
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                     0       14     416
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                     1       21     416
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                     0       13      24
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                     1        7      24
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                     0        3      24
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                     1        1      24
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     0       10      12
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     1        2      12
6-24 months   ki1101329-Keneba           GAMBIA                         0                     0     1732    2376
6-24 months   ki1101329-Keneba           GAMBIA                         0                     1      501    2376
6-24 months   ki1101329-Keneba           GAMBIA                         1                     0       86    2376
6-24 months   ki1101329-Keneba           GAMBIA                         1                     1       57    2376
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                     0      142     189
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                     1       35     189
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                     0        9     189
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                     1        3     189
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                     0     2086    2590
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                     1      368    2590
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                     0      101    2590
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                     1       35    2590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                     0       22      42
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                     1       16      42
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                     0        1      42
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                     1        3      42
6-24 months   ki1114097-CMIN             BRAZIL                         0                     0       83     100
6-24 months   ki1114097-CMIN             BRAZIL                         0                     1       14     100
6-24 months   ki1114097-CMIN             BRAZIL                         1                     0        3     100
6-24 months   ki1114097-CMIN             BRAZIL                         1                     1        0     100
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                     0      338     429
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                     1       60     429
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                     0       21     429
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                     1       10     429
6-24 months   ki1114097-CMIN             PERU                           0                     0       82      95
6-24 months   ki1114097-CMIN             PERU                           0                     1       12      95
6-24 months   ki1114097-CMIN             PERU                           1                     0        1      95
6-24 months   ki1114097-CMIN             PERU                           1                     1        0      95
6-24 months   ki1114097-CONTENT          PERU                           0                     0       43      48
6-24 months   ki1114097-CONTENT          PERU                           0                     1        2      48
6-24 months   ki1114097-CONTENT          PERU                           1                     0        3      48
6-24 months   ki1114097-CONTENT          PERU                           1                     1        0      48
6-24 months   ki1119695-PROBIT           BELARUS                        0                     0    13053   13665
6-24 months   ki1119695-PROBIT           BELARUS                        0                     1      582   13665
6-24 months   ki1119695-PROBIT           BELARUS                        1                     0       27   13665
6-24 months   ki1119695-PROBIT           BELARUS                        1                     1        3   13665
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                     0     7347    9207
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                     1     1093    9207
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                     0      605    9207
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                     1      162    9207
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                     0      225     544
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                     1      299     544
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                     0       12     544
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                     1        8     544
6-24 months   ki1135781-COHORTS          INDIA                          0                     0     5207    5531
6-24 months   ki1135781-COHORTS          INDIA                          1                     0      324    5531
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                     0     1112    2218
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                     1     1050    2218
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                     0       16    2218
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                     1       40    2218
6-24 months   ki1148112-LCNI-5           MALAWI                         0                     0      350     580
6-24 months   ki1148112-LCNI-5           MALAWI                         0                     1      152     580
6-24 months   ki1148112-LCNI-5           MALAWI                         1                     0       52     580
6-24 months   ki1148112-LCNI-5           MALAWI                         1                     1       26     580
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                     0     8802   13090
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                     1     1776   13090
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     0     1709   13090
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     1      803   13090
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                     0     2414    4043
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                     1      864    4043
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                     0      423    4043
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                     1      342    4043
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                     0      128     257
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                     1       82     257
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                     0        0     257
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                     1       47     257
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                     0      161     191
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                     1        9     191
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                     0        0     191
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                     1       21     191
0-24 months   ki0047075b-MAL-ED          INDIA                          0                     0      108     206
0-24 months   ki0047075b-MAL-ED          INDIA                          0                     1       65     206
0-24 months   ki0047075b-MAL-ED          INDIA                          1                     0        0     206
0-24 months   ki0047075b-MAL-ED          INDIA                          1                     1       33     206
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                     0      133     173
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                     1       22     173
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                     0        0     173
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                     1       18     173
0-24 months   ki0047075b-MAL-ED          PERU                           0                     0      158     287
0-24 months   ki0047075b-MAL-ED          PERU                           0                     1       95     287
0-24 months   ki0047075b-MAL-ED          PERU                           1                     0        0     287
0-24 months   ki0047075b-MAL-ED          PERU                           1                     1       34     287
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                     0      163     262
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                     1       71     262
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     0        0     262
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     1       28     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     0       39     123
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     1       66     123
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0        0     123
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1       18     123
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                     0       22      98
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                     1       60      98
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                     0        0      98
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                     1       16      98
0-24 months   ki1000108-IRC              INDIA                          0                     0      214     410
0-24 months   ki1000108-IRC              INDIA                          0                     1      148     410
0-24 months   ki1000108-IRC              INDIA                          1                     0        1     410
0-24 months   ki1000108-IRC              INDIA                          1                     1       47     410
0-24 months   ki1000109-EE               PAKISTAN                       0                     0        2       9
0-24 months   ki1000109-EE               PAKISTAN                       0                     1        4       9
0-24 months   ki1000109-EE               PAKISTAN                       1                     0        0       9
0-24 months   ki1000109-EE               PAKISTAN                       1                     1        3       9
0-24 months   ki1000109-ResPak           PAKISTAN                       0                     0       42      91
0-24 months   ki1000109-ResPak           PAKISTAN                       0                     1       28      91
0-24 months   ki1000109-ResPak           PAKISTAN                       1                     0        0      91
0-24 months   ki1000109-ResPak           PAKISTAN                       1                     1       21      91
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                     0      618    1527
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                     1      468    1527
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                     0        1    1527
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                     1      440    1527
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                     0      105     404
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                     1      145     404
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                     0        0     404
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                     1      154     404
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                     0      283     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                     1      242     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                     0        0     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                     1       99     624
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                     0       12      27
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                     1       10      27
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                     0        0      27
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                     1        5      27
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     0       13      20
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     1        6      20
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0        0      20
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1        1      20
0-24 months   ki1101329-Keneba           GAMBIA                         0                     0     1818    2914
0-24 months   ki1101329-Keneba           GAMBIA                         0                     1      765    2914
0-24 months   ki1101329-Keneba           GAMBIA                         1                     0       10    2914
0-24 months   ki1101329-Keneba           GAMBIA                         1                     1      321    2914
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                     0      168     310
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                     1       66     310
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                     0        0     310
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                     1       76     310
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                     0     2086    3162
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                     1      368    3162
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                     0        0    3162
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                     1      708    3162
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                     0       20      53
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                     1       23      53
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                     0        0      53
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                     1       10      53
0-24 months   ki1114097-CMIN             BANGLADESH                     0                     0        7      13
0-24 months   ki1114097-CMIN             BANGLADESH                     0                     1        0      13
0-24 months   ki1114097-CMIN             BANGLADESH                     1                     0        0      13
0-24 months   ki1114097-CMIN             BANGLADESH                     1                     1        6      13
0-24 months   ki1114097-CMIN             BRAZIL                         0                     0       81     115
0-24 months   ki1114097-CMIN             BRAZIL                         0                     1       29     115
0-24 months   ki1114097-CMIN             BRAZIL                         1                     0        0     115
0-24 months   ki1114097-CMIN             BRAZIL                         1                     1        5     115
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                     0      337     481
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                     1       72     481
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                     0        0     481
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                     1       72     481
0-24 months   ki1114097-CMIN             PERU                           0                     0       87     111
0-24 months   ki1114097-CMIN             PERU                           0                     1       19     111
0-24 months   ki1114097-CMIN             PERU                           1                     0        0     111
0-24 months   ki1114097-CMIN             PERU                           1                     1        5     111
0-24 months   ki1114097-CONTENT          PERU                           0                     0       42      55
0-24 months   ki1114097-CONTENT          PERU                           0                     1        7      55
0-24 months   ki1114097-CONTENT          PERU                           1                     0        0      55
0-24 months   ki1114097-CONTENT          PERU                           1                     1        6      55
0-24 months   ki1119695-PROBIT           BELARUS                        0                     0    12502   13889
0-24 months   ki1119695-PROBIT           BELARUS                        0                     1     1354   13889
0-24 months   ki1119695-PROBIT           BELARUS                        1                     0        0   13889
0-24 months   ki1119695-PROBIT           BELARUS                        1                     1       33   13889
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                     0     9816   13917
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                     1     2604   13917
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                     0       36   13917
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                     1     1461   13917
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                     0      344    1218
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                     1      598    1218
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                     0        0    1218
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                     1      276    1218
0-24 months   ki1135781-COHORTS          INDIA                          0                     0     5594    7282
0-24 months   ki1135781-COHORTS          INDIA                          0                     1      783    7282
0-24 months   ki1135781-COHORTS          INDIA                          1                     0        0    7282
0-24 months   ki1135781-COHORTS          INDIA                          1                     1      905    7282
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                     0     1304    3051
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                     1     1560    3051
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                     0        0    3051
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                     1      187    3051
0-24 months   ki1148112-LCNI-5           MALAWI                         0                     0      354     827
0-24 months   ki1148112-LCNI-5           MALAWI                         0                     1      170     827
0-24 months   ki1148112-LCNI-5           MALAWI                         1                     0        0     827
0-24 months   ki1148112-LCNI-5           MALAWI                         1                     1      303     827
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                     0    14910   26772
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                     1     3265   26772
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     0        2   26772
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     1     8595   26772
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                     0     2358    5101
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                     1     1272    5101
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                     0        0    5101
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                     1     1471    5101


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
##        ever_stunted
## enstunt    0
##       0 5207
##       1  324
```




# Results Detail

## Results Plots
![](/tmp/2bf6046d-8f4b-4041-98b9-2aec0355c5ca/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/2bf6046d-8f4b-4041-98b9-2aec0355c5ca/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/2bf6046d-8f4b-4041-98b9-2aec0355c5ca/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/2bf6046d-8f4b-4041-98b9-2aec0355c5ca/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                   country         intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ------------------------  --------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1101329-Keneba          GAMBIA          0                    NA                0.2961672    0.2785571   0.3137774
0-24 months   ki1101329-Keneba          GAMBIA          1                    NA                0.9697885    0.9513455   0.9882316
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE        0                    NA                0.2096618    0.2025026   0.2168211
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE        1                    NA                0.9759519    0.9681911   0.9837127
6-24 months   ki0047075b-MAL-ED         BANGLADESH      0                    NA                0.3372093    0.2663720   0.4080466
6-24 months   ki0047075b-MAL-ED         BANGLADESH      1                    NA                0.6842105    0.4746522   0.8937688
6-24 months   ki0047075b-MAL-ED         INDIA           0                    NA                0.2773723    0.2021627   0.3525818
6-24 months   ki0047075b-MAL-ED         INDIA           1                    NA                0.4736842    0.2484495   0.6989190
6-24 months   ki0047075b-MAL-ED         PERU            0                    NA                0.3186275    0.2545411   0.3827138
6-24 months   ki0047075b-MAL-ED         PERU            1                    NA                0.4285714    0.1687500   0.6883929
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA    0                    NA                0.2280702    0.1650144   0.2911260
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA    1                    NA                0.5000000    0.2684025   0.7315975
6-24 months   ki1000108-IRC             INDIA           0                    NA                0.2337662    0.1864309   0.2811016
6-24 months   ki1000108-IRC             INDIA           1                    NA                0.3548387    0.1861607   0.5235167
6-24 months   ki1000304b-SAS-CompFeed   INDIA           0                    NA                0.2921760    0.2571001   0.3272520
6-24 months   ki1000304b-SAS-CompFeed   INDIA           1                    NA                0.4685315    0.3947165   0.5423465
6-24 months   ki1017093-NIH-Birth       BANGLADESH      0                    NA                0.4356955    0.3858465   0.4855445
6-24 months   ki1017093-NIH-Birth       BANGLADESH      1                    NA                0.6000000    0.4375041   0.7624959
6-24 months   ki1101329-Keneba          GAMBIA          0                    NA                0.2243618    0.2070557   0.2416679
6-24 months   ki1101329-Keneba          GAMBIA          1                    NA                0.3986014    0.3183372   0.4788656
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO    0                    NA                0.1499593    0.1240558   0.1758627
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO    1                    NA                0.2573529   -0.0347168   0.5494226
6-24 months   ki1114097-CMIN            GUINEA-BISSAU   0                    NA                0.1507538    0.1155601   0.1859474
6-24 months   ki1114097-CMIN            GUINEA-BISSAU   1                    NA                0.3225806    0.1578320   0.4873293
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE        0                    NA                0.1295024    0.1223389   0.1366658
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE        1                    NA                0.2112125    0.1823248   0.2401003
6-24 months   ki1135781-COHORTS         GUATEMALA       0                    NA                0.5706107    0.5281900   0.6130314
6-24 months   ki1135781-COHORTS         GUATEMALA       1                    NA                0.4000000    0.1850991   0.6149009
6-24 months   ki1135781-COHORTS         PHILIPPINES     0                    NA                0.4856614    0.4645892   0.5067336
6-24 months   ki1135781-COHORTS         PHILIPPINES     1                    NA                0.7142857    0.5959396   0.8326318
6-24 months   ki1148112-LCNI-5          MALAWI          0                    NA                0.3027888    0.2625613   0.3430163
6-24 months   ki1148112-LCNI-5          MALAWI          1                    NA                0.3333333    0.2286279   0.4380388
6-24 months   kiGH5241-JiVitA-3         BANGLADESH      0                    NA                0.1678956    0.1594738   0.1763175
6-24 months   kiGH5241-JiVitA-3         BANGLADESH      1                    NA                0.3196656    0.2996743   0.3396569
6-24 months   kiGH5241-JiVitA-4         BANGLADESH      0                    NA                0.2635754    0.2459280   0.2812227
6-24 months   kiGH5241-JiVitA-4         BANGLADESH      1                    NA                0.4470588    0.4023273   0.4917904


### Parameter: E(Y)


agecat        studyid                   country         intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  --------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1101329-Keneba          GAMBIA          NA                   NA                0.3726836   0.3551249   0.3902423
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE        NA                   NA                0.2920888   0.2845338   0.2996439
6-24 months   ki0047075b-MAL-ED         BANGLADESH      NA                   NA                0.3717277   0.3030118   0.4404437
6-24 months   ki0047075b-MAL-ED         INDIA           NA                   NA                0.3012821   0.2290517   0.3735124
6-24 months   ki0047075b-MAL-ED         PERU            NA                   NA                0.3256881   0.2633362   0.3880400
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA    NA                   NA                0.2539683   0.1917472   0.3161893
6-24 months   ki1000108-IRC             INDIA           NA                   NA                0.2448378   0.1989973   0.2906782
6-24 months   ki1000304b-SAS-CompFeed   INDIA           NA                   NA                0.3184183   0.2877921   0.3490446
6-24 months   ki1017093-NIH-Birth       BANGLADESH      NA                   NA                0.4495192   0.4016596   0.4973789
6-24 months   ki1101329-Keneba          GAMBIA          NA                   NA                0.2348485   0.2178001   0.2518969
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO    NA                   NA                0.1555985   0.1280985   0.1830984
6-24 months   ki1114097-CMIN            GUINEA-BISSAU   NA                   NA                0.1631702   0.1281623   0.1981780
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE        NA                   NA                0.1363093   0.1293004   0.1433183
6-24 months   ki1135781-COHORTS         GUATEMALA       NA                   NA                0.5643382   0.5226328   0.6060437
6-24 months   ki1135781-COHORTS         PHILIPPINES     NA                   NA                0.4914337   0.4706238   0.5122437
6-24 months   ki1148112-LCNI-5          MALAWI          NA                   NA                0.3068966   0.2693298   0.3444633
6-24 months   kiGH5241-JiVitA-3         BANGLADESH      NA                   NA                0.1970206   0.1889921   0.2050492
6-24 months   kiGH5241-JiVitA-4         BANGLADESH      NA                   NA                0.2982933   0.2811623   0.3154244


### Parameter: RR


agecat        studyid                   country         intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ------------------------  --------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1101329-Keneba          GAMBIA          0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1101329-Keneba          GAMBIA          1                    0                 3.2744624   3.0762959   3.485394
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE        0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE        1                    0                 4.6548858   4.4945111   4.820983
6-24 months   ki0047075b-MAL-ED         BANGLADESH      0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED         BANGLADESH      1                    0                 2.0290381   1.3995712   2.941612
6-24 months   ki0047075b-MAL-ED         INDIA           0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED         INDIA           1                    0                 1.7077562   0.9878802   2.952212
6-24 months   ki0047075b-MAL-ED         PERU            0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED         PERU            1                    0                 1.3450549   0.7101289   2.547668
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA    0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA    1                    0                 2.1923077   1.2782877   3.759884
6-24 months   ki1000108-IRC             INDIA           0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1000108-IRC             INDIA           1                    0                 1.5179211   0.9054222   2.544763
6-24 months   ki1000304b-SAS-CompFeed   INDIA           0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed   INDIA           1                    0                 1.6035931   1.2935528   1.987944
6-24 months   ki1017093-NIH-Birth       BANGLADESH      0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093-NIH-Birth       BANGLADESH      1                    0                 1.3771084   1.0263245   1.847786
6-24 months   ki1101329-Keneba          GAMBIA          0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1101329-Keneba          GAMBIA          1                    0                 1.7766006   1.4319956   2.204134
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO    0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO    1                    0                 1.7161525   0.5511259   5.343932
6-24 months   ki1114097-CMIN            GUINEA-BISSAU   0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1114097-CMIN            GUINEA-BISSAU   1                    0                 2.1397849   1.2203749   3.751863
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE        0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE        1                    0                 1.6309548   1.4072427   1.890231
6-24 months   ki1135781-COHORTS         GUATEMALA       0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS         GUATEMALA       1                    0                 0.7010033   0.4075409   1.205783
6-24 months   ki1135781-COHORTS         PHILIPPINES     0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS         PHILIPPINES     1                    0                 1.4707483   1.2392418   1.745503
6-24 months   ki1148112-LCNI-5          MALAWI          0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1148112-LCNI-5          MALAWI          1                    0                 1.1008772   0.7827438   1.548311
6-24 months   kiGH5241-JiVitA-3         BANGLADESH      0                    0                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3         BANGLADESH      1                    0                 1.9039543   1.7594754   2.060297
6-24 months   kiGH5241-JiVitA-4         BANGLADESH      0                    0                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4         BANGLADESH      1                    0                 1.6961329   1.5091119   1.906331


### Parameter: PAR


agecat        studyid                   country         intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ------------------------  --------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1101329-Keneba          GAMBIA          0                    NA                 0.0765163    0.0682314   0.0848013
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE        0                    NA                 0.0824270    0.0783221   0.0865319
6-24 months   ki0047075b-MAL-ED         BANGLADESH      0                    NA                 0.0345184    0.0080175   0.0610193
6-24 months   ki0047075b-MAL-ED         INDIA           0                    NA                 0.0239098   -0.0067269   0.0545465
6-24 months   ki0047075b-MAL-ED         PERU            0                    NA                 0.0070606   -0.0104954   0.0246166
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA    0                    NA                 0.0258981    0.0003488   0.0514474
6-24 months   ki1000108-IRC             INDIA           0                    NA                 0.0110715   -0.0053755   0.0275185
6-24 months   ki1000304b-SAS-CompFeed   INDIA           0                    NA                 0.0262423    0.0142444   0.0382402
6-24 months   ki1017093-NIH-Birth       BANGLADESH      0                    NA                 0.0138237   -0.0011348   0.0287822
6-24 months   ki1101329-Keneba          GAMBIA          0                    NA                 0.0104866    0.0052714   0.0157018
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO    0                    NA                 0.0056392   -0.0041856   0.0154640
6-24 months   ki1114097-CMIN            GUINEA-BISSAU   0                    NA                 0.0124164   -0.0004661   0.0252989
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE        0                    NA                 0.0068070    0.0042850   0.0093289
6-24 months   ki1135781-COHORTS         GUATEMALA       0                    NA                -0.0062725   -0.0147664   0.0022215
6-24 months   ki1135781-COHORTS         PHILIPPINES     0                    NA                 0.0057723    0.0023900   0.0091546
6-24 months   ki1148112-LCNI-5          MALAWI          0                    NA                 0.0041077   -0.0110007   0.0192161
6-24 months   kiGH5241-JiVitA-3         BANGLADESH      0                    NA                 0.0291250    0.0248606   0.0333894
6-24 months   kiGH5241-JiVitA-4         BANGLADESH      0                    NA                 0.0347180    0.0255279   0.0439080


### Parameter: PAF


agecat        studyid                   country         intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ------------------------  --------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1101329-Keneba          GAMBIA          0                    NA                 0.2053118    0.1828884   0.2271199
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE        0                    NA                 0.2821983    0.2688167   0.2953351
6-24 months   ki0047075b-MAL-ED         BANGLADESH      0                    NA                 0.0928595    0.0185281   0.1615614
6-24 months   ki0047075b-MAL-ED         INDIA           0                    NA                 0.0793601   -0.0277458   0.1753041
6-24 months   ki0047075b-MAL-ED         PERU            0                    NA                 0.0216791   -0.0337287   0.0741170
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA    0                    NA                 0.1019737   -0.0031224   0.1960589
6-24 months   ki1000108-IRC             INDIA           0                    NA                 0.0452198   -0.0241564   0.1098966
6-24 months   ki1000304b-SAS-CompFeed   INDIA           0                    NA                 0.0824145    0.0414877   0.1215937
6-24 months   ki1017093-NIH-Birth       BANGLADESH      0                    NA                 0.0307522   -0.0031993   0.0635546
6-24 months   ki1101329-Keneba          GAMBIA          0                    NA                 0.0446528    0.0222864   0.0665075
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO    0                    NA                 0.0362420   -0.0270332   0.0956189
6-24 months   ki1114097-CMIN            GUINEA-BISSAU   0                    NA                 0.0760948   -0.0051447   0.1507681
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE        0                    NA                 0.0499376    0.0313822   0.0681375
6-24 months   ki1135781-COHORTS         GUATEMALA       0                    NA                -0.0111147   -0.0263152   0.0038607
6-24 months   ki1135781-COHORTS         PHILIPPINES     0                    NA                 0.0117458    0.0048228   0.0186207
6-24 months   ki1148112-LCNI-5          MALAWI          0                    NA                 0.0133847   -0.0370903   0.0614030
6-24 months   kiGH5241-JiVitA-3         BANGLADESH      0                    NA                 0.1478271    0.1261035   0.1690108
6-24 months   kiGH5241-JiVitA-4         BANGLADESH      0                    NA                 0.1163888    0.0857554   0.1459957
