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

**Outcome Variable:** stunted

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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
##        stunted
## enstunt  0
##       0 10
##       1  0
```




# Results Detail

## Results Plots
![](/tmp/2f39ffbb-e7b6-4572-9b29-7c8c1effa053/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/2f39ffbb-e7b6-4572-9b29-7c8c1effa053/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/2f39ffbb-e7b6-4572-9b29-7c8c1effa053/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/2f39ffbb-e7b6-4572-9b29-7c8c1effa053/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country         intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  --------------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki0047075b-MAL-ED          BANGLADESH      0                    NA                0.1064209   0.0634082   0.1494337
6 months    ki0047075b-MAL-ED          BANGLADESH      1                    NA                0.4317167   0.3002186   0.5632147
6 months    ki0047075b-MAL-ED          INDIA           0                    NA                0.1554328   0.1005650   0.2103005
6 months    ki0047075b-MAL-ED          INDIA           1                    NA                0.3064740   0.1944194   0.4185285
6 months    ki0047075b-MAL-ED          PERU            0                    NA                0.1650790   0.1173313   0.2128268
6 months    ki0047075b-MAL-ED          PERU            1                    NA                0.5827193   0.4272263   0.7382123
6 months    ki0047075b-MAL-ED          SOUTH AFRICA    0                    NA                0.1845445   0.1302728   0.2388163
6 months    ki0047075b-MAL-ED          SOUTH AFRICA    1                    NA                0.4900968   0.2999944   0.6801992
6 months    ki1000108-CMC-V-BCS-2002   INDIA           0                    NA                0.2345679   0.1418066   0.3273292
6 months    ki1000108-CMC-V-BCS-2002   INDIA           1                    NA                0.4000000   0.1507806   0.6492194
6 months    ki1000108-IRC              INDIA           0                    NA                0.2056081   0.1638847   0.2473314
6 months    ki1000108-IRC              INDIA           1                    NA                0.4111261   0.2932349   0.5290174
6 months    ki1000109-ResPak           PAKISTAN        0                    NA                0.4261856   0.3012500   0.5511212
6 months    ki1000109-ResPak           PAKISTAN        1                    NA                0.4849848   0.2429138   0.7270558
6 months    ki1000304b-SAS-CompFeed    INDIA           0                    NA                0.1607960   0.1418925   0.1796996
6 months    ki1000304b-SAS-CompFeed    INDIA           1                    NA                0.6210365   0.5882404   0.6538327
6 months    ki1000304b-SAS-FoodSuppl   INDIA           0                    NA                0.2071153   0.1634592   0.2507714
6 months    ki1000304b-SAS-FoodSuppl   INDIA           1                    NA                0.9373435   0.8930660   0.9816210
6 months    ki1017093-NIH-Birth        BANGLADESH      0                    NA                0.1992458   0.1630179   0.2354737
6 months    ki1017093-NIH-Birth        BANGLADESH      1                    NA                0.6460269   0.5577642   0.7342895
6 months    ki1101329-Keneba           GAMBIA          0                    NA                0.1101144   0.0961093   0.1241195
6 months    ki1101329-Keneba           GAMBIA          1                    NA                0.3828433   0.3331457   0.4325409
6 months    ki1112895-Guatemala BSC    GUATEMALA       0                    NA                0.1094354   0.0686676   0.1502031
6 months    ki1112895-Guatemala BSC    GUATEMALA       1                    NA                0.8272274   0.7636457   0.8908091
6 months    ki1114097-CMIN             GUINEA-BISSAU   0                    NA                0.0178402   0.0023072   0.0333731
6 months    ki1114097-CMIN             GUINEA-BISSAU   1                    NA                0.3789610   0.2318279   0.5260940
6 months    ki1119695-PROBIT           BELARUS         0                    NA                0.0600915   0.0470528   0.0731303
6 months    ki1119695-PROBIT           BELARUS         1                    NA                0.2719157   0.1713615   0.3724698
6 months    ki1126311-ZVITAMBO         ZIMBABWE        0                    NA                0.1403080   0.1324165   0.1481995
6 months    ki1126311-ZVITAMBO         ZIMBABWE        1                    NA                0.3998387   0.3722836   0.4273938
6 months    ki1135781-COHORTS          GUATEMALA       0                    NA                0.3343313   0.3009217   0.3677409
6 months    ki1135781-COHORTS          GUATEMALA       1                    NA                0.7939639   0.7587377   0.8291902
6 months    ki1135781-COHORTS          INDIA           0                    NA                0.1316869   0.1231148   0.1402591
6 months    ki1135781-COHORTS          INDIA           1                    NA                0.5915713   0.5604211   0.6227216
6 months    ki1135781-COHORTS          PHILIPPINES     0                    NA                0.1871641   0.1720950   0.2022332
6 months    ki1135781-COHORTS          PHILIPPINES     1                    NA                0.6408117   0.5892111   0.6924122
6 months    kiGH5241-JiVitA-3          BANGLADESH      0                    NA                0.1325589   0.1253287   0.1397890
6 months    kiGH5241-JiVitA-3          BANGLADESH      1                    NA                0.5159926   0.5012527   0.5307325
6 months    kiGH5241-JiVitA-4          BANGLADESH      0                    NA                0.1240550   0.1105675   0.1375426
6 months    kiGH5241-JiVitA-4          BANGLADESH      1                    NA                0.5809148   0.5508604   0.6109691
24 months   ki0047075b-MAL-ED          BANGLADESH      0                    NA                0.4023313   0.3301789   0.4744836
24 months   ki0047075b-MAL-ED          BANGLADESH      1                    NA                0.7207993   0.5711075   0.8704911
24 months   ki0047075b-MAL-ED          INDIA           0                    NA                0.3762601   0.3014002   0.4511201
24 months   ki0047075b-MAL-ED          INDIA           1                    NA                0.8249956   0.7089279   0.9410633
24 months   ki0047075b-MAL-ED          NEPAL           0                    NA                0.1768086   0.1155002   0.2381169
24 months   ki0047075b-MAL-ED          NEPAL           1                    NA                0.5802802   0.3647099   0.7958506
24 months   ki0047075b-MAL-ED          PERU            0                    NA                0.3280718   0.2572882   0.3988554
24 months   ki0047075b-MAL-ED          PERU            1                    NA                0.6040240   0.4256961   0.7823519
24 months   ki0047075b-MAL-ED          SOUTH AFRICA    0                    NA                0.3499533   0.2805551   0.4193515
24 months   ki0047075b-MAL-ED          SOUTH AFRICA    1                    NA                0.4429583   0.2400570   0.6458596
24 months   ki1000108-CMC-V-BCS-2002   INDIA           0                    NA                0.7316368   0.6354702   0.8278035
24 months   ki1000108-CMC-V-BCS-2002   INDIA           1                    NA                0.6241709   0.4032382   0.8451036
24 months   ki1000108-IRC              INDIA           0                    NA                0.3951825   0.3447622   0.4456028
24 months   ki1000108-IRC              INDIA           1                    NA                0.5732449   0.4319034   0.7145865
24 months   ki1017093-NIH-Birth        BANGLADESH      0                    NA                0.5073856   0.4564279   0.5583433
24 months   ki1017093-NIH-Birth        BANGLADESH      1                    NA                0.8495965   0.7818904   0.9173026
24 months   ki1101329-Keneba           GAMBIA          0                    NA                0.3023044   0.2796108   0.3249980
24 months   ki1101329-Keneba           GAMBIA          1                    NA                0.6236328   0.5714972   0.6757684
24 months   ki1126311-ZVITAMBO         ZIMBABWE        0                    NA                0.6087230   0.5583200   0.6591261
24 months   ki1126311-ZVITAMBO         ZIMBABWE        1                    NA                0.7005560   0.6275211   0.7735908
24 months   ki1135781-COHORTS          GUATEMALA       0                    NA                0.7063994   0.6736161   0.7391828
24 months   ki1135781-COHORTS          GUATEMALA       1                    NA                0.9535854   0.9341251   0.9730458
24 months   ki1135781-COHORTS          INDIA           0                    NA                0.4275263   0.4133585   0.4416940
24 months   ki1135781-COHORTS          INDIA           1                    NA                0.7161996   0.6864100   0.7459892
24 months   ki1135781-COHORTS          PHILIPPINES     0                    NA                0.6053611   0.5855392   0.6251829
24 months   ki1135781-COHORTS          PHILIPPINES     1                    NA                0.8942191   0.8655942   0.9228440
24 months   ki1148112-LCNI-5           MALAWI          0                    NA                0.3060785   0.2630492   0.3491078
24 months   ki1148112-LCNI-5           MALAWI          1                    NA                0.8184181   0.7685386   0.8682976
24 months   kiGH5241-JiVitA-3          BANGLADESH      0                    NA                0.4074961   0.3923816   0.4226106
24 months   kiGH5241-JiVitA-3          BANGLADESH      1                    NA                0.6866432   0.6680293   0.7052571
24 months   kiGH5241-JiVitA-4          BANGLADESH      0                    NA                0.2935734   0.2744441   0.3127028
24 months   kiGH5241-JiVitA-4          BANGLADESH      1                    NA                0.6454624   0.6149200   0.6760048


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
6 months    ki0047075b-MAL-ED          BANGLADESH      1                    0                  4.0566889   2.4823493    6.629496
6 months    ki0047075b-MAL-ED          INDIA           0                    0                  1.0000000   1.0000000    1.000000
6 months    ki0047075b-MAL-ED          INDIA           1                    0                  1.9717464   1.1963952    3.249582
6 months    ki0047075b-MAL-ED          PERU            0                    0                  1.0000000   1.0000000    1.000000
6 months    ki0047075b-MAL-ED          PERU            1                    0                  3.5299409   2.3949651    5.202782
6 months    ki0047075b-MAL-ED          SOUTH AFRICA    0                    0                  1.0000000   1.0000000    1.000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA    1                    0                  2.6557104   1.6340209    4.316223
6 months    ki1000108-CMC-V-BCS-2002   INDIA           0                    0                  1.0000000   1.0000000    1.000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA           1                    0                  1.7052632   0.8152716    3.566814
6 months    ki1000108-IRC              INDIA           0                    0                  1.0000000   1.0000000    1.000000
6 months    ki1000108-IRC              INDIA           1                    0                  1.9995624   1.4098305    2.835979
6 months    ki1000109-ResPak           PAKISTAN        0                    0                  1.0000000   1.0000000    1.000000
6 months    ki1000109-ResPak           PAKISTAN        1                    0                  1.1379663   0.6379343    2.029938
6 months    ki1000304b-SAS-CompFeed    INDIA           0                    0                  1.0000000   1.0000000    1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA           1                    0                  3.8622624   3.4430663    4.332496
6 months    ki1000304b-SAS-FoodSuppl   INDIA           0                    0                  1.0000000   1.0000000    1.000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA           1                    0                  4.5257091   3.6454885    5.618463
6 months    ki1017093-NIH-Birth        BANGLADESH      0                    0                  1.0000000   1.0000000    1.000000
6 months    ki1017093-NIH-Birth        BANGLADESH      1                    0                  3.2423611   2.5948667    4.051424
6 months    ki1101329-Keneba           GAMBIA          0                    0                  1.0000000   1.0000000    1.000000
6 months    ki1101329-Keneba           GAMBIA          1                    0                  3.4767772   2.9043433    4.162035
6 months    ki1112895-Guatemala BSC    GUATEMALA       0                    0                  1.0000000   1.0000000    1.000000
6 months    ki1112895-Guatemala BSC    GUATEMALA       1                    0                  7.5590504   5.1793864   11.032049
6 months    ki1114097-CMIN             GUINEA-BISSAU   0                    0                  1.0000000   1.0000000    1.000000
6 months    ki1114097-CMIN             GUINEA-BISSAU   1                    0                 21.2420255   8.1821691   55.147192
6 months    ki1119695-PROBIT           BELARUS         0                    0                  1.0000000   1.0000000    1.000000
6 months    ki1119695-PROBIT           BELARUS         1                    0                  4.5250246   2.9730356    6.887185
6 months    ki1126311-ZVITAMBO         ZIMBABWE        0                    0                  1.0000000   1.0000000    1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE        1                    0                  2.8497207   2.6083319    3.113449
6 months    ki1135781-COHORTS          GUATEMALA       0                    0                  1.0000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          GUATEMALA       1                    0                  2.3747820   2.1340997    2.642608
6 months    ki1135781-COHORTS          INDIA           0                    0                  1.0000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          INDIA           1                    0                  4.4922549   4.1327910    4.882985
6 months    ki1135781-COHORTS          PHILIPPINES     0                    0                  1.0000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          PHILIPPINES     1                    0                  3.4237953   3.0578727    3.833506
6 months    kiGH5241-JiVitA-3          BANGLADESH      0                    0                  1.0000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH      1                    0                  3.8925533   3.6759337    4.121938
6 months    kiGH5241-JiVitA-4          BANGLADESH      0                    0                  1.0000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-4          BANGLADESH      1                    0                  4.6827181   4.1377832    5.299419
24 months   ki0047075b-MAL-ED          BANGLADESH      0                    0                  1.0000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          BANGLADESH      1                    0                  1.7915568   1.3677576    2.346670
24 months   ki0047075b-MAL-ED          INDIA           0                    0                  1.0000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          INDIA           1                    0                  2.1926202   1.7238895    2.788800
24 months   ki0047075b-MAL-ED          NEPAL           0                    0                  1.0000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          NEPAL           1                    0                  3.2819688   1.9889081    5.415695
24 months   ki0047075b-MAL-ED          PERU            0                    0                  1.0000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          PERU            1                    0                  1.8411335   1.2869944    2.633868
24 months   ki0047075b-MAL-ED          SOUTH AFRICA    0                    0                  1.0000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA    1                    0                  1.2657639   0.7722082    2.074775
24 months   ki1000108-CMC-V-BCS-2002   INDIA           0                    0                  1.0000000   1.0000000    1.000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA           1                    0                  0.8531157   0.5850211    1.244069
24 months   ki1000108-IRC              INDIA           0                    0                  1.0000000   1.0000000    1.000000
24 months   ki1000108-IRC              INDIA           1                    0                  1.4505827   1.0989986    1.914643
24 months   ki1017093-NIH-Birth        BANGLADESH      0                    0                  1.0000000   1.0000000    1.000000
24 months   ki1017093-NIH-Birth        BANGLADESH      1                    0                  1.6744593   1.4750632    1.900809
24 months   ki1101329-Keneba           GAMBIA          0                    0                  1.0000000   1.0000000    1.000000
24 months   ki1101329-Keneba           GAMBIA          1                    0                  2.0629296   1.8464556    2.304782
24 months   ki1126311-ZVITAMBO         ZIMBABWE        0                    0                  1.0000000   1.0000000    1.000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE        1                    0                  1.1508616   1.0118064    1.309028
24 months   ki1135781-COHORTS          GUATEMALA       0                    0                  1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          GUATEMALA       1                    0                  1.3499238   1.2838402    1.419409
24 months   ki1135781-COHORTS          INDIA           0                    0                  1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          INDIA           1                    0                  1.6752177   1.5898586    1.765160
24 months   ki1135781-COHORTS          PHILIPPINES     0                    0                  1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          PHILIPPINES     1                    0                  1.4771664   1.4122722    1.545043
24 months   ki1148112-LCNI-5           MALAWI          0                    0                  1.0000000   1.0000000    1.000000
24 months   ki1148112-LCNI-5           MALAWI          1                    0                  2.6738832   2.2962204    3.113661
24 months   kiGH5241-JiVitA-3          BANGLADESH      0                    0                  1.0000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH      1                    0                  1.6850302   1.6131128    1.760154
24 months   kiGH5241-JiVitA-4          BANGLADESH      0                    0                  1.0000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-4          BANGLADESH      1                    0                  2.1986402   2.0320620    2.378874


### Parameter: PAR


agecat      studyid                    country         intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  --------------  -------------------  ---------------  -----------  -----------  ----------
6 months    ki0047075b-MAL-ED          BANGLADESH      0                    NA                 0.0781284    0.0441704   0.1120865
6 months    ki0047075b-MAL-ED          INDIA           0                    NA                 0.0424839    0.0112268   0.0737411
6 months    ki0047075b-MAL-ED          PERU            0                    NA                 0.0503056    0.0242530   0.0763582
6 months    ki0047075b-MAL-ED          SOUTH AFRICA    0                    NA                 0.0117172   -0.0099057   0.0333401
6 months    ki1000108-CMC-V-BCS-2002   INDIA           0                    NA                 0.0258488   -0.0174217   0.0691193
6 months    ki1000108-IRC              INDIA           0                    NA                 0.0400922    0.0198149   0.0603695
6 months    ki1000109-ResPak           PAKISTAN        0                    NA                 0.0153729   -0.0428048   0.0735506
6 months    ki1000304b-SAS-CompFeed    INDIA           0                    NA                 0.1229877    0.1076553   0.1383201
6 months    ki1000304b-SAS-FoodSuppl   INDIA           0                    NA                 0.2206776    0.1821978   0.2591574
6 months    ki1017093-NIH-Birth        BANGLADESH      0                    NA                 0.0709230    0.0496610   0.0921851
6 months    ki1101329-Keneba           GAMBIA          0                    NA                 0.0311691    0.0233973   0.0389409
6 months    ki1112895-Guatemala BSC    GUATEMALA       0                    NA                 0.1932857    0.1498764   0.2366951
6 months    ki1114097-CMIN             GUINEA-BISSAU   0                    NA                 0.0479906    0.0243066   0.0716746
6 months    ki1119695-PROBIT           BELARUS         0                    NA                 0.0006962   -0.0002861   0.0016785
6 months    ki1126311-ZVITAMBO         ZIMBABWE        0                    NA                 0.0252202    0.0214094   0.0290309
6 months    ki1135781-COHORTS          GUATEMALA       0                    NA                 0.0704591    0.0553230   0.0855953
6 months    ki1135781-COHORTS          INDIA           0                    NA                 0.0549401    0.0494825   0.0603977
6 months    ki1135781-COHORTS          PHILIPPINES     0                    NA                 0.0245309    0.0187502   0.0303116
6 months    kiGH5241-JiVitA-3          BANGLADESH      0                    NA                 0.1181971    0.1125732   0.1238211
6 months    kiGH5241-JiVitA-4          BANGLADESH      0                    NA                 0.1294845    0.1179473   0.1410217
24 months   ki0047075b-MAL-ED          BANGLADESH      0                    NA                 0.0491250    0.0192664   0.0789837
24 months   ki0047075b-MAL-ED          INDIA           0                    NA                 0.0226470   -0.0051587   0.0504526
24 months   ki0047075b-MAL-ED          NEPAL           0                    NA                 0.0413732    0.0110995   0.0716469
24 months   ki0047075b-MAL-ED          PERU            0                    NA                 0.0350861    0.0077855   0.0623866
24 months   ki0047075b-MAL-ED          SOUTH AFRICA    0                    NA                 0.0082556   -0.0125652   0.0290764
24 months   ki1000108-CMC-V-BCS-2002   INDIA           0                    NA                -0.0071471   -0.0475724   0.0332783
24 months   ki1000108-IRC              INDIA           0                    NA                 0.0204654    0.0023635   0.0385673
24 months   ki1017093-NIH-Birth        BANGLADESH      0                    NA                 0.0466050    0.0270797   0.0661304
24 months   ki1101329-Keneba           GAMBIA          0                    NA                 0.0323823    0.0237812   0.0409835
24 months   ki1126311-ZVITAMBO         ZIMBABWE        0                    NA                 0.0445208    0.0240952   0.0649464
24 months   ki1135781-COHORTS          GUATEMALA       0                    NA                 0.0879342    0.0730271   0.1028414
24 months   ki1135781-COHORTS          INDIA           0                    NA                 0.0370527    0.0320194   0.0420860
24 months   ki1135781-COHORTS          PHILIPPINES     0                    NA                 0.0119128    0.0083531   0.0154724
24 months   ki1148112-LCNI-5           MALAWI          0                    NA                 0.1377812    0.1089217   0.1666407
24 months   kiGH5241-JiVitA-3          BANGLADESH      0                    NA                 0.0821020    0.0743791   0.0898250
24 months   kiGH5241-JiVitA-4          BANGLADESH      0                    NA                 0.1001974    0.0889474   0.1114475


### Parameter: PAF


agecat      studyid                    country         intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  --------------  -------------------  ---------------  -----------  -----------  ----------
6 months    ki0047075b-MAL-ED          BANGLADESH      0                    NA                 0.4233470    0.2428493   0.5608157
6 months    ki0047075b-MAL-ED          INDIA           0                    NA                 0.2146556    0.0499999   0.3507728
6 months    ki0047075b-MAL-ED          PERU            0                    NA                 0.2335616    0.1105247   0.3395794
6 months    ki0047075b-MAL-ED          SOUTH AFRICA    0                    NA                 0.0597017   -0.0556180   0.1624235
6 months    ki1000108-CMC-V-BCS-2002   INDIA           0                    NA                 0.0992593   -0.0817107   0.2499530
6 months    ki1000108-IRC              INDIA           0                    NA                 0.1631752    0.0789610   0.2396894
6 months    ki1000109-ResPak           PAKISTAN        0                    NA                 0.0348150   -0.1065077   0.1580881
6 months    ki1000304b-SAS-CompFeed    INDIA           0                    NA                 0.4333854    0.3797992   0.4823417
6 months    ki1000304b-SAS-FoodSuppl   INDIA           0                    NA                 0.5158515    0.4335067   0.5862268
6 months    ki1017093-NIH-Birth        BANGLADESH      0                    NA                 0.2625137    0.1844088   0.3331390
6 months    ki1101329-Keneba           GAMBIA          0                    NA                 0.2206139    0.1678919   0.2699955
6 months    ki1112895-Guatemala BSC    GUATEMALA       0                    NA                 0.6384944    0.5102758   0.7331431
6 months    ki1114097-CMIN             GUINEA-BISSAU   0                    NA                 0.7289996    0.4237611   0.8725507
6 months    ki1119695-PROBIT           BELARUS         0                    NA                 0.0114529   -0.0047634   0.0274076
6 months    ki1126311-ZVITAMBO         ZIMBABWE        0                    NA                 0.1523617    0.1299241   0.1742206
6 months    ki1135781-COHORTS          GUATEMALA       0                    NA                 0.1740632    0.1362521   0.2102191
6 months    ki1135781-COHORTS          INDIA           0                    NA                 0.2943844    0.2672744   0.3204915
6 months    ki1135781-COHORTS          PHILIPPINES     0                    NA                 0.1158785    0.0889469   0.1420140
6 months    kiGH5241-JiVitA-3          BANGLADESH      0                    NA                 0.4713631    0.4510880   0.4908892
6 months    kiGH5241-JiVitA-4          BANGLADESH      0                    NA                 0.5107073    0.4684069   0.5496418
24 months   ki0047075b-MAL-ED          BANGLADESH      0                    NA                 0.1088146    0.0393864   0.1732249
24 months   ki0047075b-MAL-ED          INDIA           0                    NA                 0.0567725   -0.0157297   0.1240996
24 months   ki0047075b-MAL-ED          NEPAL           0                    NA                 0.1896273    0.0451456   0.3122472
24 months   ki0047075b-MAL-ED          PERU            0                    NA                 0.0966139    0.0181243   0.1688291
24 months   ki0047075b-MAL-ED          SOUTH AFRICA    0                    NA                 0.0230470   -0.0369543   0.0795763
24 months   ki1000108-CMC-V-BCS-2002   INDIA           0                    NA                -0.0098649   -0.0672993   0.0444787
24 months   ki1000108-IRC              INDIA           0                    NA                 0.0492374    0.0045356   0.0919318
24 months   ki1017093-NIH-Birth        BANGLADESH      0                    NA                 0.0841260    0.0475132   0.1193314
24 months   ki1101329-Keneba           GAMBIA          0                    NA                 0.0967541    0.0708142   0.1219699
24 months   ki1126311-ZVITAMBO         ZIMBABWE        0                    NA                 0.0681534    0.0355583   0.0996469
24 months   ki1135781-COHORTS          GUATEMALA       0                    NA                 0.1107019    0.0905030   0.1304522
24 months   ki1135781-COHORTS          INDIA           0                    NA                 0.0797554    0.0687294   0.0906509
24 months   ki1135781-COHORTS          PHILIPPINES     0                    NA                 0.0192990    0.0134460   0.0251173
24 months   ki1148112-LCNI-5           MALAWI          0                    NA                 0.3104161    0.2439907   0.3710051
24 months   kiGH5241-JiVitA-3          BANGLADESH      0                    NA                 0.1676927    0.1512185   0.1838472
24 months   kiGH5241-JiVitA-4          BANGLADESH      0                    NA                 0.2544561    0.2251986   0.2826088
