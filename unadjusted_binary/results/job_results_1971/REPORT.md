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

**Outcome Variable:** stunted

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

agecat      studyid                    country                        enstunt    stunted   n_cell       n
----------  -------------------------  -----------------------------  --------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                0      210     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                1        0     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                0        0     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                1       47     257
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                0      174     233
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                1       21     233
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                0       16     233
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                1       22     233
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                0      105     206
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                1       69     206
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                0        8     206
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                1       24     206
Birth       ki0047075b-MAL-ED          BRAZIL                         0                0      170     191
Birth       ki0047075b-MAL-ED          BRAZIL                         0                1        0     191
Birth       ki0047075b-MAL-ED          BRAZIL                         1                0        0     191
Birth       ki0047075b-MAL-ED          BRAZIL                         1                1       21     191
6 months    ki0047075b-MAL-ED          BRAZIL                         0                0      153     173
6 months    ki0047075b-MAL-ED          BRAZIL                         0                1        3     173
6 months    ki0047075b-MAL-ED          BRAZIL                         1                0       16     173
6 months    ki0047075b-MAL-ED          BRAZIL                         1                1        1     173
24 months   ki0047075b-MAL-ED          BRAZIL                         0                0      121     139
24 months   ki0047075b-MAL-ED          BRAZIL                         0                1        5     139
24 months   ki0047075b-MAL-ED          BRAZIL                         1                0       12     139
24 months   ki0047075b-MAL-ED          BRAZIL                         1                1        1     139
Birth       ki0047075b-MAL-ED          INDIA                          0                0      173     206
Birth       ki0047075b-MAL-ED          INDIA                          0                1        0     206
Birth       ki0047075b-MAL-ED          INDIA                          1                0        0     206
Birth       ki0047075b-MAL-ED          INDIA                          1                1       33     206
6 months    ki0047075b-MAL-ED          INDIA                          0                0      137     192
6 months    ki0047075b-MAL-ED          INDIA                          0                1       25     192
6 months    ki0047075b-MAL-ED          INDIA                          1                0       17     192
6 months    ki0047075b-MAL-ED          INDIA                          1                1       13     192
24 months   ki0047075b-MAL-ED          INDIA                          0                0      100     183
24 months   ki0047075b-MAL-ED          INDIA                          0                1       55     183
24 months   ki0047075b-MAL-ED          INDIA                          1                0       10     183
24 months   ki0047075b-MAL-ED          INDIA                          1                1       18     183
Birth       ki0047075b-MAL-ED          NEPAL                          0                0      155     173
Birth       ki0047075b-MAL-ED          NEPAL                          0                1        0     173
Birth       ki0047075b-MAL-ED          NEPAL                          1                0        0     173
Birth       ki0047075b-MAL-ED          NEPAL                          1                1       18     173
6 months    ki0047075b-MAL-ED          NEPAL                          0                0      152     171
6 months    ki0047075b-MAL-ED          NEPAL                          0                1        1     171
6 months    ki0047075b-MAL-ED          NEPAL                          1                0       11     171
6 months    ki0047075b-MAL-ED          NEPAL                          1                1        7     171
24 months   ki0047075b-MAL-ED          NEPAL                          0                0      122     165
24 months   ki0047075b-MAL-ED          NEPAL                          0                1       26     165
24 months   ki0047075b-MAL-ED          NEPAL                          1                0        7     165
24 months   ki0047075b-MAL-ED          NEPAL                          1                1       10     165
Birth       ki0047075b-MAL-ED          PERU                           0                0      253     287
Birth       ki0047075b-MAL-ED          PERU                           0                1        0     287
Birth       ki0047075b-MAL-ED          PERU                           1                0        0     287
Birth       ki0047075b-MAL-ED          PERU                           1                1       34     287
6 months    ki0047075b-MAL-ED          PERU                           0                0      192     260
6 months    ki0047075b-MAL-ED          PERU                           0                1       37     260
6 months    ki0047075b-MAL-ED          PERU                           1                0       12     260
6 months    ki0047075b-MAL-ED          PERU                           1                1       19     260
24 months   ki0047075b-MAL-ED          PERU                           0                0      113     190
24 months   ki0047075b-MAL-ED          PERU                           0                1       53     190
24 months   ki0047075b-MAL-ED          PERU                           1                0        8     190
24 months   ki0047075b-MAL-ED          PERU                           1                1       16     190
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                0      234     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                1        0     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                0        0     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                1       28     262
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                0      158     214
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                1       35     214
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       14     214
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        7     214
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                0      118     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                1       64     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       11     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        8     201
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                0      105     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                1        0     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0        0     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1       18     123
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                0       92     117
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                1        9     117
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0        4     117
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1       12     117
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                0       38     101
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                1       49     101
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0        1     101
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1       13     101
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                0       74      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                1        0      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                0        0      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                1       16      90
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                0       62      96
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                1       19      96
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                0        9      96
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                1        6      96
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                0       22      98
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                1       60      98
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                0        5      98
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                1       11      98
6 months    ki1000108-IRC              INDIA                          0                0      287     407
6 months    ki1000108-IRC              INDIA                          0                1       74     407
6 months    ki1000108-IRC              INDIA                          1                0       20     407
6 months    ki1000108-IRC              INDIA                          1                1       26     407
24 months   ki1000108-IRC              INDIA                          0                0      219     409
24 months   ki1000108-IRC              INDIA                          0                1      143     409
24 months   ki1000108-IRC              INDIA                          1                0       20     409
24 months   ki1000108-IRC              INDIA                          1                1       27     409
Birth       ki1000108-IRC              INDIA                          0                0      343     388
Birth       ki1000108-IRC              INDIA                          0                1        0     388
Birth       ki1000108-IRC              INDIA                          1                0        0     388
Birth       ki1000108-IRC              INDIA                          1                1       45     388
6 months    ki1000109-EE               PAKISTAN                       0                0        4       8
6 months    ki1000109-EE               PAKISTAN                       0                1        1       8
6 months    ki1000109-EE               PAKISTAN                       1                0        0       8
6 months    ki1000109-EE               PAKISTAN                       1                1        3       8
Birth       ki1000109-EE               PAKISTAN                       0                0        1       2
Birth       ki1000109-EE               PAKISTAN                       0                1        0       2
Birth       ki1000109-EE               PAKISTAN                       1                0        0       2
Birth       ki1000109-EE               PAKISTAN                       1                1        1       2
Birth       ki1000109-ResPak           PAKISTAN                       0                0        5       7
Birth       ki1000109-ResPak           PAKISTAN                       0                1        0       7
Birth       ki1000109-ResPak           PAKISTAN                       1                0        0       7
Birth       ki1000109-ResPak           PAKISTAN                       1                1        2       7
6 months    ki1000109-ResPak           PAKISTAN                       0                0       35      77
6 months    ki1000109-ResPak           PAKISTAN                       0                1       26      77
6 months    ki1000109-ResPak           PAKISTAN                       1                0        8      77
6 months    ki1000109-ResPak           PAKISTAN                       1                1        8      77
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                0      817    1332
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                1      153    1332
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                0      137    1332
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                1      225    1332
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                0      141     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                1        0     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                0        0     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                1       46     187
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                0      194     367
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                1       31     367
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                0       16     367
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                1      126     367
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                0      361     533
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                1       87     533
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                0       28     533
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                1       57     533
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                0      177     426
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                1      175     426
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                0       13     426
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                1       61     426
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                0       27      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                0        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                1        1      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                0       22      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                1        0      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                0        0      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                1        5      27
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                0       18      27
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                1        4      27
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                0        3      27
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                1        2      27
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                0       13      19
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                1        3      19
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                0        2      19
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                1        1      19
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0       12      15
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1        2      15
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0        0      15
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        1      15
Birth       ki1101329-Keneba           GAMBIA                         0                0     1459    1541
Birth       ki1101329-Keneba           GAMBIA                         0                1        0    1541
Birth       ki1101329-Keneba           GAMBIA                         1                0        0    1541
Birth       ki1101329-Keneba           GAMBIA                         1                1       82    1541
6 months    ki1101329-Keneba           GAMBIA                         0                0     1684    2088
6 months    ki1101329-Keneba           GAMBIA                         0                1      207    2088
6 months    ki1101329-Keneba           GAMBIA                         1                0      109    2088
6 months    ki1101329-Keneba           GAMBIA                         1                1       88    2088
24 months   ki1101329-Keneba           GAMBIA                         0                0     1083    1724
24 months   ki1101329-Keneba           GAMBIA                         0                1      465    1724
24 months   ki1101329-Keneba           GAMBIA                         1                0       64    1724
24 months   ki1101329-Keneba           GAMBIA                         1                1      112    1724
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                0      198     294
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                1       25     294
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                0        7     294
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                1       64     294
6 months    ki1113344-GMS-Nepal        NEPAL                          0                0       35      52
6 months    ki1113344-GMS-Nepal        NEPAL                          0                1        7      52
6 months    ki1113344-GMS-Nepal        NEPAL                          1                0        4      52
6 months    ki1113344-GMS-Nepal        NEPAL                          1                1        6      52
24 months   ki1113344-GMS-Nepal        NEPAL                          0                0       22      44
24 months   ki1113344-GMS-Nepal        NEPAL                          0                1       16      44
24 months   ki1113344-GMS-Nepal        NEPAL                          1                0        2      44
24 months   ki1113344-GMS-Nepal        NEPAL                          1                1        4      44
Birth       ki1114097-CMIN             BANGLADESH                     0                0        7      13
Birth       ki1114097-CMIN             BANGLADESH                     0                1        0      13
Birth       ki1114097-CMIN             BANGLADESH                     1                0        0      13
Birth       ki1114097-CMIN             BANGLADESH                     1                1        6      13
Birth       ki1114097-CMIN             BRAZIL                         0                0      110     115
Birth       ki1114097-CMIN             BRAZIL                         0                1        0     115
Birth       ki1114097-CMIN             BRAZIL                         1                0        0     115
Birth       ki1114097-CMIN             BRAZIL                         1                1        5     115
6 months    ki1114097-CMIN             BRAZIL                         0                0       91     104
6 months    ki1114097-CMIN             BRAZIL                         0                1        9     104
6 months    ki1114097-CMIN             BRAZIL                         1                0        3     104
6 months    ki1114097-CMIN             BRAZIL                         1                1        1     104
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                0      126     176
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                1       25     176
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                0        2     176
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                1       23     176
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0                0      274     319
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0                1        5     319
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                0       24     319
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                1       16     319
6 months    ki1114097-CMIN             PERU                           0                0       88      96
6 months    ki1114097-CMIN             PERU                           0                1        4      96
6 months    ki1114097-CMIN             PERU                           1                0        1      96
6 months    ki1114097-CMIN             PERU                           1                1        3      96
24 months   ki1114097-CMIN             PERU                           0                0       33      41
24 months   ki1114097-CMIN             PERU                           0                1        6      41
24 months   ki1114097-CMIN             PERU                           1                0        0      41
24 months   ki1114097-CMIN             PERU                           1                1        2      41
Birth       ki1114097-CMIN             PERU                           0                0       10      10
6 months    ki1114097-CONTENT          PERU                           0                0       45      55
6 months    ki1114097-CONTENT          PERU                           0                1        4      55
6 months    ki1114097-CONTENT          PERU                           1                0        3      55
6 months    ki1114097-CONTENT          PERU                           1                1        3      55
24 months   ki1114097-CONTENT          PERU                           0                0       36      46
24 months   ki1114097-CONTENT          PERU                           0                1        4      46
24 months   ki1114097-CONTENT          PERU                           1                0        3      46
24 months   ki1114097-CONTENT          PERU                           1                1        3      46
Birth       ki1114097-CONTENT          PERU                           0                0        2       2
Birth       ki1119695-PROBIT           BELARUS                        0                0    13851   13884
Birth       ki1119695-PROBIT           BELARUS                        0                1        0   13884
Birth       ki1119695-PROBIT           BELARUS                        1                0        0   13884
Birth       ki1119695-PROBIT           BELARUS                        1                1       33   13884
6 months    ki1119695-PROBIT           BELARUS                        0                0    12358   13177
6 months    ki1119695-PROBIT           BELARUS                        0                1      789   13177
6 months    ki1119695-PROBIT           BELARUS                        1                0       18   13177
6 months    ki1119695-PROBIT           BELARUS                        1                1       12   13177
24 months   ki1119695-PROBIT           BELARUS                        0                0     3684    4034
24 months   ki1119695-PROBIT           BELARUS                        0                1      340    4034
24 months   ki1119695-PROBIT           BELARUS                        1                0        7    4034
24 months   ki1119695-PROBIT           BELARUS                        1                1        3    4034
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                0    12398   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                1        0   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                0        0   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                1     1432   13830
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                0     6342    8198
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                1     1024    8198
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                0      499    8198
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                1      333    8198
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                0      137     447
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                1      213     447
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                0       18     447
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                1       79     447
24 months   ki1135781-COHORTS          GUATEMALA                      0                0      186     953
24 months   ki1135781-COHORTS          GUATEMALA                      0                1      479     953
24 months   ki1135781-COHORTS          GUATEMALA                      1                0       10     953
24 months   ki1135781-COHORTS          GUATEMALA                      1                1      278     953
6 months    ki1135781-COHORTS          GUATEMALA                      0                0      487     835
6 months    ki1135781-COHORTS          GUATEMALA                      0                1      242     835
6 months    ki1135781-COHORTS          GUATEMALA                      1                0       10     835
6 months    ki1135781-COHORTS          GUATEMALA                      1                1       96     835
Birth       ki1135781-COHORTS          GUATEMALA                      0                0      802     852
Birth       ki1135781-COHORTS          GUATEMALA                      0                1        0     852
Birth       ki1135781-COHORTS          GUATEMALA                      1                0        0     852
Birth       ki1135781-COHORTS          GUATEMALA                      1                1       50     852
Birth       ki1135781-COHORTS          INDIA                          0                0     5848    6640
Birth       ki1135781-COHORTS          INDIA                          0                1        0    6640
Birth       ki1135781-COHORTS          INDIA                          1                0        0    6640
Birth       ki1135781-COHORTS          INDIA                          1                1      792    6640
6 months    ki1135781-COHORTS          INDIA                          0                0     5155    6730
6 months    ki1135781-COHORTS          INDIA                          0                1      778    6730
6 months    ki1135781-COHORTS          INDIA                          1                0      319    6730
6 months    ki1135781-COHORTS          INDIA                          1                1      478    6730
24 months   ki1135781-COHORTS          INDIA                          0                0     2647    5237
24 months   ki1135781-COHORTS          INDIA                          0                1     1960    5237
24 months   ki1135781-COHORTS          INDIA                          1                0      157    5237
24 months   ki1135781-COHORTS          INDIA                          1                1      473    5237
Birth       ki1135781-COHORTS          PHILIPPINES                    0                0     2863    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    0                1        0    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    1                0        0    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    1                1      187    3050
6 months    ki1135781-COHORTS          PHILIPPINES                    0                0     2077    2702
6 months    ki1135781-COHORTS          PHILIPPINES                    0                1      470    2702
6 months    ki1135781-COHORTS          PHILIPPINES                    1                0       53    2702
6 months    ki1135781-COHORTS          PHILIPPINES                    1                1      102    2702
24 months   ki1135781-COHORTS          PHILIPPINES                    0                0      921    2443
24 months   ki1135781-COHORTS          PHILIPPINES                    0                1     1387    2443
24 months   ki1135781-COHORTS          PHILIPPINES                    1                0       14    2443
24 months   ki1135781-COHORTS          PHILIPPINES                    1                1      121    2443
6 months    ki1148112-LCNI-5           MALAWI                         0                0      523     826
6 months    ki1148112-LCNI-5           MALAWI                         0                1        0     826
6 months    ki1148112-LCNI-5           MALAWI                         1                0        0     826
6 months    ki1148112-LCNI-5           MALAWI                         1                1      303     826
24 months   ki1148112-LCNI-5           MALAWI                         0                0      270     570
24 months   ki1148112-LCNI-5           MALAWI                         0                1      101     570
24 months   ki1148112-LCNI-5           MALAWI                         1                0       47     570
24 months   ki1148112-LCNI-5           MALAWI                         1                1      152     570
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                0    13275   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                1        0   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                0        0   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                1     6338   19613
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                0    10150   16534
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                1     1416   16534
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                0     2238   16534
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                1     2730   16534
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                0     3569    8460
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                1     2284    8460
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                0      749    8460
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                1     1858    8460
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                0     2260    4495
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                1      937    4495
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                0      465    4495
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                1      833    4495
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                0     2883    4591
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                1      408    4591
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                0      544    4591
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                1      756    4591
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                0      575     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                1        0     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                0        0     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                1      247     822


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
##        stunted
## enstunt  0
##       0 10
##       1  0
```




# Results Detail

## Results Plots
![](/tmp/82773487-29c9-4867-abed-c6ce165c02fb/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/82773487-29c9-4867-abed-c6ce165c02fb/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/82773487-29c9-4867-abed-c6ce165c02fb/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/82773487-29c9-4867-abed-c6ce165c02fb/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country         intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  --------------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki0047075b-MAL-ED          BANGLADESH      0                    NA                0.1076923   0.0640895   0.1512951
6 months    ki0047075b-MAL-ED          BANGLADESH      1                    NA                0.5789474   0.4216295   0.7362652
6 months    ki0047075b-MAL-ED          INDIA           0                    NA                0.1543210   0.0985460   0.2100960
6 months    ki0047075b-MAL-ED          INDIA           1                    NA                0.4333333   0.2555479   0.6111188
6 months    ki0047075b-MAL-ED          PERU            0                    NA                0.1615721   0.1138100   0.2093341
6 months    ki0047075b-MAL-ED          PERU            1                    NA                0.6129032   0.4411085   0.7846979
6 months    ki0047075b-MAL-ED          SOUTH AFRICA    0                    NA                0.1813472   0.1268603   0.2358340
6 months    ki0047075b-MAL-ED          SOUTH AFRICA    1                    NA                0.3333333   0.1312413   0.5354254
6 months    ki1000108-CMC-V-BCS-2002   INDIA           0                    NA                0.2345679   0.1418066   0.3273292
6 months    ki1000108-CMC-V-BCS-2002   INDIA           1                    NA                0.4000000   0.1507806   0.6492194
6 months    ki1000108-IRC              INDIA           0                    NA                0.2049861   0.1632917   0.2466806
6 months    ki1000108-IRC              INDIA           1                    NA                0.5652174   0.4217850   0.7086498
6 months    ki1000109-ResPak           PAKISTAN        0                    NA                0.4262295   0.3013151   0.5511439
6 months    ki1000109-ResPak           PAKISTAN        1                    NA                0.5000000   0.2533980   0.7466020
6 months    ki1000304b-SAS-CompFeed    INDIA           0                    NA                0.1577320   0.1379891   0.1774748
6 months    ki1000304b-SAS-CompFeed    INDIA           1                    NA                0.6215470   0.5852907   0.6578033
6 months    ki1000304b-SAS-FoodSuppl   INDIA           0                    NA                0.1377778   0.0926807   0.1828749
6 months    ki1000304b-SAS-FoodSuppl   INDIA           1                    NA                0.8873239   0.8352461   0.9394018
6 months    ki1017093-NIH-Birth        BANGLADESH      0                    NA                0.1941964   0.1575314   0.2308615
6 months    ki1017093-NIH-Birth        BANGLADESH      1                    NA                0.6705882   0.5705781   0.7705984
6 months    ki1101329-Keneba           GAMBIA          0                    NA                0.1094659   0.0953902   0.1235416
6 months    ki1101329-Keneba           GAMBIA          1                    NA                0.4467005   0.3772609   0.5161401
6 months    ki1112895-Guatemala BSC    GUATEMALA       0                    NA                0.1121076   0.0706281   0.1535871
6 months    ki1112895-Guatemala BSC    GUATEMALA       1                    NA                0.9014084   0.8319477   0.9708692
6 months    ki1114097-CMIN             GUINEA-BISSAU   0                    NA                0.0179211   0.0023298   0.0335125
6 months    ki1114097-CMIN             GUINEA-BISSAU   1                    NA                0.4000000   0.2479433   0.5520567
6 months    ki1119695-PROBIT           BELARUS         0                    NA                0.0600137   0.0469892   0.0730382
6 months    ki1119695-PROBIT           BELARUS         1                    NA                0.4000000   0.1027735   0.6972265
6 months    ki1126311-ZVITAMBO         ZIMBABWE        0                    NA                0.1390171   0.1311160   0.1469183
6 months    ki1126311-ZVITAMBO         ZIMBABWE        1                    NA                0.4002404   0.3669467   0.4335341
6 months    ki1135781-COHORTS          GUATEMALA       0                    NA                0.3319616   0.2977566   0.3661666
6 months    ki1135781-COHORTS          GUATEMALA       1                    NA                0.9056604   0.8499822   0.9613386
6 months    ki1135781-COHORTS          INDIA           0                    NA                0.1311310   0.1225414   0.1397206
6 months    ki1135781-COHORTS          INDIA           1                    NA                0.5997491   0.5657316   0.6337665
6 months    ki1135781-COHORTS          PHILIPPINES     0                    NA                0.1845308   0.1694629   0.1995987
6 months    ki1135781-COHORTS          PHILIPPINES     1                    NA                0.6580645   0.5833734   0.7327556
6 months    kiGH5241-JiVitA-3          BANGLADESH      0                    NA                0.1224278   0.1155030   0.1293526
6 months    kiGH5241-JiVitA-3          BANGLADESH      1                    NA                0.5495169   0.5344404   0.5645935
6 months    kiGH5241-JiVitA-4          BANGLADESH      0                    NA                0.1239745   0.1104295   0.1375194
6 months    kiGH5241-JiVitA-4          BANGLADESH      1                    NA                0.5815385   0.5509319   0.6121450
24 months   ki0047075b-MAL-ED          BANGLADESH      0                    NA                0.3965517   0.3236899   0.4694136
24 months   ki0047075b-MAL-ED          BANGLADESH      1                    NA                0.7500000   0.5996060   0.9003940
24 months   ki0047075b-MAL-ED          INDIA           0                    NA                0.3548387   0.2793083   0.4303691
24 months   ki0047075b-MAL-ED          INDIA           1                    NA                0.6428571   0.4648911   0.8208232
24 months   ki0047075b-MAL-ED          NEPAL           0                    NA                0.1756757   0.1141803   0.2371710
24 months   ki0047075b-MAL-ED          NEPAL           1                    NA                0.5882353   0.3535727   0.8228978
24 months   ki0047075b-MAL-ED          PERU            0                    NA                0.3192771   0.2481707   0.3903836
24 months   ki0047075b-MAL-ED          PERU            1                    NA                0.6666667   0.4775708   0.8557626
24 months   ki0047075b-MAL-ED          SOUTH AFRICA    0                    NA                0.3516484   0.2821051   0.4211916
24 months   ki0047075b-MAL-ED          SOUTH AFRICA    1                    NA                0.4210526   0.1984952   0.6436100
24 months   ki1000108-CMC-V-BCS-2002   INDIA           0                    NA                0.7317073   0.6353152   0.8280994
24 months   ki1000108-CMC-V-BCS-2002   INDIA           1                    NA                0.6875000   0.4592154   0.9157846
24 months   ki1000108-IRC              INDIA           0                    NA                0.3950276   0.3446072   0.4454481
24 months   ki1000108-IRC              INDIA           1                    NA                0.5744681   0.4329442   0.7159920
24 months   ki1017093-NIH-Birth        BANGLADESH      0                    NA                0.4971591   0.4448653   0.5494529
24 months   ki1017093-NIH-Birth        BANGLADESH      1                    NA                0.8243243   0.7375188   0.9111299
24 months   ki1101329-Keneba           GAMBIA          0                    NA                0.3003876   0.2775443   0.3232309
24 months   ki1101329-Keneba           GAMBIA          1                    NA                0.6363636   0.5652744   0.7074529
24 months   ki1126311-ZVITAMBO         ZIMBABWE        0                    NA                0.6085714   0.5573817   0.6597611
24 months   ki1126311-ZVITAMBO         ZIMBABWE        1                    NA                0.8144330   0.7369821   0.8918839
24 months   ki1135781-COHORTS          GUATEMALA       0                    NA                0.7203008   0.6861683   0.7544332
24 months   ki1135781-COHORTS          GUATEMALA       1                    NA                0.9652778   0.9441229   0.9864326
24 months   ki1135781-COHORTS          INDIA           0                    NA                0.4254395   0.4111616   0.4397175
24 months   ki1135781-COHORTS          INDIA           1                    NA                0.7507937   0.7170137   0.7845736
24 months   ki1135781-COHORTS          PHILIPPINES     0                    NA                0.6009532   0.5809706   0.6209358
24 months   ki1135781-COHORTS          PHILIPPINES     1                    NA                0.8962963   0.8448572   0.9477354
24 months   ki1148112-LCNI-5           MALAWI          0                    NA                0.2722372   0.2269045   0.3175698
24 months   ki1148112-LCNI-5           MALAWI          1                    NA                0.7638191   0.7047554   0.8228828
24 months   kiGH5241-JiVitA-3          BANGLADESH      0                    NA                0.3902272   0.3748834   0.4055711
24 months   kiGH5241-JiVitA-3          BANGLADESH      1                    NA                0.7126966   0.6925192   0.7328739
24 months   kiGH5241-JiVitA-4          BANGLADESH      0                    NA                0.2930873   0.2739024   0.3122721
24 months   kiGH5241-JiVitA-4          BANGLADESH      1                    NA                0.6417565   0.6105954   0.6729177


### Parameter: E(Y)


agecat      studyid                    country         intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  --------------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki0047075b-MAL-ED          BANGLADESH      NA                   NA                0.1845494   0.1346311   0.2344676
6 months    ki0047075b-MAL-ED          INDIA           NA                   NA                0.1979167   0.1414123   0.2544211
6 months    ki0047075b-MAL-ED          PERU            NA                   NA                0.2153846   0.1653196   0.2654496
6 months    ki0047075b-MAL-ED          SOUTH AFRICA    NA                   NA                0.1962617   0.1429241   0.2495993
6 months    ki1000108-CMC-V-BCS-2002   INDIA           NA                   NA                0.2604167   0.1721668   0.3486666
6 months    ki1000108-IRC              INDIA           NA                   NA                0.2457002   0.2038248   0.2875757
6 months    ki1000109-ResPak           PAKISTAN        NA                   NA                0.4415584   0.3299173   0.5531996
6 months    ki1000304b-SAS-CompFeed    INDIA           NA                   NA                0.2837838   0.2660825   0.3014850
6 months    ki1000304b-SAS-FoodSuppl   INDIA           NA                   NA                0.4277929   0.3771054   0.4784804
6 months    ki1017093-NIH-Birth        BANGLADESH      NA                   NA                0.2701689   0.2324359   0.3079018
6 months    ki1101329-Keneba           GAMBIA          NA                   NA                0.1412835   0.1263398   0.1562272
6 months    ki1112895-Guatemala BSC    GUATEMALA       NA                   NA                0.3027211   0.2501147   0.3553275
6 months    ki1114097-CMIN             GUINEA-BISSAU   NA                   NA                0.0658307   0.0385748   0.0930867
6 months    ki1119695-PROBIT           BELARUS         NA                   NA                0.0607877   0.0476810   0.0738944
6 months    ki1126311-ZVITAMBO         ZIMBABWE        NA                   NA                0.1655282   0.1574825   0.1735739
6 months    ki1135781-COHORTS          GUATEMALA       NA                   NA                0.4047904   0.3714773   0.4381035
6 months    ki1135781-COHORTS          INDIA           NA                   NA                0.1866270   0.1773180   0.1959361
6 months    ki1135781-COHORTS          PHILIPPINES     NA                   NA                0.2116950   0.1962891   0.2271010
6 months    kiGH5241-JiVitA-3          BANGLADESH      NA                   NA                0.2507560   0.2426260   0.2588861
6 months    kiGH5241-JiVitA-4          BANGLADESH      NA                   NA                0.2535395   0.2390830   0.2679961
24 months   ki0047075b-MAL-ED          BANGLADESH      NA                   NA                0.4514563   0.3833347   0.5195779
24 months   ki0047075b-MAL-ED          INDIA           NA                   NA                0.3989071   0.3277662   0.4700480
24 months   ki0047075b-MAL-ED          NEPAL           NA                   NA                0.2181818   0.1549714   0.2813922
24 months   ki0047075b-MAL-ED          PERU            NA                   NA                0.3631579   0.2945963   0.4317195
24 months   ki0047075b-MAL-ED          SOUTH AFRICA    NA                   NA                0.3582090   0.2917585   0.4246594
24 months   ki1000108-CMC-V-BCS-2002   INDIA           NA                   NA                0.7244898   0.6355805   0.8133991
24 months   ki1000108-IRC              INDIA           NA                   NA                0.4156479   0.3678270   0.4634689
24 months   ki1017093-NIH-Birth        BANGLADESH      NA                   NA                0.5539906   0.5067324   0.6012488
24 months   ki1101329-Keneba           GAMBIA          NA                   NA                0.3346868   0.3124056   0.3569679
24 months   ki1126311-ZVITAMBO         ZIMBABWE        NA                   NA                0.6532438   0.6090735   0.6974142
24 months   ki1135781-COHORTS          GUATEMALA       NA                   NA                0.7943337   0.7686586   0.8200088
24 months   ki1135781-COHORTS          INDIA           NA                   NA                0.4645790   0.4510699   0.4780880
24 months   ki1135781-COHORTS          PHILIPPINES     NA                   NA                0.6172738   0.5979960   0.6365517
24 months   ki1148112-LCNI-5           MALAWI          NA                   NA                0.4438596   0.4030365   0.4846828
24 months   kiGH5241-JiVitA-3          BANGLADESH      NA                   NA                0.4895981   0.4764416   0.5027546
24 months   kiGH5241-JiVitA-4          BANGLADESH      NA                   NA                0.3937709   0.3760204   0.4115213


### Parameter: RR


agecat      studyid                    country         intervention_level   baseline_level      estimate    ci_lower    ci_upper
----------  -------------------------  --------------  -------------------  ---------------  -----------  ----------  ----------
6 months    ki0047075b-MAL-ED          BANGLADESH      0                    0                  1.0000000   1.0000000    1.000000
6 months    ki0047075b-MAL-ED          BANGLADESH      1                    0                  5.3759398   3.3013081    8.754327
6 months    ki0047075b-MAL-ED          INDIA           0                    0                  1.0000000   1.0000000    1.000000
6 months    ki0047075b-MAL-ED          INDIA           1                    0                  2.8080000   1.6253261    4.851250
6 months    ki0047075b-MAL-ED          PERU            0                    0                  1.0000000   1.0000000    1.000000
6 months    ki0047075b-MAL-ED          PERU            1                    0                  3.7933740   2.5241025    5.700912
6 months    ki0047075b-MAL-ED          SOUTH AFRICA    0                    0                  1.0000000   1.0000000    1.000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA    1                    0                  1.8380952   0.9343423    3.616013
6 months    ki1000108-CMC-V-BCS-2002   INDIA           0                    0                  1.0000000   1.0000000    1.000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA           1                    0                  1.7052632   0.8152716    3.566814
6 months    ki1000108-IRC              INDIA           0                    0                  1.0000000   1.0000000    1.000000
6 months    ki1000108-IRC              INDIA           1                    0                  2.7573443   1.9918162    3.817093
6 months    ki1000109-ResPak           PAKISTAN        0                    0                  1.0000000   1.0000000    1.000000
6 months    ki1000109-ResPak           PAKISTAN        1                    0                  1.1730769   0.6609503    2.082016
6 months    ki1000304b-SAS-CompFeed    INDIA           0                    0                  1.0000000   1.0000000    1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA           1                    0                  3.9405265   3.4710595    4.473490
6 months    ki1000304b-SAS-FoodSuppl   INDIA           0                    0                  1.0000000   1.0000000    1.000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA           1                    0                  6.4402544   4.6183162    8.980952
6 months    ki1017093-NIH-Birth        BANGLADESH      0                    0                  1.0000000   1.0000000    1.000000
6 months    ki1017093-NIH-Birth        BANGLADESH      1                    0                  3.4531440   2.7147063    4.392447
6 months    ki1101329-Keneba           GAMBIA          0                    0                  1.0000000   1.0000000    1.000000
6 months    ki1101329-Keneba           GAMBIA          1                    0                  4.0807278   3.3352095    4.992892
6 months    ki1112895-Guatemala BSC    GUATEMALA       0                    0                  1.0000000   1.0000000    1.000000
6 months    ki1112895-Guatemala BSC    GUATEMALA       1                    0                  8.0405634   5.5099916   11.733350
6 months    ki1114097-CMIN             GUINEA-BISSAU   0                    0                  1.0000000   1.0000000    1.000000
6 months    ki1114097-CMIN             GUINEA-BISSAU   1                    0                 22.3199992   8.6370441   57.679730
6 months    ki1119695-PROBIT           BELARUS         0                    0                  1.0000000   1.0000000    1.000000
6 months    ki1119695-PROBIT           BELARUS         1                    0                  6.6651458   3.1239317   14.220595
6 months    ki1126311-ZVITAMBO         ZIMBABWE        0                    0                  1.0000000   1.0000000    1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE        1                    0                  2.8790729   2.6031481    3.184245
6 months    ki1135781-COHORTS          GUATEMALA       0                    0                  1.0000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          GUATEMALA       1                    0                  2.7282083   2.4197383    3.076002
6 months    ki1135781-COHORTS          INDIA           0                    0                  1.0000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          INDIA           1                    0                  4.5736647   4.1940497    4.987640
6 months    ki1135781-COHORTS          PHILIPPINES     0                    0                  1.0000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          PHILIPPINES     1                    0                  3.5661496   3.1008147    4.101317
6 months    kiGH5241-JiVitA-3          BANGLADESH      0                    0                  1.0000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH      1                    0                  4.4884976   4.2314077    4.761208
6 months    kiGH5241-JiVitA-4          BANGLADESH      0                    0                  1.0000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-4          BANGLADESH      1                    0                  4.6907919   4.1421582    5.312093
24 months   ki0047075b-MAL-ED          BANGLADESH      0                    0                  1.0000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          BANGLADESH      1                    0                  1.8913043   1.4409347    2.482439
24 months   ki0047075b-MAL-ED          INDIA           0                    0                  1.0000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          INDIA           1                    0                  1.8116883   1.2776855    2.568875
24 months   ki0047075b-MAL-ED          NEPAL           0                    0                  1.0000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          NEPAL           1                    0                  3.3484163   1.9694504    5.692904
24 months   ki0047075b-MAL-ED          PERU            0                    0                  1.0000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          PERU            1                    0                  2.0880503   1.4558659    2.994750
24 months   ki0047075b-MAL-ED          SOUTH AFRICA    0                    0                  1.0000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA    1                    0                  1.1973684   0.6809730    2.105357
24 months   ki1000108-CMC-V-BCS-2002   INDIA           0                    0                  1.0000000   1.0000000    1.000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA           1                    0                  0.9395833   0.6573448    1.343004
24 months   ki1000108-IRC              INDIA           0                    0                  1.0000000   1.0000000    1.000000
24 months   ki1000108-IRC              INDIA           1                    0                  1.4542479   1.1018945    1.919274
24 months   ki1017093-NIH-Birth        BANGLADESH      0                    0                  1.0000000   1.0000000    1.000000
24 months   ki1017093-NIH-Birth        BANGLADESH      1                    0                  1.6580695   1.4287713    1.924167
24 months   ki1101329-Keneba           GAMBIA          0                    0                  1.0000000   1.0000000    1.000000
24 months   ki1101329-Keneba           GAMBIA          1                    0                  2.1184751   1.8506884    2.425009
24 months   ki1126311-ZVITAMBO         ZIMBABWE        0                    0                  1.0000000   1.0000000    1.000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE        1                    0                  1.3382702   1.1787066    1.519434
24 months   ki1135781-COHORTS          GUATEMALA       0                    0                  1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          GUATEMALA       1                    0                  1.3401038   1.2719334    1.411928
24 months   ki1135781-COHORTS          INDIA           0                    0                  1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          INDIA           1                    0                  1.7647481   1.6684208    1.866637
24 months   ki1135781-COHORTS          PHILIPPINES     0                    0                  1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          PHILIPPINES     1                    0                  1.4914577   1.3957423    1.593737
24 months   ki1148112-LCNI-5           MALAWI          0                    0                  1.0000000   1.0000000    1.000000
24 months   ki1148112-LCNI-5           MALAWI          1                    0                  2.8057117   2.3351121    3.371152
24 months   kiGH5241-JiVitA-3          BANGLADESH      0                    0                  1.0000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH      1                    0                  1.8263630   1.7438220    1.912811
24 months   kiGH5241-JiVitA-4          BANGLADESH      0                    0                  1.0000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-4          BANGLADESH      1                    0                  2.1896432   2.0220904    2.371080


### Parameter: PAR


agecat      studyid                    country         intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  --------------  -------------------  ---------------  -----------  -----------  ----------
6 months    ki0047075b-MAL-ED          BANGLADESH      0                    NA                 0.0768570    0.0420611   0.1116530
6 months    ki0047075b-MAL-ED          INDIA           0                    NA                 0.0435957    0.0111298   0.0760616
6 months    ki0047075b-MAL-ED          PERU            0                    NA                 0.0538126    0.0260769   0.0815482
6 months    ki0047075b-MAL-ED          SOUTH AFRICA    0                    NA                 0.0149145   -0.0065038   0.0363329
6 months    ki1000108-CMC-V-BCS-2002   INDIA           0                    NA                 0.0258488   -0.0174217   0.0691193
6 months    ki1000108-IRC              INDIA           0                    NA                 0.0407141    0.0205129   0.0609153
6 months    ki1000109-ResPak           PAKISTAN        0                    NA                 0.0153289   -0.0425049   0.0731627
6 months    ki1000304b-SAS-CompFeed    INDIA           0                    NA                 0.1260518    0.1092225   0.1428812
6 months    ki1000304b-SAS-FoodSuppl   INDIA           0                    NA                 0.2900151    0.2440883   0.3359420
6 months    ki1017093-NIH-Birth        BANGLADESH      0                    NA                 0.0759724    0.0534286   0.0985163
6 months    ki1101329-Keneba           GAMBIA          0                    NA                 0.0318176    0.0239073   0.0397280
6 months    ki1112895-Guatemala BSC    GUATEMALA       0                    NA                 0.1906135    0.1472787   0.2339482
6 months    ki1114097-CMIN             GUINEA-BISSAU   0                    NA                 0.0479096    0.0242292   0.0715900
6 months    ki1119695-PROBIT           BELARUS         0                    NA                 0.0007740   -0.0002454   0.0017935
6 months    ki1126311-ZVITAMBO         ZIMBABWE        0                    NA                 0.0265111    0.0226412   0.0303810
6 months    ki1135781-COHORTS          GUATEMALA       0                    NA                 0.0728288    0.0574395   0.0882182
6 months    ki1135781-COHORTS          INDIA           0                    NA                 0.0554961    0.0499868   0.0610054
6 months    ki1135781-COHORTS          PHILIPPINES     0                    NA                 0.0271642    0.0211351   0.0331933
6 months    kiGH5241-JiVitA-3          BANGLADESH      0                    NA                 0.1283282    0.1226383   0.1340182
6 months    kiGH5241-JiVitA-4          BANGLADESH      0                    NA                 0.1295651    0.1179725   0.1411576
24 months   ki0047075b-MAL-ED          BANGLADESH      0                    NA                 0.0549046    0.0235828   0.0862263
24 months   ki0047075b-MAL-ED          INDIA           0                    NA                 0.0440684    0.0108731   0.0772636
24 months   ki0047075b-MAL-ED          NEPAL           0                    NA                 0.0425061    0.0109922   0.0740201
24 months   ki0047075b-MAL-ED          PERU            0                    NA                 0.0438808    0.0135180   0.0742436
24 months   ki0047075b-MAL-ED          SOUTH AFRICA    0                    NA                 0.0065606   -0.0156592   0.0287804
24 months   ki1000108-CMC-V-BCS-2002   INDIA           0                    NA                -0.0072175   -0.0478053   0.0333702
24 months   ki1000108-IRC              INDIA           0                    NA                 0.0206203    0.0024848   0.0387558
24 months   ki1017093-NIH-Birth        BANGLADESH      0                    NA                 0.0568315    0.0356476   0.0780154
24 months   ki1101329-Keneba           GAMBIA          0                    NA                 0.0342992    0.0252893   0.0433090
24 months   ki1126311-ZVITAMBO         ZIMBABWE        0                    NA                 0.0446724    0.0230416   0.0663032
24 months   ki1135781-COHORTS          GUATEMALA       0                    NA                 0.0740329    0.0599497   0.0881161
24 months   ki1135781-COHORTS          INDIA           0                    NA                 0.0391394    0.0338780   0.0444008
24 months   ki1135781-COHORTS          PHILIPPINES     0                    NA                 0.0163206    0.0122632   0.0203781
24 months   ki1148112-LCNI-5           MALAWI          0                    NA                 0.1716225    0.1392741   0.2039708
24 months   kiGH5241-JiVitA-3          BANGLADESH      0                    NA                 0.0993709    0.0913354   0.1074063
24 months   kiGH5241-JiVitA-4          BANGLADESH      0                    NA                 0.1006836    0.0893559   0.1120113


### Parameter: PAF


agecat      studyid                    country         intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  --------------  -------------------  ---------------  -----------  -----------  ----------
6 months    ki0047075b-MAL-ED          BANGLADESH      0                    NA                 0.4164580    0.2298684   0.5578401
6 months    ki0047075b-MAL-ED          INDIA           0                    NA                 0.2202729    0.0470266   0.3620238
6 months    ki0047075b-MAL-ED          PERU            0                    NA                 0.2498440    0.1187439   0.3614410
6 months    ki0047075b-MAL-ED          SOUTH AFRICA    0                    NA                 0.0759931   -0.0386324   0.1779683
6 months    ki1000108-CMC-V-BCS-2002   INDIA           0                    NA                 0.0992593   -0.0817107   0.2499530
6 months    ki1000108-IRC              INDIA           0                    NA                 0.1657064    0.0817735   0.2419671
6 months    ki1000109-ResPak           PAKISTAN        0                    NA                 0.0347155   -0.1057401   0.1573299
6 months    ki1000304b-SAS-CompFeed    INDIA           0                    NA                 0.4441826    0.3851851   0.4975187
6 months    ki1000304b-SAS-FoodSuppl   INDIA           0                    NA                 0.6779335    0.5735092   0.7567899
6 months    ki1017093-NIH-Birth        BANGLADESH      0                    NA                 0.2812035    0.1976972   0.3560182
6 months    ki1101329-Keneba           GAMBIA          0                    NA                 0.2252041    0.1713369   0.2755697
6 months    ki1112895-Guatemala BSC    GUATEMALA       0                    NA                 0.6296670    0.4999462   0.7257364
6 months    ki1114097-CMIN             GUINEA-BISSAU   0                    NA                 0.7277692    0.4216174   0.8718675
6 months    ki1119695-PROBIT           BELARUS         0                    NA                 0.0127336   -0.0040761   0.0292618
6 months    ki1126311-ZVITAMBO         ZIMBABWE        0                    NA                 0.1601605    0.1373581   0.1823601
6 months    ki1135781-COHORTS          GUATEMALA       0                    NA                 0.1799174    0.1406571   0.2173840
6 months    ki1135781-COHORTS          INDIA           0                    NA                 0.2973636    0.2699658   0.3237330
6 months    ki1135781-COHORTS          PHILIPPINES     0                    NA                 0.1283177    0.1002203   0.1555377
6 months    kiGH5241-JiVitA-3          BANGLADESH      0                    NA                 0.5117652    0.4919034   0.5308506
6 months    kiGH5241-JiVitA-4          BANGLADESH      0                    NA                 0.5110251    0.4684252   0.5502110
24 months   ki0047075b-MAL-ED          BANGLADESH      0                    NA                 0.1216166    0.0482610   0.1893183
24 months   ki0047075b-MAL-ED          INDIA           0                    NA                 0.1104728    0.0227791   0.1902971
24 months   ki0047075b-MAL-ED          NEPAL           0                    NA                 0.1948198    0.0440108   0.3218384
24 months   ki0047075b-MAL-ED          PERU            0                    NA                 0.1208312    0.0331097   0.2005941
24 months   ki0047075b-MAL-ED          SOUTH AFRICA    0                    NA                 0.0183150   -0.0457265   0.0784346
24 months   ki1000108-CMC-V-BCS-2002   INDIA           0                    NA                -0.0099622   -0.0676284   0.0445893
24 months   ki1000108-IRC              INDIA           0                    NA                 0.0496100    0.0048238   0.0923807
24 months   ki1017093-NIH-Birth        BANGLADESH      0                    NA                 0.1025857    0.0622552   0.1411817
24 months   ki1101329-Keneba           GAMBIA          0                    NA                 0.1024814    0.0752400   0.1289204
24 months   ki1126311-ZVITAMBO         ZIMBABWE        0                    NA                 0.0683855    0.0338471   0.1016893
24 months   ki1135781-COHORTS          GUATEMALA       0                    NA                 0.0932013    0.0737915   0.1122043
24 months   ki1135781-COHORTS          INDIA           0                    NA                 0.0842471    0.0726947   0.0956555
24 months   ki1135781-COHORTS          PHILIPPINES     0                    NA                 0.0264399    0.0197336   0.0331002
24 months   ki1148112-LCNI-5           MALAWI          0                    NA                 0.3866593    0.3094782   0.4552136
24 months   kiGH5241-JiVitA-3          BANGLADESH      0                    NA                 0.2029642    0.1855361   0.2200193
24 months   kiGH5241-JiVitA-4          BANGLADESH      0                    NA                 0.2556908    0.2262050   0.2840530
