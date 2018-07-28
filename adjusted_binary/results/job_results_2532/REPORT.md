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

**Outcome Variable:** ever_stunted

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
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_vagbrth
* delta_brthmon
* delta_W_parity

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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
##        ever_stunted
## enstunt    0
##       0 5207
##       1  324
```




# Results Detail

## Results Plots
![](/tmp/479e7f13-7e69-49b3-a5b3-15a3cf2552a5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/479e7f13-7e69-49b3-a5b3-15a3cf2552a5/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/479e7f13-7e69-49b3-a5b3-15a3cf2552a5/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/479e7f13-7e69-49b3-a5b3-15a3cf2552a5/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                   country         intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  --------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1101329-Keneba          GAMBIA          0                    NA                0.2955496   0.2782209   0.3128784
0-24 months   ki1101329-Keneba          GAMBIA          1                    NA                0.9668213   0.9543021   0.9793405
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE        0                    NA                0.2101651   0.2030296   0.2173006
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE        1                    NA                0.9724996   0.9651036   0.9798956
6-24 months   ki0047075b-MAL-ED         BANGLADESH      0                    NA                0.3380189   0.2674615   0.4085764
6-24 months   ki0047075b-MAL-ED         BANGLADESH      1                    NA                0.6732680   0.4666354   0.8799006
6-24 months   ki0047075b-MAL-ED         INDIA           0                    NA                0.2811445   0.2068108   0.3554782
6-24 months   ki0047075b-MAL-ED         INDIA           1                    NA                0.4976205   0.3413048   0.6539361
6-24 months   ki0047075b-MAL-ED         PERU            0                    NA                0.3180003   0.2541521   0.3818485
6-24 months   ki0047075b-MAL-ED         PERU            1                    NA                0.4391116   0.2000746   0.6781485
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA    0                    NA                0.2305975   0.1681293   0.2930657
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA    1                    NA                0.4592384   0.2974679   0.6210089
6-24 months   ki1000108-IRC             INDIA           0                    NA                0.2342154   0.1869568   0.2814741
6-24 months   ki1000108-IRC             INDIA           1                    NA                0.3445028   0.1857711   0.5032346
6-24 months   ki1000304b-SAS-CompFeed   INDIA           0                    NA                0.2912675   0.2572732   0.3252618
6-24 months   ki1000304b-SAS-CompFeed   INDIA           1                    NA                0.4193275   0.3618167   0.4768383
6-24 months   ki1017093-NIH-Birth       BANGLADESH      0                    NA                0.4386938   0.3890018   0.4883858
6-24 months   ki1017093-NIH-Birth       BANGLADESH      1                    NA                0.5672399   0.4067114   0.7277683
6-24 months   ki1101329-Keneba          GAMBIA          0                    NA                0.2241743   0.2069750   0.2413736
6-24 months   ki1101329-Keneba          GAMBIA          1                    NA                0.4280452   0.3734855   0.4826049
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO    0                    NA                0.1501976   0.1243839   0.1760112
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO    1                    NA                0.2331079   0.0210874   0.4451284
6-24 months   ki1114097-CMIN            GUINEA-BISSAU   0                    NA                0.1508466   0.1156449   0.1860483
6-24 months   ki1114097-CMIN            GUINEA-BISSAU   1                    NA                0.3265370   0.1651577   0.4879163
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE        0                    NA                0.1295752   0.1224250   0.1367254
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE        1                    NA                0.1942704   0.1701764   0.2183644
6-24 months   ki1135781-COHORTS         GUATEMALA       0                    NA                0.5703587   0.5280131   0.6127042
6-24 months   ki1135781-COHORTS         GUATEMALA       1                    NA                0.4058967   0.2057135   0.6060799
6-24 months   ki1135781-COHORTS         PHILIPPINES     0                    NA                0.4863803   0.4653268   0.5074338
6-24 months   ki1135781-COHORTS         PHILIPPINES     1                    NA                0.6969088   0.5872991   0.8065185
6-24 months   ki1148112-LCNI-5          MALAWI          0                    NA                0.3057434   0.2658639   0.3456229
6-24 months   ki1148112-LCNI-5          MALAWI          1                    NA                0.3145088   0.2162641   0.4127535
6-24 months   kiGH5241-JiVitA-3         BANGLADESH      0                    NA                0.1703837   0.1620346   0.1787329
6-24 months   kiGH5241-JiVitA-3         BANGLADESH      1                    NA                0.3143780   0.2959511   0.3328049
6-24 months   kiGH5241-JiVitA-4         BANGLADESH      0                    NA                0.2637834   0.2461871   0.2813797
6-24 months   kiGH5241-JiVitA-4         BANGLADESH      1                    NA                0.4585205   0.4140110   0.5030299


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
0-24 months   ki1101329-Keneba          GAMBIA          1                    0                 3.2712656   3.0813710   3.472863
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE        0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE        1                    0                 4.6273127   4.4690240   4.791208
6-24 months   ki0047075b-MAL-ED         BANGLADESH      0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED         BANGLADESH      1                    0                 1.9918055   1.3784015   2.878181
6-24 months   ki0047075b-MAL-ED         INDIA           0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED         INDIA           1                    0                 1.7699811   1.1833635   2.647397
6-24 months   ki0047075b-MAL-ED         PERU            0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED         PERU            1                    0                 1.3808528   0.7780778   2.450596
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA    0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA    1                    0                 1.9915150   1.2839393   3.089034
6-24 months   ki1000108-IRC             INDIA           0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1000108-IRC             INDIA           1                    0                 1.4708802   0.8902298   2.430258
6-24 months   ki1000304b-SAS-CompFeed   INDIA           0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed   INDIA           1                    0                 1.4396646   1.1944701   1.735191
6-24 months   ki1017093-NIH-Birth       BANGLADESH      0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093-NIH-Birth       BANGLADESH      1                    0                 1.2930200   0.9548696   1.750921
6-24 months   ki1101329-Keneba          GAMBIA          0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1101329-Keneba          GAMBIA          1                    0                 1.9094307   1.6483697   2.211837
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO    0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO    1                    0                 1.5520086   0.6231370   3.865491
6-24 months   ki1114097-CMIN            GUINEA-BISSAU   0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1114097-CMIN            GUINEA-BISSAU   1                    0                 2.1646955   1.2517050   3.743619
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE        0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE        1                    0                 1.4992873   1.3093862   1.716730
6-24 months   ki1135781-COHORTS         GUATEMALA       0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS         GUATEMALA       1                    0                 0.7116517   0.4326558   1.170556
6-24 months   ki1135781-COHORTS         PHILIPPINES     0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS         PHILIPPINES     1                    0                 1.4328475   1.2178713   1.685771
6-24 months   ki1148112-LCNI-5          MALAWI          0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1148112-LCNI-5          MALAWI          1                    0                 1.0286690   0.7371827   1.435411
6-24 months   kiGH5241-JiVitA-3         BANGLADESH      0                    0                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3         BANGLADESH      1                    0                 1.8451176   1.7133854   1.986978
6-24 months   kiGH5241-JiVitA-4         BANGLADESH      0                    0                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4         BANGLADESH      1                    0                 1.7382461   1.5509751   1.948129


### Parameter: PAR


agecat        studyid                   country         intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ------------------------  --------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1101329-Keneba          GAMBIA          0                    NA                 0.0771340    0.0687012   0.0855668
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE        0                    NA                 0.0819237    0.0778170   0.0860304
6-24 months   ki0047075b-MAL-ED         BANGLADESH      0                    NA                 0.0337088    0.0077240   0.0596936
6-24 months   ki0047075b-MAL-ED         INDIA           0                    NA                 0.0201375   -0.0088253   0.0491003
6-24 months   ki0047075b-MAL-ED         PERU            0                    NA                 0.0076878   -0.0087063   0.0240819
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA    0                    NA                 0.0233708   -0.0015251   0.0482666
6-24 months   ki1000108-IRC             INDIA           0                    NA                 0.0106223   -0.0056948   0.0269394
6-24 months   ki1000304b-SAS-CompFeed   INDIA           0                    NA                 0.0271508    0.0155973   0.0387044
6-24 months   ki1017093-NIH-Birth       BANGLADESH      0                    NA                 0.0108254   -0.0036601   0.0253110
6-24 months   ki1101329-Keneba          GAMBIA          0                    NA                 0.0106742    0.0055681   0.0157803
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO    0                    NA                 0.0054009   -0.0050329   0.0158346
6-24 months   ki1114097-CMIN            GUINEA-BISSAU   0                    NA                 0.0123235   -0.0006893   0.0253364
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE        0                    NA                 0.0067341    0.0042350   0.0092332
6-24 months   ki1135781-COHORTS         GUATEMALA       0                    NA                -0.0060204   -0.0141577   0.0021169
6-24 months   ki1135781-COHORTS         PHILIPPINES     0                    NA                 0.0050534    0.0018866   0.0082203
6-24 months   ki1148112-LCNI-5          MALAWI          0                    NA                 0.0011531   -0.0129833   0.0152895
6-24 months   kiGH5241-JiVitA-3         BANGLADESH      0                    NA                 0.0266369    0.0224250   0.0308488
6-24 months   kiGH5241-JiVitA-4         BANGLADESH      0                    NA                 0.0345100    0.0253373   0.0436826


### Parameter: PAF


agecat        studyid                   country         intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ------------------------  --------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1101329-Keneba          GAMBIA          0                    NA                 0.2069691    0.1845408   0.2287804
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE        0                    NA                 0.2804754    0.2671396   0.2935685
6-24 months   ki0047075b-MAL-ED         BANGLADESH      0                    NA                 0.0906814    0.0179737   0.1580060
6-24 months   ki0047075b-MAL-ED         INDIA           0                    NA                 0.0668395   -0.0336439   0.1575546
6-24 months   ki0047075b-MAL-ED         PERU            0                    NA                 0.0236047   -0.0280798   0.0726909
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA    0                    NA                 0.0920224   -0.0095907   0.1834083
6-24 months   ki1000108-IRC             INDIA           0                    NA                 0.0433852   -0.0253846   0.1075428
6-24 months   ki1000304b-SAS-CompFeed   INDIA           0                    NA                 0.0852678    0.0463225   0.1226226
6-24 months   ki1017093-NIH-Birth       BANGLADESH      0                    NA                 0.0240823   -0.0087262   0.0558236
6-24 months   ki1101329-Keneba          GAMBIA          0                    NA                 0.0454515    0.0236095   0.0668048
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO    0                    NA                 0.0347104   -0.0327263   0.0977434
6-24 months   ki1114097-CMIN            GUINEA-BISSAU   0                    NA                 0.0755257   -0.0065327   0.1508942
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE        0                    NA                 0.0494034    0.0310264   0.0674318
6-24 months   ki1135781-COHORTS         GUATEMALA       0                    NA                -0.0106681   -0.0252271   0.0036841
6-24 months   ki1135781-COHORTS         PHILIPPINES     0                    NA                 0.0102830    0.0038026   0.0167214
6-24 months   ki1148112-LCNI-5          MALAWI          0                    NA                 0.0037573   -0.0433795   0.0487646
6-24 months   kiGH5241-JiVitA-3         BANGLADESH      0                    NA                 0.1351985    0.1138716   0.1560122
6-24 months   kiGH5241-JiVitA-4         BANGLADESH      0                    NA                 0.1156913    0.0851534   0.1452099
