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

**Intervention Variable:** feducyrs

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* W_mhtcm
* W_gagebrth
* W_birthwt
* W_birthlen
* single
* delta_W_mage
* delta_meducyrs
* delta_W_mhtcm
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_single

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country                        feducyrs    n_cell       n
-------------  -------------------------  -----------------------------  ---------  -------  ------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Q4              50     138
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Q1              31     138
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Q2               7     138
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Q3              50     138
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Q4              17     634
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Q1             287     634
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Q2             249     634
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Q3              81     634
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q4             192     720
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q1             169     720
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q2             183     720
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q3             176     720
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Q4            1890   19324
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Q1            9827   19324
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Q2            3553   19324
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Q3            4054   19324
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Q4              15    1031
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Q1             763    1031
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Q2              90    1031
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Q3             163    1031
0-3 months     ki1119695-PROBIT           BELARUS                        Q4            1893   12311
0-3 months     ki1119695-PROBIT           BELARUS                        Q1              22   12311
0-3 months     ki1119695-PROBIT           BELARUS                        Q2             271   12311
0-3 months     ki1119695-PROBIT           BELARUS                        Q3           10125   12311
0-3 months     ki1135781-COHORTS          GUATEMALA                      Q4               3     693
0-3 months     ki1135781-COHORTS          GUATEMALA                      Q1             558     693
0-3 months     ki1135781-COHORTS          GUATEMALA                      Q2             129     693
0-3 months     ki1135781-COHORTS          GUATEMALA                      Q3               3     693
0-3 months     ki0047075b-MAL-ED          INDIA                          Q4              36     116
0-3 months     ki0047075b-MAL-ED          INDIA                          Q1              20     116
0-3 months     ki0047075b-MAL-ED          INDIA                          Q2              36     116
0-3 months     ki0047075b-MAL-ED          INDIA                          Q3              24     116
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Q4             291    1165
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Q1             279    1165
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Q2             292    1165
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Q3             303    1165
0-3 months     ki1135781-COHORTS          INDIA                          Q4             373    1330
0-3 months     ki1135781-COHORTS          INDIA                          Q1             238    1330
0-3 months     ki1135781-COHORTS          INDIA                          Q2             192    1330
0-3 months     ki1135781-COHORTS          INDIA                          Q3             527    1330
0-3 months     ki0047075b-MAL-ED          NEPAL                          Q4              25      68
0-3 months     ki0047075b-MAL-ED          NEPAL                          Q1              20      68
0-3 months     ki0047075b-MAL-ED          NEPAL                          Q2              18      68
0-3 months     ki0047075b-MAL-ED          NEPAL                          Q3               5      68
0-3 months     ki0047075b-MAL-ED          PERU                           Q4             107     223
0-3 months     ki0047075b-MAL-ED          PERU                           Q1              45     223
0-3 months     ki0047075b-MAL-ED          PERU                           Q2              61     223
0-3 months     ki0047075b-MAL-ED          PERU                           Q3              10     223
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Q4              31      82
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Q1              15      82
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Q2              21      82
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Q3              15      82
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4               7     186
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1              40     186
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2              28     186
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3             111     186
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Q4            6455    7627
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Q1              46    7627
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Q2              61    7627
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Q3            1065    7627
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Q4              50     129
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Q1              29     129
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Q2               5     129
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Q3              45     129
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Q4              16     574
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Q1             258     574
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Q2             227     574
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Q3              73     574
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q4             186     695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q1             161     695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q2             176     695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q3             172     695
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Q4            1400   12081
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Q1            5640   12081
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Q2            2244   12081
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Q3            2797   12081
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Q4              16    1067
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Q1             783    1067
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Q2              99    1067
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Q3             169    1067
3-6 months     ki1119695-PROBIT           BELARUS                        Q4            2108   12835
3-6 months     ki1119695-PROBIT           BELARUS                        Q1              21   12835
3-6 months     ki1119695-PROBIT           BELARUS                        Q2             288   12835
3-6 months     ki1119695-PROBIT           BELARUS                        Q3           10418   12835
3-6 months     ki1135781-COHORTS          GUATEMALA                      Q4               4     761
3-6 months     ki1135781-COHORTS          GUATEMALA                      Q1             619     761
3-6 months     ki1135781-COHORTS          GUATEMALA                      Q2             136     761
3-6 months     ki1135781-COHORTS          GUATEMALA                      Q3               2     761
3-6 months     ki0047075b-MAL-ED          INDIA                          Q4              42     131
3-6 months     ki0047075b-MAL-ED          INDIA                          Q1              20     131
3-6 months     ki0047075b-MAL-ED          INDIA                          Q2              41     131
3-6 months     ki0047075b-MAL-ED          INDIA                          Q3              28     131
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Q4             287    1121
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Q1             263    1121
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Q2             270    1121
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Q3             301    1121
3-6 months     ki1135781-COHORTS          INDIA                          Q4             379    1343
3-6 months     ki1135781-COHORTS          INDIA                          Q1             241    1343
3-6 months     ki1135781-COHORTS          INDIA                          Q2             190    1343
3-6 months     ki1135781-COHORTS          INDIA                          Q3             533    1343
3-6 months     ki0047075b-MAL-ED          NEPAL                          Q4              38      93
3-6 months     ki0047075b-MAL-ED          NEPAL                          Q1              23      93
3-6 months     ki0047075b-MAL-ED          NEPAL                          Q2              25      93
3-6 months     ki0047075b-MAL-ED          NEPAL                          Q3               7      93
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Q4             117     470
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Q1             210     470
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Q2              74     470
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Q3              69     470
3-6 months     ki0047075b-MAL-ED          PERU                           Q4             105     220
3-6 months     ki0047075b-MAL-ED          PERU                           Q1              44     220
3-6 months     ki0047075b-MAL-ED          PERU                           Q2              62     220
3-6 months     ki0047075b-MAL-ED          PERU                           Q3               9     220
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Q4              32      89
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Q1              18      89
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Q2              24      89
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Q3              15      89
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4               8     194
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1              42     194
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2              29     194
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3             115     194
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q4             148    1655
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q1               5    1655
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q2            1437    1655
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q3              65    1655
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Q4            4827    5711
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Q1              41    5711
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Q2              46    5711
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Q3             797    5711
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Q4              46     121
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Q1              27     121
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Q2               5     121
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Q3              43     121
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Q4              14     545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Q1             241     545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Q2             219     545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Q3              71     545
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q4             184     676
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q1             153     676
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q2             171     676
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q3             168     676
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Q4            1075    9453
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Q1            4469    9453
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Q2            1723    9453
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Q3            2186    9453
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Q4              20    1769
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Q1            1291    1769
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Q2             160    1769
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Q3             298    1769
6-12 months    ki1119695-PROBIT           BELARUS                        Q4            2036   12459
6-12 months    ki1119695-PROBIT           BELARUS                        Q1              18   12459
6-12 months    ki1119695-PROBIT           BELARUS                        Q2             286   12459
6-12 months    ki1119695-PROBIT           BELARUS                        Q3           10119   12459
6-12 months    ki1135781-COHORTS          GUATEMALA                      Q4               4     816
6-12 months    ki1135781-COHORTS          GUATEMALA                      Q1             665     816
6-12 months    ki1135781-COHORTS          GUATEMALA                      Q2             145     816
6-12 months    ki1135781-COHORTS          GUATEMALA                      Q3               2     816
6-12 months    ki0047075b-MAL-ED          INDIA                          Q4              42     129
6-12 months    ki0047075b-MAL-ED          INDIA                          Q1              20     129
6-12 months    ki0047075b-MAL-ED          INDIA                          Q2              40     129
6-12 months    ki0047075b-MAL-ED          INDIA                          Q3              27     129
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Q4             294    1134
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Q1             257    1134
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Q2             283    1134
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Q3             300    1134
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q4              17     332
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q1             133     332
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q2              72     332
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q3             110     332
6-12 months    ki1135781-COHORTS          INDIA                          Q4             336    1164
6-12 months    ki1135781-COHORTS          INDIA                          Q1             198    1164
6-12 months    ki1135781-COHORTS          INDIA                          Q2             176    1164
6-12 months    ki1135781-COHORTS          INDIA                          Q3             454    1164
6-12 months    ki1148112-LCNI-5           MALAWI                         Q4              23     429
6-12 months    ki1148112-LCNI-5           MALAWI                         Q1             197     429
6-12 months    ki1148112-LCNI-5           MALAWI                         Q2             138     429
6-12 months    ki1148112-LCNI-5           MALAWI                         Q3              71     429
6-12 months    ki0047075b-MAL-ED          NEPAL                          Q4              39      91
6-12 months    ki0047075b-MAL-ED          NEPAL                          Q1              22      91
6-12 months    ki0047075b-MAL-ED          NEPAL                          Q2              23      91
6-12 months    ki0047075b-MAL-ED          NEPAL                          Q3               7      91
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Q4             114     474
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Q1             205     474
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Q2              75     474
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Q3              80     474
6-12 months    ki0047075b-MAL-ED          PERU                           Q4              90     193
6-12 months    ki0047075b-MAL-ED          PERU                           Q1              39     193
6-12 months    ki0047075b-MAL-ED          PERU                           Q2              55     193
6-12 months    ki0047075b-MAL-ED          PERU                           Q3               9     193
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Q4             633    2296
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Q1             517    2296
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Q2             162    2296
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Q3             984    2296
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q4              32      87
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q1              18      87
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q2              23      87
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q3              14      87
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4               7     182
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1              38     182
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2              27     182
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3             110     182
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q4              98    1078
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q1               3    1078
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q2             933    1078
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q3              44    1078
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q4            3732    4433
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q1              36    4433
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q2              34    4433
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q3             631    4433
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q4              39     114
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q1              28     114
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q2               5     114
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q3              42     114
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q4              10     458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q1             211     458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q2             179     458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q3              58     458
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q4             147     495
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q1              95     495
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q2             131     495
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q3             122     495
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Q4             457    4486
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Q1            2216    4486
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Q2             821    4486
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Q3             992    4486
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q4              24    2046
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q1            1484    2046
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q2             186    2046
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q3             352    2046
12-24 months   ki1119695-PROBIT           BELARUS                        Q4             357    2464
12-24 months   ki1119695-PROBIT           BELARUS                        Q1               1    2464
12-24 months   ki1119695-PROBIT           BELARUS                        Q2              44    2464
12-24 months   ki1119695-PROBIT           BELARUS                        Q3            2062    2464
12-24 months   ki1135781-COHORTS          GUATEMALA                      Q4               4     827
12-24 months   ki1135781-COHORTS          GUATEMALA                      Q1             677     827
12-24 months   ki1135781-COHORTS          GUATEMALA                      Q2             144     827
12-24 months   ki1135781-COHORTS          GUATEMALA                      Q3               2     827
12-24 months   ki0047075b-MAL-ED          INDIA                          Q4              42     131
12-24 months   ki0047075b-MAL-ED          INDIA                          Q1              20     131
12-24 months   ki0047075b-MAL-ED          INDIA                          Q2              41     131
12-24 months   ki0047075b-MAL-ED          INDIA                          Q3              28     131
12-24 months   ki1135781-COHORTS          INDIA                          Q4             321    1126
12-24 months   ki1135781-COHORTS          INDIA                          Q1             193    1126
12-24 months   ki1135781-COHORTS          INDIA                          Q2             173    1126
12-24 months   ki1135781-COHORTS          INDIA                          Q3             439    1126
12-24 months   ki1148112-LCNI-5           MALAWI                         Q4              13     306
12-24 months   ki1148112-LCNI-5           MALAWI                         Q1             148     306
12-24 months   ki1148112-LCNI-5           MALAWI                         Q2              94     306
12-24 months   ki1148112-LCNI-5           MALAWI                         Q3              51     306
12-24 months   ki0047075b-MAL-ED          NEPAL                          Q4              37      89
12-24 months   ki0047075b-MAL-ED          NEPAL                          Q1              22      89
12-24 months   ki0047075b-MAL-ED          NEPAL                          Q2              23      89
12-24 months   ki0047075b-MAL-ED          NEPAL                          Q3               7      89
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Q4              92     367
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Q1             163     367
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Q2              47     367
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Q3              65     367
12-24 months   ki0047075b-MAL-ED          PERU                           Q4              71     157
12-24 months   ki0047075b-MAL-ED          PERU                           Q1              32     157
12-24 months   ki0047075b-MAL-ED          PERU                           Q2              47     157
12-24 months   ki0047075b-MAL-ED          PERU                           Q3               7     157
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Q4             576    2136
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Q1             486    2136
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Q2             160    2136
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Q3             914    2136
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q4              33      89
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q1              19      89
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q2              22      89
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q3              15      89
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4               6     170
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1              34     170
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2              24     170
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3             106     170
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q2               2       2
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q4             223     284
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q1               7     284
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q2               2     284
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q3              52     284


The following strata were considered:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-3 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-3 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-3 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 12-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 12-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 12-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 12-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 12-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 12-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 12-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 3-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 3-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 3-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-12 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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

* agecat: 0-3 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 3-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-12 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 12-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 12-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE

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
![](/tmp/14a325d9-b7fb-4f39-93ad-094c32f39199/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/14a325d9-b7fb-4f39-93ad-094c32f39199/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Q4                   NA                3.6740134   3.5579470   3.7900797
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Q1                   NA                3.6228248   3.4748607   3.7707890
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Q2                   NA                3.3152479   3.0247780   3.6057177
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Q3                   NA                3.5703634   3.4315106   3.7092161
0-3 months     ki0047075b-MAL-ED          INDIA                          Q4                   NA                3.6268290   3.4761426   3.7775154
0-3 months     ki0047075b-MAL-ED          INDIA                          Q1                   NA                3.3822016   3.1477581   3.6166451
0-3 months     ki0047075b-MAL-ED          INDIA                          Q2                   NA                3.6569130   3.5025893   3.8112367
0-3 months     ki0047075b-MAL-ED          INDIA                          Q3                   NA                3.7122954   3.4801831   3.9444078
0-3 months     ki0047075b-MAL-ED          NEPAL                          Q4                   NA                4.1820646   3.9874523   4.3766769
0-3 months     ki0047075b-MAL-ED          NEPAL                          Q1                   NA                4.3673673   4.1861678   4.5485668
0-3 months     ki0047075b-MAL-ED          NEPAL                          Q2                   NA                4.4232584   4.2797990   4.5667177
0-3 months     ki0047075b-MAL-ED          NEPAL                          Q3                   NA                5.3648620   5.1056119   5.6241121
0-3 months     ki0047075b-MAL-ED          PERU                           Q4                   NA                3.3303578   3.2394979   3.4212177
0-3 months     ki0047075b-MAL-ED          PERU                           Q1                   NA                3.4343902   3.3392017   3.5295786
0-3 months     ki0047075b-MAL-ED          PERU                           Q2                   NA                3.4208973   3.3333285   3.5084662
0-3 months     ki0047075b-MAL-ED          PERU                           Q3                   NA                4.2315372   4.1371938   4.3258807
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Q4                   NA                3.3969999   3.1570537   3.6369461
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Q1                   NA                3.4200682   3.1634751   3.6766614
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Q2                   NA                3.0297016   2.7816507   3.2777525
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Q3                   NA                2.8773882   2.5387037   3.2160726
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                   NA                3.4300687   2.9932304   3.8669070
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                   NA                3.5361384   3.3546619   3.7176150
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                   NA                3.4210251   3.2173095   3.6247406
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                   NA                3.5227186   3.4114664   3.6339708
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Q4                   NA                3.7106071   3.6664377   3.7547765
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Q1                   NA                3.4884295   3.4637399   3.5131191
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Q2                   NA                3.5747361   3.5284959   3.6209763
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Q3                   NA                3.6608461   3.6200920   3.7016001
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Q4                   NA                3.8434491   3.7945352   3.8923630
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Q1                   NA                3.3943904   3.3459586   3.4428223
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Q2                   NA                3.4374912   3.3882782   3.4867041
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Q3                   NA                3.3494577   3.2958020   3.4031134
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q4                   NA                3.3584499   3.2895098   3.4273899
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q1                   NA                3.3808175   3.2950365   3.4665984
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q2                   NA                3.3352498   3.2616720   3.4088276
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q3                   NA                3.3192063   3.2450065   3.3934062
0-3 months     ki1119695-PROBIT           BELARUS                        Q4                   NA                2.8662736   2.7639664   2.9685809
0-3 months     ki1119695-PROBIT           BELARUS                        Q1                   NA                2.6455857   2.5888706   2.7023008
0-3 months     ki1119695-PROBIT           BELARUS                        Q2                   NA                2.7020741   2.6196442   2.7845041
0-3 months     ki1119695-PROBIT           BELARUS                        Q3                   NA                2.8301334   2.7154601   2.9448067
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Q4                   NA                3.3807677   3.3582826   3.4032529
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Q1                   NA                3.3385860   3.2831038   3.3940682
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Q2                   NA                3.2887654   3.1631056   3.4144252
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Q3                   NA                3.3759627   3.3267579   3.4251674
0-3 months     ki1135781-COHORTS          INDIA                          Q4                   NA                3.7172122   3.6662108   3.7682135
0-3 months     ki1135781-COHORTS          INDIA                          Q1                   NA                3.4276371   3.3738818   3.4813924
0-3 months     ki1135781-COHORTS          INDIA                          Q2                   NA                3.6817200   3.6184359   3.7450041
0-3 months     ki1135781-COHORTS          INDIA                          Q3                   NA                3.5648130   3.5187303   3.6108957
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Q4                   NA                3.8204900   3.8002993   3.8406806
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Q1                   NA                3.6916001   3.6790608   3.7041393
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Q2                   NA                3.7179218   3.6994055   3.7364380
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Q3                   NA                3.7369719   3.7186967   3.7552471
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Q4                   NA                4.1490829   3.9597544   4.3384114
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Q1                   NA                3.6382257   3.5921576   3.6842937
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Q2                   NA                3.6320436   3.4761492   3.7879380
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Q3                   NA                3.6565132   3.5700111   3.7430152
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Q4                   NA                2.0639855   1.9796359   2.1483352
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Q1                   NA                1.8655582   1.7488805   1.9822359
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Q2                   NA                2.1088931   1.7799801   2.4378060
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Q3                   NA                1.9257790   1.7917405   2.0598174
3-6 months     ki0047075b-MAL-ED          INDIA                          Q4                   NA                1.8918943   1.7762565   2.0075322
3-6 months     ki0047075b-MAL-ED          INDIA                          Q1                   NA                2.0482805   1.8620885   2.2344724
3-6 months     ki0047075b-MAL-ED          INDIA                          Q2                   NA                1.8509063   1.6879189   2.0138937
3-6 months     ki0047075b-MAL-ED          INDIA                          Q3                   NA                1.8169785   1.6103231   2.0236339
3-6 months     ki0047075b-MAL-ED          NEPAL                          Q4                   NA                1.9507233   1.8004774   2.1009692
3-6 months     ki0047075b-MAL-ED          NEPAL                          Q1                   NA                1.8266296   1.6883029   1.9649563
3-6 months     ki0047075b-MAL-ED          NEPAL                          Q2                   NA                1.9970995   1.8169393   2.1772597
3-6 months     ki0047075b-MAL-ED          NEPAL                          Q3                   NA                1.5745713   1.3059600   1.8431827
3-6 months     ki0047075b-MAL-ED          PERU                           Q4                   NA                1.9509269   1.8543470   2.0475068
3-6 months     ki0047075b-MAL-ED          PERU                           Q1                   NA                1.7479941   1.6607407   1.8352474
3-6 months     ki0047075b-MAL-ED          PERU                           Q2                   NA                1.8816255   1.8094263   1.9538248
3-6 months     ki0047075b-MAL-ED          PERU                           Q3                   NA                1.0148709   0.9241432   1.1055986
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Q4                   NA                1.6324800   1.3959323   1.8690277
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Q1                   NA                1.2207868   0.9516506   1.4899230
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Q2                   NA                1.3542236   1.1863219   1.5221253
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Q3                   NA                1.3293731   1.0482913   1.6104550
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                   NA                1.3674557   1.1386793   1.5962322
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                   NA                1.8423037   1.6702278   2.0143797
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                   NA                1.7466618   1.5667432   1.9265804
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                   NA                1.8248418   1.7222882   1.9273955
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Q4                   NA                1.9272814   1.8744940   1.9800689
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Q1                   NA                1.8184953   1.7557539   1.8812367
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Q2                   NA                1.8560397   1.8227472   1.8893323
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Q3                   NA                1.9544318   1.8751342   2.0337294
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Q4                   NA                2.1777725   2.1474840   2.2080609
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Q1                   NA                1.9276025   1.8833094   1.9718956
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Q2                   NA                1.9414719   1.8956088   1.9873351
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Q3                   NA                1.8299970   1.7731745   1.8868195
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q4                   NA                2.0102969   1.9565908   2.0640030
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q1                   NA                1.9891173   1.9266636   2.0515709
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q2                   NA                2.0090566   1.9471770   2.0709362
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q3                   NA                2.0582374   1.9990676   2.1174073
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q4                   NA                1.7800439   1.7191543   1.8409335
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q1                   NA                1.7147226   1.6759835   1.7534618
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q2                   NA                1.7911080   1.7534636   1.8287525
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q3                   NA                2.0997742   2.0443382   2.1552101
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Q4                   NA                1.7188586   1.6434754   1.7942417
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Q1                   NA                1.7236720   1.6647059   1.7826380
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Q2                   NA                1.7186858   1.6281127   1.8092589
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Q3                   NA                1.6692505   1.5864447   1.7520563
3-6 months     ki1119695-PROBIT           BELARUS                        Q4                   NA                2.1240427   2.0814826   2.1666028
3-6 months     ki1119695-PROBIT           BELARUS                        Q1                   NA                2.1172932   2.0592078   2.1753787
3-6 months     ki1119695-PROBIT           BELARUS                        Q2                   NA                2.0838883   2.0376187   2.1301580
3-6 months     ki1119695-PROBIT           BELARUS                        Q3                   NA                2.0876239   2.0466587   2.1285891
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Q4                   NA                1.9784148   1.9571788   1.9996509
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Q1                   NA                1.4065122   1.3789403   1.4340841
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Q2                   NA                2.5586893   2.4700453   2.6473333
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Q3                   NA                1.8326005   1.7869571   1.8782439
3-6 months     ki1135781-COHORTS          INDIA                          Q4                   NA                1.9583988   1.9176332   1.9991644
3-6 months     ki1135781-COHORTS          INDIA                          Q1                   NA                1.7542353   1.7050855   1.8033851
3-6 months     ki1135781-COHORTS          INDIA                          Q2                   NA                1.9808487   1.9226806   2.0390168
3-6 months     ki1135781-COHORTS          INDIA                          Q3                   NA                1.8721495   1.8337523   1.9105466
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Q4                   NA                1.9277344   1.9032855   1.9521834
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Q1                   NA                1.9035520   1.8890260   1.9180779
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Q2                   NA                1.9011853   1.8801971   1.9221735
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Q3                   NA                1.9259127   1.9073871   1.9444383
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Q4                   NA                1.7779696   1.6619113   1.8940279
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Q1                   NA                1.8967892   1.8547552   1.9388232
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Q2                   NA                1.7893821   1.7071830   1.8715813
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Q3                   NA                1.8643803   1.7998596   1.9289010
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Q4                   NA                1.1396462   1.0960947   1.1831977
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Q1                   NA                1.0984065   1.0543751   1.1424380
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Q2                   NA                0.9848167   0.8496139   1.1200196
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Q3                   NA                1.1096440   1.0660333   1.1532548
6-12 months    ki0047075b-MAL-ED          INDIA                          Q4                   NA                1.1368523   1.0790224   1.1946821
6-12 months    ki0047075b-MAL-ED          INDIA                          Q1                   NA                1.1427304   1.0331599   1.2523009
6-12 months    ki0047075b-MAL-ED          INDIA                          Q2                   NA                1.0943743   1.0226247   1.1661239
6-12 months    ki0047075b-MAL-ED          INDIA                          Q3                   NA                1.0881082   1.0117172   1.1644992
6-12 months    ki0047075b-MAL-ED          NEPAL                          Q4                   NA                1.2210889   1.1691591   1.2730188
6-12 months    ki0047075b-MAL-ED          NEPAL                          Q1                   NA                1.2046786   1.1106575   1.2986998
6-12 months    ki0047075b-MAL-ED          NEPAL                          Q2                   NA                1.2180660   1.1348869   1.3012451
6-12 months    ki0047075b-MAL-ED          NEPAL                          Q3                   NA                1.1926495   1.0512915   1.3340075
6-12 months    ki0047075b-MAL-ED          PERU                           Q4                   NA                1.2826881   1.2396884   1.3256877
6-12 months    ki0047075b-MAL-ED          PERU                           Q1                   NA                1.3732549   1.3226361   1.4238737
6-12 months    ki0047075b-MAL-ED          PERU                           Q2                   NA                1.2423472   1.1949601   1.2897344
6-12 months    ki0047075b-MAL-ED          PERU                           Q3                   NA                1.7375181   1.6771366   1.7978995
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q4                   NA                1.1929408   1.0990490   1.2868326
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q1                   NA                1.0941500   0.9603212   1.2279788
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q2                   NA                1.1797825   1.0672532   1.2923118
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q3                   NA                1.1682649   1.0391353   1.2973944
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                   NA                0.7084346   0.6269465   0.7899227
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                   NA                0.9315045   0.8646236   0.9983854
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                   NA                0.9905664   0.9191197   1.0620132
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                   NA                1.0220510   0.9765528   1.0675493
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Q4                   NA                1.1083653   1.0919068   1.1248237
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Q1                   NA                1.0592665   1.0210831   1.0974499
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Q2                   NA                1.0658010   1.0414990   1.0901029
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Q3                   NA                1.1470880   1.1284211   1.1657548
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q4                   NA                0.8293599   0.7729206   0.8857991
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q1                   NA                1.0360480   0.9201356   1.1519603
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q2                   NA                0.9677528   0.8549689   1.0805366
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q3                   NA                1.0502221   0.9181394   1.1823048
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Q4                   NA                1.7226001   1.6932905   1.7519096
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Q1                   NA                1.1409348   1.1200963   1.1617732
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Q2                   NA                1.1823440   1.1579945   1.2066935
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Q3                   NA                1.3462948   1.3230193   1.3695704
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q4                   NA                1.2772868   1.2443197   1.3102538
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q1                   NA                1.2083855   1.1757425   1.2410285
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q2                   NA                1.2057470   1.1777374   1.2337567
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q3                   NA                1.2810027   1.2480317   1.3139738
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Q4                   NA                1.2041786   1.1668184   1.2415388
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Q1                   NA                1.1656869   1.1363261   1.1950477
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Q2                   NA                1.1552442   1.1087443   1.2017440
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Q3                   NA                1.1324982   1.0918035   1.1731928
6-12 months    ki1119695-PROBIT           BELARUS                        Q4                   NA                1.4570739   1.4290054   1.4851425
6-12 months    ki1119695-PROBIT           BELARUS                        Q1                   NA                1.2582677   1.2362559   1.2802795
6-12 months    ki1119695-PROBIT           BELARUS                        Q2                   NA                1.5429290   1.5061227   1.5797353
6-12 months    ki1119695-PROBIT           BELARUS                        Q3                   NA                1.4690934   1.4285106   1.5096761
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q4                   NA                1.1976368   1.1860580   1.2092157
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q1                   NA                1.1580959   1.1389198   1.1772720
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q2                   NA                0.9968877   0.9610234   1.0327519
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q3                   NA                1.1621953   1.1390148   1.1853758
6-12 months    ki1135781-COHORTS          INDIA                          Q4                   NA                1.1489632   1.1239563   1.1739701
6-12 months    ki1135781-COHORTS          INDIA                          Q1                   NA                1.0578706   1.0325140   1.0832273
6-12 months    ki1135781-COHORTS          INDIA                          Q2                   NA                1.0467764   1.0135114   1.0800413
6-12 months    ki1135781-COHORTS          INDIA                          Q3                   NA                1.1033147   1.0798771   1.1267523
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Q4                   NA                1.1054413   1.0852894   1.1255932
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Q1                   NA                1.0583482   1.0360236   1.0806729
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Q2                   NA                1.0043439   0.9726228   1.0360649
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Q3                   NA                1.0615044   1.0444691   1.0785397
6-12 months    ki1148112-LCNI-5           MALAWI                         Q4                   NA                1.4158948   1.3624633   1.4693263
6-12 months    ki1148112-LCNI-5           MALAWI                         Q1                   NA                1.2870709   1.2513350   1.3228068
6-12 months    ki1148112-LCNI-5           MALAWI                         Q2                   NA                1.2842468   1.2464659   1.3220277
6-12 months    ki1148112-LCNI-5           MALAWI                         Q3                   NA                1.2561515   1.2106254   1.3016775
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Q4                   NA                1.1155170   1.1022906   1.1287433
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Q1                   NA                1.0866198   1.0780168   1.0952229
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Q2                   NA                1.0976087   1.0847398   1.1104776
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Q3                   NA                1.1054037   1.0943683   1.1164391
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Q4                   NA                1.1683738   1.0651259   1.2716216
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Q1                   NA                1.1991179   1.1813987   1.2168371
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Q2                   NA                1.2113515   1.1776829   1.2450202
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Q3                   NA                1.2152021   1.1850579   1.2453462
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q4                   NA                0.8599293   0.8275695   0.8922891
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q1                   NA                0.8258856   0.7870787   0.8646926
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q2                   NA                0.9059596   0.8751231   0.9367961
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q3                   NA                0.8328670   0.8002917   0.8654423
12-24 months   ki0047075b-MAL-ED          INDIA                          Q4                   NA                0.8822624   0.8384718   0.9260529
12-24 months   ki0047075b-MAL-ED          INDIA                          Q1                   NA                0.8923125   0.8377330   0.9468919
12-24 months   ki0047075b-MAL-ED          INDIA                          Q2                   NA                0.8609953   0.8159765   0.9060141
12-24 months   ki0047075b-MAL-ED          INDIA                          Q3                   NA                0.8697582   0.8237323   0.9157841
12-24 months   ki0047075b-MAL-ED          NEPAL                          Q4                   NA                0.8957331   0.8537012   0.9377649
12-24 months   ki0047075b-MAL-ED          NEPAL                          Q1                   NA                0.8043932   0.7572990   0.8514874
12-24 months   ki0047075b-MAL-ED          NEPAL                          Q2                   NA                0.8437607   0.8013004   0.8862210
12-24 months   ki0047075b-MAL-ED          NEPAL                          Q3                   NA                0.8643188   0.8039390   0.9246986
12-24 months   ki0047075b-MAL-ED          PERU                           Q4                   NA                0.8283997   0.7961047   0.8606948
12-24 months   ki0047075b-MAL-ED          PERU                           Q1                   NA                0.8509672   0.8032055   0.8987290
12-24 months   ki0047075b-MAL-ED          PERU                           Q2                   NA                0.8632538   0.8297971   0.8967104
12-24 months   ki0047075b-MAL-ED          PERU                           Q3                   NA                0.7855601   0.7126049   0.8585154
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q4                   NA                0.9246879   0.8698375   0.9795384
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q1                   NA                0.8674950   0.7990062   0.9359837
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q2                   NA                0.9238695   0.8725959   0.9751431
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q3                   NA                0.8944756   0.8188743   0.9700768
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                   NA                0.6966011   0.5684475   0.8247547
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                   NA                0.7389646   0.6856522   0.7922771
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                   NA                0.7687040   0.7093786   0.8280294
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                   NA                0.7875600   0.7546376   0.8204824
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q4                   NA                0.9016135   0.8947474   0.9084797
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q1                   NA                0.8232895   0.8098044   0.8367747
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q2                   NA                0.8563684   0.8424158   0.8703209
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q3                   NA                0.8023600   0.7903597   0.8143603
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q4                   NA                0.8926331   0.8730113   0.9122548
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q1                   NA                0.8322965   0.8091456   0.8554474
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q2                   NA                0.8579220   0.8380851   0.8777590
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q3                   NA                0.9086491   0.8881080   0.9291903
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Q4                   NA                0.8616969   0.8298036   0.8935901
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Q1                   NA                0.8301441   0.8082851   0.8520031
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Q2                   NA                0.8134241   0.7750196   0.8518287
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Q3                   NA                0.8193194   0.7862442   0.8523945
12-24 months   ki1135781-COHORTS          INDIA                          Q4                   NA                0.8739345   0.8602399   0.8876291
12-24 months   ki1135781-COHORTS          INDIA                          Q1                   NA                0.7835788   0.7688278   0.7983299
12-24 months   ki1135781-COHORTS          INDIA                          Q2                   NA                0.7885921   0.7711551   0.8060291
12-24 months   ki1135781-COHORTS          INDIA                          Q3                   NA                0.8302945   0.8175335   0.8430554
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Q4                   NA                0.7644949   0.7532889   0.7757009
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Q1                   NA                0.6583510   0.6460177   0.6706844
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Q2                   NA                0.6631396   0.6473539   0.6789253
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Q3                   NA                0.6872726   0.6769762   0.6975691
12-24 months   ki1148112-LCNI-5           MALAWI                         Q4                   NA                0.9161929   0.8737354   0.9586504
12-24 months   ki1148112-LCNI-5           MALAWI                         Q1                   NA                0.8587887   0.8337630   0.8838143
12-24 months   ki1148112-LCNI-5           MALAWI                         Q2                   NA                0.8495020   0.8250445   0.8739595
12-24 months   ki1148112-LCNI-5           MALAWI                         Q3                   NA                0.8493412   0.8158258   0.8828565
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Q4                   NA                0.8299459   0.8179651   0.8419267
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Q1                   NA                0.7875344   0.7811333   0.7939355
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Q2                   NA                0.7947692   0.7860863   0.8034521
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Q3                   NA                0.8022783   0.7928456   0.8117110
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q4                   NA                0.8008787   0.7731760   0.8285813
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q1                   NA                0.8513881   0.8430191   0.8597570
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q2                   NA                0.8387845   0.8209663   0.8566027
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q3                   NA                0.8502841   0.8362589   0.8643094


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                3.6068110   3.5255940   3.6880279
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                3.6116826   3.5155281   3.7078371
0-3 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                3.8615395   3.7322218   3.9908572
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                3.3127625   3.2416069   3.3839181
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                3.4876232   3.3349303   3.6403160
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                3.5068091   3.4220819   3.5915362
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                3.6022342   3.5739584   3.6305100
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                3.4826706   3.4434873   3.5218539
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                3.3028656   3.2646714   3.3410598
0-3 months     ki1119695-PROBIT           BELARUS                        NA                   NA                2.8365156   2.7232236   2.9498075
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                3.3748719   3.3536408   3.3961030
0-3 months     ki1135781-COHORTS          INDIA                          NA                   NA                3.5536717   3.5216431   3.5857004
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                3.7181534   3.7077552   3.7285517
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                3.6351196   3.5944306   3.6758086
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                1.9729069   1.9071430   2.0386707
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                1.8869292   1.8038848   1.9699736
3-6 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.9039465   1.8096675   1.9982256
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                2.0417906   1.9674458   2.1161353
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                1.9098061   1.7797304   2.0398817
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.8292696   1.7515547   1.9069846
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                1.9401040   1.8974682   1.9827398
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.9654454   1.9303798   2.0005110
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                2.0057973   1.9693775   2.0422170
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.7934225   1.7576031   1.8292420
3-6 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                1.7053358   1.6661973   1.7444743
3-6 months     ki1119695-PROBIT           BELARUS                        NA                   NA                2.0928984   2.0517324   2.1340643
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                1.9740980   1.9538278   1.9943683
3-6 months     ki1135781-COHORTS          INDIA                          NA                   NA                1.8755767   1.8484594   1.9026940
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                1.9190042   1.9082849   1.9297235
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                1.8926233   1.8561309   1.9291158
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                1.1117026   1.0780038   1.1454013
6-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                1.1143902   1.0768288   1.1519515
6-12 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.2147118   1.1709584   1.2584651
6-12 months    ki0047075b-MAL-ED          PERU                           NA                   NA                1.2093319   1.1718101   1.2468537
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                1.1639758   1.0994369   1.2285148
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9935744   0.9522996   1.0348491
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                1.0994077   1.0886490   1.1101664
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                1.0131058   0.9370457   1.0891660
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.1731762   1.1558671   1.1904853
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                1.2281313   1.2106849   1.2455776
6-12 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                1.1684269   1.1487669   1.1880868
6-12 months    ki1119695-PROBIT           BELARUS                        NA                   NA                1.4693563   1.4313558   1.5073568
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                1.1972779   1.1862308   1.2083250
6-12 months    ki1135781-COHORTS          INDIA                          NA                   NA                1.1020756   1.0845199   1.1196312
6-12 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                1.0660827   1.0536639   1.0785015
6-12 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                1.2783065   1.2521010   1.3045119
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                1.1066016   1.0997305   1.1134727
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                1.2026410   1.1876102   1.2176719
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.8436107   0.8232704   0.8639511
12-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.8744660   0.8501852   0.8987468
12-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.8572612   0.8314640   0.8830584
12-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.8420366   0.8191247   0.8649486
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.8652829   0.8300082   0.9005576
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7719685   0.7466771   0.7972599
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.8575519   0.8455586   0.8695452
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.8755729   0.8637860   0.8873598
12-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.8378848   0.8224521   0.8533174
12-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.8261936   0.8163954   0.8359917
12-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.7052710   0.6977488   0.7127933
12-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.8415038   0.8246015   0.8584060
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.7967324   0.7913738   0.8020910
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.8506610   0.8435131   0.8578088


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Q1                   Q4                -0.0511885   -0.2356595    0.1332825
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Q2                   Q4                -0.3587655   -0.6678697   -0.0496612
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Q3                   Q4                -0.1036500   -0.2792465    0.0719465
0-3 months     ki0047075b-MAL-ED          INDIA                          Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          Q1                   Q4                -0.2446274   -0.5216009    0.0323461
0-3 months     ki0047075b-MAL-ED          INDIA                          Q2                   Q4                 0.0300840   -0.1825539    0.2427219
0-3 months     ki0047075b-MAL-ED          INDIA                          Q3                   Q4                 0.0854664   -0.1899210    0.3608538
0-3 months     ki0047075b-MAL-ED          NEPAL                          Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          Q1                   Q4                 0.1853026   -0.0826899    0.4532952
0-3 months     ki0047075b-MAL-ED          NEPAL                          Q2                   Q4                 0.2411937   -0.0050429    0.4874304
0-3 months     ki0047075b-MAL-ED          NEPAL                          Q3                   Q4                 1.1827974    0.8622576    1.5033371
0-3 months     ki0047075b-MAL-ED          PERU                           Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           Q1                   Q4                 0.1040323   -0.0099683    0.2180330
0-3 months     ki0047075b-MAL-ED          PERU                           Q2                   Q4                 0.0905395   -0.0179612    0.1990402
0-3 months     ki0047075b-MAL-ED          PERU                           Q3                   Q4                 0.9011794    0.7768374    1.0255214
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Q1                   Q4                 0.0230683   -0.3285712    0.3747078
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Q2                   Q4                -0.3672983   -0.7144831   -0.0201136
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Q3                   Q4                -0.5196118   -0.9350201   -0.1042034
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                   Q4                 0.1060698   -0.3669549    0.5790944
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                   Q4                -0.0090436   -0.4910397    0.4729525
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                   Q4                 0.0926499   -0.3581235    0.5434234
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Q1                   Q4                -0.2221775   -0.2778686   -0.1664865
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Q2                   Q4                -0.1358710   -0.1865601   -0.0851818
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Q3                   Q4                -0.0497610   -0.0754524   -0.0240696
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Q1                   Q4                -0.4490587   -0.5175574   -0.3805600
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Q2                   Q4                -0.4059580   -0.4749455   -0.3369705
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Q3                   Q4                -0.4939914   -0.5664108   -0.4215721
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q1                   Q4                 0.0223676   -0.0876879    0.1324231
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q2                   Q4                -0.0232000   -0.1240401    0.0776400
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q3                   Q4                -0.0392436   -0.1405321    0.0620450
0-3 months     ki1119695-PROBIT           BELARUS                        Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        Q1                   Q4                -0.2206879   -0.2841075   -0.1572683
0-3 months     ki1119695-PROBIT           BELARUS                        Q2                   Q4                -0.1641995   -0.2364340   -0.0919651
0-3 months     ki1119695-PROBIT           BELARUS                        Q3                   Q4                -0.0361402   -0.0773018    0.0050214
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Q1                   Q4                -0.0421817   -0.1017540    0.0173906
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Q2                   Q4                -0.0920023   -0.2195054    0.0355009
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Q3                   Q4                -0.0048050   -0.0584104    0.0488003
0-3 months     ki1135781-COHORTS          INDIA                          Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          Q1                   Q4                -0.2895751   -0.3637211   -0.2154291
0-3 months     ki1135781-COHORTS          INDIA                          Q2                   Q4                -0.0354922   -0.1168643    0.0458800
0-3 months     ki1135781-COHORTS          INDIA                          Q3                   Q4                -0.1523992   -0.2212339   -0.0835645
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Q1                   Q4                -0.1288899   -0.1509761   -0.1068037
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Q2                   Q4                -0.1025682   -0.1288077   -0.0763287
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Q3                   Q4                -0.0835181   -0.1089267   -0.0581095
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Q1                   Q4                -0.5108572   -0.7093862   -0.3123283
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Q2                   Q4                -0.5170393   -0.7614063   -0.2726723
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Q3                   Q4                -0.4925697   -0.7007744   -0.2843651
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Q1                   Q4                -0.1984273   -0.3424001   -0.0544545
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Q2                   Q4                 0.0449076   -0.2946490    0.3844641
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Q3                   Q4                -0.1382066   -0.2965746    0.0201615
3-6 months     ki0047075b-MAL-ED          INDIA                          Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          Q1                   Q4                 0.1563862   -0.0627931    0.3755654
3-6 months     ki0047075b-MAL-ED          INDIA                          Q2                   Q4                -0.0409880   -0.2408304    0.1588545
3-6 months     ki0047075b-MAL-ED          INDIA                          Q3                   Q4                -0.0749159   -0.3117250    0.1618933
3-6 months     ki0047075b-MAL-ED          NEPAL                          Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          Q1                   Q4                -0.1240937   -0.3251534    0.0769661
3-6 months     ki0047075b-MAL-ED          NEPAL                          Q2                   Q4                 0.0463762   -0.1848038    0.2775562
3-6 months     ki0047075b-MAL-ED          NEPAL                          Q3                   Q4                -0.3761519   -0.6814526   -0.0708513
3-6 months     ki0047075b-MAL-ED          PERU                           Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           Q1                   Q4                -0.2029329   -0.3175640   -0.0883018
3-6 months     ki0047075b-MAL-ED          PERU                           Q2                   Q4                -0.0693014   -0.1728395    0.0342367
3-6 months     ki0047075b-MAL-ED          PERU                           Q3                   Q4                -0.9360560   -1.0604698   -0.8116422
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Q1                   Q4                -0.4116932   -0.7737773   -0.0496091
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Q2                   Q4                -0.2782564   -0.5713228    0.0148100
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Q3                   Q4                -0.3031068   -0.6745001    0.0682864
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                   Q4                 0.4748480    0.1886851    0.7610109
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                   Q4                 0.3792061    0.0882774    0.6701347
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                   Q4                 0.4573861    0.2066573    0.7081148
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Q1                   Q4                -0.1087861   -0.1938991   -0.0236731
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Q2                   Q4                -0.0712417   -0.1222505   -0.0202330
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Q3                   Q4                 0.0271504   -0.0792417    0.1335425
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Q1                   Q4                -0.2501700   -0.3036455   -0.1966944
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Q2                   Q4                -0.2363005   -0.2909394   -0.1816616
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Q3                   Q4                -0.3477755   -0.4120632   -0.2834877
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q1                   Q4                -0.0211796   -0.0985316    0.0561723
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q2                   Q4                -0.0012403   -0.0781084    0.0756277
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q3                   Q4                 0.0479405   -0.0268215    0.1227026
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q1                   Q4                -0.0653213   -0.1364077    0.0057651
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q2                   Q4                 0.0110641   -0.0583369    0.0804652
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q3                   Q4                 0.3197303    0.2385907    0.4008698
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Q1                   Q4                 0.0048134   -0.0908062    0.1004329
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Q2                   Q4                -0.0001728   -0.1176908    0.1173453
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Q3                   Q4                -0.0496081   -0.1611137    0.0618975
3-6 months     ki1119695-PROBIT           BELARUS                        Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        Q1                   Q4                -0.0067495   -0.0673396    0.0538406
3-6 months     ki1119695-PROBIT           BELARUS                        Q2                   Q4                -0.0401544   -0.0904796    0.0101708
3-6 months     ki1119695-PROBIT           BELARUS                        Q3                   Q4                -0.0364188   -0.0627048   -0.0101328
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Q1                   Q4                -0.5719027   -0.6061765   -0.5376288
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Q2                   Q4                 0.5802745    0.4893898    0.6711591
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Q3                   Q4                -0.1458144   -0.1956444   -0.0959843
3-6 months     ki1135781-COHORTS          INDIA                          Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          Q1                   Q4                -0.2041635   -0.2680437   -0.1402834
3-6 months     ki1135781-COHORTS          INDIA                          Q2                   Q4                 0.0224499   -0.0485935    0.0934933
3-6 months     ki1135781-COHORTS          INDIA                          Q3                   Q4                -0.0862493   -0.1422272   -0.0302714
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Q1                   Q4                -0.0241825   -0.0526370    0.0042720
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Q2                   Q4                -0.0265491   -0.0585821    0.0054839
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Q3                   Q4                -0.0018217   -0.0313280    0.0276845
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Q1                   Q4                 0.1188196   -0.0028436    0.2404827
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Q2                   Q4                 0.0114125   -0.1276700    0.1504951
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Q3                   Q4                 0.0864106   -0.0413005    0.2141218
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Q1                   Q4                -0.0412397   -0.0951456    0.0126662
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Q2                   Q4                -0.1548295   -0.2931307   -0.0165283
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Q3                   Q4                -0.0300022   -0.0822938    0.0222894
6-12 months    ki0047075b-MAL-ED          INDIA                          Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA                          Q1                   Q4                 0.0058781   -0.1180083    0.1297645
6-12 months    ki0047075b-MAL-ED          INDIA                          Q2                   Q4                -0.0424780   -0.1346304    0.0496745
6-12 months    ki0047075b-MAL-ED          INDIA                          Q3                   Q4                -0.0487440   -0.1445497    0.0470616
6-12 months    ki0047075b-MAL-ED          NEPAL                          Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          NEPAL                          Q1                   Q4                -0.0164103   -0.1203735    0.0875529
6-12 months    ki0047075b-MAL-ED          NEPAL                          Q2                   Q4                -0.0030229   -0.0972771    0.0912313
6-12 months    ki0047075b-MAL-ED          NEPAL                          Q3                   Q4                -0.0284394   -0.1769690    0.1200902
6-12 months    ki0047075b-MAL-ED          PERU                           Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          PERU                           Q1                   Q4                 0.0905668    0.0326514    0.1484822
6-12 months    ki0047075b-MAL-ED          PERU                           Q2                   Q4                -0.0403409   -0.0963909    0.0157092
6-12 months    ki0047075b-MAL-ED          PERU                           Q3                   Q4                 0.4548300    0.3840945    0.5255654
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q1                   Q4                -0.0987908   -0.2590209    0.0614392
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q2                   Q4                -0.0131583   -0.1555007    0.1291841
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q3                   Q4                -0.0246759   -0.1793962    0.1300443
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                   Q4                 0.2230699    0.1201024    0.3260374
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                   Q4                 0.2821319    0.1756286    0.3886352
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                   Q4                 0.3136164    0.2218267    0.4054062
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Q1                   Q4                -0.0490987   -0.0966914   -0.0015061
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Q2                   Q4                -0.0425643   -0.0724137   -0.0127149
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Q3                   Q4                 0.0387227    0.0140361    0.0634093
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q1                   Q4                 0.2066881    0.0807176    0.3326586
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q2                   Q4                 0.1383929    0.0135888    0.2631970
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q3                   Q4                 0.2208622    0.0799012    0.3618233
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Q1                   Q4                -0.5816653   -0.6176708   -0.5456598
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Q2                   Q4                -0.5402561   -0.5782961   -0.5022161
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Q3                   Q4                -0.3763053   -0.4140048   -0.3386057
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q1                   Q4                -0.0689013   -0.1153020   -0.0225005
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q2                   Q4                -0.0715397   -0.1148174   -0.0282620
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q3                   Q4                 0.0037160   -0.0429408    0.0503728
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Q1                   Q4                -0.0384917   -0.0858826    0.0088992
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Q2                   Q4                -0.0489345   -0.1083642    0.0104953
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Q3                   Q4                -0.0716804   -0.1266305   -0.0167304
6-12 months    ki1119695-PROBIT           BELARUS                        Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS                        Q1                   Q4                -0.1988062   -0.2264388   -0.1711737
6-12 months    ki1119695-PROBIT           BELARUS                        Q2                   Q4                 0.0858551    0.0567634    0.1149468
6-12 months    ki1119695-PROBIT           BELARUS                        Q3                   Q4                 0.0120194   -0.0160549    0.0400938
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q1                   Q4                -0.0395409   -0.0616794   -0.0174024
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q2                   Q4                -0.2007492   -0.2382926   -0.1632057
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q3                   Q4                -0.0354415   -0.0610348   -0.0098483
6-12 months    ki1135781-COHORTS          INDIA                          Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          INDIA                          Q1                   Q4                -0.0910926   -0.1254837   -0.0567014
6-12 months    ki1135781-COHORTS          INDIA                          Q2                   Q4                -0.1021868   -0.1428052   -0.0615685
6-12 months    ki1135781-COHORTS          INDIA                          Q3                   Q4                -0.0456485   -0.0784475   -0.0128494
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Q1                   Q4                -0.0470931   -0.0766737   -0.0175124
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Q2                   Q4                -0.1010974   -0.1384146   -0.0637803
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Q3                   Q4                -0.0439369   -0.0697831   -0.0180907
6-12 months    ki1148112-LCNI-5           MALAWI                         Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5           MALAWI                         Q1                   Q4                -0.1288239   -0.1911954   -0.0664525
6-12 months    ki1148112-LCNI-5           MALAWI                         Q2                   Q4                -0.1316480   -0.1952793   -0.0680167
6-12 months    ki1148112-LCNI-5           MALAWI                         Q3                   Q4                -0.1597434   -0.2284325   -0.0910542
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Q1                   Q4                -0.0288971   -0.0438406   -0.0139536
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Q2                   Q4                -0.0179083   -0.0362435    0.0004270
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Q3                   Q4                -0.0101132   -0.0267471    0.0065206
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Q1                   Q4                 0.0307442   -0.0739703    0.1354586
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Q2                   Q4                 0.0429778   -0.0661442    0.1520998
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Q3                   Q4                 0.0468283   -0.0609014    0.1545580
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q1                   Q4                -0.0340437   -0.0836391    0.0155518
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q2                   Q4                 0.0460304    0.0020375    0.0900232
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q3                   Q4                -0.0270623   -0.0719078    0.0177832
12-24 months   ki0047075b-MAL-ED          INDIA                          Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          Q1                   Q4                 0.0100501   -0.0593347    0.0794349
12-24 months   ki0047075b-MAL-ED          INDIA                          Q2                   Q4                -0.0212671   -0.0835151    0.0409809
12-24 months   ki0047075b-MAL-ED          INDIA                          Q3                   Q4                -0.0125042   -0.0755993    0.0505909
12-24 months   ki0047075b-MAL-ED          NEPAL                          Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          NEPAL                          Q1                   Q4                -0.0913399   -0.1537788   -0.0289009
12-24 months   ki0047075b-MAL-ED          NEPAL                          Q2                   Q4                -0.0519723   -0.1112534    0.0073087
12-24 months   ki0047075b-MAL-ED          NEPAL                          Q3                   Q4                -0.0314143   -0.1042439    0.0414153
12-24 months   ki0047075b-MAL-ED          PERU                           Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          PERU                           Q1                   Q4                 0.0225675   -0.0325872    0.0777222
12-24 months   ki0047075b-MAL-ED          PERU                           Q2                   Q4                 0.0348540   -0.0098469    0.0795550
12-24 months   ki0047075b-MAL-ED          PERU                           Q3                   Q4                -0.0428396   -0.1211527    0.0354735
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q1                   Q4                -0.0571930   -0.1450111    0.0306252
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q2                   Q4                -0.0008184   -0.0760038    0.0743669
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q3                   Q4                -0.0302124   -0.1237876    0.0633628
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                   Q4                 0.0423635   -0.0964218    0.1811488
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                   Q4                 0.0721029   -0.0691084    0.2133143
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                   Q4                 0.0909589   -0.0413457    0.2232635
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q1                   Q4                -0.0783240   -0.0919566   -0.0646914
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q2                   Q4                -0.0452452   -0.0586586   -0.0318318
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q3                   Q4                -0.0992536   -0.1114461   -0.0870611
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q1                   Q4                -0.0603366   -0.0906870   -0.0299862
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q2                   Q4                -0.0347110   -0.0626136   -0.0068084
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q3                   Q4                 0.0160161   -0.0123939    0.0444261
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Q1                   Q4                -0.0315527   -0.0700724    0.0069669
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Q2                   Q4                -0.0482727   -0.0982625    0.0017170
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Q3                   Q4                -0.0423775   -0.0883648    0.0036098
12-24 months   ki1135781-COHORTS          INDIA                          Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          INDIA                          Q1                   Q4                -0.0903556   -0.1099828   -0.0707285
12-24 months   ki1135781-COHORTS          INDIA                          Q2                   Q4                -0.0853424   -0.1070296   -0.0636553
12-24 months   ki1135781-COHORTS          INDIA                          Q3                   Q4                -0.0436400   -0.0616773   -0.0256028
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Q1                   Q4                -0.1061439   -0.1226085   -0.0896793
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Q2                   Q4                -0.1013553   -0.1205676   -0.0821430
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Q3                   Q4                -0.0772223   -0.0921760   -0.0622686
12-24 months   ki1148112-LCNI-5           MALAWI                         Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5           MALAWI                         Q1                   Q4                -0.0574042   -0.1067279   -0.0080806
12-24 months   ki1148112-LCNI-5           MALAWI                         Q2                   Q4                -0.0666909   -0.1156413   -0.0177406
12-24 months   ki1148112-LCNI-5           MALAWI                         Q3                   Q4                -0.0668518   -0.1209269   -0.0127767
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Q1                   Q4                -0.0424115   -0.0554673   -0.0293556
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Q2                   Q4                -0.0351767   -0.0500431   -0.0203103
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Q3                   Q4                -0.0276676   -0.0427082   -0.0126270
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q1                   Q4                 0.0505094    0.0215113    0.0795075
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q2                   Q4                 0.0379058    0.0054541    0.0703575
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q3                   Q4                 0.0494054    0.0188766    0.0799343
